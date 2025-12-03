@interface HULocationServicesSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HULocationServicesSetupViewController)initWithHome:(id)home;
- (void)_enableOrDisableLocationServices:(id)services;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HULocationServicesSetupViewController

- (HULocationServicesSetupViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_Title", @"HULocationServicesSetup_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_Detail", @"HULocationServicesSetup_Detail", 1);
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  v11.receiver = self;
  v11.super_class = HULocationServicesSetupViewController;
  v9 = [(HULocationServicesSetupViewController *)&v11 initWithTitle:v6 detailText:v7 icon:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
  }

  return v9;
}

- (void)_enableOrDisableLocationServices:(id)services
{
  v25 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    enableLocationServicesButton = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
    v11 = @"Disabling";
    if (enableLocationServicesButton == servicesCopy)
    {
      v11 = @"Enabling";
    }

    *buf = 138412546;
    selfCopy = v9;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Location Services", buf, 0x16u);
  }

  disableLocationServicesButton = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  v13 = disableLocationServicesButton == servicesCopy;

  v14 = MEMORY[0x277CBEB38];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v13, @"HULocationServicesOnboardingKey_UserInput"}];
  v20 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [v14 dictionaryWithDictionary:v16];

  delegate = [(HULocationServicesSetupViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v17];
}

- (void)viewDidLoad
{
  v31[1] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HULocationServicesSetupViewController;
  [(OBBaseWelcomeController *)&v26 viewDidLoad];
  headerView = [(HULocationServicesSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492FE0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HULocationServicesSetupViewController *)self setEnableLocationServicesButton:boldButton];

  enableLocationServicesButton = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [enableLocationServicesButton setTranslatesAutoresizingMaskIntoConstraints:0];

  enableLocationServicesButton2 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_EnableLocationServices_Button", @"HULocationServicesSetup_EnableLocationServices_Button", 1);
  [enableLocationServicesButton2 setTitle:v9 forState:0];

  enableLocationServicesButton3 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [enableLocationServicesButton3 setAccessibilityIdentifier:@"Home.OnboardingView.LocationServices.EnableButton"];

  enableLocationServicesButton4 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [enableLocationServicesButton4 addTarget:self action:sel__enableOrDisableLocationServices_ forControlEvents:64];

  buttonTray = [(HULocationServicesSetupViewController *)self buttonTray];
  enableLocationServicesButton5 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [buttonTray addButton:enableLocationServicesButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HULocationServicesSetupViewController *)self setDisableLocationServicesButton:linkButton];

  disableLocationServicesButton = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [disableLocationServicesButton setTranslatesAutoresizingMaskIntoConstraints:0];

  disableLocationServicesButton2 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_DisableLocationServices_Button", @"HULocationServicesSetup_DisableLocationServices_Button", 1);
  [disableLocationServicesButton2 setTitle:v17 forState:0];

  disableLocationServicesButton3 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [disableLocationServicesButton3 setAccessibilityIdentifier:@"Home.OnboardingView.LocationServices.DisableButton"];

  disableLocationServicesButton4 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [disableLocationServicesButton4 addTarget:self action:sel__enableOrDisableLocationServices_ forControlEvents:64];

  buttonTray2 = [(HULocationServicesSetupViewController *)self buttonTray];
  disableLocationServicesButton5 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [buttonTray2 addButton:disableLocationServicesButton5];

  buttonTray3 = [(HULocationServicesSetupViewController *)self buttonTray];
  v31[0] = *MEMORY[0x277D376E0];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [buttonTray3 setPrivacyLinkForBundles:v23];

  [(HULocationServicesSetupViewController *)self setModalInPresentation:1];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HULocationServicesSetupViewController", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HULocationServicesSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:disappear];
  if ([(HULocationServicesSetupViewController *)self isMovingFromParentViewController])
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

    delegate = [(HULocationServicesSetupViewController *)self delegate];
    [delegate viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end