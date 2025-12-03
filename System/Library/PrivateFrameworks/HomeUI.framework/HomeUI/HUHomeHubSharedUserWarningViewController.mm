@interface HUHomeHubSharedUserWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubSharedUserWarningViewController)initWithHomesToUsersMap:(id)map;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow:(id)flow;
- (void)_commitOrContinue;
- (void)_continueTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation HUHomeHubSharedUserWarningViewController

- (HUHomeHubSharedUserWarningViewController)initWithHomesToUsersMap:(id)map
{
  v23 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = mapCopy;
    *&buf[12] = 2048;
    *&buf[14] = [mapCopy count];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:initWithHomesToUsersMap:] homesToUsersMap = %@ (%lu)", buf, 0x16u);
  }

  v6 = [mapCopy count];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__26;
  v21 = __Block_byref_object_dispose__26;
  v22 = &stru_2823E0EE8;
  if (v6 <= 1)
  {
    keyEnumerator = [mapCopy keyEnumerator];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__HUHomeHubSharedUserWarningViewController_initWithHomesToUsersMap___block_invoke;
    v18[3] = &unk_277DC23B8;
    v18[4] = buf;
    [keyEnumerator na_each:v18];
  }

  v8 = [[HUHomeHubSharedUserWarningItemManager alloc] initWithDelegate:self homesToUsersMap:mapCopy];
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

  headerView = [(HUHomeHubSharedUserWarningViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_2824931C0];

  buttonTray = [(HUHomeHubSharedUserWarningViewController *)self buttonTray];
  captionString = [(HUHomeHubSharedUserWarningViewController *)self captionString];
  [buttonTray addCaptionText:captionString];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubSharedUserWarningViewController *)self setCommitButton:boldButton];

  commitButton = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [commitButton setTranslatesAutoresizingMaskIntoConstraints:0];

  commitButton2 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  _commitOrContinueButtonTitle = [(HUHomeHubSharedUserWarningViewController *)self _commitOrContinueButtonTitle];
  [commitButton2 setTitle:_commitOrContinueButtonTitle forState:0];

  commitButton3 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [commitButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubSharedUserWarningViewController.CommitOrContinueButton"];

  commitButton4 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [commitButton4 addTarget:self action:sel__continueTapped_ forControlEvents:64];

  buttonTray2 = [(HUHomeHubSharedUserWarningViewController *)self buttonTray];
  commitButton5 = [(HUHomeHubSharedUserWarningViewController *)self commitButton];
  [buttonTray2 addButton:commitButton5];

  v16 = objc_alloc(MEMORY[0x277D751E0]);
  v17 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v18 = [v16 initWithTitle:v17 style:0 target:self action:sel__cancelFlow_];
  [(HUHomeHubSharedUserWarningViewController *)self setCancelButton:v18];

  cancelButton = [(HUHomeHubSharedUserWarningViewController *)self cancelButton];
  [cancelButton setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubSharedUserWarningViewController.CancelButton"];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  cancelButton2 = [(HUHomeHubSharedUserWarningViewController *)self cancelButton];
  [navigationItem setRightBarButtonItem:cancelButton2];

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

- (void)_continueTapped:(id)tapped
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:_continueTapped] User tapped continue button", v5, 2u);
  }

  [(HUHomeHubSharedUserWarningViewController *)self _commitOrContinue];
}

- (void)_cancelFlow:(id)flow
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubSharedUserWarningViewController:_cancelFlow] User tapped cancel button", v7, 2u);
  }

  delegate = [(HUHomeHubSharedUserWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491FA0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
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

  delegate = [(HUHomeHubSharedUserWarningViewController *)self delegate];
  v7 = @"HUHomeHub2OnboardingKey_UserInput";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [delegate viewController:self didFinishWithConfigurationResults:v6];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end