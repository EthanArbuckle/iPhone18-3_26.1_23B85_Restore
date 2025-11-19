@interface WDAuthorizationSettingsViewController
- (BOOL)_isSiriAndDeviceCapable;
- (BOOL)_isTypeEnabledAtIndexPath;
- (WDAuthorizationSettingsViewController)initWithProfile:(id)a3 style:(int64_t)a4 source:(id)a5 shareDescription:(id)a6 updateDescription:(id)a7 researchStudyUsageDescription:(id)a8;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)sectionsForAuthController:(id)a3;
- (id)specialCellWithIdentifier:(id)a3 textLabelText:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WDAuthorizationSettingsViewController

- (WDAuthorizationSettingsViewController)initWithProfile:(id)a3 style:(int64_t)a4 source:(id)a5 shareDescription:(id)a6 updateDescription:(id)a7 researchStudyUsageDescription:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = [v14 healthStore];
  v23.receiver = self;
  v23.super_class = WDAuthorizationSettingsViewController;
  v20 = [(HKAuthorizationSettingsViewController *)&v23 initWithHealthStore:v19 style:a4 source:v18 typesToShare:0 typesToRead:0 shareDescription:v17 updateDescription:v16 researchStudyUsageDescription:v15];

  if (v20)
  {
    [(WDAuthorizationSettingsViewController *)v20 setProfile:v14];
    [(HKAuthorizationSettingsViewController *)v20 sourceConfigure];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v20 selector:sel__applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v20;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = WDAuthorizationSettingsViewController;
  [(HKAuthorizationSettingsViewController *)&v2 viewDidLoad];
}

- (id)sectionsForAuthController:(id)a3
{
  v10.receiver = self;
  v10.super_class = WDAuthorizationSettingsViewController;
  v4 = [(HKAuthorizationSettingsViewController *)&v10 sectionsForAuthController:a3];
  v5 = [v4 mutableCopy];

  v6 = [(WDAuthorizationSettingsViewController *)self profile];
  v7 = [v6 presentationContext];

  if (v7 != @"SettingsPrivacy")
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
  v8 = 0;
  if (v7 && v7 != 5)
  {
    v10.receiver = self;
    v10.super_class = WDAuthorizationSettingsViewController;
    v8 = [(HKAuthorizationSettingsViewController *)&v10 tableView:v6 titleForHeaderInSection:a4];
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
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
      v8 = [(HKAuthorizationSettingsViewController *)&v10 tableView:v6 numberOfRowsInSection:a4];
    }
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [v7 section]);
  if (v8 == 5)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"VIEW_ALL_DATA_FROM_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
    v12 = [(HKAuthorizationSettingsViewController *)self source];
    v13 = [v12 name];
    v14 = [v9 stringWithFormat:v11, v13];

    v15 = [(WDAuthorizationSettingsViewController *)self specialCellWithIdentifier:@"WDAuthorizationSettingsViewAllData" textLabelText:v14];
    [v15 setAccessoryType:1];
  }

  else
  {
    v16 = v8;
    v17 = [(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable];
    if (v16 == 2 && v17)
    {
      v18 = [(WDAuthorizationSettingsViewController *)self _isTypeEnabledAtIndexPath];
      v19 = [(OBTableWelcomeController *)self tableView];
      v15 = [v19 dequeueReusableCellWithIdentifier:@"ToggleAllCell"];

      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x277D12AE8]) initWithStyle:0 reuseIdentifier:@"ToggleAllCell"];
        [v15 setDelegate:self];
      }

      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v21 = [v20 localizedStringForKey:@"SIRI_ACCESS_DATA_BUTTON" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Scribe"];
      v22 = [v15 textLabel];
      [v22 setText:v21];

      [v15 setOn:v18];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = WDAuthorizationSettingsViewController;
      v15 = [(HKAuthorizationSettingsViewController *)&v24 tableView:v6 cellForRowAtIndexPath:v7];
    }
  }

  return v15;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable]&& [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4]== 2)
  {
    v6 = [MEMORY[0x277D128A8] defaultReuseIdentifier];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"SIRI_PRIVACY_DISCLOSURE_TEXT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Scribe"];

    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"SIRI_PRIVACY_LEARN_MORE_TEXT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Scribe"];

    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://support.apple.com/kb/HT213967"];
    v12 = [objc_alloc(MEMORY[0x277D128A8]) initWithReuseIdentifier:v6 bodyText:v8 linkText:v10 link:v11];
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
  v2 = [(HKAuthorizationSettingsViewController *)self source];
  if ([v2 _isSiri])
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
  v4 = [(WDProfile *)self->_profile healthStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__WDAuthorizationSettingsViewController__isTypeEnabledAtIndexPath__block_invoke;
  v7[3] = &unk_2796E7F88;
  v7[4] = self;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  [v4 getAllHealthDataAccessForSiriWithCompletion:v7];

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

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
  if ([(WDAuthorizationSettingsViewController *)self _isSiriAndDeviceCapable]&& v7 == 2)
  {
    v8 = *MEMORY[0x277D76F30];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WDAuthorizationSettingsViewController;
    [(HKAuthorizationSettingsViewController *)&v11 tableView:v6 heightForFooterInSection:a4];
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

- (id)specialCellWithIdentifier:(id)a3 textLabelText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(OBTableWelcomeController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:v6];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v6];
  }

  [v9 setPreservesSuperviewLayoutMargins:0];
  v10 = [v9 textLabel];
  [v10 setText:v7];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [v7 section]) == 5)
  {
    v8 = objc_alloc_init(WDSourceStoredDataViewController);
    v9 = [(HKAuthorizationSettingsViewController *)self source];
    [(WDSourceStoredDataViewController *)v8 setSource:v9];

    v10 = [(WDAuthorizationSettingsViewController *)self profile];
    [(WDStoredDataByCategoryViewController *)v8 setProfile:v10];

    v11 = objc_alloc_init(MEMORY[0x277D751E0]);
    v12 = [(OBBaseWelcomeController *)self navigationItem];
    [v12 setBackBarButtonItem:v11];

    v13 = [(WDAuthorizationSettingsViewController *)self navigationController];
    [v13 hk_showViewController:v8 animated:1];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = WDAuthorizationSettingsViewController;
    [(HKAuthorizationSettingsViewController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
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