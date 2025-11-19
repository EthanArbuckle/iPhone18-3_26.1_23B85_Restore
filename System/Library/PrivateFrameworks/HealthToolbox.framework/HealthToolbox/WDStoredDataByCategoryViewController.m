@interface WDStoredDataByCategoryViewController
- (BOOL)shouldShowDeleteAllDataButton;
- (NSPredicate)storedDataPredicate;
- (NSString)storedDataDisplayName;
- (UIFont)bodyFont;
- (id)_makeDataListViewControllerForDisplayType:(id)a3;
- (id)reduceCategoriesForCapturedSampleTypes:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_displayGuestModeAlertWithCompletion:(id)a3;
- (void)_displayTypeStringsChanged:(id)a3;
- (void)deleteAllStoredData;
- (void)fetchEnabledStatusForPeripheral;
- (void)handleSamplesQueryResults:(id)a3;
- (void)presentDeleteConfirmationFromSender:(id)a3;
- (void)selectSourceStoredDataTableViewCell:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDStoredDataByCategoryViewController

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = WDStoredDataByCategoryViewController;
  [(HKTableViewController *)&v25 viewDidLoad];
  v3 = [(WDStoredDataByCategoryViewController *)self storedDataDisplayName];
  [(WDStoredDataByCategoryViewController *)self setTitle:v3];

  v4 = [(WDStoredDataByCategoryViewController *)self bodyFont];
  [v4 _scaledValueForValue:*MEMORY[0x277D12780]];
  v6 = v5;

  v7 = [(WDStoredDataByCategoryViewController *)self tableView];
  [v7 setEstimatedRowHeight:v6];

  v8 = [(WDStoredDataByCategoryViewController *)self tableView];
  [v8 setEstimatedSectionHeaderHeight:v6];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CCD4D0]);
  v10 = [(WDStoredDataByCategoryViewController *)self profile];
  v11 = [v10 healthStore];
  v12 = [v9 initWithHealthStore:v11];
  healthServicesManager = self->_healthServicesManager;
  self->_healthServicesManager = v12;

  v14 = objc_alloc(MEMORY[0x277CCDE40]);
  v15 = [(WDStoredDataByCategoryViewController *)self storedDataPredicate];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke;
  v22 = &unk_2796E7EE8;
  objc_copyWeak(&v23, &location);
  v16 = [v14 initWithPredicate:v15 resultsHandler:&v19];

  v17 = [(WDStoredDataByCategoryViewController *)self profile:v19];
  v18 = [v17 healthStore];
  [v18 executeQuery:v16];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_2796E7EC0;
  v11 = v7;
  v8 = v7;
  objc_copyWeak(&v13, (a1 + 32));
  v12 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
}

void __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke_2_cold_1(v1, v2);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained handleSamplesQueryResults:*(a1 + 40)];
  }
}

- (void)_displayTypeStringsChanged:(id)a3
{
  v3 = [(WDStoredDataByCategoryViewController *)self tableView];
  [v3 reloadData];
}

- (void)handleSamplesQueryResults:(id)a3
{
  [(WDStoredDataByCategoryViewController *)self setCapturedSampleTypes:a3];
  v4 = [(WDStoredDataByCategoryViewController *)self capturedSampleTypes];
  v5 = [(WDStoredDataByCategoryViewController *)self reduceCategoriesForCapturedSampleTypes:v4];
  [(WDStoredDataByCategoryViewController *)self setSavedCategories:v5];

  [(WDStoredDataByCategoryViewController *)self setQueryReturned:1];
  v6 = [(WDStoredDataByCategoryViewController *)self tableView];
  [v6 reloadData];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDStoredDataByCategoryViewController;
  [(WDStoredDataByCategoryViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDStoredDataByCategoryViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      bodyFont = self->_bodyFont;
      self->_bodyFont = 0;
    }
  }
}

- (id)reduceCategoriesForCapturedSampleTypes:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [MEMORY[0x277D12828] sortedCategories];
  v36 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v36)
  {
    v34 = *v57;
    v38 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v4;
        v5 = *(*(&v56 + 1) + 8 * v4);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v6 = MEMORY[0x277D12840];
        v7 = [(WDStoredDataByCategoryViewController *)self profile];
        v8 = [v7 healthStore];
        v9 = [v6 sharedInstanceForHealthStore:v8];
        v10 = [v9 displayTypesForCategoryIdentifier:{objc_msgSend(v5, "categoryID")}];

        v40 = v10;
        v42 = [v10 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v42)
        {
          v11 = *v53;
          v39 = *v53;
          do
          {
            v12 = 0;
            do
            {
              if (*v53 != v11)
              {
                objc_enumerationMutation(v40);
              }

              v43 = v12;
              v13 = *(*(&v52 + 1) + 8 * v12);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v14 = v3;
              v15 = [v14 countByEnumeratingWithState:&v48 objects:v61 count:16];
              if (!v15)
              {
                goto LABEL_34;
              }

              v16 = v15;
              v17 = *v49;
              while (2)
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v49 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v48 + 1) + 8 * i);
                  v20 = [v13 sampleType];

                  if (v19 == v20)
                  {
                    v46 = 0u;
                    v47 = 0u;
                    v44 = 0u;
                    v45 = 0u;
                    v21 = v41;
                    v22 = [v21 countByEnumeratingWithState:&v44 objects:v60 count:16];
                    if (v22)
                    {
                      v23 = v22;
                      v24 = 0;
                      v25 = *v45;
                      do
                      {
                        for (j = 0; j != v23; ++j)
                        {
                          if (*v45 != v25)
                          {
                            objc_enumerationMutation(v21);
                          }

                          v27 = *(*(&v44 + 1) + 8 * j);
                          v28 = [v27 category];

                          if (v28 == v5)
                          {
                            v29 = v27;

                            v24 = v29;
                          }
                        }

                        v23 = [v21 countByEnumeratingWithState:&v44 objects:v60 count:16];
                      }

                      while (v23);

                      v3 = v38;
                      v11 = v39;
                      if (!v24)
                      {
LABEL_32:
                        v24 = objc_alloc_init(WDStoredDataCategory);
                        [(WDStoredDataCategory *)v24 setCategory:v5];
                        [v21 addObject:v24];
                      }

                      v30 = [(WDStoredDataCategory *)v24 displayTypes];
                      [v30 addObject:v13];

                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v48 objects:v61 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }

LABEL_34:

              v12 = v43 + 1;
            }

            while (v43 + 1 != v42);
            v42 = [v40 countByEnumeratingWithState:&v52 objects:v62 count:16];
          }

          while (v42);
        }

        v4 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v36);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)presentDeleteConfirmationFromSender:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA8D8];
  v21 = a3;
  v7 = [v6 bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"PERMENANTLY_DELETE_ALL_DATA_FROM_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v9 = [(WDStoredDataByCategoryViewController *)self storedDataDisplayName];
  v10 = [v5 stringWithFormat:v8, v9];
  v11 = [v4 alertControllerWithTitle:v10 message:0 preferredStyle:0];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"PERMENANTLY_DELETE_ALL_DATA_DELETE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__WDStoredDataByCategoryViewController_presentDeleteConfirmationFromSender___block_invoke;
  v22[3] = &unk_2796E7088;
  v22[4] = self;
  v15 = [v12 actionWithTitle:v14 style:2 handler:v22];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"PERMENANTLY_DELETE_ALL_DATA_CANCEL" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v19 = [v16 actionWithTitle:v18 style:0 handler:0];
  [v11 addAction:v19];

  v20 = [v11 popoverPresentationController];
  [v20 setSourceItem:v21];

  [(WDStoredDataByCategoryViewController *)self presentViewController:v11 animated:1 completion:0];
}

uint64_t __76__WDStoredDataByCategoryViewController_presentDeleteConfirmationFromSender___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 popViewControllerAnimated:1];

  v4 = *(a1 + 32);

  return [v4 deleteAllStoredData];
}

- (UIFont)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (void)fetchEnabledStatusForPeripheral
{
  if ([(WDStoredDataByCategoryViewController *)self isBluetoothDevice])
  {
    healthServicesManager = self->_healthServicesManager;
    deviceIdentifier = self->_deviceIdentifier;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__WDStoredDataByCategoryViewController_fetchEnabledStatusForPeripheral__block_invoke;
    v5[3] = &unk_2796E6CC8;
    v5[4] = self;
    [(HKHealthServicesManager *)healthServicesManager getEnabledStatusForPeripheral:deviceIdentifier withCompletion:v5];
  }
}

void __71__WDStoredDataByCategoryViewController_fetchEnabledStatusForPeripheral__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __71__WDStoredDataByCategoryViewController_fetchEnabledStatusForPeripheral__block_invoke_cold_1(v5, v6);
    }
  }

  if (v5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 1;
  }

  *(*(a1 + 32) + 1057) = v7;
  *(*(a1 + 32) + 1056) = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WDStoredDataByCategoryViewController_fetchEnabledStatusForPeripheral__block_invoke_367;
  block[3] = &unk_2796E6D18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__WDStoredDataByCategoryViewController_fetchEnabledStatusForPeripheral__block_invoke_367(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (![(WDStoredDataByCategoryViewController *)self queryReturned]&& [(WDStoredDataByCategoryViewController *)self isBluetoothDevice])
  {
    return 2;
  }

  if (![(WDStoredDataByCategoryViewController *)self queryReturned])
  {
    return 1;
  }

  v5 = [(WDStoredDataByCategoryViewController *)self savedCategories];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(WDStoredDataByCategoryViewController *)self savedCategories];
    v8 = [v7 count];
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 + [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
  return v9 + [(WDStoredDataByCategoryViewController *)self shouldShowDeleteAllDataButton];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
  if (!a4 && v6)
  {
    return 1;
  }

  v7 = [(WDStoredDataByCategoryViewController *)self savedCategories];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    return 1;
  }

  v9 = [(WDStoredDataByCategoryViewController *)self savedCategories];
  v10 = [v9 objectAtIndexedSubscript:a4];
  v11 = [v10 displayTypes];
  v12 = [v11 count];

  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[WDStoredDataByCategoryViewController isBluetoothDevice](self, "isBluetoothDevice") || [v7 section])
  {
    if (-[WDStoredDataByCategoryViewController queryReturned](self, "queryReturned") || (v8 = [v7 section], v8 != -[WDStoredDataByCategoryViewController firstSectionWithData](self, "firstSectionWithData")))
    {
      v10 = [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
      v11 = [v7 section] - v10;
      v12 = [(WDStoredDataByCategoryViewController *)self savedCategories];
      v13 = [v12 count];

      if (v13 > v11)
      {
        v9 = [v6 dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewCell"];
        if (!v9)
        {
          v9 = [[WDStoredDataCategoryTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewCell"];
        }

        v14 = [(WDStoredDataByCategoryViewController *)self bodyFont];
        v15 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [v15 setFont:v14];

        v16 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        LODWORD(v17) = 1055286886;
        [v16 _setHyphenationFactor:v17];

        [(WDStoredDataCategoryTableViewCell *)v9 setAccessoryType:1];
        v18 = [(WDStoredDataByCategoryViewController *)self savedCategories];
        v19 = [v18 objectAtIndexedSubscript:v11];
        v20 = [v19 displayTypes];
        v21 = [v20 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
        [(WDStoredDataCategoryTableViewCell *)v9 setDisplayType:v21];

        goto LABEL_23;
      }

      v22 = [v7 section];
      if (v22 == [(WDStoredDataByCategoryViewController *)self firstSectionWithData])
      {
        v9 = [v6 dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewEmptyCell"];
        if (!v9)
        {
          v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewEmptyCell"];
        }

        [(WDStoredDataCategoryTableViewCell *)v9 setSelectionStyle:0];
        v23 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v24 = [v23 localizedStringForKey:@"NO_DATA_FOUND" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
        v25 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [v25 setText:v24];

        v26 = [MEMORY[0x277D75348] lightGrayColor];
        v27 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [v27 setTextColor:v26];
      }

      else
      {
        v9 = [v6 dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewDeleteAllCell"];
        if (!v9)
        {
          v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewDeleteAllCell"];
        }

        v31 = [MEMORY[0x277D75348] systemRedColor];
        v32 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [v32 setTextColor:v31];

        v33 = MEMORY[0x277CCACA8];
        v34 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v35 = [v34 localizedStringForKey:@"DELETE_ALL_DATA_FOR_SOURCE_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
        v36 = [(WDStoredDataByCategoryViewController *)self storedDataDisplayName];
        v37 = [v33 stringWithFormat:v35, v36];
        v38 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [v38 setText:v37];

        v26 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [v26 setNumberOfLines:0];
      }
    }

    else
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewWaitingCellIdentifier"];
      if (!v9)
      {
        v9 = [[WDSpinnerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewWaitingCellIdentifier"];
      }
    }

    v18 = [(WDStoredDataByCategoryViewController *)self bodyFont];
    v19 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
    [v19 setFont:v18];
LABEL_23:

    goto LABEL_24;
  }

  v28 = [(WDStoredDataByCategoryViewController *)self tableView];
  v9 = [v28 dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewDeviceSourceKillSwitch"];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D12AE8]) initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewDeviceSourceKillSwitch"];
  }

  [(WDStoredDataCategoryTableViewCell *)v9 setDelegate:self];
  [(WDStoredDataCategoryTableViewCell *)v9 setOn:self->_deviceEnabled];
  v29 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v30 = [v29 localizedStringForKey:@"UPDATE_HEALTH_DATA" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  [(WDStoredDataCategoryTableViewCell *)v9 setDisplayText:v30];

  [(WDStoredDataCategoryTableViewCell *)v9 setEnabled:self->_deviceFound];
LABEL_24:

  return v9;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 isOn];
  objc_initWeak(&location, self);
  healthServicesManager = self->_healthServicesManager;
  deviceIdentifier = self->_deviceIdentifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WDStoredDataByCategoryViewController_switchCellValueChanged_value___block_invoke;
  v9[3] = &unk_2796E7F10;
  objc_copyWeak(&v10, &location);
  v11 = v6;
  [(HKHealthServicesManager *)healthServicesManager setEnabledStatus:v6 forPeripheral:deviceIdentifier withCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__WDStoredDataByCategoryViewController_switchCellValueChanged_value___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      *(WeakRetained + 1056) = *(a1 + 40);
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __69__WDStoredDataByCategoryViewController_switchCellValueChanged_value___block_invoke_cold_1(v5, a1, v6);
      }
    }
  }
}

- (void)_displayGuestModeAlertWithCompletion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_DESCRIPTION" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__WDStoredDataByCategoryViewController__displayGuestModeAlertWithCompletion___block_invoke;
  v16[3] = &unk_2796E7E48;
  v17 = v3;
  v13 = v3;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v16];

  [v9 addAction:v14];
  [(WDStoredDataByCategoryViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __77__WDStoredDataByCategoryViewController__displayGuestModeAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(WDStoredDataByCategoryViewController *)self queryReturned])
  {
    v6 = [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
    if (!a4 && v6 || (v7 = a4 - -[WDStoredDataByCategoryViewController isBluetoothDevice](self, "isBluetoothDevice"), -[WDStoredDataByCategoryViewController savedCategories](self, "savedCategories"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 <= v7))
    {
      v13 = 0;
    }

    else
    {
      v10 = [(WDStoredDataByCategoryViewController *)self savedCategories];
      v11 = [v10 objectAtIndexedSubscript:v7];
      v12 = [v11 category];
      v13 = [v12 displayName];
    }
  }

  else
  {
    v13 = @" ";
  }

  return v13;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && objc_msgSend(v6, "numberOfSections") - 1 == a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = self;
      v9 = [(WDStoredDataByCategoryViewController *)v8 source];
LABEL_7:
      v10 = v9;
      v11 = [v9 description];
      [v7 stringWithFormat:@"INTERNAL ONLY: %@, %@, isBluetoothDevice:%d", v8, v11, -[WDStoredDataByCategoryViewController isBluetoothDevice](v8, "isBluetoothDevice")];
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = self;
      v9 = [(WDStoredDataByCategoryViewController *)v8 device];
      goto LABEL_7;
    }
  }

  v12 = 0;
  if ([(WDStoredDataByCategoryViewController *)self isBluetoothDevice]&& !a4)
  {
    if (!self->_deviceFound)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = [v10 localizedStringForKey:@"DEVICE_NOT_PAIRED" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
      goto LABEL_14;
    }

    v13 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:@"ALLOW_DEVICE_DATA_UPDATES" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
    v8 = [(WDStoredDataByCategoryViewController *)self title];
    [v13 stringWithFormat:v11, v8, v15, v16];
    v12 = LABEL_12:;

LABEL_14:
  }

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 cellForRowAtIndexPath:v6];
  v8 = [v7 reuseIdentifier];
  v9 = [v8 isEqualToString:@"WDStoredDataByCategoryTableViewCell"];

  if (v9)
  {
    [(WDStoredDataByCategoryViewController *)self selectSourceStoredDataTableViewCell:v7];
  }

  else
  {
    v10 = [v7 reuseIdentifier];
    v11 = [v10 isEqualToString:@"WDStoredDataByCategoryTableViewDeleteAllCell"];

    if (v11)
    {
      [(WDStoredDataByCategoryViewController *)self presentDeleteConfirmationFromSender:v7];
      [v12 deselectRowAtIndexPath:v6 animated:1];
    }
  }
}

- (void)selectSourceStoredDataTableViewCell:(id)a3
{
  v4 = [a3 displayType];
  v6 = [(WDStoredDataByCategoryViewController *)self _makeDataListViewControllerForDisplayType:v4];

  v5 = [(WDStoredDataByCategoryViewController *)self navigationController];
  [v5 hk_showViewController:v6 animated:1];
}

- (id)_makeDataListViewControllerForDisplayType:(id)a3
{
  v4 = a3;
  v5 = [(WDProfile *)self->_profile healthStore];
  v6 = [(WDStoredDataByCategoryViewController *)self storedDataPredicate];
  v7 = [HBXHealthAppPluginFactory makeDataListViewControllerForHealthStore:v5 displayType:v4 predicate:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(WDStoredDataByCategoryViewController *)self profile];
    v10 = [(WDStoredDataByCategoryViewController *)self profile];
    v11 = [v10 unitController];
    v12 = [v4 presentation];
    v13 = [v4 wd_listViewControllerDataProviderWithProfile:v9 unitController:v11 isHierarchical:{objc_msgSend(v12, "showAppDataHierarchically")}];

    v14 = [(WDStoredDataByCategoryViewController *)self storedDataPredicate];
    [v13 setDefaultQueryPredicate:v14];

    if ([v4 displayTypeIdentifier] == 298 || objc_msgSend(v4, "displayTypeIdentifier") == 304)
    {
      [v13 setShouldDisplayAllSamples:1];
    }

    v15 = [WDDataListViewController alloc];
    v16 = [(WDStoredDataByCategoryViewController *)self profile];
    v8 = [(WDDataListViewController *)v15 initWithDisplayType:v4 profile:v16 dataProvider:v13 usingInsetStyling:1];
  }

  return v8;
}

- (NSPredicate)storedDataPredicate
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  NSRequestConcreteImplementation();
  v2 = objc_alloc_init(MEMORY[0x277CCAC30]);

  return v2;
}

- (NSString)storedDataDisplayName
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  NSRequestConcreteImplementation();
  return &stru_28641D9B8;
}

- (BOOL)shouldShowDeleteAllDataButton
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)deleteAllStoredData
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();

  NSRequestConcreteImplementation();
}

void __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "_HKSampleTypeQuery failed with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __71__WDStoredDataByCategoryViewController_fetchEnabledStatusForPeripheral__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "fetchEnabledStatusForPeripheral getEnabledStatusForPeripheral failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __69__WDStoredDataByCategoryViewController_switchCellValueChanged_value___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [a1 deviceIdentifier];
  v7 = [a1 title];
  v8 = v7;
  v9 = *(a2 + 40);
  v12 = 138543874;
  v13 = v6;
  if (v9)
  {
    v10 = @"ON";
  }

  else
  {
    v10 = @"OFF";
  }

  v14 = 2114;
  v15 = v7;
  v16 = 2114;
  v17 = v10;
  _os_log_error_impl(&dword_251E85000, a3, OS_LOG_TYPE_ERROR, "Could not set the enabled status of device %{public}@, '%{public}@', to %{public}@", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end