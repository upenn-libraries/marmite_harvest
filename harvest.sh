#!/bin/bash 

cat $1 | xargs -I{} -n1 -P4 curl -o /dev/null -s -L -w "{}\t%{http_code}\n" "http://mdproc.library.upenn.edu:9292/records/{}/create?format=iiif_presentation"

