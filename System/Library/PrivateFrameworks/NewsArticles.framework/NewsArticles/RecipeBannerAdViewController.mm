@interface RecipeBannerAdViewController
- (_TtC12NewsArticles28RecipeBannerAdViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles28RecipeBannerAdViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RecipeBannerAdViewController

- (_TtC12NewsArticles28RecipeBannerAdViewController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdSize);
  sub_1D7BA4498();
  *v4 = v5;
  v4[1] = v6;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView);
  *v7 = 0;
  v7[1] = 0;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7BA5320();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D7BA66F0();
}

- (_TtC12NewsArticles28RecipeBannerAdViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end