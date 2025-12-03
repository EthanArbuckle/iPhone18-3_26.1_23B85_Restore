@interface SummarySharingOnboardingInfoViewController
- (_TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation SummarySharingOnboardingInfoViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA29411C();
}

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1BA294440();
}

- (void)hxui_cancelButtonTapped
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 12;
    LOBYTE(v10) = 0;
    selfCopy = self;

    sub_1B9FEF9F4(self, &v6);
  }

  else
  {
    selfCopy2 = self;
  }

  [(SummarySharingOnboardingInfoViewController *)self dismissViewControllerAnimated:1 completion:0, self, v6, v7, v8, v9, v10];
}

- (_TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end