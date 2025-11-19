@interface WDClinicalSettingsOptInSection
- (id)_optInCellForTableView:(id)a3;
- (id)_viewDataCellForTableView:(id)a3;
- (id)cellForRow:(unint64_t)a3 table:(id)a4;
- (void)_fetchOptInStatus;
- (void)_handleOptInSwitchChanged:(id)a3;
- (void)_setOptInStatus:(BOOL)a3;
- (void)applicationWillEnterForeground;
- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WDClinicalSettingsOptInSection

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WDClinicalSettingsOptInSection;
  [(HRWDTableViewSection *)&v4 viewWillAppear:a3];
  [(WDClinicalSettingsOptInSection *)self _fetchOptInStatus];
}

- (void)applicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = WDClinicalSettingsOptInSection;
  [(HRWDTableViewSection *)&v3 applicationWillEnterForeground];
  [(WDClinicalSettingsOptInSection *)self _fetchOptInStatus];
}

- (id)cellForRow:(unint64_t)a3 table:(id)a4
{
  if (a3 == 1)
  {
    [(WDClinicalSettingsOptInSection *)self _viewDataCellForTableView:a4];
  }

  else
  {
    [(WDClinicalSettingsOptInSection *)self _optInCellForTableView:a4];
  }
  v4 = ;

  return v4;
}

- (id)_viewDataCellForTableView:(id)a3
{
  v3 = a3;
  v4 = +[WDClinicalSettingsViewAnalyticsDataCell defaultReuseIdentifier];
  v5 = [v3 dequeueReusableCellWithIdentifier:v4];

  [v5 setViewControllerClass:objc_opt_class()];
  v6 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_VIEW_ANALYTICS_DATA");
  v7 = [v5 textLabel];
  [v7 setText:v6];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  v9 = [v5 textLabel];
  [v9 setTextColor:v8];

  v10 = [v5 textLabel];
  [v10 setTextAlignment:4];

  [v5 setAccessoryType:1];

  return v5;
}

- (id)_optInCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"_OptInCell"];
  v5 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_OPT_IN_SWITCH_TITLE");
  v6 = [v4 textLabel];
  [v6 setText:v5];

  [v4 setSelectionStyle:0];
  v7 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [v7 setOn:-[WDClinicalSettingsOptInSection optIn](self animated:{"optIn"), 0}];
  [v7 addTarget:self action:sel__handleOptInSwitchChanged_ forControlEvents:4096];
  [v4 setAccessoryView:v7];

  return v4;
}

- (void)didSelectRow:(unint64_t)a3 representedByCell:(id)a4 withCompletion:(id)a5
{
  v15 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v15 viewControllerClass];
    if (v8)
    {
      v9 = objc_alloc_init(v8);
      if (v9)
      {
        v10 = v9;
        v11 = [(HRWDTableViewSection *)self delegate];
        v12 = [v11 profile];
        v13 = [v12 healthRecordsStore];
        [v10 setHealthRecordsStore:v13];

        v14 = [(HRWDTableViewSection *)self delegate];
        [v14 pushViewController:v10];
      }
    }
  }

  v7[2](v7, 1, 0);
}

- (void)_handleOptInSwitchChanged:(id)a3
{
  v4 = [a3 isOn];

  [(WDClinicalSettingsOptInSection *)self _setOptInStatus:v4];
}

- (void)_fetchOptInStatus
{
  v3 = [(HRWDTableViewSection *)self delegate];
  v4 = [v3 profile];
  v5 = [v4 healthRecordsStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke;
  v6[3] = &unk_1E83DD3C8;
  v6[4] = self;
  [v5 fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:v6];
}

void __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke_cold_1(a1, v6, v7);
    }
  }

  v8 = [MEMORY[0x1E696ADC8] mainQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke_346;
  v10[3] = &unk_1E83DD1A8;
  v10[4] = *(a1 + 32);
  v11 = v5;
  v9 = v5;
  [v8 addOperationWithBlock:v10];
}

void __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke_346(uint64_t a1)
{
  *(*(a1 + 32) + 24) = [*(a1 + 40) BOOLValue];
  v2 = [*(a1 + 32) delegate];
  [v2 reloadTable];
}

- (void)_setOptInStatus:(BOOL)a3
{
  v3 = *MEMORY[0x1E69A2D60];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__WDClinicalSettingsOptInSection__setOptInStatus___block_invoke;
  v4[3] = &unk_1E83DD3F0;
  v4[4] = self;
  v5 = a3;
  [MEMORY[0x1E69A2D70] setUserDidAccept:a3 currentAgreement:v3 completion:v4];
}

void __50__WDClinicalSettingsOptInSection__setOptInStatus___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWellnessDashboard();
  v7 = v6;
  if (!a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__WDClinicalSettingsOptInSection__setOptInStatus___block_invoke_cold_1(a1, v5, v7);
    }

    goto LABEL_7;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = HKStringFromBool();
      v11 = HKSensitiveLogItem();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1D101F000, v7, OS_LOG_TYPE_INFO, "%{public}@: Successfully saved opt-in status %@", &v12, 0x16u);
    }

LABEL_7:
  }
}

void __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1D101F000, log, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching opt in status: %{public}@", &v4, 0x16u);
}

void __50__WDClinicalSettingsOptInSection__setOptInStatus___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = HKStringFromBool();
  v7 = HKSensitiveLogItem();
  v8 = 138543874;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  v12 = 2114;
  v13 = a2;
  _os_log_error_impl(&dword_1D101F000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error saving opt-in status %@: %{public}@", &v8, 0x20u);
}

@end