@interface HUAccessoryFirmwareUpdateSetupViewController
- (HUAccessoryFirmwareUpdateSetupViewController)initWithHome:(id)home;
- (HUAccessoryFirmwareUpdateSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_doNotEnableAutomaticUpdates:(id)updates;
- (void)_enableAutomaticUpdates:(id)updates;
- (void)viewDidLoad;
@end

@implementation HUAccessoryFirmwareUpdateSetupViewController

- (HUAccessoryFirmwareUpdateSetupViewController)initWithHome:(id)home
{
  homeCopy = home;
  v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"square.and.arrow.down"];
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:77.0];
  v8 = [v6 imageWithConfiguration:v7];

  v9 = _HULocalizedStringWithDefaultValue(@"HUAccessoryFirmwareUpdateOnboarding_Title", @"HUAccessoryFirmwareUpdateOnboarding_Title", 1);
  v10 = _HULocalizedStringWithDefaultValue(@"HUAccessoryFirmwareUpdateOnboarding_Detail", @"HUAccessoryFirmwareUpdateOnboarding_Detail", 1);
  v13.receiver = self;
  v13.super_class = HUAccessoryFirmwareUpdateSetupViewController;
  v11 = [(HUImageOBWelcomeController *)&v13 initWithTitle:v9 detailText:v10 icon:0 contentImage:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    [(HUTopContentOBWelcomeController *)v11 setMaxSize:77.0, 77.0];
  }

  return v11;
}

- (HUAccessoryFirmwareUpdateSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessoryFirmwareUpdateSetupViewController.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HUAccessoryFirmwareUpdateSetupViewController initWithTitle:detailText:icon:contentImage:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v23 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUAccessoryFirmwareUpdateSetupViewController;
  [(HUImageOBWelcomeController *)&v18 viewDidLoad];
  headerView = [(HUAccessoryFirmwareUpdateSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492E00];

  boldButton = [MEMORY[0x277D37618] boldButton];
  enableAutomaticUpdatesButton = self->_enableAutomaticUpdatesButton;
  self->_enableAutomaticUpdatesButton = boldButton;

  [(OBTrayButton *)self->_enableAutomaticUpdatesButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = self->_enableAutomaticUpdatesButton;
  v9 = _HULocalizedStringWithDefaultValue(@"HUAccessoryFirmwareUpdateOnboarding_Enable", @"HUAccessoryFirmwareUpdateOnboarding_Enable", 1);
  [(OBTrayButton *)v8 setTitle:v9 forState:0];

  [(OBTrayButton *)self->_enableAutomaticUpdatesButton setAccessibilityIdentifier:@"Home.OnboardingView.AccessoryFirmwareUpdate.Enable"];
  [(OBTrayButton *)self->_enableAutomaticUpdatesButton addTarget:self action:sel__enableAutomaticUpdates_ forControlEvents:64];
  buttonTray = [(HUAccessoryFirmwareUpdateSetupViewController *)self buttonTray];
  [buttonTray addButton:self->_enableAutomaticUpdatesButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  notNowButton = self->_notNowButton;
  self->_notNowButton = linkButton;

  [(OBLinkTrayButton *)self->_notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_notNowButton;
  v14 = _HULocalizedStringWithDefaultValue(@"HUAccessoryFirmwareUpdateOnboarding_NotNow", @"HUAccessoryFirmwareUpdateOnboarding_NotNow", 1);
  [(OBLinkTrayButton *)v13 setTitle:v14 forState:0];

  [(OBLinkTrayButton *)self->_notNowButton setAccessibilityIdentifier:@"Home.OnboardingView.AccessoryFirmwareUpdate.NotNow"];
  [(OBLinkTrayButton *)self->_notNowButton addTarget:self action:sel__doNotEnableAutomaticUpdates_ forControlEvents:64];
  buttonTray2 = [(HUAccessoryFirmwareUpdateSetupViewController *)self buttonTray];
  [buttonTray2 addButton:self->_notNowButton];

  [(HUAccessoryFirmwareUpdateSetupViewController *)self setModalInPresentation:1];
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: NLSVC", buf, 0x16u);
  }
}

- (void)_enableAutomaticUpdates:(id)updates
{
  v23 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  enableAutomaticUpdatesButton = [(HUAccessoryFirmwareUpdateSetupViewController *)self enableAutomaticUpdatesButton];
  activityIndicator = [enableAutomaticUpdatesButton activityIndicator];
  [activityIndicator startAnimating];

  [updatesCopy setEnabled:0];
  home = [(HUAccessoryFirmwareUpdateSetupViewController *)self home];
  v11 = [home hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:1];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__HUAccessoryFirmwareUpdateSetupViewController__enableAutomaticUpdates___block_invoke;
  v18[3] = &unk_277DBA338;
  v18[4] = self;
  v12 = [v11 addSuccessBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HUAccessoryFirmwareUpdateSetupViewController__enableAutomaticUpdates___block_invoke_54;
  v15[3] = &unk_277DB7E90;
  v16 = updatesCopy;
  selfCopy2 = self;
  v13 = updatesCopy;
  v14 = [v12 addFailureBlock:v15];
}

void __72__HUAccessoryFirmwareUpdateSetupViewController__enableAutomaticUpdates___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) enableAutomaticUpdatesButton];
  v3 = [v2 activityIndicator];
  [v3 stopAnimating];

  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v7 = @"HUAccessoryFirmwareUpdateOnboardingKey_UserInput";
  v8[0] = &unk_282491058;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 viewController:v5 didFinishWithConfigurationResults:v6];
}

void __72__HUAccessoryFirmwareUpdateSetupViewController__enableAutomaticUpdates___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setEnabled:1];
  v5 = [*(a1 + 40) enableAutomaticUpdatesButton];
  v6 = [v5 activityIndicator];
  [v6 stopAnimating];

  v7 = [MEMORY[0x277D14640] sharedHandler];
  [v7 handleError:v4];
}

- (void)_doNotEnableAutomaticUpdates:(id)updates
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

  delegate = [(HUAccessoryFirmwareUpdateSetupViewController *)self delegate];
  v9 = @"HUAccessoryFirmwareUpdateOnboardingKey_UserInput";
  v10 = &unk_282491070;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end