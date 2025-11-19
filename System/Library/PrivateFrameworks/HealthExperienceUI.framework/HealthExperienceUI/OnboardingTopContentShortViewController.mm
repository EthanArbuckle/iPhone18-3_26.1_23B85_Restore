@interface OnboardingTopContentShortViewController
- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)updateLayoutOnTraitChanges;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation OnboardingTopContentShortViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA2A5254();
}

- (void)updateLayoutOnTraitChanges
{
  v2 = self;
  sub_1BA2A5824();
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for OnboardingTopContentShortViewController();
  v2 = v5.receiver;
  [(OnboardingTopContentShortViewController *)&v5 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_contentViewHeightConstraint];
  if (v3)
  {
    v4 = v3;
    sub_1BA2A4D38();
    [v4 setConstant_];
  }
}

- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end