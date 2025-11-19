@interface HKHealthConceptPickerViewController
+ (id)_cellImageForMedicationType:(id)a3 healthStore:(id)a4;
+ (id)_displayTypeForMedicationType:(id)a3 healthStore:(id)a4;
+ (id)_localizedSourceExplanationWithDescription:(id)a3;
- (BOOL)_allUpdatedStatusEnabledForUserAnnotatedMedications:(id)a3;
- (HKHealthConceptPickerViewController)initWithHealthStore:(id)a3 source:(id)a4 userAnnotatedMedications:(id)a5;
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (NSMutableDictionary)updatedUserAnnotatedMedications;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_explanationTextForSource:(id)a3;
- (id)_headerIcon;
- (id)_noDataTableViewCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_numberOfUpdatedStatusEnabledForUserAnnotatedMedications:(id)a3;
- (int64_t)authorizationSectionForSection:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addCancelAndDoneButtons;
- (void)_disableAllStatusesForSection:(int64_t)a3;
- (void)_enableAllStatusesForSection:(int64_t)a3;
- (void)_finishWithError:(id)a3;
- (void)_setUpTableView;
- (void)_updateAllowButtonEnabledState;
- (void)allowButtonTapped:(id)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)disallowButtonTapped:(id)a3;
- (void)headerViewDidTapTurnOffAll:(id)a3;
- (void)headerViewDidTapTurnOnAll:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKHealthConceptPickerViewController

- (HKHealthConceptPickerViewController)initWithHealthStore:(id)a3 source:(id)a4 userAnnotatedMedications:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"AUTH_SHEET_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];

  v14 = [(HKHealthConceptPickerViewController *)self _explanationTextForSource:v10];
  v15 = [(HKHealthConceptPickerViewController *)self _headerIcon];
  v25.receiver = self;
  v25.super_class = HKHealthConceptPickerViewController;
  v16 = [(OBTableWelcomeController *)&v25 initWithTitle:v13 detailText:v14 icon:v15 adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_healthStore, a3);
    objc_storeStrong(&v17->_source, a4);
    objc_storeStrong(&v17->_samplesPendingAuthorizationUpdate, a5);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeUserAnnotatedMedications = v17->_activeUserAnnotatedMedications;
    v17->_activeUserAnnotatedMedications = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    archivedUserAnnotatedMedications = v17->_archivedUserAnnotatedMedications;
    v17->_archivedUserAnnotatedMedications = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updatedStatuses = v17->_updatedStatuses;
    v17->_updatedStatuses = v22;

    v17->_allMedicationsEnabled = 0;
    v17->_allArchivedMedicationsEnabled = 0;
  }

  return v17;
}

- (id)_explanationTextForSource:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_DATA_WITH_APP_EXPLANATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SHARE_DATA_WITH_%@_TITLECASED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  v10 = [v4 name];
  v11 = [v7 stringWithFormat:v9, v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v4 name];

  v14 = [v12 stringWithFormat:v6, v13];
  v15 = [v12 stringWithFormat:@"%@ \r\r%@", v14, v11];

  return v15;
}

- (id)_headerIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"healthauthorization_icon_large" inBundle:v3];

  return v4;
}

- (void)viewDidLoad
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = HKHealthConceptPickerViewController;
  [(OBTableWelcomeController *)&v26 viewDidLoad];
  v3 = [(HKHealthConceptPickerViewController *)self navigationController];
  [v3 setModalInPresentation:1];

  v4 = [(HKHealthConceptPickerViewController *)self headerView];
  [v4 setAllowFullWidthIcon:1];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_samplesPendingAuthorizationUpdate;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 isArchived])
        {
          v11 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
        }

        else
        {
          v11 = &OBJC_IVAR___HKHealthConceptPickerViewController__activeUserAnnotatedMedications;
        }

        [*(&self->super.super.super.super.super.super.isa + *v11) addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if ([(NSMutableArray *)self->_activeUserAnnotatedMedications count])
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"MEDICATIONS_SECTION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [v12 addObject:v14];
  }

  if ([(NSMutableArray *)self->_archivedUserAnnotatedMedications count])
  {
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"ARCHIVED_MEDICATIONS_SECTION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [v12 addObject:v16];
  }

  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v18 = [v17 localizedStringForKey:@"MEDICATIONS_SECTION_EMPTY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [v12 addObject:v18];
  }

  v19 = [v12 copy];
  sectionTitles = self->_sectionTitles;
  self->_sectionTitles = v19;

  [(HKHealthConceptPickerViewController *)self _addCancelAndDoneButtons];
  [(HKHealthConceptPickerViewController *)self _setUpTableView];
  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = HKHealthConceptPickerViewController;
  [(OBTableWelcomeController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = HKHealthConceptPickerViewController;
  [(OBBaseWelcomeController *)&v3 viewDidAppear:a3];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = HKHealthConceptPickerViewController;
  [(OBTableWelcomeController *)&v8 viewDidLayoutSubviews];
  v3 = [(HKHealthConceptPickerViewController *)self navigationController];
  v4 = [v3 navigationBar];
  if ([v4 isTranslucent])
  {
    v5 = [(OBTableWelcomeController *)self tableView];
    [v5 contentInset];
    v7 = v6;

    if (v7 == 44.0)
    {
      return;
    }

    v3 = [(OBTableWelcomeController *)self tableView];
    [v3 setContentInset:{44.0, 0.0, 0.0, 0.0}];
  }

  else
  {
  }
}

- (void)_setUpTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(OBTableWelcomeController *)self tableView];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [(OBTableWelcomeController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[HKSwitchTableViewCell reuseIdentifier];
  [v9 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [(OBTableWelcomeController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  [v12 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = *MEMORY[0x1E69DE3D0];
  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setRowHeight:v15];

  v26 = [(OBTableWelcomeController *)self tableView];
  [v26 hk_onboardingListEdgeInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(OBTableWelcomeController *)self tableView];
  [v25 _setSectionContentInset:{v18, v20, v22, v24}];
}

- (void)_addCancelAndDoneButtons
{
  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
    [v3 setAccessibilityIdentifier:@"UIA.Health.CancelOnly.Button"];
    v4 = v3;
    v5 = [(OBBaseWelcomeController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];
  }

  else
  {
    v4 = [MEMORY[0x1E69B7D38] linkButton];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"AUTHORIZATION_PROMPT_DONT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [v4 setTitle:v7 forState:0];

    [v4 addTarget:self action:sel_disallowButtonTapped_ forControlEvents:64];
    [v4 setAccessibilityIdentifier:@"UIA.Health.DoNotAllow.Button"];
    v8 = [MEMORY[0x1E69B7D00] boldButton];
    doneButtonItem = self->_doneButtonItem;
    self->_doneButtonItem = v8;

    v10 = self->_doneButtonItem;
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"AUTHORIZATION_PROMPT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [(OBBoldTrayButton *)v10 setTitle:v12 forState:0];

    [(OBBoldTrayButton *)self->_doneButtonItem addTarget:self action:sel_allowButtonTapped_ forControlEvents:64];
    [(OBBoldTrayButton *)self->_doneButtonItem setAccessibilityIdentifier:@"UIA.Health.Allow.Button"];
    v13 = self->_doneButtonItem;
    v14 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(OBBoldTrayButton *)v13 setTintColor:v14];

    [(OBBoldTrayButton *)self->_doneButtonItem setEnabled:0];
    v15 = [(HKHealthConceptPickerViewController *)self buttonTray];
    [v15 addButton:self->_doneButtonItem];

    v5 = [(HKHealthConceptPickerViewController *)self buttonTray];
    [v5 addButton:v4];
  }

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v18 localizedStringForKey:@"AUTH_SHEET_MEDICATIONS_NAV_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  v17 = [(OBBaseWelcomeController *)self navigationItem];
  [v17 setTitle:v16];
}

- (void)cancelButtonTapped:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [HKHealthConceptPickerViewController cancelButtonTapped:];
    }
  }

  [(HKHealthConceptPickerViewController *)self _finishWithError:0];
}

- (void)disallowButtonTapped:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [HKHealthConceptPickerViewController disallowButtonTapped:];
    }
  }

  activeUserAnnotatedMedications = self->_activeUserAnnotatedMedications;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__HKHealthConceptPickerViewController_disallowButtonTapped___block_invoke;
  v10[3] = &unk_1E81B7410;
  v10[4] = self;
  [(NSMutableArray *)activeUserAnnotatedMedications enumerateObjectsUsingBlock:v10];
  archivedUserAnnotatedMedications = self->_archivedUserAnnotatedMedications;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKHealthConceptPickerViewController_disallowButtonTapped___block_invoke_370;
  v9[3] = &unk_1E81B7410;
  v9[4] = self;
  [(NSMutableArray *)archivedUserAnnotatedMedications enumerateObjectsUsingBlock:v9];
  [(HKHealthConceptPickerViewController *)self _finishWithError:0];
}

void __60__HKHealthConceptPickerViewController_disallowButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v3 = [v4 identifier];
  [v2 setObject:&unk_1F4382590 forKeyedSubscript:v3];
}

void __60__HKHealthConceptPickerViewController_disallowButtonTapped___block_invoke_370(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v3 = [v4 identifier];
  [v2 setObject:&unk_1F4382590 forKeyedSubscript:v3];
}

- (void)allowButtonTapped:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [HKHealthConceptPickerViewController allowButtonTapped:];
    }
  }

  activeUserAnnotatedMedications = self->_activeUserAnnotatedMedications;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__HKHealthConceptPickerViewController_allowButtonTapped___block_invoke;
  v10[3] = &unk_1E81B7410;
  v10[4] = self;
  [(NSMutableArray *)activeUserAnnotatedMedications enumerateObjectsUsingBlock:v10];
  archivedUserAnnotatedMedications = self->_archivedUserAnnotatedMedications;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__HKHealthConceptPickerViewController_allowButtonTapped___block_invoke_2;
  v9[3] = &unk_1E81B7410;
  v9[4] = self;
  [(NSMutableArray *)archivedUserAnnotatedMedications enumerateObjectsUsingBlock:v9];
  [(HKHealthConceptPickerViewController *)self _finishWithError:0];
}

void __57__HKHealthConceptPickerViewController_allowButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1320);
  v11 = v3;
  v5 = [v3 medication];
  v6 = [v5 identifier];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = *(*(a1 + 32) + 1320);
    v9 = [v11 medication];
    v10 = [v9 identifier];
    [v8 setObject:&unk_1F4382590 forKeyedSubscript:v10];
  }
}

void __57__HKHealthConceptPickerViewController_allowButtonTapped___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1320);
  v11 = v3;
  v5 = [v3 medication];
  v6 = [v5 identifier];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = *(*(a1 + 32) + 1320);
    v9 = [v11 medication];
    v10 = [v9 identifier];
    [v8 setObject:&unk_1F4382590 forKeyedSubscript:v10];
  }
}

- (void)_updateAllowButtonEnabledState
{
  v3 = [(HKHealthConceptPickerViewController *)self _numberOfUpdatedStatusEnabledForUserAnnotatedMedications:self->_activeUserAnnotatedMedications];
  v4 = [(HKHealthConceptPickerViewController *)self _numberOfUpdatedStatusEnabledForUserAnnotatedMedications:self->_archivedUserAnnotatedMedications];
  if ((v4 + v3 < 0) ^ __OFADD__(v4, v3) | (v4 + v3 == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(HKHealthConceptPickerViewController *)self doneButtonItem];
  [v6 setEnabled:v5];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [HKHealthConceptPickerViewController _finishWithError:];
    }
  }

  v8 = [(HKHealthConceptPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HKHealthConceptPickerViewController *)self delegate];
    [v10 pickerControllerDidFinish:self error:v4];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 || ![(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    v5 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"MEDICATIONS_SECTION_EMPTY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  }

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = &OBJC_IVAR___HKHealthConceptPickerViewController__allArchivedMedicationsEnabled;
    v9 = @"ARCHIVED_MEDICATIONS_SECTION_TITLE";
LABEL_8:
    v10 = [HKAuthorizationHeaderView alloc];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    v7 = [(HKAuthorizationHeaderView *)v10 initWithTitle:v12 initialStateToTurnOnAll:(*(&self->super.super.super.super.super.super.isa + *v8) & 1) == 0 categoryTitle:0];

    goto LABEL_9;
  }

  if (!a4)
  {
    if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
    {
      v7 = 0;
      goto LABEL_10;
    }

    v8 = &OBJC_IVAR___HKHealthConceptPickerViewController__allMedicationsEnabled;
    v9 = @"MEDICATIONS_SECTION_TITLE";
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:
  [(HKAuthorizationHeaderView *)v7 setTag:a4];
  [(HKAuthorizationHeaderView *)v7 setDelegate:self];
LABEL_10:

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
  if (a4 == 1)
  {
LABEL_8:
    v8 = [*(&self->super.super.super.super.super.super.isa + *v7) count];
    goto LABEL_9;
  }

  if (a4)
  {
    v8 = 0;
    goto LABEL_9;
  }

  if (![(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    if (![(HKHealthConceptPickerViewController *)self _hasArchivedMedicationsOnly])
    {
      v7 = &OBJC_IVAR___HKHealthConceptPickerViewController__activeUserAnnotatedMedications;
    }

    goto LABEL_8;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (int64_t)authorizationSectionForSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_actualSections objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)_noDataTableViewCell
{
  v3 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:v3];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"MEDICATIONS_SECTION_EMPTY_CELL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  [v5 setExplanationText:v7];

  [v5 setShowLearnMoreButton:0];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    v6 = [(HKHealthConceptPickerViewController *)self _noDataTableViewCell];
    goto LABEL_13;
  }

  v7 = [(OBTableWelcomeController *)self tableView];
  v6 = [v7 dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCell"];

  if (!v6)
  {
    v6 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AuthorizationSettingsCell"];
    [(HKSwitchTableViewCell *)v6 setDelegate:self];
    [(HKSwitchTableViewCell *)v6 setCentersIcon:1];
    v8 = [(HKSwitchTableViewCell *)v6 textLabel];
    [v8 setNumberOfLines:3];
  }

  v9 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(HKSwitchTableViewCell *)v6 setBackgroundColor:v9];

  if ([v5 section])
  {
    if ([v5 section] != 1)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v10 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
  }

  else
  {
    v11 = [(HKHealthConceptPickerViewController *)self _hasArchivedMedicationsOnly];
    v10 = &OBJC_IVAR___HKHealthConceptPickerViewController__activeUserAnnotatedMedications;
    if (v11)
    {
      v10 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
    }
  }

  v12 = [*(&self->super.super.super.super.super.super.isa + *v10) objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v13 = [v12 medication];
  v14 = [v13 displayText];
  v15 = [(HKSwitchTableViewCell *)v6 textLabel];
  [v15 setText:v14];

  updatedStatuses = self->_updatedStatuses;
  v17 = [v12 medication];
  v18 = [v17 identifier];
  v19 = [(NSMutableDictionary *)updatedStatuses objectForKeyedSubscript:v18];
  v20 = [v19 isEqual:&unk_1F43825A8];

  [(HKSwitchTableViewCell *)v6 setOn:v20];
LABEL_12:
  v21 = [objc_opt_class() _cellImageForMedicationType:v12 healthStore:self->_healthStore];
  [(HKSwitchTableViewCell *)v6 setIconImage:v21];
  v22 = [v12 medication];
  v23 = [v22 displayText];
  v24 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v25 = [v23 hk_stringByRemovingCharactersInSet:v24];

  v26 = [@"UIA.Health" stringByAppendingFormat:@".%@.SwitchCell", v25];
  [(HKSwitchTableViewCell *)v6 setAccessibilityIdentifier:v26];

LABEL_13:

  return v6;
}

+ (id)_displayTypeForMedicationType:(id)a3 healthStore:(id)a4
{
  v4 = [HKDisplayTypeController sharedInstanceForHealthStore:a4];
  v5 = [MEMORY[0x1E696C2E0] userAnnotatedMedicationType];
  v6 = [v4 displayTypeForObjectType:v5];

  return v6;
}

+ (id)_cellImageForMedicationType:(id)a3 healthStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _displayTypeForMedicationType:v6 healthStore:v5];

  v8 = [v7 listIcon];

  return v8;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(OBTableWelcomeController *)self tableView];
  v24 = [v7 indexPathForCell:v6];

  if ([v24 section])
  {
    if ([v24 section] != 1)
    {
      goto LABEL_14;
    }

    p_archivedUserAnnotatedMedications = &self->_archivedUserAnnotatedMedications;
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_archivedUserAnnotatedMedications, "objectAtIndexedSubscript:", [v24 row]);
    updatedStatuses = self->_updatedStatuses;
    v11 = [v9 medication];
    v12 = [v11 identifier];
    if (v4)
    {
      v13 = &unk_1F43825A8;
    }

    else
    {
      v13 = &unk_1F4382590;
    }

    [(NSMutableDictionary *)updatedStatuses setObject:v13 forKeyedSubscript:v12];

    v14 = &OBJC_IVAR___HKHealthConceptPickerViewController__allArchivedMedicationsEnabled;
  }

  else
  {
    v15 = [(HKHealthConceptPickerViewController *)self _hasArchivedMedicationsOnly];
    v16 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
    if (!v15)
    {
      v16 = &OBJC_IVAR___HKHealthConceptPickerViewController__activeUserAnnotatedMedications;
    }

    v17 = [*(&self->super.super.super.super.super.super.isa + *v16) objectAtIndexedSubscript:{objc_msgSend(v24, "row")}];
    v9 = v17;
    if (v4)
    {
      v18 = &unk_1F43825A8;
    }

    else
    {
      v18 = &unk_1F4382590;
    }

    v19 = self->_updatedStatuses;
    v20 = [v17 medication];
    v21 = [v20 identifier];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v21];

    p_archivedUserAnnotatedMedications = &self->_activeUserAnnotatedMedications;
    v14 = &OBJC_IVAR___HKHealthConceptPickerViewController__allMedicationsEnabled;
  }

  *(&self->super.super.super.super.super.super.isa + *v14) = [(HKHealthConceptPickerViewController *)self _allUpdatedStatusEnabledForUserAnnotatedMedications:*p_archivedUserAnnotatedMedications];

LABEL_14:
  v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{objc_msgSend(v24, "section"), 1}];
  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 reloadSections:v22 withRowAnimation:100];

  [(HKHealthConceptPickerViewController *)self _updateAllowButtonEnabledState];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval];
  result = 16.0;
  if (!v5)
  {
    if (a4 >= 2)
    {

      return HKUIOnePixel();
    }

    else
    {
      return 34.0;
    }
  }

  return result;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval]|| a4 != 1 && (a4 || ![(HKHealthConceptPickerViewController *)self _showSourceExplanationInActiveMedSectionFooter]))
  {
    v8 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = [(HKHealthConceptPickerViewController *)self readUsageDescription];
    v8 = [v6 _localizedSourceExplanationWithDescription:v7];
  }

  return v8;
}

+ (id)_localizedSourceExplanationWithDescription:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"APP_EXPLANATION_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)headerViewDidTapTurnOnAll:(id)a3
{
  v4 = [a3 tag];

  [(HKHealthConceptPickerViewController *)self _enableAllStatusesForSection:v4];
}

- (void)headerViewDidTapTurnOffAll:(id)a3
{
  v4 = [a3 tag];

  [(HKHealthConceptPickerViewController *)self _disableAllStatusesForSection:v4];
}

- (void)_enableAllStatusesForSection:(int64_t)a3
{
  if (a3 == 1)
  {
    archivedUserAnnotatedMedications = self->_archivedUserAnnotatedMedications;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __68__HKHealthConceptPickerViewController__enableAllStatusesForSection___block_invoke_2;
    v10 = &unk_1E81B7410;
    v11 = self;
    v5 = &v7;
    goto LABEL_5;
  }

  if (!a3)
  {
    archivedUserAnnotatedMedications = self->_activeUserAnnotatedMedications;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __68__HKHealthConceptPickerViewController__enableAllStatusesForSection___block_invoke;
    v15 = &unk_1E81B7410;
    v16 = self;
    v5 = &v12;
LABEL_5:
    [(NSMutableArray *)archivedUserAnnotatedMedications enumerateObjectsUsingBlock:v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16];
  }

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 reloadData];

  [(HKHealthConceptPickerViewController *)self _updateAllowButtonEnabledState];
}

void __68__HKHealthConceptPickerViewController__enableAllStatusesForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v5 = [v4 identifier];
  [v3 setObject:&unk_1F43825A8 forKeyedSubscript:v5];

  *(*(a1 + 32) + 1328) = 1;
}

void __68__HKHealthConceptPickerViewController__enableAllStatusesForSection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v5 = [v4 identifier];
  [v3 setObject:&unk_1F43825A8 forKeyedSubscript:v5];

  *(*(a1 + 32) + 1329) = 1;
}

- (void)_disableAllStatusesForSection:(int64_t)a3
{
  if (a3 == 1)
  {
    archivedUserAnnotatedMedications = self->_archivedUserAnnotatedMedications;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __69__HKHealthConceptPickerViewController__disableAllStatusesForSection___block_invoke_2;
    v10 = &unk_1E81B7410;
    v11 = self;
    v5 = &v7;
    goto LABEL_5;
  }

  if (!a3)
  {
    archivedUserAnnotatedMedications = self->_activeUserAnnotatedMedications;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __69__HKHealthConceptPickerViewController__disableAllStatusesForSection___block_invoke;
    v15 = &unk_1E81B7410;
    v16 = self;
    v5 = &v12;
LABEL_5:
    [(NSMutableArray *)archivedUserAnnotatedMedications enumerateObjectsUsingBlock:v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16];
  }

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 reloadData];

  [(HKHealthConceptPickerViewController *)self _updateAllowButtonEnabledState];
}

void __69__HKHealthConceptPickerViewController__disableAllStatusesForSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v5 = [v4 identifier];
  [v3 setObject:&unk_1F4382590 forKeyedSubscript:v5];

  *(*(a1 + 32) + 1328) = 0;
}

void __69__HKHealthConceptPickerViewController__disableAllStatusesForSection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v5 = [v4 identifier];
  [v3 setObject:&unk_1F4382590 forKeyedSubscript:v5];

  *(*(a1 + 32) + 1329) = 0;
}

- (BOOL)_allUpdatedStatusEnabledForUserAnnotatedMedications:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthConceptPickerViewController *)self _numberOfUpdatedStatusEnabledForUserAnnotatedMedications:v4];
  v6 = [v4 count];

  return v5 == v6;
}

- (int64_t)_numberOfUpdatedStatusEnabledForUserAnnotatedMedications:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__HKHealthConceptPickerViewController__numberOfUpdatedStatusEnabledForUserAnnotatedMedications___block_invoke;
  v7[3] = &unk_1E81B7438;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __96__HKHealthConceptPickerViewController__numberOfUpdatedStatusEnabledForUserAnnotatedMedications___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1320);
  v4 = [a2 medication];
  v5 = [v4 identifier];
  v6 = [v3 objectForKeyedSubscript:v5];

  if ([v6 integerValue] == 2)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (NSMutableDictionary)updatedUserAnnotatedMedications
{
  v2 = [(NSMutableDictionary *)self->_updatedStatuses copy];

  return v2;
}

- (HKHealthPrivacyServicePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelButtonTapped:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%{public}@: Cancelled health concept authorization", v4, v5, v6, v7, v8);
}

- (void)disallowButtonTapped:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%{public}@: Disallowed health concept authorization", v4, v5, v6, v7, v8);
}

- (void)allowButtonTapped:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%{public}@: Saving health concept authorization", v4, v5, v6, v7, v8);
}

- (void)_finishWithError:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%@: dismissing", v4, v5, v6, v7, v8);
}

@end