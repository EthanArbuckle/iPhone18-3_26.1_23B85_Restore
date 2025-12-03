@interface HUCameraRecordingSetupViewController
- (HUCameraRecordingSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon itemTableViewController:(id)controller home:(id)home;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_setupCameraRecording:(id)recording;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)showCameraRecordingLearnMore;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUCameraRecordingSetupViewController

- (HUCameraRecordingSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon itemTableViewController:(id)controller home:(id)home
{
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = HUCameraRecordingSetupViewController;
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
  v21 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  home = [(HUCameraRecordingSetupViewController *)self home];
  hf_allNonAdminUsers = [home hf_allNonAdminUsers];
  if ([hf_allNonAdminUsers count])
  {
    home2 = [(HUCameraRecordingSetupViewController *)self home];
    if ([home2 hf_hasCameraRecordingResident])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  home3 = [(HUCameraRecordingSetupViewController *)self home];
  [home3 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];

  delegate = [(HUCameraRecordingSetupViewController *)self delegate];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v10, @"HUCameraRecordingOnboardingKey_UserInput"}];
  v16 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v14];
}

- (void)showCameraRecordingLearnMore
{
  navigationController = [(HUCameraRecordingSetupViewController *)self navigationController];
  v4 = navigationController;
  if (navigationController)
  {
    selfCopy = navigationController;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v7 = objc_alloc_init(HUCameraRecordingLearnMoreViewController);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HUCameraRecordingSetupViewController_showCameraRecordingLearnMore__block_invoke;
  v10[3] = &unk_277DB7558;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = HUCameraRecordingSetupViewController;
  [(HUCameraRecordingSetupViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(HUItemTableOBWelcomeController *)self updateViewConstraints];
}

- (void)viewDidLoad
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HUCameraRecordingSetupViewController;
  [(HUItemTableOBWelcomeController *)&v24 viewDidLoad];
  headerView = [(HUCameraRecordingSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492EA0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUCameraRecordingSetupViewController *)self setSetupButton:boldButton];

  setupButton = [(HUCameraRecordingSetupViewController *)self setupButton];
  [setupButton setTranslatesAutoresizingMaskIntoConstraints:0];

  setupButton2 = [(HUCameraRecordingSetupViewController *)self setupButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
  [setupButton2 setTitle:v9 forState:0];

  setupButton3 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [setupButton3 setAccessibilityIdentifier:@"Home.OnboardingView.SetUp.ContinueButton"];

  setupButton4 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [setupButton4 addTarget:self action:sel__setupCameraRecording_ forControlEvents:64];

  buttonTray = [(HUCameraRecordingSetupViewController *)self buttonTray];
  setupButton5 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [buttonTray addButton:setupButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUCameraRecordingSetupViewController *)self setLearnMoreButton:linkButton];

  learnMoreButton = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  [learnMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];

  learnMoreButton2 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  v17 = HFLocalizedString();
  [learnMoreButton2 setTitle:v17 forState:0];

  setupButton6 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [setupButton6 setAccessibilityIdentifier:@"Home.OnboardingView.SetUp.Footer.LearnMoreButton"];

  learnMoreButton3 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  [learnMoreButton3 addTarget:self action:sel_showCameraRecordingLearnMore forControlEvents:64];

  buttonTray2 = [(HUCameraRecordingSetupViewController *)self buttonTray];
  learnMoreButton4 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  [buttonTray2 addButton:learnMoreButton4];

  [(HUCameraRecordingSetupViewController *)self setModalInPresentation:1];
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: CRSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCameraRecordingSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HUCameraRecordingSetupViewController *)self isMovingFromParentViewController])
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

    delegate = [(HUCameraRecordingSetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end