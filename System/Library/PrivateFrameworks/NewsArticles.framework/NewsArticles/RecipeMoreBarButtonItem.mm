@interface RecipeMoreBarButtonItem
- (_TtC12NewsArticles23RecipeMoreBarButtonItem)init;
- (_TtC12NewsArticles23RecipeMoreBarButtonItem)initWithCoder:(id)coder;
@end

@implementation RecipeMoreBarButtonItem

- (_TtC12NewsArticles23RecipeMoreBarButtonItem)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RecipeMoreBarButtonItem *)&v3 init];
}

- (_TtC12NewsArticles23RecipeMoreBarButtonItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(RecipeMoreBarButtonItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end