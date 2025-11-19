@interface OnboardingAnalyticsViewController
- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  v3 = [v2 navigationItem];
  [v3 setHidesBackButton_];
}

- (void)didTapPrimaryButton
{
  v2 = self;
  sub_25170075C();
}

- (void)didTapSecondaryButton
{
  v2 = self;
  sub_251700980();
}

- (void)didTapLearnMore
{
  v2 = self;
  sub_2516B0724();
}

- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end