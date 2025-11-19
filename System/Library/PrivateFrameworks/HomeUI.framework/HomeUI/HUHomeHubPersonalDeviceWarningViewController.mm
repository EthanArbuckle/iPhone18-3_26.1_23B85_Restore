@interface HUHomeHubPersonalDeviceWarningViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubPersonalDeviceWarningViewController)initWithDevices:(id)a3 homes:(id)a4;
- (id)_commitOrContinueButtonTitle;
- (void)_cancelFlow:(id)a3;
- (void)_commitOrContinue;
- (void)_continueTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubPersonalDeviceWarningViewController

- (HUHomeHubPersonalDeviceWarningViewController)initWithDevices:(id)a3 homes:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v29 = v6;
    v30 = 2048;
    v31 = [v6 count];
    v32 = 2112;
    v33 = v7;
    v34 = 2048;
    v35 = [v7 count];
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "[HUHomeHubPersonalDeviceWarningViewController:initWithDevices:homes:] devices = %@ (%lu) | homes = %@ (%lu)", buf, 0x2Au);
  }

  v9 = [v7 count];
  v10 = [v6 count];
  if (v9 > 1)
  {
    v26 = &stru_2823E0EE8;
    v12 = @"HUSoftwareUpdatePersonalDeviceWarningDescriptionPluralHomes";
  }

  else
  {
    v11 = [v7 firstObject];
    v26 = [v11 hf_displayName];

    v12 = @"HUSoftwareUpdatePersonalDeviceWarningDescription";
  }

  v13 = [[HUHomeHubPersonalDeviceWarningItemManager alloc] initWithDelegate:self devices:v6];
  v14 = [(HUItemTableViewController *)[HUHomeHubSimpleTableViewController alloc] initWithItemManager:v13 tableViewStyle:1];
  v15 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdatePersonalDeviceWarningTitle", @"HUSoftwareUpdatePersonalDeviceWarningTitle", 1);
  if (v10 >= 2)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_PluralDevices", v12, v26];
  }

  v16 = _HULocalizedStringWithDefaultValue(v12, v12, 1);

  v27.receiver = self;
  v27.super_class = HUHomeHubPersonalDeviceWarningViewController;
  v17 = [(HUItemTableOBWelcomeController *)&v27 initWithTitle:v15 detailText:v16 icon:0 contentLayout:2 itemTableViewController:v14];
  if (v17)
  {
    v18 = @"HUSoftwareUpdatePersonalDeviceWarningCaptionPluralHomes";
    if (v9 < 2)
    {
      v18 = @"HUSoftwareUpdatePersonalDeviceWarningCaption";
    }

    v19 = v18;
    if (v10 >= 2)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_PluralDevices", v19];

      v19 = v20;
    }

    v21 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
    captionString = v17->_captionString;
    v17->_captionString = v21;

    if (v9 >= 2)
    {
      v23 = @"HUSoftwareUpdateMigrationPersonalDeviceConfirmationDescriptionPluralHomes";
    }

    else
    {
      v23 = @"HUSoftwareUpdateMigrationPersonalDeviceConfirmationDescription";
    }

    v24 = _HULocalizedStringWithDefaultValue(v23, v23, 1);
    objc_storeStrong(&v17->_confirmationString, v24);
  }

  return v17;
}

- (void)viewDidLoad
{
  v30 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUHomeHubPersonalDeviceWarningViewController;
  [(HUItemTableOBWelcomeController *)&v25 viewDidLoad];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubPersonalDeviceWarningViewController:viewDidLoad]", buf, 2u);
  }

  v5 = [(HUHomeHubPersonalDeviceWarningViewController *)self headerView];
  v6 = [v5 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v6 withIDDictionary:&unk_282492E50];

  v7 = [(HUHomeHubPersonalDeviceWarningViewController *)self buttonTray];
  v8 = [(HUHomeHubPersonalDeviceWarningViewController *)self captionString];
  [v7 addCaptionText:v8];

  v9 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubPersonalDeviceWarningViewController *)self setCommitButton:v9];

  v10 = [(HUHomeHubPersonalDeviceWarningViewController *)self commitButton];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HUHomeHubPersonalDeviceWarningViewController *)self commitButton];
  v12 = [(HUHomeHubPersonalDeviceWarningViewController *)self _commitOrContinueButtonTitle];
  [v11 setTitle:v12 forState:0];

  v13 = [(HUHomeHubPersonalDeviceWarningViewController *)self commitButton];
  [v13 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubPersonalDeviceWarning.CommitOrContinueButton"];

  v14 = [(HUHomeHubPersonalDeviceWarningViewController *)self commitButton];
  [v14 addTarget:self action:sel__continueTapped_ forControlEvents:64];

  v15 = [(HUHomeHubPersonalDeviceWarningViewController *)self buttonTray];
  v16 = [(HUHomeHubPersonalDeviceWarningViewController *)self commitButton];
  [v15 addButton:v16];

  v17 = objc_alloc(MEMORY[0x277D751E0]);
  v18 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v19 = [v17 initWithTitle:v18 style:0 target:self action:sel__cancelFlow_];
  [(HUHomeHubPersonalDeviceWarningViewController *)self setCancelButton:v19];

  v20 = [(HUHomeHubPersonalDeviceWarningViewController *)self cancelButton];
  [v20 setAccessibilityIdentifier:@"Home.OnboardingView.HomeHubMigration.HUHomeHubPersonalDeviceWarning.CancelButton"];

  v21 = [(OBBaseWelcomeController *)self navigationItem];
  v22 = [(HUHomeHubPersonalDeviceWarningViewController *)self cancelButton];
  [v21 setRightBarButtonItem:v22];

  [(HUHomeHubPersonalDeviceWarningViewController *)self setModalInPresentation:1];
  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromSelector(a2);
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v24;
    _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HUHomeHubPersonalDeviceWarningViewController", buf, 0x16u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubPersonalDeviceWarningViewController;
  [(HUHomeHubPersonalDeviceWarningViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubPersonalDeviceWarningViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubPersonalDeviceWarningViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubPersonalDeviceWarningViewController:viewWillDisappear]", v4, 2u);
  }
}

- (id)_commitOrContinueButtonTitle
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUSoftwareUpdateControlDescription", @"HUSoftwareUpdateControlDescription", 1);
  if ([(HUHomeHubPersonalDeviceWarningViewController *)self isFinalStep])
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
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubPersonalDeviceWarningViewController:_continueTapped] User tapped continue button", v5, 2u);
  }

  [(HUHomeHubPersonalDeviceWarningViewController *)self _commitOrContinue];
}

- (void)_cancelFlow:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubPersonalDeviceWarningViewController:_cancelFlow] User tapped cancel button", v7, 2u);
  }

  v5 = [(HUHomeHubPersonalDeviceWarningViewController *)self delegate];
  v8 = @"HUHomeHub2OnboardingKey_UserInput";
  v9[0] = &unk_282491100;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 viewController:self didFinishWithConfigurationResults:v6];
}

- (void)_commitOrContinue
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(HUHomeHubPersonalDeviceWarningViewController *)self isFinalStep])
  {
    v3 = 6;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(HUHomeHubPersonalDeviceWarningViewController *)self delegate];
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