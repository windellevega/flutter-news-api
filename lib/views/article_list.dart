import 'package:flutter/material.dart';
import 'package:flutter_news_api/models/article_model.dart';
import 'package:flutter_news_api/views/blog_tile.dart';

class ArticleList extends StatelessWidget {
  final List<ArticleModel> articles;

  ArticleList({this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: ListView.builder(
          itemCount: articles.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return BlogTile(
              imageUrl: articles[index].urlToImage,
              title: articles[index].title,
              desc: articles[index].description,
              url: articles[index].url,
            );
          }),
    );
  }
}
