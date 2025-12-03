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
    boldButton = [MEMORY[0x277D37618] boldButton];
    v7 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
    [boldButton setTitle:v7 forState:0];

    [boldButton setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.LearnMore.DoneButton"];
    [boldButton addTarget:v5 action:sel_dismiss forControlEvents:64];
    buttonTray = [(HUCameraRecordingLearnMoreViewController *)v5 buttonTray];
    [buttonTray addButton:boldButton];
  }

  return v5;
}

- (void)dismiss
{
  presentingViewController = [(HUCameraRecordingLearnMoreViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end