@interface HKPrescriptionPickerViewController
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (HKPrescriptionPickerViewController)initWithHealthStore:(id)a3 samples:(id)a4 enabledSamples:(id)a5 source:(id)a6;
- (NSMutableSet)enabledSamples;
- (NSSet)allSamples;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_explanationTextForSource:(id)a3;
- (id)_headerIcon;
- (id)_headerTitleForSource:(id)a3;
- (id)_loadPreviewControllerForPrescription:(id)a3;
- (id)_noDataTableViewCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_enableSample:(id)a3 enabled:(BOOL)a4;
- (void)_finishWithError:(id)a3;
- (void)_setUpCancelBarButtonItem;
- (void)_setUpFooterView;
- (void)_setUpTableView;
- (void)_updateShareButtonState;
- (void)cancelButtonTapped:(id)a3;
- (void)didTapShowDetailsButtonForCell:(id)a3;
- (void)didToggleSwitchForCell:(id)a3 isOn:(BOOL)a4;
- (void)learnMoreButtonTapped:(id)a3;
- (void)shareButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKPrescriptionPickerViewController

- (HKPrescriptionPickerViewController)initWithHealthStore:(id)a3 samples:(id)a4 enabledSamples:(id)a5 source:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(HKPrescriptionPickerViewController *)self _headerTitleForSource:v14];
  v16 = [(HKPrescriptionPickerViewController *)self _explanationTextForSource:v14];
  v17 = [(HKPrescriptionPickerViewController *)self _headerIcon];
  v27.receiver = self;
  v27.super_class = HKPrescriptionPickerViewController;
  v18 = [(OBTableWelcomeController *)&v27 initWithTitle:v15 detailText:v16 icon:v17 adoptTableViewScrollView:1];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_healthStore, a3);
    v20 = [MEMORY[0x1E695DFA8] setWithArray:v13];
    enabledSamples = v19->_enabledSamples;
    v19->_enabledSamples = v20;

    v22 = [(HKPrescriptionPickerViewController *)v19 _sortedPrescriptions:v12];
    samples = v19->_samples;
    v19->_samples = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    samplesPendingAuthorizationUpdate = v19->_samplesPendingAuthorizationUpdate;
    v19->_samplesPendingAuthorizationUpdate = v24;

    objc_storeStrong(&v19->_source, a6);
    v19->_hasData = [(NSArray *)v19->_samples count]!= 0;
  }

  return v19;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HKPrescriptionPickerViewController;
  [(OBTableWelcomeController *)&v10 viewDidLoad];
  v3 = [(HKPrescriptionPickerViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 6)
  {
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v6 = [(HKPrescriptionPickerViewController *)self view];
    [v6 setBackgroundColor:v5];
  }

  v7 = [(HKPrescriptionPickerViewController *)self navigationController];
  [v7 setModalInPresentation:1];

  v8 = [(HKPrescriptionPickerViewController *)self headerView];
  [v8 setAllowFullWidthIcon:1];

  [(HKPrescriptionPickerViewController *)self _setUpCancelBarButtonItem];
  [(HKPrescriptionPickerViewController *)self _setUpTableView];
  [(HKPrescriptionPickerViewController *)self _setUpFooterView];
  [(HKPrescriptionPickerViewController *)self _updateShareButtonState];
  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 reloadData];
}

- (void)_setUpCancelBarButtonItem
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  [v4 setAccessibilityIdentifier:@"UIA.Health.Cancel.Button"];
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
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

  v7 = [(HKPrescriptionPickerViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 setBackgroundColor:v9];
  }

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 hk_onboardingListEdgeInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 _setSectionContentInset:{v13, v15, v17, v19}];

  v21 = [(OBTableWelcomeController *)self tableView];
  v22 = objc_opt_class();
  v23 = +[HKPrescriptionPickerCell defaultReuseIdentifier];
  [v21 registerClass:v22 forCellReuseIdentifier:v23];

  v26 = [(OBTableWelcomeController *)self tableView];
  v24 = objc_opt_class();
  v25 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  [v26 registerClass:v24 forCellReuseIdentifier:v25];
}

- (void)_setUpFooterView
{
  v3 = [MEMORY[0x1E69B7D00] boldButton];
  shareButton = self->_shareButton;
  self->_shareButton = v3;

  v5 = self->_shareButton;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"DONE_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  [(OBBoldTrayButton *)v5 setTitle:v7 forState:0];

  [(OBBoldTrayButton *)self->_shareButton addTarget:self action:sel_shareButtonTapped_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_shareButton setAccessibilityIdentifier:@"UIA.Health.Done.Button"];
  v8 = [(HKPrescriptionPickerViewController *)self buttonTray];
  [v8 addButton:self->_shareButton];
}

- (id)_explanationTextForSource:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_DATA_WITH_APP_EXPLANATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 name];

  v9 = [v7 stringWithFormat:v6, v8];

  return v9;
}

- (id)_headerIcon
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"health_privacy_icon_other_data" inBundle:v3];

  return v4;
}

- (id)_headerTitleForSource:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_PRESCRIPTION_WITH_APP_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 name];

  v9 = [v7 stringWithFormat:v6, v8];

  return v9;
}

- (void)learnMoreButtonTapped:(id)a3
{
  v4 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.healthapp"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)shareButtonTapped:(id)a3
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
      [HKPrescriptionPickerViewController cancelButtonTapped:];
    }
  }

  v7 = [MEMORY[0x1E696ABC0] hk_error:7 format:@"The user canceled authorization."];
  [(HKPrescriptionPickerViewController *)self _finishWithError:v7];
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
      [HKPrescriptionPickerViewController _finishWithError:];
    }
  }

  v8 = [(HKPrescriptionPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HKPrescriptionPickerViewController *)self delegate];
    [v10 pickerControllerDidFinish:self error:v4];
  }
}

- (void)_enableSample:(id)a3 enabled:(BOOL)a4
{
  enabledSamples = self->_enabledSamples;
  if (a4)
  {
    [(NSMutableSet *)enabledSamples addObject:a3];
  }

  else
  {
    [(NSMutableSet *)enabledSamples removeObject:a3];
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

- (void)didTapShowDetailsButtonForCell:(id)a3
{
  v4 = [a3 prescription];
  v6 = [(HKPrescriptionPickerViewController *)self _loadPreviewControllerForPrescription:v4];

  v5 = v6;
  if (v6)
  {
    [(HKPrescriptionPickerViewController *)self presentViewController:v6 animated:1 completion:0];
    v5 = v6;
  }
}

- (void)didToggleSwitchForCell:(id)a3 isOn:(BOOL)a4
{
  v4 = a4;
  v9 = [a3 prescription];
  v6 = [(NSMutableSet *)self->_samplesPendingAuthorizationUpdate containsObject:?];
  samplesPendingAuthorizationUpdate = self->_samplesPendingAuthorizationUpdate;
  if (v6)
  {
    [(NSMutableSet *)samplesPendingAuthorizationUpdate removeObject:v9];
  }

  else
  {
    [(NSMutableSet *)samplesPendingAuthorizationUpdate addObject:v9];
  }

  enabledSamples = self->_enabledSamples;
  if (v4)
  {
    [(NSMutableSet *)enabledSamples addObject:v9];
  }

  else
  {
    [(NSMutableSet *)enabledSamples removeObject:v9];
  }

  [(HKPrescriptionPickerViewController *)self _updateShareButtonState];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"RECORDS_LIST_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    v4 = [v6 localizedCapitalizedString];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_hasData)
  {
    v9 = [(HKPrescriptionPickerViewController *)self _noDataTableViewCell];
    goto LABEL_9;
  }

  v8 = +[HKPrescriptionPickerCell defaultReuseIdentifier];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];

  v10 = -[NSArray objectAtIndexedSubscript:](self->_samples, "objectAtIndexedSubscript:", [v7 section]);
  [v9 setPrescription:v10];
  v11 = [v9 prescription];
  v12 = [v11 prescriptionType];

  if (v12 == 2)
  {
    v13 = @"UIA.Health.Contacts.Cell";
LABEL_7:
    [v9 setAccessibilityIdentifier:v13];
    goto LABEL_8;
  }

  v14 = [v9 prescription];
  v15 = [v14 prescriptionType];

  if (v15 == 1)
  {
    v13 = @"UIA.Health.Glasses.Cell";
    goto LABEL_7;
  }

LABEL_8:
  [v9 setOn:{-[NSMutableSet containsObject:](self->_enabledSamples, "containsObject:", v10)}];
  [v9 setDelegate:self];

LABEL_9:

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (a4)
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
  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:v3];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"NO_MATCHING_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  [v5 setExplanationText:v7];

  [v5 setShowLearnMoreButton:0];

  return v5;
}

- (id)_loadPreviewControllerForPrescription:(id)a3
{
  v4 = a3;
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
    v6 = [(NSBundle *)v5 initWithHealthStore:self->_healthStore visionPrescription:v4 canEdit:0];
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