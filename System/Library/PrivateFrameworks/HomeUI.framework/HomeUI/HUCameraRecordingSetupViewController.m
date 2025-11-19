@interface HUCameraRecordingSetupViewController
- (HUCameraRecordingSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 itemTableViewController:(id)a6 home:(id)a7;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_setupCameraRecording:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)showCameraRecordingLearnMore;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUCameraRecordingSetupViewController

- (HUCameraRecordingSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 itemTableViewController:(id)a6 home:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = HUCameraRecordingSetupViewController;
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
  v21 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = [(HUCameraRecordingSetupViewController *)self home];
  v8 = [v7 hf_allNonAdminUsers];
  if ([v8 count])
  {
    v9 = [(HUCameraRecordingSetupViewController *)self home];
    if ([v9 hf_hasCameraRecordingResident])
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

  v11 = [(HUCameraRecordingSetupViewController *)self home];
  [v11 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];

  v12 = [(HUCameraRecordingSetupViewController *)self delegate];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v10, @"HUCameraRecordingOnboardingKey_UserInput"}];
  v16 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v12 viewController:self didFinishWithConfigurationResults:v14];
}

- (void)showCameraRecordingLearnMore
{
  v3 = [(HUCameraRecordingSetupViewController *)self navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUCameraRecordingSetupViewController;
  [(HUCameraRecordingSetupViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:a3];
  [(HUItemTableOBWelcomeController *)self updateViewConstraints];
}

- (void)viewDidLoad
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HUCameraRecordingSetupViewController;
  [(HUItemTableOBWelcomeController *)&v24 viewDidLoad];
  v4 = [(HUCameraRecordingSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492EA0];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUCameraRecordingSetupViewController *)self setSetupButton:v6];

  v7 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUCameraRecordingSetupViewController *)self setupButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingIntro_ContinueButton", @"HUCameraRecordingIntro_ContinueButton", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.SetUp.ContinueButton"];

  v11 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [v11 addTarget:self action:sel__setupCameraRecording_ forControlEvents:64];

  v12 = [(HUCameraRecordingSetupViewController *)self buttonTray];
  v13 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HUCameraRecordingSetupViewController *)self setLearnMoreButton:v14];

  v15 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  v17 = HFLocalizedString();
  [v16 setTitle:v17 forState:0];

  v18 = [(HUCameraRecordingSetupViewController *)self setupButton];
  [v18 setAccessibilityIdentifier:@"Home.OnboardingView.SetUp.Footer.LearnMoreButton"];

  v19 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  [v19 addTarget:self action:sel_showCameraRecordingLearnMore forControlEvents:64];

  v20 = [(HUCameraRecordingSetupViewController *)self buttonTray];
  v21 = [(HUCameraRecordingSetupViewController *)self learnMoreButton];
  [v20 addButton:v21];

  [(HUCameraRecordingSetupViewController *)self setModalInPresentation:1];
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = self;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: CRSVC", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCameraRecordingSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HUCameraRecordingSetupViewController *)self isMovingFromParentViewController])
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

    v7 = [(HUCameraRecordingSetupViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end