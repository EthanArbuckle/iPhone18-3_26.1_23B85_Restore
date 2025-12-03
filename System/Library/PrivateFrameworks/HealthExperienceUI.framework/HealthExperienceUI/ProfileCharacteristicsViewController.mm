@interface ProfileCharacteristicsViewController
+ (BOOL)nameRowsHiddenForProfileIdentifier:(id)identifier;
+ (id)orderedRowIdentifiersBySectionIdentifierWithNameRowsHidden:(BOOL)hidden pregnancySectionHidden:(BOOL)sectionHidden cardioFitnessMedicationsSectionHidden:(BOOL)medicationsSectionHidden;
+ (id)orderedSectionIdentifiersWithPregnancySectionHidden:(BOOL)hidden cardioFitnessMedicationsSectionHidden:(BOOL)sectionHidden;
- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate;
- (ProfileCharacteristicsViewController)initWithCoder:(id)coder;
- (ProfileCharacteristicsViewController)initWithHealthStore:(id)store;
- (ProfileCharacteristicsViewController)initWithHealthStore:(id)store inEditMode:(BOOL)mode;
- (ProfileCharacteristicsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ProfileCharacteristicsViewController)initWithStyle:(int64_t)style;
- (UIImageView)avatarImageView;
- (id)_birthdayCalendar;
- (id)_checkmarkedCircleImageView;
- (id)_circleImageView;
- (id)_createBetaBlockerCheckMarkCell;
- (id)_createCalciumChannelBlockerCheckMarkCell;
- (id)_dateAsAge:(id)age;
- (id)_displayStringForBiologicalSex:(int64_t)sex;
- (id)_displayStringForBirthDate:(id)date;
- (id)_displayStringForBloodType:(int64_t)type;
- (id)_displayStringForFitzpatrickSkinType:(int64_t)type;
- (id)_displayStringForWheelchairUse:(int64_t)use;
- (id)_generalInfoFooterView;
- (id)_initialBirthdayValue;
- (id)_meContact;
- (id)_titleForFooterInTableViewSection:(int64_t)section sectionIdentifier:(id)identifier;
- (id)_wheelchairFooterTitle;
- (id)displayNumberOfActiveCardioFitnessMedications:(int)medications;
- (id)getCellForIndexPath:(id)path;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)_profileRowIdentifierForSection:(id)section;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_adjustHeaderFrame;
- (void)_createBarButtonItems;
- (void)_createCells;
- (void)_createHeader;
- (void)_createPickers;
- (void)_enableEditing;
- (void)_fetchDataFromHealthStore;
- (void)_handlePregnancyModelQueryResult:(id)result error:(id)error;
- (void)_localeDidChange:(id)change;
- (void)_resetFirstAndLastNameValues;
- (void)_resetSelectedCell;
- (void)_setPregnancyCellDisplayValueForState:(BOOL)state;
- (void)_startPregnancyModelQuery;
- (void)_timeZoneDidChange:(id)change;
- (void)_updateCellsWithDisplayValues;
- (void)_updateFirstAndLastNameCellsWithDisplayValues;
- (void)_updateFirstName:(id)name lastName:(id)lastName completion:(id)completion;
- (void)_updateFooters;
- (void)_updatePickersWithDisplayValues;
- (void)birthdateChanged:(id)changed;
- (void)cancelButtonTapped;
- (void)dealloc;
- (void)didClearBirthdate;
- (void)didTapPregnancy;
- (void)didUpdateName;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setAvatarImage:(id)image;
- (void)setCardioFitnessMedicationCheckmarks;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setUpNavigationBar;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCheckMarksForCell:(id)cell option:(unint64_t)option;
- (void)updateTableViewIfNeeded;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProfileCharacteristicsViewController

- (ProfileCharacteristicsViewController)initWithHealthStore:(id)store
{
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = ProfileCharacteristicsViewController;
  v6 = [(ProfileCharacteristicsViewController *)&v25 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v7->_beginInEditMode = 0;
    v7->_accessType = 0;
    v8 = [MEMORY[0x1E69A4380] sharedInstanceForHealthStore:v7->_healthStore];
    displayTypeController = v7->_displayTypeController;
    v7->_displayTypeController = v8;

    v10 = [objc_alloc(MEMORY[0x1E69A4048]) initWithHealthStore:storeCopy];
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = v10;

    profileIdentifier = [storeCopy profileIdentifier];
    v7->_nameRowsHidden = [ProfileCharacteristicsViewController nameRowsHiddenForProfileIdentifier:profileIdentifier];

    profileIdentifier2 = [storeCopy profileIdentifier];
    v7->_cardioFitnessMedicationsSectionHidden = [ProfileCharacteristicsViewController cardioFitnessMedicationsSectionHiddenForProfileIdentifier:profileIdentifier2];

    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    v7->_pregnancySectionHidden = [mEMORY[0x1E696C608] healthAppSupportedOnDevice] ^ 1;

    v15 = [ProfileCharacteristicsViewController orderedSectionIdentifiersWithPregnancySectionHidden:v7->_pregnancySectionHidden cardioFitnessMedicationsSectionHidden:v7->_cardioFitnessMedicationsSectionHidden];
    orderedSectionIdentifiers = v7->_orderedSectionIdentifiers;
    v7->_orderedSectionIdentifiers = v15;

    v17 = [ProfileCharacteristicsViewController orderedRowIdentifiersBySectionIdentifierWithNameRowsHidden:v7->_nameRowsHidden pregnancySectionHidden:v7->_pregnancySectionHidden cardioFitnessMedicationsSectionHidden:v7->_cardioFitnessMedicationsSectionHidden];
    orderedRowIdentifiersBySectionIdentifier = v7->_orderedRowIdentifiersBySectionIdentifier;
    v7->_orderedRowIdentifiersBySectionIdentifier = v17;

    v19 = [objc_alloc(MEMORY[0x1E69A4110]) initWithHealthStore:storeCopy];
    birthdateChangeManager = v7->_birthdateChangeManager;
    v7->_birthdateChangeManager = v19;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v7->_isPregnant = 0;
    _HKInitializeLogging();
    v22 = *MEMORY[0x1E696B970];
    if (os_log_type_enabled(*MEMORY[0x1E696B970], OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1B9F07000, v22, OS_LOG_TYPE_DEFAULT, "Starting pregnancy model query", v24, 2u);
    }

    [(ProfileCharacteristicsViewController *)v7 _startPregnancyModelQuery];
  }

  return v7;
}

- (ProfileCharacteristicsViewController)initWithHealthStore:(id)store inEditMode:(BOOL)mode
{
  result = [(ProfileCharacteristicsViewController *)self initWithHealthStore:store];
  result->_beginInEditMode = mode;
  return result;
}

+ (BOOL)nameRowsHiddenForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"TinkerProfileCharacteristicsHideNameRows"];

  if (v5)
  {
    v6 = [identifierCopy type] == 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)orderedSectionIdentifiersWithPregnancySectionHidden:(BOOL)hidden cardioFitnessMedicationsSectionHidden:(BOOL)sectionHidden
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v6 addObjectsFromArray:&unk_1F38468A0];
  if (!hidden)
  {
    [v6 addObject:&unk_1F38465D0];
  }

  if (!sectionHidden)
  {
    [v6 addObject:&unk_1F38465E8];
  }

  return v6;
}

+ (id)orderedRowIdentifiersBySectionIdentifierWithNameRowsHidden:(BOOL)hidden pregnancySectionHidden:(BOOL)sectionHidden cardioFitnessMedicationsSectionHidden:(BOOL)medicationsSectionHidden
{
  v8 = objc_opt_new();
  if (hidden)
  {
    v9 = &unk_1F38468B8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    if ([v10 isGivenNameFirst])
    {
      v11 = &unk_1F38468D0;
    }

    else
    {
      v11 = &unk_1F38468E8;
    }

    v9 = [v11 arrayByAddingObjectsFromArray:&unk_1F38468B8];
  }

  [v8 setObject:v9 forKey:&unk_1F38465A0];
  [v8 setObject:&unk_1F3846900 forKey:&unk_1F38465B8];
  if (!sectionHidden)
  {
    [v8 setObject:&unk_1F3846918 forKey:&unk_1F38465D0];
  }

  if (!medicationsSectionHidden)
  {
    [v8 setObject:&unk_1F3846930 forKey:&unk_1F38465E8];
  }

  return v8;
}

- (ProfileCharacteristicsViewController)initWithStyle:(int64_t)style
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (ProfileCharacteristicsViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ProfileCharacteristicsViewController;
  return [(ProfileCharacteristicsViewController *)&v4 initWithCoder:coder];
}

- (ProfileCharacteristicsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)setAvatarImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_avatarImage, image);
  if ([(ProfileCharacteristicsViewController *)self isViewLoaded])
  {
    avatarImageView = [(ProfileCharacteristicsViewController *)self avatarImageView];
    [avatarImageView setImage:imageCopy];

    [(ProfileCharacteristicsViewController *)self _adjustHeaderFrame];
  }
}

- (UIImageView)avatarImageView
{
  if (!self->_avatarImageView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    avatarImageView = self->_avatarImageView;
    self->_avatarImageView = v3;

    [(UIImageView *)self->_avatarImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WDProfileHeaderView *)self->_headerView setAvatarView:self->_avatarImageView];
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    if ([mEMORY[0x1E696C608] isiPad])
    {
    }

    else
    {
      mEMORY[0x1E696C608]2 = [MEMORY[0x1E696C608] sharedBehavior];
      isRealityDevice = [mEMORY[0x1E696C608]2 isRealityDevice];

      if (!isRealityDevice)
      {
        goto LABEL_6;
      }
    }

    safeAreaLayoutGuide = [(WDProfileHeaderView *)self->_headerView safeAreaLayoutGuide];
    centerXAnchor = [(UIImageView *)self->_avatarImageView centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v11 setActive:1];
  }

LABEL_6:
  v12 = self->_avatarImageView;

  return v12;
}

- (void)setUpNavigationBar
{
  v4 = WDBundle();
  v3 = [v4 localizedStringForKey:@"HEALTH_PROFILE_TITLE" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(ProfileCharacteristicsViewController *)self setTitle:v3];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = ProfileCharacteristicsViewController;
  [(ProfileCharacteristicsViewController *)&v31 viewDidLoad];
  [(ProfileCharacteristicsViewController *)self setUpNavigationBar];
  v3 = *MEMORY[0x1E69DE3D0];
  tableView = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView setRowHeight:v3];

  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 lineHeight];
  v7 = v6 * 3.0;
  tableView2 = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:v7];

  tableView3 = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView3 setAllowsSelectionDuringEditing:1];

  tableView4 = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView4 setBackgroundView:0];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tableView5 = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView5 setBackgroundColor:systemBackgroundColor];

  tableView6 = [(ProfileCharacteristicsViewController *)self tableView];
  v14 = objc_opt_class();
  defaultReuseIdentifier = [MEMORY[0x1E69A4388] defaultReuseIdentifier];
  [tableView6 registerClass:v14 forHeaderFooterViewReuseIdentifier:defaultReuseIdentifier];

  tableView7 = [(ProfileCharacteristicsViewController *)self tableView];
  v17 = HKUIJoinStringsForAutomationIdentifier();
  [tableView7 setAccessibilityIdentifier:v17];

  if (self->_beginInEditMode)
  {
    [(ProfileCharacteristicsViewController *)self setEditing:1];
  }

  [(ProfileCharacteristicsViewController *)self _createHeader];
  [(ProfileCharacteristicsViewController *)self _createBarButtonItems];
  [(ProfileCharacteristicsViewController *)self _createPickers];
  [(ProfileCharacteristicsViewController *)self _updatePickersWithDisplayValues];
  [(ProfileCharacteristicsViewController *)self _createCells];
  [(ProfileCharacteristicsViewController *)self setCardioFitnessMedicationCheckmarks];
  objc_initWeak(&location, self);
  v18 = [ProfileCharacteristicDiffableDataSource alloc];
  tableView8 = [(ProfileCharacteristicsViewController *)self tableView];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __51__ProfileCharacteristicsViewController_viewDidLoad__block_invoke;
  v28[3] = &unk_1E7EEB5B0;
  objc_copyWeak(&v29, &location);
  v20 = [(UITableViewDiffableDataSource *)v18 initWithTableView:tableView8 cellProvider:v28];
  [(ProfileCharacteristicsViewController *)self setDataSource:v20];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __51__ProfileCharacteristicsViewController_viewDidLoad__block_invoke_2;
  v26[3] = &unk_1E7EEB5D8;
  objc_copyWeak(&v27, &location);
  dataSource = [(ProfileCharacteristicsViewController *)self dataSource];
  [dataSource setFooterTitleProvider:v26];

  [(ProfileCharacteristicsViewController *)self updateTableViewIfNeeded];
  dataSource2 = [(ProfileCharacteristicsViewController *)self dataSource];
  [dataSource2 setDefaultRowAnimation:0];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  view = [(ProfileCharacteristicsViewController *)self view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__timeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

id __51__ProfileCharacteristicsViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = MEMORY[0x1E696AC88];
  v7 = [v4 item];
  v8 = [v4 section];

  v9 = [v6 indexPathForItem:v7 inSection:v8];
  v10 = [WeakRetained getCellForIndexPath:v9];

  return v10;
}

id __51__ProfileCharacteristicsViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _titleForFooterInTableViewSection:a3 sectionIdentifier:v6];

  return v8;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = ProfileCharacteristicsViewController;
  [(ProfileCharacteristicsViewController *)&v8 viewDidAppear:appear];
  settingsNavigationDonatingDelegate = [(ProfileCharacteristicsViewController *)self settingsNavigationDonatingDelegate];
  v5 = MEMORY[0x1E69A2D68];
  healthSettingsHealthDetailsSpecifier = [MEMORY[0x1E69A2D68] healthSettingsHealthDetailsSpecifier];
  v7 = [v5 internalHealthSettingsURLTo:healthSettingsHealthDetailsSpecifier];
  [settingsNavigationDonatingDelegate donateWithDeepLink:v7 andTitle:@"Health Details"];
}

- (void)updateTableViewIfNeeded
{
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [(ProfileCharacteristicsViewController *)self setCurrentSnapshot:v3];

  v4 = [ProfileCharacteristicsViewController orderedSectionIdentifiersWithPregnancySectionHidden:self->_pregnancySectionHidden cardioFitnessMedicationsSectionHidden:self->_cardioFitnessMedicationsSectionHidden];
  orderedSectionIdentifiers = self->_orderedSectionIdentifiers;
  self->_orderedSectionIdentifiers = v4;

  v6 = [ProfileCharacteristicsViewController orderedRowIdentifiersBySectionIdentifierWithNameRowsHidden:self->_nameRowsHidden pregnancySectionHidden:self->_pregnancySectionHidden cardioFitnessMedicationsSectionHidden:self->_cardioFitnessMedicationsSectionHidden];
  orderedRowIdentifiersBySectionIdentifier = self->_orderedRowIdentifiersBySectionIdentifier;
  self->_orderedRowIdentifiersBySectionIdentifier = v6;

  currentSnapshot = [(ProfileCharacteristicsViewController *)self currentSnapshot];
  [currentSnapshot appendSectionsWithIdentifiers:self->_orderedSectionIdentifiers];

  currentSnapshot2 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
  v10 = [(NSDictionary *)self->_orderedRowIdentifiersBySectionIdentifier objectForKey:&unk_1F38465A0];
  [currentSnapshot2 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:&unk_1F38465A0];

  currentSnapshot3 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
  v12 = [(NSDictionary *)self->_orderedRowIdentifiersBySectionIdentifier objectForKey:&unk_1F38465B8];
  [currentSnapshot3 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:&unk_1F38465B8];

  if (!self->_pregnancySectionHidden)
  {
    currentSnapshot4 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
    [currentSnapshot4 appendItemsWithIdentifiers:&unk_1F3846960 intoSectionWithIdentifier:&unk_1F38465D0];
  }

  if (!self->_cardioFitnessMedicationsSectionHidden)
  {
    currentSnapshot5 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
    [currentSnapshot5 appendItemsWithIdentifiers:&unk_1F3846978 intoSectionWithIdentifier:&unk_1F38465E8];
  }
}

- (id)_titleForFooterInTableViewSection:(int64_t)section sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:&unk_1F38465A0])
  {
    _wheelchairFooterTitle = &stru_1F3823B88;
  }

  else if ([identifierCopy isEqual:&unk_1F38465B8])
  {
    _wheelchairFooterTitle = [(ProfileCharacteristicsViewController *)self _wheelchairFooterTitle];
  }

  else if ([identifierCopy isEqual:&unk_1F38465E8])
  {
    v7 = WDBundle();
    _wheelchairFooterTitle = [v7 localizedStringForKey:@"CARDIO_FITNESS_RELATED_MEDICATIONS_FOOTER_TEXT" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  else
  {
    _wheelchairFooterTitle = 0;
  }

  return _wheelchairFooterTitle;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(ProfileCharacteristicsViewController *)self _generalInfoFooterView:view];
  }

  return v6;
}

- (id)_wheelchairFooterTitle
{
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  v5 = WDBundle();
  v6 = v5;
  if (type == 3)
  {
    v7 = [v5 localizedStringForKey:@"WHEELCHAIR_USE_COREMOTION_TEXT_TINKER_%@" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable-Tinker"];

    v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, self->_firstName];
    v6 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"WHEELCHAIR_USE_COREMOTION_TEXT"];
    v8 = [v6 localizedStringForKey:v9 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v8;
}

- (id)_generalInfoFooterView
{
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3)
  {
    v5 = WDBundle();
    v6 = [v5 localizedStringForKey:@"EDIT_HEALTH_DETAILS_FOOTER_TEXT_%@" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable-Tinker"];

    v7 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v6, self->_firstName];
    v8 = objc_alloc(MEMORY[0x1E69A4388]);
    defaultReuseIdentifier = [MEMORY[0x1E69A4388] defaultReuseIdentifier];
    v10 = [v8 initWithReuseIdentifier:defaultReuseIdentifier markdown:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ProfileCharacteristicsViewController;
  [(ProfileCharacteristicsViewController *)&v4 viewWillAppear:appear];
  [(ProfileCharacteristicsViewController *)self _fetchDataFromHealthStore];
  [(ProfileCharacteristicsViewController *)self _updatePickersWithDisplayValues];
}

- (void)_localeDidChange:(id)change
{
  [(ProfileCharacteristicsViewController *)self _updatePickersWithDisplayValues];
  dataSource = [(ProfileCharacteristicsViewController *)self dataSource];
  currentSnapshot = [(ProfileCharacteristicsViewController *)self currentSnapshot];
  [dataSource applySnapshot:currentSnapshot animatingDifferences:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E695DA68] object:0];

  [(WDProfileTableViewCell *)self->_birthdateCell removeClearButtonTarget:self action:sel_didClearBirthdate];
  [(HKHealthStore *)self->_healthStore stopQuery:self->_pregnancyModelQuery];
  v5.receiver = self;
  v5.super_class = ProfileCharacteristicsViewController;
  [(ProfileCharacteristicsViewController *)&v5 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = ProfileCharacteristicsViewController;
  [(ProfileCharacteristicsViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(ProfileCharacteristicsViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__ProfileCharacteristicsViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E7EEB0F0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __65__ProfileCharacteristicsViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__ProfileCharacteristicsViewController_traitCollectionDidChange___block_invoke_2;
  v2[3] = &unk_1E7EEB0F0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __65__ProfileCharacteristicsViewController_traitCollectionDidChange___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1320) setNeedsLayout];
  [*(a1 + 32) _adjustHeaderFrame];
  v3 = [*(a1 + 32) dataSource];
  v2 = [*(a1 + 32) currentSnapshot];
  [v3 applySnapshot:v2 animatingDifferences:0];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v87.receiver = self;
  v87.super_class = ProfileCharacteristicsViewController;
  [(ProfileCharacteristicsViewController *)&v87 setEditing:editing animated:animated];
  if (editingCopy)
  {
    self->_isCancelling = 0;
    [(ProfileCharacteristicsViewController *)self setModalInPresentation:1];
    navigationItem = [(ProfileCharacteristicsViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:self->_cancelButtonItem animated:1];

    if (!self->_cardioFitnessMedicationsSectionHidden)
    {
      dataSource = [(ProfileCharacteristicsViewController *)self dataSource];
      currentSnapshot = [(ProfileCharacteristicsViewController *)self currentSnapshot];
      [dataSource applySnapshot:currentSnapshot animatingDifferences:0];

      currentSnapshot2 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
      [currentSnapshot2 appendItemsWithIdentifiers:&unk_1F3846990 intoSectionWithIdentifier:&unk_1F38465E8];

      dataSource2 = [(ProfileCharacteristicsViewController *)self dataSource];
      currentSnapshot3 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
      [dataSource2 applySnapshot:currentSnapshot3 animatingDifferences:1];
LABEL_46:
    }
  }

  else
  {
    if (!self->_cardioFitnessMedicationsSectionHidden)
    {
      dataSource3 = [(ProfileCharacteristicsViewController *)self dataSource];
      currentSnapshot4 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
      [dataSource3 applySnapshot:currentSnapshot4 animatingDifferences:0];

      currentSnapshot5 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
      [currentSnapshot5 deleteItemsWithIdentifiers:&unk_1F38469A8];

      dataSource4 = [(ProfileCharacteristicsViewController *)self dataSource];
      currentSnapshot6 = [(ProfileCharacteristicsViewController *)self currentSnapshot];
      [dataSource4 applySnapshot:currentSnapshot6 animatingDifferences:1];
    }

    [(ProfileCharacteristicsViewController *)self setModalInPresentation:0];
    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    [activeInstance removeAutocorrection];

    view = [(ProfileCharacteristicsViewController *)self view];
    [view endEditing:1];

    [(ProfileCharacteristicsViewController *)self _resetSelectedCell];
    navigationItem2 = [(ProfileCharacteristicsViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:0 animated:1];

    if (!self->_isCancelling)
    {
      displayValue = [(WDProfileEditableTableViewCell *)self->_firstNameCell displayValue];
      v21 = displayValue;
      if (displayValue)
      {
        v22 = displayValue;
      }

      else
      {
        v22 = &stru_1F3823B88;
      }

      v23 = v22;

      displayValue2 = [(WDProfileEditableTableViewCell *)self->_lastNameCell displayValue];
      v25 = displayValue2;
      if (displayValue2)
      {
        v26 = displayValue2;
      }

      else
      {
        v26 = &stru_1F3823B88;
      }

      v27 = v26;

      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke;
      v84[3] = &unk_1E7EEB2D0;
      v84[4] = self;
      currentSnapshot3 = v23;
      v85 = currentSnapshot3;
      v28 = v27;
      v86 = v28;
      [(ProfileCharacteristicsViewController *)self _updateFirstName:currentSnapshot3 lastName:v28 completion:v84];
      healthStore = self->_healthStore;
      biologicalSexDisplayValue = self->_biologicalSexDisplayValue;
      v83 = 0;
      v31 = [(HKHealthStore *)healthStore _setBiologicalSex:biologicalSexDisplayValue error:&v83];
      v32 = v83;
      if (v31)
      {
        v33 = self->_healthStore;
        v82 = v32;
        v34 = [(HKHealthStore *)v33 biologicalSexWithError:&v82];
        v35 = v82;

        biologicalSexObject = self->_biologicalSexObject;
        self->_biologicalSexObject = v34;

        v32 = v35;
      }

      else
      {
        _HKInitializeLogging();
        v37 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [ProfileCharacteristicsViewController setEditing:animated:];
        }

        self->_biologicalSexDisplayValue = [(HKBiologicalSexObject *)self->_biologicalSexObject biologicalSex];
      }

      v38 = self->_healthStore;
      bloodTypeDisplayValue = self->_bloodTypeDisplayValue;
      v81 = v32;
      v40 = [(HKHealthStore *)v38 _setBloodType:bloodTypeDisplayValue error:&v81];
      v41 = v81;

      if (v40)
      {
        v42 = self->_healthStore;
        v80 = v41;
        v43 = [(HKHealthStore *)v42 bloodTypeWithError:&v80];
        v44 = v80;

        bloodTypeObject = self->_bloodTypeObject;
        self->_bloodTypeObject = v43;

        v41 = v44;
      }

      else
      {
        _HKInitializeLogging();
        v46 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [ProfileCharacteristicsViewController setEditing:animated:];
        }

        self->_bloodTypeDisplayValue = [(HKBloodTypeObject *)self->_bloodTypeObject bloodType];
      }

      birthdateChangeManager = self->_birthdateChangeManager;
      birthdateDisplayValue = self->_birthdateDisplayValue;
      v79 = v41;
      v49 = [(HKBirthdateChangeManager *)birthdateChangeManager setBirthdate:birthdateDisplayValue withError:&v79];
      v50 = v79;

      if (([v49 success] & 1) == 0)
      {
        _HKInitializeLogging();
        v51 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [ProfileCharacteristicsViewController setEditing:animated:];
        }

        objc_storeStrong(&self->_birthdateDisplayValue, self->_birthdate);
      }

      v52 = [(UIPickerView *)self->_fitzpatrickSkinTypePicker selectedRowInComponent:0];
      self->_fitzpatrickSkinTypeDisplayValue = v52;
      v53 = self->_healthStore;
      v78 = v50;
      v54 = [(HKHealthStore *)v53 _setFitzpatrickSkinType:v52 error:&v78];
      v55 = v78;

      if ((v54 & 1) == 0)
      {
        _HKInitializeLogging();
        v56 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [ProfileCharacteristicsViewController setEditing:animated:];
        }
      }

      v57 = [(UIPickerView *)self->_wheelchairUsePicker selectedRowInComponent:0];
      self->_wheelchairUseDisplayValue = v57;
      v58 = self->_healthStore;
      v77 = v55;
      v59 = [(HKHealthStore *)v58 _setWheelchairUse:v57 error:&v77];
      v60 = v77;

      if ((v59 & 1) == 0)
      {
        _HKInitializeLogging();
        v61 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [ProfileCharacteristicsViewController setEditing:animated:];
        }
      }

      v62 = self->_healthStore;
      currentCardioFitnessMedicationsUse = self->_currentCardioFitnessMedicationsUse;
      v76 = v60;
      v64 = [(HKHealthStore *)v62 _setCardioFitnessMedicationsUse:currentCardioFitnessMedicationsUse error:&v76];
      dataSource2 = v76;

      if ((v64 & 1) == 0)
      {
        _HKInitializeLogging();
        v65 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [ProfileCharacteristicsViewController setEditing:animated:];
        }
      }

      if ([v49 shouldShowWarning])
      {
        profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
        type = [profileIdentifier type];

        if (type != 3)
        {
          mEMORY[0x1E696C198] = [MEMORY[0x1E696C198] shared];
          isHealthChecklistAvailable = [mEMORY[0x1E696C198] isHealthChecklistAvailable];

          if (isHealthChecklistAvailable && [(ProfileCharacteristicsViewController *)self accessType]!= 3)
          {
            v70 = [(ProfileCharacteristicsViewController *)self accessType]!= 5;
            [MEMORY[0x1E69A4110] showDisabledWarningWithHealthChecklistWithAge:objc_msgSend(v49 presentingViewController:"newAge") openHealthChecklistInContext:{self, v70}];
          }

          else
          {
            [MEMORY[0x1E69A4110] showDisabledWarningWithAge:objc_msgSend(v49 presentingViewController:{"newAge"), self}];
          }
        }
      }

      v71 = [objc_alloc(MEMORY[0x1E696BF98]) initWithPush:1 pull:0 lite:1];
      v72 = [objc_alloc(MEMORY[0x1E696BFF8]) initWithChangesSyncRequest:v71];
      v73 = [objc_alloc(MEMORY[0x1E696BFE0]) initWithHealthStore:self->_healthStore];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke_456;
      v75[3] = &unk_1E7EEB458;
      v75[4] = self;
      [v73 syncWithRequest:v72 reason:@"Health Details Updated" completion:v75];

      goto LABEL_46;
    }
  }

  tableView = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView reloadData];
}

void __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke_2;
  block[3] = &unk_1E7EEB2A8;
  v12 = a2;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  v7 = v5;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (a2)
  {
    [*(a1 + 32) didUpdateName];
  }
}

void __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 1120), *(a1 + 40));
    v2 = *(a1 + 48);
    v3 = (*(a1 + 32) + 1128);

    objc_storeStrong(v3, v2);
  }

  else
  {
    [*(a1 + 32) _resetFirstAndLastNameValues];
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke_2_cold_1(a1, v4);
    }
  }
}

void __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke_456(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B9A0];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"Did not";
    v9 = 138543874;
    if (a2)
    {
      v8 = @"Did";
    }

    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1B9F07000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ request fast push sync successfully. Error: %{public}@", &v9, 0x20u);
  }
}

- (void)_updateFirstName:(id)name lastName:(id)lastName completion:(id)completion
{
  v18[2] = *MEMORY[0x1E69E9840];
  healthStore = self->_healthStore;
  completionCopy = completion;
  lastNameCopy = lastName;
  nameCopy = name;
  profileIdentifier = [(HKHealthStore *)healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 1)
  {
    v14 = *MEMORY[0x1E696C908];
    v17[0] = *MEMORY[0x1E696C900];
    v17[1] = v14;
    v18[0] = nameCopy;
    v18[1] = lastNameCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(WDUserDefaults *)self->_userDefaults setValue:v15 forKey:*MEMORY[0x1E696C918] completion:completionCopy];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:self->_healthStore];
    [v16 setDisplayFirstName:nameCopy lastName:lastNameCopy completion:completionCopy];
  }
}

- (void)_resetFirstAndLastNameValues
{
  [(WDProfileEditableTableViewCell *)self->_firstNameCell setDisplayValue:self->_firstName];
  [(WDProfileEditableTableViewCell *)self->_lastNameCell setDisplayValue:self->_lastName];
  headerView = self->_headerView;
  firstName = self->_firstName;
  lastName = self->_lastName;

  [(WDProfileHeaderView *)headerView setFirstName:firstName lastName:lastName];
}

- (id)getCellForIndexPath:(id)path
{
  v4 = [(ProfileCharacteristicsViewController *)self _profileRowIdentifierForSection:path];
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_33;
        }

        v5 = 1224;
      }

      else
      {
        v5 = 1216;
      }

      goto LABEL_22;
    }

    if (v4 == 2)
    {
      v6 = 1232;
      birthdateCell = self->_birthdateCell;
      v8 = [(ProfileCharacteristicsViewController *)self _displayStringForBirthDate:self->_birthdateDisplayValue];
    }

    else
    {
      if (v4 == 3)
      {
        v6 = 1240;
        birthdateCell = self->_biologicalSexCell;
        [(ProfileCharacteristicsViewController *)self _displayStringForBiologicalSex:self->_biologicalSexDisplayValue];
      }

      else
      {
        v6 = 1248;
        birthdateCell = self->_bloodTypeCell;
        [(ProfileCharacteristicsViewController *)self _displayStringForBloodType:self->_bloodTypeDisplayValue];
      }
      v8 = ;
    }

LABEL_25:
    v10 = v8;
    [(WDProfileTableViewCell *)birthdateCell setDisplayValue:v8];

    v9 = *(&self->super.super.super.super.isa + v6);
LABEL_26:
    v11 = v9;
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_33:
    v11 = HKErrorTableViewCell();
    goto LABEL_34;
  }

  if (v4 <= 7)
  {
    if (v4 == 5)
    {
      v6 = 1256;
      birthdateCell = self->_fitzpatrickSkinTypeCell;
      v8 = [(ProfileCharacteristicsViewController *)self _displayStringForFitzpatrickSkinType:self->_fitzpatrickSkinTypeDisplayValue];
    }

    else
    {
      if (v4 != 6)
      {
        [(ProfileCharacteristicsViewController *)self _setPregnancyCellDisplayValueForState:self->_isPregnant];
        v5 = 1304;
LABEL_22:
        v9 = *(&self->super.super.super.super.isa + v5);
        goto LABEL_26;
      }

      v6 = 1272;
      birthdateCell = self->_wheelchairUseCell;
      v8 = [(ProfileCharacteristicsViewController *)self _displayStringForWheelchairUse:self->_wheelchairUseDisplayValue];
    }

    goto LABEL_25;
  }

  if (v4 != 8)
  {
    if (v4 == 9)
    {
      v5 = 1296;
    }

    else
    {
      if (v4 != 10)
      {
        goto LABEL_33;
      }

      v5 = 1288;
    }

    goto LABEL_22;
  }

  v12 = [(ProfileCharacteristicsViewController *)self displayNumberOfActiveCardioFitnessMedications:self->_activeCardioFitnessMedications];
  [(UITableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v12];

  v11 = self->_cardioFitnessMedicationsCell;
  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITableViewCell *)v11 _setBadgeFont:v13];

  if (([(ProfileCharacteristicsViewController *)self isEditing]& 1) != 0)
  {
    HKHealthKeyColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v14 = ;
  [(UITableViewCell *)v11 _setBadgeColor:v14];

  if (!v11)
  {
    goto LABEL_33;
  }

LABEL_27:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v11;
    [(UITableViewCell *)v11 setShouldUseSelectedColorForDisplayValue:[(ProfileCharacteristicsViewController *)self isEditing]];
  }

LABEL_34:

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  isEditing = [(ProfileCharacteristicsViewController *)self isEditing];
  v8 = [(ProfileCharacteristicsViewController *)self _profileRowIdentifierForSection:pathCopy];
  if ((isEditing & 1) == 0)
  {
    displayName = 0;
    if (v8 <= 5)
    {
      if (v8 > 3)
      {
        if (v8 == 4)
        {
          displayName = [(WDProfileTableViewCell *)self->_bloodTypeCell displayName];
          v15 = MEMORY[0x1E696B6C8];
        }

        else
        {
          displayName = [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell displayName];
          v15 = MEMORY[0x1E696B6D8];
        }
      }

      else if (v8 == 2)
      {
        displayName = [(WDProfileTableViewCell *)self->_birthdateCell displayName];
        v15 = MEMORY[0x1E696B6D0];
      }

      else
      {
        if (v8 != 3)
        {
          goto LABEL_38;
        }

        displayName = [(WDProfileTableViewCell *)self->_biologicalSexCell displayName];
        v15 = MEMORY[0x1E696B6C0];
      }
    }

    else if (v8 <= 7)
    {
      if (v8 != 6)
      {
        goto LABEL_3;
      }

      displayName = [(WDProfileTableViewCell *)self->_wheelchairUseCell displayName];
      v15 = MEMORY[0x1E696B6E0];
    }

    else
    {
      if (v8 != 8)
      {
        if (v8 == 9)
        {
          v10 = 1296;
        }

        else
        {
          if (v8 != 10)
          {
            goto LABEL_38;
          }

          v10 = 1288;
        }

        textLabel = [*(&self->super.super.super.super.isa + v10) textLabel];
        displayName = [textLabel text];
LABEL_37:

        goto LABEL_38;
      }

      textLabel2 = [(UITableViewCell *)self->_cardioFitnessMedicationsCell textLabel];
      displayName = [textLabel2 text];

      v15 = MEMORY[0x1E696C6A0];
    }

    v20 = [MEMORY[0x1E696C2E0] characteristicTypeForIdentifier:*v15];
    if (!v20)
    {
      goto LABEL_38;
    }

    textLabel = v20;
    v22 = [[ProfileCharacteristicTypePermissionsViewController alloc] initWithHealthStore:self->_healthStore characteristicType:v20 firstName:self->_firstName];
    [(ProfileCharacteristicTypePermissionsViewController *)v22 setTitle:displayName];
    navigationController = [(ProfileCharacteristicsViewController *)self navigationController];
    [navigationController hk_showViewController:v22 animated:1];

    goto LABEL_37;
  }

  if (v8 == 7)
  {
LABEL_3:
    [(ProfileCharacteristicsViewController *)self didTapPregnancy];
    goto LABEL_39;
  }

  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  displayName = v11;
  if (v11 == self->_betaBlockerUseCell)
  {
    selfCopy2 = self;
    v17 = displayName;
    v18 = 2;
  }

  else
  {
    if (v11 != self->_calciumChannelBlockerUseCell)
    {
      selectedCell = self->_selectedCell;
      [(ProfileCharacteristicsViewController *)self _resetSelectedCell];
      if (displayName != selectedCell)
      {
        objc_storeStrong(&self->_selectedCell, displayName);
        if (displayName == self->_birthdateCell)
        {
          if (!self->_birthdateDisplayValue)
          {
            _initialBirthdayValue = [(ProfileCharacteristicsViewController *)self _initialBirthdayValue];
            birthdateDisplayValue = self->_birthdateDisplayValue;
            self->_birthdateDisplayValue = _initialBirthdayValue;

            [(ProfileCharacteristicsViewController *)self _updatePickersWithDisplayValues];
            [(ProfileCharacteristicsViewController *)self _updateCellsWithDisplayValues];
          }

          [(WDProfileTableViewCell *)displayName setShouldDisplayClearButtonDuringEditing:1];
        }

        [(WDProfileTableViewCell *)displayName becomeFirstResponder];
      }

      goto LABEL_38;
    }

    selfCopy2 = self;
    v17 = displayName;
    v18 = 1;
  }

  [(ProfileCharacteristicsViewController *)selfCopy2 updateCheckMarksForCell:v17 option:v18];
LABEL_38:

LABEL_39:
}

- (void)updateCheckMarksForCell:(id)cell option:(unint64_t)option
{
  v6 = self->_currentCardioFitnessMedicationsUse & option;
  cellCopy = cell;
  if (v6)
  {
    _circleImageView = [(ProfileCharacteristicsViewController *)self _circleImageView];
    [cellCopy setEditingAccessoryView:_circleImageView];

    v9 = self->_currentCardioFitnessMedicationsUse & ~option;
    v10 = -1;
  }

  else
  {
    _checkmarkedCircleImageView = [(ProfileCharacteristicsViewController *)self _checkmarkedCircleImageView];
    [cellCopy setEditingAccessoryView:_checkmarkedCircleImageView];

    v9 = self->_currentCardioFitnessMedicationsUse | option;
    v10 = 1;
  }

  self->_activeCardioFitnessMedications += v10;
  self->_currentCardioFitnessMedicationsUse = v9;
  v12 = [(ProfileCharacteristicsViewController *)self displayNumberOfActiveCardioFitnessMedications:?];
  [(UITableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v12];
}

- (id)displayNumberOfActiveCardioFitnessMedications:(int)medications
{
  v3 = *&medications;
  if (displayNumberOfActiveCardioFitnessMedications__onceToken != -1)
  {
    [ProfileCharacteristicsViewController displayNumberOfActiveCardioFitnessMedications:];
  }

  v4 = displayNumberOfActiveCardioFitnessMedications__numberFormatter;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

void __86__ProfileCharacteristicsViewController_displayNumberOfActiveCardioFitnessMedications___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = displayNumberOfActiveCardioFitnessMedications__numberFormatter;
  displayNumberOfActiveCardioFitnessMedications__numberFormatter = v0;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  if (self->_biologicalSexPicker == viewCopy)
  {
    v6 = 4;
  }

  else if (self->_bloodTypePicker == viewCopy)
  {
    v6 = 9;
  }

  else if (self->_fitzpatrickSkinTypePicker == viewCopy)
  {
    v6 = 7;
  }

  else if (self->_wheelchairUsePicker == viewCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  v8 = viewCopy;
  if (self->_biologicalSexPicker == viewCopy)
  {
    v10 = [(ProfileCharacteristicsViewController *)self _displayStringForBiologicalSex:row];
  }

  else if (self->_bloodTypePicker == viewCopy)
  {
    v10 = [(ProfileCharacteristicsViewController *)self _displayStringForBloodType:row];
  }

  else if (self->_fitzpatrickSkinTypePicker == viewCopy)
  {
    v10 = [(ProfileCharacteristicsViewController *)self _displayStringForFitzpatrickSkinType:row];
  }

  else
  {
    if (self->_wheelchairUsePicker != viewCopy)
    {
      v9 = &stru_1F3823B88;
      goto LABEL_11;
    }

    v10 = HKWheelchairUseDisplayName();
  }

  v9 = v10;
LABEL_11:

  return v9;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  if (!self->_isCancelling)
  {
    if (self->_biologicalSexPicker == viewCopy)
    {
      v8 = &OBJC_IVAR___ProfileCharacteristicsViewController__biologicalSexDisplayValue;
    }

    else if (self->_bloodTypePicker == viewCopy)
    {
      v8 = &OBJC_IVAR___ProfileCharacteristicsViewController__bloodTypeDisplayValue;
    }

    else if (self->_fitzpatrickSkinTypePicker == viewCopy)
    {
      v8 = &OBJC_IVAR___ProfileCharacteristicsViewController__fitzpatrickSkinTypeDisplayValue;
    }

    else
    {
      if (self->_wheelchairUsePicker != viewCopy)
      {
LABEL_11:
        v9 = viewCopy;
        [(ProfileCharacteristicsViewController *)self _updateCellsWithDisplayValues];
        viewCopy = v9;
        goto LABEL_12;
      }

      v8 = &OBJC_IVAR___ProfileCharacteristicsViewController__wheelchairUseDisplayValue;
    }

    *(&self->super.super.super.super.isa + *v8) = row;
    goto LABEL_11;
  }

LABEL_12:
}

- (void)birthdateChanged:(id)changed
{
  if (!self->_isCancelling)
  {
    changedCopy = changed;
    _birthdayCalendar = [(ProfileCharacteristicsViewController *)self _birthdayCalendar];
    date = [changedCopy date];

    v8 = [_birthdayCalendar hk_dateOfBirthDateComponentsWithDate:date];
    birthdateDisplayValue = self->_birthdateDisplayValue;
    self->_birthdateDisplayValue = v8;

    [(ProfileCharacteristicsViewController *)self _updateCellsWithDisplayValues];
  }
}

- (void)didClearBirthdate
{
  birthdateDisplayValue = self->_birthdateDisplayValue;
  self->_birthdateDisplayValue = 0;

  [(ProfileCharacteristicsViewController *)self _updateCellsWithDisplayValues];

  [(ProfileCharacteristicsViewController *)self _resetSelectedCell];
}

- (void)cancelButtonTapped
{
  self->_isCancelling = 1;
  objc_storeStrong(&self->_birthdateDisplayValue, self->_birthdate);
  self->_biologicalSexDisplayValue = [(HKBiologicalSexObject *)self->_biologicalSexObject biologicalSex];
  self->_bloodTypeDisplayValue = [(HKBloodTypeObject *)self->_bloodTypeObject bloodType];
  [(WDProfileEditableTableViewCell *)self->_firstNameCell setDisplayValue:self->_firstName];
  [(WDProfileEditableTableViewCell *)self->_lastNameCell setDisplayValue:self->_lastName];
  [(ProfileCharacteristicsViewController *)self setCardioFitnessMedicationCheckmarks];
  [(ProfileCharacteristicsViewController *)self _updatePickersWithDisplayValues];
  [(ProfileCharacteristicsViewController *)self _updateCellsWithDisplayValues];

  [(ProfileCharacteristicsViewController *)self setEditing:0 animated:1];
}

- (void)didUpdateName
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E696C910] object:0];
}

- (void)didTapPregnancy
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"x-apple-health://MenstrualCyclesAppPlugin.healthplugin/openPregnancyOnboarding"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:MEMORY[0x1E695E0F8]];
}

- (void)_fetchDataFromHealthStore
{
  healthStore = self->_healthStore;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__ProfileCharacteristicsViewController__fetchDataFromHealthStore__block_invoke;
  v3[3] = &unk_1E7EEB620;
  v3[4] = self;
  [(HKHealthStore *)healthStore hk_fetchExistingDemographicInformationWithOptions:1 completion:v3];
}

void __65__ProfileCharacteristicsViewController__fetchDataFromHealthStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v30 = v3;
    v4 = [v3 firstName];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1120);
    *(v5 + 1120) = v4;

    v7 = [v30 lastName];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1128);
    *(v8 + 1128) = v7;

    v10 = [v30 dateOfBirthComponents];
    v11 = *(a1 + 32);
    v12 = *(v11 + 1136);
    *(v11 + 1136) = v10;

    v13 = [v30 dateOfBirthComponents];
    v14 = *(a1 + 32);
    v15 = *(v14 + 1144);
    *(v14 + 1144) = v13;

    v16 = [v30 biologicalSexObject];
    v17 = *(a1 + 32);
    v18 = *(v17 + 1080);
    *(v17 + 1080) = v16;

    v19 = [v30 biologicalSexObject];
    if (v19)
    {
      v20 = [v30 biologicalSexObject];
      *(*(a1 + 32) + 1088) = [v20 biologicalSex];
    }

    else
    {
      *(*(a1 + 32) + 1088) = 0;
    }

    v21 = [v30 bloodTypeObject];
    v22 = *(a1 + 32);
    v23 = *(v22 + 1064);
    *(v22 + 1064) = v21;

    v24 = [v30 bloodTypeObject];
    if (v24)
    {
      v25 = [v30 bloodTypeObject];
      *(*(a1 + 32) + 1072) = [v25 bloodType];
    }

    else
    {
      *(*(a1 + 32) + 1072) = 0;
    }

    v26 = [v30 fitzpatrickSkinTypeObject];
    if (v26)
    {
      v27 = [v30 fitzpatrickSkinTypeObject];
      *(*(a1 + 32) + 1096) = [v27 skinType];
    }

    else
    {
      *(*(a1 + 32) + 1096) = 0;
    }

    v28 = [v30 wheelchairUseObject];
    if (v28)
    {
      v29 = [v30 wheelchairUseObject];
      *(*(a1 + 32) + 1104) = [v29 wheelchairUse];
    }

    else
    {
      *(*(a1 + 32) + 1104) = 0;
    }

    [*(a1 + 32) setCardioFitnessMedicationCheckmarks];
    [*(a1 + 32) _updateFirstAndLastNameCellsWithDisplayValues];
    [*(a1 + 32) _updatePickersWithDisplayValues];
    [*(a1 + 32) _updateCellsWithDisplayValues];
    [*(a1 + 32) _enableEditing];
    [*(a1 + 32) _updateFooters];
    v3 = v30;
  }
}

- (void)_startPregnancyModelQuery
{
  v20 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E696C228]);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __65__ProfileCharacteristicsViewController__startPregnancyModelQuery__block_invoke;
  v13 = &unk_1E7EEB648;
  objc_copyWeak(&v14, &location);
  v4 = [v3 initWithUpdateHandler:&v10];
  pregnancyModelQuery = self->_pregnancyModelQuery;
  self->_pregnancyModelQuery = v4;

  v6 = [(ProfileCharacteristicsViewController *)self description:v10];
  [(HKMCPregnancyStateQuery *)self->_pregnancyModelQuery setDebugIdentifier:v6];

  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B970];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [(HKMCPregnancyStateQuery *)self->_pregnancyModelQuery debugDescription];
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1B9F07000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting pregnancy model query %{public}@", buf, 0x16u);
  }

  [(HKHealthStore *)self->_healthStore executeQuery:self->_pregnancyModelQuery];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__ProfileCharacteristicsViewController__startPregnancyModelQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePregnancyModelQueryResult:v7 error:v6];
}

- (void)_handlePregnancyModelQueryResult:(id)result error:(id)error
{
  errorCopy = error;
  if (result)
  {
    state = [result state];
    if (state <= 2)
    {
      self->_isPregnant = 0x100u >> (8 * state);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ProfileCharacteristicsViewController__handlePregnancyModelQueryResult_error___block_invoke;
    block[3] = &unk_1E7EEB0F0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B970];
    if (os_log_type_enabled(*MEMORY[0x1E696B970], OS_LOG_TYPE_ERROR))
    {
      [(ProfileCharacteristicsViewController *)v8 _handlePregnancyModelQueryResult:errorCopy error:?];
    }
  }
}

- (void)_updateFooters
{
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3)
  {
    tableView = [(ProfileCharacteristicsViewController *)self tableView];
    v15 = [tableView footerViewForSection:0];

    v6 = WDBundle();
    v7 = [v6 localizedStringForKey:@"EDIT_HEALTH_DETAILS_FOOTER_TEXT_%@" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable-Tinker"];

    v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, self->_firstName];
    [v15 updateWithMarkdown:v8];
    _wheelchairFooterTitle = [(ProfileCharacteristicsViewController *)self _wheelchairFooterTitle];
    tableView2 = [(ProfileCharacteristicsViewController *)self tableView];
    v11 = [tableView2 footerViewForSection:1];
    textLabel = [v11 textLabel];
    [textLabel setText:_wheelchairFooterTitle];

    dataSource = [(ProfileCharacteristicsViewController *)self dataSource];
    currentSnapshot = [(ProfileCharacteristicsViewController *)self currentSnapshot];
    [dataSource applySnapshot:currentSnapshot animatingDifferences:0];
  }
}

- (void)_updateFirstAndLastNameCellsWithDisplayValues
{
  [(WDProfileEditableTableViewCell *)self->_firstNameCell setDisplayValue:self->_firstName];
  [(WDProfileEditableTableViewCell *)self->_lastNameCell setDisplayValue:self->_lastName];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__ProfileCharacteristicsViewController__updateFirstAndLastNameCellsWithDisplayValues__block_invoke;
  v3[3] = &unk_1E7EEB0F0;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

void __85__ProfileCharacteristicsViewController__updateFirstAndLastNameCellsWithDisplayValues__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1208) setFirstName:*(*(a1 + 32) + 1120) lastName:*(*(a1 + 32) + 1128)];
  [*(a1 + 32) _adjustHeaderFrame];
  v3 = [*(a1 + 32) dataSource];
  v2 = [*(a1 + 32) currentSnapshot];
  [v3 applySnapshot:v2 animatingDifferences:0];
}

- (void)_enableEditing
{
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  if ([profileIdentifier type] != 3)
  {

    goto LABEL_5;
  }

  isEditing = [(ProfileCharacteristicsViewController *)self isEditing];

  if (isEditing)
  {
LABEL_5:
    editButtonItem = [(ProfileCharacteristicsViewController *)self editButtonItem];
    navigationItem = [(ProfileCharacteristicsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  isRunningStoreDemoMode = [MEMORY[0x1E696C608] isRunningStoreDemoMode];
  navigationItem2 = [(ProfileCharacteristicsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:isRunningStoreDemoMode ^ 1u];
}

- (void)_createHeader
{
  v3 = objc_alloc(MEMORY[0x1E69A4030]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  headerView = self->_headerView;
  self->_headerView = v4;

  [(WDProfileHeaderView *)self->_headerView setNameHidden:1];
  [(ProfileCharacteristicsViewController *)self setAvatarImage:self->_avatarImage];
  [(ProfileCharacteristicsViewController *)self _adjustHeaderFrame];
  v6 = self->_headerView;
  tableView = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView setTableHeaderView:v6];
}

- (void)_adjustHeaderFrame
{
  headerView = self->_headerView;
  tableView = [(ProfileCharacteristicsViewController *)self tableView];
  [tableView frame];
  [(WDProfileHeaderView *)headerView sizeThatFits:CGRectGetWidth(v11), 1.79769313e308];
  v6 = v5;
  v8 = v7;

  v9 = self->_headerView;

  [(WDProfileHeaderView *)v9 setFrame:0.0, 0.0, v6, v8];
}

- (void)_createBarButtonItems
{
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  cancelButtonItem = self->_cancelButtonItem;
  self->_cancelButtonItem = v3;
}

- (void)_createPickers
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCD78]);
  bloodTypePicker = self->_bloodTypePicker;
  self->_bloodTypePicker = v3;

  [(UIPickerView *)self->_bloodTypePicker setDataSource:self];
  [(UIPickerView *)self->_bloodTypePicker setDelegate:self];
  v5 = objc_alloc_init(MEMORY[0x1E69DCD78]);
  biologicalSexPicker = self->_biologicalSexPicker;
  self->_biologicalSexPicker = v5;

  [(UIPickerView *)self->_biologicalSexPicker setDataSource:self];
  [(UIPickerView *)self->_biologicalSexPicker setDelegate:self];
  v7 = objc_alloc_init(MEMORY[0x1E69DC920]);
  birthdatePicker = self->_birthdatePicker;
  self->_birthdatePicker = v7;

  [(UIDatePicker *)self->_birthdatePicker setPreferredDatePickerStyle:1];
  [(UIDatePicker *)self->_birthdatePicker setDatePickerMode:1];
  date = [MEMORY[0x1E695DF00] date];
  [(UIDatePicker *)self->_birthdatePicker setMaximumDate:date];

  v10 = MEMORY[0x1E695DF00];
  _birthdayCalendar = [(ProfileCharacteristicsViewController *)self _birthdayCalendar];
  v12 = [v10 hk_minimumDateForBirthDateWithCalendar:_birthdayCalendar];
  [(UIDatePicker *)self->_birthdatePicker setMinimumDate:v12];

  [(UIDatePicker *)self->_birthdatePicker addTarget:self action:sel_birthdateChanged_ forControlEvents:4096];
  v13 = objc_alloc_init(MEMORY[0x1E69DCD78]);
  fitzpatrickSkinTypePicker = self->_fitzpatrickSkinTypePicker;
  self->_fitzpatrickSkinTypePicker = v13;

  [(UIPickerView *)self->_fitzpatrickSkinTypePicker setDataSource:self];
  [(UIPickerView *)self->_fitzpatrickSkinTypePicker setDelegate:self];
  v15 = objc_alloc_init(MEMORY[0x1E69DCD78]);
  wheelchairUsePicker = self->_wheelchairUsePicker;
  self->_wheelchairUsePicker = v15;

  [(UIPickerView *)self->_wheelchairUsePicker setDataSource:self];
  v17 = self->_wheelchairUsePicker;

  [(UIPickerView *)v17 setDelegate:self];
}

- (void)_createCells
{
  v96[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69A4028]) initWithStyle:0 reuseIdentifier:@"WDProfileEditableTableViewCell"];
  firstNameCell = self->_firstNameCell;
  self->_firstNameCell = v3;

  [(WDProfileEditableTableViewCell *)self->_firstNameCell setAccessoryType:0];
  [(WDProfileEditableTableViewCell *)self->_firstNameCell setEditingAccessoryType:0];
  [(WDProfileEditableTableViewCell *)self->_firstNameCell setSelectionStyle:0];
  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"FIRST_NAME_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileEditableTableViewCell *)self->_firstNameCell setPlaceholderValue:v6];

  v7 = self->_firstNameCell;
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"FIRST_NAME" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileEditableTableViewCell *)v7 setDisplayName:v9];

  [(WDProfileEditableTableViewCell *)self->_firstNameCell updateAutomationIdentifiersForProfileDetail:@"FirstName"];
  v10 = [objc_alloc(MEMORY[0x1E69A4028]) initWithStyle:0 reuseIdentifier:@"WDProfileEditableTableViewCell"];
  lastNameCell = self->_lastNameCell;
  self->_lastNameCell = v10;

  [(WDProfileEditableTableViewCell *)self->_lastNameCell setAccessoryType:0];
  [(WDProfileEditableTableViewCell *)self->_lastNameCell setEditingAccessoryType:0];
  [(WDProfileEditableTableViewCell *)self->_lastNameCell setSelectionStyle:0];
  v12 = WDBundle();
  v13 = [v12 localizedStringForKey:@"LAST_NAME_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileEditableTableViewCell *)self->_lastNameCell setPlaceholderValue:v13];

  v14 = self->_lastNameCell;
  v15 = WDBundle();
  v16 = [v15 localizedStringForKey:@"LAST_NAME" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileEditableTableViewCell *)v14 setDisplayName:v16];

  [(WDProfileEditableTableViewCell *)self->_lastNameCell updateAutomationIdentifiersForProfileDetail:@"LastName"];
  v17 = [objc_alloc(MEMORY[0x1E69A4038]) initWithStyle:0 reuseIdentifier:?];
  birthdateCell = self->_birthdateCell;
  self->_birthdateCell = v17;

  [(WDProfileTableViewCell *)self->_birthdateCell setEditingAccessoryType:0];
  [(WDProfileTableViewCell *)self->_birthdateCell setSelectionStyle:0];
  [(WDProfileTableViewCell *)self->_birthdateCell setAccessoryType:1];
  v19 = [MEMORY[0x1E69A43D8] viewHostingView:self->_birthdatePicker];
  [(WDProfileTableViewCell *)self->_birthdateCell setInputView:v19];

  v20 = WDBundle();
  v21 = [v20 localizedStringForKey:@"BIRTHDATE_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileTableViewCell *)self->_birthdateCell setPlaceholderValue:v21];

  [(WDProfileTableViewCell *)self->_birthdateCell addClearButtonTarget:self action:sel_didClearBirthdate];
  v22 = self->_birthdateCell;
  v23 = WDBundle();
  v24 = [v23 localizedStringForKey:@"BIRTHDATE" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileTableViewCell *)v22 setDisplayName:v24];

  [(WDProfileTableViewCell *)self->_birthdateCell updateAutomationIdentifiersForProfileDetail:@"Birthdate"];
  v25 = [objc_alloc(MEMORY[0x1E69A4038]) initWithStyle:0 reuseIdentifier:@"WDProfileTableViewCell"];
  biologicalSexCell = self->_biologicalSexCell;
  self->_biologicalSexCell = v25;

  [(WDProfileTableViewCell *)self->_biologicalSexCell setAccessoryType:1];
  [(WDProfileTableViewCell *)self->_biologicalSexCell setEditingAccessoryType:0];
  [(WDProfileTableViewCell *)self->_biologicalSexCell setSelectionStyle:0];
  v27 = [MEMORY[0x1E69A43D8] viewHostingView:self->_biologicalSexPicker];
  [(WDProfileTableViewCell *)self->_biologicalSexCell setInputView:v27];

  v28 = WDBundle();
  v29 = [v28 localizedStringForKey:@"BIOLOGICAL_SEX_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileTableViewCell *)self->_biologicalSexCell setPlaceholderValue:v29];

  v30 = self->_biologicalSexCell;
  v31 = HKHealthKitFrameworkBundle();
  v32 = *MEMORY[0x1E696B910];
  v33 = [v31 localizedStringForKey:@"BIOLOGICAL_SEX" value:&stru_1F3823B88 table:*MEMORY[0x1E696B910]];
  [(WDProfileTableViewCell *)v30 setDisplayName:v33];

  [(WDProfileTableViewCell *)self->_biologicalSexCell updateAutomationIdentifiersForProfileDetail:@"BiologicalSex"];
  v34 = [objc_alloc(MEMORY[0x1E69A4038]) initWithStyle:0 reuseIdentifier:@"WDProfileTableViewCell"];
  bloodTypeCell = self->_bloodTypeCell;
  self->_bloodTypeCell = v34;

  [(WDProfileTableViewCell *)self->_bloodTypeCell setAccessoryType:1];
  [(WDProfileTableViewCell *)self->_bloodTypeCell setEditingAccessoryType:0];
  [(WDProfileTableViewCell *)self->_bloodTypeCell setSelectionStyle:0];
  v36 = [MEMORY[0x1E69A43D8] viewHostingView:self->_bloodTypePicker];
  [(WDProfileTableViewCell *)self->_bloodTypeCell setInputView:v36];

  v37 = WDBundle();
  v38 = [v37 localizedStringForKey:@"BLOOD_TYPE_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileTableViewCell *)self->_bloodTypeCell setPlaceholderValue:v38];

  v39 = self->_bloodTypeCell;
  v40 = HKHealthKitFrameworkBundle();
  v41 = [v40 localizedStringForKey:@"BLOOD_TYPE" value:&stru_1F3823B88 table:v32];
  [(WDProfileTableViewCell *)v39 setDisplayName:v41];

  [(WDProfileTableViewCell *)self->_bloodTypeCell updateAutomationIdentifiersForProfileDetail:@"BloodType"];
  v42 = [objc_alloc(MEMORY[0x1E69A4038]) initWithStyle:0 reuseIdentifier:@"WDProfileTableViewCell"];
  fitzpatrickSkinTypeCell = self->_fitzpatrickSkinTypeCell;
  self->_fitzpatrickSkinTypeCell = v42;

  [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell setAccessoryType:1];
  [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell setEditingAccessoryType:0];
  [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell setSelectionStyle:0];
  v44 = [MEMORY[0x1E69A43D8] viewHostingView:self->_fitzpatrickSkinTypePicker];
  [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell setInputView:v44];

  v45 = WDBundle();
  v46 = [v45 localizedStringForKey:@"FITZPATRICK_SKIN_TYPE_NOT_SET" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell setPlaceholderValue:v46];

  v47 = self->_fitzpatrickSkinTypeCell;
  v48 = HKHealthKitFrameworkBundle();
  v49 = [v48 localizedStringForKey:@"FITZPATRICK_SKIN_TYPE" value:&stru_1F3823B88 table:v32];
  [(WDProfileTableViewCell *)v47 setDisplayName:v49];

  [(WDProfileTableViewCell *)self->_fitzpatrickSkinTypeCell updateAutomationIdentifiersForProfileDetail:@"FitzpatrickSkinType"];
  v90 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeWithIdentifier:&unk_1F38466A8];
  v50 = [objc_alloc(MEMORY[0x1E69A4038]) initWithStyle:0 reuseIdentifier:@"WDProfileTableViewCell"];
  wheelchairUseCell = self->_wheelchairUseCell;
  self->_wheelchairUseCell = v50;

  [(WDProfileTableViewCell *)self->_wheelchairUseCell setAccessoryType:1];
  [(WDProfileTableViewCell *)self->_wheelchairUseCell setEditingAccessoryType:0];
  [(WDProfileTableViewCell *)self->_wheelchairUseCell setSelectionStyle:0];
  v52 = [MEMORY[0x1E69A43D8] viewHostingView:self->_wheelchairUsePicker];
  [(WDProfileTableViewCell *)self->_wheelchairUseCell setInputView:v52];

  v53 = HKWheelchairUseDisplayName();
  [(WDProfileTableViewCell *)self->_wheelchairUseCell setPlaceholderValue:v53];

  v54 = self->_wheelchairUseCell;
  localization = [v90 localization];
  displayName = [localization displayName];
  [(WDProfileTableViewCell *)v54 setDisplayName:displayName];

  [(WDProfileTableViewCell *)self->_wheelchairUseCell updateAutomationIdentifiersForProfileDetail:@"WheelchairUse"];
  v57 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"WDProfileTableViewCell"];
  pregnancyCell = self->_pregnancyCell;
  self->_pregnancyCell = v57;

  [(UITableViewCell *)self->_pregnancyCell setAccessoryType:0];
  [(UITableViewCell *)self->_pregnancyCell setEditingAccessoryType:0];
  v59 = HKHealthKeyColor();
  textLabel = [(UITableViewCell *)self->_pregnancyCell textLabel];
  [textLabel setTextColor:v59];

  textLabel2 = [(UITableViewCell *)self->_pregnancyCell textLabel];
  [textLabel2 setNumberOfLines:0];

  v96[0] = *MEMORY[0x1E69A40D8];
  v62 = v96[0];
  v96[1] = @"HealthDetail";
  v96[2] = @"Pregnancy";
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
  v64 = HKUIJoinStringsForAutomationIdentifier();

  [(UITableViewCell *)self->_pregnancyCell setAccessibilityIdentifier:v64];
  v95[0] = v64;
  v95[1] = @"Title";
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
  v66 = HKUIJoinStringsForAutomationIdentifier();
  textLabel3 = [(UITableViewCell *)self->_pregnancyCell textLabel];
  [textLabel3 setAccessibilityIdentifier:v66];

  v94[0] = v64;
  v94[1] = @"Value";
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
  v69 = HKUIJoinStringsForAutomationIdentifier();
  detailTextLabel = [(UITableViewCell *)self->_pregnancyCell detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:v69];

  [(ProfileCharacteristicsViewController *)self _setPregnancyCellDisplayValueForState:self->_isPregnant];
  v71 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"WDProfileTableViewCell"];
  cardioFitnessMedicationsCell = self->_cardioFitnessMedicationsCell;
  self->_cardioFitnessMedicationsCell = v71;

  [(UITableViewCell *)self->_cardioFitnessMedicationsCell setAccessoryType:1];
  [(UITableViewCell *)self->_cardioFitnessMedicationsCell setEditingAccessoryType:0];
  [(UITableViewCell *)self->_cardioFitnessMedicationsCell setSelectionStyle:0];
  v73 = WDBundle();
  v74 = [v73 localizedStringForKey:@"CARDIO_FITNESS_RELATED_MEDICATIONS" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  textLabel4 = [(UITableViewCell *)self->_cardioFitnessMedicationsCell textLabel];
  [textLabel4 setText:v74];

  textLabel5 = [(UITableViewCell *)self->_cardioFitnessMedicationsCell textLabel];
  [textLabel5 setNumberOfLines:0];

  v77 = [(ProfileCharacteristicsViewController *)self displayNumberOfActiveCardioFitnessMedications:self->_activeCardioFitnessMedications];
  [(UITableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v77];

  v93[0] = v62;
  v93[1] = @"HealthDetail";
  v93[2] = @"CardioFitnessMedications";
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
  v79 = HKUIJoinStringsForAutomationIdentifier();

  [(UITableViewCell *)self->_cardioFitnessMedicationsCell setAccessibilityIdentifier:v79];
  v92[0] = v79;
  v92[1] = @"Title";
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v81 = HKUIJoinStringsForAutomationIdentifier();
  textLabel6 = [(UITableViewCell *)self->_cardioFitnessMedicationsCell textLabel];
  [textLabel6 setAccessibilityIdentifier:v81];

  v91[0] = v79;
  v91[1] = @"Value";
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  v84 = HKUIJoinStringsForAutomationIdentifier();
  detailTextLabel2 = [(UITableViewCell *)self->_cardioFitnessMedicationsCell detailTextLabel];
  [detailTextLabel2 setAccessibilityIdentifier:v84];

  _createCalciumChannelBlockerCheckMarkCell = [(ProfileCharacteristicsViewController *)self _createCalciumChannelBlockerCheckMarkCell];
  calciumChannelBlockerUseCell = self->_calciumChannelBlockerUseCell;
  self->_calciumChannelBlockerUseCell = _createCalciumChannelBlockerCheckMarkCell;

  _createBetaBlockerCheckMarkCell = [(ProfileCharacteristicsViewController *)self _createBetaBlockerCheckMarkCell];
  betaBlockerUseCell = self->_betaBlockerUseCell;
  self->_betaBlockerUseCell = _createBetaBlockerCheckMarkCell;
}

- (id)_createCalciumChannelBlockerCheckMarkCell
{
  v26[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:0];
  [v3 setSelectionStyle:0];
  _circleImageView = [(ProfileCharacteristicsViewController *)self _circleImageView];
  [(UITableViewCell *)self->_calciumChannelBlockerUseCell setEditingAccessoryView:_circleImageView];

  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"CALCIUM_CHANNEL_BLOCKER_USE" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  textLabel = [v3 textLabel];
  [textLabel setText:v6];

  textLabel2 = [v3 textLabel];
  [textLabel2 setNumberOfLines:0];

  v9 = WDBundle();
  v10 = [v9 localizedStringForKey:@"CALCIUM_CHANNEL_BLOCKER_EXAMPLES" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setText:v10];

  detailTextLabel2 = [v3 detailTextLabel];
  [detailTextLabel2 setNumberOfLines:0];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  detailTextLabel3 = [v3 detailTextLabel];
  [detailTextLabel3 setTextColor:systemGrayColor];

  v26[0] = *MEMORY[0x1E69A40D8];
  v26[1] = @"HealthDetail";
  v26[2] = @"CalciumChannelBlocker";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v16 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier:v16];
  v25[0] = v16;
  v25[1] = @"Title";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v18 = HKUIJoinStringsForAutomationIdentifier();
  textLabel3 = [v3 textLabel];
  [textLabel3 setAccessibilityIdentifier:v18];

  v24[0] = v16;
  v24[1] = @"Value";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v21 = HKUIJoinStringsForAutomationIdentifier();
  detailTextLabel4 = [v3 detailTextLabel];
  [detailTextLabel4 setAccessibilityIdentifier:v21];

  return v3;
}

- (id)_createBetaBlockerCheckMarkCell
{
  v26[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:0];
  [v3 setSelectionStyle:0];
  _circleImageView = [(ProfileCharacteristicsViewController *)self _circleImageView];
  [v3 setEditingAccessoryView:_circleImageView];

  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"BETA_BLOCKER_USE" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  textLabel = [v3 textLabel];
  [textLabel setText:v6];

  textLabel2 = [v3 textLabel];
  [textLabel2 setNumberOfLines:0];

  v9 = WDBundle();
  v10 = [v9 localizedStringForKey:@"BETA_BLOCKER_EXAMPLES" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  detailTextLabel = [v3 detailTextLabel];
  [detailTextLabel setText:v10];

  detailTextLabel2 = [v3 detailTextLabel];
  [detailTextLabel2 setNumberOfLines:0];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  detailTextLabel3 = [v3 detailTextLabel];
  [detailTextLabel3 setTextColor:systemGrayColor];

  v26[0] = *MEMORY[0x1E69A40D8];
  v26[1] = @"HealthDetail";
  v26[2] = @"BetaBlocker";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v16 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier:v16];
  v25[0] = v16;
  v25[1] = @"Title";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v18 = HKUIJoinStringsForAutomationIdentifier();
  textLabel3 = [v3 textLabel];
  [textLabel3 setAccessibilityIdentifier:v18];

  v24[0] = v16;
  v24[1] = @"Value";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v21 = HKUIJoinStringsForAutomationIdentifier();
  detailTextLabel4 = [v3 detailTextLabel];
  [detailTextLabel4 setAccessibilityIdentifier:v21];

  return v3;
}

- (void)setCardioFitnessMedicationCheckmarks
{
  healthStore = self->_healthStore;
  v14 = 0;
  v4 = [(HKHealthStore *)healthStore _cardioFitnessMedicationsUseWithError:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B930], OS_LOG_TYPE_ERROR))
    {
      [ProfileCharacteristicsViewController setCardioFitnessMedicationCheckmarks];
    }
  }

  self->_currentCardioFitnessMedicationsUse = 0;
  self->_activeCardioFitnessMedications = 0;
  if ([v4 takingCalciumChannelBlockers])
  {
    self->_currentCardioFitnessMedicationsUse |= 1uLL;
    _checkmarkedCircleImageView = [(ProfileCharacteristicsViewController *)self _checkmarkedCircleImageView];
    [(UITableViewCell *)self->_calciumChannelBlockerUseCell setEditingAccessoryView:_checkmarkedCircleImageView];

    ++self->_activeCardioFitnessMedications;
  }

  else
  {
    _circleImageView = [(ProfileCharacteristicsViewController *)self _circleImageView];
    [(UITableViewCell *)self->_calciumChannelBlockerUseCell setEditingAccessoryView:_circleImageView];
  }

  if ([v4 takingBetaBlockers])
  {
    self->_currentCardioFitnessMedicationsUse |= 2uLL;
    _checkmarkedCircleImageView2 = [(ProfileCharacteristicsViewController *)self _checkmarkedCircleImageView];
    [(UITableViewCell *)self->_betaBlockerUseCell setEditingAccessoryView:_checkmarkedCircleImageView2];

    activeCardioFitnessMedications = (self->_activeCardioFitnessMedications + 1);
    self->_activeCardioFitnessMedications = activeCardioFitnessMedications;
  }

  else
  {
    _circleImageView2 = [(ProfileCharacteristicsViewController *)self _circleImageView];
    [(UITableViewCell *)self->_betaBlockerUseCell setEditingAccessoryView:_circleImageView2];

    activeCardioFitnessMedications = self->_activeCardioFitnessMedications;
  }

  v13 = [(ProfileCharacteristicsViewController *)self displayNumberOfActiveCardioFitnessMedications:activeCardioFitnessMedications];
  [(UITableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v13];
}

- (id)_circleImageView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
  [v2 setImage:v3];

  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = [v4 configurationWithFont:v5];
  [v2 setPreferredSymbolConfiguration:v6];

  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  return v2;
}

- (id)_checkmarkedCircleImageView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
  [v2 setImage:v3];

  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = [v4 configurationWithFont:v5];
  [v2 setPreferredSymbolConfiguration:v6];

  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  return v2;
}

- (int64_t)_profileRowIdentifierForSection:(id)section
{
  orderedSectionIdentifiers = self->_orderedSectionIdentifiers;
  sectionCopy = section;
  v6 = -[NSArray objectAtIndex:](orderedSectionIdentifiers, "objectAtIndex:", [sectionCopy section]);
  v7 = [(NSDictionary *)self->_orderedRowIdentifiersBySectionIdentifier objectForKey:v6];
  v8 = [sectionCopy row];

  v9 = [v7 objectAtIndex:v8];

  integerValue = [v9 integerValue];
  return integerValue;
}

- (void)_updatePickersWithDisplayValues
{
  birthdateDisplayValue = self->_birthdateDisplayValue;
  _birthdayCalendar = [(ProfileCharacteristicsViewController *)self _birthdayCalendar];
  v5 = _birthdayCalendar;
  if (birthdateDisplayValue)
  {
    v6 = [_birthdayCalendar dateFromComponents:self->_birthdateDisplayValue];
  }

  else
  {
    _initialBirthdayValue = [(ProfileCharacteristicsViewController *)self _initialBirthdayValue];
    v6 = [v5 dateFromComponents:_initialBirthdayValue];
  }

  [(UIDatePicker *)self->_birthdatePicker setDate:v6];
  [(UIPickerView *)self->_biologicalSexPicker selectRow:self->_biologicalSexDisplayValue inComponent:0 animated:0];
  [(UIPickerView *)self->_bloodTypePicker selectRow:self->_bloodTypeDisplayValue inComponent:0 animated:0];
  [(UIPickerView *)self->_fitzpatrickSkinTypePicker selectRow:self->_fitzpatrickSkinTypeDisplayValue inComponent:0 animated:0];
  wheelchairUsePicker = self->_wheelchairUsePicker;
  wheelchairUseDisplayValue = self->_wheelchairUseDisplayValue;

  [(UIPickerView *)wheelchairUsePicker selectRow:wheelchairUseDisplayValue inComponent:0 animated:0];
}

- (void)_updateCellsWithDisplayValues
{
  birthdateCell = self->_birthdateCell;
  v4 = [(ProfileCharacteristicsViewController *)self _displayStringForBirthDate:self->_birthdateDisplayValue];
  [(WDProfileTableViewCell *)birthdateCell setDisplayValue:v4];

  biologicalSexCell = self->_biologicalSexCell;
  v6 = [(ProfileCharacteristicsViewController *)self _displayStringForBiologicalSex:self->_biologicalSexDisplayValue];
  [(WDProfileTableViewCell *)biologicalSexCell setDisplayValue:v6];

  bloodTypeCell = self->_bloodTypeCell;
  v8 = [(ProfileCharacteristicsViewController *)self _displayStringForBloodType:self->_bloodTypeDisplayValue];
  [(WDProfileTableViewCell *)bloodTypeCell setDisplayValue:v8];

  fitzpatrickSkinTypeCell = self->_fitzpatrickSkinTypeCell;
  v10 = [(ProfileCharacteristicsViewController *)self _displayStringForFitzpatrickSkinType:self->_fitzpatrickSkinTypeDisplayValue];
  [(WDProfileTableViewCell *)fitzpatrickSkinTypeCell setDisplayValue:v10];

  wheelchairUseCell = self->_wheelchairUseCell;
  v12 = [(ProfileCharacteristicsViewController *)self _displayStringForWheelchairUse:self->_wheelchairUseDisplayValue];
  [(WDProfileTableViewCell *)wheelchairUseCell setDisplayValue:v12];

  isPregnant = self->_isPregnant;

  [(ProfileCharacteristicsViewController *)self _setPregnancyCellDisplayValueForState:isPregnant];
}

- (void)_resetSelectedCell
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WDProfileTableViewCell *)self->_selectedCell setShouldDisplayClearButtonDuringEditing:0];
  }

  [(WDProfileTableViewCell *)self->_selectedCell resignFirstResponder];
  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;
}

- (id)_displayStringForBirthDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    if (_displayStringForBirthDate__onceToken != -1)
    {
      [ProfileCharacteristicsViewController _displayStringForBirthDate:];
    }

    _birthdayCalendar = [(ProfileCharacteristicsViewController *)self _birthdayCalendar];
    v6 = [_birthdayCalendar dateFromComponents:dateCopy];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [_displayStringForBirthDate__birthdateFormatter stringFromDate:v6];
    v9 = [(ProfileCharacteristicsViewController *)self _dateAsAge:v6];
    v10 = [v7 stringWithFormat:@"%@ (%@)", v8, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __67__ProfileCharacteristicsViewController__displayStringForBirthDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _displayStringForBirthDate__birthdateFormatter;
  _displayStringForBirthDate__birthdateFormatter = v0;

  v2 = _displayStringForBirthDate__birthdateFormatter;

  return [v2 setDateStyle:2];
}

- (id)_dateAsAge:(id)age
{
  v3 = _dateAsAge__onceToken[0];
  ageCopy = age;
  if (v3 != -1)
  {
    [ProfileCharacteristicsViewController _dateAsAge:];
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar components:4 fromDate:ageCopy toDate:date options:0];

  v8 = _dateAsAge__ageFormatter;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "year")}];
  v10 = [v8 stringFromNumber:v9];

  return v10;
}

void __51__ProfileCharacteristicsViewController__dateAsAge___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _dateAsAge__ageFormatter;
  _dateAsAge__ageFormatter = v0;
}

- (id)_initialBirthdayValue
{
  _meContact = [(ProfileCharacteristicsViewController *)self _meContact];
  birthday = [_meContact birthday];
  if (!birthday)
  {
    goto LABEL_6;
  }

  v5 = birthday;
  birthday2 = [_meContact birthday];
  if ([birthday2 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  birthday3 = [_meContact birthday];
  if ([birthday3 month] == 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_5:
LABEL_6:
    v8 = HKUIDefaultGregorianBirthday();
    goto LABEL_7;
  }

  birthday4 = [_meContact birthday];
  v11 = [birthday4 day];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
  birthday5 = [_meContact birthday];
  [v12 setYear:{objc_msgSend(birthday5, "year")}];

  birthday6 = [_meContact birthday];
  [v12 setMonth:{objc_msgSend(birthday6, "month")}];

  birthday7 = [_meContact birthday];
  [v12 setDay:{objc_msgSend(birthday7, "day")}];

  birthday8 = [_meContact birthday];
  calendar = [birthday8 calendar];
  [v12 setCalendar:calendar];

  v18 = MEMORY[0x1E695DF00];
  _birthdayCalendar = [(ProfileCharacteristicsViewController *)self _birthdayCalendar];
  v20 = [v18 hk_minimumDateForBirthDateWithCalendar:_birthdayCalendar];

  date = [MEMORY[0x1E695DF00] date];
  _birthdayCalendar2 = [(ProfileCharacteristicsViewController *)self _birthdayCalendar];
  v23 = [_birthdayCalendar2 dateFromComponents:v12];

  if ([v23 compare:date] == 1 || objc_msgSend(v23, "compare:", v20) == -1)
  {
    v24 = HKUIDefaultGregorianBirthday();
  }

  else
  {
    v24 = v12;
  }

  v8 = v24;

LABEL_7:

  return v8;
}

- (id)_meContact
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = 0;
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v10[0] = *MEMORY[0x1E695C1D0];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v4 = objc_opt_new();
    v9 = 0;
    v2 = [v4 _ios_meContactWithKeysToFetch:v3 error:&v9];
    v5 = v9;

    if (v2)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      _HKInitializeLogging();
      v7 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ProfileCharacteristicsViewController _meContact];
      }
    }
  }

  return v2;
}

- (id)_displayStringForBiologicalSex:(int64_t)sex
{
  if ((sex - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7EEB668[sex - 1];
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

- (id)_displayStringForBloodType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7EEB680[type - 1];
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

- (id)_displayStringForFitzpatrickSkinType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E7EEB6C0[type - 1];
    v4 = WDBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
  }

  return v5;
}

- (id)_displayStringForWheelchairUse:(int64_t)use
{
  if (use)
  {
    v4 = HKWheelchairUseDisplayName();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setPregnancyCellDisplayValueForState:(BOOL)state
{
  stateCopy = state;
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = v5;
  if (stateCopy)
  {
    v7 = @"HEALTH_DETAILS_EDIT_PREGNANCY";
  }

  else
  {
    v7 = @"HEALTH_DETAILS_ADD_PREGNANCY";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F3823B88 table:@"HealthUI-Localizable-Pregnancy"];
  [(UITableViewCell *)self->_pregnancyCell setText:v8];

  pregnancyCell = self->_pregnancyCell;

  [(UITableViewCell *)pregnancyCell setNeedsUpdateConstraints];
}

- (void)_timeZoneDidChange:(id)change
{
  gregorianCalendar = self->_gregorianCalendar;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [(NSCalendar *)gregorianCalendar setTimeZone:systemTimeZone];

  birthdatePicker = self->_birthdatePicker;
  systemTimeZone2 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [(UIDatePicker *)birthdatePicker setTimeZone:systemTimeZone2];

  [(ProfileCharacteristicsViewController *)self _updatePickersWithDisplayValues];
}

- (id)_birthdayCalendar
{
  gregorianCalendar = self->_gregorianCalendar;
  if (!gregorianCalendar)
  {
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v5 = self->_gregorianCalendar;
    self->_gregorianCalendar = v4;

    gregorianCalendar = self->_gregorianCalendar;
  }

  return gregorianCalendar;
}

- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsNavigationDonatingDelegate);

  return WeakRetained;
}

void __60__ProfileCharacteristicsViewController_setEditing_animated___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2114;
  v10 = v4;
  _os_log_error_impl(&dword_1B9F07000, a2, OS_LOG_TYPE_ERROR, "Error setting name to %@ %@: %{public}@", &v5, 0x20u);
}

- (void)_handlePregnancyModelQueryResult:(uint64_t)a3 error:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 description];
  OUTLINED_FUNCTION_1_0();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_1B9F07000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Error in pregnancy state query: %{public}@", v7, 0x16u);
}

@end