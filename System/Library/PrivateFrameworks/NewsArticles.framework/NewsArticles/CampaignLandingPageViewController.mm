@interface CampaignLandingPageViewController
- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithCoder:(id)a3;
- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CampaignLandingPageViewController

- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_isImpressionable;
  sub_1D7C00434();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_1D7D28ECC();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_pageDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  CampaignLandingPageViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  CampaignLandingPageViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v4 = v10.receiver;
  v5 = a3;
  [(CampaignLandingPageViewController *)&v10 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;

    v9 = [objc_opt_self() systemBackgroundColor];
    [v8 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

@end