@interface ProfileCharacteristicTypePermissionsViewController
+ (id)orderedSectionIdentifiersForProfile:(int64_t)a3;
- (BOOL)_shouldDisplayNameInFooters;
- (ProfileCharacteristicTypePermissionsViewController)initWithCoder:(id)a3;
- (ProfileCharacteristicTypePermissionsViewController)initWithHealthStore:(id)a3 characteristicType:(id)a4 firstName:(id)a5;
- (ProfileCharacteristicTypePermissionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ProfileCharacteristicTypePermissionsViewController)initWithStyle:(int64_t)a3;
- (id)_sourceForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_profileSectionIdentifierForIndex:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchAuthorizationRecordsBySourceForCharacteristic:(id)a3;
- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7;
- (void)_setupFooterView;
- (void)setSourceListDataSource:(id)a3;
- (void)sourceListDataSourceDidUpdate:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProfileCharacteristicTypePermissionsViewController

- (ProfileCharacteristicTypePermissionsViewController)initWithHealthStore:(id)a3 characteristicType:(id)a4 firstName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = ProfileCharacteristicTypePermissionsViewController;
  v12 = [(ProfileCharacteristicTypePermissionsViewController *)&v24 initWithStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    v14 = [MEMORY[0x1E69A4380] sharedInstanceForHealthStore:v13->_healthStore];
    displayTypeController = v13->_displayTypeController;
    v13->_displayTypeController = v14;

    objc_storeStrong(&v13->_firstName, a5);
    v16 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v13->_healthStore];
    authorizationStore = v13->_authorizationStore;
    v13->_authorizationStore = v16;

    objc_storeStrong(&v13->_characteristicType, a4);
    v13->_isLoaded = 0;
    v18 = [(HKDisplayTypeController *)v13->_displayTypeController displayTypeForObjectType:v13->_characteristicType];
    displayType = v13->_displayType;
    v13->_displayType = v18;

    v20 = [v9 profileIdentifier];
    v21 = +[ProfileCharacteristicTypePermissionsViewController orderedSectionIdentifiersForProfile:](ProfileCharacteristicTypePermissionsViewController, "orderedSectionIdentifiersForProfile:", [v20 type]);
    orderedSectionIdentifiers = v13->_orderedSectionIdentifiers;
    v13->_orderedSectionIdentifiers = v21;
  }

  return v13;
}

- (ProfileCharacteristicTypePermissionsViewController)initWithStyle:(int64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (ProfileCharacteristicTypePermissionsViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ProfileCharacteristicTypePermissionsViewController;
  return [(ProfileCharacteristicTypePermissionsViewController *)&v4 initWithCoder:a3];
}

- (ProfileCharacteristicTypePermissionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (void)setSourceListDataSource:(id)a3
{
  v5 = a3;
  sourceListDataSource = self->_sourceListDataSource;
  if (sourceListDataSource != v5)
  {
    v7 = v5;
    [(HKSourceListDataSource *)sourceListDataSource unregisterObserver:self];
    objc_storeStrong(&self->_sourceListDataSource, a3);
    [(HKSourceListDataSource *)self->_sourceListDataSource registerObserver:self];
    v5 = v7;
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

  v5 = [(HKDisplayType *)self->_displayType localization];
  v6 = [v5 summary];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A4020]) initWithDisplayType:self->_displayType];
    footerView = self->_footerView;
    self->_footerView = v8;
  }

  v10 = *MEMORY[0x1E69A40D0];
  v11 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
  [v11 setEstimatedRowHeight:v10];

  v12 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
  [v12 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ProfileCharacteristicTypePermissionsViewController;
  [(ProfileCharacteristicTypePermissionsViewController *)&v4 viewWillAppear:a3];
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
    v24 = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView leadingAnchor];
    v25 = [v3 layoutMarginsGuide];
    v23 = [v25 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v20 = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView trailingAnchor];
    v21 = [v3 layoutMarginsGuide];
    v18 = [v21 trailingAnchor];
    v4 = [v20 constraintEqualToAnchor:v18];
    v26[1] = v4;
    v5 = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView topAnchor];
    v6 = [v3 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v26[2] = v7;
    v8 = [(WDDisplayTypeDescriptionTableFooterView *)self->_footerView bottomAnchor];
    v9 = [v3 bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v26[3] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v11];

    v12 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
    [v12 bounds];
    Width = CGRectGetWidth(v27);

    LODWORD(v14) = 1148846080;
    LODWORD(v15) = 1112014848;
    [v3 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
    [v3 setFrame:{0.0, 0.0, Width, v16}];
    v17 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
    [v17 setTableFooterView:v3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ProfileCharacteristicTypePermissionsViewController;
  [(ProfileCharacteristicTypePermissionsViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(ProfileCharacteristicTypePermissionsViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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

- (void)_fetchAuthorizationRecordsBySourceForCharacteristic:(id)a3
{
  authorizationStore = self->_authorizationStore;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__ProfileCharacteristicTypePermissionsViewController__fetchAuthorizationRecordsBySourceForCharacteristic___block_invoke;
  v4[3] = &unk_1E7EEB6F8;
  v4[4] = self;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationRecordsForType:a3 completion:v4];
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

- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7
{
  v17 = a3;
  v12 = a5;
  if (v17 && !a7)
  {
    v13 = a4;
    v14 = [a6 indexPathForCell:v12];
    v15 = [(ProfileCharacteristicTypePermissionsViewController *)self _sourceForIndexPath:v14];
    v16 = [v15 source];

    LODWORD(v15) = [v16 isEqual:v13];
    if (v15)
    {
      [v12 setIconImage:v17];
    }
  }
}

+ (id)orderedSectionIdentifiersForProfile:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F38466C0, 0}];
  v5 = v4;
  if (a3 == 1)
  {
    [v4 addObject:&unk_1F38466D8];
  }

  return v5;
}

- (int64_t)_profileSectionIdentifierForIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_orderedSectionIdentifiers objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)_shouldDisplayNameInFooters
{
  v2 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v3 = [v2 type] == 3;

  return v3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(ProfileCharacteristicTypePermissionsViewController *)self _profileSectionIdentifierForIndex:a4];
  if (v5 == 1)
  {
    v6 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    v7 = [v6 sources];
    v8 = [v7 orderedResearchStudySources];
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    v6 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    v7 = [v6 sources];
    v8 = [v7 orderedAppSources];
  }

  v9 = v8;
  v10 = [v8 count];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_isLoaded)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69A4040]);
    goto LABEL_16;
  }

  v9 = -[ProfileCharacteristicTypePermissionsViewController _profileSectionIdentifierForIndex:](self, "_profileSectionIdentifierForIndex:", [v7 section]);
  if (v9 == 1)
  {
    v18 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    v19 = [v18 sources];
    v20 = [v19 orderedResearchStudySources];
    v21 = [v20 count];

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
    v10 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    v11 = [v10 sources];
    v12 = [v11 orderedAppSources];
    v13 = [v12 count];

    if (!v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
      v15 = WDBundle();
      v16 = v15;
      v17 = @"APPS_NONE";
LABEL_15:
      v32 = [v15 localizedStringForKey:v17 value:&stru_1F3823B88 table:@"WellnessDashboard-Localizable"];
      v33 = [v14 textLabel];
      [v33 setText:v32];

      v34 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v35 = [v14 textLabel];
      [v35 setTextColor:v34];

      [v14 setSelectionStyle:0];
      goto LABEL_16;
    }
  }

  v22 = [v6 dequeueReusableCellWithIdentifier:@"source"];
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
    v25 = [v23 source];
    v26 = [v25 name];

    [v22 setDisplayText:v26];
    [v24 status];
    [v22 setOn:HKAuthorizationStatusAllowsReading()];
    objc_initWeak(&location, self);
    v27 = [MEMORY[0x1E69A40F0] sharedImageManager];
    v28 = [v23 source];
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
    v40 = v6;
    [v27 loadIconForSource:v28 syncHandler:v42 asyncHandler:v37];

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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v8 iconSize];
    v6 = v5;
    [v8 layoutMargins];
    [v8 setSeparatorInset:{0.0, v6 + v7 * 2.0, 0.0, 0.0}];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = [(ProfileCharacteristicTypePermissionsViewController *)self _profileSectionIdentifierForIndex:a4];
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

    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v9 setTextColor:v11];

    [v9 setNumberOfLines:0];
    [v9 setLineBreakMode:0];
    v12 = [v8 contentView];
    [v12 addSubview:v9];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = MEMORY[0x1E696ACD8];
    v35 = [v9 leadingAnchor];
    v36 = [v8 contentView];
    v34 = [v36 layoutMarginsGuide];
    v33 = [v34 leadingAnchor];
    v32 = [v35 constraintEqualToAnchor:v33];
    v37[0] = v32;
    v30 = [v9 trailingAnchor];
    v31 = [v8 contentView];
    v29 = [v31 layoutMarginsGuide];
    v28 = [v29 trailingAnchor];
    v26 = [v30 constraintEqualToAnchor:v28];
    v37[1] = v26;
    v24 = [v9 topAnchor];
    v25 = [v8 contentView];
    v23 = [v25 layoutMarginsGuide];
    v22 = [v23 topAnchor];
    v13 = [v24 constraintEqualToAnchor:v22];
    v37[2] = v13;
    v14 = [v9 bottomAnchor];
    v15 = [v8 contentView];
    v16 = [v15 layoutMarginsGuide];
    v17 = [v16 bottomAnchor];
    [v14 constraintEqualToAnchor:v17];
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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v49[4] = *MEMORY[0x1E69E9840];
  v5 = [(ProfileCharacteristicTypePermissionsViewController *)self _profileSectionIdentifierForIndex:a4];
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
      v9 = [(HKDisplayType *)self->_displayType localization];
      v10 = [v9 embeddedDisplayName];
      v11 = [v6 stringWithFormat:v8, v10, self->_firstName];

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
    v17 = [(HKDisplayType *)self->_displayType localization];
    v18 = [v17 embeddedDisplayName];
    v11 = [v14 stringWithFormat:v8, v18];

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

  v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v20 setTextColor:v22];

  [v20 setNumberOfLines:0];
  [v20 setLineBreakMode:0];
  v23 = [v19 contentView];
  [v23 addSubview:v20];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = MEMORY[0x1E696ACD8];
  v46 = [v20 leadingAnchor];
  v47 = [v19 contentView];
  v45 = [v47 layoutMarginsGuide];
  v44 = [v45 leadingAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v49[0] = v43;
  v41 = [v20 trailingAnchor];
  v42 = [v19 contentView];
  v40 = [v42 layoutMarginsGuide];
  v39 = [v40 trailingAnchor];
  v37 = [v41 constraintEqualToAnchor:v39];
  v49[1] = v37;
  v34 = [v20 topAnchor];
  v35 = [v19 contentView];
  v24 = [v35 layoutMarginsGuide];
  v25 = [v24 topAnchor];
  v26 = [v34 constraintEqualToAnchor:v25];
  v49[2] = v26;
  v27 = [v20 bottomAnchor];
  v48 = v19;
  v28 = [v19 contentView];
  v29 = [v28 layoutMarginsGuide];
  v30 = [v29 bottomAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];
  v49[3] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v38 activateConstraints:v32];

LABEL_16:

  return v48;
}

- (id)_sourceForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[ProfileCharacteristicTypePermissionsViewController _profileSectionIdentifierForIndex:](self, "_profileSectionIdentifierForIndex:", [v4 section]);
  if (v5 == 1)
  {
    v6 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    v7 = [v6 sources];
    v8 = [v7 orderedResearchStudySources];
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = [(ProfileCharacteristicTypePermissionsViewController *)self sourceListDataSource];
    v7 = [v6 sources];
    v8 = [v7 orderedAppSources];
LABEL_5:
    v9 = v8;
    v10 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(ProfileCharacteristicTypePermissionsViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(ProfileCharacteristicTypePermissionsViewController *)self _sourceForIndexPath:v8];
  v10 = [(NSDictionary *)self->_characteristicAuthorizationRecordsBySource objectForKeyedSubscript:v9];
  v11 = [v10 requestedSharing];
  if (v4)
  {
    if (v11 && ([v10 status], (HKAuthorizationStatusAllowsSharing() & 1) != 0))
    {
      v12 = 101;
    }

    else
    {
      v12 = 103;
    }
  }

  else if (v11 && ([v10 status], (HKAuthorizationStatusAllowsSharing() & 1) != 0))
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
  v17 = [v9 source];
  v18 = [v17 bundleIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__ProfileCharacteristicTypePermissionsViewController_switchCellValueChanged_value___block_invoke;
  v20[3] = &unk_1E7EEB458;
  v21 = v13;
  v19 = v13;
  [(HKAuthorizationStore *)authorizationStore setAuthorizationStatuses:v16 authorizationModes:MEMORY[0x1E695E0F8] forBundleIdentifier:v18 options:0 completion:v20];
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

- (void)sourceListDataSourceDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__ProfileCharacteristicTypePermissionsViewController_sourceListDataSourceDidUpdate___block_invoke;
  v6[3] = &unk_1E7EEB560;
  v7 = v4;
  v8 = self;
  v5 = v4;
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