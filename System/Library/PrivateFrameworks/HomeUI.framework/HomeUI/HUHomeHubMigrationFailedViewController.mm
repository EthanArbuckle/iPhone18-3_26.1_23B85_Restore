@interface HUHomeHubMigrationFailedViewController
- (BOOL)_shouldShowResetAppleHomeButton;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubMigrationFailedViewController)initWithDetailText:(id)text failedState:(unint64_t)state homeName:(id)name;
- (void)_cancelAction:(id)action;
- (void)_displayResetConfirmationAlert;
- (void)_resetAppleHome;
- (void)_resetAppleHomeAction:(id)action;
- (void)_tryAgainAction:(id)action;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubMigrationFailedViewController

- (HUHomeHubMigrationFailedViewController)initWithDetailText:(id)text failedState:(unint64_t)state homeName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  textCopy = text;
  nameCopy = name;
  v9 = MEMORY[0x277D755D0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v11 = [v9 configurationWithHierarchicalColor:hf_keyColor];

  v12 = [MEMORY[0x277D755D0] configurationWithPointSize:100.0];
  v13 = [v12 configurationByApplyingConfiguration:v11];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v15 = [v14 imageWithConfiguration:v13];

  v16 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedTitle", @"HUSoftwareUpdateMigrationFailedTitle", 1);
  if (state == 2)
  {
    v17 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationFailedTitle_ResetAppleHome", @"HUSoftwareUpdateMigrationFailedTitle_ResetAppleHome", 1);

    v16 = v17;
  }

  v24.receiver = self;
  v24.super_class = HUHomeHubMigrationFailedViewController;
  v18 = [(HUImageOBWelcomeController *)&v24 initWithTitle:v16 detailText:textCopy icon:0 contentImage:v15];
  v19 = v18;
  if (v18)
  {
    v18->_failedState = state;
    objc_storeStrong(&v18->_homeName, name);
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (state > 2)
      {
        v21 = @"Unknown";
      }

      else
      {
        v21 = off_277DC1A70[state];
      }

      *buf = 134218498;
      stateCopy = state;
      v27 = 2114;
      v28 = v21;
      v29 = 2112;
      v30 = nameCopy;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:initWithDetailText:failedState:homeName:] failedState: %lu (%{public}@) | homeName: %@", buf, 0x20u);
    }
  }

  return v19;
}

- (void)viewDidLoad
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:viewDidLoad]", buf, 2u);
  }

  headerView = [(HUHomeHubMigrationFailedViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_2824930F8];

  v33.receiver = self;
  v33.super_class = HUHomeHubMigrationFailedViewController;
  [(HUImageOBWelcomeController *)&v33 viewDidLoad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubMigrationFailedViewController *)self setPrimaryButton:boldButton];

  primaryButton = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  [primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];

  failedState = [(HUHomeHubMigrationFailedViewController *)self failedState];
  primaryButton2 = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  v11 = failedState == 2;
  if (failedState == 2)
  {
    v12 = @"HUSoftwareUpdateMigrationFailedTitle_ResetAppleHome";
  }

  else
  {
    v12 = @"HUTryAgainTitle";
  }

  if (failedState == 2)
  {
    v13 = @"Home.OnboardingView.HomeHubMigration.Failed.ResetAppleHome.PrimaryButton";
  }

  else
  {
    v13 = @"Home.OnboardingView.HomeHubMigration.Failed.TryAgainPrimaryButton";
  }

  if (v11)
  {
    v14 = &selRef__displayResetConfirmationAlert;
  }

  else
  {
    v14 = &selRef__tryAgainAction_;
  }

  v15 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
  [primaryButton2 setTitle:v15 forState:0];

  primaryButton3 = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  [primaryButton3 setAccessibilityIdentifier:v13];

  primaryButton4 = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  [primaryButton4 addTarget:self action:*v14 forControlEvents:64];

  buttonTray = [(HUHomeHubMigrationFailedViewController *)self buttonTray];
  primaryButton5 = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  [buttonTray addButton:primaryButton5];

  _shouldShowResetAppleHomeButton = [(HUHomeHubMigrationFailedViewController *)self _shouldShowResetAppleHomeButton];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUHomeHubMigrationFailedViewController *)self setSupplementaryButton:linkButton];

  supplementaryButton = [(HUHomeHubMigrationFailedViewController *)self supplementaryButton];
  [supplementaryButton setTranslatesAutoresizingMaskIntoConstraints:0];

  supplementaryButton2 = [(HUHomeHubMigrationFailedViewController *)self supplementaryButton];
  v24 = !_shouldShowResetAppleHomeButton;
  if (_shouldShowResetAppleHomeButton)
  {
    v25 = @"HUResetAppleHomeButtonTitle";
  }

  else
  {
    v25 = @"HUCancelTitle";
  }

  if (_shouldShowResetAppleHomeButton)
  {
    v26 = @"Home.OnboardingView.HomeHubMigration.Failed.ResetAppleHomeButton";
  }

  else
  {
    v26 = @"Home.OnboardingView.HomeHubMigration.Failed.CancelButton";
  }

  if (v24)
  {
    v27 = &selRef__cancelAction_;
  }

  else
  {
    v27 = &selRef__resetAppleHomeAction_;
  }

  v28 = _HULocalizedStringWithDefaultValue(v25, v25, 1);
  [supplementaryButton2 setTitle:v28 forState:0];

  supplementaryButton3 = [(HUHomeHubMigrationFailedViewController *)self supplementaryButton];
  [supplementaryButton3 setAccessibilityIdentifier:v26];

  supplementaryButton4 = [(HUHomeHubMigrationFailedViewController *)self supplementaryButton];
  [supplementaryButton4 addTarget:self action:*v27 forControlEvents:64];

  buttonTray2 = [(HUHomeHubMigrationFailedViewController *)self buttonTray];
  supplementaryButton5 = [(HUHomeHubMigrationFailedViewController *)self supplementaryButton];
  [buttonTray2 addButton:supplementaryButton5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationFailedViewController;
  [(HUHomeHubMigrationFailedViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationFailedViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)_tryAgainAction:(id)action
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_tryAgainAction] user tapped try again button", v7, 2u);
  }

  delegate = [(HUHomeHubMigrationFailedViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491D90;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_cancelAction:(id)action
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_cancelAction] user tapped cancel button", v7, 2u);
  }

  delegate = [(HUHomeHubMigrationFailedViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491DA8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_resetAppleHomeAction:(id)action
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_resetAppleHomeAction] user tapped reset Apple Home button", v7, 2u);
  }

  delegate = [(HUHomeHubMigrationFailedViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491DC0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_displayResetConfirmationAlert
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUResetAppleHomeConfirmationMessage", @"HUResetAppleHomeConfirmationMessage", 1);
  v4 = MEMORY[0x277D75110];
  v5 = _HULocalizedStringWithDefaultValue(@"HUResetAppleHomeConfirmationTitle", @"HUResetAppleHomeConfirmationTitle", 1);
  v6 = [v4 alertControllerWithTitle:v5 message:v3 preferredStyle:1];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D750F8];
  v8 = _HULocalizedStringWithDefaultValue(@"HUResetTitle", @"HUResetTitle", 1);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__HUHomeHubMigrationFailedViewController__displayResetConfirmationAlert__block_invoke;
  v16 = &unk_277DBEEF0;
  objc_copyWeak(&v17, &location);
  v9 = [v7 actionWithTitle:v8 style:2 handler:&v13];

  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v12 = [v10 actionWithTitle:v11 style:1 handler:{&__block_literal_global_214, v13, v14, v15, v16}];

  [v6 addAction:v9];
  [v6 addAction:v12];
  [(HUHomeHubMigrationFailedViewController *)self presentViewController:v6 animated:1 completion:&__block_literal_global_95_1];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __72__HUHomeHubMigrationFailedViewController__displayResetConfirmationAlert__block_invoke(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_resetAppleHomeAction] user confirmed reset Apple Home", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetAppleHome];
}

void __72__HUHomeHubMigrationFailedViewController__displayResetConfirmationAlert__block_invoke_91()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_resetAppleHomeAction] user cancelled reset Apple Home", v1, 2u);
  }
}

void __72__HUHomeHubMigrationFailedViewController__displayResetConfirmationAlert__block_invoke_92()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_resetAppleHomeAction] reset Apple Home confirmation alert presented", v1, 2u);
  }
}

- (void)_resetAppleHome
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    failedState = [(HUHomeHubMigrationFailedViewController *)self failedState];
    failedState2 = [(HUHomeHubMigrationFailedViewController *)self failedState];
    if (failedState2 > 2)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_277DC1A70[failedState2];
    }

    *buf = 134218242;
    v15 = failedState;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_resetAppleHome] failedState : %lu (%{public}@)", buf, 0x16u);
  }

  primaryButton = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  [primaryButton setEnabled:0];

  primaryButton2 = [(HUHomeHubMigrationFailedViewController *)self primaryButton];
  [primaryButton2 showsBusyIndicator];

  supplementaryButton = [(HUHomeHubMigrationFailedViewController *)self supplementaryButton];
  [supplementaryButton setEnabled:0];

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HUHomeHubMigrationFailedViewController__resetAppleHome__block_invoke;
  v12[3] = &unk_277DB94D0;
  objc_copyWeak(&v13, buf);
  [homeManager eraseHomeDataAndDeleteMetadata:1 completionHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __57__HUHomeHubMigrationFailedViewController__resetAppleHome__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_resetAppleHome] Completed eraseHomeDataAndDeleteMetadata. Error = %@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = [WeakRetained delegate];
    v8 = @"HUHomeHub2OnboardingKey_UserInput";
    v9 = &unk_282491DA8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v6 viewController:WeakRetained didFinishWithConfigurationResults:v7];
  }
}

- (BOOL)_shouldShowResetAppleHomeButton
{
  v14 = *MEMORY[0x277D85DE8];
  failedState = [(HUHomeHubMigrationFailedViewController *)self failedState];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    failedState2 = [(HUHomeHubMigrationFailedViewController *)self failedState];
    failedState3 = [(HUHomeHubMigrationFailedViewController *)self failedState];
    if (failedState3 > 2)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_277DC1A70[failedState3];
    }

    v9[0] = 67109634;
    v9[1] = failedState == 1;
    v10 = 2048;
    v11 = failedState2;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationFailedViewController:_shouldShowResetAppleHomeButton] %{BOOL}d | failedState : %lu (%{public}@)", v9, 0x1Cu);
  }

  return failedState == 1;
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end