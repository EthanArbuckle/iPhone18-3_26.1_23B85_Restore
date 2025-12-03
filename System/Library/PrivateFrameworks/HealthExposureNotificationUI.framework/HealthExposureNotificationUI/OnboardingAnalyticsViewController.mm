@interface OnboardingAnalyticsViewController
- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapLearnMore;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingAnalyticsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_2516FFF7C();
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton_];
}

- (void)didTapPrimaryButton
{
  selfCopy = self;
  sub_25170075C();
}

- (void)didTapSecondaryButton
{
  selfCopy = self;
  sub_251700980();
}

- (void)didTapLearnMore
{
  selfCopy = self;
  sub_2516B0724();
}

- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end