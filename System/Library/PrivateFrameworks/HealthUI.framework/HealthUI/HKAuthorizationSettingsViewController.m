@interface HKAuthorizationSettingsViewController
- (BOOL)_enableToggleAtIndexPath:(id)a3;
- (BOOL)_shouldDisplaySharingSection;
- (BOOL)shouldPresent;
- (HKAuthorizationSettingsViewController)initWithHealthStore:(id)a3 style:(int64_t)a4 source:(id)a5 typesToShare:(id)a6 typesToRead:(id)a7 shareDescription:(id)a8 updateDescription:(id)a9 researchStudyUsageDescription:(id)a10;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_authorizationSettingCellForRowAtIndexPath:(id)a3;
- (id)_headerIcon;
- (id)_indexPathsInAuthorizationSection:(int64_t)a3;
- (id)_localizedNameForSection:(int64_t)a3 type:(id)a4;
- (id)_localizedSourceExplanationWithDescription:(id)a3 forReadingSection:(BOOL)a4;
- (id)_openAppCell;
- (id)_researchStudyExplanationCell;
- (id)_specialCellWithIdentifier:(id)a3;
- (id)_toggleAllCell;
- (id)_typeForIndexPath:(id)a3 section:(int64_t *)a4;
- (id)sectionsForAuthController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)authorizationSectionForSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addCancelAndDoneButtons;
- (void)_configurationFailedWithError:(id)a3;
- (void)_configureTableView;
- (void)_didFetchBackgroundAppRefreshStatus:(BOOL)a3;
- (void)_displayGuestModeAlertWithCompletion:(id)a3;
- (void)_done:(id)a3;
- (void)_fetchBackgroundAppRefreshStatusWithHandler:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)authorizationController:(id)a3 parentTypeIsDisabled:(id)a4 forType:(id)a5 inSection:(int64_t)a6;
- (void)authorizationController:(id)a3 subTypesEnabled:(id)a4 forType:(id)a5 inSection:(int64_t)a6;
- (void)pickerControllerDidFinish:(id)a3 error:(id)a4;
- (void)reloadAuthorizationSettings;
- (void)setSource:(id)a3;
- (void)sourceConfigure;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateAllowButtonEnabledState;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKAuthorizationSettingsViewController

- (id)_headerIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"healthauthorization_icon_large" inBundle:v3];

  return v4;
}

- (HKAuthorizationSettingsViewController)initWithHealthStore:(id)a3 style:(int64_t)a4 source:(id)a5 typesToShare:(id)a6 typesToRead:(id)a7 shareDescription:(id)a8 updateDescription:(id)a9 researchStudyUsageDescription:(id)a10
{
  v17 = a10;
  v18 = a3;
  v39 = a5;
  v45 = a5;
  v41 = a6;
  v19 = a6;
  v40 = a7;
  v44 = a7;
  v20 = a8;
  v43 = a9;
  v42 = a10;
  if (!v18)
  {
    [HKAuthorizationSettingsViewController initWithHealthStore:a2 style:self source:? typesToShare:? typesToRead:? shareDescription:? updateDescription:? researchStudyUsageDescription:?];
  }

  v38 = a4;
  if (a4 == 1)
  {
    v21 = self;
    v22 = [(HKAuthorizationSettingsViewController *)self _headerIcon];
    v36 = v19;
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = v23 = a8;
    v35 = v18;
    v25 = [v24 localizedStringForKey:@"HEALTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v26 = MEMORY[0x1E696AEC0];
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v28 = [v27 localizedStringForKey:@"%@_WOULD_LIKE_TO_ACCESS_YOUR_HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v29 = [v45 name];
    v30 = v26;
    a8 = v23;
    v17 = a10;
    v31 = [v30 stringWithFormat:v28, v29];

    v18 = v35;
    v19 = v36;
  }

  else
  {
    v25 = 0;
    v31 = 0;
    v22 = 0;
    v21 = self;
  }

  v46.receiver = v21;
  v46.super_class = HKAuthorizationSettingsViewController;
  v32 = [(OBTableWelcomeController *)&v46 initWithTitle:v25 detailText:v31 icon:v22 adoptTableViewScrollView:1];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_healthStore, a3);
    v33->_style = v38;
    objc_storeStrong(&v33->_source, v39);
    objc_storeStrong(&v33->_typesToRead, v40);
    objc_storeStrong(&v33->_typesToShare, v41);
    objc_storeStrong(&v33->_updateDescription, a9);
    objc_storeStrong(&v33->_shareDescription, a8);
    objc_storeStrong(&v33->_researchStudyUsageDescription, v17);
  }

  return v33;
}

- (void)sourceConfigure
{
  v3 = [[HKSourceAuthorizationController alloc] initWithHealthStore:self->_healthStore source:self->_source typesForSharing:self->_typesToShare typesForReading:self->_typesToRead];
  sourceAuthorizationController = self->_sourceAuthorizationController;
  self->_sourceAuthorizationController = v3;

  [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setDelegate:self];
  v5 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:6];
  v6 = [v5 mutableCopy];

  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    v7 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
    [v6 removeObject:v7];
  }

  objc_storeStrong(&self->_readingTypeOrdering, v6);
  if (![(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    v8 = [(HKSource *)self->_source name];
    v9 = [(OBBaseWelcomeController *)self navigationItem];
    [v9 setTitle:v8];
  }

  v10 = [(HKAuthorizationSettingsViewController *)self sourceAuthorizationController];
  v11 = [(HKAuthorizationSettingsViewController *)self sectionsForAuthController:v10];
  [(HKAuthorizationSettingsViewController *)self setActualSections:v11];

  if (![(HKSource *)self->_source _isAllowedBackgroundDelivery])
  {
    self->_requiresBackgroundAppRefreshDisclosure = 0;
    goto LABEL_9;
  }

  v12 = [(HKSource *)self->_source _isResearchStudy];
  self->_requiresBackgroundAppRefreshDisclosure = v12 ^ 1;
  if (v12)
  {
LABEL_9:
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 reloadData];

    goto LABEL_10;
  }

  self->_hasFetchedBackgroundAppRefreshStatus = 0;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__HKAuthorizationSettingsViewController_sourceConfigure__block_invoke;
  v14[3] = &unk_1E81B6368;
  objc_copyWeak(&v15, &location);
  [(HKAuthorizationSettingsViewController *)self _fetchBackgroundAppRefreshStatusWithHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_10:
}

void __56__HKAuthorizationSettingsViewController_sourceConfigure__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _didFetchBackgroundAppRefreshStatus:a2];
    WeakRetained = v4;
  }
}

- (void)setSource:(id)a3
{
  objc_storeStrong(&self->_source, a3);

  [(HKAuthorizationSettingsViewController *)self sourceConfigure];
}

- (void)_didFetchBackgroundAppRefreshStatus:(BOOL)a3
{
  self->_isBackgroundAppRefreshEnabled = a3;
  self->_hasFetchedBackgroundAppRefreshStatus = 1;
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 reloadData];
}

- (void)reloadAuthorizationSettings
{
  [(HKSourceAuthorizationController *)self->_sourceAuthorizationController reload];
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 reloadData];
}

- (void)_configureTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(HKAuthorizationSettingsViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v10 = [(HKAuthorizationSettingsViewController *)self view];
    [v10 setBackgroundColor:v9];

    v13 = [(HKAuthorizationSettingsViewController *)self view];
    v11 = [v13 backgroundColor];
    v12 = [(OBTableWelcomeController *)self tableView];
    [v12 setBackgroundColor:v11];
  }
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = HKAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v23 viewDidLoad];
  [(HKAuthorizationSettingsViewController *)self _configureTableView];
  v3 = [(HKAuthorizationSettingsViewController *)self navigationController];
  [v3 setModalInPresentation:1];

  v4 = [(HKAuthorizationSettingsViewController *)self headerView];
  [v4 setAllowFullWidthIcon:1];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 hk_onboardingListEdgeInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 _setSectionContentInset:{v7, v9, v11, v13}];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 _setSectionCornerRadius:26.0];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setEstimatedRowHeight:52.0];

  v17 = *MEMORY[0x1E69DE3D0];
  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 setRowHeight:v17];

  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    [(HKAuthorizationSettingsViewController *)self _addCancelAndDoneButtons];
    [(HKAuthorizationSettingsViewController *)self setModalInPresentation:1];
    v19 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v20 = [(HKAuthorizationSettingsViewController *)self view];
    [v20 setBackgroundColor:v19];

    v21 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v22 = [(OBTableWelcomeController *)self tableView];
    [v22 setBackgroundColor:v21];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v4 viewWillAppear:a3];
  [(HKAuthorizationSettingsViewController *)self reloadAuthorizationSettings];
}

- (void)_addCancelAndDoneButtons
{
  v19 = [(OBBaseWelcomeController *)self navigationItem];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"HEALTH_ACCESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v19 setTitle:v4];

  v5 = [MEMORY[0x1E69B7D38] linkButton];
  cancelButtonItem = self->_cancelButtonItem;
  self->_cancelButtonItem = v5;

  v7 = self->_cancelButtonItem;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"AUTHORIZATION_PROMPT_DONT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBLinkTrayButton *)v7 setTitle:v9 forState:0];

  [(OBLinkTrayButton *)self->_cancelButtonItem addTarget:self action:sel__done_ forControlEvents:64];
  [(OBLinkTrayButton *)self->_cancelButtonItem setAccessibilityIdentifier:@"UIA.Health.DoNotAllow.Button"];
  v10 = [MEMORY[0x1E69B7D00] boldButton];
  doneButtonItem = self->_doneButtonItem;
  self->_doneButtonItem = v10;

  v12 = self->_doneButtonItem;
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"AUTHORIZATION_PROMPT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBBoldTrayButton *)v12 setTitle:v14 forState:0];

  [(OBBoldTrayButton *)self->_doneButtonItem addTarget:self action:sel__done_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_doneButtonItem setAccessibilityIdentifier:@"UIA.Health.Allow.Button"];
  v15 = self->_doneButtonItem;
  v16 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(OBBoldTrayButton *)v15 setTintColor:v16];

  [(OBBoldTrayButton *)self->_doneButtonItem setEnabled:0];
  v17 = [(HKAuthorizationSettingsViewController *)self buttonTray];
  [v17 addButton:self->_doneButtonItem];

  v18 = [(HKAuthorizationSettingsViewController *)self buttonTray];
  [v18 addButton:self->_cancelButtonItem];
}

- (void)_done:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_doneButtonItem == v4)
  {
    [(HKSourceAuthorizationController *)self->_sourceAuthorizationController commitAuthorizationStatuses];
    [(HKAuthorizationSettingsViewController *)self _finishWithError:0];
  }

  else
  {
    if ([(HKAuthorizationSettingsViewController *)self isPrompting])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v5 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:6];
      v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v31;
        do
        {
          v9 = 0;
          do
          {
            if (*v31 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setEnabled:0 forType:*(*(&v30 + 1) + 8 * v9++) inSection:6 commit:0];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v7);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:4];
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        do
        {
          v14 = 0;
          do
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setEnabled:0 forType:*(*(&v26 + 1) + 8 * v14++) inSection:4 commit:0];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v12);
      }

      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController commitAuthorizationStatuses];
      v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v16 = [v15 localizedStringForKey:@"AUTHORIZATION_DONT_ALLOW_ALERT_MESSAGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      v17 = MEMORY[0x1E69DC650];
      v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"AUTHORIZATION_DONT_ALLOW_ALERT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v20 = [v17 alertControllerWithTitle:v19 message:v16 preferredStyle:1];

      v21 = MEMORY[0x1E69DC648];
      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v23 = [v22 localizedStringForKey:@"AUTHORIZATION_DONT_ALLOW_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__HKAuthorizationSettingsViewController__done___block_invoke;
      v25[3] = &unk_1E81B6048;
      v25[4] = self;
      v24 = [v21 actionWithTitle:v23 style:0 handler:v25];

      [v20 addAction:v24];
      [(HKAuthorizationSettingsViewController *)self presentViewController:v20 animated:1 completion:0];
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] hk_error:7 description:@"The user canceled authorization."];
      [(HKAuthorizationSettingsViewController *)self _finishWithError:v16];
    }
  }
}

- (void)_finishWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  if ([v5 isiPad])
  {
    v6 = [HKiPadHealthSyncEnablement isSyncPromptedForHealthKit:self->_healthStore];

    if (!v6)
    {
      v7 = [[HKHealthSyncDisplayController alloc] initWithHealthStore:self->_healthStore source:self->_source];
      v8 = [(HKAuthorizationSettingsViewController *)self delegate];
      [(HKHealthSyncDisplayController *)v7 setDelegate:v8];

      _HKInitializeLogging();
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = objc_opt_class();
        v10 = v15;
        _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "%@: Prompting health sync view controller", &v14, 0xCu);
      }

      [(HKAuthorizationSettingsViewController *)self presentViewController:v7 animated:1 completion:0];
      goto LABEL_12;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v11 = HKLogAuthorization();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v13 = HKLogAuthorization();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(HKAuthorizationSettingsViewController *)self _finishWithError:v13];
    }
  }

  v7 = [(HKAuthorizationSettingsViewController *)self delegate];
  [(HKHealthSyncDisplayController *)v7 promptControllerDidFinish:self error:v4];
LABEL_12:
}

- (void)updateAllowButtonEnabledState
{
  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    v3 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController anyTypeEnabled];
    doneButtonItem = self->_doneButtonItem;

    [(OBBoldTrayButton *)doneButtonItem setEnabled:v3];
  }
}

- (void)_displayGuestModeAlertWithCompletion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__HKAuthorizationSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke;
  v16[3] = &unk_1E81B8440;
  v17 = v3;
  v13 = v3;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v16];

  [v9 addAction:v14];
  [(HKAuthorizationSettingsViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __78__HKAuthorizationSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_requiresBackgroundAppRefreshDisclosure && !self->_hasFetchedBackgroundAppRefreshStatus)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_actualSections count];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
  v6 = v5 - 1;
  if (v5 - 1) < 8 && ((0xC7u >> v6))
  {
    return qword_1C3D5D4D0[v6];
  }

  v8 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:v5];
  v7 = [v8 count];

  v9 = [(HKAuthorizationSettingsViewController *)self isPrompting];
  if (v5 == 6 && v9)
  {
    v7 -= [(HKSourceAuthorizationController *)self->_sourceAuthorizationController isRequestingDocumentAuthorization];
  }

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
  if (v4 != 5 && v4 != 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return HKUIOnePixel();
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
  switch(v5)
  {
    case 6:
      v8 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v9;
      v10 = @"SHARE_DATA_WITH_%@";
      goto LABEL_7;
    case 4:
      v8 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v9;
      v10 = @"ALLOW_%@_TO_UPDATE";
LABEL_7:
      v11 = [v9 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v12 = [(HKSource *)self->_source name];
      v7 = [v8 stringWithFormat:v11, v12];

      goto LABEL_8;
    case 1:
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v7 = [v6 localizedStringForKey:@"STUDY_EXPLANATION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_8:

      goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a4];
  v6 = 0;
  if (v5 > 5)
  {
    if (v5 != 6)
    {
      if (v5 != 7)
      {
        goto LABEL_12;
      }

      v10 = self->_researchStudyUsageDescription;
      goto LABEL_11;
    }

    shareDescription = self->_shareDescription;
    v8 = self;
    v9 = 1;
  }

  else
  {
    if (v5 == 3)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"CLINICAL_DOCUMENTS_REQUEST_AUTH_DESCRIPTION %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v14 = [(HKSource *)self->_source name];
      v6 = [v11 stringWithFormat:v13, v14];

      goto LABEL_12;
    }

    if (v5 != 4)
    {
      goto LABEL_12;
    }

    shareDescription = self->_updateDescription;
    v8 = self;
    v9 = 0;
  }

  v10 = [(HKAuthorizationSettingsViewController *)v8 _localizedSourceExplanationWithDescription:shareDescription forReadingSection:v9];
LABEL_11:
  v6 = v10;
LABEL_12:

  return v6;
}

- (id)_localizedSourceExplanationWithDescription:(id)a3 forReadingSection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HKSource *)self->_source _isResearchStudy];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = v8;
  if (v7)
  {
    v10 = @"STUDY_EXPLANATION_%@";
  }

  else
  {
    v10 = @"APP_EXPLANATION_%@";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if (v6)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v6];
    if (v12)
    {
      v13 = !v4;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && self->_requiresBackgroundAppRefreshDisclosure)
    {
      if (self->_hasFetchedBackgroundAppRefreshStatus)
      {
        isBackgroundAppRefreshEnabled = self->_isBackgroundAppRefreshEnabled;
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v16 = v15;
        if (isBackgroundAppRefreshEnabled)
        {
          v17 = @"BACKGROUND_DELIVERY_BAR_ON";
        }

        else
        {
          v17 = @"BACKGROUND_DELIVERY_BAR_OFF";
        }

        v18 = [v15 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        v19 = [v12 stringByAppendingString:v18];

        v12 = v19;
      }

      else
      {
        _HKInitializeLogging();
        v21 = HKLogAuthorization();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [HKAuthorizationSettingsViewController _localizedSourceExplanationWithDescription:forReadingSection:];
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_fetchBackgroundAppRefreshStatusWithHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      source = self->_source;
      *buf = 138543362;
      v17 = source;
      _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_INFO, "Fetching BAR eligiblity for %{public}@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x1E699A4B8] sharedScheduler];
  v10 = [(HKSource *)self->_source bundleIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__HKAuthorizationSettingsViewController__fetchBackgroundAppRefreshStatusWithHandler___block_invoke;
  v13[3] = &unk_1E81B8958;
  v14 = v10;
  v15 = v4;
  v11 = v4;
  v12 = v10;
  [v9 backgroundAppRefreshEnabledForApp:v12 withHandler:v13];
}

void __85__HKAuthorizationSettingsViewController__fetchBackgroundAppRefreshStatusWithHandler___block_invoke(uint64_t a1, char a2, char a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__HKAuthorizationSettingsViewController__fetchBackgroundAppRefreshStatusWithHandler___block_invoke_2;
  block[3] = &unk_1E81B8930;
  v7 = *(a1 + 32);
  v9 = a2;
  v10 = a3;
  v8 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__HKAuthorizationSettingsViewController__fetchBackgroundAppRefreshStatusWithHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = HKLogAuthorization();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogAuthorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = HKStringFromBool();
      v7 = HKStringFromBool();
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_INFO, "Duet BAR eligiblity for '%{public}@': global=%{public}@, app=%{public}@", &v10, 0x20u);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v8 = *(a1 + 49);
  }

  else
  {
    v8 = 0;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v8 & 1);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [v5 section]);
  v7 = 0;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v9 = [(HKAuthorizationSettingsViewController *)self _researchStudyExplanationCell];
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_15;
      }

      v9 = [(HKAuthorizationSettingsViewController *)self _toggleAllCell];
    }
  }

  else if ((v6 - 3) < 2 || v6 == 6)
  {
    v9 = [(HKAuthorizationSettingsViewController *)self _authorizationSettingCellForRowAtIndexPath:v5];
  }

  else
  {
    if (v6 != 8)
    {
      goto LABEL_15;
    }

    v9 = [(HKAuthorizationSettingsViewController *)self _openAppCell];
  }

  v7 = v9;
LABEL_15:
  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    v10 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v7 setBackgroundColor:v10];
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = HKErrorTableViewCell(@"HKAuthorizationSettingsViewController");
  }

  v12 = v11;

  return v12;
}

- (id)_researchStudyExplanationCell
{
  v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"ResearchStudyExplanation"];
  v4 = [v3 textLabel];
  [v4 setNumberOfLines:0];

  v5 = [(HKAuthorizationSettingsViewController *)self researchStudyUsageDescription];
  v6 = [v3 textLabel];
  [v6 setText:v5];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)_toggleAllCell
{
  v2 = self;
  v3 = [(HKAuthorizationSettingsViewController *)self _specialCellWithIdentifier:@"ToggleAllCell"];
  LODWORD(v2) = [(HKSourceAuthorizationController *)v2->_sourceAuthorizationController allTypesEnabled];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  if (v2)
  {
    v6 = @"DISABLE_ALL_CATEGORIES";
  }

  else
  {
    v6 = @"ENABLE_ALL_CATEGORIES";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v3 textLabel];
  [v8 setText:v7];

  v9 = [@"UIA.Health" stringByAppendingString:@".AuthSheet.AllCategoryButton"];
  [v3 setAccessibilityIdentifier:v9];

  return v3;
}

- (id)_openAppCell
{
  v3 = [(HKAuthorizationSettingsViewController *)self _specialCellWithIdentifier:@"OpenAppCell"];
  v4 = MEMORY[0x1E696AEC0];
  v5 = HKHealthKitFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"OPEN_%@" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B918]];
  v7 = [(HKAuthorizationSettingsViewController *)self source];
  v8 = [v7 name];
  v9 = [v4 stringWithFormat:v6, v8];
  v10 = [v3 textLabel];
  [v10 setText:v9];

  return v3;
}

- (id)_specialCellWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:v4];

  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:v4];
  }

  v7 = HKHealthKeyColor();
  v8 = [v6 textLabel];
  [v8 setTextColor:v7];

  return v6;
}

- (id)_localizedNameForSection:(int64_t)a3 type:(id)a4
{
  v6 = a4;
  if ([(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:a3]== 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = [v7 localizedStringForKey:@"CLINICAL_DOCUMENT_REQUESTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_6:

      goto LABEL_8;
    }
  }

  if ([v6 isClinicalType])
  {
    v9 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
    v7 = [v9 displayTypeForObjectTypeUnifyingBloodPressureTypes:v6];

    v10 = [v7 localization];
    v8 = [v10 displayName];

    goto LABEL_6;
  }

  v8 = [v6 hk_localizedName];
LABEL_8:

  return v8;
}

- (id)_authorizationSettingCellForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCell"];

  if (!v6)
  {
    v6 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AuthorizationSettingsCell"];
    [(HKSwitchTableViewCell *)v6 setDelegate:self];
    [(HKSwitchTableViewCell *)v6 setCentersIcon:1];
  }

  v7 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:v4 section:0];
  v8 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
  v9 = [v8 displayTypeForObjectTypeUnifyingBloodPressureTypes:v7];

  v10 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [v4 section]);
  v32 = v9;
  if (v10 == 6)
  {
    v11 = [v9 isDocument];
  }

  else
  {
    v11 = 0;
  }

  [(HKSwitchTableViewCell *)v6 setShouldHideSwitch:v11];
  v12 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController objectAuthorizationStatusesForDocuments];
  v13 = [v12 count];

  if (v11 && v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v13, v32];
    [(HKSwitchTableViewCell *)v6 setCountText:v14];

    v15 = 1;
  }

  else
  {
    [(HKSwitchTableViewCell *)v6 setCountText:0];
    v15 = 0;
  }

  [(HKSwitchTableViewCell *)v6 setAccessoryType:v15];
  if (v10 == 3)
  {
    v16 = 0;
  }

  else
  {
    v17 = [v7 parentType];

    if (v17)
    {
      v18 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
      v19 = [v7 parentType];
      v16 = [v18 displayTypeForObjectTypeUnifyingBloodPressureTypes:v19];
    }

    else
    {
      v16 = v32;
    }
  }

  v20 = -[HKAuthorizationSettingsViewController _localizedNameForSection:type:](self, "_localizedNameForSection:type:", [v4 section], v7);
  [(HKSwitchTableViewCell *)v6 setDisplayText:v20];
  v21 = [v16 listIcon];
  v22 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v23 = [v21 imageByApplyingSymbolConfiguration:v22];

  [(HKSwitchTableViewCell *)v6 setIconImage:v23];
  v24 = @"UIA.Health.Default";
  if (v10 == 6)
  {
    v24 = @"UIA.Health.Read";
  }

  if (v10 == 4)
  {
    v24 = @"UIA.Health.Write";
  }

  v25 = MEMORY[0x1E696AB08];
  v26 = v24;
  v27 = [v25 whitespaceAndNewlineCharacterSet];
  v28 = [v20 hk_stringByRemovingCharactersInSet:v27];

  v29 = [(__CFString *)v26 stringByAppendingFormat:@".%@.SwitchCell", v28];

  [(HKSwitchTableViewCell *)v6 setAccessibilityIdentifier:v29];
  [(HKSwitchTableViewCell *)v6 setOn:[(HKAuthorizationSettingsViewController *)self _enableToggleAtIndexPath:v4]];
  v30 = [(HKSwitchTableViewCell *)v6 textLabel];
  [v30 setNumberOfLines:3];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [v7 section]);
  v9 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:v7 section:0];

  switch(v8)
  {
    case 8:
      v18 = [(HKAuthorizationSettingsViewController *)self source];
      v19 = [v18 bundleIdentifier];

      v20 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __75__HKAuthorizationSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v22[3] = &unk_1E81B8980;
      v23 = v19;
      v21 = v19;
      [v20 openApplication:v21 withOptions:0 completion:v22];

      break;
    case 6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController objectAuthorizationStatusesForDocuments];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController objectAuthorizationStatusesForDocuments];
          v15 = [[HKDocumentPickerViewController alloc] initWithDocumentAuthorizations:v14];
          [(HKDocumentPickerViewController *)v15 setSource:self->_source];
          v16 = [v9 hk_localizedName];
          [(HKDocumentPickerViewController *)v15 setTitle:v16];

          v17 = [(HKAuthorizationSettingsViewController *)self navigationController];
          [v17 pushViewController:v15 animated:1];
        }
      }

      break;
    case 2:
      v10 = [(HKAuthorizationSettingsViewController *)self isPrompting];
      v11 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController allTypesEnabled]^ 1;
      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setEnabled:v11 forAllTypesInSection:4 commit:!v10];
      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setEnabled:v11 forAllTypesInSection:6 commit:!v10];
      if ((v11 & 1) == 0 && !v10)
      {
        [(HKSourceAuthorizationController *)self->_sourceAuthorizationController resetObjectAuthorizationStatuses];
      }

      [v6 reloadData];
      [(HKAuthorizationSettingsViewController *)self updateAllowButtonEnabledState];
      break;
  }
}

void __75__HKAuthorizationSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__HKAuthorizationSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(OBTableWelcomeController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v12 = 0;
  v9 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:v8 section:&v12];
  v10 = [(HKAuthorizationSettingsViewController *)self isPrompting];
  if (v12 == 3)
  {
    v12 = 6;
    if (!v10)
    {
      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController resetObjectAuthorizationStatuses];
    }
  }

  [HKSourceAuthorizationController setEnabled:"setEnabled:forType:inSection:commit:" forType:v4 inSection:v9 commit:?];
  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 reloadData];

  [(HKAuthorizationSettingsViewController *)self updateAllowButtonEnabledState];
}

- (void)pickerControllerDidFinish:(id)a3 error:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HKAuthorizationSettingsViewController pickerControllerDidFinish:error:];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [v6 allSamples];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      v13 = MEMORY[0x1E695E110];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v27 + 1) + 8 * i) UUID];
          [v8 setObject:v13 forKeyedSubscript:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [v6 enabledSamples];
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      v20 = MEMORY[0x1E695E118];
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(*(&v23 + 1) + 8 * j) UUID];
          [v8 setObject:v20 forKeyedSubscript:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }

    [(HKSourceAuthorizationController *)self->_sourceAuthorizationController commitObjectAuthorizationStatuses:v8];
  }
}

- (void)authorizationController:(id)a3 parentTypeIsDisabled:(id)a4 forType:(id)a5 inSection:(int64_t)a6
{
  v35 = a3;
  v33 = a4;
  v9 = a5;
  v10 = [v9 hk_localizedNameForAuthSheet];
  v38 = v10;
  v11 = [v33 hk_localizedNameForAuthSheet];
  v12 = @"ENABLING_%@_TO_WRITE_WILL_ENABLE_%@";
  if (a6 == 6)
  {
    v12 = @"ENABLING_%@_TO_READ_WILL_ENABLE_%@";
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = MEMORY[0x1E696AAE8];
  v15 = v12;
  v16 = [v14 bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:v15 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v37 = [v13 stringWithFormat:v17, v10, v11];

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v37 message:0 preferredStyle:0];
  v19 = MEMORY[0x1E69DC648];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"AUTHORIZATION_STATUS_CHANGE_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:0];
  [v18 addAction:v22];

  v23 = MEMORY[0x1E696AEC0];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"AUTHORIZATION_STATUS_ENABLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v26 = v11;
  v27 = [v23 stringWithFormat:v25, v11];

  v28 = MEMORY[0x1E69DC648];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __104__HKAuthorizationSettingsViewController_authorizationController_parentTypeIsDisabled_forType_inSection___block_invoke;
  v39[3] = &unk_1E81B89A8;
  v39[4] = self;
  v40 = v35;
  v42 = v9;
  v43 = a6;
  v41 = v33;
  v29 = v9;
  v30 = v33;
  v31 = v35;
  v32 = [v28 actionWithTitle:v27 style:0 handler:v39];
  [v18 addAction:v32];

  [(HKAuthorizationSettingsViewController *)self presentViewController:v18 animated:1 completion:0];
}

uint64_t __104__HKAuthorizationSettingsViewController_authorizationController_parentTypeIsDisabled_forType_inSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isPrompting];
  [*(a1 + 40) setEnabled:1 forType:*(a1 + 48) inSection:*(a1 + 64) commit:v2 ^ 1u];
  [*(a1 + 40) setEnabled:1 forType:*(a1 + 56) inSection:*(a1 + 64) commit:v2 ^ 1u];
  v3 = [*(a1 + 32) tableView];
  [v3 reloadData];

  v4 = *(a1 + 32);

  return [v4 updateAllowButtonEnabledState];
}

- (void)authorizationController:(id)a3 subTypesEnabled:(id)a4 forType:(id)a5 inSection:(int64_t)a6
{
  v29 = a3;
  v28 = a4;
  v8 = a5;
  v33 = [v8 hk_localizedNameForAuthSheet];
  v9 = [v28 anyObject];
  v10 = [v9 hk_localizedNameForAuthSheet];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"DISABLING_%@_WILL_DISABLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v31 = [v11 stringWithFormat:v13, v33, v10];

  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v31 message:0 preferredStyle:0];
  v15 = MEMORY[0x1E69DC648];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"AUTHORIZATION_STATUS_CHANGE_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:0];
  [v14 addAction:v18];

  v19 = MEMORY[0x1E696AEC0];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"AUTHORIZATION_STATUS_DISABLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v22 = [v19 stringWithFormat:v21, v10];

  v23 = MEMORY[0x1E69DC648];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__HKAuthorizationSettingsViewController_authorizationController_subTypesEnabled_forType_inSection___block_invoke;
  v34[3] = &unk_1E81B89A8;
  v34[4] = self;
  v35 = v28;
  v37 = v8;
  v38 = a6;
  v36 = v29;
  v24 = v8;
  v25 = v29;
  v26 = v28;
  v27 = [v23 actionWithTitle:v22 style:0 handler:v34];
  [v14 addAction:v27];

  [(HKAuthorizationSettingsViewController *)self presentViewController:v14 animated:1 completion:0];
}

uint64_t __99__HKAuthorizationSettingsViewController_authorizationController_subTypesEnabled_forType_inSection___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isPrompting];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 48) setEnabled:0 forType:*(*(&v10 + 1) + 8 * v7++) inSection:*(a1 + 64) commit:{v2 ^ 1u, v10}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 48) setEnabled:0 forType:*(a1 + 56) inSection:*(a1 + 64) commit:v2 ^ 1u];
  v8 = [*(a1 + 32) tableView];
  [v8 reloadData];

  return [*(a1 + 32) updateAllowButtonEnabledState];
}

- (id)sectionsForAuthController:(id)a3
{
  v4 = [(HKAuthorizationSettingsViewController *)self source];
  if ([v4 _isSiri])
  {
    v5 = [(HKAuthorizationSettingsViewController *)self isPrompting];

    if (!v5)
    {
      v6 = &unk_1F43812E8;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(HKAuthorizationSettingsViewController *)self source];
  if ([v7 _isResearchStudy])
  {
    v8 = [(HKAuthorizationSettingsViewController *)self isPrompting];

    if (v8)
    {
      [v6 addObject:&unk_1F4383A48];
    }
  }

  else
  {
  }

  v9 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController countOfTypesInSection:4];
  if (v9 | [(HKSourceAuthorizationController *)self->_sourceAuthorizationController countOfTypesInSection:6])
  {
    [v6 addObject:&unk_1F4383A60];
  }

  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplayHealthRecordsRequests])
  {
    [v6 addObject:&unk_1F4383A78];
  }

  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplaySharingSection])
  {
    [v6 addObject:&unk_1F4383A90];
  }

  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplayReadingSection])
  {
    [v6 addObject:&unk_1F4383AA8];
  }

  v10 = [(HKAuthorizationSettingsViewController *)self source];
  if ([v10 _isApplication])
  {
    v11 = [(HKAuthorizationSettingsViewController *)self researchStudyUsageDescription];
    v12 = [v11 length];

    if (v12)
    {
      [v6 addObject:&unk_1F4383AC0];
      if (![(HKAuthorizationSettingsViewController *)self isPrompting])
      {
        [v6 addObject:&unk_1F4383AD8];
      }
    }
  }

  else
  {
  }

LABEL_22:

  return v6;
}

- (BOOL)_shouldDisplaySharingSection
{
  v2 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:4];
  v3 = [v2 count] != 0;

  return v3;
}

- (int64_t)authorizationSectionForSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_actualSections objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)_typeForIndexPath:(id)a3 section:(int64_t *)a4
{
  v7 = a3;
  v8 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [v7 section]);
  if (a4)
  {
    *a4 = v8;
  }

  v9 = 0;
  if (v8 <= 4)
  {
    if (v8 < 3)
    {
      goto LABEL_19;
    }

    if (v8 == 3)
    {
      v9 = [MEMORY[0x1E696C2E0] documentTypeForIdentifier:*MEMORY[0x1E696B7C0]];
      goto LABEL_19;
    }

    if (v8 != 4)
    {
      goto LABEL_13;
    }

    v10 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:4];
    goto LABEL_12;
  }

  if ((v8 - 7) < 2 || v8 == 5)
  {
    goto LABEL_19;
  }

  if (v8 == 6)
  {
    v10 = self->_readingTypeOrdering;
LABEL_12:
    v9 = v10;
  }

LABEL_13:
  v11 = [v7 row];
  if (v11 >= [v9 count])
  {
    [(HKAuthorizationSettingsViewController *)v7 _typeForIndexPath:a2 section:self, v9];
  }

  v12 = [v7 row];
  if (v12 >= [v9 count])
  {

    v9 = 0;
  }

  else
  {
    v13 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

    v9 = v13;
  }

LABEL_19:

  return v9;
}

- (BOOL)_enableToggleAtIndexPath:(id)a3
{
  v7 = 0;
  v4 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:a3 section:&v7];
  if (v7 == 3)
  {
    v7 = 6;
  }

  v5 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController isTypeEnabled:v4 inSection:?];

  return v5;
}

- (BOOL)shouldPresent
{
  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplayHealthRecordsRequests]|| [(HKAuthorizationSettingsViewController *)self _shouldDisplaySharingSection])
  {
    return 1;
  }

  return [(HKAuthorizationSettingsViewController *)self _shouldDisplayReadingSection];
}

- (id)_indexPathsInAuthorizationSection:(int64_t)a3
{
  v4 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:?];
  v5 = [v4 count];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:a3];
      [v6 addObject:v8];
    }
  }

  return v6;
}

- (void)_configurationFailedWithError:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [HKAuthorizationSettingsViewController _configurationFailedWithError:];
  }

  [(HKAuthorizationSettingsViewController *)self _finishWithError:v4];
}

- (HKHealthPrivacyServicePromptControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithHealthStore:(uint64_t)a1 style:(uint64_t)a2 source:typesToShare:typesToRead:shareDescription:updateDescription:researchStudyUsageDescription:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAuthorizationSettingsViewController.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"healthStore != nil"}];
}

- (void)_finishWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v4 = v3;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "%@: dismissing", v5, 0xCu);
}

void __75__HKAuthorizationSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "Failed to launch %{public}@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)pickerControllerDidFinish:error:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(&dword_1C3942000, v0, OS_LOG_TYPE_ERROR, "Document selection failed with error: %{public}@.", v1, 0xCu);
}

- (void)_typeForIndexPath:(uint64_t)a3 section:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"HKAuthorizationSettingsViewController.m" lineNumber:959 description:{@"Requested index %ld in section %ld does not exist in %@", objc_msgSend(a1, "row"), objc_msgSend(a1, "section"), a4}];
}

- (void)_configurationFailedWithError:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(&dword_1C3942000, v0, OS_LOG_TYPE_ERROR, "Failed to complete configuration: %{public}@", v1, 0xCu);
}

@end