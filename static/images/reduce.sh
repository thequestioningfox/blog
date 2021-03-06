#!/usr/bin/env bash
#sudo apt-get install imagemagick

count=0
quality=80
rm -rf $quality
mkdir $quality
for i in $(find . -type f -name '201*.*g' |sort); do
  let counter++
  if [[ "$counter" -gt 0 ]]; then
    echo $i
    convert -resize 600x400 -quality $quality $PWD/$i "$PWD/$quality/$i"
  fi
done
