@interface HKMedicalIDViewController
+ (BOOL)isSupportedOnThisDevice;
- (BOOL)_refreshEmergencyContacts:(BOOL)contacts;
- (BOOL)_shouldShowOrganDonation;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (HKMedicalIDViewController)initWithCoder:(id)coder;
- (HKMedicalIDViewControllerDelegate)delegate;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_formatMedicalIDAccessPoint:(int64_t)point;
- (id)_newViewForFooterInSection:(int64_t)section;
- (id)_newViewForHeaderInSection:(int64_t)section;
- (id)_tableItemForIndexPath:(id)path;
- (id)initInEditMode:(BOOL)mode inBuddy:(BOOL)buddy organDonationSignupAvailable:(BOOL)available;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_adjustTableViewContentOffsetForVisibleView:(id)view visibleRect:(CGRect)rect animated:(BOOL)animated;
- (void)_buildEditModeTableItems;
- (void)_buildPresentableTableItems;
- (void)_buildTableItems;
- (void)_buildViewModeTableItems;
- (void)_cancelEditingTapped:(id)tapped;
- (void)_contactStoreDidChange:(id)change;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_dismissMedicalIDEditor;
- (void)_doneEditingTapped:(id)tapped;
- (void)_doneTapped:(id)tapped;
- (void)_fetchDemographicInformation;
- (void)_forceDisableBiometricIfDeviceLocked;
- (void)_nextButtonTapped:(id)tapped;
- (void)_refreshMedicalIDInViewMode;
- (void)_reloadTableWithMedicalIDData:(id)data;
- (void)_showMedicalIDPreviewAsNext;
- (void)_submitAccessAnalytic;
- (void)_updateMedicalID;
- (void)_updateMedicalIDNameWithDemographicsInformation:(id)information;
- (void)dealloc;
- (void)deletionTableItemDidTapDelete:(id)delete;
- (void)editButtonTapped:(id)tapped;
- (void)editMedicalID:(id)d;
- (void)editOrganDonation:(id)donation;
- (void)localeDidChange:(id)change;
- (void)medicalIDViewControllerDidDelete:(id)delete;
- (void)setHealthStore:(id)store;
- (void)tableItem:(id)item heightDidChangeForRowIndex:(int64_t)index keepRectVisible:(CGRect)visible inView:(id)view;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timeZoneDidChange:(id)change;
- (void)updateEmergencyContactTableItem;
- (void)updateNavigationBar;
- (void)updatePrimaryLanguageTableItem;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKMedicalIDViewController

+ (BOOL)isSupportedOnThisDevice
{
  mEMORY[0x1E696C198] = [MEMORY[0x1E696C198] shared];
  isMedicalIDAvailable = [mEMORY[0x1E696C198] isMedicalIDAvailable];

  return isMedicalIDAvailable;
}

- (id)initInEditMode:(BOOL)mode inBuddy:(BOOL)buddy organDonationSignupAvailable:(BOOL)available
{
  v11.receiver = self;
  v11.super_class = HKMedicalIDViewController;
  v8 = [(HKMedicalIDViewController *)&v11 initWithStyle:1];
  v9 = v8;
  if (v8)
  {
    v8->_inEditMode = mode;
    v8->_inBuddy = buddy;
    v8->_organDonationSignupAvailable = available;
    v8->_showsShowWhenLockedState = 1;
    v8->_showsEmergencyAccessState = 1;
    v8->_showsEditMedicalIDRowInViewMode = 0;
    v8->_inBridge = 0;
    [(HKMedicalIDViewController *)v8 setModernAppearance:[(HKMedicalIDViewController *)v8 inEditMode]^ 1];
    [(HKMedicalIDViewController *)v9 setModalInPresentation:[(HKMedicalIDViewController *)v9 inEditMode]];
  }

  return v9;
}

- (HKMedicalIDViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HKMedicalIDViewController;
  return [(HKMedicalIDViewController *)&v4 initWithCoder:coder];
}

- (void)setHealthStore:(id)store
{
  objc_storeStrong(&self->_healthStore, store);
  storeCopy = store;
  v5 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:storeCopy];
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
  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:0x1F430FD00];

  tableView2 = [(HKMedicalIDViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F4311540];

  tableView3 = [(HKMedicalIDViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F431A620];

  tableView4 = [(HKMedicalIDViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F430F660];

  tableView5 = [(HKMedicalIDViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F4310E00];

  tableView6 = [(HKMedicalIDViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F43119C0];

  tableView7 = [(HKMedicalIDViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[HKOrganDonationCallToActionTableViewCell defaultReuseIdentifier];
  [tableView7 registerClass:v10 forCellReuseIdentifier:v11];

  tableView8 = [(HKMedicalIDViewController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[HKIDRegisteredReviewCell defaultReuseIdentifier];
  [tableView8 registerClass:v13 forCellReuseIdentifier:v14];

  tableView9 = [(HKMedicalIDViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[HKOrganDonationRegisteredTableViewCell defaultReuseIdentifier];
  [tableView9 registerClass:v16 forCellReuseIdentifier:v17];

  tableView10 = [(HKMedicalIDViewController *)self tableView];
  v19 = objc_opt_class();
  v20 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
  [tableView10 registerClass:v19 forCellReuseIdentifier:v20];

  tableView11 = [(HKMedicalIDViewController *)self tableView];
  [tableView11 registerClass:objc_opt_class() forCellReuseIdentifier:0x1F4307D40];

  v22 = *MEMORY[0x1E69DE3D0];
  tableView12 = [(HKMedicalIDViewController *)self tableView];
  [tableView12 setRowHeight:v22];

  [(HKMedicalIDViewController *)self _buildTableItems];
  v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
  tableView13 = [(HKMedicalIDViewController *)self tableView];
  [tableView13 setTableFooterView:v24];

  tableView14 = [(HKMedicalIDViewController *)self tableView];
  [tableView14 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];

  tableView15 = [(HKMedicalIDViewController *)self tableView];
  v28 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381318);
  [tableView15 setAccessibilityIdentifier:v28];

  if ([(HKMedicalIDViewController *)self inEditMode])
  {
    v29 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelEditingTapped_];
    navigationItem = [(HKMedicalIDViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v29];

    LODWORD(v29) = self->_inBuddy;
    v31 = objc_alloc(MEMORY[0x1E69DC708]);
    v32 = v31;
    if (v29 == 1)
    {
      v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      navigationItem3 = [v33 localizedStringForKey:@"OD_NEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v35 = [v32 initWithTitle:navigationItem3 style:2 target:self action:sel__nextButtonTapped_];
      navigationItem2 = [(HKMedicalIDViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:v35];
    }

    else
    {
      v33 = [v31 initWithBarButtonSystemItem:0 target:self action:sel__doneEditingTapped_];
      navigationItem3 = [(HKMedicalIDViewController *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:v33];
    }

    tableView16 = [(HKMedicalIDViewController *)self tableView];
    [tableView16 setEstimatedRowHeight:52.0 + 24.0];

    tableView17 = [(HKMedicalIDViewController *)self tableView];
    [tableView17 setKeyboardDismissMode:1];

    tableView18 = [(HKMedicalIDViewController *)self tableView];
    [tableView18 setEditing:1];

    tableView19 = [(HKMedicalIDViewController *)self tableView];
    [tableView19 setAllowsSelectionDuringEditing:1];
    goto LABEL_11;
  }

  tableView20 = [(HKMedicalIDViewController *)self tableView];
  [tableView20 setEstimatedRowHeight:52.0];

  tableView21 = [(HKMedicalIDViewController *)self tableView];
  [tableView21 _setDrawsSeparatorAtTopOfSections:0];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  tableView22 = [(HKMedicalIDViewController *)self tableView];
  [tableView22 setBackgroundColor:systemGroupedBackgroundColor];

  systemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  tableView23 = [(HKMedicalIDViewController *)self tableView];
  [tableView23 setTableHeaderBackgroundColor:systemGroupedBackgroundColor2];

  tableView24 = [(HKMedicalIDViewController *)self tableView];
  [tableView24 _setTopPadding:0.0];

  if (self->_inBuddy)
  {
    v44 = objc_alloc(MEMORY[0x1E69DC708]);
    v45 = sel__doneEditingTapped_;
LABEL_10:
    tableView19 = [v44 initWithBarButtonSystemItem:0 target:self action:v45];
    navigationItem4 = [(HKMedicalIDViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:tableView19];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_timeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695DA68] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];
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
      navigationItem = [(HKMedicalIDViewController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v4];

      if ([MEMORY[0x1E696C608] isRunningStoreDemoMode])
      {
        navigationItem2 = [(HKMedicalIDViewController *)self navigationItem];
        rightBarButtonItem = [navigationItem2 rightBarButtonItem];
        [rightBarButtonItem setEnabled:0];
      }
    }
  }

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"medical_id_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if ([(HKMedicalIDViewController *)self isSecondaryProfileMedicalID])
  {
    name = [(_HKMedicalIDData *)self->_medicalID name];

    if (name)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"%@_medical_id_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      name2 = [(_HKMedicalIDData *)self->_medicalID name];
      v15 = [v11 stringWithFormat:v13, name2];

      v9 = v15;
    }
  }

  title = [(HKMedicalIDViewController *)self title];
  v17 = title;
  if (title)
  {
    v18 = title;
  }

  else
  {
    v18 = v9;
  }

  v19 = [@" " stringByAppendingString:v18];

  v20 = MEMORY[0x1E69DCAB8];
  v21 = HKHealthUIFrameworkBundle();
  v22 = [v20 imageNamed:@"medicalid_header_glyph" inBundle:v21];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  v24 = [v22 _flatImageWithColor:systemRedColor];

  navigationController = [(HKMedicalIDViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  _defaultTitleFont = [navigationBar _defaultTitleFont];

  if (!_defaultTitleFont)
  {
    _defaultTitleFont = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  }

  v28 = *MEMORY[0x1E69DB648];
  v37[0] = _defaultTitleFont;
  v29 = *MEMORY[0x1E69DB650];
  v36[0] = v28;
  v36[1] = v29;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v37[1] = labelColor;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

  tableView = [(HKMedicalIDViewController *)self tableView];
  UIRoundToViewScale();
  v33 = [v19 hk_attributedStringPrefixedWithImage:v24 baselineAdjusted:v31 withAttributes:?];

  v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v34 setAttributedText:v33];
  [v34 sizeToFit];
  navigationItem3 = [(HKMedicalIDViewController *)self navigationItem];
  [navigationItem3 setTitleView:v34];
}

- (void)_contentSizeCategoryDidChange:(id)change
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

  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView reloadData];
}

- (void)localeDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
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
          [v10 localeDidChange:{changeCopy, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView reloadData];
}

- (void)timeZoneDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
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
          [v10 timeZoneDidChange:{changeCopy, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKMedicalIDViewController;
  [(HKMedicalIDViewController *)&v4 viewWillAppear:appear];
  [(HKMedicalIDViewController *)self _reloadTableWithMedicalIDData:self->_medicalID];
  [(HKMedicalIDViewController *)self _forceDisableBiometricIfDeviceLocked];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 medicalIDViewControllerDidAppear:self];
  }

  v8.receiver = self;
  v8.super_class = HKMedicalIDViewController;
  [(HKMedicalIDViewController *)&v8 viewDidAppear:appearCopy];
}

- (void)_fetchDemographicInformation
{
  name = [(_HKMedicalIDData *)self->_medicalID name];
  if (!name || (v4 = name, -[_HKMedicalIDData name](self->_medicalID, "name"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {
    objc_initWeak(&location, self);
    isSecondaryProfileMedicalID = self->_isSecondaryProfileMedicalID;
    healthStore = [(HKMedicalIDViewController *)self healthStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__HKMedicalIDViewController__fetchDemographicInformation__block_invoke;
    v9[3] = &unk_1E81B8C08;
    objc_copyWeak(&v10, &location);
    [healthStore hk_fetchExistingDemographicInformationWithOptions:isSecondaryProfileMedicalID completion:v9];

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

- (void)_updateMedicalIDNameWithDemographicsInformation:(id)information
{
  informationCopy = information;
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  firstName = [informationCopy firstName];
  [v4 setGivenName:firstName];

  lastName = [informationCopy lastName];
  [v4 setFamilyName:lastName];

  v7 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v4 style:2 options:0];
  v8 = [v7 length];
  v9 = v8 != 0;
  if (v8)
  {
    [(_HKMedicalIDData *)self->_medicalID setName:v7];
    [(HKEmergencyCardNameAndPictureTableItem *)self->_nameAndPictureItem setData:self->_medicalID];
  }

  dateOfBirthComponents = [informationCopy dateOfBirthComponents];
  if (dateOfBirthComponents)
  {
    [(_HKMedicalIDData *)self->_medicalID setGregorianBirthday:dateOfBirthComponents];
    v9 = 1;
  }

  bloodTypeObject = [informationCopy bloodTypeObject];
  bloodType = [bloodTypeObject bloodType];

  if (bloodType)
  {
    [(_HKMedicalIDData *)self->_medicalID setBloodType:bloodType];
    v9 = 1;
  }

  heightQuantity = [informationCopy heightQuantity];
  if (heightQuantity)
  {
    [(_HKMedicalIDData *)self->_medicalID setHeight:heightQuantity];
    v9 = 1;
  }

  weightQuantity = [informationCopy weightQuantity];
  if (weightQuantity)
  {
    [(_HKMedicalIDData *)self->_medicalID setWeight:weightQuantity];
  }

  else if (!v9)
  {
    goto LABEL_13;
  }

  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView reloadData];

LABEL_13:
}

- (void)_reloadTableWithMedicalIDData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  medicalID = self->_medicalID;
  if (dataCopy)
  {
    v6 = dataCopy;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696C648]);
    [(HKMedicalIDViewController *)self _fetchDemographicInformation];
    if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
    {
      isOrganDonor = [(_HKMedicalIDData *)v6 isOrganDonor];

      if (!isOrganDonor)
      {
        [(_HKMedicalIDData *)v6 setIsOrganDonor:&unk_1F4383BF8];
      }
    }
  }

  if (self->_medicalID != v6)
  {
    objc_storeStrong(&self->_medicalID, v6);
  }

  _fetchProfileFirstName = [(HKMedicalIDViewController *)self _fetchProfileFirstName];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  tableItems = [(HKMedicalIDViewController *)self tableItems];
  v10 = [tableItems countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(tableItems);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        medicalID = [(HKMedicalIDViewController *)self medicalID];
        [v14 setData:medicalID];

        [v14 setProfileFirstName:_fetchProfileFirstName];
        [v14 setOwningViewController:self];
        [v14 setShouldShowHints:{-[HKMedicalIDViewController shouldShowHints](self, "shouldShowHints")}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [tableItems countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [(HKMedicalIDViewController *)self _refreshEmergencyContacts:medicalID == 0];
  [(HKMedicalIDViewController *)self _buildPresentableTableItems];
  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView reloadData];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 medicalIDViewControllerDidUpdate:self];
  }
}

- (void)_contactStoreDidChange:(id)change
{
  if ([(HKMedicalIDViewController *)self _refreshEmergencyContacts:self->_medicalID == 0]&& ![(HKMedicalIDViewController *)self shouldShowHints])
  {
    [(HKMedicalIDViewController *)self _buildPresentableTableItems];
  }

  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView reloadData];
}

- (BOOL)_refreshEmergencyContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  v7 = type == 1 && [(_HKMedicalIDData *)self->_medicalID consolidateSOSAndEmergencyContacts];
  v8 = [(HKEmergencyCardContactsTableItem *)self->_contactsItem refreshFromData:contactsCopy]|| v7;
  if ((v8 & 1) != 0 && !self->_inEditMode)
  {
    [(HKMedicalIDViewController *)self _updateMedicalID];
  }

  return v8 & 1;
}

- (void)editButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(HKMedicalIDViewController *)self _shouldShowOrganDonation]&& (+[HKOrganDonationConnectionManager isOrganDonationRegistrationAvailable](HKOrganDonationConnectionManager, "isOrganDonationRegistrationAvailable") || +[HKOrganDonationConnectionManager hasStoredRegistrant](HKOrganDonationConnectionManager, "hasStoredRegistrant")) && +[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    medicalID = [(HKMedicalIDViewController *)self medicalID];

    if (medicalID)
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
      v10 = tappedCopy;
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
      selfCopy = self;
      v25 = v10;
      v15 = [v12 actionWithTitle:v14 style:0 handler:&v20];
      [v6 addAction:{v15, v20, v21, v22, v23, selfCopy}];

      v16 = MEMORY[0x1E69DC648];
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v18 = [v17 localizedStringForKey:@"EDIT_MEDICAL_ID_OD_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v19 = [v16 actionWithTitle:v18 style:1 handler:0];
      [v6 addAction:v19];

      [(HKMedicalIDViewController *)self presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      [(HKMedicalIDViewController *)self editOrganDonation:tappedCopy];
    }
  }

  else
  {
    [(HKMedicalIDViewController *)self editMedicalID:tappedCopy];
  }
}

- (void)_cancelEditingTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidCancel:self];
  }
}

- (void)_doneEditingTapped:(id)tapped
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

- (void)_nextButtonTapped:(id)tapped
{
  if (self->_inEditMode)
  {
    [(NSArray *)self->_presentableTableItems makeObjectsPerformSelector:sel_commitEditing];

    [(HKMedicalIDViewController *)self _showMedicalIDPreviewAsNext];
  }
}

- (void)editMedicalID:(id)d
{
  v10 = [[HKMedicalIDViewController alloc] initInEditMode:1 inBuddy:self->_inBuddy organDonationSignupAvailable:self->_organDonationSignupAvailable];
  healthStore = [(HKMedicalIDViewController *)self healthStore];
  [v10 setHealthStore:healthStore];

  medicalIDStore = [(HKMedicalIDViewController *)self medicalIDStore];
  [v10 setMedicalIDStore:medicalIDStore];

  medicalID = [(HKMedicalIDViewController *)self medicalID];
  v7 = [medicalID copy];
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

- (void)editOrganDonation:(id)donation
{
  v6 = objc_alloc_init(HKOrganDonationRegisterViewController);
  medicalID = [(HKMedicalIDViewController *)self medicalID];
  [(HKOrganDonationRegisterViewController *)v6 setMedicalIDData:medicalID];

  v5 = [[HKMedicalIDNavigationController alloc] initWithRootViewController:v6];
  [(HKMedicalIDViewController *)self presentViewController:v5 animated:1 completion:0];
  [(HKOrganDonationRegisterViewController *)v6 submitOrganDonationFlowImpressionEvent:1];
}

- (void)_doneTapped:(id)tapped
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

- (id)_newViewForFooterInSection:(int64_t)section
{
  v5 = objc_alloc_init(HKTableViewFooterView);
  v6 = [(NSArray *)self->_presentableTableItems objectAtIndexedSubscript:section];
  titleForFooter = [v6 titleForFooter];
  label = [(HKTableViewFooterView *)v5 label];
  [label setText:titleForFooter];

  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView _contentMargin];
  v11 = v10;
  tableView2 = [(HKMedicalIDViewController *)self tableView];
  [tableView2 _contentMargin];
  [(HKTableViewFooterView *)v5 setContentInsets:10.0, v11, 5.0, v13];

  return v5;
}

- (id)_newViewForHeaderInSection:(int64_t)section
{
  v5 = objc_alloc_init(HKTableViewHeaderView);
  v6 = [(NSArray *)self->_presentableTableItems objectAtIndexedSubscript:section];
  titleForHeader = [v6 titleForHeader];
  label = [(HKTableViewHeaderView *)v5 label];
  [label setText:titleForHeader];

  if (self->_inEditMode)
  {
    tableView = [(HKMedicalIDViewController *)self tableView];
    [tableView _contentMargin];
    v11 = v10;
    tableView2 = [(HKMedicalIDViewController *)self tableView];
    [tableView2 _contentMargin];
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
  presentedViewController = [(HKMedicalIDViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v4 = presentedViewController;
    presentedViewController2 = [(HKMedicalIDViewController *)self presentedViewController];
    medicalIDEditor = self->_medicalIDEditor;

    if (presentedViewController2 == medicalIDEditor)
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
    LOBYTE(_preferredOrganDonationOrganization) = 0;
  }

  else if (self->_organDonationSignupAvailable)
  {
    _preferredOrganDonationOrganization = [(HKMedicalIDViewController *)self _preferredOrganDonationOrganization];
    if (_preferredOrganDonationOrganization)
    {
      LOBYTE(_preferredOrganDonationOrganization) = !self->_showsDismissButton;
    }
  }

  else
  {
    LOBYTE(_preferredOrganDonationOrganization) = 0;
  }

  return _preferredOrganDonationOrganization;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_presentableTableItems objectAtIndexedSubscript:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
  if (v8)
  {
    v9 = [v8 tableView:viewCopy cellForRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v8, pathCopy)}];
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
      contentView = [v9 contentView];
      backgroundColor = [contentView backgroundColor];
      if (backgroundColor)
      {
        contentView2 = [v9 contentView];
        backgroundColor2 = [contentView2 backgroundColor];
        [v9 setBackgroundColor:backgroundColor2];
      }

      else
      {
        contentView2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
        [v9 setBackgroundColor:contentView2];
      }
    }
  }

  else
  {
    v9 = HKErrorTableViewCell(@"HKMedicalIDViewController");
  }

  return v9;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy estimatedRowHeight];
  v9 = v8;
  v10 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
  if (v10)
  {
    [v10 tableView:viewCopy estimatedHeightForRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v10, pathCopy)}];
    v9 = v11;
  }

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy rowHeight];
  v9 = v8;
  v10 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
  if (v10)
  {
    [v10 tableView:viewCopy heightForRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v10, pathCopy)}];
    v9 = v11;
  }

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if ([(NSArray *)self->_headers count]> section)
  {
    v8 = [(NSArray *)self->_headers objectAtIndexedSubscript:section];
    [viewCopy bounds];
    [v8 setPreferredMaxLayoutWidth:CGRectGetWidth(v11)];
    [v8 intrinsicContentSize];
    v7 = v9;
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(NSArray *)self->_headers count]<= section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_headers objectAtIndexedSubscript:section];
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(NSArray *)self->_footers count]<= section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_footers objectAtIndexedSubscript:section];
  }

  return v6;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if ([(NSArray *)self->_footers count]> section)
  {
    v8 = [(NSArray *)self->_footers objectAtIndexedSubscript:section];
    [viewCopy bounds];
    [v8 setPreferredMaxLayoutWidth:CGRectGetWidth(v11)];
    [v8 intrinsicContentSize];
    v7 = v9;
  }

  return v7;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isDecelerating] & 1) != 0 || (objc_msgSend(viewCopy, "isDragging"))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
    v8 = [v9 shouldHighlightRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v9, pathCopy)}];
    if ((v8 & 1) == 0 && [(HKMedicalIDViewController *)self tableView:viewCopy editingStyleForRowAtIndexPath:pathCopy]== 2)
    {
      [(HKMedicalIDViewController *)self tableView:viewCopy commitEditingStyle:2 forRowAtIndexPath:pathCopy];
    }
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v9 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
  v8 = [(HKMedicalIDViewController *)self _rowIndexForTableItem:v9 atIndexPath:pathCopy];

  [v9 tableView:viewCopy didSelectRowAtIndex:v8];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  if (!self->_inEditMode)
  {
    return 0;
  }

  pathCopy = path;
  v6 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
  v7 = [(HKMedicalIDViewController *)self _rowIndexForTableItem:v6 atIndexPath:pathCopy];

  LOBYTE(v7) = [v6 canEditRowAtIndex:v7];
  return v7;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  if (!self->_inEditMode)
  {
    return 0;
  }

  pathCopy = path;
  v6 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
  v7 = [(HKMedicalIDViewController *)self _rowIndexForTableItem:v6 atIndexPath:pathCopy];

  v8 = [v6 editingStyleForRowAtIndex:v7];
  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v14[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (self->_inEditMode)
  {
    v10 = [(HKMedicalIDViewController *)self _tableItemForIndexPath:pathCopy];
    v11 = [v10 commitEditingStyle:style forRowAtIndex:{-[HKMedicalIDViewController _rowIndexForTableItem:atIndexPath:](self, "_rowIndexForTableItem:atIndexPath:", v10, pathCopy)}];
    if (v11 == 2)
    {
      [viewCopy beginUpdates];
      v13 = pathCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [viewCopy reloadRowsAtIndexPaths:v12 withRowAnimation:0];
    }

    else
    {
      if (v11 != 1)
      {
LABEL_7:
        [v10 didCommitEditingStyle:style forRowAtIndex:{objc_msgSend(pathCopy, "row")}];

        goto LABEL_8;
      }

      [viewCopy beginUpdates];
      v14[0] = pathCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [viewCopy deleteRowsAtIndexPaths:v12 withRowAnimation:100];
    }

    [viewCopy endUpdates];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateEmergencyContactTableItem
{
  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView beginUpdates];

  tableItems = [(HKMedicalIDViewController *)self tableItems];
  v5 = [tableItems indexOfObject:self->_contactsItem];

  tableView2 = [(HKMedicalIDViewController *)self tableView];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
  [tableView2 reloadSections:v7 withRowAnimation:0];

  tableView3 = [(HKMedicalIDViewController *)self tableView];
  [tableView3 endUpdates];
}

- (void)updatePrimaryLanguageTableItem
{
  v12[1] = *MEMORY[0x1E69E9840];
  tableView = [(HKMedicalIDViewController *)self tableView];
  [tableView beginUpdates];

  tableItems = [(HKMedicalIDViewController *)self tableItems];
  v5 = [tableItems indexOfObject:self->_informationDataGroupItem];

  subitems = [(HKEmergencyCardGroupTableItem *)self->_informationDataGroupItem subitems];
  v7 = [subitems indexOfObject:self->_primaryLanguageItem];

  v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:v5];
  tableView2 = [(HKMedicalIDViewController *)self tableView];
  v12[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [tableView2 reloadRowsAtIndexPaths:v10 withRowAnimation:0];

  tableView3 = [(HKMedicalIDViewController *)self tableView];
  [tableView3 endUpdates];
}

- (id)_tableItemForIndexPath:(id)path
{
  presentableTableItems = self->_presentableTableItems;
  section = [path section];

  return [(NSArray *)presentableTableItems objectAtIndexedSubscript:section];
}

- (void)deletionTableItemDidTapDelete:(id)delete
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 medicalIDViewControllerDidDelete:self];
  }
}

- (void)medicalIDViewControllerDidDelete:(id)delete
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

- (void)tableItem:(id)item heightDidChangeForRowIndex:(int64_t)index keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v11 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__HKMedicalIDViewController_tableItem_heightDidChangeForRowIndex_keepRectVisible_inView___block_invoke;
  v13[3] = &unk_1E81B55A8;
  v13[4] = self;
  viewCopy = view;
  [v11 performWithoutAnimation:v13];
  [(HKMedicalIDViewController *)self _adjustTableViewContentOffsetForVisibleView:viewCopy visibleRect:1 animated:x, y, width, height];
}

void __89__HKMedicalIDViewController_tableItem_heightDidChangeForRowIndex_keepRectVisible_inView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) tableView];
  [v3 endUpdates];
}

- (void)_adjustTableViewContentOffsetForVisibleView:(id)view visibleRect:(CGRect)rect animated:(BOOL)animated
{
  if (view)
  {
    animatedCopy = animated;
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    viewCopy = view;
    tableView = [(HKMedicalIDViewController *)self tableView];
    [tableView convertRect:viewCopy fromView:{x, y, width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    tableView2 = [(HKMedicalIDViewController *)self tableView];
    [tableView2 scrollRectToVisible:animatedCopy animated:{v14, v16, v18, v20}];
  }
}

- (void)_showMedicalIDPreviewAsNext
{
  v9 = [[HKMedicalIDViewController alloc] initInEditMode:0 inBuddy:self->_inBuddy organDonationSignupAvailable:self->_organDonationSignupAvailable];
  healthStore = [(HKMedicalIDViewController *)self healthStore];
  [v9 setHealthStore:healthStore];

  medicalIDStore = [(HKMedicalIDViewController *)self medicalIDStore];
  [v9 setMedicalIDStore:medicalIDStore];

  medicalID = [(HKMedicalIDViewController *)self medicalID];
  v6 = [medicalID copy];
  [v9 setMedicalID:v6];

  [v9 setShowsDeleteButton:{-[HKMedicalIDViewController showsDeleteButton](self, "showsDeleteButton")}];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v9 setDelegate:WeakRetained];

  navigationController = [(HKMedicalIDViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:1];
}

- (void)_forceDisableBiometricIfDeviceLocked
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int softLink_MKBGetDeviceLockState(CFDictionaryRef)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKMedicalIDViewController.m" lineNumber:98 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_refreshMedicalIDInViewMode
{
  if (![(HKMedicalIDViewController *)self inEditMode])
  {
    medicalIDStore = [(HKMedicalIDViewController *)self medicalIDStore];

    if (!medicalIDStore)
    {
      v4 = objc_alloc(MEMORY[0x1E696C248]);
      healthStore = [(HKMedicalIDViewController *)self healthStore];
      v6 = [v4 initWithHealthStore:healthStore];
      [(HKMedicalIDViewController *)self setMedicalIDStore:v6];
    }

    medicalIDStore2 = [(HKMedicalIDViewController *)self medicalIDStore];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__HKMedicalIDViewController__refreshMedicalIDInViewMode__block_invoke;
    v8[3] = &unk_1E81B8C30;
    v8[4] = self;
    [medicalIDStore2 fetchMedicalIDDataWithCompletion:v8];
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
  medicalIDStore = [(HKMedicalIDViewController *)self medicalIDStore];

  if (!medicalIDStore)
  {
    v4 = [objc_alloc(MEMORY[0x1E696C248]) initWithHealthStore:self->_healthStore];
    [(HKMedicalIDViewController *)self setMedicalIDStore:v4];
  }

  medicalIDStore2 = [(HKMedicalIDViewController *)self medicalIDStore];
  medicalID = [(HKMedicalIDViewController *)self medicalID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__HKMedicalIDViewController__updateMedicalID__block_invoke;
  v7[3] = &unk_1E81B59C0;
  v7[4] = self;
  [medicalIDStore2 updateMedicalIDData:medicalID completion:v7];
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

- (id)_formatMedicalIDAccessPoint:(int64_t)point
{
  if ((point - 1) > 7)
  {
    return &stru_1F42FFBE0;
  }

  else
  {
    return off_1E81B8C80[point - 1];
  }
}

- (void)_submitAccessAnalytic
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    v3 = [(HKMedicalIDViewController *)self _formatMedicalIDAccessPoint:[(HKMedicalIDViewController *)self internalAccessType]];
    v14[0] = @"applicationIdentifier";
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v15[0] = bundleIdentifier;
    v15[1] = v3;
    v14[1] = @"healthAccessType";
    v14[2] = @"profileType";
    v6 = MEMORY[0x1E696AD98];
    profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
    v8 = [v6 numberWithInteger:{objc_msgSend(profileIdentifier, "type")}];
    v15[2] = v8;
    v14[3] = @"typeOfAccess";
    internalAccessType = [(HKMedicalIDViewController *)self internalAccessType];
    v10 = @"Health";
    if (!internalAccessType)
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