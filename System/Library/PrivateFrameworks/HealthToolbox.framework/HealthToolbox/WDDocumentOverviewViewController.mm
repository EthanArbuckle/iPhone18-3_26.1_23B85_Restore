@interface WDDocumentOverviewViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (UIFont)bodyFont;
- (WDDocumentOverviewViewController)initWithDisplayTypes:(id)types profile:(id)profile title:(id)title category:(id)category sidebarIdentifier:(id)identifier;
- (double)_reportSectionEstimatedRowHeight:(int64_t)height;
- (double)_reportSectionRowHeight:(int64_t)height;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_descriptionSectionCellForTableView:(id)view row:(int64_t)row;
- (id)_reportAccessCellForTableView:(id)view forIndexPath:(id)path;
- (id)_reportItemCellForTableView:(id)view row:(int64_t)row;
- (id)_reportSectionCellForTableView:(id)view forIndexPath:(id)path;
- (id)_reportShowAllCellForTableView:(id)view forIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_installSections;
- (void)_pushAccessViewController;
- (void)_pushReportDetailViewControllerForIndexPath:(id)path;
- (void)_pushShowAllViewController;
- (void)_recomputeTotalReportCount;
- (void)_reloadAllData;
- (void)_selectReportRowForIndexPath:(id)path;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation WDDocumentOverviewViewController

- (WDDocumentOverviewViewController)initWithDisplayTypes:(id)types profile:(id)profile title:(id)title category:(id)category sidebarIdentifier:(id)identifier
{
  typesCopy = types;
  profileCopy = profile;
  titleCopy = title;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = WDDocumentOverviewViewController;
  v15 = [(HKTableViewController *)&v22 initWithUsingInsetStyling:1];
  v16 = v15;
  if (v15)
  {
    [(WDDocumentOverviewViewController *)v15 setTitle:titleCopy];
    v17 = [typesCopy objectAtIndexedSubscript:0];
    displayType = v16->_displayType;
    v16->_displayType = v17;

    objc_storeStrong(&v16->_profile, profile);
    objc_storeStrong(&v16->_sidebarSelectionIdentifier, identifier);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v17[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v7 = [(WDDocumentOverviewViewController *)self registerForTraitChanges:v6 withTarget:self action:sel_widthDesignationDidChangeWithTraitEnvironment_previousTraitCollection_];

  navigationItem = [(WDDocumentOverviewViewController *)self navigationItem];
  [navigationItem _setSupportsTwoLineLargeTitles:1];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = WDDocumentOverviewViewController;
  [(WDDocumentOverviewViewController *)&v4 dealloc];
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  traitCollection = [environment traitCollection];
  [traitCollection valueForNSIntegerTrait:objc_opt_class()];

  HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  tableView = [(WDDocumentOverviewViewController *)self tableView];
  [tableView _setSectionContentInset:{0.0, v9, 0.0, v13}];

  view = [(WDDocumentOverviewViewController *)self view];
  [view hk_safeAreaAdjustedEdgeInsets:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  navigationItem = [(WDDocumentOverviewViewController *)self navigationItem];
  [navigationItem largeTitleInsets];
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

  navigationItem2 = [(WDDocumentOverviewViewController *)self navigationItem];
  [navigationItem2 setLargeTitleInsets:{v17, v19, v21, v23}];

  navigationController = [(WDDocumentOverviewViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setNeedsLayout];
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
  selfCopy = self;
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
  tableView = [(WDDocumentOverviewViewController *)self tableView];
  [tableView reloadData];
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

- (id)_reportShowAllCellForTableView:(id)view forIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"showAllDataIdentifier", path}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"showAllDataIdentifier"];
    [v5 setAccessoryType:1];
  }

  textLabel = [v5 textLabel];
  v7 = WDBundle();
  v8 = [v7 localizedStringForKey:@"SHOW_ALL_RECORDS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  [textLabel setText:v8];

  textLabel2 = [v5 textLabel];
  [textLabel2 setAccessibilityIdentifier:@"UIA.Health.CDA.ShowAllRecords"];

  if (self->_totalReportCount < 1)
  {
    detailTextLabel = [v5 detailTextLabel];
    [detailTextLabel setText:&stru_28641D9B8];
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    detailTextLabel = HKLocalizedStringForNumberWithTemplate();

    detailTextLabel2 = [v5 detailTextLabel];
    [detailTextLabel2 setText:detailTextLabel];
  }

  textLabel3 = [v5 textLabel];
  bodyFont = [(WDDocumentOverviewViewController *)self bodyFont];
  [textLabel3 setFont:bodyFont];

  detailTextLabel3 = [v5 detailTextLabel];
  bodyFont2 = [(WDDocumentOverviewViewController *)self bodyFont];
  [detailTextLabel3 setFont:bodyFont2];

  return v5;
}

- (id)_reportAccessCellForTableView:(id)view forIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"accessDataIdentifier" forIndexPath:path];
  [v5 setAccessoryType:1];
  textLabel = [v5 textLabel];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  [textLabel setText:v8];

  textLabel2 = [v5 textLabel];
  bodyFont = [(WDDocumentOverviewViewController *)self bodyFont];
  [textLabel2 setFont:bodyFont];

  return v5;
}

- (id)_reportItemCellForTableView:(id)view row:(int64_t)row
{
  dataProvider = self->_dataProvider;
  viewCopy = view;
  v8 = [(WDSampleListDataProvider *)dataProvider objectAtIndex:row forSection:0];
  v9 = [MEMORY[0x277CCAA70] indexPathForRow:row inSection:0];
  v10 = [(WDDocumentListDataProvider *)self->_dataProvider customCellForObject:v8 indexPath:v9 tableView:viewCopy];

  return v10;
}

- (id)_reportSectionCellForTableView:(id)view forIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  v9 = [(NSMutableArray *)self->_reportRowTypes objectAtIndexedSubscript:v8];
  integerValue = [v9 integerValue];
  switch(integerValue)
  {
    case 2:
      v11 = [(WDDocumentOverviewViewController *)self _reportAccessCellForTableView:viewCopy forIndexPath:pathCopy];
      goto LABEL_7;
    case 1:
      v11 = [(WDDocumentOverviewViewController *)self _reportShowAllCellForTableView:viewCopy forIndexPath:pathCopy];
      goto LABEL_7;
    case 0:
      v11 = [(WDDocumentOverviewViewController *)self _reportItemCellForTableView:viewCopy row:v8];
LABEL_7:
      v12 = v11;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_descriptionSectionCellForTableView:(id)view row:(int64_t)row
{
  v4 = [[WDDisplayTypeDescriptionTableViewCell alloc] initWithDisplayType:self->_displayType showAttributionText:1 reuseIdentifier:@"descriptionCellReuse"];

  return v4;
}

- (void)_pushReportDetailViewControllerForIndexPath:(id)path
{
  v5 = [(WDSampleListDataProvider *)self->_dataProvider viewControllerForItemAtIndexPath:path];
  navigationItem = [v5 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(WDDocumentOverviewViewController *)self showAdaptively:v5 sender:self];
}

- (void)_pushShowAllViewController
{
  displayType = self->_displayType;
  profile = self->_profile;
  unitController = [(WDProfile *)profile unitController];
  v8 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:unitController];

  v6 = [[WDDataListViewController alloc] initWithDisplayType:self->_displayType profile:self->_profile dataProvider:v8 usingInsetStyling:1];
  navigationItem = [(WDDataListViewController *)v6 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(WDDocumentOverviewViewController *)self showAdaptively:v6 sender:self];
}

- (void)_pushAccessViewController
{
  v8 = [MEMORY[0x277D12828] categoryWithID:{-[HKDisplayType categoryIdentifier](self->_displayType, "categoryIdentifier")}];
  v3 = [WDDisplayTypeDataSourcesTableViewController alloc];
  displayType = self->_displayType;
  sourceOrderController = [(WDProfile *)self->_profile sourceOrderController];
  v6 = [(WDDisplayTypeDataSourcesTableViewController *)v3 initWithDisplayType:displayType displayCategory:v8 sourceOrderController:sourceOrderController profile:self->_profile];

  navigationItem = [(WDDisplayTypeDataSourcesTableViewController *)v6 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(WDDocumentOverviewViewController *)self showAdaptively:v6 sender:self];
}

- (void)_selectReportRowForIndexPath:(id)path
{
  pathCopy = path;
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_reportRowTypes, "objectAtIndexedSubscript:", [pathCopy row]);
  integerValue = [v4 integerValue];
  switch(integerValue)
  {
    case 2:
      [(WDDocumentOverviewViewController *)self _pushAccessViewController];
      break;
    case 1:
      [(WDDocumentOverviewViewController *)self _pushShowAllViewController];
      break;
    case 0:
      [(WDDocumentOverviewViewController *)self _pushReportDetailViewControllerForIndexPath:pathCopy];
      break;
  }
}

- (double)_reportSectionRowHeight:(int64_t)height
{
  v4 = [(NSMutableArray *)self->_reportRowTypes objectAtIndexedSubscript:height];
  integerValue = [v4 integerValue];
  if (integerValue == 2 || integerValue == 1)
  {
    v6 = *MEMORY[0x277D76F30];
  }

  else
  {
    v6 = 0.0;
    if (!integerValue)
    {
      [(WDDocumentListDataProvider *)self->_dataProvider customCellHeight];
      v6 = v7;
    }
  }

  return v6;
}

- (double)_reportSectionEstimatedRowHeight:(int64_t)height
{
  v4 = [(NSMutableArray *)self->_reportRowTypes objectAtIndexedSubscript:height];
  integerValue = [v4 integerValue];
  if (integerValue == 2 || integerValue == 1)
  {
    v6 = 44.0;
  }

  else
  {
    v6 = 0.0;
    if (!integerValue)
    {
      [(WDDocumentListDataProvider *)self->_dataProvider customEstimatedCellHeight];
      v6 = v7;
    }
  }

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:section];
  integerValue = [v4 integerValue];
  if (integerValue == 1)
  {
    v6 = *MEMORY[0x277D76F30];
  }

  else
  {
    v6 = 0.0;
    if (!integerValue)
    {
      HKUIOnePixel();
      v6 = v7;
    }
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:section];
  integerValue = [v5 integerValue];
  if (integerValue == 1)
  {
    v7 = 1;
  }

  else if (integerValue)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_reportRowTypes count];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v9 = [pathCopy row];
  v10 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:section];
  integerValue = [v10 integerValue];
  if (integerValue == 1)
  {
    v12 = [(WDDocumentOverviewViewController *)self _descriptionSectionCellForTableView:viewCopy row:v9];
    goto LABEL_5;
  }

  if (!integerValue)
  {
    v12 = [(WDDocumentOverviewViewController *)self _reportSectionCellForTableView:viewCopy forIndexPath:pathCopy];
LABEL_5:
    v13 = v12;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionTypes, "objectAtIndexedSubscript:", [pathCopy section]);
  if (![v7 integerValue])
  {
    [(WDDocumentOverviewViewController *)self _selectReportRowForIndexPath:pathCopy];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v7 = [pathCopy row];

  v8 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:section];
  integerValue = [v8 integerValue];
  if (integerValue == 1)
  {
    v10 = *MEMORY[0x277D76F30];
  }

  else
  {
    v10 = 0.0;
    if (!integerValue)
    {
      [(WDDocumentOverviewViewController *)self _reportSectionRowHeight:v7];
      v10 = v11;
    }
  }

  return v10;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v7 = [pathCopy row];

  v8 = [(NSMutableArray *)self->_sectionTypes objectAtIndexedSubscript:section];
  integerValue = [v8 integerValue];
  if (integerValue == 1)
  {
    +[WDDisplayTypeDescriptionTableViewCell minimumHeight];
    goto LABEL_5;
  }

  v10 = 0.0;
  if (!integerValue)
  {
    [(WDDocumentOverviewViewController *)self _reportSectionEstimatedRowHeight:v7];
LABEL_5:
    v10 = v11;
  }

  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionTypes, "objectAtIndexedSubscript:", [path section]);
  v5 = [v4 integerValue] == 0;

  return v5;
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  bodyFont = self->_bodyFont;
  self->_bodyFont = 0;

  tableView = [(WDDocumentOverviewViewController *)self tableView];
  [tableView reloadData];
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