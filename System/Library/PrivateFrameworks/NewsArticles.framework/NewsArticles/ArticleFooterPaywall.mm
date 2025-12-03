@interface ArticleFooterPaywall
- (NAArticleFooterDelegate)footerDelegate;
- (_TtC12NewsArticles20ArticleFooterPaywall)initWithCoder:(id)coder;
- (_TtC12NewsArticles20ArticleFooterPaywall)initWithNibName:(id)name bundle:(id)bundle;
- (void)setFooterDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation ArticleFooterPaywall

- (NAArticleFooterDelegate)footerDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFooterDelegate:(id)delegate
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_footerDelegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC12NewsArticles20ArticleFooterPaywall)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_footerDelegate) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7BE9C94();
}

- (_TtC12NewsArticles20ArticleFooterPaywall)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end