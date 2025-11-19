@interface HKObjectDataAccessViewController
- (HKObjectDataAccessViewController)initWithSample:(id)a3 healthStore:(id)a4;
- (id)_cellForSource:(id)a3 tableView:(id)a4;
- (id)_headerSubtitle;
- (id)_noAppsCell;
- (id)bodyFont;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7;
- (void)_loadIconForSource:(id)a3 onCell:(id)a4 ofTableView:(id)a5;
- (void)_refreshAppAuthorizationData;
- (void)_setupHeaderViewSize;
- (void)dealloc;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKObjectDataAccessViewController

- (HKObjectDataAccessViewController)initWithSample:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = HKObjectDataAccessViewController;
  v9 = [(HKTableViewController *)&v19 initWithUsingInsetStyling:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sample, a3);
    objc_storeStrong(&v10->_healthStore, a4);
    v11 = [objc_alloc(MEMORY[0x1E696BF50]) initWithHealthStore:v8];
    authorizationStore = v10->_authorizationStore;
    v10->_authorizationStore = v11;

    v13 = [HKDisplayTypeController sharedInstanceForHealthStore:v8];
    v14 = [v7 sampleType];
    v15 = [v13 displayTypeForObjectType:v14];
    displayType = v10->_displayType;
    v10->_displayType = v15;

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v10 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  v4.receiver = self;
  v4.super_class = HKObjectDataAccessViewController;
  [(HKObjectDataAccessViewController *)&v4 dealloc];
}

- (void)_setupHeaderViewSize
{
  v3 = objc_alloc_init(HKTitledIconHeaderView);
  headerView = self->_headerView;
  self->_headerView = v3;

  v5 = self->_headerView;
  v6 = [(HKDisplayType *)self->_displayType localization];
  v7 = [v6 displayName];
  [(HKTitledIconHeaderView *)v5 setTitle:v7];

  v8 = self->_headerView;
  v9 = [(HKObjectDataAccessViewController *)self _headerSubtitle];
  [(HKTitledIconHeaderView *)v8 setSubtitle:v9];

  [(HKTitledIconHeaderView *)self->_headerView setCentersSubtitle:1];
  v24 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:50.0];
  v10 = [(HKDisplayType *)self->_displayType shareIcon];
  v11 = [v10 imageByApplyingSymbolConfiguration:v24];

  [(HKTitledIconHeaderView *)self->_headerView setIconImage:v11];
  v12 = self->_headerView;
  v13 = [(HKDisplayType *)self->_displayType displayCategory];
  v14 = [v13 color];
  [(HKTitledIconHeaderView *)v12 setIconImageTint:v14];

  v15 = self->_headerView;
  v16 = [(HKObjectDataAccessViewController *)self tableView];
  [v16 bounds];
  v18 = v17;
  LODWORD(v17) = 1148846080;
  LODWORD(v19) = 1112014848;
  [(HKTitledIconHeaderView *)v15 systemLayoutSizeFittingSize:v18 withHorizontalFittingPriority:0.0 verticalFittingPriority:v17, v19];

  [(HKTitledIconHeaderView *)self->_headerView bounds];
  [(HKTitledIconHeaderView *)self->_headerView setBounds:?];
  v20 = self->_headerView;
  v21 = [(HKObjectDataAccessViewController *)self tableView];
  [(HKTitledIconHeaderView *)v20 setLayoutMarginsWithTableView:v21];

  v22 = self->_headerView;
  v23 = [(HKObjectDataAccessViewController *)self tableView];
  [v23 setTableHeaderView:v22];
}

- (id)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HKObjectDataAccessViewController;
  [(HKTableViewController *)&v8 viewDidLoad];
  v3 = [(HKObjectDataAccessViewController *)self tableView];
  [v3 setEstimatedRowHeight:52.0];

  v4 = *MEMORY[0x1E69DE3D0];
  v5 = [(HKObjectDataAccessViewController *)self tableView];
  [v5 setRowHeight:v4];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"DATA_ACCESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKObjectDataAccessViewController *)self setTitle:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKObjectDataAccessViewController;
  [(HKObjectDataAccessViewController *)&v4 viewWillAppear:a3];
  [(HKObjectDataAccessViewController *)self _refreshAppAuthorizationData];
  [(HKObjectDataAccessViewController *)self _setupHeaderViewSize];
}

- (id)_headerSubtitle
{
  v3 = [(HKSample *)self->_sample startDate];
  v4 = HKLocalizedStringForDateAndTemplate(v3, 10);

  v5 = [(HKSample *)self->_sample sampleType];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*MEMORY[0x1E696BEB0]];

  if (v7)
  {
    sample = self->_sample;
    v9 = MEMORY[0x1E696AEC0];
    v10 = MEMORY[0x1E696AAE8];
    v11 = sample;
    v12 = [v10 bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"OBJECT_DESCRIPTION_%1$@_AND_DATE_%2$@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v14 = HKVisionPrescriptionTypeDetailedLongLocalizedString(v11);

    v15 = [v9 stringWithFormat:v13, v14, v4];
  }

  else
  {
    v15 = v4;
  }

  return v15;
}

- (void)_refreshAppAuthorizationData
{
  authorizationStore = self->_authorizationStore;
  sample = self->_sample;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__HKObjectDataAccessViewController__refreshAppAuthorizationData__block_invoke;
  v4[3] = &unk_1E81BA360;
  v4[4] = self;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationStatusesForSample:sample completion:v4];
}

void __64__HKObjectDataAccessViewController__refreshAppAuthorizationData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5 copyItems:1];
    v9 = [*(*(a1 + 32) + 1064) sourceRevision];
    v10 = [v9 source];
    v11 = [v8 objectForKeyedSubscript:v10];
    if (v11)
    {
    }

    else
    {
      v12 = [*(*(a1 + 32) + 1064) sourceRevision];
      v13 = [v12 source];
      if ([v13 _isApplication])
      {
        v18 = [*(*(a1 + 32) + 1064) sourceRevision];
        v14 = [v18 source];
        v19 = [v14 _requiresAuthorization];

        if (!v19)
        {
LABEL_11:
          v15 = [v8 allKeys];
          v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_71];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__HKObjectDataAccessViewController__refreshAppAuthorizationData__block_invoke_2;
          block[3] = &unk_1E81B5A10;
          block[4] = *(a1 + 32);
          v21 = v8;
          v22 = v16;
          v17 = v16;
          v7 = v8;
          dispatch_async(MEMORY[0x1E69E96A0], block);

          goto LABEL_12;
        }

        v9 = [*(*(a1 + 32) + 1064) sourceRevision];
        v10 = [v9 source];
        [v8 setObject:&unk_1F4384360 forKeyedSubscript:v10];
      }

      else
      {
      }
    }

    goto LABEL_11;
  }

  _HKInitializeLogging();
  v7 = HKLogAuthorization();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __64__HKObjectDataAccessViewController__refreshAppAuthorizationData__block_invoke_cold_1();
  }

LABEL_12:
}

uint64_t __64__HKObjectDataAccessViewController__refreshAppAuthorizationData__block_invoke_330(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void __64__HKObjectDataAccessViewController__refreshAppAuthorizationData__block_invoke_2(id *a1)
{
  objc_storeStrong(a1[4] + 134, a1[5]);
  objc_storeStrong(a1[4] + 135, a1[6]);
  v2 = [a1[4] tableView];
  [v2 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(NSArray *)self->_orderedApps count:a3];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", a4}];
  v5 = [v4 localizedStringForKey:@"APPS_ALLOWED_TO_READ_DATA_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", a4}];
  v7 = [v6 localizedStringForKey:@"APPS_ALLOWED_TO_READ_DATA_FOOTER_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [(HKDisplayType *)self->_displayType localization];
  v9 = [v8 embeddedDisplayName];
  v10 = [v5 stringWithFormat:v7, v9];

  return v10;
}

- (void)_loadIconForSource:(id)a3 onCell:(id)a4 ofTableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = +[HKAppImageManager sharedImageManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__HKObjectDataAccessViewController__loadIconForSource_onCell_ofTableView___block_invoke;
  v21[3] = &unk_1E81BA388;
  v12 = v9;
  v22 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__HKObjectDataAccessViewController__loadIconForSource_onCell_ofTableView___block_invoke_2;
  v16[3] = &unk_1E81BA3D8;
  objc_copyWeak(&v20, &location);
  v13 = v8;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [v11 loadIconForSource:v13 productType:0 syncHandler:v21 asyncHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __74__HKObjectDataAccessViewController__loadIconForSource_onCell_ofTableView___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__HKObjectDataAccessViewController__loadIconForSource_onCell_ofTableView___block_invoke_3;
  v9[3] = &unk_1E81BA3B0;
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

void __74__HKObjectDataAccessViewController__loadIconForSource_onCell_ofTableView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleReturnedImage:*(a1 + 32) forSource:*(a1 + 40) cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7
{
  v17 = a3;
  v12 = a5;
  if (v17 && !a7)
  {
    v13 = a4;
    v14 = [a6 indexPathForCell:v12];
    v15 = -[NSArray objectAtIndexedSubscript:](self->_orderedApps, "objectAtIndexedSubscript:", [v14 row]);
    v16 = [v15 isEqual:v13];

    if (v16)
    {
      [v12 setIconImage:v17];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_orderedApps count])
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_orderedApps, "objectAtIndexedSubscript:", [v7 row]);
    v9 = [(HKObjectDataAccessViewController *)self _cellForSource:v8 tableView:v6];
  }

  else
  {
    v9 = [(HKObjectDataAccessViewController *)self _noAppsCell];
  }

  return v9;
}

- (id)_noAppsCell
{
  v2 = [(HKObjectDataAccessViewController *)self tableView];
  v3 = [v2 dequeueReusableCellWithIdentifier:@"HKObjectDataAccessNoAppCell"];

  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"HKObjectDataAccessNoAppCell"];
  }

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"NONE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v6 = [v3 textLabel];
  [v6 setText:v5];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [v3 textLabel];
  [v8 setTextColor:v7];

  [v3 setUserInteractionEnabled:0];

  return v3;
}

- (id)_cellForSource:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKObjectDataAccessViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"HKObjectDataAccessCell"];

  if (!v9)
  {
    v9 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"HKObjectDataAccessCell"];
  }

  v10 = [(NSMutableDictionary *)self->_authorizationByApp objectForKeyedSubscript:v7];
  v11 = [v10 integerValue] == 2;

  [(HKSwitchTableViewCell *)v9 setDelegate:self];
  [(HKSwitchTableViewCell *)v9 setCentersIcon:1];
  v12 = [v7 name];
  v13 = [(HKSwitchTableViewCell *)v9 textLabel];
  [v13 setText:v12];

  v14 = [MEMORY[0x1E69DC888] labelColor];
  v15 = [(HKSwitchTableViewCell *)v9 textLabel];
  [v15 setTextColor:v14];

  [(HKSwitchTableViewCell *)v9 setOn:v11];
  [(HKObjectDataAccessViewController *)self _loadIconForSource:v7 onCell:v9 ofTableView:v6];

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKObjectDataAccessViewController;
  [(HKObjectDataAccessViewController *)&v11 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKObjectDataAccessViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      bodyFont = self->_bodyFont;
      self->_bodyFont = 0;
    }
  }

  [(HKObjectDataAccessViewController *)self _setupHeaderViewSize];
  v10 = [(HKObjectDataAccessViewController *)self tableView];
  [v10 reloadData];
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v27 = a4;
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(HKObjectDataAccessViewController *)self tableView];
  v26 = [v6 indexPathForCell:v5];

  v7 = -[NSArray objectAtIndexedSubscript:](self->_orderedApps, "objectAtIndexedSubscript:", [v26 row]);
  v8 = [(NSMutableDictionary *)self->_authorizationByApp objectForKeyedSubscript:v7];
  v24 = [v8 integerValue];

  if (v27)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{v9, v24}];
  [(NSMutableDictionary *)self->_authorizationByApp setObject:v10 forKeyedSubscript:v7];

  v11 = objc_alloc(MEMORY[0x1E696C1A0]);
  v12 = [(HKSample *)self->_sample UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 initWithDomain:*MEMORY[0x1E696B908] underlyingIdentifier:v13];

  v15 = objc_alloc(MEMORY[0x1E696C2D8]);
  v34 = v14;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v35[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v18 = [v15 initWithObjectAuthorizationStatuses:v17 sessionIdentifier:0];

  objc_initWeak(&location, self);
  authorizationStore = self->_authorizationStore;
  v20 = [(HKSample *)self->_sample sampleType];
  v21 = [v7 bundleIdentifier];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __65__HKObjectDataAccessViewController_switchCellValueChanged_value___block_invoke;
  v28[3] = &unk_1E81BA428;
  objc_copyWeak(v31, &location);
  v22 = v5;
  v29 = v22;
  v23 = v7;
  v30 = v23;
  v31[1] = v25;
  v32 = v27;
  [(HKAuthorizationStore *)authorizationStore setObjectAuthorizationStatusContext:v18 forObjectType:v20 bundleIdentifier:v21 completion:v28];

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

void __65__HKObjectDataAccessViewController_switchCellValueChanged_value___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__HKObjectDataAccessViewController_switchCellValueChanged_value___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HKObjectDataAccessViewController_switchCellValueChanged_value___block_invoke_355;
    block[3] = &unk_1E81BA400;
    block[4] = WeakRetained;
    v11 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v12 = v8;
    v13 = v9;
    v14 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__HKObjectDataAccessViewController_switchCellValueChanged_value___block_invoke_355(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v5 = [v2 indexPathForCell:*(a1 + 40)];

  v3 = [*(*(a1 + 32) + 1080) objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  [*(*(a1 + 32) + 1072) setObject:v4 forKeyedSubscript:*(a1 + 48)];

  if ([v3 isEqual:*(a1 + 48)])
  {
    [*(a1 + 40) setOn:(*(a1 + 64) & 1) == 0 animated:1];
  }
}

@end