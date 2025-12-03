@interface OnboardingAddRegionWelcomeViewController
- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  selfCopy = self;
  v4 = [v3 init];
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(OnboardingAddRegionWelcomeViewController *)selfCopy presentViewController:initWithRootViewController_ animated:1 completion:0];
}

- (void)didTapPrimaryButton
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 120);
  selfCopy = self;
  v5();
}

- (void)didTapSecondaryButton
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 128);
  selfCopy = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end