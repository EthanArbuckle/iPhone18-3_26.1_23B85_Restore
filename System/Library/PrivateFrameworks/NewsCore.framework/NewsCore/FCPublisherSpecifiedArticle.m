@interface FCPublisherSpecifiedArticle
- (FCPublisherSpecifiedArticle)initWithDictionary:(id)a3;
@end

@implementation FCPublisherSpecifiedArticle

- (FCPublisherSpecifiedArticle)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCPublisherSpecifiedArticle;
  v5 = [(FCPublisherSpecifiedArticle *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"articleID"];
    articleID = v5->_articleID;
    v5->_articleID = v6;

    v8 = [v4 objectForKeyedSubscript:@"title"];
    title = v5->_title;
    v5->_title = v8;
  }

  return v5;
}

@end