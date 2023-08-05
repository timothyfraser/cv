
library(rmarkdown)
library(dplyr)
library(readr)

rmarkdown::render(
  input = "generate.Rmd", 
  output_format = "html_document", output_options = list(
    self_contained = TRUE,
    theme = "journal",
    toc = TRUE,
    toc_depth = 2)
  )


g = read_lines("generate.html")
write_lines(g, file = "README.md")

rm(list = ls())
