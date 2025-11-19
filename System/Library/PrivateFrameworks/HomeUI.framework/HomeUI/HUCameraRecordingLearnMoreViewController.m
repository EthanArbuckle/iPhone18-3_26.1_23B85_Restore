@interface HUCameraRecordingLearnMoreViewController
- (HUCameraRecordingLearnMoreViewController)init;
- (void)dismiss;
@end

@implementation HUCameraRecordingLearnMoreViewController

- (HUCameraRecordingLearnMoreViewController)init
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreTitle", @"HUCameraAndRecordingLearnMoreTitle", 1);
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraAndRecordingLearnMoreBody", @"HUCameraAndRecordingLearnMoreBody", 1);
  v10.receiver = self;
  v10.super_class = HUCameraRecordingLearnMoreViewController;
  v5 = [(OBTextWelcomeController *)&v10 initWithTitle:v3 detailText:v4 symbolName:0 contentLayout:2];

  if (v5)
  {
    v6 = [MEMORY[0x277D37618] boldButton];
    v7 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [v6 setTitle:v7 forState:0];

    [v6 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.LearnMore.DoneButton"];
    [v6 addTarget:v5 action:sel_dismiss forControlEvents:64];
    v8 = [(HUCameraRecordingLearnMoreViewController *)v5 buttonTray];
    [v8 addButton:v6];
  }

  return v5;
}

- (void)dismiss
{
  v2 = [(HUCameraRecordingLearnMoreViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end