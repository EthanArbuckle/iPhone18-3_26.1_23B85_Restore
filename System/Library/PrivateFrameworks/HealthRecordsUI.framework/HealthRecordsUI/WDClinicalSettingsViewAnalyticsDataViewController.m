@interface WDClinicalSettingsViewAnalyticsDataViewController
- (id)description;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)fetchClinicalOptInDataCollectionFilePaths;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WDClinicalSettingsViewAnalyticsDataViewController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = WDClinicalSettingsViewAnalyticsDataViewController;
  [(WDClinicalSettingsViewAnalyticsDataViewController *)&v13 viewDidLoad];
  v3 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_VIEW_ANALYTICS_DATA_TITLE");
  [(WDClinicalSettingsViewAnalyticsDataViewController *)self setTitle:v3];

  v4 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[WDClinicalSettingsViewAnalyticsDataViewControllerFileCell defaultReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = objc_alloc(MEMORY[0x1E69DD418]);
  v8 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_VIEW_ANALYTICS_DATA_NO_DATA");
  v9 = [v7 initWithFrame:v8 title:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(WDClinicalSettingsViewAnalyticsDataViewController *)self setNoDataView:v9];

  v10 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self noDataView];
  [v10 setHidden:1];

  v11 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self noDataView];
  v12 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self tableView];
  [v12 setBackgroundView:v11];

  [(WDClinicalSettingsViewAnalyticsDataViewController *)self fetchClinicalOptInDataCollectionFilePaths];
}

- (void)fetchClinicalOptInDataCollectionFilePaths
{
  objc_initWeak(&location, self);
  v3 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self healthRecordsStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__WDClinicalSettingsViewAnalyticsDataViewController_fetchClinicalOptInDataCollectionFilePaths__block_invoke;
  v4[3] = &unk_1E83DCF68;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 fetchClinicalOptInDataCollectionFilePathsWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __94__WDClinicalSettingsViewAnalyticsDataViewController_fetchClinicalOptInDataCollectionFilePaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696ADC8] mainQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__WDClinicalSettingsViewAnalyticsDataViewController_fetchClinicalOptInDataCollectionFilePaths__block_invoke_2;
  v10[3] = &unk_1E83DCB88;
  objc_copyWeak(&v13, (a1 + 40));
  v8 = v5;
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [v7 addOperationWithBlock:v10];

  objc_destroyWeak(&v13);
}

void __94__WDClinicalSettingsViewAnalyticsDataViewController_fetchClinicalOptInDataCollectionFilePaths__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setFilePaths:v2];

  v4 = [*(a1 + 40) tableView];
  [v4 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self filePaths:a3];
  v6 = [v5 count];

  v7 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self tableView];
  [v7 setSeparatorStyle:v6 != 0];

  v8 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self noDataView];
  [v8 setHidden:v6 != 0];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[WDClinicalSettingsViewAnalyticsDataViewControllerFileCell defaultReuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self filePaths];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];
  v14 = [v10 fileURLWithPath:v13];
  [v9 setFileURL:v14];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = [a3 cellForRowAtIndexPath:a4];
  v5 = objc_alloc_init(MEMORY[0x1E69A4390]);
  v6 = [v12 fileURL];
  v7 = [v6 lastPathComponent];
  [v5 setTitle:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v12 fileURL];
  v10 = [v8 stringWithContentsOfURL:v9 encoding:4 error:0];
  [v5 setDetailText:v10];

  v11 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self navigationController];
  [v11 pushViewController:v5 animated:1];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self filePaths];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

@end