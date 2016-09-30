From jekyll/jekyll:3.0

RUN gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ && \
  gem install jekyll-sitemap jekyll-paginate jekyll-gist 

ADD / /src/
RUN chown -R jekyll:jekyll /src/

WORKDIR /src

ENTRYPOINT ["jekyll"]
CMD ["serve", "-H", "0.0.0.0", "-P", "4000"]

