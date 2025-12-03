@interface WDStoredDataByCategoryViewController
- (BOOL)shouldShowDeleteAllDataButton;
- (NSPredicate)storedDataPredicate;
- (NSString)storedDataDisplayName;
- (UIFont)bodyFont;
- (id)_makeDataListViewControllerForDisplayType:(id)type;
- (id)reduceCategoriesForCapturedSampleTypes:(id)types;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_displayGuestModeAlertWithCompletion:(id)completion;
- (void)_displayTypeStringsChanged:(id)changed;
- (void)deleteAllStoredData;
- (void)fetchEnabledStatusForPeripheral;
- (void)handleSamplesQueryResults:(id)results;
- (void)presentDeleteConfirmationFromSender:(id)sender;
- (void)selectSourceStoredDataTableViewCell:(id)cell;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation WDStoredDataByCategoryViewController

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = WDStoredDataByCategoryViewController;
  [(HKTableViewController *)&v25 viewDidLoad];
  storedDataDisplayName = [(WDStoredDataByCategoryViewController *)self storedDataDisplayName];
  [(WDStoredDataByCategoryViewController *)self setTitle:storedDataDisplayName];

  bodyFont = [(WDStoredDataByCategoryViewController *)self bodyFont];
  [bodyFont _scaledValueForValue:*MEMORY[0x277D12780]];
  v6 = v5;

  tableView = [(WDStoredDataByCategoryViewController *)self tableView];
  [tableView setEstimatedRowHeight:v6];

  tableView2 = [(WDStoredDataByCategoryViewController *)self tableView];
  [tableView2 setEstimatedSectionHeaderHeight:v6];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x277CCD4D0]);
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  v12 = [v9 initWithHealthStore:healthStore];
  healthServicesManager = self->_healthServicesManager;
  self->_healthServicesManager = v12;

  v14 = objc_alloc(MEMORY[0x277CCDE40]);
  storedDataPredicate = [(WDStoredDataByCategoryViewController *)self storedDataPredicate];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__WDStoredDataByCategoryViewController_viewDidLoad__block_invoke;
  v22 = &unk_2796E7EE8;
  objc_copyWeak(&v23, &location);
  v16 = [v14 initWithPredicate:storedDataPredicate resultsHandler:&v19];

  v17 = [(WDStoredDataByCategoryViewController *)self profile:v19];
  healthStore2 = [v17 healthStore];
  [healthStore2 executeQuery:v16];

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

- (void)_displayTypeStringsChanged:(id)changed
{
  tableView = [(WDStoredDataByCategoryViewController *)self tableView];
  [tableView reloadData];
}

- (void)handleSamplesQueryResults:(id)results
{
  [(WDStoredDataByCategoryViewController *)self setCapturedSampleTypes:results];
  capturedSampleTypes = [(WDStoredDataByCategoryViewController *)self capturedSampleTypes];
  v5 = [(WDStoredDataByCategoryViewController *)self reduceCategoriesForCapturedSampleTypes:capturedSampleTypes];
  [(WDStoredDataByCategoryViewController *)self setSavedCategories:v5];

  [(WDStoredDataByCategoryViewController *)self setQueryReturned:1];
  tableView = [(WDStoredDataByCategoryViewController *)self tableView];
  [tableView reloadData];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = WDStoredDataByCategoryViewController;
  [(WDStoredDataByCategoryViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDStoredDataByCategoryViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      bodyFont = self->_bodyFont;
      self->_bodyFont = 0;
    }
  }
}

- (id)reduceCategoriesForCapturedSampleTypes:(id)types
{
  v64 = *MEMORY[0x277D85DE8];
  typesCopy = types;
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
    v38 = typesCopy;
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
        profile = [(WDStoredDataByCategoryViewController *)self profile];
        healthStore = [profile healthStore];
        v9 = [v6 sharedInstanceForHealthStore:healthStore];
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
              v14 = typesCopy;
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
                  sampleType = [v13 sampleType];

                  if (v19 == sampleType)
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
                          category = [v27 category];

                          if (category == v5)
                          {
                            v29 = v27;

                            v24 = v29;
                          }
                        }

                        v23 = [v21 countByEnumeratingWithState:&v44 objects:v60 count:16];
                      }

                      while (v23);

                      typesCopy = v38;
                      v11 = v39;
                      if (!v24)
                      {
LABEL_32:
                        v24 = objc_alloc_init(WDStoredDataCategory);
                        [(WDStoredDataCategory *)v24 setCategory:v5];
                        [v21 addObject:v24];
                      }

                      displayTypes = [(WDStoredDataCategory *)v24 displayTypes];
                      [displayTypes addObject:v13];

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

- (void)presentDeleteConfirmationFromSender:(id)sender
{
  v4 = MEMORY[0x277D75110];
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA8D8];
  senderCopy = sender;
  v7 = [v6 bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"PERMENANTLY_DELETE_ALL_DATA_FROM_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  storedDataDisplayName = [(WDStoredDataByCategoryViewController *)self storedDataDisplayName];
  v10 = [v5 stringWithFormat:v8, storedDataDisplayName];
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

  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setSourceItem:senderCopy];

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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (![(WDStoredDataByCategoryViewController *)self queryReturned]&& [(WDStoredDataByCategoryViewController *)self isBluetoothDevice])
  {
    return 2;
  }

  if (![(WDStoredDataByCategoryViewController *)self queryReturned])
  {
    return 1;
  }

  savedCategories = [(WDStoredDataByCategoryViewController *)self savedCategories];
  v6 = [savedCategories count];

  if (v6)
  {
    savedCategories2 = [(WDStoredDataByCategoryViewController *)self savedCategories];
    v8 = [savedCategories2 count];
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 + [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
  return v9 + [(WDStoredDataByCategoryViewController *)self shouldShowDeleteAllDataButton];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  isBluetoothDevice = [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
  if (!section && isBluetoothDevice)
  {
    return 1;
  }

  savedCategories = [(WDStoredDataByCategoryViewController *)self savedCategories];
  v8 = [savedCategories count];

  if (v8 <= section)
  {
    return 1;
  }

  savedCategories2 = [(WDStoredDataByCategoryViewController *)self savedCategories];
  v10 = [savedCategories2 objectAtIndexedSubscript:section];
  displayTypes = [v10 displayTypes];
  v12 = [displayTypes count];

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!-[WDStoredDataByCategoryViewController isBluetoothDevice](self, "isBluetoothDevice") || [pathCopy section])
  {
    if (-[WDStoredDataByCategoryViewController queryReturned](self, "queryReturned") || (v8 = [pathCopy section], v8 != -[WDStoredDataByCategoryViewController firstSectionWithData](self, "firstSectionWithData")))
    {
      isBluetoothDevice = [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
      v11 = [pathCopy section] - isBluetoothDevice;
      savedCategories = [(WDStoredDataByCategoryViewController *)self savedCategories];
      v13 = [savedCategories count];

      if (v13 > v11)
      {
        v9 = [viewCopy dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewCell"];
        if (!v9)
        {
          v9 = [[WDStoredDataCategoryTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewCell"];
        }

        bodyFont = [(WDStoredDataByCategoryViewController *)self bodyFont];
        textLabel = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [textLabel setFont:bodyFont];

        textLabel2 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        LODWORD(v17) = 1055286886;
        [textLabel2 _setHyphenationFactor:v17];

        [(WDStoredDataCategoryTableViewCell *)v9 setAccessoryType:1];
        savedCategories2 = [(WDStoredDataByCategoryViewController *)self savedCategories];
        textLabel7 = [savedCategories2 objectAtIndexedSubscript:v11];
        displayTypes = [textLabel7 displayTypes];
        v21 = [displayTypes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
        [(WDStoredDataCategoryTableViewCell *)v9 setDisplayType:v21];

        goto LABEL_23;
      }

      section = [pathCopy section];
      if (section == [(WDStoredDataByCategoryViewController *)self firstSectionWithData])
      {
        v9 = [viewCopy dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewEmptyCell"];
        if (!v9)
        {
          v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewEmptyCell"];
        }

        [(WDStoredDataCategoryTableViewCell *)v9 setSelectionStyle:0];
        v23 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v24 = [v23 localizedStringForKey:@"NO_DATA_FOUND" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
        textLabel3 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [textLabel3 setText:v24];

        lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
        textLabel4 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [textLabel4 setTextColor:lightGrayColor];
      }

      else
      {
        v9 = [viewCopy dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewDeleteAllCell"];
        if (!v9)
        {
          v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewDeleteAllCell"];
        }

        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        textLabel5 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [textLabel5 setTextColor:systemRedColor];

        v33 = MEMORY[0x277CCACA8];
        v34 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v35 = [v34 localizedStringForKey:@"DELETE_ALL_DATA_FOR_SOURCE_%@" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
        storedDataDisplayName = [(WDStoredDataByCategoryViewController *)self storedDataDisplayName];
        v37 = [v33 stringWithFormat:v35, storedDataDisplayName];
        textLabel6 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [textLabel6 setText:v37];

        lightGrayColor = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
        [lightGrayColor setNumberOfLines:0];
      }
    }

    else
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewWaitingCellIdentifier"];
      if (!v9)
      {
        v9 = [[WDSpinnerTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDStoredDataByCategoryTableViewWaitingCellIdentifier"];
      }
    }

    savedCategories2 = [(WDStoredDataByCategoryViewController *)self bodyFont];
    textLabel7 = [(WDStoredDataCategoryTableViewCell *)v9 textLabel];
    [textLabel7 setFont:savedCategories2];
LABEL_23:

    goto LABEL_24;
  }

  tableView = [(WDStoredDataByCategoryViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"WDStoredDataByCategoryTableViewDeviceSourceKillSwitch"];

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

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  objc_initWeak(&location, self);
  healthServicesManager = self->_healthServicesManager;
  deviceIdentifier = self->_deviceIdentifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WDStoredDataByCategoryViewController_switchCellValueChanged_value___block_invoke;
  v9[3] = &unk_2796E7F10;
  objc_copyWeak(&v10, &location);
  v11 = isOn;
  [(HKHealthServicesManager *)healthServicesManager setEnabledStatus:isOn forPeripheral:deviceIdentifier withCompletion:v9];
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

- (void)_displayGuestModeAlertWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v17 = completionCopy;
  v13 = completionCopy;
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(WDStoredDataByCategoryViewController *)self queryReturned])
  {
    isBluetoothDevice = [(WDStoredDataByCategoryViewController *)self isBluetoothDevice];
    if (!section && isBluetoothDevice || (v7 = section - -[WDStoredDataByCategoryViewController isBluetoothDevice](self, "isBluetoothDevice"), -[WDStoredDataByCategoryViewController savedCategories](self, "savedCategories"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 <= v7))
    {
      displayName = 0;
    }

    else
    {
      savedCategories = [(WDStoredDataByCategoryViewController *)self savedCategories];
      v11 = [savedCategories objectAtIndexedSubscript:v7];
      category = [v11 category];
      displayName = [category displayName];
    }
  }

  else
  {
    displayName = @" ";
  }

  return displayName;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && objc_msgSend(viewCopy, "numberOfSections") - 1 == section)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      source = [(WDStoredDataByCategoryViewController *)selfCopy2 source];
LABEL_7:
      v10 = source;
      v11 = [source description];
      [v7 stringWithFormat:@"INTERNAL ONLY: %@, %@, isBluetoothDevice:%d", selfCopy2, v11, -[WDStoredDataByCategoryViewController isBluetoothDevice](selfCopy2, "isBluetoothDevice")];
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      source = [(WDStoredDataByCategoryViewController *)selfCopy2 device];
      goto LABEL_7;
    }
  }

  v12 = 0;
  if ([(WDStoredDataByCategoryViewController *)self isBluetoothDevice]&& !section)
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
    selfCopy2 = [(WDStoredDataByCategoryViewController *)self title];
    [v13 stringWithFormat:v11, selfCopy2, v15, v16];
    v12 = LABEL_12:;

LABEL_14:
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  reuseIdentifier = [v7 reuseIdentifier];
  v9 = [reuseIdentifier isEqualToString:@"WDStoredDataByCategoryTableViewCell"];

  if (v9)
  {
    [(WDStoredDataByCategoryViewController *)self selectSourceStoredDataTableViewCell:v7];
  }

  else
  {
    reuseIdentifier2 = [v7 reuseIdentifier];
    v11 = [reuseIdentifier2 isEqualToString:@"WDStoredDataByCategoryTableViewDeleteAllCell"];

    if (v11)
    {
      [(WDStoredDataByCategoryViewController *)self presentDeleteConfirmationFromSender:v7];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }
}

- (void)selectSourceStoredDataTableViewCell:(id)cell
{
  displayType = [cell displayType];
  v6 = [(WDStoredDataByCategoryViewController *)self _makeDataListViewControllerForDisplayType:displayType];

  navigationController = [(WDStoredDataByCategoryViewController *)self navigationController];
  [navigationController hk_showViewController:v6 animated:1];
}

- (id)_makeDataListViewControllerForDisplayType:(id)type
{
  typeCopy = type;
  healthStore = [(WDProfile *)self->_profile healthStore];
  storedDataPredicate = [(WDStoredDataByCategoryViewController *)self storedDataPredicate];
  v7 = [HBXHealthAppPluginFactory makeDataListViewControllerForHealthStore:healthStore displayType:typeCopy predicate:storedDataPredicate];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    profile = [(WDStoredDataByCategoryViewController *)self profile];
    profile2 = [(WDStoredDataByCategoryViewController *)self profile];
    unitController = [profile2 unitController];
    presentation = [typeCopy presentation];
    v13 = [typeCopy wd_listViewControllerDataProviderWithProfile:profile unitController:unitController isHierarchical:{objc_msgSend(presentation, "showAppDataHierarchically")}];

    storedDataPredicate2 = [(WDStoredDataByCategoryViewController *)self storedDataPredicate];
    [v13 setDefaultQueryPredicate:storedDataPredicate2];

    if ([typeCopy displayTypeIdentifier] == 298 || objc_msgSend(typeCopy, "displayTypeIdentifier") == 304)
    {
      [v13 setShouldDisplayAllSamples:1];
    }

    v15 = [WDDataListViewController alloc];
    profile3 = [(WDStoredDataByCategoryViewController *)self profile];
    v8 = [(WDDataListViewController *)v15 initWithDisplayType:typeCopy profile:profile3 dataProvider:v13 usingInsetStyling:1];
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