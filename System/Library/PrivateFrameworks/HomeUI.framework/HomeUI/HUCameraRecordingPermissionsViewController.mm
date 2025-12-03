@interface HUCameraRecordingPermissionsViewController
- (HUCameraRecordingPermissionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon itemTableViewController:(id)controller home:(id)home;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_setupCameraRecording:(id)recording;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUCameraRecordingPermissionsViewController

- (HUCameraRecordingPermissionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon itemTableViewController:(id)controller home:(id)home
{
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = HUCameraRecordingPermissionsViewController;
  v14 = [(HUItemTableOBWelcomeController *)&v17 initWithTitle:title detailText:text icon:icon contentLayout:2 itemTableViewController:controller];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, home);
  }

  return v15;
}

- (void)_setupCameraRecording:(id)recording
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  home = [(HUCameraRecordingPermissionsViewController *)self home];
  [home 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];

  delegate = [(HUCameraRecordingPermissionsViewController *)self delegate];
  v10 = @"HUCameraRecordingOnboardingKey_UserInput";
  v11 = &unk_282491A18;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v9];
}

- (void)viewDidLoad
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HUCameraRecordingPermissionsViewController;
  [(HUItemTableOBWelcomeController *)&v16 viewDidLoad];
  headerView = [(HUCameraRecordingPermissionsViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493008];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUCameraRecordingPermissionsViewController *)self setSetupButton:boldButton];

  setupButton = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [setupButton setTranslatesAutoresizingMaskIntoConstraints:0];

  setupButton2 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
  [setupButton2 setTitle:v9 forState:0];

  setupButton3 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [setupButton3 setAccessibilityIdentifier:@"Home.OnboardingView.CameraRecording.Permissions.ContinueButton"];

  setupButton4 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [setupButton4 addTarget:self action:sel__setupCameraRecording_ forControlEvents:64];

  buttonTray = [(HUCameraRecordingPermissionsViewController *)self buttonTray];
  setupButton5 = [(HUCameraRecordingPermissionsViewController *)self setupButton];
  [buttonTray addButton:setupButton5];

  [(HUCameraRecordingPermissionsViewController *)self setModalInPresentation:1];
  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: CRPVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCameraRecordingPermissionsViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUCameraRecordingPermissionsViewController *)self isMovingFromParentViewController])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped BACK button", buf, 0x16u);
    }

    delegate = [(HUCameraRecordingPermissionsViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end