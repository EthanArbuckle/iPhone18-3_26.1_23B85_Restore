@interface HUNaturalLightingTitleViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUNaturalLightingTitleViewController)initWithHome:(id)home;
- (HUNaturalLightingTitleViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image;
- (void)_continueToSetup:(id)setup;
- (void)_doNotActivateNaturalLighting:(id)lighting;
- (void)viewDidLoad;
@end

@implementation HUNaturalLightingTitleViewController

- (HUNaturalLightingTitleViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_Title", @"HUNaturalLightingTitle_Title", 1);
  v7 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_Detail", @"HUNaturalLightingTitle_Detail", 1);
  v8 = HUImageNamed(@"Onboarding-NaturalLighting");
  v11.receiver = self;
  v11.super_class = HUNaturalLightingTitleViewController;
  v9 = [(HUImageOBWelcomeController *)&v11 initWithTitle:v6 detailText:v7 icon:0 contentImage:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
  }

  return v9;
}

- (HUNaturalLightingTitleViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUNaturalLightingTitleViewController.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HUNaturalLightingTitleViewController initWithTitle:detailText:icon:contentImage:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HUNaturalLightingTitleViewController;
  [(HUImageOBWelcomeController *)&v24 viewDidLoad];
  headerView = [(HUNaturalLightingTitleViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492E28];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUNaturalLightingTitleViewController *)self setUseNaturalLightingButton:boldButton];

  useNaturalLightingButton = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [useNaturalLightingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  useNaturalLightingButton2 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_ChooseLightsButton", @"HUNaturalLightingTitle_ChooseLightsButton", 1);
  [useNaturalLightingButton2 setTitle:v9 forState:0];

  useNaturalLightingButton3 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [useNaturalLightingButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HUNaturalLighting.ChooseLightsButton"];

  useNaturalLightingButton4 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [useNaturalLightingButton4 addTarget:self action:sel__continueToSetup_ forControlEvents:64];

  buttonTray = [(HUNaturalLightingTitleViewController *)self buttonTray];
  useNaturalLightingButton5 = [(HUNaturalLightingTitleViewController *)self useNaturalLightingButton];
  [buttonTray addButton:useNaturalLightingButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUNaturalLightingTitleViewController *)self setNotNowButton:linkButton];

  notNowButton = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];

  notNowButton2 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  v17 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingTitle_NotNowButton", @"HUNaturalLightingTitle_NotNowButton", 1);
  [notNowButton2 setTitle:v17 forState:0];

  notNowButton3 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [notNowButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HUNaturalLighting.NotNowButton"];

  notNowButton4 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [notNowButton4 addTarget:self action:sel__doNotActivateNaturalLighting_ forControlEvents:64];

  buttonTray2 = [(HUNaturalLightingTitleViewController *)self buttonTray];
  notNowButton5 = [(HUNaturalLightingTitleViewController *)self notNowButton];
  [buttonTray2 addButton:notNowButton5];

  [(HUNaturalLightingTitleViewController *)self setModalInPresentation:1];
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: NLTVC", buf, 0x16u);
  }
}

- (void)_continueToSetup:(id)setup
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  delegate = [(HUNaturalLightingTitleViewController *)self delegate];
  v9 = @"HUNaturalLightingOnboardingKey_UserInput";
  v10 = &unk_2824910D0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_doNotActivateNaturalLighting:(id)lighting
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  delegate = [(HUNaturalLightingTitleViewController *)self delegate];
  v9 = @"HUNaturalLightingOnboardingKey_UserInput";
  v10 = &unk_2824910E8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end