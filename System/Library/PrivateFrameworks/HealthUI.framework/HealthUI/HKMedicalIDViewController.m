@interface HKMedicalIDViewController
+ (BOOL)isSupportedOnThisDevice;
- (BOOL)_refreshEmergencyContacts:(BOOL)a3;
- (BOOL)_shouldShowOrganDonation;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (HKMedicalIDViewController)initWithCoder:(id)a3;
- (HKMedicalIDViewControllerDelegate)delegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_formatMedicalIDAccessPoint:(int64_t)a3;
- (id)_newViewForFooterInSection:(int64_t)a3;
- (id)_newViewForHeaderInSection:(int64_t)a3;
- (id)_tableItemForIndexPath:(id)a3;
- (id)initInEditMode:(BOOL)a3 inBuddy:(BOOL)a4 organDonationSignupAvailable:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_adjustTableViewContentOffsetForVisibleView:(id)a3 visibleRect:(CGRect)a4 animated:(BOOL)a5;
- (void)_buildEditModeTableItems;
- (void)_buildPresentableTableItems;
- (void)_buildTableItems;
- (void)_buildViewModeTableItems;
- (void)_cancelEditingTapped:(id)a3;
- (void)_contactStoreDidChange:(id)a3;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_dismissMedicalIDEditor;
- (void)_doneEditingTapped:(id)a3;
- (void)_doneTapped:(id)a3;
- (void)_fetchDemographicInformation;
- (void)_forceDisableBiometricIfDeviceLocked;
- (void)_nextButtonTapped:(id)a3;
- (void)_refreshMedicalIDInViewMode;
- (void)_reloadTableWithMedicalIDData:(id)a3;
- (void)_showMedicalIDPreviewAsNext;
- (void)_submitAccessAnalytic;
- (void)_updateMedicalID;
- (void)_updateMedicalIDNameWithDemographicsInformation:(id)a3;
- (void)dealloc;
- (void)deletionTableItemDidTapDelete:(id)a3;
- (void)editButtonTapped:(id)a3;
- (void)editMedicalID:(id)a3;
- (void)editOrganDonation:(id)a3;
- (void)localeDidChange:(id)a3;
- (void)medicalIDViewControllerDidDelete:(id)a3;
- (void)setHealthStore:(id)a3;
- (void)tableItem:(id)a3 heightDidChangeForRowIndex:(int64_t)a4 keepRectVisible:(CGRect)a5 inView:(id)a6;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timeZoneDidChange:(id)a3;
- (void)updateEmergencyContactTableItem;
- (void)updateNavigationBar;
- (void)updatePrimaryLanguageTableItem;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKMedicalIDViewController

+ (BOOL)isSupportedOnThisDevice
{
  v2 = [MEMORY[0x1E696C198] shared];
  v3 = [v2 isMedicalIDAvailable];

  return v3;
}

- (id)initInEditMode:(BOOL)a3 inBuddy:(BOOL)a4 organDonationSignupAvailable:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = HKMedicalIDViewController;
  v8 = [(HKMedicalIDViewController *)&v11 initWithStyle:1];
  v9 = v8;
  if (v8)
  {
    v8->_inEditMode = a3;
    v8->_inBuddy = a4;
    v8->_organDonationSignupAvailable = a5;
    v8->_showsShowWhenLockedState = 1;
    v8->_showsEmergencyAccessState = 1;
    v8->_showsEditMedicalIDRowInViewMode = 0;
    v8->_inBridge = 0;
    [(HKMedicalIDViewController *)v8 setModernAppearance:[(HKMedicalIDViewController *)v8 inEditMode]^ 1];
    [(HKMedicalIDViewController *)v9 setModalInPresentation:[(HKMedicalIDViewController *)v9 inEditMode]];
  }

  return v9;
}

- (HKMedicalIDViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKMedicalIDViewController;
  return [(HKMedicalIDViewController *)&v4 initWithCoder:a3];
}

- (void)setHealthStore:(id)a3
{
  objc_storeStrong(&self->_healthStore, a3);
  v7 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:v7];
  profileStore = self->_profileStore;
  self->_profileStore = v5;
}

- (void)viewDidLoad
{
  v61.receiver = self;
  v61.super_class = HKMedicalIDViewController;
  [(HKMedicalIDViewController *)&v61 viewDidLoad];
  [(HKMedicalIDViewController *)self _submitAccessAnalytic];
  self->_tableViewStyle = 1;
  [(HKMedicalIDViewController *)self updateNavigationBar];
  v3 = [(HKMedicalIDViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F430FD00];

  v4 = [(HKMedicalIDViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F4311540];

  v5 = [(HKMedicalIDViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F431A620];

  v6 = [(HKMedicalIDViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F430F660];

  v7 = [(HKMedicalIDViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F4310E00];

  v8 = [(HKMedicalIDViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F43119C0];

  v9 = [(HKMedicalIDViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[HKOrganDonationCallToActionTableViewCell defaultReuseIdentifier];
  [v9 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [(HKMedicalIDViewController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[HKIDRegisteredReviewCell defaultReuseIdentifier];
  [v12 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = [(HKMedicalIDViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[HKOrganDonationRegisteredTableViewCell defaultReuseIdentifier];
  [v15 registerClass:v16 forCellReuseIdentifier:v17];

  v18 = [(HKMedicalIDViewController *)self tableView];
  v19 = objc_opt_class();
  v20 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
  [v18 registerClass:v19 forCellReuseIdentifier:v20];

  v21 = [(HKMedicalIDViewController *)self tableView];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F4307D40];

  v22 = *MEMORY[0x1E69DE3D0];
  v23 = [(HKMedicalIDViewController *)self tableView];
  [v23 setRowHeight:v22];

  [(HKMedicalIDViewController *)self _buildTableItems];
  v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v25 = [(HKMedicalIDViewController *)self tableView];
  [v25 setTableFooterView:v24];

  v26 = [(HKMedicalIDViewController *)self tableView];
  [v26 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];

  v27 = [(HKMedicalIDViewController *)self tableView];
  v28 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381318);
  [v27 setAccessibilityIdentifier:v28];

  if ([(HKMedicalIDViewController *)self inEditMode])
  {
    v29 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelEditingTapped_];
    v30 = [(HKMedicalIDViewController *)self navigationItem];
    [v30 setLeftBarButtonItem:v29];

    LODWORD(v29) = self->_inBuddy;
    v31 = objc_alloc(MEMORY[0x1E69DC708]);
    v32 = v31;
    if (v29 == 1)
    {
      v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v34 = [v33 localizedStringForKey:@"OD_NEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v35 = [v32 initWithTitle:v34 style:2 target:self action:sel__nextButtonTapped_];
      v36 = [(HKMedicalIDViewController *)self navigationItem];
      [v36 setRightBarButtonItem:v35];
    }

    else
    {
      v33 = [v31 initWithBarButtonSystemItem:0 target:self action:sel__doneEditingTapped_];
      v34 = [(HKMedicalIDViewController *)self navigationItem];
      [v34 setRightBarButtonItem:v33];
    }

    v46 = [(HKMedicalIDViewController *)self tableView];
    [v46 setEstimatedRowHeight:52.0 + 24.0];

    v47 = [(HKMedicalIDViewController *)self tableView];
    [v47 setKeyboardDismissMode:1];

    v48 = [(HKMedicalIDViewController *)self tableView];
    [v48 setEditing:1];

    v49 = [(HKMedicalIDViewController *)self tableView];
    [v49 setAllowsSelectionDuringEditing:1];
    goto LABEL_11;
  }

  v37 = [(HKMedicalIDViewController *)self tableView];
  [v37 setEstimatedRowHeight:52.0];

  v38 = [(HKMedicalIDViewController *)self tableView];
  [v38 _setDrawsSeparatorAtTopOfSections:0];

  v39 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v40 = [(HKMedicalIDViewController *)self tableView];
  [v40 setBackgroundColor:v39];

  v41 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v42 = [(HKMedicalIDViewController *)self tableView];
  [v42 setTableHeaderBackgroundColor:v41];

  v43 = [(HKMedicalIDViewController *)self tableView];
  [v43 _setTopPadding:0.0];

  if (self->_inBuddy)
  {
    v44 = objc_alloc(MEMORY[0x1E69DC708]);
    v45 = sel__doneEditingTapped_;
LABEL_10:
    v49 = [v44 initWithBarButtonSystemItem:0 target:self action:v45];
    v50 = [(HKMedicalIDViewController *)self navigationItem];
    [v50 setRightBarButtonItem:v49];

LABEL_11:
    goto LABEL_12;
  }

  if (self->_showsDismissButton)
  {
    v44 = objc_alloc(MEMORY[0x1E69DC708]);
    v45 = sel__doneTapped_;
    goto LABEL_10;
  }

LABEL_12:
  v51 = [MEMORY[0x1E696AD88] defaultCenter];
  [v51 addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v52 = [MEMORY[0x1E696AD88] defaultCenter];
  [v52 addObserver:self selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  v53 = [MEMORY[0x1E696AD88] defaultCenter];
  [v53 addObserver:self selector:sel_timeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];

  v54 = [MEMORY[0x1E696AD88] defaultCenter];
  [v54 addObserver:self selector:sel__contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

  objc_initWeak(&location, self);
  v55 = *MEMORY[0x1E696C8C8];
  v56 = MEMORY[0x1E69E96A0];
  v57 = MEMORY[0x1E69E96A0];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __40__HKMedicalIDViewController_viewDidLoad__block_invoke;
  v58[3] = &unk_1E81B8BE0;
  objc_copyWeak(&v59, &location);
  notify_register_dispatch(v55, &self->_medicalIDChangedToken, v56, v58);

  objc_destroyWeak(&v59);
  objc_destroyWeak(&location);
}

void __40__HKMedicalIDViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshMedicalIDInViewMode];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E695DA68] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];
  notify_cancel(self->_medicalIDChangedToken);

  v4.receiver = self;
  v4.super_class = HKMedicalIDViewController;
  [(HKMedicalIDViewController *)&v4 dealloc];
}

- (void)updateNavigationBar
{
  v37[2] = *MEMORY[0x1E69E9840];
  if ([(HKMedicalIDViewController *)self allowsEditing])
  {
    if (+[HKOrganDonationConnectionManager hasStoredRegistrant]|| ([(HKMedicalIDViewController *)self medicalID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editButtonTapped_];
      v5 = [(HKMedicalIDViewController *)self navigationItem];
      [v5 setRightBarButtonItem:v4];

      if ([MEMORY[0x1E696C608] isRunningStoreDemoMode])
      {
        v6 = [(HKMedicalIDViewController *)self navigationItem];
        v7 = [v6 rightBarButtonItem];
        [v7 setEnabled:0];
      }
    }
  }

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"medical_id_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if ([(HKMedicalIDViewController *)self isSecondaryProfileMedicalID])
  {
    v10 = [(_HKMedicalIDData *)self->_medicalID name];

    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"%@_medical_id_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v14 = [(_HKMedicalIDData *)self->_medicalID name];
      v15 = [v11 stringWithFormat:v13, v14];

      v9 = v15;
    }
  }

  v16 = [(HKMedicalIDViewController *)self title];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v9;
  }

  v19 = [@" " stringByAppendingString:v18];

  v20 = MEMORY[0x1E69DCAB8];
  v21 = HKHealthUIFrameworkBundle();
  v22 = [v20 imageNamed:@"medicalid_header_glyph" inBundle:v21];

  v23 = [MEMORY[0x1E69DC888] systemRedColor];
  v24 = [v22 _flatImageWithColor:v23];

  v25 = [(HKMedicalIDViewController *)self navigationController];
  v26 = [v25 navigationBar];
  v27 = [v26 _defaultTitleFont];

  if (!v27)
  {
    v27 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  }

  v28 = *MEMORY[0x1E69DB648];
  v37[0] = v27;
  v29 = *MEMORY[0x1E69DB650];
  v36[0] = v28;
  v36[1] = v29;
  v30 = [MEMORY[0x1E69DC888] labelColor];
  v37[1] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

  v32 = [(HKMedicalIDViewController *)self tableView];
  UIRoundToViewScale();
  v33 = [v19 hk_attributedStringPrefixedWithImage:v24 baselineAdjusted:v31 withAttributes:?];

  v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v34 setAttributedText:v33];
  [v34 sizeToFit];
  v35 = [(HKMedicalIDViewController *)self navigationItem];
  [v35 setTitleView:v34];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_footers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) updateFont];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(HKMedicalIDViewController *)self tableView];
  [v9 reloadData];
}

- (void)localeDidChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_localeItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 localeDidChange:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(HKMedicalIDViewController *)self tableView];
  [v11 reloadData];
}

- (void)timeZoneDidChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_localeItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 timeZoneDidChange:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(HKMedicalIDViewController *)self tableView];
  [v11 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKMedicalIDViewController;
  [(HKMedicalIDViewController *)&v4 viewWillAppear:a3];
  [(HKMedicalIDViewController *)self _reloadTableWithMedicalIDData:self->_medicalID];
  [(HKMedicalIDViewController *)self _forceDisableBiometricIfDeviceLocked];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 medicalIDViewControllerDidAppear:self];
  }

  v8.receiver = self;
  v8.super_class = HKMedicalIDViewController;
  [(HKMedicalIDViewController *)&v8 viewDidAppear:v3];
}

- (void)_fetchDemographicInformation
{
  v3 = [(_HKMedicalIDData *)self->_medicalID name];
  if (!v3 || (v4 = v3, -[_HKMedicalIDData name](self->_medicalID, "name"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {
    objc_initWeak(&location, self);
    isSecondaryProfileMedicalID = self->_isSecondaryProfileMedicalID;
    v8 = [(HKMedicalIDViewController *)self healthStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__HKMedicalIDViewController__fetchDemographicInformation__block_invoke;
    v9[3] = &unk_1E81B8C08;
    objc_copyWeak(&v10, &location);
    [v8 hk_fetchExistingDemographicInformationWithOptions:isSecondaryProfileMedicalID completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__HKMedicalIDViewController__fetchDemographicInformation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 147))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__HKMedicalIDViewController__fetchDemographicInformation__block_invoke_2;
    v6[3] = &unk_1E81B5AD0;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)_updateMedicalIDNameWithDemographicsInformation:(id)a3
{
  v16 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v5 = [v16 firstName];
  [v4 setGivenName:v5];

  v6 = [v16 lastName];
  [v4 setFamilyName:v6];

  v7 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v4 style:2 options:0];
  v8 = [v7 length];
  v9 = v8 != 0;
  if (v8)
  {
    [(_HKMedicalIDData *)self->_medicalID setName:v7];
    [(HKEmergencyCardNameAndPictureTableItem *)self->_nameAndPictureItem setData:self->_medicalID];
  }

  v10 = [v16 dateOfBirthComponents];
  if (v10)
  {
    [(_HKMedicalIDData *)self->_medicalID setGregorianBirthday:v10];
    v9 = 1;
  }

  v11 = [v16 bloodTypeObject];
  v12 = [v11 bloodType];

  if (v12)
  {
    [(_HKMedicalIDData *)self->_medicalID setBloodType:v12];
    v9 = 1;
  }

  v13 = [v16 heightQuantity];
  if (v13)
  {
    [(_HKMedicalIDData *)self->_medicalID setHeight:v13];
    v9 = 1;
  }

  v14 = [v16 weightQuantity];
  if (v14)
  {
    [(_HKMedicalIDData *)self->_medicalID setWeight:v14];
  }

  else if (!v9)
  {
    goto LABEL_13;
  }

  v15 = [(HKMedicalIDViewController *)self tableView];
  [v15 reloadData];

LABEL_13:
}

- (void)_reloadTableWithMedicalIDData:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  medicalID = self->_medicalID;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696C648]);
    [(HKMedicalIDViewController *)self _fetchDemographicInformation];
    if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
    {
      v7 = [(_HKMedicalIDData *)v6 isOrganDonor];

      if (!v7)
      {
        [(_HKMedicalIDData *)v6 setIsOrganDonor:&unk_1F4383BF8];
      }
    }
  }

  if (self->_medicalID != v6)
  {
    objc_storeStrong(&self->_medicalID, v6);
  }

  v8 = [(HKMedicalIDViewController *)self _fetchProfileFirstName];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(HKMedicalIDViewController *)self tableItems];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [(HKMedicalIDViewController *)self medicalID];
        [v14 setData:v15];

        [v14 setProfileFirstName:v8];
        [v14 setOwningViewController:self];
        [v14 setShouldShowHints:{-[HKMedicalIDViewController shouldShowHints](self, "shouldShowHints")}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [(HKMedicalIDViewController *)self _refreshEmergencyContacts:medicalID == 0];
  [(HKMedicalIDViewController *)self _buildPresentableTableItems];
  v16 = [(HKMedicalIDViewController *)self tableView];
  [v16 reloadData];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 medicalIDViewControllerDidUpdate:self];
  }
}

- (void)_contactStoreDidChange:(id)a3
{
  if ([(HKMedicalIDViewController *)self _refreshEmergencyContacts:self->_medicalID == 0]&& ![(HKMedicalIDViewController *)self shouldShowHints])
  {
    [(HKMedicalIDViewController *)self _buildPresentableTableItems];
  }

  v4 = [(HKMedicalIDViewController *)self tableView];
  [v4 reloadData];
}

- (BOOL)_refreshEmergencyContacts:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v6 = [v5 type];

  v7 = v6 == 1 && [(_HKMedicalIDData *)self->_medicalID consolidateSOSAndEmergencyContacts];
  v8 = [(HKEmergencyCardContactsTableItem *)self->_contactsItem refreshFromData:v3]|| v7;
  if ((v8 & 1) != 0 && !self->_inEditMode)
  {
    [(HKMedicalIDViewController *)self _updateMedicalID];
  }

  return v8 & 1;
}

- (void)editButtonTapped:(id)a3
{
  v4 = a3;
  if ([(HKMedicalIDViewController *)self _shouldShowOrganDonation]&& (+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable](HKOrganDonationConnectionManager, "isOrganDonationRegistrationAvailable") || +[HKOrganDonationConnectionManager hasStoredRegistrant](HKOrganDonationConnectionManager, "hasStoredRegistrant")) && +[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    v5 = [(HKMedicalIDViewController *)self medicalID];

    if (v5)
    {
      v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v7 = MEMORY[0x1E69DC648];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = [v8 localizedStringForKey:@"EDIT_MEDICAL_ID" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __46__HKMedicalIDViewController_editButtonTapped___block_invoke;
      v26[3] = &unk_1E81B6F00;
      v26[4] = self;
      v10 = v4;
      v27 = v10;
      v11 = [v7 actionWithTitle:v9 style:0 handler:v26];
      [v6 addAction:v11];

      v12 = MEMORY[0x1E69DC648];
      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v14 = [v13 localizedStringForKey:@"EDIT_OD" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __46__HKMedicalIDViewController_editButtonTapped___block_invoke_2;
      v23 = &unk_1E81B6F00;
      v24 = self;
      v25 = v10;
      v15 = [v12 actionWithTitle:v14 style:0 handler:&v20];
      [v6 addAction:{v15, v20, v21, v22, v23, v24}];

      v16 = MEMORY[0x1E69DC648];
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v18 = [v17 localizedStringForKey:@"EDIT_MEDICAL_ID_OD_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v19 = [v16 actionWithTitle:v18 style:1 handler:0];
      [v6 addAction:v19];

      [(HKMedicalIDViewController *)self presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      [(HKMedicalIDViewController *)self editOrganDonation:v4];
    }
  }

  else
  {
    [(HKMedicalIDViewController *)self editMedicalID:v4];
  }
}

- (void)_cancelEditingTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidCancel:self];
  }
}

- (void)_doneEditingTapped:(id)a3
{
  [(NSArray *)self->_presentableTableItems makeObjectsPerformSelector:sel_commitEditing];
  [(HKMedicalIDViewController *)self _updateMedicalID];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidSave:self];
  }
}

- (void)_nextButtonTapped:(id)a3
{
  if (self->_inEditMode)
  {
    [(NSArray *)self->_presentableTableItems makeObjectsPerformSelector:sel_commitEditing];

    [(HKMedicalIDViewController *)self _showMedicalIDPreviewAsNext];
  }
}

- (void)editMedicalID:(id)a3
{
  v10 = [[HKMedicalIDViewController alloc] initInEditMode:1 inBuddy:self->_inBuddy organDonationSignupAvailable:self->_organDonationSignupAvailable];
  v4 = [(HKMedicalIDViewController *)self healthStore];
  [v10 setHealthStore:v4];

  v5 = [(HKMedicalIDViewController *)self medicalIDStore];
  [v10 setMedicalIDStore:v5];

  v6 = [(HKMedicalIDViewController *)self medicalID];
  v7 = [v6 copy];
  [v10 setMedicalID:v7];

  [v10 setShowsDeleteButton:{-[HKMedicalIDViewController showsDeleteButton](self, "showsDeleteButton")}];
  [v10 setDelegate:self];
  [v10 setInternalAccessType:6];
  [v10 setIsSecondaryProfileMedicalID:{-[HKMedicalIDViewController isSecondaryProfileMedicalID](self, "isSecondaryProfileMedicalID")}];
  v8 = [[HKMedicalIDNavigationController alloc] initWithRootViewController:v10];
  [(HKMedicalIDViewController *)self presentViewController:v8 animated:1 completion:0];
  medicalIDEditor = self->_medicalIDEditor;
  self->_medicalIDEditor = v8;
}

- (void)editOrganDonation:(id)a3
{
  v6 = objc_alloc_init(HKOrganDonationRegisterViewController);
  v4 = [(HKMedicalIDViewController *)self medicalID];
  [(HKOrganDonationRegisterViewController *)v6 setMedicalIDData:v4];

  v5 = [[HKMedicalIDNavigationController alloc] initWithRootViewController:v6];
  [(HKMedicalIDViewController *)self presentViewController:v5 animated:1 completion:0];
  [(HKOrganDonationRegisterViewController *)v6 submitOrganDonationFlowImpressionEvent:1];
}

- (void)_doneTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidFinish:self];
  }
}

- (void)_buildTableItems
{
  if ([(HKMedicalIDViewController *)self inEditMode])
  {

    [(HKMedicalIDViewController *)self _buildEditModeTableItems];
  }

  else
  {

    [(HKMedicalIDViewController *)self _buildViewModeTableItems];
  }
}

- (void)_buildEditModeTableItems
{
  v38[7] = *MEMORY[0x1E69E9840];
  v3 = [(HKEmergencyCardTableItem *)[HKEmergencyCardGroupTableItem alloc] initInEditMode:1];
  informationDataGroupItem = self->_informationDataGroupItem;
  self->_informationDataGroupItem = v3;

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"information_header" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKEmergencyCardGroupTableItem *)self->_informationDataGroupItem setTitleForHeader:v6];

  v7 = [[HKEmergencyCardNameAndPictureTableItem alloc] initInEditMode:1];
  nameAndPictureItem = self->_nameAndPictureItem;
  self->_nameAndPictureItem = v7;

  v9 = [[HKEmergencyCardBirthdateTableItem alloc] initInEditMode:1];
  v34 = [(HKEmergencyCardTableItem *)[HKEmergencyCardWeightTableItem alloc] initInEditMode:1];
  v33 = [(HKEmergencyCardTableItem *)[HKEmergencyCardHeightTableItem alloc] initInEditMode:1];
  v10 = [(HKEmergencyCardTableItem *)[HKEmergencyCardBloodTypeTableItem alloc] initInEditMode:1];
  v11 = [(HKEmergencyCardTableItem *)[HKEmergencyCardMedicalConditionsTableItem alloc] initInEditMode:1];
  v12 = [(HKEmergencyCardTableItem *)[HKEmergencyCardMedicalNotesTableItem alloc] initInEditMode:1];
  v13 = [(HKEmergencyCardTableItem *)[HKEmergencyCardAllergyInfoTableItem alloc] initInEditMode:1];
  v14 = [(HKEmergencyCardTableItem *)[HKEmergencyCardMedicationInfoTableItem alloc] initInEditMode:1];
  [(HKEmergencyCardNameAndPictureTableItem *)self->_nameAndPictureItem setRowHeightChangeDelegate:self];
  [v11 setRowHeightChangeDelegate:self];
  [v12 setRowHeightChangeDelegate:self];
  [v13 setRowHeightChangeDelegate:self];
  [v14 setRowHeightChangeDelegate:self];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38[0] = self->_nameAndPictureItem;
  v38[1] = v9;
  v32 = v9;
  v38[2] = v11;
  v38[3] = v12;
  v38[4] = v13;
  v38[5] = v14;
  v38[6] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:7];
  [v15 addObjectsFromArray:v16];

  if ((!self->_inBuddy || !+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable]) && !self->_isSecondaryProfileMedicalID)
  {
    v17 = [(HKEmergencyCardTableItem *)[HKEmergencyCardOrganDonorTableItem alloc] initInEditMode:1];
    [v15 addObject:v17];
  }

  v37[0] = v34;
  v37[1] = v33;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [v15 addObjectsFromArray:v18];

  v19 = [[HKEmergencyCardPrimaryLanguageTableItem alloc] initInEditMode:1];
  primaryLanguageItem = self->_primaryLanguageItem;
  self->_primaryLanguageItem = v19;

  [(HKEmergencyCardPrimaryLanguageTableItem *)self->_primaryLanguageItem setDelegate:self];
  [v15 addObject:self->_primaryLanguageItem];
  [(HKEmergencyCardGroupTableItem *)self->_informationDataGroupItem setSubitems:v15];
  v21 = [[HKEmergencyCardContactsTableItem alloc] initInEditMode:1];
  contactsItem = self->_contactsItem;
  self->_contactsItem = v21;

  [(HKEmergencyCardTableItem *)self->_contactsItem setIsSecondaryProfile:self->_isSecondaryProfileMedicalID];
  [(HKEmergencyCardContactsTableItem *)self->_contactsItem setDelegate:self];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = self->_contactsItem;
  v36[0] = self->_informationDataGroupItem;
  v36[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [(NSArray *)v23 addObjectsFromArray:v25];

  if (self->_showsEmergencyAccessState || self->_showsShowWhenLockedState)
  {
    v26 = [[HKEmergencyCardEmergencyAccessTableItem alloc] initInEditMode:1 shouldShowLocked:self->_showsShowWhenLockedState shouldShareInfo:self->_showsEmergencyAccessState];
    [v26 setIsSecondaryProfile:self->_isSecondaryProfileMedicalID];
    [(NSArray *)v23 addObject:v26];
  }

  v27 = [[HKEmergencyCardDeletionTableItem alloc] initInEditMode:1];
  [v27 setDeletionDelegate:self];
  if (self->_showsDeleteButton)
  {
    [(NSArray *)v23 addObject:v27];
  }

  tableItems = self->_tableItems;
  self->_tableItems = v23;
  v29 = v23;

  v35[0] = v34;
  v35[1] = v33;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  localeItems = self->_localeItems;
  self->_localeItems = v30;
}

- (void)_buildViewModeTableItems
{
  v38[6] = *MEMORY[0x1E69E9840];
  v3 = [(HKEmergencyCardTableItem *)[HKEmergencyCardGroupTableItem alloc] initInEditMode:0];
  informationDataGroupItem = self->_informationDataGroupItem;
  self->_informationDataGroupItem = v3;

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"information_header" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKEmergencyCardGroupTableItem *)self->_informationDataGroupItem setTitleForHeader:v6];

  v7 = [[HKEmergencyCardSummaryTableItem alloc] initInEditMode:0];
  v8 = [(HKEmergencyCardTableItem *)[HKEmergencyCardMedicalConditionsTableItem alloc] initInEditMode:0];
  v9 = [(HKEmergencyCardTableItem *)[HKEmergencyCardMedicalNotesTableItem alloc] initInEditMode:0];
  v10 = [(HKEmergencyCardTableItem *)[HKEmergencyCardAllergyInfoTableItem alloc] initInEditMode:0];
  v11 = [(HKEmergencyCardTableItem *)[HKEmergencyCardMedicationInfoTableItem alloc] initInEditMode:0];
  v12 = [(HKEmergencyCardTableItem *)[HKEmergencyCardBloodTypeTableItem alloc] initInEditMode:0];
  v13 = [(HKEmergencyCardTableItem *)[HKEmergencyCardWeightTableItem alloc] initInEditMode:0];
  v14 = [(HKEmergencyCardTableItem *)[HKEmergencyCardHeightTableItem alloc] initInEditMode:0];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = v7;
  v38[0] = v7;
  v38[1] = v8;
  v34 = v8;
  v38[2] = v9;
  v38[3] = v10;
  v38[4] = v11;
  v38[5] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:6];
  [v15 addObjectsFromArray:v16];

  if (!self->_isSecondaryProfileMedicalID)
  {
    v17 = [(HKEmergencyCardTableItem *)[HKEmergencyCardOrganDonorTableItem alloc] initInEditMode:0];
    [v15 addObject:v17];
  }

  v37[0] = v13;
  v37[1] = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [v15 addObjectsFromArray:v18];

  v19 = [[HKEmergencyCardPrimaryLanguageTableItem alloc] initInEditMode:0];
  primaryLanguageItem = self->_primaryLanguageItem;
  self->_primaryLanguageItem = v19;

  [(HKEmergencyCardPrimaryLanguageTableItem *)self->_primaryLanguageItem setDelegate:self];
  [v15 addObject:self->_primaryLanguageItem];
  if (self->_isSecondaryProfileMedicalID && !self->_inBridge)
  {
    v21 = [(HKEmergencyCardFooterTableItem *)[HKEmergencyCardEditMedicalIDFooterTableItem alloc] initInEditMode:0];
    [v15 addObject:v21];
  }

  [(HKEmergencyCardGroupTableItem *)self->_informationDataGroupItem setSubitems:v15];
  v22 = [[HKEmergencyCardContactsTableItem alloc] initInEditMode:0];
  contactsItem = self->_contactsItem;
  self->_contactsItem = v22;

  [(HKEmergencyCardTableItem *)self->_contactsItem setIsSecondaryProfile:[(HKMedicalIDViewController *)self isSecondaryProfileMedicalID]];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = self->_contactsItem;
  v36[0] = self->_informationDataGroupItem;
  v36[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [(NSArray *)v24 addObjectsFromArray:v26];

  if (self->_showsEmergencyAccessState || self->_showsShowWhenLockedState)
  {
    v27 = [[HKEmergencyCardEmergencyAccessTableItem alloc] initInEditMode:0 shouldShowLocked:self->_showsShowWhenLockedState shouldShareInfo:self->_showsEmergencyAccessState];
    [v27 setIsSecondaryProfile:self->_isSecondaryProfileMedicalID];
    [(NSArray *)v24 addObject:v27];
  }

  if (self->_showsEditMedicalIDRowInViewMode)
  {
    v28 = [(HKEmergencyCardTableItem *)[HKEmergencyCardSelectionTableItem alloc] initInEditMode:0];
    [v28 setSelectionDelegate:self];
    [(NSArray *)v24 addObject:v28];
  }

  tableItems = self->_tableItems;
  self->_tableItems = v24;
  v30 = v24;

  v35 = v33;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  localeItems = self->_localeItems;
  self->_localeItems = v31;
}

- (void)_buildPresentableTableItems
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_inEditMode)
  {
    v3 = [(NSArray *)self->_tableItems mutableCopy];
    presentableTableItems = self->_presentableTableItems;
    self->_presentableTableItems = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_tableItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if ([v13 hasPresentableData])
          {
            [(NSArray *)v5 addObject:v13];
            v10 += [v13 numberOfRows];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
            [v6 addObject:v14];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v15 = self->_presentableTableItems;
    self->_presentableTableItems = v5;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_presentableTableItems count])
  {
    v17 = 0;
    do
    {
      v18 = [(HKMedicalIDViewController *)self _newViewForFooterInSection:v17, v23];
      [v16 addObject:v18];

      ++v17;
    }

    while (v17 < [(NSArray *)self->_presentableTableItems count]);
  }

  objc_storeStrong(&self->_footers, v16);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_presentableTableItems count])
  {
    v20 = 0;
    do
    {
      v21 = [(HKMedicalIDViewController *)self _newViewForHeaderInSection:v20, v23];
      [(NSArray *)v19 addObject:v21];

      ++v20;
    }

    while (v20 < [(NSArray *)self->_presentableTableItems count]);
  }

  headers = self->_headers;
  self->_headers = v19;
}

- (id)_newViewForFooterInSection:(int64_t)a3
{
  v5 = objc_alloc_init(HKTableViewFooterView);
  v6 = [(NSArray *)self->_presentableTableItems objectAtIndexedSubscript:a3];
  v7 = [v6 titleForFooter];
  v8 = [(HKTableViewFooterView *)v5 label];
  [v8 setText:v7];

  v9 = [(HKMedicalIDViewController *)self tableView];
  [v9 _contentMargin];
  v11 = v10;
  v12 = [(HKMedicalIDViewController *)self tableView];
  [v12 _contentMargin];
  [(HKTableViewFooterView *)v5 setContentInsets:10.0, v11, 5.0, v13];

  return v5;
}

- (id)_newViewForHeaderInSection:(int64_t)a3
{
  v5 = objc_alloc_init(HKTableViewHeaderView);
  v6 = [(NSArray *)self->_presentableTableItems objectAtIndexedSubscript:a3];
  v7 = [v6 titleForHeader];
  v8 = [(HKTableViewHeaderView *)v5 label];
  [v8 setText:v7];

  if (self->_inEditMode)
  {
    v9 = [(HKMedicalIDViewController *)self tableView];
    [v9 _contentMargin];
    v11 = v10;
    v12 = [(HKMedicalIDViewController *)self tableView];
    [v12 _contentMargin];
    [(HKTableViewHeaderView *)v5 setContentInsets:20.0, v11, 10.0, v13];
  }

  else
  {
    [(HKTableViewHeaderView *)v5 setContentInsets:20.0, 16.0, 10.0, 16.0];
  }

  return v5;
}

- (void)_dismissMedicalIDEditor
{
  v3 = [(HKMedicalIDViewController *)self presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(HKMedicalIDViewController *)self presentedViewController];
    medicalIDEditor = self->_medicalIDEditor;

    if (v5 == medicalIDEditor)
    {
      [(HKMedicalIDViewController *)self dismissViewControllerAnimated:1 completion:0];
      v7 = self->_medicalIDEditor;
      self->_medicalIDEditor = 0;
    }
  }
}

- (BOOL)_shouldShowOrganDonation
{
  if (self->_inBuddy)
  {
    LOBYTE(v2) = 0;
  }

  else if (self->_organDonationSignupAvailable)
  {
    v2 = [(HKMedicalIDViewController *)self _preferredOrganDonationOrganization];
    if (v2)
    {
      LOBYTE(v2) = !self->_showsDismissButton;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_presentableTableItems objectAtIndexedSubscript:a4];
  v5 = [v4 numberOfRows];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v7];
  if (v8)
  {
    v9 = [v8 tableView:v6 cellForRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v8, v7)}];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v9 bounds];
      [v9 setSeparatorInset:{0.0, v10 + v10, 0.0, 0.0}];
    }

    else
    {
      [v8 separatorInset];
      [v9 setSeparatorInset:?];
      v11 = [v9 contentView];
      v12 = [v11 backgroundColor];
      if (v12)
      {
        v13 = [v9 contentView];
        v14 = [v13 backgroundColor];
        [v9 setBackgroundColor:v14];
      }

      else
      {
        v13 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
        [v9 setBackgroundColor:v13];
      }
    }
  }

  else
  {
    v9 = HKErrorTableViewCell(@"HKMedicalIDViewController");
  }

  return v9;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 estimatedRowHeight];
  v9 = v8;
  v10 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v7];
  if (v10)
  {
    [v10 tableView:v6 estimatedHeightForRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v10, v7)}];
    v9 = v11;
  }

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 rowHeight];
  v9 = v8;
  v10 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v7];
  if (v10)
  {
    [v10 tableView:v6 heightForRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v10, v7)}];
    v9 = v11;
  }

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if ([(NSArray *)self->_headers count]> a4)
  {
    v8 = [(NSArray *)self->_headers objectAtIndexedSubscript:a4];
    [v6 bounds];
    [v8 setPreferredMaxLayoutWidth:CGRectGetWidth(v11)];
    [v8 intrinsicContentSize];
    v7 = v9;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(NSArray *)self->_headers count]<= a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_headers objectAtIndexedSubscript:a4];
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(NSArray *)self->_footers count]<= a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_footers objectAtIndexedSubscript:a4];
  }

  return v6;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if ([(NSArray *)self->_footers count]> a4)
  {
    v8 = [(NSArray *)self->_footers objectAtIndexedSubscript:a4];
    [v6 bounds];
    [v8 setPreferredMaxLayoutWidth:CGRectGetWidth(v11)];
    [v8 intrinsicContentSize];
    v7 = v9;
  }

  return v7;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isDecelerating] & 1) != 0 || (objc_msgSend(v6, "isDragging"))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v7];
    v8 = [v9 shouldHighlightRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v9, v7)}];
    if ((v8 & 1) == 0 && [(HKMedicalIDViewController *)self tableView:v6 editingStyleForRowAtIndexPath:v7]== 2)
    {
      [(HKMedicalIDViewController *)self tableView:v6 commitEditingStyle:2 forRowAtIndexPath:v7];
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v6];
  v8 = [(HKMedicalIDViewController *)self _rowIndexForTableItem:v9 atIndexPath:v6];

  [v9 tableView:v7 didSelectRowAtIndex:v8];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  if (!self->_inEditMode)
  {
    return 0;
  }

  v5 = a4;
  v6 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v5];
  v7 = [(HKMedicalIDViewController *)self _rowIndexForTableItem:v6 atIndexPath:v5];

  LOBYTE(v7) = [v6 canEditRowAtIndex:v7];
  return v7;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  if (!self->_inEditMode)
  {
    return 0;
  }

  v5 = a4;
  v6 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v5];
  v7 = [(HKMedicalIDViewController *)self _rowIndexForTableItem:v6 atIndexPath:v5];

  v8 = [v6 editingStyleForRowAtIndex:v7];
  return v8;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (self->_inEditMode)
  {
    v10 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:v9];
    v11 = [v10 commitEditingStyle:a4 forRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v10, v9)}];
    if (v11 == 2)
    {
      [v8 beginUpdates];
      v13 = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v8 reloadRowsAtIndexPaths:v12 withRowAnimation:0];
    }

    else
    {
      if (v11 != 1)
      {
LABEL_7:
        [v10 didCommitEditingStyle:a4 forRowAtIndex:{objc_msgSend(v9, "row")}];

        goto LABEL_8;
      }

      [v8 beginUpdates];
      v14[0] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v8 deleteRowsAtIndexPaths:v12 withRowAnimation:100];
    }

    [v8 endUpdates];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateEmergencyContactTableItem
{
  v3 = [(HKMedicalIDViewController *)self tableView];
  [v3 beginUpdates];

  v4 = [(HKMedicalIDViewController *)self tableItems];
  v5 = [v4 indexOfObject:self->_contactsItem];

  v6 = [(HKMedicalIDViewController *)self tableView];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
  [v6 reloadSections:v7 withRowAnimation:0];

  v8 = [(HKMedicalIDViewController *)self tableView];
  [v8 endUpdates];
}

- (void)updatePrimaryLanguageTableItem
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKMedicalIDViewController *)self tableView];
  [v3 beginUpdates];

  v4 = [(HKMedicalIDViewController *)self tableItems];
  v5 = [v4 indexOfObject:self->_informationDataGroupItem];

  v6 = [(HKEmergencyCardGroupTableItem *)self->_informationDataGroupItem subitems];
  v7 = [v6 indexOfObject:self->_primaryLanguageItem];

  v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:v5];
  v9 = [(HKMedicalIDViewController *)self tableView];
  v12[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v9 reloadRowsAtIndexPaths:v10 withRowAnimation:0];

  v11 = [(HKMedicalIDViewController *)self tableView];
  [v11 endUpdates];
}

- (id)_tableItemForIndexPath:(id)a3
{
  presentableTableItems = self->_presentableTableItems;
  v4 = [a3 section];

  return [(NSArray *)presentableTableItems objectAtIndexedSubscript:v4];
}

- (void)deletionTableItemDidTapDelete:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidDelete:self];
  }
}

- (void)medicalIDViewControllerDidDelete:(id)a3
{
  [(HKMedicalIDViewController *)self _dismissMedicalIDEditor];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidDelete:self];
  }
}

- (void)tableItem:(id)a3 heightDidChangeForRowIndex:(int64_t)a4 keepRectVisible:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__HKMedicalIDViewController_tableItem_heightDidChangeForRowIndex_keepRectVisible_inView___block_invoke;
  v13[3] = &unk_1E81B55A8;
  v13[4] = self;
  v12 = a6;
  [v11 performWithoutAnimation:v13];
  [(HKMedicalIDViewController *)self _adjustTableViewContentOffsetForVisibleView:v12 visibleRect:1 animated:x, y, width, height];
}

void __89__HKMedicalIDViewController_tableItem_heightDidChangeForRowIndex_keepRectVisible_inView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) tableView];
  [v3 endUpdates];
}

- (void)_adjustTableViewContentOffsetForVisibleView:(id)a3 visibleRect:(CGRect)a4 animated:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v11 = a3;
    v12 = [(HKMedicalIDViewController *)self tableView];
    [v12 convertRect:v11 fromView:{x, y, width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(HKMedicalIDViewController *)self tableView];
    [v21 scrollRectToVisible:v5 animated:{v14, v16, v18, v20}];
  }
}

- (void)_showMedicalIDPreviewAsNext
{
  v9 = [[HKMedicalIDViewController alloc] initInEditMode:0 inBuddy:self->_inBuddy organDonationSignupAvailable:self->_organDonationSignupAvailable];
  v3 = [(HKMedicalIDViewController *)self healthStore];
  [v9 setHealthStore:v3];

  v4 = [(HKMedicalIDViewController *)self medicalIDStore];
  [v9 setMedicalIDStore:v4];

  v5 = [(HKMedicalIDViewController *)self medicalID];
  v6 = [v5 copy];
  [v9 setMedicalID:v6];

  [v9 setShowsDeleteButton:{-[HKMedicalIDViewController showsDeleteButton](self, "showsDeleteButton")}];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v9 setDelegate:WeakRetained];

  v8 = [(HKMedicalIDViewController *)self navigationController];
  [v8 pushViewController:v9 animated:1];
}

- (void)_forceDisableBiometricIfDeviceLocked
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int softLink_MKBGetDeviceLockState(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDViewController.m" lineNumber:98 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_refreshMedicalIDInViewMode
{
  if (![(HKMedicalIDViewController *)self inEditMode])
  {
    v3 = [(HKMedicalIDViewController *)self medicalIDStore];

    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x1E696C248]);
      v5 = [(HKMedicalIDViewController *)self healthStore];
      v6 = [v4 initWithHealthStore:v5];
      [(HKMedicalIDViewController *)self setMedicalIDStore:v6];
    }

    v7 = [(HKMedicalIDViewController *)self medicalIDStore];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__HKMedicalIDViewController__refreshMedicalIDInViewMode__block_invoke;
    v8[3] = &unk_1E81B8C30;
    v8[4] = self;
    [v7 fetchMedicalIDDataWithCompletion:v8];
  }
}

void __56__HKMedicalIDViewController__refreshMedicalIDInViewMode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__HKMedicalIDViewController__refreshMedicalIDInViewMode__block_invoke_442;
    v9[3] = &unk_1E81B5AD0;
    v9[4] = *(a1 + 32);
    v10 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B968];
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_ERROR))
    {
      __56__HKMedicalIDViewController__refreshMedicalIDInViewMode__block_invoke_cold_1(a1, v7, v8);
    }
  }
}

- (void)_updateMedicalID
{
  v3 = [(HKMedicalIDViewController *)self medicalIDStore];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696C248]) initWithHealthStore:self->_healthStore];
    [(HKMedicalIDViewController *)self setMedicalIDStore:v4];
  }

  v5 = [(HKMedicalIDViewController *)self medicalIDStore];
  v6 = [(HKMedicalIDViewController *)self medicalID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HKMedicalIDViewController__updateMedicalID__block_invoke;
  v7[3] = &unk_1E81B59C0;
  v7[4] = self;
  [v5 updateMedicalIDData:v6 completion:v7];
}

void __45__HKMedicalIDViewController__updateMedicalID__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x1E696B968];
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_ERROR))
    {
      __45__HKMedicalIDViewController__updateMedicalID__block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (id)_formatMedicalIDAccessPoint:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return &stru_1F42FFBE0;
  }

  else
  {
    return off_1E81B8C80[a3 - 1];
  }
}

- (void)_submitAccessAnalytic
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    v3 = [(HKMedicalIDViewController *)self _formatMedicalIDAccessPoint:[(HKMedicalIDViewController *)self internalAccessType]];
    v14[0] = @"applicationIdentifier";
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v15[0] = v5;
    v15[1] = v3;
    v14[1] = @"healthAccessType";
    v14[2] = @"profileType";
    v6 = MEMORY[0x1E696AD98];
    v7 = [(HKHealthStore *)self->_healthStore profileIdentifier];
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "type")}];
    v15[2] = v8;
    v14[3] = @"typeOfAccess";
    v9 = [(HKMedicalIDViewController *)self internalAccessType];
    v10 = @"Health";
    if (!v9)
    {
      v10 = @"Other";
    }

    v15[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

    AnalyticsSendEvent();
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B968];
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C3942000, v12, OS_LOG_TYPE_INFO, "Submitted Medical ID Access Event", v13, 2u);
    }
  }
}

- (HKMedicalIDViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__HKMedicalIDViewController__refreshMedicalIDInViewMode__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E696C8C8];
  v5 = 138543874;
  v6 = v3;
  v7 = 2080;
  v8 = v4;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch MedicalID on notification %s, error: %{public}@", &v5, 0x20u);
}

void __45__HKMedicalIDViewController__updateMedicalID__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update MedicalID, error: %{public}@", &v4, 0x16u);
}

@end