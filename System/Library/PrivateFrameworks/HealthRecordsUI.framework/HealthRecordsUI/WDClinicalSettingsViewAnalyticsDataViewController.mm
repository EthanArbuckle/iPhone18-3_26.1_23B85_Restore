@interface WDClinicalSettingsViewAnalyticsDataViewController
- (id)description;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)fetchClinicalOptInDataCollectionFilePaths;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

  tableView = [(WDClinicalSettingsViewAnalyticsDataViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[WDClinicalSettingsViewAnalyticsDataViewControllerFileCell defaultReuseIdentifier];
  [tableView registerClass:v5 forCellReuseIdentifier:v6];

  v7 = objc_alloc(MEMORY[0x1E69DD418]);
  v8 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_VIEW_ANALYTICS_DATA_NO_DATA");
  v9 = [v7 initWithFrame:v8 title:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(WDClinicalSettingsViewAnalyticsDataViewController *)self setNoDataView:v9];

  noDataView = [(WDClinicalSettingsViewAnalyticsDataViewController *)self noDataView];
  [noDataView setHidden:1];

  noDataView2 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self noDataView];
  tableView2 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self tableView];
  [tableView2 setBackgroundView:noDataView2];

  [(WDClinicalSettingsViewAnalyticsDataViewController *)self fetchClinicalOptInDataCollectionFilePaths];
}

- (void)fetchClinicalOptInDataCollectionFilePaths
{
  objc_initWeak(&location, self);
  healthRecordsStore = [(WDClinicalSettingsViewAnalyticsDataViewController *)self healthRecordsStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__WDClinicalSettingsViewAnalyticsDataViewController_fetchClinicalOptInDataCollectionFilePaths__block_invoke;
  v4[3] = &unk_1E83DCF68;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [healthRecordsStore fetchClinicalOptInDataCollectionFilePathsWithCompletion:v4];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WDClinicalSettingsViewAnalyticsDataViewController *)self filePaths:view];
  v6 = [v5 count];

  tableView = [(WDClinicalSettingsViewAnalyticsDataViewController *)self tableView];
  [tableView setSeparatorStyle:v6 != 0];

  noDataView = [(WDClinicalSettingsViewAnalyticsDataViewController *)self noDataView];
  [noDataView setHidden:v6 != 0];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[WDClinicalSettingsViewAnalyticsDataViewControllerFileCell defaultReuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  v10 = MEMORY[0x1E695DFF8];
  filePaths = [(WDClinicalSettingsViewAnalyticsDataViewController *)self filePaths];
  v12 = [pathCopy row];

  v13 = [filePaths objectAtIndexedSubscript:v12];
  v14 = [v10 fileURLWithPath:v13];
  [v9 setFileURL:v14];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12 = [view cellForRowAtIndexPath:path];
  v5 = objc_alloc_init(MEMORY[0x1E69A4390]);
  fileURL = [v12 fileURL];
  lastPathComponent = [fileURL lastPathComponent];
  [v5 setTitle:lastPathComponent];

  v8 = MEMORY[0x1E696AEC0];
  fileURL2 = [v12 fileURL];
  v10 = [v8 stringWithContentsOfURL:fileURL2 encoding:4 error:0];
  [v5 setDetailText:v10];

  navigationController = [(WDClinicalSettingsViewAnalyticsDataViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  filePaths = [(WDClinicalSettingsViewAnalyticsDataViewController *)self filePaths];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, filePaths];

  return v7;
}

@end