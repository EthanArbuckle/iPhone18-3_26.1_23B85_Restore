@interface HKPrescriptionPickerViewController
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (HKPrescriptionPickerViewController)initWithHealthStore:(id)store samples:(id)samples enabledSamples:(id)enabledSamples source:(id)source;
- (NSMutableSet)enabledSamples;
- (NSSet)allSamples;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_explanationTextForSource:(id)source;
- (id)_headerIcon;
- (id)_headerTitleForSource:(id)source;
- (id)_loadPreviewControllerForPrescription:(id)prescription;
- (id)_noDataTableViewCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_enableSample:(id)sample enabled:(BOOL)enabled;
- (void)_finishWithError:(id)error;
- (void)_setUpCancelBarButtonItem;
- (void)_setUpFooterView;
- (void)_setUpTableView;
- (void)_updateShareButtonState;
- (void)cancelButtonTapped:(id)tapped;
- (void)didTapShowDetailsButtonForCell:(id)cell;
- (void)didToggleSwitchForCell:(id)cell isOn:(BOOL)on;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)shareButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation HKPrescriptionPickerViewController

- (HKPrescriptionPickerViewController)initWithHealthStore:(id)store samples:(id)samples enabledSamples:(id)enabledSamples source:(id)source
{
  storeCopy = store;
  samplesCopy = samples;
  enabledSamplesCopy = enabledSamples;
  sourceCopy = source;
  v15 = [(HKPrescriptionPickerViewController *)self _headerTitleForSource:sourceCopy];
  v16 = [(HKPrescriptionPickerViewController *)self _explanationTextForSource:sourceCopy];
  _headerIcon = [(HKPrescriptionPickerViewController *)self _headerIcon];
  v27.receiver = self;
  v27.super_class = HKPrescriptionPickerViewController;
  v18 = [(OBTableWelcomeController *)&v27 initWithTitle:v15 detailText:v16 icon:_headerIcon adoptTableViewScrollView:1];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_healthStore, store);
    v20 = [MEMORY[0x1E695DFA8] setWithArray:enabledSamplesCopy];
    enabledSamples = v19->_enabledSamples;
    v19->_enabledSamples = v20;

    v22 = [(HKPrescriptionPickerViewController *)v19 _sortedPrescriptions:samplesCopy];
    samples = v19->_samples;
    v19->_samples = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    samplesPendingAuthorizationUpdate = v19->_samplesPendingAuthorizationUpdate;
    v19->_samplesPendingAuthorizationUpdate = v24;

    objc_storeStrong(&v19->_source, source);
    v19->_hasData = [(NSArray *)v19->_samples count]!= 0;
  }

  return v19;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HKPrescriptionPickerViewController;
  [(OBTableWelcomeController *)&v10 viewDidLoad];
  traitCollection = [(HKPrescriptionPickerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view = [(HKPrescriptionPickerViewController *)self view];
    [view setBackgroundColor:systemBackgroundColor];
  }

  navigationController = [(HKPrescriptionPickerViewController *)self navigationController];
  [navigationController setModalInPresentation:1];

  headerView = [(HKPrescriptionPickerViewController *)self headerView];
  [headerView setAllowFullWidthIcon:1];

  [(HKPrescriptionPickerViewController *)self _setUpCancelBarButtonItem];
  [(HKPrescriptionPickerViewController *)self _setUpTableView];
  [(HKPrescriptionPickerViewController *)self _setUpFooterView];
  [(HKPrescriptionPickerViewController *)self _updateShareButtonState];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)_setUpCancelBarButtonItem
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  [v4 setAccessibilityIdentifier:@"UIA.Health.Cancel.Button"];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
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

  traitCollection = [(HKPrescriptionPickerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 setBackgroundColor:systemBackgroundColor];
  }

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 hk_onboardingListEdgeInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 _setSectionContentInset:{v13, v15, v17, v19}];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  v22 = objc_opt_class();
  v23 = +[HKPrescriptionPickerCell defaultReuseIdentifier];
  [tableView6 registerClass:v22 forCellReuseIdentifier:v23];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  v24 = objc_opt_class();
  v25 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  [tableView7 registerClass:v24 forCellReuseIdentifier:v25];
}

- (void)_setUpFooterView
{
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  shareButton = self->_shareButton;
  self->_shareButton = boldButton;

  v5 = self->_shareButton;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"DONE_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  [(OBBoldTrayButton *)v5 setTitle:v7 forState:0];

  [(OBBoldTrayButton *)self->_shareButton addTarget:self action:sel_shareButtonTapped_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_shareButton setAccessibilityIdentifier:@"UIA.Health.Done.Button"];
  buttonTray = [(HKPrescriptionPickerViewController *)self buttonTray];
  [buttonTray addButton:self->_shareButton];
}

- (id)_explanationTextForSource:(id)source
{
  v3 = MEMORY[0x1E696AAE8];
  sourceCopy = source;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_DATA_WITH_APP_EXPLANATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  v7 = MEMORY[0x1E696AEC0];
  name = [sourceCopy name];

  v9 = [v7 stringWithFormat:v6, name];

  return v9;
}

- (id)_headerIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"health_privacy_icon_other_data" inBundle:v3];

  return v4;
}

- (id)_headerTitleForSource:(id)source
{
  v3 = MEMORY[0x1E696AAE8];
  sourceCopy = source;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_PRESCRIPTION_WITH_APP_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  v7 = MEMORY[0x1E696AEC0];
  name = [sourceCopy name];

  v9 = [v7 stringWithFormat:v6, name];

  return v9;
}

- (void)learnMoreButtonTapped:(id)tapped
{
  v4 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.healthapp"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)shareButtonTapped:(id)tapped
{
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [HKPrescriptionPickerViewController shareButtonTapped:];
    }
  }

  [(HKPrescriptionPickerViewController *)self _finishWithError:0];
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
      [HKPrescriptionPickerViewController cancelButtonTapped:];
    }
  }

  v7 = [MEMORY[0x1E696ABC0] hk_error:7 format:@"The user canceled authorization."];
  [(HKPrescriptionPickerViewController *)self _finishWithError:v7];
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
      [HKPrescriptionPickerViewController _finishWithError:];
    }
  }

  delegate = [(HKPrescriptionPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HKPrescriptionPickerViewController *)self delegate];
    [delegate2 pickerControllerDidFinish:self error:errorCopy];
  }
}

- (void)_enableSample:(id)sample enabled:(BOOL)enabled
{
  enabledSamples = self->_enabledSamples;
  if (enabled)
  {
    [(NSMutableSet *)enabledSamples addObject:sample];
  }

  else
  {
    [(NSMutableSet *)enabledSamples removeObject:sample];
  }
}

- (void)_updateShareButtonState
{
  v3 = [(NSMutableSet *)self->_samplesPendingAuthorizationUpdate count]!= 0;
  shareButton = self->_shareButton;

  [(OBBoldTrayButton *)shareButton setEnabled:v3];
}

- (NSSet)allSamples
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_samples];

  return v2;
}

- (NSMutableSet)enabledSamples
{
  v2 = [(NSMutableSet *)self->_enabledSamples copy];

  return v2;
}

- (void)didTapShowDetailsButtonForCell:(id)cell
{
  prescription = [cell prescription];
  v6 = [(HKPrescriptionPickerViewController *)self _loadPreviewControllerForPrescription:prescription];

  v5 = v6;
  if (v6)
  {
    [(HKPrescriptionPickerViewController *)self presentViewController:v6 animated:1 completion:0];
    v5 = v6;
  }
}

- (void)didToggleSwitchForCell:(id)cell isOn:(BOOL)on
{
  onCopy = on;
  prescription = [cell prescription];
  v6 = [(NSMutableSet *)self->_samplesPendingAuthorizationUpdate containsObject:?];
  samplesPendingAuthorizationUpdate = self->_samplesPendingAuthorizationUpdate;
  if (v6)
  {
    [(NSMutableSet *)samplesPendingAuthorizationUpdate removeObject:prescription];
  }

  else
  {
    [(NSMutableSet *)samplesPendingAuthorizationUpdate addObject:prescription];
  }

  enabledSamples = self->_enabledSamples;
  if (onCopy)
  {
    [(NSMutableSet *)enabledSamples addObject:prescription];
  }

  else
  {
    [(NSMutableSet *)enabledSamples removeObject:prescription];
  }

  [(HKPrescriptionPickerViewController *)self _updateShareButtonState];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_hasData)
  {
    return [(NSArray *)self->_samples count];
  }

  else
  {
    return 1;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    localizedCapitalizedString = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"RECORDS_LIST_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    localizedCapitalizedString = [v6 localizedCapitalizedString];
  }

  return localizedCapitalizedString;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!self->_hasData)
  {
    _noDataTableViewCell = [(HKPrescriptionPickerViewController *)self _noDataTableViewCell];
    goto LABEL_9;
  }

  v8 = +[HKPrescriptionPickerCell defaultReuseIdentifier];
  _noDataTableViewCell = [viewCopy dequeueReusableCellWithIdentifier:v8];

  v10 = -[NSArray objectAtIndexedSubscript:](self->_samples, "objectAtIndexedSubscript:", [pathCopy section]);
  [_noDataTableViewCell setPrescription:v10];
  prescription = [_noDataTableViewCell prescription];
  prescriptionType = [prescription prescriptionType];

  if (prescriptionType == 2)
  {
    v13 = @"UIA.Health.Contacts.Cell";
LABEL_7:
    [_noDataTableViewCell setAccessibilityIdentifier:v13];
    goto LABEL_8;
  }

  prescription2 = [_noDataTableViewCell prescription];
  prescriptionType2 = [prescription2 prescriptionType];

  if (prescriptionType2 == 1)
  {
    v13 = @"UIA.Health.Glasses.Cell";
    goto LABEL_7;
  }

LABEL_8:
  [_noDataTableViewCell setOn:{-[NSMutableSet containsObject:](self->_enabledSamples, "containsObject:", v10)}];
  [_noDataTableViewCell setDelegate:self];

LABEL_9:

  return _noDataTableViewCell;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return HKUIOnePixel();
  }

  else
  {
    return 10.0;
  }
}

- (id)_noDataTableViewCell
{
  v3 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  tableView = [(OBTableWelcomeController *)self tableView];
  v5 = [tableView dequeueReusableCellWithIdentifier:v3];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"NO_MATCHING_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  [v5 setExplanationText:v7];

  [v5 setShowLearnMoreButton:0];

  return v5;
}

- (id)_loadPreviewControllerForPrescription:(id)prescription
{
  prescriptionCopy = prescription;
  if (self->_visionBundle)
  {
    goto LABEL_2;
  }

  v8 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Health/FeedItemPlugins/VisionHealthAppPlugin.healthplugin"];
  if (!v8)
  {
    _HKInitializeLogging();
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      [HKPrescriptionPickerViewController _loadPreviewControllerForPrescription:];
    }

    goto LABEL_15;
  }

  v5 = v8;
  v14 = 0;
  [(NSBundle *)v8 loadAndReturnError:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = v9;
    _HKInitializeLogging();
    v11 = HKLogAuthorization();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKPrescriptionPickerViewController _loadPreviewControllerForPrescription:];
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  visionBundle = self->_visionBundle;
  self->_visionBundle = v5;

LABEL_2:
  v5 = objc_alloc(NSClassFromString(&cfstr_Visionhealthap.isa));
  if (objc_opt_respondsToSelector())
  {
    v6 = [(NSBundle *)v5 initWithHealthStore:self->_healthStore visionPrescription:prescriptionCopy canEdit:0];
    v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKPrescriptionPickerViewController _loadPreviewControllerForPrescription:];
    }

    v7 = 0;
  }

LABEL_16:

  return v7;
}

uint64_t __59__HKPrescriptionPickerViewController__sortedPrescriptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateIssued];
  v6 = [v4 dateIssued];

  v7 = [v5 compare:v6];
  return v7;
}

- (HKHealthPrivacyServicePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shareButtonTapped:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%{public}@: Finished prescription authorization", v4, v5, v6, v7, v8);
}

- (void)cancelButtonTapped:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%{public}@: Canceled prescription authorization", v4, v5, v6, v7, v8);
}

- (void)_finishWithError:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_0_7(&dword_1C3942000, v2, v3, "%{public}@: Dismissing prescription picker", v4, v5, v6, v7, v8);
}

- (void)_loadPreviewControllerForPrescription:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_loadPreviewControllerForPrescription:.cold.2()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_loadPreviewControllerForPrescription:.cold.3()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_4();
  v1 = v0;
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end