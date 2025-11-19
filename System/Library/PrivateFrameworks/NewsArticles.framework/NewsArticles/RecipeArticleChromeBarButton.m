@interface RecipeArticleChromeBarButton
- (_TtC12NewsArticles28RecipeArticleChromeBarButton)init;
- (_TtC12NewsArticles28RecipeArticleChromeBarButton)initWithCoder:(id)a3;
- (double)scrollOffset;
@end

@implementation RecipeArticleChromeBarButton

- (_TtC12NewsArticles28RecipeArticleChromeBarButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_bottomPadding) = 0x4020000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_trailingPadding) = 0x4034000000000000;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles28RecipeArticleChromeBarButton)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)scrollOffset
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 >= 2)
  {

    return 0.0;
  }

  else
  {
    [*(&v4->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_button) frame];
    Height = CGRectGetHeight(v9);

    return Height + -8.0;
  }
}

@end