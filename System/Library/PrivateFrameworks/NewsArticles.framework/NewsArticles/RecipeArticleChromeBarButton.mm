@interface RecipeArticleChromeBarButton
- (_TtC12NewsArticles28RecipeArticleChromeBarButton)init;
- (_TtC12NewsArticles28RecipeArticleChromeBarButton)initWithCoder:(id)coder;
- (double)scrollOffset;
@end

@implementation RecipeArticleChromeBarButton

- (_TtC12NewsArticles28RecipeArticleChromeBarButton)initWithCoder:(id)coder
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
  selfCopy = self;
  currentTraitCollection = [v3 currentTraitCollection];
  horizontalSizeClass = [currentTraitCollection horizontalSizeClass];

  if (horizontalSizeClass >= 2)
  {

    return 0.0;
  }

  else
  {
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles28RecipeArticleChromeBarButton_button) frame];
    Height = CGRectGetHeight(v9);

    return Height + -8.0;
  }
}

@end