@interface HUCameraRecordingPermissionsViewController
- (HUCameraRecordingPermissionsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 itemTableViewController:(id)a6 home:(id)a7;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_setupCameraRecording:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUCameraRecordingPermissionsViewController

- (HUCameraRecordingPermissionsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 itemTableViewController:(id)a6 home:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = HUCameraRecordingPermissionsViewController;
  v14 = [(HUItemTableOBWelcomeController *)&v17 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:2 itemTableViewController:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, a7);
  }

  return v15;
}

- (void)_setupCameraRecording:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = [(HUCameraRecordingPermissionsViewController *)self home];
  [v7 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];

  v8 = [(HUCameraRecordingPermissionsViewController *)self delegate];
  v10 = @"HUCameraRecordingOnboardingKey_UserInput";
  v11 = &unk_282491A18;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 viewController:self didFinishWithConfigurationResults:v9];
}

- (void)viewDidLoad
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUCameraRecordingPermissionsViewController;
  [(HUItemTableOBWelcomeController *)&v16 viewDidLoad];
  v4 = [(HUCameraRecordingPermissionsViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282493008];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUCameraRecordingPermissionsViewController *)self setSetupButton:v6];

  v7 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.Permissions.ContinueButton"];

  v11 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [v11 addTarget:self action:sel__setupCameraRecording_ forControlEvents:64];

  v12 = [(HUCameraRecordingPermissionsViewController *)self buttonTray];
  v13 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [v12 addButton:v13];

  [(HUCameraRecordingPermissionsViewController *)self setModalInPresentation:1];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: CRPVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCameraRecordingPermissionsViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUCameraRecordingPermissionsViewController *)self isMovingFromParentViewController])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped BACK button", buf, 0x16u);
    }

    v7 = [(HUCameraRecordingPermissionsViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end