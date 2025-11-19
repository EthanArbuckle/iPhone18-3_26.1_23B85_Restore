@interface HULocationServicesSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HULocationServicesSetupViewController)initWithHome:(id)a3;
- (void)_enableOrDisableLocationServices:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HULocationServicesSetupViewController

- (HULocationServicesSetupViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_Title", @"HULocationServicesSetup_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_Detail", @"HULocationServicesSetup_Detail", 1);
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  v11.receiver = self;
  v11.super_class = HULocationServicesSetupViewController;
  v9 = [(HULocationServicesSetupViewController *)&v11 initWithTitle:v6 detailText:v7 icon:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
  }

  return v9;
}

- (void)_enableOrDisableLocationServices:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
    v11 = @"Disabling";
    if (v10 == v5)
    {
      v11 = @"Enabling";
    }

    *buf = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: %@ Location Services", buf, 0x16u);
  }

  v12 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  v13 = v12 == v5;

  v14 = MEMORY[0x277CBEB38];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v13, @"HULocationServicesOnboardingKey_UserInput"}];
  v20 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [v14 dictionaryWithDictionary:v16];

  v18 = [(HULocationServicesSetupViewController *)self delegate];
  [v18 viewController:self didFinishWithConfigurationResults:v17];
}

- (void)viewDidLoad
{
  v31[1] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HULocationServicesSetupViewController;
  [(OBBaseWelcomeController *)&v26 viewDidLoad];
  v4 = [(HULocationServicesSetupViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492FE0];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HULocationServicesSetupViewController *)self setEnableLocationServicesButton:v6];

  v7 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_EnableLocationServices_Button", @"HULocationServicesSetup_EnableLocationServices_Button", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.LocationServices.EnableButton"];

  v11 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [v11 addTarget:self action:sel__enableOrDisableLocationServices_ forControlEvents:64];

  v12 = [(HULocationServicesSetupViewController *)self buttonTray];
  v13 = [(HULocationServicesSetupViewController *)self enableLocationServicesButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HULocationServicesSetupViewController *)self setDisableLocationServicesButton:v14];

  v15 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HULocationServicesSetup_DisableLocationServices_Button", @"HULocationServicesSetup_DisableLocationServices_Button", 1);
  [v16 setTitle:v17 forState:0];

  v18 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [v18 setAccessibilityIdentifier:@"Home.OnboardingView.LocationServices.DisableButton"];

  v19 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [v19 addTarget:self action:sel__enableOrDisableLocationServices_ forControlEvents:64];

  v20 = [(HULocationServicesSetupViewController *)self buttonTray];
  v21 = [(HULocationServicesSetupViewController *)self disableLocationServicesButton];
  [v20 addButton:v21];

  v22 = [(HULocationServicesSetupViewController *)self buttonTray];
  v31[0] = *MEMORY[0x277D376E0];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v22 setPrivacyLinkForBundles:v23];

  [(HULocationServicesSetupViewController *)self setModalInPresentation:1];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v25;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HULocationServicesSetupViewController", buf, 0x16u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HULocationServicesSetupViewController;
  [(OBBaseWelcomeController *)&v8 viewWillDisappear:a3];
  if ([(HULocationServicesSetupViewController *)self isMovingFromParentViewController])
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

    v7 = [(HULocationServicesSetupViewController *)self delegate];
    [v7 viewControllerDidGoBack:self];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end