@interface HKVerifiableClinicalRecordPickerViewController
- (HKHealthPrivacyServicePickerControllerDelegate)delegate;
- (HKVerifiableClinicalRecordPickerViewController)initWithClinicalRecords:(id)records signedRecords:(id)signedRecords recordTypes:(id)types;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_explanationText:(id)text;
- (id)_headerIconForRecordTypes:(id)types;
- (id)_headerTitleForRecordTypes:(id)types;
- (id)_noDataExplanationTextForRecordTypes:(id)types;
- (id)_noDataTableViewCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_enableSample:(id)sample enabled:(BOOL)enabled;
- (void)_finishWithError:(id)error;
- (void)_setUpAccessoryButton;
- (void)_setUpCancelBarButtonItem;
- (void)_setUpFooterView;
- (void)_setUpTableView;
- (void)_updateShareButtonState;
- (void)cancelButtonTapped:(id)tapped;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)noDataLearnMoreButtonTapped:(id)tapped;
- (void)setSource:(id)source;
- (void)shareButtonTapped:(id)tapped;
- (void)showDetailsButtonTappedAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKVerifiableClinicalRecordPickerViewController

- (HKVerifiableClinicalRecordPickerViewController)initWithClinicalRecords:(id)records signedRecords:(id)signedRecords recordTypes:(id)types
{
  recordsCopy = records;
  signedRecordsCopy = signedRecords;
  typesCopy = types;
  v11 = [(HKVerifiableClinicalRecordPickerViewController *)self _headerTitleForRecordTypes:typesCopy];
  v12 = [(HKVerifiableClinicalRecordPickerViewController *)self _explanationText:self->_source];
  v13 = [(HKVerifiableClinicalRecordPickerViewController *)self _headerIconForRecordTypes:typesCopy];
  v26.receiver = self;
  v26.super_class = HKVerifiableClinicalRecordPickerViewController;
  v14 = [(OBTableWelcomeController *)&v26 initWithTitle:v11 detailText:v12 icon:v13 adoptTableViewScrollView:1];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    enabledSamples = v14->_enabledSamples;
    v14->_enabledSamples = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:recordsCopy];
    allSamples = v14->_allSamples;
    v14->_allSamples = v17;

    v19 = [recordsCopy copy];
    clinicalRecords = v14->_clinicalRecords;
    v14->_clinicalRecords = v19;

    v21 = [signedRecordsCopy copy];
    signedRecordsByIdentifier = v14->_signedRecordsByIdentifier;
    v14->_signedRecordsByIdentifier = v21;

    v23 = [typesCopy copy];
    recordTypes = v14->_recordTypes;
    v14->_recordTypes = v23;

    v14->_hasData = [recordsCopy count] != 0;
  }

  return v14;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HKVerifiableClinicalRecordPickerViewController;
  [(OBTableWelcomeController *)&v12 viewDidLoad];
  traitCollection = [(HKVerifiableClinicalRecordPickerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view = [(HKVerifiableClinicalRecordPickerViewController *)self view];
    [view setBackgroundColor:systemBackgroundColor];
  }

  [(HKVerifiableClinicalRecordPickerViewController *)self setModalInPresentation:1];
  headerView = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  [headerView setAllowFullWidthIcon:1];

  headerView2 = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  LODWORD(v9) = 1036831949;
  [headerView2 setTitleHyphenationFactor:v9];

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
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = HKVerifiableClinicalRecordPickerViewController;
  [(OBTableWelcomeController *)&v8 viewWillAppear:?];
  if (self->_hasData)
  {
    navigationController = [(HKVerifiableClinicalRecordPickerViewController *)self navigationController];
    isNavigationBarHidden = [navigationController isNavigationBarHidden];

    if ((isNavigationBarHidden & 1) == 0)
    {
      navigationController2 = [(HKVerifiableClinicalRecordPickerViewController *)self navigationController];
      [navigationController2 setNavigationBarHidden:1 animated:appearCopy];
    }
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

  traitCollection = [(HKVerifiableClinicalRecordPickerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 setBackgroundColor:systemBackgroundColor];
  }

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsMultipleSelection:1];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[(HKObjectPickerTableViewCell *)HKSignedClinicalDataTableViewCell];
  [tableView5 registerClass:v13 forCellReuseIdentifier:v14];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[HKObjectPickerShowDetailsTableViewCell defaultReuseIdentifier];
  [tableView6 registerClass:v16 forCellReuseIdentifier:v17];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  [tableView7 registerClass:v18 forCellReuseIdentifier:v19];
}

- (void)_setUpAccessoryButton
{
  accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [accessoryButton setTintColor:systemBlueColor];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [accessoryButton setTitle:v5 forState:0];

  [accessoryButton addTarget:self action:sel_learnMoreButtonTapped_ forControlEvents:64];
  headerView = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  [headerView addAccessoryButton:accessoryButton];
}

- (void)_setUpFooterView
{
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  shareButton = self->_shareButton;
  self->_shareButton = boldButton;

  v5 = self->_shareButton;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(OBBoldTrayButton *)v5 setTintColor:systemBlueColor];

  v7 = self->_shareButton;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SHARE_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [(OBBoldTrayButton *)v7 setTitle:v9 forState:0];

  [(OBBoldTrayButton *)self->_shareButton addTarget:self action:sel_shareButtonTapped_ forControlEvents:64];
  buttonTray = [(HKVerifiableClinicalRecordPickerViewController *)self buttonTray];
  [buttonTray addButton:self->_shareButton];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = linkButton;

  v13 = self->_cancelButton;
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"DONT_SHARE_BUTTON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [(OBLinkTrayButton *)v13 setTitle:v15 forState:0];

  [(OBLinkTrayButton *)self->_cancelButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64];
  buttonTray2 = [(HKVerifiableClinicalRecordPickerViewController *)self buttonTray];
  [buttonTray2 addButton:self->_cancelButton];
}

- (void)_setUpCancelBarButtonItem
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
}

- (id)_explanationText:(id)text
{
  v3 = MEMORY[0x1E696AAE8];
  textCopy = text;
  v5 = [v3 bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SHARE_DATA_WITH_APP_EXPLANATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  v7 = MEMORY[0x1E696AEC0];
  name = [textCopy name];

  if (name)
  {
    v9 = name;
  }

  else
  {
    v9 = &stru_1F42FFBE0;
  }

  v10 = [v7 stringWithFormat:v6, v9];

  return v10;
}

- (id)_headerIconForRecordTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy containsObject:*MEMORY[0x1E696BEA0]])
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = HKHealthUIFrameworkBundle();
    v6 = @"scd_immunizations";
  }

  else
  {
    v7 = [typesCopy containsObject:*MEMORY[0x1E696BEA8]];
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

- (id)_headerTitleForRecordTypes:(id)types
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SHARE_RESULT_WITH_APP_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  return v4;
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
      [HKVerifiableClinicalRecordPickerViewController shareButtonTapped:];
    }
  }

  [(HKVerifiableClinicalRecordPickerViewController *)self _finishWithError:0];
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
      [HKVerifiableClinicalRecordPickerViewController cancelButtonTapped:];
    }
  }

  v7 = [MEMORY[0x1E696ABC0] hk_error:7 format:@"The user canceled authorization."];
  [(HKVerifiableClinicalRecordPickerViewController *)self _finishWithError:v7];
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
      [HKVerifiableClinicalRecordPickerViewController _finishWithError:];
    }
  }

  delegate = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
    [delegate2 pickerControllerDidFinish:self error:errorCopy];
  }
}

- (void)setSource:(id)source
{
  objc_storeStrong(&self->_source, source);
  sourceCopy = source;
  headerView = [(HKVerifiableClinicalRecordPickerViewController *)self headerView];
  v6 = [(HKVerifiableClinicalRecordPickerViewController *)self _explanationText:self->_source];

  [headerView setDetailText:v6];
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
  v3 = [(NSMutableSet *)self->_enabledSamples count]!= 0;
  shareButton = self->_shareButton;

  [(OBBoldTrayButton *)shareButton setEnabled:v3];
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (!self->_hasData)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", section}];
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
    localizedUppercaseString = [v10 localizedUppercaseString];

    goto LABEL_7;
  }

  v12 = [v7 localizedStringForKey:@"DATA_SECTION_TABLE_HEADER_STRING_FORMAT_%1$ld_%2$ld" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  localizedUppercaseString = [MEMORY[0x1E696AEC0] stringWithFormat:v12, section + 1, -[NSArray count](self->_clinicalRecords, "count")];
  v8 = v12;
LABEL_7:

  return localizedUppercaseString;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v41[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_hasData)
  {
    if ([pathCopy row] == 1)
    {
      v9 = +[HKObjectPickerShowDetailsTableViewCell defaultReuseIdentifier];
      _noDataTableViewCell = [viewCopy dequeueReusableCellWithIdentifier:v9];
    }

    else
    {
      v39 = +[(HKObjectPickerTableViewCell *)HKSignedClinicalDataTableViewCell];
      _noDataTableViewCell = [viewCopy dequeueReusableCellWithIdentifier:?];
      v11 = -[NSArray objectAtIndexedSubscript:](self->_clinicalRecords, "objectAtIndexedSubscript:", [v8 section]);
      signedRecordsByIdentifier = self->_signedRecordsByIdentifier;
      originIdentifier = [v11 originIdentifier];
      v14 = [(NSDictionary *)signedRecordsByIdentifier objectForKeyedSubscript:originIdentifier];

      recordTypeDisplayName = [v11 recordTypeDisplayName];
      [_noDataTableViewCell setPrimaryText:recordTypeDisplayName];

      v38 = v14;
      if (v14)
      {
        issuerDisplayStringWithSignatureStatusGlyph = [v14 issuerDisplayStringWithSignatureStatusGlyph];
        [_noDataTableViewCell setSecondaryAttributedText:issuerDisplayStringWithSignatureStatusGlyph];

        items = [v14 items];
        v18 = [items sortedArrayUsingComparator:&__block_literal_global];

        v19 = [v18 hk_map:&__block_literal_global_377];
        [_noDataTableViewCell setDetailItems:v19];
      }

      else
      {
        recordIssuerDisplayName = [v11 recordIssuerDisplayName];
        [_noDataTableViewCell setSecondaryText:recordIssuerDisplayName];

        relevantDate = [v11 relevantDate];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v23 = [relevantDate hk_utcDateAdjustedToCalendar:currentCalendar];

        v24 = HKLocalizedStringForDateAndTemplate(v23, 10);
        v25 = [HKObjectPickerDetailItem alloc];
        recordItemsDisplayName = [v11 recordItemsDisplayName];
        v27 = [(HKObjectPickerDetailItem *)v25 initWithPrimaryText:recordItemsDisplayName secondaryText:v24];

        v41[0] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
        [_noDataTableViewCell setDetailItems:v28];
      }

      subject = [v11 subject];
      fullName = [subject fullName];
      [_noDataTableViewCell setPatientName:fullName];

      subject2 = [v11 subject];
      dateOfBirthComponents = [subject2 dateOfBirthComponents];

      if (dateOfBirthComponents)
      {
        hk_populatedCalendarGregorianCalendarDefault = [dateOfBirthComponents hk_populatedCalendarGregorianCalendarDefault];
        v34 = [hk_populatedCalendarGregorianCalendarDefault dateFromComponents:dateOfBirthComponents];
        v35 = HKLocalizedStringForDateAndTemplate(v34, 10);
        v40 = v35;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        [_noDataTableViewCell setPatientDetails:v36];
      }

      [_noDataTableViewCell setChecked:{-[NSMutableSet containsObject:](self->_enabledSamples, "containsObject:", v11)}];
    }
  }

  else
  {
    _noDataTableViewCell = [(HKVerifiableClinicalRecordPickerViewController *)self _noDataTableViewCell];
  }

  return _noDataTableViewCell;
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x1E69DE3D0];
  if (!section)
  {
    return 10.0;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if (self->_hasData)
  {
    if ([pathCopy row] == 1)
    {
      [(HKVerifiableClinicalRecordPickerViewController *)self showDetailsButtonTappedAtIndexPath:pathCopy];
    }

    else
    {
      v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
      v8 = -[NSArray objectAtIndexedSubscript:](self->_clinicalRecords, "objectAtIndexedSubscript:", [pathCopy section]);
      -[HKVerifiableClinicalRecordPickerViewController _enableSample:enabled:](self, "_enableSample:enabled:", v8, [v7 checked] ^ 1);
      [v7 setChecked:{-[NSMutableSet containsObject:](self->_enabledSamples, "containsObject:", v8)}];
      [(HKVerifiableClinicalRecordPickerViewController *)self _updateShareButtonState];
    }
  }
}

- (id)_noDataTableViewCell
{
  v3 = +[HKObjectPickerNoDataTableViewCell defaultReuseIdentifier];
  tableView = [(OBTableWelcomeController *)self tableView];
  v5 = [tableView dequeueReusableCellWithIdentifier:v3];

  v6 = [(HKVerifiableClinicalRecordPickerViewController *)self _noDataExplanationTextForRecordTypes:self->_recordTypes];
  [v5 setExplanationText:v6];

  learnMoreButton = [v5 learnMoreButton];
  [learnMoreButton addTarget:self action:sel_noDataLearnMoreButtonTapped_ forControlEvents:64];

  return v5;
}

- (id)_noDataExplanationTextForRecordTypes:(id)types
{
  typesCopy = types;
  v4 = [typesCopy containsObject:*MEMORY[0x1E696BE98]];
  if ([typesCopy containsObject:*MEMORY[0x1E696BEA0]])
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
    v7 = [typesCopy containsObject:*MEMORY[0x1E696BEA8]];
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

- (void)noDataLearnMoreButtonTapped:(id)tapped
{
  v4 = MEMORY[0x1E695DFF8];
  tappedCopy = tapped;
  v8 = [[v4 alloc] initWithString:@"https://support.apple.com/en-us/HT212752"];
  v6 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v8];
  [v6 setModalPresentationStyle:7];
  popoverPresentationController = [v6 popoverPresentationController];
  [popoverPresentationController setSourceView:tappedCopy];

  [v6 setDismissButtonStyle:0];
  [(HKVerifiableClinicalRecordPickerViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)showDetailsButtonTappedAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_clinicalRecords, "objectAtIndexedSubscript:", [path section]);
  signedRecordsByIdentifier = self->_signedRecordsByIdentifier;
  originIdentifier = [v4 originIdentifier];
  v7 = [(NSDictionary *)signedRecordsByIdentifier objectForKeyedSubscript:originIdentifier];

  delegate = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HKVerifiableClinicalRecordPickerViewController *)self delegate];
    v11 = [delegate2 medicalRecordsForVerifiableClinicalRecord:v4];

    if (v7)
    {
LABEL_3:
      v12 = [[HKVerifiableClinicalRecordDetailViewController alloc] initWithSignedRecord:v7 medicalRecords:v11];
      navigationController = [(HKVerifiableClinicalRecordPickerViewController *)self navigationController];
      [navigationController pushViewController:v12 animated:1];

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