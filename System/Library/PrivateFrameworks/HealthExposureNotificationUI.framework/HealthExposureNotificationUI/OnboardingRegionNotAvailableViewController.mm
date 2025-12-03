@interface OnboardingRegionNotAvailableViewController
- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  selfCopy = self;
  v5();
}

- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI42OnboardingRegionNotAvailableViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end