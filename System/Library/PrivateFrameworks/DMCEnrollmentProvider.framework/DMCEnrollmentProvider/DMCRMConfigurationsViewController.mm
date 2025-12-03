@interface DMCRMConfigurationsViewController
- (DMCRMConfigurationsViewController)initWithRMConfigurationsSpecifierProvider:(id)provider scope:(int64_t)scope;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_rmConfigsChanged:(id)changed;
- (void)_setSections;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation DMCRMConfigurationsViewController

- (DMCRMConfigurationsViewController)initWithRMConfigurationsSpecifierProvider:(id)provider scope:(int64_t)scope
{
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = DMCRMConfigurationsViewController;
  v7 = [(DMCProfileTableViewController *)&v18 initWithStyle:2];
  if (v7)
  {
    isSharediPad = [MEMORY[0x277D03538] isSharediPad];
    v9 = @"DMC_USER_CONFIGURATIONS_TITLE";
    if (scope == 1)
    {
      v9 = @"DMC_DEVICE_CONFIGURATIONS_TITLE";
    }

    if (isSharediPad)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"DMC_CONFIGURATIONS_TITLE";
    }

    v11 = DMCEnrollmentLocalizedString(v10);
    [(DMCRMConfigurationsViewController *)v7 setTitle:v11];

    v17.receiver = v7;
    v17.super_class = DMCRMConfigurationsViewController;
    [(DMCProfileTableViewController *)&v17 updateExtendedLayoutIncludesOpaqueBars];
    v16.receiver = v7;
    v16.super_class = DMCRMConfigurationsViewController;
    [(DMCProfileTableViewController *)&v16 reloadTableOnContentSizeCategoryChange];
    [(DMCRMConfigurationsViewController *)v7 setRmSpecifierProvider:providerCopy];
    rmSpecifierProvider = [(DMCRMConfigurationsViewController *)v7 rmSpecifierProvider];
    tableView = [(DMCRMConfigurationsViewController *)v7 tableView];
    [rmSpecifierProvider registerCustomCellClassesInTableView:tableView];

    [(DMCRMConfigurationsViewController *)v7 _setSections];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__rmConfigsChanged_ name:@"RMConfigurationsSpecifiersDidChangeNotification" object:0];
  }

  return v7;
}

- (void)_setSections
{
  rmSpecifierProvider = [(DMCRMConfigurationsViewController *)self rmSpecifierProvider];
  tableView = [(DMCRMConfigurationsViewController *)self tableView];
  v5 = [rmSpecifierProvider tableSectionCellsForSpecifiersInTableView:tableView];
  [(DMCRMConfigurationsViewController *)self setRmTableSectionCells:v5];

  rmSpecifierProvider2 = [(DMCRMConfigurationsViewController *)self rmSpecifierProvider];
  sectionTitles = [rmSpecifierProvider2 sectionTitles];
  [(DMCRMConfigurationsViewController *)self setRmSectionTitles:sectionTitles];
}

- (void)_rmConfigsChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__DMCRMConfigurationsViewController__rmConfigsChanged___block_invoke;
  v3[3] = &unk_278EE7880;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __55__DMCRMConfigurationsViewController__rmConfigsChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setSections];
    v2 = [v3 tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  rmTableSectionCells = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v4 = [rmTableSectionCells count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  rmTableSectionCells = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v6 = [rmTableSectionCells objectAtIndexedSubscript:section];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  rmSectionTitles = [(DMCRMConfigurationsViewController *)self rmSectionTitles];
  v6 = [rmSectionTitles objectAtIndexedSubscript:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  rmTableSectionCells = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v7 = [rmTableSectionCells objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  rmTableSectionCells = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v6 = [rmTableSectionCells objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  detailViewController = [v7 detailViewController];

  if (detailViewController)
  {
    [(UIViewController *)self dmc_pushViewController:detailViewController animated:1];
  }

  else
  {
    NSLog(&cfstr_Dmcrmconfigura.isa, pathCopy);
  }
}

@end