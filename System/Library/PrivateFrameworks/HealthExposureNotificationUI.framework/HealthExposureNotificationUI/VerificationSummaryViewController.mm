@interface VerificationSummaryViewController
- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapLearnMoreButton;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)viewDidLoad;
@end

@implementation VerificationSummaryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  VerificationSummaryViewController.viewDidLoad()();
}

- (void)didTapLearnMoreButton
{
  type metadata accessor for OnboardingInfoViewController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(VerificationSummaryViewController *)selfCopy presentViewController:initWithRootViewController_ animated:1 completion:0];
}

- (void)didTapPrimaryButton
{
  selfCopy = self;
  sub_2516BAF7C();
}

- (void)didTapSecondaryButton
{
  selfCopy = self;
  sub_2516BC028();
}

- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end