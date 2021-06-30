FROM rocker/shiny:latest

MAINTAINER Roberto Villegas-Diaz

RUN apt-get update -y
# RUN apt-get install libssl-dev -y
RUN Rscript -e 'install.packages("remotes", dependencies = TRUE, repos = "https://cloud.r-project.org")'
RUN Rscript -e 'remotes::install_github("villegar/idepExtra")'

CMD R
