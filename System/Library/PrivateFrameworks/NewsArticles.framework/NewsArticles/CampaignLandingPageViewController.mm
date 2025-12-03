@interface CampaignLandingPageViewController
- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CampaignLandingPageViewController

- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithCoder:(id)coder
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

- (_TtC12NewsArticles33CampaignLandingPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  CampaignLandingPageViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  CampaignLandingPageViewController.viewWillLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v4 = v10.receiver;
  changeCopy = change;
  [(CampaignLandingPageViewController *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
  view = [v4 view];
  if (view)
  {
    v8 = view;

    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v8 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

@end