@interface RecipeArticleBarButtonItem
- (_TtC12NewsArticles26RecipeArticleBarButtonItem)init;
- (_TtC12NewsArticles26RecipeArticleBarButtonItem)initWithCoder:(id)coder;
@end

@implementation RecipeArticleBarButtonItem

- (_TtC12NewsArticles26RecipeArticleBarButtonItem)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RecipeArticleBarButtonItem *)&v3 init];
}

- (_TtC12NewsArticles26RecipeArticleBarButtonItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(RecipeArticleBarButtonItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end