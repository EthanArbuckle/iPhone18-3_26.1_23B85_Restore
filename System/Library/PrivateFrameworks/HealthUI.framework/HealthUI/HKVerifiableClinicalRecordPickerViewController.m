@interface HKVerifiableClinicalRecordPickerViewController
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (HKVerifiableClinicalRecordPickerViewController)initWithClinicalRecords:(id)a3 signedRecords:(id)a4 recordTypes:(id)a5;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_explanationText:(id)a3;
- (id)_headerIconForRecordTypes:(id)a3;
- (id)_headerTitleForRecordTypes:(id)a3;
- (id)_noDataExplanationTextForRecordTypes:(id)a3;
- (id)_noDataTableViewCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_enableSample:(id)a3 enabled:(BOOL)a4;
- (void)_finishWithError:(id)a3;
- (void)_setUpAccessoryButton;
- (void)_setUpCancelBarButtonItem;
- (void)_setUpFooterView;
- (void)_setUpTableView;
- (void)_updateShareButtonState;
- (void)cancelButtonTapped:(id)a3;
- (void)learnMoreButtonTapped:(id)a3;
- (void)noDataLearnMoreButtonTapped:(id)a3;
- (void)setSource:(id)a3;
- (void)shareButtonTapped:(id)a3;
- (void)showDetailsButtonTappedAtIndexPath:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKVerifiableClinicalRecordPickerViewController

- (HKVerifiableClinicalRecordPickerViewController)initWithClinicalRecords:(id)a3 signedRecords:(id)a4 recordTypes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKVerifiableClinicalRecordPickerViewController *)self _headerTitleForRecordTypes:v10];
  v12 = [(HKVerifiableClinicalRecordPickerViewController *)self _explanationText:self->_source];
  v13 = [(HKVerifiableClinicalRecordPickerViewController *)self _headerIconForRecordTypes:v10];
  v26.receiver = self;
  v26.super_class = HKVerifiableClinicalRecordPickerViewController;
  v14 = [(OBTableWelcomeController *)&v26 initWithTitle:v11 detailText:v12 icon:v13 adoptTableViewScrollView:1];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    enabledSamples = v14->_enabledSamples;
    v14->_enabledSamples = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v8];
    allSamples = v14->_allSamples;
    v14->_allSamples = v17;

    v19 = [v8 copy];
    clinicalRecords = v14->_clinicalRecords;
    v14->_clinicalRecords = v19;

    v21 = [v9 copy];
    signedRecordsByIdentifier = v14->_signedRecordsByIdentifier;
    v14->_signedRecordsByIdentifier = v21;

    v23 = [v10 copy];
    recordTypes = v14->_recordTypes;
    v14->_recordTypes = v23;

    v14->_hasData = [v8 count] != 0;
  }

  return v14;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HKVerifiableClinicalRecordPickerViewController;
  [(OBTableWelcomeController *)&v12 viewDidLoad];
  v3 = [(HKVerifiableClinicalRecordPickerViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 6)
  {
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v6 = [(HKVerifiableClinicalRecordPickerViewController *)self view];
    [v6 setBackgroundColor:v5];
  }

  [(HKVerifiableClinicalRecordPickerViewController *)self setModalInPresentation:1];
  v7 = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  [v7 setAllowFullWidthIcon:1];

  v8 = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  LODWORD(v9) = 1036831949;
  [v8 setTitleHyphenationFactor:v9];

  [(HKVerifiableClinicalRecordPickerViewController *)self _setUpTableView];
  [(HKVerifiableClinicalRecordPickerViewController *)self _setUpAccessoryButton];
  [(HKVerifiableClinicalRecordPickerViewController *)self _setUpFooterView];
  if (!self->_hasData)
  {
    [(HKVerifiableClinicalRecordPickerViewController *)self _setUpCancelBarButtonItem];
  }

  if ([(NSArray *)self->_clinicalRecords count]== 1)
  {
    v10 = [(NSArray *)self->_clinicalRecords objectAtIndexedSubscript:0];
    [(HKVerifiableClinicalRecordPickerViewController *)self _enableSample:v10 enabled:1];
  }

  [(HKVerifiableClinicalRecordPickerViewController *)self _updateShareButtonState];
  [(HKVerifiableClinicalRecordPickerViewController *)self _updateCancelButtonState];
  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HKVerifiableClinicalRecordPickerViewController;
  [(OBTableWelcomeController *)&v8 viewWillAppear:?];
  if (self->_hasData)
  {
    v5 = [(HKVerifiableClinicalRecordPickerViewController *)self navigationController];
    v6 = [v5 isNavigationBarHidden];

    if ((v6 & 1) == 0)
    {
      v7 = [(HKVerifiableClinicalRecordPickerViewController *)self navigationController];
      [v7 setNavigationBarHidden:1 animated:v3];
    }
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

  v7 = [(HKVerifiableClinicalRecordPickerViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 setBackgroundColor:v9];
  }

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setAllowsMultipleSelection:1];

  v12 = [(OBTableWelcomeController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[(HKObjectPickerTableViewCell *)HKSignedClinicalDataTableViewCell];
  [v12 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = [(OBTableWelcomeController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[HKObjectPickerShowDetailsTableViewCell defaultReuseIdentifier];
  [v15 registerClass:v16 forCellReuseIdentifier:v17];

  v20 = [(OBTableWelcomeController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  [v20 registerClass:v18 forCellReuseIdentifier:v19];
}

- (void)_setUpAccessoryButton
{
  v7 = [MEMORY[0x1E69B7D20] accessoryButton];
  v3 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v7 setTintColor:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [v7 setTitle:v5 forState:0];

  [v7 addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:64];
  v6 = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  [v6 addAccessoryButton:v7];
}

- (void)_setUpFooterView
{
  v3 = [MEMORY[0x1E69B7D00] boldButton];
  shareButton = self->_shareButton;
  self->_shareButton = v3;

  v5 = self->_shareButton;
  v6 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(OBBoldTrayButton *)v5 setTintColor:v6];

  v7 = self->_shareButton;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SHARE_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [(OBBoldTrayButton *)v7 setTitle:v9 forState:0];

  [(OBBoldTrayButton *)self->_shareButton addTarget:self action:sel_shareButtonTapped_ forControlEvents:64];
  v10 = [(HKVerifiableClinicalRecordPickerViewController *)self buttonTray];
  [v10 addButton:self->_shareButton];

  v11 = [MEMORY[0x1E69B7D38] linkButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v11;

  v13 = self->_cancelButton;
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"DONT_SHARE_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [(OBLinkTrayButton *)v13 setTitle:v15 forState:0];

  [(OBLinkTrayButton *)self->_cancelButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64];
  v16 = [(HKVerifiableClinicalRecordPickerViewController *)self buttonTray];
  [v16 addButton:self->_cancelButton];
}

- (void)_setUpCancelBarButtonItem
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (id)_explanationText:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_DATA_WITH_APP_EXPLANATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v4 name];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F42FFBE0;
  }

  v10 = [v7 stringWithFormat:v6, v9];

  return v10;
}

- (id)_headerIconForRecordTypes:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:*MEMORY[0x1E696BEA0]])
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = HKHealthUIFrameworkBundle();
    v6 = @"scd_immunizations";
  }

  else
  {
    v7 = [v3 containsObject:*MEMORY[0x1E696BEA8]];
    v4 = MEMORY[0x1E69DCAB8];
    v5 = HKHealthUIFrameworkBundle();
    if (v7)
    {
      v6 = @"scd_labs";
    }

    else
    {
      v6 = @"health_records_all_records";
    }
  }

  v8 = [v4 imageNamed:v6 inBundle:v5];

  return v8;
}

- (id)_headerTitleForRecordTypes:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SHARE_RESULT_WITH_APP_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  return v4;
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
      [HKVerifiableClinicalRecordPickerViewController shareButtonTapped:];
    }
  }

  [(HKVerifiableClinicalRecordPickerViewController *)self _finishWithError:0];
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
      [HKVerifiableClinicalRecordPickerViewController cancelButtonTapped:];
    }
  }

  v7 = [MEMORY[0x1E696ABC0] hk_error:7 format:@"The user canceled authorization."];
  [(HKVerifiableClinicalRecordPickerViewController *)self _finishWithError:v7];
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
      [HKVerifiableClinicalRecordPickerViewController _finishWithError:];
    }
  }

  v8 = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
    [v10 pickerControllerDidFinish:self error:v4];
  }
}

- (void)setSource:(id)a3
{
  objc_storeStrong(&self->_source, a3);
  v5 = a3;
  v7 = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  v6 = [(HKVerifiableClinicalRecordPickerViewController *)self _explanationText:self->_source];

  [v7 setDetailText:v6];
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
  v3 = [(NSMutableSet *)self->_enabledSamples count]!= 0;
  shareButton = self->_shareButton;

  [(OBBoldTrayButton *)shareButton setEnabled:v3];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_hasData)
  {
    return [(NSArray *)self->_clinicalRecords count];
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_hasData)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (!self->_hasData)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", a4}];
    v8 = v7;
    v9 = @"DATA_SECTION_TABLE_HEADER_NO_DATA";
    goto LABEL_5;
  }

  v6 = [(NSArray *)self->_clinicalRecords count];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = v7;
  if (v6 == 1)
  {
    v9 = @"DATA_SECTION_TABLE_HEADER";
LABEL_5:
    v10 = [v7 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    v11 = [v10 localizedUppercaseString];

    goto LABEL_7;
  }

  v12 = [v7 localizedStringForKey:@"DATA_SECTION_TABLE_HEADER_STRING_FORMAT_%1$ld_%2$ld" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v12, a4 + 1, -[NSArray count](self->_clinicalRecords, "count")];
  v8 = v12;
LABEL_7:

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_hasData)
  {
    if ([v7 row] == 1)
    {
      v9 = +[HKObjectPickerShowDetailsTableViewCell defaultReuseIdentifier];
      v10 = [v6 dequeueReusableCellWithIdentifier:v9];
    }

    else
    {
      v39 = +[(HKObjectPickerTableViewCell *)HKSignedClinicalDataTableViewCell];
      v10 = [v6 dequeueReusableCellWithIdentifier:?];
      v11 = -[NSArray objectAtIndexedSubscript:](self->_clinicalRecords, "objectAtIndexedSubscript:", [v8 section]);
      signedRecordsByIdentifier = self->_signedRecordsByIdentifier;
      v13 = [v11 originIdentifier];
      v14 = [(NSDictionary *)signedRecordsByIdentifier objectForKeyedSubscript:v13];

      v15 = [v11 recordTypeDisplayName];
      [v10 setPrimaryText:v15];

      v38 = v14;
      if (v14)
      {
        v16 = [v14 issuerDisplayStringWithSignatureStatusGlyph];
        [v10 setSecondaryAttributedText:v16];

        v17 = [v14 items];
        v18 = [v17 sortedArrayUsingComparator:&__block_literal_global];

        v19 = [v18 hk_map:&__block_literal_global_377];
        [v10 setDetailItems:v19];
      }

      else
      {
        v20 = [v11 recordIssuerDisplayName];
        [v10 setSecondaryText:v20];

        v21 = [v11 relevantDate];
        v22 = [MEMORY[0x1E695DEE8] currentCalendar];
        v23 = [v21 hk_utcDateAdjustedToCalendar:v22];

        v24 = HKLocalizedStringForDateAndTemplate(v23, 10);
        v25 = [HKObjectPickerDetailItem alloc];
        v26 = [v11 recordItemsDisplayName];
        v27 = [(HKObjectPickerDetailItem *)v25 initWithPrimaryText:v26 secondaryText:v24];

        v41[0] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
        [v10 setDetailItems:v28];
      }

      v29 = [v11 subject];
      v30 = [v29 fullName];
      [v10 setPatientName:v30];

      v31 = [v11 subject];
      v32 = [v31 dateOfBirthComponents];

      if (v32)
      {
        v33 = [v32 hk_populatedCalendarGregorianCalendarDefault];
        v34 = [v33 dateFromComponents:v32];
        v35 = HKLocalizedStringForDateAndTemplate(v34, 10);
        v40 = v35;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        [v10 setPatientDetails:v36];
      }

      [v10 setChecked:{-[NSMutableSet containsObject:](self->_enabledSamples, "containsObject:", v11)}];
    }
  }

  else
  {
    v10 = [(HKVerifiableClinicalRecordPickerViewController *)self _noDataTableViewCell];
  }

  return v10;
}

uint64_t __82__HKVerifiableClinicalRecordPickerViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 relevantDate];
  v6 = [v4 relevantDate];

  v7 = [v5 compare:v6];
  return v7;
}

HKObjectPickerDetailItem *__82__HKVerifiableClinicalRecordPickerViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 relevantDate];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v3 hk_utcDateAdjustedToCalendar:v4];

  v6 = [HKObjectPickerDetailItem alloc];
  v7 = [v2 primaryConcept];

  v8 = [v7 localizedPreferredName];
  v9 = HKLocalizedStringForDateAndTemplate(v5, 10);
  v10 = [(HKObjectPickerDetailItem *)v6 initWithPrimaryText:v8 secondaryText:v9];

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = *MEMORY[0x1E69DE3D0];
  if (!a4)
  {
    return 10.0;
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  [v9 deselectRowAtIndexPath:v6 animated:1];
  if (self->_hasData)
  {
    if ([v6 row] == 1)
    {
      [(HKVerifiableClinicalRecordPickerViewController *)self showDetailsButtonTappedAtIndexPath:v6];
    }

    else
    {
      v7 = [v9 cellForRowAtIndexPath:v6];
      v8 = -[NSArray objectAtIndexedSubscript:](self->_clinicalRecords, "objectAtIndexedSubscript:", [v6 section]);
      -[HKVerifiableClinicalRecordPickerViewController _enableSample:enabled:](self, "_enableSample:enabled:", v8, [v7 checked] ^ 1);
      [v7 setChecked:{-[NSMutableSet containsObject:](self->_enabledSamples, "containsObject:", v8)}];
      [(HKVerifiableClinicalRecordPickerViewController *)self _updateShareButtonState];
    }
  }
}

- (id)_noDataTableViewCell
{
  v3 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:v3];

  v6 = [(HKVerifiableClinicalRecordPickerViewController *)self _noDataExplanationTextForRecordTypes:self->_recordTypes];
  [v5 setExplanationText:v6];

  v7 = [v5 learnMoreButton];
  [v7 addTarget:self action:sel_noDataLearnMoreButtonTapped_ forControlEvents:64];

  return v5;
}

- (id)_noDataExplanationTextForRecordTypes:(id)a3
{
  v3 = a3;
  v4 = [v3 containsObject:*MEMORY[0x1E696BE98]];
  if ([v3 containsObject:*MEMORY[0x1E696BEA0]])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (v4)
    {
      v6 = @"NO_DATA_TEXT_COVID_IMMUNIZATION";
    }

    else
    {
      v6 = @"NO_DATA_TEXT_IMMUNIZATION";
    }
  }

  else
  {
    v7 = [v3 containsObject:*MEMORY[0x1E696BEA8]];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (v7)
    {
      if (v4)
      {
        v6 = @"NO_DATA_TEXT_COVID_LABORATORY";
      }

      else
      {
        v6 = @"NO_DATA_TEXT_LABORATORY";
      }
    }

    else if (v4)
    {
      v6 = @"NO_DATA_TEXT_COVID_RECORD";
    }

    else
    {
      v6 = @"NO_DATA_TEXT_RECORD";
    }
  }

  v8 = [v5 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  return v8;
}

- (void)noDataLearnMoreButtonTapped:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = a3;
  v8 = [[v4 alloc] initWithString:@"https://support.apple.com/en-us/HT212752"];
  v6 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v8];
  [v6 setModalPresentationStyle:7];
  v7 = [v6 popoverPresentationController];
  [v7 setSourceView:v5];

  [v6 setDismissButtonStyle:0];
  [(HKVerifiableClinicalRecordPickerViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)showDetailsButtonTappedAtIndexPath:(id)a3
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_clinicalRecords, "objectAtIndexedSubscript:", [a3 section]);
  signedRecordsByIdentifier = self->_signedRecordsByIdentifier;
  v6 = [v4 originIdentifier];
  v7 = [(NSDictionary *)signedRecordsByIdentifier objectForKeyedSubscript:v6];

  v8 = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
    v11 = [v10 medicalRecordsForVerifiableClinicalRecord:v4];

    if (v7)
    {
LABEL_3:
      v12 = [[HKVerifiableClinicalRecordDetailViewController alloc] initWithSignedRecord:v7 medicalRecords:v11];
      v13 = [(HKVerifiableClinicalRecordPickerViewController *)self navigationController];
      [v13 pushViewController:v12 animated:1];

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogAuthorization();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

    if (v15)
    {
      v16 = HKLogAuthorization();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [HKVerifiableClinicalRecordPickerViewController showDetailsButtonTappedAtIndexPath:];
      }
    }

    v11 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  _HKInitializeLogging();
  v17 = HKLogAuthorization();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

  if (v18)
  {
    v12 = HKLogAuthorization();
    if (os_log_type_enabled(&v12->super.super.super.super.super, OS_LOG_TYPE_DEBUG))
    {
      [(HKVerifiableClinicalRecordPickerViewController *)self showDetailsButtonTappedAtIndexPath:v4];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (HKHealthPrivacyServicePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shareButtonTapped:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)cancelButtonTapped:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_finishWithError:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)showDetailsButtonTappedAtIndexPath:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)showDetailsButtonTappedAtIndexPath:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v9 = [a2 originIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end