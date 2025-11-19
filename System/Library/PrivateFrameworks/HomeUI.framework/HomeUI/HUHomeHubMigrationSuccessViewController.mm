@interface HUHomeHubMigrationSuccessViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_doneAction:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setHidesBackButton:1 animated:0];

  v5 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubMigrationSuccessViewController *)self setCommitButton:v5];

  v6 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  [v7 setTitle:v8 forState:0];

  v9 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [v9 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.Success.DoneButton"];

  v10 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [v10 addTarget:self action:sel__doneAction_ forControlEvents:64];

  v11 = [(HUHomeHubMigrationSuccessViewController *)self buttonTray];
  v12 = [(HUHomeHubMigrationSuccessViewController *)self commitButton];
  [v11 addButton:v12];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationSuccessViewController;
  [(HUHomeHubMigrationSuccessViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubMigrationSuccessViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:viewWillDisappear]", v4, 2u);
  }
}

- (void)_doneAction:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubMigrationSuccessViewController:_doneAction] user tapped done button", v7, 2u);
  }

  v5 = [(HUHomeHubMigrationSuccessViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491AF0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:self didFinishWithConfigurationResults:v6];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end