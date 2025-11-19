@interface OnboardingAddRegionWelcomeViewController
- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapHowExposureNotificationsWork;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingAddRegionWelcomeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  sub_2516FEEA8();
}

- (void)didTapHowExposureNotificationsWork
{
  type metadata accessor for OnboardingInfoViewController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = self;
  v4 = [v3 init];
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(OnboardingAddRegionWelcomeViewController *)v6 presentViewController:v5 animated:1 completion:0];
}

- (void)didTapPrimaryButton
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 120);
  v6 = self;
  v5();
}

- (void)didTapSecondaryButton
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 128);
  v6 = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end