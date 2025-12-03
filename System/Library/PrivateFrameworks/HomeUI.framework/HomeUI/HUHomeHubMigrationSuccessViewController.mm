@interface HUHomeHubMigrationSuccessViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_doneAction:(id)action;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubMigrationSuccessViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = HUHomeHubMigrationSuccessViewController;
  [(OBBaseWelcomeController *)&v14 viewDidLoad];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:viewDidLoad]", v13, 2u);
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubMigrationSuccessViewController *)self setCommitButton:boldButton];

  commitButton = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [commitButton setTranslatesAutoresizingMaskIntoConstraints:0];

  commitButton2 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  [commitButton2 setTitle:v8 forState:0];

  commitButton3 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [commitButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.Success.DoneButton"];

  commitButton4 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [commitButton4 addTarget:self action:sel__doneAction_ forControlEvents:64];

  buttonTray = [(HUHomeHubMigrationSuccessViewController *)self buttonTray];
  commitButton5 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [buttonTray addButton:commitButton5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationSuccessViewController;
  [(HUHomeHubMigrationSuccessViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationSuccessViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)_doneAction:(id)action
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:_doneAction] user tapped done button", v7, 2u);
  }

  delegate = [(HUHomeHubMigrationSuccessViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491AF0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end