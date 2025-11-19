@interface WDDocumentOverviewViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (UIFont)bodyFont;
- (WDDocumentOverviewViewController)initWithDisplayTypes:(id)a3 profile:(id)a4 title:(id)a5 category:(id)a6 sidebarIdentifier:(id)a7;
- (double)_reportSectionEstimatedRowHeight:(int64_t)a3;
- (double)_reportSectionRowHeight:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_descriptionSectionCellForTableView:(id)a3 row:(int64_t)a4;
- (id)_reportAccessCellForTableView:(id)a3 forIndexPath:(id)a4;
- (id)_reportItemCellForTableView:(id)a3 row:(int64_t)a4;
- (id)_reportSectionCellForTableView:(id)a3 forIndexPath:(id)a4;
- (id)_reportShowAllCellForTableView:(id)a3 forIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_installSections;
- (void)_pushAccessViewController;
- (void)_pushReportDetailViewControllerForIndexPath:(id)a3;
- (void)_pushShowAllViewController;
- (void)_recomputeTotalReportCount;
- (void)_reloadAllData;
- (void)_selectReportRowForIndexPath:(id)a3;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation WDDocumentOverviewViewController

- (WDDocumentOverviewViewController)initWithDisplayTypes:(id)a3 profile:(id)a4 title:(id)a5 category:(id)a6 sidebarIdentifier:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = WDDocumentOverviewViewController;
  v15 = [(HKTableViewController *)&v22 initWithUsingInsetStyling:1];
  v16 = v15;
  if (v15)
  {
    [(WDDocumentOverviewViewController *)v15 setTitle:v13];
    v17 = [v11 objectAtIndexedSubscript:0];
    displayType = v16->_displayType;
    v16->_displayType = v17;

    objc_storeStrong(&v16->_profile, a4);
    objc_storeStrong(&v16->_sidebarSelectionIdentifier, a7);
    v19 = [(WDSampleListDataProvider *)[WDDocumentListDataProvider alloc] initWithDisplayType:v16->_displayType profile:v16->_profile];
    dataProvider = v16->_dataProvider;
    v16->_dataProvider = v19;

    v16->_totalReportCount = 0;
    [(WDDocumentOverviewViewController *)v16 _installSections];
    [(WDDocumentOverviewViewController *)v16 _reloadAllData];
  }

  return v16;
}

- (void)viewDidLoad
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = WDDocumentOverviewViewController;
  [(HKTableViewController *)&v16 viewDidLoad];
  objc_initWeak(&location, self);
  dataProvider = self->_dataProvider;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __47__WDDocumentOverviewViewController_viewDidLoad__block_invoke;
  v13 = &unk_2796E6CF0;
  objc_copyWeak(&v14, &location);
  [(WDSampleListDataProvider *)dataProvider startCollectingDataWithUpdateHandler:&v10];
  v4 = [(WDDocumentOverviewViewController *)self tableView:v10];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"accessDataIdentifier"];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v17[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v7 = [(WDDocumentOverviewViewController *)self registerForTraitChanges:v6 withTarget:self action:sel_widthDesignationDidChangeWithTraitEnvironment_previousTraitCollection_];

  v8 = [(WDDocumentOverviewViewController *)self navigationItem];
  [v8 _setSupportsTwoLineLargeTitles:1];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __47__WDDocumentOverviewViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WDDocumentOverviewViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_2796E6CF0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __47__WDDocumentOverviewViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadAllData];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = WDDocumentOverviewViewController;
  [(WDDocumentOverviewViewController *)&v4 dealloc];
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a3 traitCollection];
  [v5 valueForNSIntegerTrait:objc_opt_class()];

  HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(WDDocumentOverviewViewController *)self tableView];
  [v14 _setSectionContentInset:{0.0, v9, 0.0, v13}];

  v15 = [(WDDocumentOverviewViewController *)self view];
  [v15 hk_safeAreaAdjustedEdgeInsets:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(WDDocumentOverviewViewController *)self navigationItem];
  [v24 largeTitleInsets];
  if (v19 == v28 && v17 == v25 && v23 == v27)
  {
    v31 = v26;

    if (v21 == v31)
    {
      return;
    }
  }

  else
  {
  }

  v32 = [(WDDocumentOverviewViewController *)self navigationItem];
  [v32 setLargeTitleInsets:{v17, v19, v21, v23}];

  v34 = [(WDDocumentOverviewViewController *)self navigationController];
  v33 = [v34 navigationBar];
  [v33 setNeedsLayout];
}

- (void)_recomputeTotalReportCount
{
  v3 = [MEMORY[0x277CCD720] documentTypeForIdentifier:*MEMORY[0x277CCBCB8]];
  v4 = objc_alloc(MEMORY[0x277CCD8B0]);
  v5 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __62__WDDocumentOverviewViewController__recomputeTotalReportCount__block_invoke;
  v12 = &unk_2796E6D68;
  v13 = self;
  v14 = v3;
  v6 = v3;
  v7 = [v4 initWithSampleTypes:v5 predicate:0 resultsHandler:&v9];

  v8 = [(WDProfile *)self->_profile healthStore:v9];
  [v8 executeQuery:v7];
}

void __62__WDDocumentOverviewViewController__recomputeTotalReportCount__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 integerValue];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__WDDocumentOverviewViewController__recomputeTotalReportCount__block_invoke_316;
    v10[3] = &unk_2796E6D40;
    v10[4] = *(a1 + 32);
    v10[5] = v8;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __62__WDDocumentOverviewViewController__recomputeTotalReportCount__block_invoke_cold_1(a1, v6, v9);
    }
  }
}

void __62__WDDocumentOverviewViewController__recomputeTotalReportCount__block_invoke_316(uint64_t a1)
{
  *(*(a1 + 32) + 1088) = *(a1 + 40);
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)_reloadAllData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(WDSampleListDataProvider *)self->_dataProvider numberOfObjectsForSection:0];
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 1)
  {
    do
    {
      [(NSMutableArray *)v3 addObject:&unk_28642DCF0];
      --v5;
    }

    while (v5);
  }

  [(NSMutableArray *)v3 addObject:&unk_28642DD08];
  [(NSMutableArray *)v3 addObject:&unk_28642DD20];
  reportRowTypes = self->_reportRowTypes;
  self->_reportRowTypes = v3;

  [(WDDocumentOverviewViewController *)self _recomputeTotalReportCount];
  v7 = [(WDDocumentOverviewViewController *)self tableView];
  [v7 reloadData];
}

- (void)_installSections
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sectionTypes = self->_sectionTypes;
  self->_sectionTypes = v3;

  [(NSMutableArray *)self->_sectionTypes addObject:&unk_28642DCF0];
  v5 = self->_sectionTypes;

  [(NSMutableArray *)v5 addObject:&unk_28642DD08];
}

- (UIFont)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (id)_reportShowAllCellForTableView:(id)a3 forIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"showAllDataIdentifier", a4}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"showAllDataIdentifier"];
    [v5 setAccessoryType:1];
  }

  v6 = [v5 textLabel];
  v7 = WDBundle();
  v8 = [v7 localizedStringForKey:@"SHOW_ALL_RECORDS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  [v6 setText:v8];

  v9 = [v5 textLabel];
  [v9 setAccessibilityIdentifier:@"UIA.Health.CDA.ShowAllRecords"];

  if (self->_totalReportCount < 1)
  {
    v11 = [v5 detailTextLabel];
    [v11 setText:&stru_28641D9B8];
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v11 = HKLocalizedStringForNumberWithTemplate();

    v12 = [v5 detailTextLabel];
    [v12 setText:v11];
  }

  v13 = [v5 textLabel];
  v14 = [(WDDocumentOverviewViewController *)self bodyFont];
  [v13 setFont:v14];

  v15 = [v5 detailTextLabel];
  v16 = [(WDDocumentOverviewViewController *)self bodyFont];
  [v15 setFont:v16];

  return v5;
}

- (id)_reportAccessCellForTableView:(id)a3 forIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"accessDataIdentifier" forIndexPath:a4];
  [v5 setAccessoryType:1];
  v6 = [v5 textLabel];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  [v6 setText:v8];

  v9 = [v5 textLabel];
  v10 = [(WDDocumentOverviewViewController *)self bodyFont];
  [v9 setFont:v10];

  return v5;
}

- (id)_reportItemCellForTableView:(id)a3 row:(int64_t)a4
{
  dataProvider = self->_dataProvider;
  v7 = a3;
  v8 = [(WDSampleListDataProvider *)dataProvider objectAtIndex:a4 forSection:0];
  v9 = [MEMORY[0x277CCAA70] indexPathForRow:a4 inSection:0];
  v10 = [(WDDocumentListDataProvider *)self->_dataProvider customCellForObject:v8 indexPath:v9 tableView:v7];

  return v10;
}

- (id)_reportSectionCellForTableView:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [(NSMutableArray *)self->_reportRowTypes objectAtIndexedSubscript:v8];
  v10 = [v9 integerValue];
  switch(v10)
  {
    case 2:
      v11 = [(WDDocumentOverviewViewController *)self _reportAccessCellForTableView:v6 forIndexPath:v7];
      goto LABEL_7;
    case 1:
      v11 = [(WDDocumentOverviewViewController *)self _reportShowAllCellForTableView:v6 forIndexPath:v7];
      goto LABEL_7;
    case 0:
      v11 = [(WDDocumentOverviewViewController *)self _reportItemCellForTableView:v6 row:v8];
LABEL_7:
      v12 = v11;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_descriptionSectionCellForTableView:(id)a3 row:(int64_t)a4
{
  v4 = [[WDDisplayTypeDescriptionTableViewCell alloc] initWithDisplayType:self->_displayType showAttributionText:1 reuseIdentifier:@"descriptionCellReuse"];

  return v4;
}

- (void)_pushReportDetailViewControllerForIndexPath:(id)a3
{
  v5 = [(WDSampleListDataProvider *)self->_dataProvider viewControllerForItemAtIndexPath:a3];
  v4 = [v5 navigationItem];
  [v4 setLargeTitleDisplayMode:2];

  [(WDDocumentOverviewViewController *)self showAdaptively:v5 sender:self];
}

- (void)_pushShowAllViewController
{
  displayType = self->_displayType;
  profile = self->_profile;
  v5 = [(WDProfile *)profile unitController];
  v8 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:v5];

  v6 = [[WDDataListViewController alloc] initWithDisplayType:self->_displayType profile:self->_profile dataProvider:v8 usingInsetStyling:1];
  v7 = [(WDDataListViewController *)v6 navigationItem];
  [v7 setLargeTitleDisplayMode:2];

  [(WDDocumentOverviewViewController *)self showAdaptively:v6 sender:self];
}

- (void)_pushAccessViewController
{
  v8 = [MEMORY[0x277D12828] categoryWithID:{-[HKDisplayType categoryIdentifier](self->_displayType, "categoryIdentifier")}];
  v3 = [WDDisplayTypeDataSourcesTableViewController alloc];
  displayType = self->_displayType;
  v5 = [(WDProfile *)self->_profile sourceOrderController];
  v6 = [(WDDisplayTypeDataSourcesTableViewController *)v3 initWithDisplayType:displayType displayCategory:v8 sourceOrderController:v5 profile:self->_profile];

  v7 = [(WDDisplayTypeDataSourcesTableViewController *)v6 navigationItem];
  [v7 setLargeTitleDisplayMode:2];

  [(WDDocumentOverviewViewController *)self showAdaptively:v6 sender:self];
}

- (void)_selectReportRowForIndexPath:(id)a3
{
  v6 = a3;
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_reportRowTypes, "objectAtIndexedSubscript:", [v6 row]);
  v5 = [v4 integerValue];
  switch(v5)
  {
    case 2:
      [(WDDocumentOverviewViewController *)self _pushAccessViewController];
      break;
    case 1:
      [(WDDocumentOverviewViewController *)self _pushShowAllViewController];
      break;
    case 0:
      [(WDDocumentOverviewViewController *)self _pushReportDetailViewControllerForIndexPath:v6];
      break;
  }
}

- (double)_reportSectionRowHeight:(int64_t)a3
{
  v4 = [(NSMutableArray *)self->_reportRowTypes objectAtIndexedSubscript:a3];
  v5 = [v4 integerValue];
  if (v5 == 2 || v5 == 1)
  {
    v6 = *MEMORY[0x277D76F30];
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      [(WDDocumentListDataProvider *)self->_dataProvider customCellHeight];
      v6 = v7;
    }
  }

  return v6;
}

- (double)_reportSectionEstimatedRowHeight:(int64_t)a3
{
  v4 = [(NSMutableArray *)self->_reportRowTypes objectAtIndexedSubscript:a3];
  v5 = [v4 integerValue];
  if (v5 == 2 || v5 == 1)
  {
    v6 = 44.0;
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      [(WDDocumentListDataProvider *)self->_dataProvider customEstimatedCellHeight];
      v6 = v7;
    }
  }

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:a4];
  v5 = [v4 integerValue];
  if (v5 == 1)
  {
    v6 = *MEMORY[0x277D76F30];
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      HKUIOnePixel();
      v6 = v7;
    }
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:a4];
  v6 = [v5 integerValue];
  if (v6 == 1)
  {
    v7 = 1;
  }

  else if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_reportRowTypes count];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [v7 row];
  v10 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:v8];
  v11 = [v10 integerValue];
  if (v11 == 1)
  {
    v12 = [(WDDocumentOverviewViewController *)self _descriptionSectionCellForTableView:v6 row:v9];
    goto LABEL_5;
  }

  if (!v11)
  {
    v12 = [(WDDocumentOverviewViewController *)self _reportSectionCellForTableView:v6 forIndexPath:v7];
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionTypes, "objectAtIndexedSubscript:", [v6 section]);
  if (![v7 integerValue])
  {
    [(WDDocumentOverviewViewController *)self _selectReportRowForIndexPath:v6];
  }

  [v8 deselectRowAtIndexPath:v6 animated:1];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [v5 row];

  v8 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:v6];
  v9 = [v8 integerValue];
  if (v9 == 1)
  {
    v10 = *MEMORY[0x277D76F30];
  }

  else
  {
    v10 = 0.0;
    if (!v9)
    {
      [(WDDocumentOverviewViewController *)self _reportSectionRowHeight:v7];
      v10 = v11;
    }
  }

  return v10;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [v5 row];

  v8 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:v6];
  v9 = [v8 integerValue];
  if (v9 == 1)
  {
    +[WDDisplayTypeDescriptionTableViewCell minimumHeight];
    goto LABEL_5;
  }

  v10 = 0.0;
  if (!v9)
  {
    [(WDDocumentOverviewViewController *)self _reportSectionEstimatedRowHeight:v7];
LABEL_5:
    v10 = v11;
  }

  return v10;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionTypes, "objectAtIndexedSubscript:", [a4 section]);
  v5 = [v4 integerValue] == 0;

  return v5;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  bodyFont = self->_bodyFont;
  self->_bodyFont = 0;

  v5 = [(WDDocumentOverviewViewController *)self tableView];
  [v5 reloadData];
}

void __62__WDDocumentOverviewViewController__recomputeTotalReportCount__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a2;
  v6 = v9;
  _os_log_error_impl(&dword_251E85000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error counting document samples: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end