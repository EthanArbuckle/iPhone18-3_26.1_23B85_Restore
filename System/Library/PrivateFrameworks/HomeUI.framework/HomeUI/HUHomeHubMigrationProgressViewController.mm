@interface HUHomeHubMigrationProgressViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubMigrationOnboardingFlow)onboardingFlow;
- (HUHomeHubMigrationProgressViewController)initWithOwnedHomes:(id)homes onboardingFlow:(id)flow;
- (void)_cleanUp;
- (void)_handleFailedMigration:(id)migration;
- (void)_handleSuccessfulMigration;
- (void)_startHH2Upgrade;
- (void)homeManager:(id)manager didUpdateHH2MigrationInProgressState:(BOOL)state;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubMigrationProgressViewController

- (HUHomeHubMigrationProgressViewController)initWithOwnedHomes:(id)homes onboardingFlow:(id)flow
{
  flowCopy = flow;
  if ([homes count] <= 1)
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
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v12 = [v10 configurationWithHierarchicalColor:hf_keyColor];

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
    objc_storeWeak(&v17->_onboardingFlow, flowCopy);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v18];
  }

  return v18;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = HUHomeHubMigrationProgressViewController;
  [(HUImageOBWelcomeController *)&v28 viewDidLoad];
  headerView = [(HUHomeHubMigrationProgressViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282492F90];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  [(HUHomeHubMigrationProgressViewController *)self setModalInPresentation:1];
  [(HUHomeHubMigrationProgressViewController *)self _startHH2Upgrade];
  buttonTray = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  [buttonTray addCaptionText:@" "];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [boldButton setHidden:1];
  buttonTray2 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  [buttonTray2 addButton:boldButton];

  v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [(HUHomeHubMigrationProgressViewController *)self setSpinner:v9];

  spinner = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

  spinner2 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [spinner2 sizeToFit];

  spinner3 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [spinner3 startAnimating];

  spinner4 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [spinner4 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.Progress.Spinner"];

  buttonTray3 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  spinner5 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  [buttonTray3 addSubview:spinner5];

  spinner6 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  centerXAnchor = [spinner6 centerXAnchor];
  buttonTray4 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  centerXAnchor2 = [buttonTray4 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v20 setActive:1];

  spinner7 = [(HUHomeHubMigrationProgressViewController *)self spinner];
  topAnchor = [spinner7 topAnchor];
  buttonTray5 = [(HUHomeHubMigrationProgressViewController *)self buttonTray];
  topAnchor2 = [buttonTray5 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  [v25 setActive:1];

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-viewDidLoad] presented: HUHomeHubMigrationProgressViewController", v27, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationProgressViewController;
  [(HUHomeHubMigrationProgressViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationProgressViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-viewWillDisappear]", v4, 2u);
  }
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v8 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = stateCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-homeManager:didUpdateHH2State:] Migration Completed - didUpdateHH2State = %{BOOL}d", v7, 8u);
  }

  if (stateCopy)
  {
    [(HUHomeHubMigrationProgressViewController *)self _handleSuccessfulMigration];
  }
}

- (void)homeManager:(id)manager didUpdateHH2MigrationInProgressState:(BOOL)state
{
  stateCopy = state;
  v14 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hh2MigrationFailedError = [managerCopy hh2MigrationFailedError];
    v11[0] = 67109378;
    v11[1] = stateCopy;
    v12 = 2112;
    v13 = hh2MigrationFailedError;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationProgressViewController-homeManager:didUpdateHH2MigrationInProgressState:] Migration is in progress? %{BOOL}d, hh2MigrationFailedError = %@", v11, 0x12u);
  }

  if (!stateCopy)
  {
    hh2MigrationFailedError2 = [managerCopy hh2MigrationFailedError];

    if (hh2MigrationFailedError2)
    {
      hh2MigrationFailedError3 = [managerCopy hh2MigrationFailedError];
      [(HUHomeHubMigrationProgressViewController *)self _handleFailedMigration:hh2MigrationFailedError3];
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

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HUHomeHubMigrationProgressViewController__startHH2Upgrade__block_invoke;
  v6[3] = &unk_277DB8C00;
  v6[4] = self;
  [homeManager upgradeToROARWithCompletionHandler:v6];
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
  delegate = [(HUHomeHubMigrationProgressViewController *)self delegate];
  v5 = @"HUHomeHub2OnboardingKey_UserInput";
  v6[0] = &unk_282491940;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v4];
}

- (void)_handleFailedMigration:(id)migration
{
  migrationCopy = migration;
  [(HUHomeHubMigrationProgressViewController *)self _cleanUp];
  onboardingFlow = [(HUHomeHubMigrationProgressViewController *)self onboardingFlow];
  [onboardingFlow addMigrationError:migrationCopy];

  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:&unk_282491958 forKey:@"HUHomeHub2OnboardingKey_UserInput"];
  v6 = [MEMORY[0x277D14640] localizedDescriptionForError:migrationCopy];

  if (v6)
  {
    [v8 setObject:v6 forKey:@"HUHomeHub2OnboardingKey_ErrorDescription"];
  }

  delegate = [(HUHomeHubMigrationProgressViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v8];
}

- (void)_cleanUp
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] removeHomeManagerObserver:self];
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