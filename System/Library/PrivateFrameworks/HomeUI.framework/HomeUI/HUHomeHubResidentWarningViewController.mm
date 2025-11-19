@interface HUHomeHubResidentWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubResidentWarningViewController)initWithiPadOnlyHub:(BOOL)a3;
- (void)_cancelFlow:(id)a3;
- (void)_commitOrContinue:(id)a3;
- (void)_openLink:(id)a3;
- (void)_openURL:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubResidentWarningViewController

- (HUHomeHubResidentWarningViewController)initWithiPadOnlyHub:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:initWithiPadOnlyHub] hasiPadOnlyHub = %{BOOL}d", buf, 8u);
  }

  if (v3)
  {
    v6 = @"HUSoftwareUpdateMigrationiPadOnlyResidentTitle";
  }

  else
  {
    v6 = @"HUSoftwareUpdateMigrationNoResidentTitle";
  }

  if (v3)
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
  v11 = [MEMORY[0x277D75348] hf_keyColor];
  v12 = [v10 configurationWithHierarchicalColor:v11];

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

  v5 = [(HUHomeHubResidentWarningViewController *)self headerView];
  v6 = [v5 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v6 withIDDictionary:&unk_282493120];

  v7 = [MEMORY[0x277D37638] accessoryButton];
  [(HUHomeHubResidentWarningViewController *)self setLinkButton:v7];

  v8 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  v9 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationResidentLearnMoreMessage", @"HUSoftwareUpdateMigrationResidentLearnMoreMessage", 1);
  [v8 setTitle:v9 forState:0];

  v10 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  [v10 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubResidentWarning.LearnMoreLink"];

  v11 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  [v11 addTarget:self action:sel__openLink_ forControlEvents:64];

  v12 = [(HUHomeHubResidentWarningViewController *)self headerView];
  v13 = [(HUHomeHubResidentWarningViewController *)self linkButton];
  [v12 addAccessoryButton:v13];

  v14 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubResidentWarningViewController *)self setCommitButton:v14];

  v15 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  v17 = [(HUHomeHubResidentWarningViewController *)self _commitOrContinueButtonTitle];
  [v16 setTitle:v17 forState:0];

  v18 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [v18 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubResidentWarning.CommitOrContinueButton"];

  v19 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [v19 addTarget:self action:sel__commitOrContinue_ forControlEvents:64];

  v20 = [(HUHomeHubResidentWarningViewController *)self buttonTray];
  v21 = [(HUHomeHubResidentWarningViewController *)self commitButton];
  [v20 addButton:v21];

  v22 = objc_alloc(MEMORY[0x277D751E0]);
  v23 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v24 = [v22 initWithTitle:v23 style:0 target:self action:sel__cancelFlow_];

  [v24 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubResidentWarning.CancelButton"];
  v25 = [(OBBaseWelcomeController *)self navigationItem];
  [v25 setRightBarButtonItem:v24];

  [(HUHomeHubResidentWarningViewController *)self setModalInPresentation:1];
  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = NSStringFromSelector(a2);
    *buf = 138412546;
    v30 = self;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HUHomeHubSharedHomesWarningViewController", buf, 0x16u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubResidentWarningViewController;
  [(HUHomeHubResidentWarningViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubResidentWarningViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)_commitOrContinue:(id)a3
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

  v6 = [(HUHomeHubResidentWarningViewController *)self delegate];
  v10 = @"HUHomeHub2OnboardingKey_UserInput";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v6 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_cancelFlow:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:_cancelFlow] User tapped cancel button", v7, 2u);
  }

  v5 = [(HUHomeHubResidentWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491E20;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_openLink:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubResidentWarningViewController:_openLink] User tapped open link button", v6, 2u);
  }

  v5 = [MEMORY[0x277CBEBC0] hf_homeHubRequiredLearnMoreURL];
  [(HUHomeHubResidentWarningViewController *)self _openURL:v5];
}

- (void)_openURL:(id)a3
{
  v4 = MEMORY[0x277CDB700];
  v5 = a3;
  v7 = [[v4 alloc] initWithURL:v5];

  [v7 setModalPresentationStyle:1];
  v6 = [MEMORY[0x277D75348] hf_keyColor];
  [v7 setPreferredControlTintColor:v6];

  [(HUHomeHubResidentWarningViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end