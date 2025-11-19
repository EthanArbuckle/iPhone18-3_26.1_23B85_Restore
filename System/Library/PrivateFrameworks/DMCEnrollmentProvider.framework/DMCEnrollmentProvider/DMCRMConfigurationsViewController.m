@interface DMCRMConfigurationsViewController
- (DMCRMConfigurationsViewController)initWithRMConfigurationsSpecifierProvider:(id)a3 scope:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_rmConfigsChanged:(id)a3;
- (void)_setSections;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation DMCRMConfigurationsViewController

- (DMCRMConfigurationsViewController)initWithRMConfigurationsSpecifierProvider:(id)a3 scope:(int64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = DMCRMConfigurationsViewController;
  v7 = [(DMCProfileTableViewController *)&v18 initWithStyle:2];
  if (v7)
  {
    v8 = [MEMORY[0x277D03538] isSharediPad];
    v9 = @"DMC_USER_CONFIGURATIONS_TITLE";
    if (a4 == 1)
    {
      v9 = @"DMC_DEVICE_CONFIGURATIONS_TITLE";
    }

    if (v8)
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
    [(DMCRMConfigurationsViewController *)v7 setRmSpecifierProvider:v6];
    v12 = [(DMCRMConfigurationsViewController *)v7 rmSpecifierProvider];
    v13 = [(DMCRMConfigurationsViewController *)v7 tableView];
    [v12 registerCustomCellClassesInTableView:v13];

    [(DMCRMConfigurationsViewController *)v7 _setSections];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel__rmConfigsChanged_ name:@"RMConfigurationsSpecifiersDidChangeNotification" object:0];
  }

  return v7;
}

- (void)_setSections
{
  v3 = [(DMCRMConfigurationsViewController *)self rmSpecifierProvider];
  v4 = [(DMCRMConfigurationsViewController *)self tableView];
  v5 = [v3 tableSectionCellsForSpecifiersInTableView:v4];
  [(DMCRMConfigurationsViewController *)self setRmTableSectionCells:v5];

  v7 = [(DMCRMConfigurationsViewController *)self rmSpecifierProvider];
  v6 = [v7 sectionTitles];
  [(DMCRMConfigurationsViewController *)self setRmSectionTitles:v6];
}

- (void)_rmConfigsChanged:(id)a3
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(DMCRMConfigurationsViewController *)self rmSectionTitles];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v5 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(DMCRMConfigurationsViewController *)self rmTableSectionCells];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
  v8 = [v7 detailViewController];

  if (v8)
  {
    [(UIViewController *)self dmc_pushViewController:v8 animated:1];
  }

  else
  {
    NSLog(&cfstr_Dmcrmconfigura.isa, v9);
  }
}

@end