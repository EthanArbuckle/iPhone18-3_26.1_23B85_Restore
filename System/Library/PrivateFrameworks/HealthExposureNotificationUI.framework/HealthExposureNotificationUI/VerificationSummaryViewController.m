@interface VerificationSummaryViewController
- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapLearnMoreButton;
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
- (void)viewDidLoad;
@end

@implementation VerificationSummaryViewController

- (void)viewDidLoad
{
  v2 = self;
  VerificationSummaryViewController.viewDidLoad()();
}

- (void)didTapLearnMoreButton
{
  type metadata accessor for OnboardingInfoViewController();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = self;
  v4 = [v3 init];
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [(VerificationSummaryViewController *)v6 presentViewController:v5 animated:1 completion:0];
}

- (void)didTapPrimaryButton
{
  v2 = self;
  sub_2516BAF7C();
}

- (void)didTapSecondaryButton
{
  v2 = self;
  sub_2516BC028();
}

- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI33VerificationSummaryViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end