@interface HUHomeHubAppleTVUpdateWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubAppleTVUpdateWarningViewController)initWithAppleTVsToUpdate:(id)a3 shouldBlockMigration:(BOOL)a4;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow:(id)a3;
- (void)_commitOrContinue;
- (void)_continueTapped:(id)a3;
- (void)_openLink:(id)a3;
- (void)_openURL:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubAppleTVUpdateWarningViewController

- (HUHomeHubAppleTVUpdateWarningViewController)initWithAppleTVsToUpdate:(id)a3 shouldBlockMigration:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v7;
    v27 = 1024;
    v28 = v4;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController:initWithAppleTVsToUpdate:shouldBlockMigration:] appleTVs = %@ | shouldBlockMigration = %{BOOL}d", buf, 0x12u);
  }

  v9 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__HUHomeHubAppleTVUpdateWarningViewController_initWithAppleTVsToUpdate_shouldBlockMigration___block_invoke;
  v23[3] = &unk_277DB8358;
  v10 = v9;
  v24 = v10;
  [v7 na_each:v23];
  if (v4)
  {
    v11 = @"HUAppleTVSoftwareUpdateBlockingDescription";
  }

  else
  {
    v11 = @"HUAppleTVSoftwareUpdateRequiredDescription";
  }

  if (v4)
  {
    v12 = @"HUAppleTVSoftwareUpdateRequiredTitle_Blocking";
  }

  else
  {
    v12 = @"HUAppleTVSoftwareUpdateRequiredTitle";
  }

  v13 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  v14 = [HUHomeHubAccessoryListItemManager alloc];
  v15 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v16 = [(HUHomeHubAccessoryListItemManager *)v14 initWithAccessories:v15 delegate:self];

  v17 = [(HUItemTableViewController *)[HUHomeHubSimpleTableViewController alloc] initWithItemManager:v16 tableViewStyle:1];
  v18 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
  v22.receiver = self;
  v22.super_class = HUHomeHubAppleTVUpdateWarningViewController;
  v19 = [(HUItemTableOBWelcomeController *)&v22 initWithTitle:v18 detailText:v13 icon:0 contentLayout:2 itemTableViewController:v17];
  v20 = v19;
  if (v19)
  {
    v19->_blockMigration = v4;
    objc_storeStrong(&v19->_appleTVs, a3);
  }

  return v20;
}

void __93__HUHomeHubAppleTVUpdateWarningViewController_initWithAppleTVsToUpdate_shouldBlockMigration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 home];
  [v2 addObject:v3];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = HUHomeHubAppleTVUpdateWarningViewController;
  [(HUItemTableOBWelcomeController *)&v26 viewDidLoad];
  v3 = [(HUHomeHubAppleTVUpdateWarningViewController *)self headerView];
  v4 = [v3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v4 withIDDictionary:&unk_282492E78];

  if ([(HUHomeHubAppleTVUpdateWarningViewController *)self blockMigration])
  {
    v5 = [MEMORY[0x277D37638] accessoryButton];
    [(HUHomeHubAppleTVUpdateWarningViewController *)self setLinkButton:v5];

    v6 = [(HUHomeHubAppleTVUpdateWarningViewController *)self linkButton];
    v7 = _HULocalizedStringWithDefaultValue(@"HUAppleTVSoftwareUpdateLearnMoreMessage", @"HUAppleTVSoftwareUpdateLearnMoreMessage", 1);
    [v6 setTitle:v7 forState:0];

    v8 = [(HUHomeHubAppleTVUpdateWarningViewController *)self linkButton];
    [v8 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUAppleTVUpdateWarning.LearnMoreLink"];

    v9 = [(HUHomeHubAppleTVUpdateWarningViewController *)self linkButton];
    [v9 addTarget:self action:sel__openLink_ forControlEvents:64];

    v10 = [(HUHomeHubAppleTVUpdateWarningViewController *)self headerView];
    v11 = [(HUHomeHubAppleTVUpdateWarningViewController *)self linkButton];
    [v10 addAccessoryButton:v11];
  }

  v12 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubAppleTVUpdateWarningViewController *)self setCommitButton:v12];

  v13 = [(HUHomeHubAppleTVUpdateWarningViewController *)self commitButton];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HUHomeHubAppleTVUpdateWarningViewController *)self commitButton];
  v15 = [(HUHomeHubAppleTVUpdateWarningViewController *)self _commitOrContinueButtonTitle];
  [v14 setTitle:v15 forState:0];

  v16 = [(HUHomeHubAppleTVUpdateWarningViewController *)self commitButton];
  [v16 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUAppleTVUpdateWarning.CommitOrContinueButton"];

  v17 = [(HUHomeHubAppleTVUpdateWarningViewController *)self commitButton];
  [v17 addTarget:self action:sel__continueTapped_ forControlEvents:64];

  v18 = [(HUHomeHubAppleTVUpdateWarningViewController *)self buttonTray];
  v19 = [(HUHomeHubAppleTVUpdateWarningViewController *)self commitButton];
  [v18 addButton:v19];

  v20 = objc_alloc(MEMORY[0x277D751E0]);
  v21 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v22 = [v20 initWithTitle:v21 style:0 target:self action:sel__cancelFlow_];

  [v22 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUAppleTVUpdateWarning.CancelButton"];
  v23 = [(OBBaseWelcomeController *)self navigationItem];
  [v23 setRightBarButtonItem:v22];

  [(HUHomeHubAppleTVUpdateWarningViewController *)self setModalInPresentation:1];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController:viewDidLoad] presented: HUHomeHubSharedHomesWarningViewController", v25, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubAppleTVUpdateWarningViewController;
  [(HUHomeHubAppleTVUpdateWarningViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubAppleTVUpdateWarningViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController:viewWillDisappear]", v4, 2u);
  }
}

- (id)_commitOrContinueButtonTitle
{
  if ([(HUHomeHubAppleTVUpdateWarningViewController *)self blockMigration])
  {
    v3 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlDescription", @"HUSoftwareUpdateControlDescription", 1);
    if ([(HUHomeHubAppleTVUpdateWarningViewController *)self isFinalStep])
    {
      v5 = v4;
    }

    else
    {
      v5 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
    }

    v3 = v5;
  }

  return v3;
}

- (void)_continueTapped:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = [(HUHomeHubAppleTVUpdateWarningViewController *)self blockMigration];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController:_continueTapped] User tapped continue button, blocking migration: %{BOOL}d", buf, 8u);
  }

  if ([(HUHomeHubAppleTVUpdateWarningViewController *)self blockMigration])
  {
    v5 = [(HUHomeHubAppleTVUpdateWarningViewController *)self delegate];
    v7 = @"HUHomeHub2OnboardingKey_UserInput";
    v8 = &unk_282491238;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [v5 viewController:self didFinishWithConfigurationResults:v6];
  }

  else
  {
    [(HUHomeHubAppleTVUpdateWarningViewController *)self _commitOrContinue];
  }
}

- (void)_cancelFlow:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController-_cancelFlow] User tapped cancel button", v7, 2u);
  }

  v5 = [(HUHomeHubAppleTVUpdateWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491238;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_commitOrContinue
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(HUHomeHubAppleTVUpdateWarningViewController *)self isFinalStep])
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  v4 = [(HUHomeHubAppleTVUpdateWarningViewController *)self delegate];
  v7 = @"HUHomeHub2OnboardingKey_UserInput";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_openLink:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController-_openLink] User tapped open link button", v6, 2u);
  }

  v5 = [MEMORY[0x277CBEBC0] hf_learnToUpdateAppleTVURL];
  [(HUHomeHubAppleTVUpdateWarningViewController *)self _openURL:v5];
}

- (void)_openURL:(id)a3
{
  v4 = MEMORY[0x277CDB700];
  v5 = a3;
  v7 = [[v4 alloc] initWithURL:v5];

  [v7 setModalPresentationStyle:1];
  v6 = [MEMORY[0x277D75348] hf_keyColor];
  [v7 setPreferredControlTintColor:v6];

  [(HUHomeHubAppleTVUpdateWarningViewController *)self presentViewController:v7 animated:1 completion:&__block_literal_global_78];
}

void __56__HUHomeHubAppleTVUpdateWarningViewController__openURL___block_invoke()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUHomeHubAppleTVUpdateWarningViewController:_openURL]", v1, 2u);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end