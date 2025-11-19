@interface ArticleFooterPaywall
- (NAArticleFooterDelegate)footerDelegate;
- (_TtC12NewsArticles20ArticleFooterPaywall)initWithCoder:(id)a3;
- (_TtC12NewsArticles20ArticleFooterPaywall)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setFooterDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation ArticleFooterPaywall

- (NAArticleFooterDelegate)footerDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFooterDelegate:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_footerDelegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (_TtC12NewsArticles20ArticleFooterPaywall)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_footerDelegate) = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7BE9C94();
}

- (_TtC12NewsArticles20ArticleFooterPaywall)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end