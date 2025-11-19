@interface HUHomeHubSharedUserWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubSharedUserWarningViewController)initWithHomesToUsersMap:(id)a3;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow:(id)a3;
- (void)_commitOrContinue;
- (void)_continueTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUHomeHubSharedUserWarningViewController

- (HUHomeHubSharedUserWarningViewController)initWithHomesToUsersMap:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = [v4 count];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:initWithHomesToUsersMap:] homesToUsersMap = %@ (%lu)", buf, 0x16u);
  }

  v6 = [v4 count];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__26;
  v21 = __Block_byref_object_dispose__26;
  v22 = &stru_2823E0EE8;
  if (v6 <= 1)
  {
    v7 = [v4 keyEnumerator];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__HUHomeHubSharedUserWarningViewController_initWithHomesToUsersMap___block_invoke;
    v18[3] = &unk_277DC23B8;
    v18[4] = buf;
    [v7 na_each:v18];
  }

  v8 = [[HUHomeHubSharedUserWarningItemManager alloc] initWithDelegate:self homesToUsersMap:v4];
  v9 = [(HUItemTableViewController *)[HUHomeHubSharedUserWarningTableViewController alloc] initWithItemManager:v8 tableViewStyle:1];
  v10 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateSharedUsersWarningTitle", @"HUSoftwareUpdateSharedUsersWarningTitle", 1);
  if (v6 >= 2)
  {
    v11 = @"HUSoftwareUpdateSharedUsersWarningDescriptionMultipleHomes";
  }

  else
  {
    v11 = @"HUSoftwareUpdateSharedUsersWarningDescriptionOneHome";
  }

  v12 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
  v17.receiver = self;
  v17.super_class = HUHomeHubSharedUserWarningViewController;
  v13 = [(HUItemTableOBWelcomeController *)&v17 initWithTitle:v10 detailText:v12 icon:0 contentLayout:2 itemTableViewController:v9];
  if (v13)
  {
    if (v6 >= 2)
    {
      _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdatePersonalDeviceWarningCaptionPluralHomes", @"HUSoftwareUpdatePersonalDeviceWarningCaptionPluralHomes", 1);
    }

    else
    {
      _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdatePersonalDeviceWarningCaption", @"HUSoftwareUpdatePersonalDeviceWarningCaption", 1);
    }
    v14 = ;
    objc_storeStrong(&v13->_captionString, v14);

    if (v6 >= 2)
    {
      _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationSharedUserConfirmationDescriptionPluralHomes", @"HUSoftwareUpdateMigrationSharedUserConfirmationDescriptionPluralHomes", 1);
    }

    else
    {
      _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateMigrationSharedUserConfirmationDescription", @"HUSoftwareUpdateMigrationSharedUserConfirmationDescription", 1);
    }
    v15 = ;
    objc_storeStrong(&v13->_confirmationString, v15);
  }

  _Block_object_dispose(buf, 8);
  return v13;
}

void __68__HUHomeHubSharedUserWarningViewController_initWithHomesToUsersMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_displayName];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = HUHomeHubSharedUserWarningViewController;
  [(HUItemTableOBWelcomeController *)&v23 viewDidLoad];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:viewDidLoad]", v22, 2u);
  }

  v4 = [(HUHomeHubSharedUserWarningViewController *)self headerView];
  v5 = [v4 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v5 withIDDictionary:&unk_2824931C0];

  v6 = [(HUHomeHubSharedUserWarningViewController *)self buttonTray];
  v7 = [(HUHomeHubSharedUserWarningViewController *)self captionString];
  [v6 addCaptionText:v7];

  v8 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubSharedUserWarningViewController *)self setCommitButton:v8];

  v9 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  v11 = [(HUHomeHubSharedUserWarningViewController *)self _commitOrContinueButtonTitle];
  [v10 setTitle:v11 forState:0];

  v12 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [v12 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubSharedUserWarningViewController.CommitOrContinueButton"];

  v13 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [v13 addTarget:self action:sel__continueTapped_ forControlEvents:64];

  v14 = [(HUHomeHubSharedUserWarningViewController *)self buttonTray];
  v15 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [v14 addButton:v15];

  v16 = objc_alloc(MEMORY[0x277D751E0]);
  v17 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v18 = [v16 initWithTitle:v17 style:0 target:self action:sel__cancelFlow_];
  [(HUHomeHubSharedUserWarningViewController *)self setCancelButton:v18];

  v19 = [(HUHomeHubSharedUserWarningViewController *)self cancelButton];
  [v19 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubSharedUserWarningViewController.CancelButton"];

  v20 = [(OBBaseWelcomeController *)self navigationItem];
  v21 = [(HUHomeHubSharedUserWarningViewController *)self cancelButton];
  [v20 setRightBarButtonItem:v21];

  [(HUHomeHubSharedUserWarningViewController *)self setModalInPresentation:1];
}

- (id)_commitOrContinueButtonTitle
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlDescription", @"HUSoftwareUpdateControlDescription", 1);
  if ([(HUHomeHubSharedUserWarningViewController *)self isFinalStep])
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

- (void)_continueTapped:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:_continueTapped] User tapped continue button", v5, 2u);
  }

  [(HUHomeHubSharedUserWarningViewController *)self _commitOrContinue];
}

- (void)_cancelFlow:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:_cancelFlow] User tapped cancel button", v7, 2u);
  }

  v5 = [(HUHomeHubSharedUserWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491FA0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_commitOrContinue
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(HUHomeHubSharedUserWarningViewController *)self isFinalStep])
  {
    v3 = 6;
  }

  else
  {
    v3 = 2;
  }

  v4 = [(HUHomeHubSharedUserWarningViewController *)self delegate];
  v7 = @"HUHomeHub2OnboardingKey_UserInput";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 viewController:self didFinishWithConfigurationResults:v6];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end