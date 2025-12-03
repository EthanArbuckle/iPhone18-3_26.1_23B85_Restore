@interface AudioArticleBarButtonItem
- (_TtC12NewsArticles25AudioArticleBarButtonItem)init;
- (_TtC12NewsArticles25AudioArticleBarButtonItem)initWithCoder:(id)coder;
@end

@implementation AudioArticleBarButtonItem

- (_TtC12NewsArticles25AudioArticleBarButtonItem)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AudioArticleBarButtonItem *)&v3 init];
}

- (_TtC12NewsArticles25AudioArticleBarButtonItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AudioArticleBarButtonItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end