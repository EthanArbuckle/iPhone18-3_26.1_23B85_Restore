@interface HUHomeHubResidentWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubResidentWarningViewController)initWithiPadOnlyHub:(BOOL)hub;
- (void)_cancelFlow:(id)flow;
- (void)_commitOrContinue:(id)continue;
- (void)_openLink:(id)link;
- (void)_openURL:(id)l;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubResidentWarningViewController

- (HUHomeHubResidentWarningViewController)initWithiPadOnlyHub:(BOOL)hub
{
  hubCopy = hub;
  v22 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = hubCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:initWithiPadOnlyHub] hasiPadOnlyHub = %{BOOL}d", buf, 8u);
  }

  if (hubCopy)
  {
    v6 = @"HUSoftwareUpdateMigrationiPadOnlyResidentTitle";
  }

  else
  {
    v6 = @"HUSoftwareUpdateMigrationNoResidentTitle";
  }

  if (hubCopy)
  {
    v7 = @"HUSoftwareUpdateMigrationiPadOnlyResidentDescription";
  }

  else
  {
    v7 = @"HUSoftwareUpdateMigrationNoResidentDescription";
  }

  v8 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  v9 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  v10 = MEMORY[0x277D755D0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v12 = [v10 configurationWithHierarchicalColor:hf_keyColor];

  v13 = [MEMORY[0x277D755D0] configurationWithPointSize:100.0];
  v14 = [v13 configurationByApplyingConfiguration:v12];
  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
  v16 = [v15 imageWithConfiguration:v14];

  v19.receiver = self;
  v19.super_class = HUHomeHubResidentWarningViewController;
  v17 = [(HUImageOBWelcomeController *)&v19 initWithTitle:v8 detailText:v9 icon:0 contentImage:v16];

  return v17;
}

- (void)viewDidLoad
{
  v33 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HUHomeHubResidentWarningViewController;
  [(HUImageOBWelcomeController *)&v28 viewDidLoad];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:viewDidLoad]", buf, 2u);
  }

  headerView = [(HUHomeHubResidentWarningViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493120];

  accessoryButton = [MEMORY[0x277D37638] accessoryButton];
  [(HUHomeHubResidentWarningViewController *)self setLinkButton:accessoryButton];

  linkButton = [(HUHomeHubResidentWarningViewController *)self linkButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationResidentLearnMoreMessage", @"HUSoftwareUpdateMigrationResidentLearnMoreMessage", 1);
  [linkButton setTitle:v9 forState:0];

  linkButton2 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  [linkButton2 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubResidentWarning.LearnMoreLink"];

  linkButton3 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  [linkButton3 addTarget:self action:sel__openLink_ forControlEvents:64];

  headerView2 = [(HUHomeHubResidentWarningViewController *)self headerView];
  linkButton4 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  [headerView2 addAccessoryButton:linkButton4];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubResidentWarningViewController *)self setCommitButton:boldButton];

  commitButton = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [commitButton setTranslatesAutoresizingMaskIntoConstraints:0];

  commitButton2 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  _commitOrContinueButtonTitle = [(HUHomeHubResidentWarningViewController *)self _commitOrContinueButtonTitle];
  [commitButton2 setTitle:_commitOrContinueButtonTitle forState:0];

  commitButton3 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [commitButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubResidentWarning.CommitOrContinueButton"];

  commitButton4 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [commitButton4 addTarget:self action:sel__commitOrContinue_ forControlEvents:64];

  buttonTray = [(HUHomeHubResidentWarningViewController *)self buttonTray];
  commitButton5 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [buttonTray addButton:commitButton5];

  v22 = objc_alloc(MEMORY[0x277D751E0]);
  v23 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v24 = [v22 initWithTitle:v23 style:0 target:self action:sel__cancelFlow_];

  [v24 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubResidentWarning.CancelButton"];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v24];

  [(HUHomeHubResidentWarningViewController *)self setModalInPresentation:1];
  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HUHomeHubSharedHomesWarningViewController", buf, 0x16u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubResidentWarningViewController;
  [(HUHomeHubResidentWarningViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubResidentWarningViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)_commitOrContinue:(id)continue
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:_commitOrContinue] User tapped commit/continue button", v9, 2u);
  }

  if ([(HUHomeHubResidentWarningViewController *)self isFinalStep])
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  delegate = [(HUHomeHubResidentWarningViewController *)self delegate];
  v10 = @"HUHomeHub2OnboardingKey_UserInput";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_cancelFlow:(id)flow
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:_cancelFlow] User tapped cancel button", v7, 2u);
  }

  delegate = [(HUHomeHubResidentWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491E20;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_openLink:(id)link
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:_openLink] User tapped open link button", v6, 2u);
  }

  hf_homeHubRequiredLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homeHubRequiredLearnMoreURL];
  [(HUHomeHubResidentWarningViewController *)self _openURL:hf_homeHubRequiredLearnMoreURL];
}

- (void)_openURL:(id)l
{
  v4 = MEMORY[0x277CDB700];
  lCopy = l;
  v7 = [[v4 alloc] initWithURL:lCopy];

  [v7 setModalPresentationStyle:1];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  [v7 setPreferredControlTintColor:hf_keyColor];

  [(HUHomeHubResidentWarningViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end