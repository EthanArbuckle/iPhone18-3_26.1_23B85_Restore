@interface HUOwnerMustUpgradeViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUOwnerMustUpgradeViewController)initWithUpgradeRequirements:(unint64_t)a3;
- (void)_continueButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUOwnerMustUpgradeViewController

- (HUOwnerMustUpgradeViewController)initWithUpgradeRequirements:(unint64_t)a3
{
  v5 = _HULocalizedStringWithDefaultValue(@"HUOwnerMustUpgrade_Title", @"HUOwnerMustUpgrade_Title", 1);
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = @"HUOwnerMustUpgrade_AppleTVOnly_Detail";
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v7 = @"HUOwnerMustUpgrade_HomePodSiriEnabledDevicesAndAppleTV_Detail";
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v7 = @"HUOwnerMustUpgrade_HomePodAndSiriEnabledDevicesOnly_Detail";
LABEL_10:
      v6 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
    }
  }

  else
  {
    NSLog(&cfstr_WeShouldNotBeC.isa);
    v6 = 0;
  }

  v10.receiver = self;
  v10.super_class = HUOwnerMustUpgradeViewController;
  v8 = [(HUOwnerMustUpgradeViewController *)&v10 initWithTitle:v5 detailText:v6 icon:0 contentLayout:2];

  return v8;
}

- (void)_continueButtonTapped:(id)a3
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

  v7 = [(HUOwnerMustUpgradeViewController *)self delegate];
  v9 = @"HUOwnerMustUpgradeOnboardingKey_UserInput";
  v10 = &unk_282491C40;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)viewDidLoad
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HUOwnerMustUpgradeViewController;
  [(OBBaseWelcomeController *)&v15 viewDidLoad];
  v4 = [(HUOwnerMustUpgradeViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_282493080];

  v6 = [MEMORY[0x277D37618] boldButton];
  [(HUOwnerMustUpgradeViewController *)self setContinueButton:v6];

  v7 = [(HUOwnerMustUpgradeViewController *)self continueButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HUOwnerMustUpgradeViewController *)self continueButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUOwnerMustUpgrade_ContinueButton", @"HUOwnerMustUpgrade_ContinueButton", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUOwnerMustUpgradeViewController *)self continueButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.OwnerMustUpgrade.ContinueButton"];

  v11 = [(HUOwnerMustUpgradeViewController *)self continueButton];
  [v11 addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];

  v12 = [(HUOwnerMustUpgradeViewController *)self buttonTray];
  [v12 addButton:self->_continueButton];

  [(HUOwnerMustUpgradeViewController *)self setModalInPresentation:1];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: OMUVC", buf, 0x16u);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end