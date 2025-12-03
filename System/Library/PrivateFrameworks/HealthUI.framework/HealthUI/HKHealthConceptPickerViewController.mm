@interface HKHealthConceptPickerViewController
+ (id)_cellImageForMedicationType:(id)type healthStore:(id)store;
+ (id)_displayTypeForMedicationType:(id)type healthStore:(id)store;
+ (id)_localizedSourceExplanationWithDescription:(id)description;
- (BOOL)_allUpdatedStatusEnabledForUserAnnotatedMedications:(id)medications;
- (HKHealthConceptPickerViewController)initWithHealthStore:(id)store source:(id)source userAnnotatedMedications:(id)medications;
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (NSMutableDictionary)updatedUserAnnotatedMedications;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_explanationTextForSource:(id)source;
- (id)_headerIcon;
- (id)_noDataTableViewCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_numberOfUpdatedStatusEnabledForUserAnnotatedMedications:(id)medications;
- (int64_t)authorizationSectionForSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addCancelAndDoneButtons;
- (void)_disableAllStatusesForSection:(int64_t)section;
- (void)_enableAllStatusesForSection:(int64_t)section;
- (void)_finishWithError:(id)error;
- (void)_setUpTableView;
- (void)_updateAllowButtonEnabledState;
- (void)allowButtonTapped:(id)tapped;
- (void)cancelButtonTapped:(id)tapped;
- (void)disallowButtonTapped:(id)tapped;
- (void)headerViewDidTapTurnOffAll:(id)all;
- (void)headerViewDidTapTurnOnAll:(id)all;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKHealthConceptPickerViewController

- (HKHealthConceptPickerViewController)initWithHealthStore:(id)store source:(id)source userAnnotatedMedications:(id)medications
{
  storeCopy = store;
  sourceCopy = source;
  medicationsCopy = medications;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"AUTH_SHEET_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];

  v14 = [(HKHealthConceptPickerViewController *)self _explanationTextForSource:sourceCopy];
  _headerIcon = [(HKHealthConceptPickerViewController *)self _headerIcon];
  v25.receiver = self;
  v25.super_class = HKHealthConceptPickerViewController;
  v16 = [(OBTableWelcomeController *)&v25 initWithTitle:v13 detailText:v14 icon:_headerIcon adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_healthStore, store);
    objc_storeStrong(&v17->_source, source);
    objc_storeStrong(&v17->_samplesPendingAuthorizationUpdate, medications);
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

- (id)_explanationTextForSource:(id)source
{
  v3 = MEMORY[0x1E696AAE8];
  sourceCopy = source;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_DATA_WITH_APP_EXPLANATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SHARE_DATA_WITH_%@_TITLECASED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  name = [sourceCopy name];
  v11 = [v7 stringWithFormat:v9, name];

  v12 = MEMORY[0x1E696AEC0];
  name2 = [sourceCopy name];

  v14 = [v12 stringWithFormat:v6, name2];
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
  navigationController = [(HKHealthConceptPickerViewController *)self navigationController];
  [navigationController setModalInPresentation:1];

  headerView = [(HKHealthConceptPickerViewController *)self headerView];
  [headerView setAllowFullWidthIcon:1];

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
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HKHealthConceptPickerViewController;
  [(OBTableWelcomeController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = HKHealthConceptPickerViewController;
  [(OBBaseWelcomeController *)&v3 viewDidAppear:appear];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = HKHealthConceptPickerViewController;
  [(OBTableWelcomeController *)&v8 viewDidLayoutSubviews];
  navigationController = [(HKHealthConceptPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  if ([navigationBar isTranslucent])
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView contentInset];
    v7 = v6;

    if (v7 == 44.0)
    {
      return;
    }

    navigationController = [(OBTableWelcomeController *)self tableView];
    [navigationController setContentInset:{44.0, 0.0, 0.0, 0.0}];
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

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[HKSwitchTableViewCell reuseIdentifier];
  [tableView4 registerClass:v10 forCellReuseIdentifier:v11];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  [tableView5 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = *MEMORY[0x1E69DE3D0];
  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setRowHeight:v15];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 hk_onboardingListEdgeInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 _setSectionContentInset:{v18, v20, v22, v24}];
}

- (void)_addCancelAndDoneButtons
{
  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
    [v3 setAccessibilityIdentifier:@"UIA.Health.CancelOnly.Button"];
    linkButton = v3;
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setRightBarButtonItem:linkButton];
  }

  else
  {
    linkButton = [MEMORY[0x1E69B7D38] linkButton];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"AUTHORIZATION_PROMPT_DONT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [linkButton setTitle:v7 forState:0];

    [linkButton addTarget:self action:sel_disallowButtonTapped_ forControlEvents:64];
    [linkButton setAccessibilityIdentifier:@"UIA.Health.DoNotAllow.Button"];
    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    doneButtonItem = self->_doneButtonItem;
    self->_doneButtonItem = boldButton;

    v10 = self->_doneButtonItem;
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"AUTHORIZATION_PROMPT_ALLOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    [(OBBoldTrayButton *)v10 setTitle:v12 forState:0];

    [(OBBoldTrayButton *)self->_doneButtonItem addTarget:self action:sel_allowButtonTapped_ forControlEvents:64];
    [(OBBoldTrayButton *)self->_doneButtonItem setAccessibilityIdentifier:@"UIA.Health.Allow.Button"];
    v13 = self->_doneButtonItem;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(OBBoldTrayButton *)v13 setTintColor:systemBlueColor];

    [(OBBoldTrayButton *)self->_doneButtonItem setEnabled:0];
    buttonTray = [(HKHealthConceptPickerViewController *)self buttonTray];
    [buttonTray addButton:self->_doneButtonItem];

    navigationItem = [(HKHealthConceptPickerViewController *)self buttonTray];
    [navigationItem addButton:linkButton];
  }

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v18 localizedStringForKey:@"AUTH_SHEET_MEDICATIONS_NAV_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setTitle:v16];
}

- (void)cancelButtonTapped:(id)tapped
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

- (void)disallowButtonTapped:(id)tapped
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

- (void)allowButtonTapped:(id)tapped
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

  doneButtonItem = [(HKHealthConceptPickerViewController *)self doneButtonItem];
  [doneButtonItem setEnabled:v5];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
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

  delegate = [(HKHealthConceptPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HKHealthConceptPickerViewController *)self delegate];
    [delegate2 pickerControllerDidFinish:self error:errorCopy];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section || ![(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
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

  if (!section)
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
  [(HKAuthorizationHeaderView *)v7 setTag:section];
  [(HKAuthorizationHeaderView *)v7 setDelegate:self];
LABEL_10:

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
  if (section == 1)
  {
LABEL_8:
    v8 = [*(&self->super.super.super.super.super.super.isa + *v7) count];
    goto LABEL_9;
  }

  if (section)
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

- (int64_t)authorizationSectionForSection:(int64_t)section
{
  v3 = [(NSArray *)self->_actualSections objectAtIndexedSubscript:section];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)_noDataTableViewCell
{
  v3 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  tableView = [(OBTableWelcomeController *)self tableView];
  v5 = [tableView dequeueReusableCellWithIdentifier:v3];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"MEDICATIONS_SECTION_EMPTY_CELL_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  [v5 setExplanationText:v7];

  [v5 setShowLearnMoreButton:0];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval])
  {
    _noDataTableViewCell = [(HKHealthConceptPickerViewController *)self _noDataTableViewCell];
    goto LABEL_13;
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  _noDataTableViewCell = [tableView dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCell"];

  if (!_noDataTableViewCell)
  {
    _noDataTableViewCell = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AuthorizationSettingsCell"];
    [(HKSwitchTableViewCell *)_noDataTableViewCell setDelegate:self];
    [(HKSwitchTableViewCell *)_noDataTableViewCell setCentersIcon:1];
    textLabel = [(HKSwitchTableViewCell *)_noDataTableViewCell textLabel];
    [textLabel setNumberOfLines:3];
  }

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(HKSwitchTableViewCell *)_noDataTableViewCell setBackgroundColor:secondarySystemBackgroundColor];

  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v10 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
  }

  else
  {
    _hasArchivedMedicationsOnly = [(HKHealthConceptPickerViewController *)self _hasArchivedMedicationsOnly];
    v10 = &OBJC_IVAR___HKHealthConceptPickerViewController__activeUserAnnotatedMedications;
    if (_hasArchivedMedicationsOnly)
    {
      v10 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
    }
  }

  v12 = [*(&self->super.super.super.super.super.super.isa + *v10) objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  medication = [v12 medication];
  displayText = [medication displayText];
  textLabel2 = [(HKSwitchTableViewCell *)_noDataTableViewCell textLabel];
  [textLabel2 setText:displayText];

  updatedStatuses = self->_updatedStatuses;
  medication2 = [v12 medication];
  identifier = [medication2 identifier];
  v19 = [(NSMutableDictionary *)updatedStatuses objectForKeyedSubscript:identifier];
  v20 = [v19 isEqual:&unk_1F43825A8];

  [(HKSwitchTableViewCell *)_noDataTableViewCell setOn:v20];
LABEL_12:
  v21 = [objc_opt_class() _cellImageForMedicationType:v12 healthStore:self->_healthStore];
  [(HKSwitchTableViewCell *)_noDataTableViewCell setIconImage:v21];
  medication3 = [v12 medication];
  displayText2 = [medication3 displayText];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v25 = [displayText2 hk_stringByRemovingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v26 = [@"UIA.Health" stringByAppendingFormat:@".%@.SwitchCell", v25];
  [(HKSwitchTableViewCell *)_noDataTableViewCell setAccessibilityIdentifier:v26];

LABEL_13:

  return _noDataTableViewCell;
}

+ (id)_displayTypeForMedicationType:(id)type healthStore:(id)store
{
  v4 = [HKDisplayTypeController sharedInstanceForHealthStore:store];
  userAnnotatedMedicationType = [MEMORY[0x1E696C2E0] userAnnotatedMedicationType];
  v6 = [v4 displayTypeForObjectType:userAnnotatedMedicationType];

  return v6;
}

+ (id)_cellImageForMedicationType:(id)type healthStore:(id)store
{
  storeCopy = store;
  typeCopy = type;
  v7 = [objc_opt_class() _displayTypeForMedicationType:typeCopy healthStore:storeCopy];

  listIcon = [v7 listIcon];

  return listIcon;
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  changedCopy = changed;
  tableView = [(OBTableWelcomeController *)self tableView];
  v24 = [tableView indexPathForCell:changedCopy];

  if ([v24 section])
  {
    if ([v24 section] != 1)
    {
      goto LABEL_14;
    }

    p_archivedUserAnnotatedMedications = &self->_archivedUserAnnotatedMedications;
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_archivedUserAnnotatedMedications, "objectAtIndexedSubscript:", [v24 row]);
    updatedStatuses = self->_updatedStatuses;
    medication = [v9 medication];
    identifier = [medication identifier];
    if (valueCopy)
    {
      v13 = &unk_1F43825A8;
    }

    else
    {
      v13 = &unk_1F4382590;
    }

    [(NSMutableDictionary *)updatedStatuses setObject:v13 forKeyedSubscript:identifier];

    v14 = &OBJC_IVAR___HKHealthConceptPickerViewController__allArchivedMedicationsEnabled;
  }

  else
  {
    _hasArchivedMedicationsOnly = [(HKHealthConceptPickerViewController *)self _hasArchivedMedicationsOnly];
    v16 = &OBJC_IVAR___HKHealthConceptPickerViewController__archivedUserAnnotatedMedications;
    if (!_hasArchivedMedicationsOnly)
    {
      v16 = &OBJC_IVAR___HKHealthConceptPickerViewController__activeUserAnnotatedMedications;
    }

    v17 = [*(&self->super.super.super.super.super.super.isa + *v16) objectAtIndexedSubscript:{objc_msgSend(v24, "row")}];
    v9 = v17;
    if (valueCopy)
    {
      v18 = &unk_1F43825A8;
    }

    else
    {
      v18 = &unk_1F4382590;
    }

    v19 = self->_updatedStatuses;
    medication2 = [v17 medication];
    identifier2 = [medication2 identifier];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:identifier2];

    p_archivedUserAnnotatedMedications = &self->_activeUserAnnotatedMedications;
    v14 = &OBJC_IVAR___HKHealthConceptPickerViewController__allMedicationsEnabled;
  }

  *(&self->super.super.super.super.super.super.isa + *v14) = [(HKHealthConceptPickerViewController *)self _allUpdatedStatusEnabledForUserAnnotatedMedications:*p_archivedUserAnnotatedMedications];

LABEL_14:
  v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{objc_msgSend(v24, "section"), 1}];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 reloadSections:v22 withRowAnimation:100];

  [(HKHealthConceptPickerViewController *)self _updateAllowButtonEnabledState];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  _hasNoMedicationsForApproval = [(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval];
  result = 16.0;
  if (!_hasNoMedicationsForApproval)
  {
    if (section >= 2)
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(HKHealthConceptPickerViewController *)self _hasNoMedicationsForApproval]|| section != 1 && (section || ![(HKHealthConceptPickerViewController *)self _showSourceExplanationInActiveMedSectionFooter]))
  {
    v8 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    readUsageDescription = [(HKHealthConceptPickerViewController *)self readUsageDescription];
    v8 = [v6 _localizedSourceExplanationWithDescription:readUsageDescription];
  }

  return v8;
}

+ (id)_localizedSourceExplanationWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = descriptionCopy;
  if (descriptionCopy && [descriptionCopy length])
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

- (void)headerViewDidTapTurnOnAll:(id)all
{
  v4 = [all tag];

  [(HKHealthConceptPickerViewController *)self _enableAllStatusesForSection:v4];
}

- (void)headerViewDidTapTurnOffAll:(id)all
{
  v4 = [all tag];

  [(HKHealthConceptPickerViewController *)self _disableAllStatusesForSection:v4];
}

- (void)_enableAllStatusesForSection:(int64_t)section
{
  if (section == 1)
  {
    archivedUserAnnotatedMedications = self->_archivedUserAnnotatedMedications;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __68__HKHealthConceptPickerViewController__enableAllStatusesForSection___block_invoke_2;
    v10 = &unk_1E81B7410;
    selfCopy = self;
    v5 = &v7;
    goto LABEL_5;
  }

  if (!section)
  {
    archivedUserAnnotatedMedications = self->_activeUserAnnotatedMedications;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __68__HKHealthConceptPickerViewController__enableAllStatusesForSection___block_invoke;
    v15 = &unk_1E81B7410;
    selfCopy2 = self;
    v5 = &v12;
LABEL_5:
    [(NSMutableArray *)archivedUserAnnotatedMedications enumerateObjectsUsingBlock:v5, v7, v8, v9, v10, selfCopy, v12, v13, v14, v15, selfCopy2];
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

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

- (void)_disableAllStatusesForSection:(int64_t)section
{
  if (section == 1)
  {
    archivedUserAnnotatedMedications = self->_archivedUserAnnotatedMedications;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __69__HKHealthConceptPickerViewController__disableAllStatusesForSection___block_invoke_2;
    v10 = &unk_1E81B7410;
    selfCopy = self;
    v5 = &v7;
    goto LABEL_5;
  }

  if (!section)
  {
    archivedUserAnnotatedMedications = self->_activeUserAnnotatedMedications;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __69__HKHealthConceptPickerViewController__disableAllStatusesForSection___block_invoke;
    v15 = &unk_1E81B7410;
    selfCopy2 = self;
    v5 = &v12;
LABEL_5:
    [(NSMutableArray *)archivedUserAnnotatedMedications enumerateObjectsUsingBlock:v5, v7, v8, v9, v10, selfCopy, v12, v13, v14, v15, selfCopy2];
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

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

- (BOOL)_allUpdatedStatusEnabledForUserAnnotatedMedications:(id)medications
{
  medicationsCopy = medications;
  v5 = [(HKHealthConceptPickerViewController *)self _numberOfUpdatedStatusEnabledForUserAnnotatedMedications:medicationsCopy];
  v6 = [medicationsCopy count];

  return v5 == v6;
}

- (int64_t)_numberOfUpdatedStatusEnabledForUserAnnotatedMedications:(id)medications
{
  medicationsCopy = medications;
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
  [medicationsCopy enumerateObjectsUsingBlock:v7];
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