@interface HKAuthorizationSettingsViewController
- (BOOL)_enableToggleAtIndexPath:(id)path;
- (BOOL)_shouldDisplaySharingSection;
- (BOOL)shouldPresent;
- (HKAuthorizationSettingsViewController)initWithHealthStore:(id)store style:(int64_t)style source:(id)source typesToShare:(id)share typesToRead:(id)read shareDescription:(id)description updateDescription:(id)updateDescription researchStudyUsageDescription:(id)self0;
- (HKHealthPrivacyServicePromptControllerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_authorizationSettingCellForRowAtIndexPath:(id)path;
- (id)_headerIcon;
- (id)_indexPathsInAuthorizationSection:(int64_t)section;
- (id)_localizedNameForSection:(int64_t)section type:(id)type;
- (id)_localizedSourceExplanationWithDescription:(id)description forReadingSection:(BOOL)section;
- (id)_openAppCell;
- (id)_researchStudyExplanationCell;
- (id)_specialCellWithIdentifier:(id)identifier;
- (id)_toggleAllCell;
- (id)_typeForIndexPath:(id)path section:(int64_t *)section;
- (id)sectionsForAuthController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)authorizationSectionForSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addCancelAndDoneButtons;
- (void)_configurationFailedWithError:(id)error;
- (void)_configureTableView;
- (void)_didFetchBackgroundAppRefreshStatus:(BOOL)status;
- (void)_displayGuestModeAlertWithCompletion:(id)completion;
- (void)_done:(id)_done;
- (void)_fetchBackgroundAppRefreshStatusWithHandler:(id)handler;
- (void)_finishWithError:(id)error;
- (void)authorizationController:(id)controller parentTypeIsDisabled:(id)disabled forType:(id)type inSection:(int64_t)section;
- (void)authorizationController:(id)controller subTypesEnabled:(id)enabled forType:(id)type inSection:(int64_t)section;
- (void)pickerControllerDidFinish:(id)finish error:(id)error;
- (void)reloadAuthorizationSettings;
- (void)setSource:(id)source;
- (void)sourceConfigure;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAllowButtonEnabledState;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKAuthorizationSettingsViewController

- (id)_headerIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"healthauthorization_icon_large" inBundle:v3];

  return v4;
}

- (HKAuthorizationSettingsViewController)initWithHealthStore:(id)store style:(int64_t)style source:(id)source typesToShare:(id)share typesToRead:(id)read shareDescription:(id)description updateDescription:(id)updateDescription researchStudyUsageDescription:(id)self0
{
  usageDescriptionCopy3 = usageDescription;
  storeCopy = store;
  sourceCopy = source;
  sourceCopy2 = source;
  shareCopy = share;
  shareCopy2 = share;
  readCopy = read;
  readCopy2 = read;
  descriptionCopy = description;
  updateDescriptionCopy = updateDescription;
  usageDescriptionCopy2 = usageDescription;
  if (!storeCopy)
  {
    [HKAuthorizationSettingsViewController initWithHealthStore:a2 style:self source:? typesToShare:? typesToRead:? shareDescription:? updateDescription:? researchStudyUsageDescription:?];
  }

  styleCopy = style;
  if (style == 1)
  {
    selfCopy2 = self;
    _headerIcon = [(HKAuthorizationSettingsViewController *)self _headerIcon];
    v36 = shareCopy2;
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = v23 = description;
    v35 = storeCopy;
    v25 = [v24 localizedStringForKey:@"HEALTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v26 = MEMORY[0x1E696AEC0];
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v28 = [v27 localizedStringForKey:@"%@_WOULD_LIKE_TO_ACCESS_YOUR_HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    name = [sourceCopy2 name];
    v30 = v26;
    description = v23;
    usageDescriptionCopy3 = usageDescription;
    v31 = [v30 stringWithFormat:v28, name];

    storeCopy = v35;
    shareCopy2 = v36;
  }

  else
  {
    v25 = 0;
    v31 = 0;
    _headerIcon = 0;
    selfCopy2 = self;
  }

  v46.receiver = selfCopy2;
  v46.super_class = HKAuthorizationSettingsViewController;
  v32 = [(OBTableWelcomeController *)&v46 initWithTitle:v25 detailText:v31 icon:_headerIcon adoptTableViewScrollView:1];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_healthStore, store);
    v33->_style = styleCopy;
    objc_storeStrong(&v33->_source, sourceCopy);
    objc_storeStrong(&v33->_typesToRead, readCopy);
    objc_storeStrong(&v33->_typesToShare, shareCopy);
    objc_storeStrong(&v33->_updateDescription, updateDescription);
    objc_storeStrong(&v33->_shareDescription, description);
    objc_storeStrong(&v33->_researchStudyUsageDescription, usageDescriptionCopy3);
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
    name = [(HKSource *)self->_source name];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setTitle:name];
  }

  sourceAuthorizationController = [(HKAuthorizationSettingsViewController *)self sourceAuthorizationController];
  v11 = [(HKAuthorizationSettingsViewController *)self sectionsForAuthController:sourceAuthorizationController];
  [(HKAuthorizationSettingsViewController *)self setActualSections:v11];

  if (![(HKSource *)self->_source _isAllowedBackgroundDelivery])
  {
    self->_requiresBackgroundAppRefreshDisclosure = 0;
    goto LABEL_9;
  }

  _isResearchStudy = [(HKSource *)self->_source _isResearchStudy];
  self->_requiresBackgroundAppRefreshDisclosure = _isResearchStudy ^ 1;
  if (_isResearchStudy)
  {
LABEL_9:
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];

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

- (void)setSource:(id)source
{
  objc_storeStrong(&self->_source, source);

  [(HKAuthorizationSettingsViewController *)self sourceConfigure];
}

- (void)_didFetchBackgroundAppRefreshStatus:(BOOL)status
{
  self->_isBackgroundAppRefreshEnabled = status;
  self->_hasFetchedBackgroundAppRefreshStatus = 1;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)reloadAuthorizationSettings
{
  [(HKSourceAuthorizationController *)self->_sourceAuthorizationController reload];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)_configureTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  traitCollection = [(HKAuthorizationSettingsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    view = [(HKAuthorizationSettingsViewController *)self view];
    [view setBackgroundColor:systemGroupedBackgroundColor];

    view2 = [(HKAuthorizationSettingsViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 setBackgroundColor:backgroundColor];
  }
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = HKAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v23 viewDidLoad];
  [(HKAuthorizationSettingsViewController *)self _configureTableView];
  navigationController = [(HKAuthorizationSettingsViewController *)self navigationController];
  [navigationController setModalInPresentation:1];

  headerView = [(HKAuthorizationSettingsViewController *)self headerView];
  [headerView setAllowFullWidthIcon:1];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView hk_onboardingListEdgeInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 _setSectionContentInset:{v7, v9, v11, v13}];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 _setSectionCornerRadius:26.0];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setEstimatedRowHeight:52.0];

  v17 = *MEMORY[0x1E69DE3D0];
  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setRowHeight:v17];

  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    [(HKAuthorizationSettingsViewController *)self _addCancelAndDoneButtons];
    [(HKAuthorizationSettingsViewController *)self setModalInPresentation:1];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view = [(HKAuthorizationSettingsViewController *)self view];
    [view setBackgroundColor:systemBackgroundColor];

    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    tableView6 = [(OBTableWelcomeController *)self tableView];
    [tableView6 setBackgroundColor:systemBackgroundColor2];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v4 viewWillAppear:appear];
  [(HKAuthorizationSettingsViewController *)self reloadAuthorizationSettings];
}

- (void)_addCancelAndDoneButtons
{
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"HEALTH_ACCESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [navigationItem setTitle:v4];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  cancelButtonItem = self->_cancelButtonItem;
  self->_cancelButtonItem = linkButton;

  v7 = self->_cancelButtonItem;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"AUTHORIZATION_PROMPT_DONT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBLinkTrayButton *)v7 setTitle:v9 forState:0];

  [(OBLinkTrayButton *)self->_cancelButtonItem addTarget:self action:sel__done_ forControlEvents:64];
  [(OBLinkTrayButton *)self->_cancelButtonItem setAccessibilityIdentifier:@"UIA.Health.DoNotAllow.Button"];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  doneButtonItem = self->_doneButtonItem;
  self->_doneButtonItem = boldButton;

  v12 = self->_doneButtonItem;
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"AUTHORIZATION_PROMPT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(OBBoldTrayButton *)v12 setTitle:v14 forState:0];

  [(OBBoldTrayButton *)self->_doneButtonItem addTarget:self action:sel__done_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_doneButtonItem setAccessibilityIdentifier:@"UIA.Health.Allow.Button"];
  v15 = self->_doneButtonItem;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(OBBoldTrayButton *)v15 setTintColor:systemBlueColor];

  [(OBBoldTrayButton *)self->_doneButtonItem setEnabled:0];
  buttonTray = [(HKAuthorizationSettingsViewController *)self buttonTray];
  [buttonTray addButton:self->_doneButtonItem];

  buttonTray2 = [(HKAuthorizationSettingsViewController *)self buttonTray];
  [buttonTray2 addButton:self->_cancelButtonItem];
}

- (void)_done:(id)_done
{
  v36 = *MEMORY[0x1E69E9840];
  _doneCopy = _done;
  if (self->_doneButtonItem == _doneCopy)
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

- (void)_finishWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] isiPad])
  {
    v6 = [HKiPadHealthSyncEnablement isSyncPromptedForHealthKit:self->_healthStore];

    if (!v6)
    {
      delegate2 = [[HKHealthSyncDisplayController alloc] initWithHealthStore:self->_healthStore source:self->_source];
      delegate = [(HKAuthorizationSettingsViewController *)self delegate];
      [(HKHealthSyncDisplayController *)delegate2 setDelegate:delegate];

      _HKInitializeLogging();
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = objc_opt_class();
        v10 = v15;
        _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "%@: Prompting health sync view controller", &v14, 0xCu);
      }

      [(HKAuthorizationSettingsViewController *)self presentViewController:delegate2 animated:1 completion:0];
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

  delegate2 = [(HKAuthorizationSettingsViewController *)self delegate];
  [(HKHealthSyncDisplayController *)delegate2 promptControllerDidFinish:self error:errorCopy];
LABEL_12:
}

- (void)updateAllowButtonEnabledState
{
  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    anyTypeEnabled = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController anyTypeEnabled];
    doneButtonItem = self->_doneButtonItem;

    [(OBBoldTrayButton *)doneButtonItem setEnabled:anyTypeEnabled];
  }
}

- (void)_displayGuestModeAlertWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v17 = completionCopy;
  v13 = completionCopy;
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

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
  v6 = v5 - 1;
  if (v5 - 1) < 8 && ((0xC7u >> v6))
  {
    return qword_1C3D5D4D0[v6];
  }

  v8 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:v5];
  v7 = [v8 count];

  isPrompting = [(HKAuthorizationSettingsViewController *)self isPrompting];
  if (v5 == 6 && isPrompting)
  {
    v7 -= [(HKSourceAuthorizationController *)self->_sourceAuthorizationController isRequestingDocumentAuthorization];
  }

  return v7;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
  if (v4 != 5 && v4 != 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return HKUIOnePixel();
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
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
      name = [(HKSource *)self->_source name];
      v7 = [v8 stringWithFormat:v11, name];

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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section];
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
    selfCopy2 = self;
    v9 = 1;
  }

  else
  {
    if (v5 == 3)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"CLINICAL_DOCUMENTS_REQUEST_AUTH_DESCRIPTION %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      name = [(HKSource *)self->_source name];
      v6 = [v11 stringWithFormat:v13, name];

      goto LABEL_12;
    }

    if (v5 != 4)
    {
      goto LABEL_12;
    }

    shareDescription = self->_updateDescription;
    selfCopy2 = self;
    v9 = 0;
  }

  v10 = [(HKAuthorizationSettingsViewController *)selfCopy2 _localizedSourceExplanationWithDescription:shareDescription forReadingSection:v9];
LABEL_11:
  v6 = v10;
LABEL_12:

  return v6;
}

- (id)_localizedSourceExplanationWithDescription:(id)description forReadingSection:(BOOL)section
{
  sectionCopy = section;
  descriptionCopy = description;
  _isResearchStudy = [(HKSource *)self->_source _isResearchStudy];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = v8;
  if (_isResearchStudy)
  {
    v10 = @"STUDY_EXPLANATION_%@";
  }

  else
  {
    v10 = @"APP_EXPLANATION_%@";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if (descriptionCopy)
  {
    descriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v11, descriptionCopy];
    if (descriptionCopy)
    {
      v13 = !sectionCopy;
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

        v19 = [descriptionCopy stringByAppendingString:v18];

        descriptionCopy = v19;
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
    descriptionCopy = 0;
  }

  return descriptionCopy;
}

- (void)_fetchBackgroundAppRefreshStatusWithHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
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

  mEMORY[0x1E699A4B8] = [MEMORY[0x1E699A4B8] sharedScheduler];
  bundleIdentifier = [(HKSource *)self->_source bundleIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__HKAuthorizationSettingsViewController__fetchBackgroundAppRefreshStatusWithHandler___block_invoke;
  v13[3] = &unk_1E81B8958;
  v14 = bundleIdentifier;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = bundleIdentifier;
  [mEMORY[0x1E699A4B8] backgroundAppRefreshEnabledForApp:v12 withHandler:v13];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [pathCopy section]);
  v7 = 0;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      _researchStudyExplanationCell = [(HKAuthorizationSettingsViewController *)self _researchStudyExplanationCell];
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_15;
      }

      _researchStudyExplanationCell = [(HKAuthorizationSettingsViewController *)self _toggleAllCell];
    }
  }

  else if ((v6 - 3) < 2 || v6 == 6)
  {
    _researchStudyExplanationCell = [(HKAuthorizationSettingsViewController *)self _authorizationSettingCellForRowAtIndexPath:pathCopy];
  }

  else
  {
    if (v6 != 8)
    {
      goto LABEL_15;
    }

    _researchStudyExplanationCell = [(HKAuthorizationSettingsViewController *)self _openAppCell];
  }

  v7 = _researchStudyExplanationCell;
LABEL_15:
  if ([(HKAuthorizationSettingsViewController *)self isPrompting])
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v7 setBackgroundColor:secondarySystemBackgroundColor];
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
  textLabel = [v3 textLabel];
  [textLabel setNumberOfLines:0];

  researchStudyUsageDescription = [(HKAuthorizationSettingsViewController *)self researchStudyUsageDescription];
  textLabel2 = [v3 textLabel];
  [textLabel2 setText:researchStudyUsageDescription];

  [v3 setSelectionStyle:0];

  return v3;
}

- (id)_toggleAllCell
{
  selfCopy = self;
  v3 = [(HKAuthorizationSettingsViewController *)self _specialCellWithIdentifier:@"ToggleAllCell"];
  LODWORD(selfCopy) = [(HKSourceAuthorizationController *)selfCopy->_sourceAuthorizationController allTypesEnabled];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  if (selfCopy)
  {
    v6 = @"DISABLE_ALL_CATEGORIES";
  }

  else
  {
    v6 = @"ENABLE_ALL_CATEGORIES";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  textLabel = [v3 textLabel];
  [textLabel setText:v7];

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
  source = [(HKAuthorizationSettingsViewController *)self source];
  name = [source name];
  v9 = [v4 stringWithFormat:v6, name];
  textLabel = [v3 textLabel];
  [textLabel setText:v9];

  return v3;
}

- (id)_specialCellWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:identifierCopy];

  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:identifierCopy];
  }

  v7 = HKHealthKeyColor();
  textLabel = [v6 textLabel];
  [textLabel setTextColor:v7];

  return v6;
}

- (id)_localizedNameForSection:(int64_t)section type:(id)type
{
  typeCopy = type;
  if ([(HKAuthorizationSettingsViewController *)self authorizationSectionForSection:section]== 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      displayName = [v7 localizedStringForKey:@"CLINICAL_DOCUMENT_REQUESTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_6:

      goto LABEL_8;
    }
  }

  if ([typeCopy isClinicalType])
  {
    v9 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
    v7 = [v9 displayTypeForObjectTypeUnifyingBloodPressureTypes:typeCopy];

    localization = [v7 localization];
    displayName = [localization displayName];

    goto LABEL_6;
  }

  displayName = [typeCopy hk_localizedName];
LABEL_8:

  return displayName;
}

- (id)_authorizationSettingCellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [tableView dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCell"];

  if (!v6)
  {
    v6 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AuthorizationSettingsCell"];
    [(HKSwitchTableViewCell *)v6 setDelegate:self];
    [(HKSwitchTableViewCell *)v6 setCentersIcon:1];
  }

  v7 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:pathCopy section:0];
  v8 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
  v9 = [v8 displayTypeForObjectTypeUnifyingBloodPressureTypes:v7];

  v10 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [pathCopy section]);
  v32 = v9;
  if (v10 == 6)
  {
    isDocument = [v9 isDocument];
  }

  else
  {
    isDocument = 0;
  }

  [(HKSwitchTableViewCell *)v6 setShouldHideSwitch:isDocument];
  objectAuthorizationStatusesForDocuments = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController objectAuthorizationStatusesForDocuments];
  v13 = [objectAuthorizationStatusesForDocuments count];

  if (isDocument && v13)
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
    parentType = [v7 parentType];

    if (parentType)
    {
      v18 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
      parentType2 = [v7 parentType];
      v16 = [v18 displayTypeForObjectTypeUnifyingBloodPressureTypes:parentType2];
    }

    else
    {
      v16 = v32;
    }
  }

  v20 = -[HKAuthorizationSettingsViewController _localizedNameForSection:type:](self, "_localizedNameForSection:type:", [pathCopy section], v7);
  [(HKSwitchTableViewCell *)v6 setDisplayText:v20];
  listIcon = [v16 listIcon];
  v22 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v23 = [listIcon imageByApplyingSymbolConfiguration:v22];

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
  whitespaceAndNewlineCharacterSet = [v25 whitespaceAndNewlineCharacterSet];
  v28 = [v20 hk_stringByRemovingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v29 = [(__CFString *)v26 stringByAppendingFormat:@".%@.SwitchCell", v28];

  [(HKSwitchTableViewCell *)v6 setAccessibilityIdentifier:v29];
  [(HKSwitchTableViewCell *)v6 setOn:[(HKAuthorizationSettingsViewController *)self _enableToggleAtIndexPath:pathCopy]];
  textLabel = [(HKSwitchTableViewCell *)v6 textLabel];
  [textLabel setNumberOfLines:3];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [pathCopy section]);
  v9 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:pathCopy section:0];

  switch(v8)
  {
    case 8:
      source = [(HKAuthorizationSettingsViewController *)self source];
      bundleIdentifier = [source bundleIdentifier];

      serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __75__HKAuthorizationSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v22[3] = &unk_1E81B8980;
      v23 = bundleIdentifier;
      v21 = bundleIdentifier;
      [serviceWithDefaultShellEndpoint openApplication:v21 withOptions:0 completion:v22];

      break;
    case 6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectAuthorizationStatusesForDocuments = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController objectAuthorizationStatusesForDocuments];
        v13 = [objectAuthorizationStatusesForDocuments count];

        if (v13)
        {
          objectAuthorizationStatusesForDocuments2 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController objectAuthorizationStatusesForDocuments];
          v15 = [[HKDocumentPickerViewController alloc] initWithDocumentAuthorizations:objectAuthorizationStatusesForDocuments2];
          [(HKDocumentPickerViewController *)v15 setSource:self->_source];
          hk_localizedName = [v9 hk_localizedName];
          [(HKDocumentPickerViewController *)v15 setTitle:hk_localizedName];

          navigationController = [(HKAuthorizationSettingsViewController *)self navigationController];
          [navigationController pushViewController:v15 animated:1];
        }
      }

      break;
    case 2:
      isPrompting = [(HKAuthorizationSettingsViewController *)self isPrompting];
      v11 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController allTypesEnabled]^ 1;
      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setEnabled:v11 forAllTypesInSection:4 commit:!isPrompting];
      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController setEnabled:v11 forAllTypesInSection:6 commit:!isPrompting];
      if ((v11 & 1) == 0 && !isPrompting)
      {
        [(HKSourceAuthorizationController *)self->_sourceAuthorizationController resetObjectAuthorizationStatuses];
      }

      [viewCopy reloadData];
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

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  changedCopy = changed;
  tableView = [(OBTableWelcomeController *)self tableView];
  v8 = [tableView indexPathForCell:changedCopy];

  v12 = 0;
  v9 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:v8 section:&v12];
  isPrompting = [(HKAuthorizationSettingsViewController *)self isPrompting];
  if (v12 == 3)
  {
    v12 = 6;
    if (!isPrompting)
    {
      [(HKSourceAuthorizationController *)self->_sourceAuthorizationController resetObjectAuthorizationStatuses];
    }
  }

  [HKSourceAuthorizationController setEnabled:"setEnabled:forType:inSection:commit:" forType:valueCopy inSection:v9 commit:?];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 reloadData];

  [(HKAuthorizationSettingsViewController *)self updateAllowButtonEnabledState];
}

- (void)pickerControllerDidFinish:(id)finish error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  errorCopy = error;
  if (errorCopy)
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
    allSamples = [finishCopy allSamples];
    v10 = [allSamples countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(allSamples);
          }

          uUID = [*(*(&v27 + 1) + 8 * i) UUID];
          [v8 setObject:v13 forKeyedSubscript:uUID];
        }

        v11 = [allSamples countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    enabledSamples = [finishCopy enabledSamples];
    v17 = [enabledSamples countByEnumeratingWithState:&v23 objects:v31 count:16];
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
            objc_enumerationMutation(enabledSamples);
          }

          uUID2 = [*(*(&v23 + 1) + 8 * j) UUID];
          [v8 setObject:v20 forKeyedSubscript:uUID2];
        }

        v18 = [enabledSamples countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }

    [(HKSourceAuthorizationController *)self->_sourceAuthorizationController commitObjectAuthorizationStatuses:v8];
  }
}

- (void)authorizationController:(id)controller parentTypeIsDisabled:(id)disabled forType:(id)type inSection:(int64_t)section
{
  controllerCopy = controller;
  disabledCopy = disabled;
  typeCopy = type;
  hk_localizedNameForAuthSheet = [typeCopy hk_localizedNameForAuthSheet];
  v38 = hk_localizedNameForAuthSheet;
  hk_localizedNameForAuthSheet2 = [disabledCopy hk_localizedNameForAuthSheet];
  v12 = @"ENABLING_%@_TO_WRITE_WILL_ENABLE_%@";
  if (section == 6)
  {
    v12 = @"ENABLING_%@_TO_READ_WILL_ENABLE_%@";
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = MEMORY[0x1E696AAE8];
  v15 = v12;
  v16 = [v14 bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:v15 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v37 = [v13 stringWithFormat:v17, hk_localizedNameForAuthSheet, hk_localizedNameForAuthSheet2];

  v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v37 message:0 preferredStyle:0];
  v19 = MEMORY[0x1E69DC648];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"AUTHORIZATION_STATUS_CHANGE_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:0];
  [v18 addAction:v22];

  v23 = MEMORY[0x1E696AEC0];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"AUTHORIZATION_STATUS_ENABLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v26 = hk_localizedNameForAuthSheet2;
  v27 = [v23 stringWithFormat:v25, hk_localizedNameForAuthSheet2];

  v28 = MEMORY[0x1E69DC648];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __104__HKAuthorizationSettingsViewController_authorizationController_parentTypeIsDisabled_forType_inSection___block_invoke;
  v39[3] = &unk_1E81B89A8;
  v39[4] = self;
  v40 = controllerCopy;
  v42 = typeCopy;
  sectionCopy = section;
  v41 = disabledCopy;
  v29 = typeCopy;
  v30 = disabledCopy;
  v31 = controllerCopy;
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

- (void)authorizationController:(id)controller subTypesEnabled:(id)enabled forType:(id)type inSection:(int64_t)section
{
  controllerCopy = controller;
  enabledCopy = enabled;
  typeCopy = type;
  hk_localizedNameForAuthSheet = [typeCopy hk_localizedNameForAuthSheet];
  anyObject = [enabledCopy anyObject];
  hk_localizedNameForAuthSheet2 = [anyObject hk_localizedNameForAuthSheet];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"DISABLING_%@_WILL_DISABLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v31 = [v11 stringWithFormat:v13, hk_localizedNameForAuthSheet, hk_localizedNameForAuthSheet2];

  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v31 message:0 preferredStyle:0];
  v15 = MEMORY[0x1E69DC648];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"AUTHORIZATION_STATUS_CHANGE_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:0];
  [v14 addAction:v18];

  v19 = MEMORY[0x1E696AEC0];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"AUTHORIZATION_STATUS_DISABLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v22 = [v19 stringWithFormat:v21, hk_localizedNameForAuthSheet2];

  v23 = MEMORY[0x1E69DC648];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__HKAuthorizationSettingsViewController_authorizationController_subTypesEnabled_forType_inSection___block_invoke;
  v34[3] = &unk_1E81B89A8;
  v34[4] = self;
  v35 = enabledCopy;
  v37 = typeCopy;
  sectionCopy = section;
  v36 = controllerCopy;
  v24 = typeCopy;
  v25 = controllerCopy;
  v26 = enabledCopy;
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

- (id)sectionsForAuthController:(id)controller
{
  source = [(HKAuthorizationSettingsViewController *)self source];
  if ([source _isSiri])
  {
    isPrompting = [(HKAuthorizationSettingsViewController *)self isPrompting];

    if (!isPrompting)
    {
      array = &unk_1F43812E8;
      goto LABEL_22;
    }
  }

  else
  {
  }

  array = [MEMORY[0x1E695DF70] array];
  source2 = [(HKAuthorizationSettingsViewController *)self source];
  if ([source2 _isResearchStudy])
  {
    isPrompting2 = [(HKAuthorizationSettingsViewController *)self isPrompting];

    if (isPrompting2)
    {
      [array addObject:&unk_1F4383A48];
    }
  }

  else
  {
  }

  v9 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController countOfTypesInSection:4];
  if (v9 | [(HKSourceAuthorizationController *)self->_sourceAuthorizationController countOfTypesInSection:6])
  {
    [array addObject:&unk_1F4383A60];
  }

  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplayHealthRecordsRequests])
  {
    [array addObject:&unk_1F4383A78];
  }

  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplaySharingSection])
  {
    [array addObject:&unk_1F4383A90];
  }

  if ([(HKAuthorizationSettingsViewController *)self _shouldDisplayReadingSection])
  {
    [array addObject:&unk_1F4383AA8];
  }

  source3 = [(HKAuthorizationSettingsViewController *)self source];
  if ([source3 _isApplication])
  {
    researchStudyUsageDescription = [(HKAuthorizationSettingsViewController *)self researchStudyUsageDescription];
    v12 = [researchStudyUsageDescription length];

    if (v12)
    {
      [array addObject:&unk_1F4383AC0];
      if (![(HKAuthorizationSettingsViewController *)self isPrompting])
      {
        [array addObject:&unk_1F4383AD8];
      }
    }
  }

  else
  {
  }

LABEL_22:

  return array;
}

- (BOOL)_shouldDisplaySharingSection
{
  v2 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:4];
  v3 = [v2 count] != 0;

  return v3;
}

- (int64_t)authorizationSectionForSection:(int64_t)section
{
  v3 = [(NSArray *)self->_actualSections objectAtIndexedSubscript:section];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)_typeForIndexPath:(id)path section:(int64_t *)section
{
  pathCopy = path;
  v8 = -[HKAuthorizationSettingsViewController authorizationSectionForSection:](self, "authorizationSectionForSection:", [pathCopy section]);
  if (section)
  {
    *section = v8;
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
  v11 = [pathCopy row];
  if (v11 >= [v9 count])
  {
    [(HKAuthorizationSettingsViewController *)pathCopy _typeForIndexPath:a2 section:self, v9];
  }

  v12 = [pathCopy row];
  if (v12 >= [v9 count])
  {

    v9 = 0;
  }

  else
  {
    v13 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v9 = v13;
  }

LABEL_19:

  return v9;
}

- (BOOL)_enableToggleAtIndexPath:(id)path
{
  v7 = 0;
  v4 = [(HKAuthorizationSettingsViewController *)self _typeForIndexPath:path section:&v7];
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

- (id)_indexPathsInAuthorizationSection:(int64_t)section
{
  v4 = [(HKSourceAuthorizationController *)self->_sourceAuthorizationController typesInSection:?];
  v5 = [v4 count];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:section];
      [v6 addObject:v8];
    }
  }

  return v6;
}

- (void)_configurationFailedWithError:(id)error
{
  errorCopy = error;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [HKAuthorizationSettingsViewController _configurationFailedWithError:];
  }

  [(HKAuthorizationSettingsViewController *)self _finishWithError:errorCopy];
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