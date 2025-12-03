@interface ProfileCharacteristicTypePermissionsViewController
+ (id)orderedSectionIdentifiersForProfile:(int64_t)profile;
- (BOOL)_shouldDisplayNameInFooters;
- (ProfileCharacteristicTypePermissionsViewController)initWithCoder:(id)coder;
- (ProfileCharacteristicTypePermissionsViewController)initWithHealthStore:(id)store characteristicType:(id)type firstName:(id)name;
- (ProfileCharacteristicTypePermissionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ProfileCharacteristicTypePermissionsViewController)initWithStyle:(int64_t)style;
- (id)_sourceForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_profileSectionIdentifierForIndex:(int64_t)index;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fetchAuthorizationRecordsBySourceForCharacteristic:(id)characteristic;
- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error;
- (void)_setupFooterView;
- (void)setSourceListDataSource:(id)source;
- (void)sourceListDataSourceDidUpdate:(id)update;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProfileCharacteristicTypePermissionsViewController

- (ProfileCharacteristicTypePermissionsViewController)initWithHealthStore:(id)store characteristicType:(id)type firstName:(id)name
{
  storeCopy = store;
  typeCopy = type;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = ProfileCharacteristicTypePermissionsViewController;
  v12 = [(ProfileCharacteristicTypePermissionsViewController *)&v24 initWithStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, store);
    v14 = [MEMORY[0x1E69A4380] sharedInstanceForHealthStore:v13->_healthStore];
    displayTypeController = v13->_displayTypeController;
    v13->_displayTypeController = v14;

    objc_storeStrong(&v13->_firstName, name);
    v16 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v13->_healthStore];
    authorizationStore = v13->_authorizationStore;
    v13->_authorizationStore = v16;

    objc_storeStrong(&v13->_characteristicType, type);
    v13->_isLoaded = 0;
    v18 = [(HKDisplayTypeController *)v13->_displayTypeController displayTypeForObjectType:v13->_characteristicType];
    displayType = v13->_displayType;
    v13->_displayType = v18;

    profileIdentifier = [storeCopy profileIdentifier];
    v21 = +[ProfileCharacteristicTypePermissionsViewController orderedSectionIdentifiersForProfile:](ProfileCharacteristicTypePermissionsViewController, "orderedSectionIdentifiersForProfile:", [profileIdentifier type]);
    orderedSectionIdentifiers = v13->_orderedSectionIdentifiers;
    v13->_orderedSectionIdentifiers = v21;
  }

  return v13;
}

- (ProfileCharacteristicTypePermissionsViewController)initWithStyle:(int64_t)style
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (ProfileCharacteristicTypePermissionsViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ProfileCharacteristicTypePermissionsViewController;
  return [(ProfileCharacteristicTypePermissionsViewController *)&v4 initWithCoder:coder];
}

- (ProfileCharacteristicTypePermissionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)setSourceListDataSource:(id)source
{
  sourceCopy = source;
  sourceListDataSource = self->_sourceListDataSource;
  if (sourceListDataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(HKSourceListDataSource *)sourceListDataSource unregisterObserver:self];
    objc_storeStrong(&self->_sourceListDataSource, source);
    [(HKSourceListDataSource *)self->_sourceListDataSource registerObserver:self];
    sourceCopy = v7;
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = ProfileCharacteristicTypePermissionsViewController;
  [(ProfileCharacteristicTypePermissionsViewController *)&v13 viewDidLoad];
  v3 = [(HKDisplayTypeController *)self->_displayTypeController displayTypeForObjectType:self->_characteristicType];
  displayType = self->_displayType;
  self->_displayType = v3;

  localization = [(HKDisplayType *)self->_displayType localization];
  summary = [localization summary];
  v7 = [summary length];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A4020]) initWithDisplayType:self->_displayType];
    footerView = self->_footerView;
    self->_footerView = v8;
  }

  v10 = *MEMORY[0x1E69A40D0];
  tableView = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
  [tableView setEstimatedRowHeight:v10];

  tableView2 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ProfileCharacteristicTypePermissionsViewController;
  [(ProfileCharacteristicTypePermissionsViewController *)&v4 viewWillAppear:appear];
  [(ProfileCharacteristicTypePermissionsViewController *)self _gatherDataAndRefreshUI];
  if (self->_footerView)
  {
    [(ProfileCharacteristicTypePermissionsViewController *)self _setupFooterView];
  }
}

- (void)_setupFooterView
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (self->_footerView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v3 addSubview:self->_footerView];
    [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView leadingAnchor];
    layoutMarginsGuide = [v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[0] = v22;
    trailingAnchor = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView trailingAnchor];
    layoutMarginsGuide2 = [v3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v4 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[1] = v4;
    topAnchor = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView topAnchor];
    topAnchor2 = [v3 topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[2] = v7;
    bottomAnchor = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView bottomAnchor];
    bottomAnchor2 = [v3 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v11];

    tableView = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
    [tableView bounds];
    Width = CGRectGetWidth(v27);

    LODWORD(v14) = 1148846080;
    LODWORD(v15) = 1112014848;
    [v3 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
    [v3 setFrame:{0.0, 0.0, Width, v16}];
    tableView2 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
    [tableView2 setTableFooterView:v3];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = ProfileCharacteristicTypePermissionsViewController;
  [(ProfileCharacteristicTypePermissionsViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(ProfileCharacteristicTypePermissionsViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__ProfileCharacteristicTypePermissionsViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E7EEB0F0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __79__ProfileCharacteristicTypePermissionsViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  [*(a1 + 32) _setupFooterView];
  v3 = [*(a1 + 32) tableView];
  [v3 endUpdates];
}

- (void)_fetchAuthorizationRecordsBySourceForCharacteristic:(id)characteristic
{
  authorizationStore = self->_authorizationStore;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke;
  v4[3] = &unk_1E7EEB6F8;
  v4[4] = self;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationRecordsForType:characteristic completion:v4];
}

void __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke_cold_1(v6, v7);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke_311;
  v9[3] = &unk_1E7EEB560;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke_311(uint64_t a1)
{
  [*(a1 + 32) setSourceToAuthRecord:*(a1 + 40)];
  v2 = objc_alloc(MEMORY[0x1E69A44D0]);
  v3 = *(a1 + 32);
  v4 = v3[130];
  v5 = [v3 sourceToAuthRecord];
  v6 = [v5 allKeys];
  v8 = [v2 initWithHealthStore:v4 sources:v6 queue:MEMORY[0x1E69E96A0]];

  [v8 setShouldFetchAppIcons:1];
  [*(a1 + 32) setSourceListDataSource:v8];
  v7 = [*(a1 + 32) sourceListDataSource];
  [v7 fetchSources];
}

- (void)_handleReturnedImage:(id)image forSource:(id)source cell:(id)cell tableView:(id)view fetchError:(id)error
{
  imageCopy = image;
  cellCopy = cell;
  if (imageCopy && !error)
  {
    sourceCopy = source;
    v14 = [view indexPathForCell:cellCopy];
    v15 = [(ProfileCharacteristicTypePermissionsViewController *)self _sourceForIndexPath:v14];
    source = [v15 source];

    LODWORD(v15) = [source isEqual:sourceCopy];
    if (v15)
    {
      [cellCopy setIconImage:imageCopy];
    }
  }
}

+ (id)orderedSectionIdentifiersForProfile:(int64_t)profile
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F38466C0, 0}];
  v5 = v4;
  if (profile == 1)
  {
    [v4 addObject:&unk_1F38466D8];
  }

  return v5;
}

- (int64_t)_profileSectionIdentifierForIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_orderedSectionIdentifiers objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)_shouldDisplayNameInFooters
{
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v3 = [profileIdentifier type] == 3;

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(ProfileCharacteristicTypePermissionsViewController *)self _profileSectionIdentifierForIndex:section];
  if (v5 == 1)
  {
    sourceListDataSource = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    sources = [sourceListDataSource sources];
    orderedResearchStudySources = [sources orderedResearchStudySources];
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    sourceListDataSource = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    sources = [sourceListDataSource sources];
    orderedResearchStudySources = [sources orderedAppSources];
  }

  v9 = orderedResearchStudySources;
  v10 = [orderedResearchStudySources count];
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (!self->_isLoaded)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69A4040]);
    goto LABEL_16;
  }

  v9 = -[ProfileCharacteristicTypePermissionsViewController _profileSectionIdentifierForIndex:](self, "_profileSectionIdentifierForIndex:", [pathCopy section]);
  if (v9 == 1)
  {
    sourceListDataSource = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    sources = [sourceListDataSource sources];
    orderedResearchStudySources = [sources orderedResearchStudySources];
    v21 = [orderedResearchStudySources count];

    if (!v21)
    {
      v14 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
      v15 = WDBundle();
      v16 = v15;
      v17 = @"RESEARCH_STUDIES_NONE";
      goto LABEL_15;
    }
  }

  else if (!v9)
  {
    sourceListDataSource2 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    sources2 = [sourceListDataSource2 sources];
    orderedAppSources = [sources2 orderedAppSources];
    v13 = [orderedAppSources count];

    if (!v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
      v15 = WDBundle();
      v16 = v15;
      v17 = @"APPS_NONE";
LABEL_15:
      v32 = [v15 localizedStringForKey:v17 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
      textLabel = [v14 textLabel];
      [textLabel setText:v32];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      textLabel2 = [v14 textLabel];
      [textLabel2 setTextColor:secondaryLabelColor];

      [v14 setSelectionStyle:0];
      goto LABEL_16;
    }
  }

  v22 = [viewCopy dequeueReusableCellWithIdentifier:@"source"];
  if (!v22)
  {
    v22 = [objc_alloc(MEMORY[0x1E69A44E8]) initWithStyle:0 reuseIdentifier:@"source"];
    [v22 setSelectionStyle:0];
    [v22 setDelegate:self];
  }

  v23 = [(ProfileCharacteristicTypePermissionsViewController *)self _sourceForIndexPath:v8];
  if (v23)
  {
    v24 = [(NSDictionary *)self->_characteristicAuthorizationRecordsBySource objectForKeyedSubscript:v23];
    source = [v23 source];
    name = [source name];

    [v22 setDisplayText:name];
    [v24 status];
    [v22 setOn:HKAuthorizationStatusAllowsReading()];
    objc_initWeak(&location, self);
    mEMORY[0x1E69A40F0] = [MEMORY[0x1E69A40F0] sharedImageManager];
    source2 = [v23 source];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __86__ProfileCharacteristicTypePermissionsViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v42[3] = &unk_1E7EEB720;
    v29 = v22;
    v43 = v29;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__ProfileCharacteristicTypePermissionsViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v37[3] = &unk_1E7EEB770;
    objc_copyWeak(&v41, &location);
    v38 = v23;
    v30 = v29;
    v39 = v30;
    v40 = viewCopy;
    [mEMORY[0x1E69A40F0] loadIconForSource:source2 syncHandler:v42 asyncHandler:v37];

    v14 = v30;
    objc_destroyWeak(&v41);

    objc_destroyWeak(&location);
  }

  else
  {
    v31 = objc_opt_class();
    v24 = NSStringFromClass(v31);
    v14 = HKErrorTableViewCell();
  }

LABEL_16:

  return v14;
}

void __86__ProfileCharacteristicTypePermissionsViewController_tableView_cellForRowAtIndexPath___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__ProfileCharacteristicTypePermissionsViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
  v9[3] = &unk_1E7EEB748;
  objc_copyWeak(&v15, a1 + 7);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v15);
}

void __86__ProfileCharacteristicTypePermissionsViewController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) source];
  [WeakRetained _handleReturnedImage:v2 forSource:v3 cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if (objc_opt_respondsToSelector())
  {
    [cellCopy iconSize];
    v6 = v5;
    [cellCopy layoutMargins];
    [cellCopy setSeparatorInset:{0.0, v6 + v7 * 2.0, 0.0, 0.0}];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = [(ProfileCharacteristicTypePermissionsViewController *)self _profileSectionIdentifierForIndex:section];
  if (!v4)
  {
    v5 = @"APPS_READ_ACCESS_HEADER";
LABEL_5:
    v6 = WDBundle();
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];

    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v5 = @"RESEARCH_STUDIES_READ_ACCESS_HEADER";
    goto LABEL_5;
  }

  v7 = &stru_1F3823B88;
LABEL_8:
  if ([(__CFString *)v7 length])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD050]);
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setText:v7];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v9 setFont:v10];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:secondaryLabelColor];

    [v9 setNumberOfLines:0];
    [v9 setLineBreakMode:0];
    contentView = [v8 contentView];
    [contentView addSubview:v9];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v9 leadingAnchor];
    contentView2 = [v8 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[0] = v32;
    trailingAnchor = [v9 trailingAnchor];
    contentView3 = [v8 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[1] = v26;
    topAnchor = [v9 topAnchor];
    contentView4 = [v8 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[2] = v13;
    bottomAnchor = [v9 bottomAnchor];
    contentView5 = [v8 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19 = v18 = v7;
    v37[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v27 activateConstraints:v20];

    v7 = v18;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v49[4] = *MEMORY[0x1E69E9840];
  v5 = [(ProfileCharacteristicTypePermissionsViewController *)self _profileSectionIdentifierForIndex:section];
  if (v5 != 1)
  {
    if (v5)
    {
      v48 = 0;
      goto LABEL_16;
    }

    if ([(ProfileCharacteristicTypePermissionsViewController *)self _shouldDisplayNameInFooters])
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = WDBundle();
      v8 = [v7 localizedStringForKey:@"DATA_TYPE_SHARING_APPS_EXPLANATION_%@%@" value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable-Tinker"];
      localization = [(HKDisplayType *)self->_displayType localization];
      embeddedDisplayName = [localization embeddedDisplayName];
      v11 = [v6 stringWithFormat:v8, embeddedDisplayName, self->_firstName];

LABEL_14:
      goto LABEL_15;
    }

    if ([(HKDisplayType *)self->_displayType displayTypeIdentifier]== 218)
    {
      v12 = WDBundle();
      v7 = v12;
      v13 = @"DATA_TYPE_SHARING_APPS_EXPLANATION_THIS";
      goto LABEL_10;
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = WDBundle();
    v7 = v15;
    v16 = @"DATA_TYPE_SHARING_APPS_EXPLANATION";
LABEL_13:
    v8 = [v15 localizedStringForKey:v16 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
    localization2 = [(HKDisplayType *)self->_displayType localization];
    embeddedDisplayName2 = [localization2 embeddedDisplayName];
    v11 = [v14 stringWithFormat:v8, embeddedDisplayName2];

    goto LABEL_14;
  }

  if ([(HKDisplayType *)self->_displayType displayTypeIdentifier]!= 218)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = WDBundle();
    v7 = v15;
    v16 = @"DATA_TYPE_SHARING_RESEARCH_STUDIES_EXPLANATION";
    goto LABEL_13;
  }

  v12 = WDBundle();
  v7 = v12;
  v13 = @"DATA_TYPE_SHARING_RESEARCH_STUDIES_EXPLANATION_THIS";
LABEL_10:
  v11 = [v12 localizedStringForKey:v13 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
LABEL_15:
  v36 = v11;

  v19 = objc_alloc_init(MEMORY[0x1E69DD050]);
  v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v20 setText:v11];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v20 setFont:v21];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v20 setTextColor:secondaryLabelColor];

  [v20 setNumberOfLines:0];
  [v20 setLineBreakMode:0];
  contentView = [v19 contentView];
  [contentView addSubview:v20];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v20 leadingAnchor];
  contentView2 = [v19 contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[0] = v43;
  trailingAnchor = [v20 trailingAnchor];
  contentView3 = [v19 contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[1] = v37;
  topAnchor = [v20 topAnchor];
  contentView4 = [v19 contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[2] = v26;
  bottomAnchor = [v20 bottomAnchor];
  v48 = v19;
  contentView5 = [v19 contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[3] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v38 activateConstraints:v32];

LABEL_16:

  return v48;
}

- (id)_sourceForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[ProfileCharacteristicTypePermissionsViewController _profileSectionIdentifierForIndex:](self, "_profileSectionIdentifierForIndex:", [pathCopy section]);
  if (v5 == 1)
  {
    sourceListDataSource = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    sources = [sourceListDataSource sources];
    orderedResearchStudySources = [sources orderedResearchStudySources];
    goto LABEL_5;
  }

  if (!v5)
  {
    sourceListDataSource = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    sources = [sourceListDataSource sources];
    orderedResearchStudySources = [sources orderedAppSources];
LABEL_5:
    v9 = orderedResearchStudySources;
    v10 = [orderedResearchStudySources objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  v23[1] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  tableView = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
  v8 = [tableView indexPathForCell:changedCopy];

  v9 = [(ProfileCharacteristicTypePermissionsViewController *)self _sourceForIndexPath:v8];
  v10 = [(NSDictionary *)self->_characteristicAuthorizationRecordsBySource objectForKeyedSubscript:v9];
  requestedSharing = [v10 requestedSharing];
  if (valueCopy)
  {
    if (requestedSharing && ([v10 status], (HKAuthorizationStatusAllowsSharing() & 1) != 0))
    {
      v12 = 101;
    }

    else
    {
      v12 = 103;
    }
  }

  else if (requestedSharing && ([v10 status], (HKAuthorizationStatusAllowsSharing() & 1) != 0))
  {
    v12 = 102;
  }

  else
  {
    v12 = 104;
  }

  [v10 setStatus:v12];
  v13 = self->_characteristicType;
  authorizationStore = self->_authorizationStore;
  v22 = v13;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v23[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  source = [v9 source];
  bundleIdentifier = [source bundleIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__ProfileCharacteristicTypePermissionsViewController_switchCellValueChanged_value___block_invoke;
  v20[3] = &unk_1E7EEB458;
  v21 = v13;
  v19 = v13;
  [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v16 authorizationModes:MEMORY[0x1E695E0F8] forBundleIdentifier:bundleIdentifier options:0 completion:v20];
}

void __83__ProfileCharacteristicTypePermissionsViewController_switchCellValueChanged_value___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__ProfileCharacteristicTypePermissionsViewController_switchCellValueChanged_value___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)sourceListDataSourceDidUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__ProfileCharacteristicTypePermissionsViewController_sourceListDataSourceDidUpdate___block_invoke;
  v6[3] = &unk_1E7EEB560;
  v7 = updateCopy;
  selfCopy = self;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __84__ProfileCharacteristicTypePermissionsViewController_sourceListDataSourceDidUpdate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(a1 + 32) sources];
  v4 = [v3 allSources];

  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [*(a1 + 40) sourceToAuthRecord];
        v11 = [v9 source];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x1E69A4000]) initWithInternalAuthorizationRecord:v12];
          [v2 setObject:v13 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 1080);
  *(v14 + 1080) = v2;
  v16 = v2;

  v17 = *(a1 + 40);
  if ((v17[1104] & 1) == 0)
  {
    v17[1104] = 1;
    v17 = *(a1 + 40);
  }

  v18 = [v17 tableView];

  [v18 reloadData];
}

void __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B9F07000, a2, OS_LOG_TYPE_ERROR, "Error fetching authorization records: %{public}@", &v2, 0xCu);
}

void __83__ProfileCharacteristicTypePermissionsViewController_switchCellValueChanged_value___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B9F07000, log, OS_LOG_TYPE_ERROR, "Error setting authorization for %@: %{public}@", &v4, 0x16u);
}

@end