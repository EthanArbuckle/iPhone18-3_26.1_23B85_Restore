@interface HUHomeHubSharedHomeWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubSharedHomeWarningViewController)initWithSharedHomes:(id)homes;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow:(id)flow;
- (void)_commitOrContinue;
- (void)_continueTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUHomeHubSharedHomeWarningViewController

- (HUHomeHubSharedHomeWarningViewController)initWithSharedHomes:(id)homes
{
  v21 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = homesCopy;
    v19 = 2048;
    v20 = [homesCopy count];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedHomeWarningViewController:initWithSharedHomes] homes = %@ (%lu)", buf, 0x16u);
  }

  v7 = [[HUHomeHubSharedHomeWarningItemManager alloc] initWithDelegate:self homes:homesCopy];
  v8 = [[HUHomeHubSimpleTableViewController alloc] initWithItemManager:v7 tableViewStyle:1 descriptionStringWithFormatKey:@"HUSoftwareUpdateSharedHomesWarningSharedBySecondaryText"];
  if ([homesCopy count] >= 2)
  {
    v9 = @"HUSoftwareUpdateSharedHomesWarningTitlePlural";
  }

  else
  {
    v9 = @"HUSoftwareUpdateSharedHomesWarningTitle";
  }

  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  if ([homesCopy count] >= 2)
  {
    v11 = @"HUSoftwareUpdateSharedHomesWarningDescriptionPlural";
  }

  else
  {
    v11 = @"HUSoftwareUpdateSharedHomesWarningDescription";
  }

  v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  v16.receiver = self;
  v16.super_class = HUHomeHubSharedHomeWarningViewController;
  v13 = [(HUItemTableOBWelcomeController *)&v16 initWithTitle:v10 detailText:v12 icon:0 contentLayout:2 itemTableViewController:v8];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homes, homes);
  }

  return v14;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUHomeHubSharedHomeWarningViewController;
  [(HUItemTableOBWelcomeController *)&v19 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubSharedHomeWarningViewController *)self setCommitButton:boldButton];

  commitButton = [(HUHomeHubSharedHomeWarningViewController *)self commitButton];
  [commitButton setTranslatesAutoresizingMaskIntoConstraints:0];

  commitButton2 = [(HUHomeHubSharedHomeWarningViewController *)self commitButton];
  _commitOrContinueButtonTitle = [(HUHomeHubSharedHomeWarningViewController *)self _commitOrContinueButtonTitle];
  [commitButton2 setTitle:_commitOrContinueButtonTitle forState:0];

  commitButton3 = [(HUHomeHubSharedHomeWarningViewController *)self commitButton];
  [commitButton3 addTarget:self action:sel__continueTapped_ forControlEvents:64];

  commitButton4 = [(HUHomeHubSharedHomeWarningViewController *)self commitButton];
  [commitButton4 setAccessibilityIdentifier:@"HUHomeHubSharedHomeWarningViewController.commitButton"];

  buttonTray = [(HUHomeHubSharedHomeWarningViewController *)self buttonTray];
  commitButton5 = [(HUHomeHubSharedHomeWarningViewController *)self commitButton];
  [buttonTray addButton:commitButton5];

  v11 = objc_alloc(MEMORY[0x277D751E0]);
  v12 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v13 = [v11 initWithTitle:v12 style:0 target:self action:sel__cancelFlow_];
  [(HUHomeHubSharedHomeWarningViewController *)self setCancelButton:v13];

  cancelButton = [(HUHomeHubSharedHomeWarningViewController *)self cancelButton];
  [cancelButton setAccessibilityIdentifier:@"HUHomeHubSharedHomeWarningViewController.cancelButton"];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  cancelButton2 = [(HUHomeHubSharedHomeWarningViewController *)self cancelButton];
  [navigationItem setRightBarButtonItem:cancelButton2];

  [(HUHomeHubSharedHomeWarningViewController *)self setModalInPresentation:1];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedHomeWarningViewController:viewDidLoad] presented: HUHomeHubSharedHomesWarningViewController", v18, 2u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSharedHomeWarningViewController;
  [(HUHomeHubSharedHomeWarningViewController *)&v5 viewWillAppear:appear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedHomeWarningViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUHomeHubSharedHomeWarningViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:disappear];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedHomeWarningViewController:viewWillDisappear]", v4, 2u);
  }
}

- (id)_commitOrContinueButtonTitle
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationUpdateAnyway", @"HUSoftwareUpdateMigrationUpdateAnyway", 1);
  if ([(HUHomeHubSharedHomeWarningViewController *)self isFinalStep])
  {
    v4 = v3;
  }

  else
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUContinueTitle", @"HUContinueTitle", 1);
  }

  v5 = v4;

  return v5;
}

- (void)_continueTapped:(id)tapped
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedHomeWarningViewController:_continueTapped] User continue tapped button", v5, 2u);
  }

  [(HUHomeHubSharedHomeWarningViewController *)self _commitOrContinue];
}

- (void)_cancelFlow:(id)flow
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedHomeWarningViewController:_cancelFlow] User tapped cancel button", v7, 2u);
  }

  delegate = [(HUHomeHubSharedHomeWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491178;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_commitOrContinue
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([(HUHomeHubSharedHomeWarningViewController *)self isFinalStep])
  {
    delegate = [(HUHomeHubSharedHomeWarningViewController *)self delegate];
    v5 = @"HUHomeHub2OnboardingKey_UserInput";
    v6[0] = &unk_282491190;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [delegate viewController:self didFinishWithConfigurationResults:v4];
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end