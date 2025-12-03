@interface OnboardingTopContentShortViewController
- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)updateLayoutOnTraitChanges;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation OnboardingTopContentShortViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA2A5254();
}

- (void)updateLayoutOnTraitChanges
{
  selfCopy = self;
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

- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI39OnboardingTopContentShortViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end