@interface OnboardingRegionNotAvailableViewController
- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapPrimaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingRegionNotAvailableViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  sub_2516C1258();
}

- (void)didTapPrimaryButton
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 120);
  v6 = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end