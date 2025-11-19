@interface HUHomeHubMigrationProgressViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubMigrationOnboardingFlow)onboardingFlow;
- (HUHomeHubMigrationProgressViewController)initWithOwnedHomes:(id)a3 onboardingFlow:(id)a4;
- (void)_cleanUp;
- (void)_handleFailedMigration:(id)a3;
- (void)_handleSuccessfulMigration;
- (void)_startHH2Upgrade;
- (void)homeManager:(id)a3 didUpdateHH2MigrationInProgressState:(BOOL)a4;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubMigrationProgressViewController

- (HUHomeHubMigrationProgressViewController)initWithOwnedHomes:(id)a3 onboardingFlow:(id)a4
{
  v6 = a4;
  if ([a3 count] <= 1)
  {
    v7 = @"HUSoftwareUpdateMigrationInProgressTitleSingluar";
  }

  else
  {
    v7 = @"HUSoftwareUpdateMigrationInProgressTitlePlural";
  }

  v8 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  v9 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationInProgressDescription", @"HUSoftwareUpdateMigrationInProgressDescription", 1);
  v10 = MEMORY[0x277D755D0];
  v11 = [MEMORY[0x277D75348] hf_keyColor];
  v12 = [v10 configurationWithHierarchicalColor:v11];

  v13 = [MEMORY[0x277D755D0] configurationWithPointSize:100.0];
  v14 = [v13 configurationByApplyingConfiguration:v12];
  v15 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
  v16 = [v15 imageWithConfiguration:v14];

  v21.receiver = self;
  v21.super_class = HUHomeHubMigrationProgressViewController;
  v17 = [(HUImageOBWelcomeController *)&v21 initWithTitle:v8 detailText:v9 icon:0 contentImage:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_onboardingFlow, v6);
    v19 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v19 addHomeManagerObserver:v18];
  }

  return v18;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = HUHomeHubMigrationProgressViewController;
  [(HUImageOBWelcomeController *)&v28 viewDidLoad];
  v3 = [(HUHomeHubMigrationProgressViewController *)self headerView];
  v4 = [v3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v4 withIDDictionary:&unk_282492F90];

  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setHidesBackButton:1];

  [(HUHomeHubMigrationProgressViewController *)self setModalInPresentation:1];
  [(HUHomeHubMigrationProgressViewController *)self _startHH2Upgrade];
  v6 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  [v6 addCaptionText:@" "];

  v7 = [MEMORY[0x277D37618] boldButton];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setHidden:1];
  v8 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  [v8 addButton:v7];

  v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [(HUHomeHubMigrationProgressViewController *)self setSpinner:v9];

  v10 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [v11 sizeToFit];

  v12 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [v12 startAnimating];

  v13 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [v13 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.Progress.Spinner"];

  v14 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  v15 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [v14 addSubview:v15];

  v16 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  v17 = [v16 centerXAnchor];
  v18 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  v19 = [v18 centerXAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  v22 = [v21 topAnchor];
  v23 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:20.0];
  [v25 setActive:1];

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-viewDidLoad] presented: HUHomeHubMigrationProgressViewController", v27, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationProgressViewController;
  [(HUHomeHubMigrationProgressViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationProgressViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-viewWillDisappear]", v4, 2u);
  }
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  v4 = a4;
  v8 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-homeManager:didUpdateHH2State:] Migration Completed - didUpdateHH2State = %{BOOL}d", v7, 8u);
  }

  if (v4)
  {
    [(HUHomeHubMigrationProgressViewController *)self _handleSuccessfulMigration];
  }
}

- (void)homeManager:(id)a3 didUpdateHH2MigrationInProgressState:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 hh2MigrationFailedError];
    v11[0] = 67109378;
    v11[1] = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-homeManager:didUpdateHH2MigrationInProgressState:] Migration is in progress? %{BOOL}d, hh2MigrationFailedError = %@", v11, 0x12u);
  }

  if (!v4)
  {
    v9 = [v6 hh2MigrationFailedError];

    if (v9)
    {
      v10 = [v6 hh2MigrationFailedError];
      [(HUHomeHubMigrationProgressViewController *)self _handleFailedMigration:v10];
    }
  }
}

- (void)_startHH2Upgrade
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-_startHH2Upgrade]", buf, 2u);
  }

  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5 = [v4 homeManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HUHomeHubMigrationProgressViewController__startHH2Upgrade__block_invoke;
  v6[3] = &unk_277DB8C00;
  v6[4] = self;
  [v5 upgradeToROARWithCompletionHandler:v6];
}

void __60__HUHomeHubMigrationProgressViewController__startHH2Upgrade__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v3;
    v7 = 2048;
    v8 = [v3 code];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-_startHH2Upgrade] Completed with error = %@ (%lu)", &v5, 0x16u);
  }

  if (v3)
  {
    [*(a1 + 32) _handleFailedMigration:v3];
  }
}

- (void)_handleSuccessfulMigration
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(HUHomeHubMigrationProgressViewController *)self _cleanUp];
  v3 = [(HUHomeHubMigrationProgressViewController *)self delegate];
  v5 = @"HUHomeHub2OnboardingKey_UserInput";
  v6[0] = &unk_282491940;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 viewController:self didFinishWithConfigurationResults:v4];
}

- (void)_handleFailedMigration:(id)a3
{
  v4 = a3;
  [(HUHomeHubMigrationProgressViewController *)self _cleanUp];
  v5 = [(HUHomeHubMigrationProgressViewController *)self onboardingFlow];
  [v5 addMigrationError:v4];

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:&unk_282491958 forKey:@"HUHomeHub2OnboardingKey_UserInput"];
  v6 = [MEMORY[0x277D14640] localizedDescriptionForError:v4];

  if (v6)
  {
    [v8 setObject:v6 forKey:@"HUHomeHub2OnboardingKey_ErrorDescription"];
  }

  v7 = [(HUHomeHubMigrationProgressViewController *)self delegate];
  [v7 viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_cleanUp
{
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v3 removeHomeManagerObserver:self];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUHomeHubMigrationOnboardingFlow)onboardingFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingFlow);

  return WeakRetained;
}

@end