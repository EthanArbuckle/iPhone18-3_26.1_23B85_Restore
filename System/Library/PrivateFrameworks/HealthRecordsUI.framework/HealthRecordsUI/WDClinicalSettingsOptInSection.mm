@interface WDClinicalSettingsOptInSection
- (id)_optInCellForTableView:(id)view;
- (id)_viewDataCellForTableView:(id)view;
- (id)cellForRow:(unint64_t)row table:(id)table;
- (void)_fetchOptInStatus;
- (void)_handleOptInSwitchChanged:(id)changed;
- (void)_setOptInStatus:(BOOL)status;
- (void)applicationWillEnterForeground;
- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WDClinicalSettingsOptInSection

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WDClinicalSettingsOptInSection;
  [(HRWDTableViewSection *)&v4 viewWillAppear:appear];
  [(WDClinicalSettingsOptInSection *)self _fetchOptInStatus];
}

- (void)applicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = WDClinicalSettingsOptInSection;
  [(HRWDTableViewSection *)&v3 applicationWillEnterForeground];
  [(WDClinicalSettingsOptInSection *)self _fetchOptInStatus];
}

- (id)cellForRow:(unint64_t)row table:(id)table
{
  if (row == 1)
  {
    [(WDClinicalSettingsOptInSection *)self _viewDataCellForTableView:table];
  }

  else
  {
    [(WDClinicalSettingsOptInSection *)self _optInCellForTableView:table];
  }
  v4 = ;

  return v4;
}

- (id)_viewDataCellForTableView:(id)view
{
  viewCopy = view;
  v4 = +[WDClinicalSettingsViewAnalyticsDataCell defaultReuseIdentifier];
  v5 = [viewCopy dequeueReusableCellWithIdentifier:v4];

  [v5 setViewControllerClass:objc_opt_class()];
  v6 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_VIEW_ANALYTICS_DATA");
  textLabel = [v5 textLabel];
  [textLabel setText:v6];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel2 = [v5 textLabel];
  [textLabel2 setTextColor:labelColor];

  textLabel3 = [v5 textLabel];
  [textLabel3 setTextAlignment:4];

  [v5 setAccessoryType:1];

  return v5;
}

- (id)_optInCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"_OptInCell"];
  v5 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_OPT_IN_SWITCH_TITLE");
  textLabel = [v4 textLabel];
  [textLabel setText:v5];

  [v4 setSelectionStyle:0];
  v7 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [v7 setOn:-[WDClinicalSettingsOptInSection optIn](self animated:{"optIn"), 0}];
  [v7 addTarget:self action:sel__handleOptInSwitchChanged_ forControlEvents:4096];
  [v4 setAccessoryView:v7];

  return v4;
}

- (void)didSelectRow:(unint64_t)row representedByCell:(id)cell withCompletion:(id)completion
{
  cellCopy = cell;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllerClass = [cellCopy viewControllerClass];
    if (viewControllerClass)
    {
      v9 = objc_alloc_init(viewControllerClass);
      if (v9)
      {
        v10 = v9;
        delegate = [(HRWDTableViewSection *)self delegate];
        profile = [delegate profile];
        healthRecordsStore = [profile healthRecordsStore];
        [v10 setHealthRecordsStore:healthRecordsStore];

        delegate2 = [(HRWDTableViewSection *)self delegate];
        [delegate2 pushViewController:v10];
      }
    }
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)_handleOptInSwitchChanged:(id)changed
{
  isOn = [changed isOn];

  [(WDClinicalSettingsOptInSection *)self _setOptInStatus:isOn];
}

- (void)_fetchOptInStatus
{
  delegate = [(HRWDTableViewSection *)self delegate];
  profile = [delegate profile];
  healthRecordsStore = [profile healthRecordsStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__WDClinicalSettingsOptInSection__fetchOptInStatus__block_invoke;
  v6[3] = &unk_1E83DD3C8;
  v6[4] = self;
  [healthRecordsStore fetchUserHasAgreedToHealthRecordsDataSubmissionWithCompletion:v6];
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

- (void)_setOptInStatus:(BOOL)status
{
  v3 = *MEMORY[0x1E69A2D60];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__WDClinicalSettingsOptInSection__setOptInStatus___block_invoke;
  v4[3] = &unk_1E83DD3F0;
  v4[4] = self;
  statusCopy = status;
  [MEMORY[0x1E69A2D70] setUserDidAccept:status currentAgreement:v3 completion:v4];
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