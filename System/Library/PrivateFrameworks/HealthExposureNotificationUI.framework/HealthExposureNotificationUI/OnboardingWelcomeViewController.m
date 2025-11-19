@interface OnboardingWelcomeViewController
- (_TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapFooterLabel;
- (void)didTapHowExposureNotificationsWork;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OnboardingWelcomeViewController

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  OnboardingWelcomeViewController.traitCollectionDidChange(_:)(v9);
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = self;
  OnboardingWelcomeViewController.updateForScrollOffsetChange()();
}

- (void)didTapHowExposureNotificationsWork
{
  type metadata accessor for OnboardingInfoViewController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = self;
  v4 = [v3 init];
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(OnboardingWelcomeViewController *)v6 presentViewController:v5 animated:1 completion:0];
}

- (void)didTapFooterLabel
{
  v2 = self;
  sub_2516B0724();
}

- (void)didTapPrimaryButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow);
  v3 = self;
  sub_2516B3EF4(v3, v2);
}

- (void)didTapSecondaryButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow);
  v3 = self;
  sub_2516B4250(v3, v2);
}

- (_TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end