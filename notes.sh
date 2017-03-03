#!/bin/bash
ORG_DIR=$(pwd);
for repo in target/*
do
  cd $repo
  echo $repo
  git pull
  git log --pretty=format:"%ad" --date=short | uniq -c > note.md
  git log --pretty=format:"%ad" >> note.md
  cd - > /dev/null
done
cd $ORG_DIR
