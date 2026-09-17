#!/bin/bash
#
# tracking TraitBank related
#

latest() {
 local format=${1:-pdf}
 preston head\
 | preston cat\
 | grep hasVersion\
 | grep "format=${format}"\
 | preston cat
}

preston track \
 --message "snapshot of TraitBank Data Model Notes" \
 "https://docs.google.com/document/d/1CFy8WkS3bqVHwjW2bU-rPieMby7JyPV6n3JLCEQwmnM/edit?tab=t.0"

latest pdf \
 > datamodel.pdf

latest md \
 > datamodel.md

latest docx \
 > datamodel.docx
