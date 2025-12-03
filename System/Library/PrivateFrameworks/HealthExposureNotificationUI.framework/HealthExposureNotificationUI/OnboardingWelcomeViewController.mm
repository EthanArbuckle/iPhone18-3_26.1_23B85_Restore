@interface OnboardingWelcomeViewController
- (_TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapFooterLabel;
- (void)didTapHowExposureNotificationsWork;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OnboardingWelcomeViewController

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  OnboardingWelcomeViewController.traitCollectionDidChange(_:)(v9);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  OnboardingWelcomeViewController.updateForScrollOffsetChange()();
}

- (void)didTapHowExposureNotificationsWork
{
  type metadata accessor for OnboardingInfoViewController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(OnboardingWelcomeViewController *)selfCopy presentViewController:initWithRootViewController_ animated:1 completion:0];
}

- (void)didTapFooterLabel
{
  selfCopy = self;
  sub_2516B0724();
}

- (void)didTapPrimaryButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow);
  selfCopy = self;
  sub_2516B3EF4(selfCopy, v2);
}

- (void)didTapSecondaryButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController_flow);
  selfCopy = self;
  sub_2516B4250(selfCopy, v2);
}

- (_TtC28HealthExposureNotificationUI31OnboardingWelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end