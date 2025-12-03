@interface WDAtrialFibrillationInternalSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (WDAtrialFibrillationInternalSettingsViewController)initWithHealthStore:(id)store;
- (id)_buttonCellForTableView:(id)view text:(id)text;
- (id)_featureAvailabilityStatusString;
- (id)_featureAvailabilityStringForFeatureName:(id)name onboardedCountryCodeSupportedState:(id)state;
- (id)makeFeatureStateViewControllerForFeatureIdentifier:(id)identifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addNewSample;
- (void)_deleteAllNotifications;
- (void)_deleteAllNotificationsAndTachograms;
- (void)_fakeNewAnalyzedSample;
- (void)_resetOnboarding;
- (void)_showFeatureStateViewControllerForFeatureIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WDAtrialFibrillationInternalSettingsViewController

- (WDAtrialFibrillationInternalSettingsViewController)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = WDAtrialFibrillationInternalSettingsViewController;
  v6 = [(WDAtrialFibrillationInternalSettingsViewController *)&v13 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCD570]);
    v9 = [v8 initWithCategory:0 domainName:*MEMORY[0x277CCE460] healthStore:storeCopy];
    keyValueDomain = v7->_keyValueDomain;
    v7->_keyValueDomain = v9;

    sections = v7->_sections;
    v7->_sections = &unk_28642DF48;
  }

  return v7;
}

- (id)makeFeatureStateViewControllerForFeatureIdentifier:(id)identifier
{
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);

  return v3;
}

- (void)_showFeatureStateViewControllerForFeatureIdentifier:(id)identifier
{
  v4 = [(WDAtrialFibrillationInternalSettingsViewController *)self makeFeatureStateViewControllerForFeatureIdentifier:identifier];
  [(WDAtrialFibrillationInternalSettingsViewController *)self showViewController:v4 sender:self];
}

- (id)_buttonCellForTableView:(id)view text:(id)text
{
  textCopy = text;
  v6 = [view dequeueReusableCellWithIdentifier:@"ButtonCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
    hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
    textLabel = [v6 textLabel];
    [textLabel setTextColor:hk_appKeyColor];
  }

  textLabel2 = [v6 textLabel];
  [textLabel2 setText:textCopy];

  return v6;
}

- (void)_resetOnboarding
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v13 = objc_opt_class();
    v5 = v13;
    _os_log_impl(&dword_251E85000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting onboarding", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CCD438]);
  v7 = *MEMORY[0x277CCC070];
  healthStore = [(WDAtrialFibrillationInternalSettingsViewController *)self healthStore];
  v9 = [v6 initWithFeatureIdentifier:v7 healthStore:healthStore];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke;
  v11[3] = &unk_2796E6CC8;
  v11[4] = self;
  [v9 resetOnboardingWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_cold_1(a1, v6);
    }
  }

  v7 = [*(a1 + 32) keyValueDomain];
  v8 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCE4A0]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_303;
  v10[3] = &unk_2796E6CC8;
  v10[4] = *(a1 + 32);
  [v7 removeValuesForKeys:v8 completion:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_305;
  v9[3] = &unk_2796E6D18;
  v9[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_303(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_303_cold_1(a1, v6);
    }
  }
}

void __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_305(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)_deleteAllNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v13 = objc_opt_class();
    v5 = v13;
    _os_log_impl(&dword_251E85000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting all notifications", buf, 0xCu);
  }

  [(WDAtrialFibrillationInternalSettingsViewController *)self setDeletingSamples:1];
  healthStore = [(WDAtrialFibrillationInternalSettingsViewController *)self healthStore];
  atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v11 = atrialFibrillationEventType;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotifications__block_invoke;
  v10[3] = &unk_2796E6CC8;
  v10[4] = self;
  [healthStore deleteAllSamplesWithTypes:v8 sourceBundleIdentifier:0 options:2 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __77__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotifications__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __77__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotifications__block_invoke_cold_1(a1, v6);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotifications__block_invoke_309;
  block[3] = &unk_2796E6D18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_deleteAllNotificationsAndTachograms
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v14 = objc_opt_class();
    v5 = v14;
    _os_log_impl(&dword_251E85000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting all atrial fibrillation event and tachogram samples", buf, 0xCu);
  }

  atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v12[0] = atrialFibrillationEventType;
  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  v12[1] = heartbeatSeriesType;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  [(WDAtrialFibrillationInternalSettingsViewController *)self setDeletingSamples:1];
  healthStore = [(WDAtrialFibrillationInternalSettingsViewController *)self healthStore];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotificationsAndTachograms__block_invoke;
  v11[3] = &unk_2796E6CC8;
  v11[4] = self;
  [healthStore deleteAllSamplesWithTypes:v8 sourceBundleIdentifier:0 options:2 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __90__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotificationsAndTachograms__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __90__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotificationsAndTachograms__block_invoke_cold_1(a1, v6);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotificationsAndTachograms__block_invoke_311;
  block[3] = &unk_2796E6D18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_fakeNewAnalyzedSample
{
  keyValueDomain = [(WDAtrialFibrillationInternalSettingsViewController *)self keyValueDomain];
  date = [MEMORY[0x277CBEAA8] date];
  [keyValueDomain setDate:date forKey:*MEMORY[0x277CCE4A0] completion:&__block_literal_global_4];
}

- (void)_addNewSample
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:0.0];
  v5 = MEMORY[0x277CCD0B0];
  atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  localDevice = [MEMORY[0x277CCD2E8] localDevice];
  v8 = [v5 categorySampleWithType:atrialFibrillationEventType value:0 startDate:v4 endDate:date device:localDevice metadata:MEMORY[0x277CBEC10]];

  healthStore = self->_healthStore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__WDAtrialFibrillationInternalSettingsViewController__addNewSample__block_invoke;
  v11[3] = &unk_2796E7718;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(HKHealthStore *)healthStore saveObject:v10 withCompletion:v11];
}

void __67__WDAtrialFibrillationInternalSettingsViewController__addNewSample__block_invoke(uint64_t a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 UUID];
      v22 = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_251E85000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Saved AFib event with UUID %{public}@", &v22, 0x16u);

LABEL_9:
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2D8];
    v14 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v14)
      {
        v15 = *(a1 + 32);
        v8 = v13;
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [v5 localizedDescription];
        v22 = 138543618;
        v23 = v16;
        v24 = 2114;
        v25 = v18;
        _os_log_impl(&dword_251E85000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to save AFib event with error: %{public}@", &v22, 0x16u);

        goto LABEL_9;
      }
    }

    else if (v14)
    {
      v19 = *(a1 + 32);
      v8 = v13;
      v22 = 138543362;
      v23 = objc_opt_class();
      v20 = v23;
      _os_log_impl(&dword_251E85000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to save AFib event", &v22, 0xCu);

      goto LABEL_9;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_featureAvailabilityStatusString
{
  v3 = objc_alloc(MEMORY[0x277CCD438]);
  v4 = *MEMORY[0x277CCC070];
  healthStore = [(WDAtrialFibrillationInternalSettingsViewController *)self healthStore];
  v6 = [v3 initWithFeatureIdentifier:v4 healthStore:healthStore];

  v32 = 0;
  v7 = [v6 onboardedCountryCodeSupportedStateWithError:&v32];
  v8 = v32;
  v9 = objc_alloc(MEMORY[0x277CCD438]);
  v10 = *MEMORY[0x277CCC078];
  healthStore2 = [(WDAtrialFibrillationInternalSettingsViewController *)self healthStore];
  v12 = [v9 initWithFeatureIdentifier:v10 healthStore:healthStore2];

  v31 = v8;
  v13 = [v12 onboardedCountryCodeSupportedStateWithError:&v31];
  v14 = v31;

  v15 = objc_alloc(MEMORY[0x277CCD438]);
  v16 = *MEMORY[0x277CCC080];
  healthStore3 = [(WDAtrialFibrillationInternalSettingsViewController *)self healthStore];
  v18 = [v15 initWithFeatureIdentifier:v16 healthStore:healthStore3];

  v30 = v14;
  v19 = [v18 onboardedCountryCodeSupportedStateWithError:&v30];
  v20 = v30;

  if (v20)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error determining feature state: %@", v20];
  }

  else
  {
    v22 = [(WDAtrialFibrillationInternalSettingsViewController *)self _featureAvailabilityStringForFeatureName:@"IRN (Combined)" onboardedCountryCodeSupportedState:v7];
    v23 = [(WDAtrialFibrillationInternalSettingsViewController *)self _featureAvailabilityStringForFeatureName:@"IRN 1.0" onboardedCountryCodeSupportedState:v13];
    [(WDAtrialFibrillationInternalSettingsViewController *)self _featureAvailabilityStringForFeatureName:@"IRN 2.0" onboardedCountryCodeSupportedState:v19];
    v29 = v12;
    v24 = v13;
    v25 = v6;
    v27 = v26 = v7;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@\n%@", v22, v23, v27];

    v7 = v26;
    v6 = v25;
    v13 = v24;
    v12 = v29;
  }

  return v21;
}

- (id)_featureAvailabilityStringForFeatureName:(id)name onboardedCountryCodeSupportedState:(id)state
{
  if (state)
  {
    nameCopy = name;
    [state integerValue];
    nameCopy2 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
    v7 = MEMORY[0x277CCACA8];
    lowercaseString = [nameCopy2 lowercaseString];
    nameCopy2 = [v7 stringWithFormat:@"%@ is %@.", nameCopy, lowercaseString];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    nameCopy2 = name;
    nameCopy2 = [v10 stringWithFormat:@"%@: Unknown state.", nameCopy2];
  }

  return nameCopy2;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];

  v6 = 3;
  if (integerValue != 1)
  {
    v6 = 0;
  }

  if (integerValue)
  {
    return v6;
  }

  else
  {
    return 5;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v8 integerValue];

  if (integerValue == 1)
  {
    goto LABEL_11;
  }

  if (integerValue)
  {
    goto LABEL_15;
  }

  v10 = [pathCopy row];
  if (v10 <= 1)
  {
    if (!v10)
    {
      v11 = @"Reset Onboarding";
      goto LABEL_21;
    }

    if (v10 == 1)
    {
      v11 = @"Delete All IRN Samples";
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (v10 == 2)
  {
    v11 = @"Delete All IRN and Tachogram Samples";
    goto LABEL_21;
  }

  if (v10 == 3)
  {
    v11 = @"Analyze New Sample";
    goto LABEL_21;
  }

  if (v10 != 4)
  {
LABEL_11:
    v12 = [pathCopy row];
    switch(v12)
    {
      case 2:
        v11 = @"IRN 2.0 Feature State";
        goto LABEL_21;
      case 1:
        v11 = @"IRN 1.0 Feature State";
        goto LABEL_21;
      case 0:
        v11 = @"IRN (Combined) Feature State";
        goto LABEL_21;
    }

LABEL_15:
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = HKErrorTableViewCell();

    goto LABEL_22;
  }

  v11 = @"Add New Sample";
LABEL_21:
  v15 = [(WDAtrialFibrillationInternalSettingsViewController *)self _buttonCellForTableView:viewCopy text:v11];
LABEL_22:

  return v15;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] != 1)
  {
    v7 = [pathCopy row];
    LOBYTE(v6) = 1;
    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_12;
      }

      if (v7 != 1)
      {
        goto LABEL_11;
      }
    }

    else if (v7 != 2 && v7 != 3)
    {
      if (v7 == 4)
      {
        goto LABEL_12;
      }

LABEL_11:
      LOBYTE(v6) = 0;
      goto LABEL_12;
    }

    v6 = ![(WDAtrialFibrillationInternalSettingsViewController *)self deletingSamples];
    goto LABEL_12;
  }

  LOBYTE(v6) = 1;
LABEL_12:

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(WDAtrialFibrillationInternalSettingsViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  v6 = -[NSArray objectAtIndexedSubscript:](self->_sections, "objectAtIndexedSubscript:", [pathCopy section]);
  integerValue = [v6 integerValue];

  if (integerValue == 1)
  {
    v9 = [pathCopy row];
    if (v9 == 2)
    {
      v10 = MEMORY[0x277CCC080];
    }

    else if (v9 == 1)
    {
      v10 = MEMORY[0x277CCC078];
    }

    else
    {
      if (v9)
      {
        goto LABEL_18;
      }

      v10 = MEMORY[0x277CCC070];
    }

    [(WDAtrialFibrillationInternalSettingsViewController *)self _showFeatureStateViewControllerForFeatureIdentifier:*v10];
  }

  else if (!integerValue)
  {
    v8 = [pathCopy row];
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          [(WDAtrialFibrillationInternalSettingsViewController *)self _deleteAllNotifications];
        }
      }

      else
      {
        [(WDAtrialFibrillationInternalSettingsViewController *)self _resetOnboarding];
      }
    }

    else
    {
      switch(v8)
      {
        case 2:
          [(WDAtrialFibrillationInternalSettingsViewController *)self _deleteAllNotificationsAndTachograms];
          break;
        case 3:
          [(WDAtrialFibrillationInternalSettingsViewController *)self _fakeNewAnalyzedSample];
          break;
        case 4:
          [(WDAtrialFibrillationInternalSettingsViewController *)self _addNewSample];
          break;
      }
    }
  }

LABEL_18:
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    _featureAvailabilityStatusString = [(WDAtrialFibrillationInternalSettingsViewController *)self _featureAvailabilityStatusString];
  }

  else
  {
    _featureAvailabilityStatusString = 0;
  }

  return _featureAvailabilityStatusString;
}

void __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_251E85000, v6, v7, "%{public}@: Error resetting IRN onboarding: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __70__WDAtrialFibrillationInternalSettingsViewController__resetOnboarding__block_invoke_303_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_251E85000, v6, v7, "%{public}@: Error deleting last analyzed sample date: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __77__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotifications__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_251E85000, v6, v7, "%{public}@: Error deleting atrial fibrillation event samples: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __90__WDAtrialFibrillationInternalSettingsViewController__deleteAllNotificationsAndTachograms__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  OUTLINED_FUNCTION_1(&dword_251E85000, v6, v7, "%{public}@: Error deleting atrial fibrillation event and tachogram samples: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end