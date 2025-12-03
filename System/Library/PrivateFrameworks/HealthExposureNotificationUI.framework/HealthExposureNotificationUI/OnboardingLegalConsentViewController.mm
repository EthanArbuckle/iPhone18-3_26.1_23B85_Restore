@interface OnboardingLegalConsentViewController
- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didConfirmAgree;
- (void)didConfirmDontAgree;
- (void)didTapCancel;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)viewDidLoad;
@end

@implementation OnboardingLegalConsentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  OnboardingLegalConsentViewController.viewDidLoad()();
}

- (void)didTapPrimaryButton
{
  selfCopy = self;
  sub_2516D0500();
}

- (void)didTapSecondaryButton
{
  selfCopy = self;
  sub_2516D0C58();
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 128);
  selfCopy = self;
  v5();
}

- (void)didConfirmAgree
{
  selfCopy = self;
  sub_2516D0A10();
}

- (void)didConfirmDontAgree
{
  selfCopy = self;
  sub_2516D10D8();
}

- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end