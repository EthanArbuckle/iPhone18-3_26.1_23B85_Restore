@interface HUNaturalLightingTitleViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUNaturalLightingTitleViewController)initWithHome:(id)a3;
- (HUNaturalLightingTitleViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6;
- (void)_continueToSetup:(id)a3;
- (void)_doNotActivateNaturalLighting:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUNaturalLightingTitleViewController

- (HUNaturalLightingTitleViewController)initWithHome:(id)a3
{
  v5 = a3;
  v6 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_Title", @"HUNaturalLightingTitle_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_Detail", @"HUNaturalLightingTitle_Detail", 1);
  v8 = HUImageNamed(@"Onboarding-NaturalLighting");
  v11.receiver = self;
  v11.super_class = HUNaturalLightingTitleViewController;
  v9 = [(HUImageOBWelcomeController *)&v11 initWithTitle:v6 detailText:v7 icon:0 contentImage:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
  }

  return v9;
}

- (HUNaturalLightingTitleViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUNaturalLightingTitleViewController.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HUNaturalLightingTitleViewController initWithTitle:detailText:icon:contentImage:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HUNaturalLightingTitleViewController;
  [(HUImageOBWelcomeController *)&v24 viewDidLoad];
  v4 = [(HUNaturalLightingTitleViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282492E28];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUNaturalLightingTitleViewController *)self setUseNaturalLightingButton:v6];

  v7 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_ChooseLightsButton", @"HUNaturalLightingTitle_ChooseLightsButton", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.HUNaturalLighting.ChooseLightsButton"];

  v11 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [v11 addTarget:self action:sel__continueToSetup_ forControlEvents:64];

  v12 = [(HUNaturalLightingTitleViewController *)self buttonTray];
  v13 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [v12 addButton:v13];

  v14 = [MEMORY[0x277D37650] linkButton];
  [(HUNaturalLightingTitleViewController *)self setNotNowButton:v14];

  v15 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_NotNowButton", @"HUNaturalLightingTitle_NotNowButton", 1);
  [v16 setTitle:v17 forState:0];

  v18 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [v18 setAccessibilityIdentifier:@"Home.OnboardingView.HUNaturalLighting.NotNowButton"];

  v19 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [v19 addTarget:self action:sel__doNotActivateNaturalLighting_ forControlEvents:64];

  v20 = [(HUNaturalLightingTitleViewController *)self buttonTray];
  v21 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [v20 addButton:v21];

  [(HUNaturalLightingTitleViewController *)self setModalInPresentation:1];
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = self;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: NLTVC", buf, 0x16u);
  }
}

- (void)_continueToSetup:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = [(HUNaturalLightingTitleViewController *)self delegate];
  v9 = @"HUNaturalLightingOnboardingKey_UserInput";
  v10 = &unk_2824910D0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_doNotActivateNaturalLighting:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = [(HUNaturalLightingTitleViewController *)self delegate];
  v9 = @"HUNaturalLightingOnboardingKey_UserInput";
  v10 = &unk_2824910E8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 viewController:self didFinishWithConfigurationResults:v8];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end