@interface OnboardingRegionChangeSummaryViewController
- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingRegionChangeSummaryViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  sub_25169EA38();
  v3 = [v2 navigationItem];
  [v3 setHidesBackButton_];
}

- (void)didTapPrimaryButton
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 120);
  v6 = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI43OnboardingRegionChangeSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end