@interface OnboardingLegalConsentViewController
- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
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
  v2 = self;
  OnboardingLegalConsentViewController.viewDidLoad()();
}

- (void)didTapPrimaryButton
{
  v2 = self;
  sub_2516D0500();
}

- (void)didTapSecondaryButton
{
  v2 = self;
  sub_2516D0C58();
}

- (void)didTapCancel
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController_flow);
  swift_getObjectType();
  v5 = *(v4 + 128);
  v6 = self;
  v5();
}

- (void)didConfirmAgree
{
  v2 = self;
  sub_2516D0A10();
}

- (void)didConfirmDontAgree
{
  v2 = self;
  sub_2516D10D8();
}

- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI36OnboardingLegalConsentViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end