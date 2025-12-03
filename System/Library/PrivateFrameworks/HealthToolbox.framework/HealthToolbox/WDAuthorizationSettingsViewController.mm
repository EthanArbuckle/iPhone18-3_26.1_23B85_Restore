@interface WDAuthorizationSettingsViewController
- (BOOL)_isSiriAndDeviceCapable;
- (BOOL)_isTypeEnabledAtIndexPath;
- (WDAuthorizationSettingsViewController)initWithProfile:(id)profile style:(int64_t)style source:(id)source shareDescription:(id)description updateDescription:(id)updateDescription researchStudyUsageDescription:(id)usageDescription;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)sectionsForAuthController:(id)controller;
- (id)specialCellWithIdentifier:(id)identifier textLabelText:(id)text;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WDAuthorizationSettingsViewController

- (WDAuthorizationSettingsViewController)initWithProfile:(id)profile style:(int64_t)style source:(id)source shareDescription:(id)description updateDescription:(id)updateDescription researchStudyUsageDescription:(id)usageDescription
{
  profileCopy = profile;
  usageDescriptionCopy = usageDescription;
  updateDescriptionCopy = updateDescription;
  descriptionCopy = description;
  sourceCopy = source;
  healthStore = [profileCopy healthStore];
  v23.receiver = self;
  v23.super_class = WDAuthorizationSettingsViewController;
  v20 = [(HKAuthorizationSettingsViewController *)&v23 initWithHealthStore:healthStore style:style source:sourceCopy typesToShare:0 typesToRead:0 shareDescription:descriptionCopy updateDescription:updateDescriptionCopy researchStudyUsageDescription:usageDescriptionCopy];

  if (v20)
  {
    [(WDAuthorizationSettingsViewController *)v20 setProfile:profileCopy];
    [(HKAuthorizationSettingsViewController *)v20 sourceConfigure];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel__applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v20;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = WDAuthorizationSettingsViewController;
  [(HKAuthorizationSettingsViewController *)&v2 viewDidLoad];
}

- (id)sectionsForAuthController:(id)controller
{
  v10.receiver = self;
  v10.super_class = WDAuthorizationSettingsViewController;
  v4 = [(HKAuthorizationSettingsViewController *)&v10 sectionsForAuthController:controller];
  v5 = [v4 mutableCopy];

  profile = [(WDAuthorizationSettingsViewController *)self profile];
  presentationContext = [profile presentationContext];

  if (presentationContext != @"SettingsPrivacy")
  {
    [v5 addObject:&unk_28642DE10];
  }

  if ([(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable])
  {
    [v5 addObject:&unk_28642DE28];
  }

  v8 = [v5 sortedArrayUsingSelector:sel_compare_];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
  v8 = 0;
  if (v7 && v7 != 5)
  {
    v10.receiver = self;
    v10.super_class = WDAuthorizationSettingsViewController;
    v8 = [(HKAuthorizationSettingsViewController *)&v10 tableView:viewCopy titleForHeaderInSection:section];
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
  v8 = v7;
  if (v7)
  {
    if (v7 == 5)
    {
      v8 = 1;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = WDAuthorizationSettingsViewController;
      v8 = [(HKAuthorizationSettingsViewController *)&v10 tableView:viewCopy numberOfRowsInSection:section];
    }
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [pathCopy section]);
  if (v8 == 5)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"VIEW_ALL_DATA_FROM_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
    source = [(HKAuthorizationSettingsViewController *)self source];
    name = [source name];
    v14 = [v9 stringWithFormat:v11, name];

    v15 = [(WDAuthorizationSettingsViewController *)self specialCellWithIdentifier:@"WDAuthorizationSettingsViewAllData" textLabelText:v14];
    [v15 setAccessoryType:1];
  }

  else
  {
    v16 = v8;
    _isSiriAndDeviceCapable = [(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable];
    if (v16 == 2 && _isSiriAndDeviceCapable)
    {
      _isTypeEnabledAtIndexPath = [(WDAuthorizationSettingsViewController *)self _isTypeEnabledAtIndexPath];
      tableView = [(OBTableWelcomeController *)self tableView];
      v15 = [tableView dequeueReusableCellWithIdentifier:@"ToggleAllCell"];

      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x277D12AE8]) initWithStyle:0 reuseIdentifier:@"ToggleAllCell"];
        [v15 setDelegate:self];
      }

      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [v20 localizedStringForKey:@"SIRI_ACCESS_DATA_BUTTON" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Scribe"];
      textLabel = [v15 textLabel];
      [textLabel setText:v21];

      [v15 setOn:_isTypeEnabledAtIndexPath];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = WDAuthorizationSettingsViewController;
      v15 = [(HKAuthorizationSettingsViewController *)&v24 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    }
  }

  return v15;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable]&& [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section]== 2)
  {
    defaultReuseIdentifier = [MEMORY[0x277D128A8] defaultReuseIdentifier];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"SIRI_PRIVACY_DISCLOSURE_TEXT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Scribe"];

    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"SIRI_PRIVACY_LEARN_MORE_TEXT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Scribe"];

    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://support.apple.com/kb/HT213967"];
    v12 = [objc_alloc(MEMORY[0x277D128A8]) initWithReuseIdentifier:defaultReuseIdentifier bodyText:v8 linkText:v10 link:v11];
    [v12 setTextViewDelegate:self];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isSiriAndDeviceCapable
{
  source = [(HKAuthorizationSettingsViewController *)self source];
  if ([source _isSiri])
  {
    v3 = AFDeviceSupportsSiriUOD();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_isTypeEnabledAtIndexPath
{
  v3 = dispatch_group_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 3;
  dispatch_group_enter(v3);
  healthStore = [(WDProfile *)self->_profile healthStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__WDAuthorizationSettingsViewController__isTypeEnabledAtIndexPath__block_invoke;
  v7[3] = &unk_2796E7F88;
  v7[4] = self;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  [healthStore getAllHealthDataAccessForSiriWithCompletion:v7];

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = (v11[3] - 4) < 0xFFFFFFFFFFFFFFFELL;

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __66__WDAuthorizationSettingsViewController__isTypeEnabledAtIndexPath__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__WDAuthorizationSettingsViewController__isTypeEnabledAtIndexPath__block_invoke_cold_1(a1, v5, v6);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
  if ([(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable]&& v7 == 2)
  {
    v8 = *MEMORY[0x277D76F30];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WDAuthorizationSettingsViewController;
    [(HKAuthorizationSettingsViewController *)&v11 tableView:viewCopy heightForFooterInSection:section];
    v8 = v9;
  }

  return v8;
}

void __70__WDAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__WDAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (id)specialCellWithIdentifier:(id)identifier textLabelText:(id)text
{
  identifierCopy = identifier;
  textCopy = text;
  tableView = [(OBTableWelcomeController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:identifierCopy];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:identifierCopy];
  }

  [v9 setPreservesSuperviewLayoutMargins:0];
  textLabel = [v9 textLabel];
  [textLabel setText:textCopy];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [pathCopy section]) == 5)
  {
    v8 = objc_alloc_init(WDSourceStoredDataViewController);
    source = [(HKAuthorizationSettingsViewController *)self source];
    [(WDSourceStoredDataViewController *)v8 setSource:source];

    profile = [(WDAuthorizationSettingsViewController *)self profile];
    [(WDStoredDataByCategoryViewController *)v8 setProfile:profile];

    v11 = objc_alloc_init(MEMORY[0x277D751E0]);
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setBackBarButtonItem:v11];

    navigationController = [(WDAuthorizationSettingsViewController *)self navigationController];
    [navigationController hk_showViewController:v8 animated:1];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = WDAuthorizationSettingsViewController;
    [(HKAuthorizationSettingsViewController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

void __66__WDAuthorizationSettingsViewController__isTypeEnabledAtIndexPath__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_251E85000, a2, a3, "%{public}@: Unable to get the authorization status for Siri %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __70__WDAuthorizationSettingsViewController_switchCellValueChanged_value___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_251E85000, a2, a3, "Failed to update authorization status for Siri: %@ with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end