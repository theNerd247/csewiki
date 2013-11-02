#!/bin/bash

for file in $(ls *.txt)
do
	file=$(basename --suffix=.txt $file)
	markdown --html4tags $file.txt > $file.html
done

mkdir -p csewiki
mv *.html csewiki
