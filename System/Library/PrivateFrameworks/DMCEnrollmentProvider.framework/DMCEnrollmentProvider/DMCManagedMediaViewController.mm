@interface DMCManagedMediaViewController
- (DMCManagedMediaViewController)initWithProfileViewModel:(id)a3 managedApp:(id)a4;
- (DMCManagedMediaViewController)initWithProfileViewModel:(id)a3 managedBook:(id)a4;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_profileChanged:(id)a3;
- (void)_reloadTable:(id)a3;
- (void)_setup;
- (void)dealloc;
@end

@implementation DMCManagedMediaViewController

- (DMCManagedMediaViewController)initWithProfileViewModel:(id)a3 managedApp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DMCManagedMediaViewController;
  v9 = [(DMCProfileTableViewController *)&v12 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_app, a4);
    objc_storeStrong(&v10->_profileViewModel, a3);
    [(DMCManagedMediaViewController *)v10 _setup];
  }

  return v10;
}

- (DMCManagedMediaViewController)initWithProfileViewModel:(id)a3 managedBook:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DMCManagedMediaViewController;
  v9 = [(DMCProfileTableViewController *)&v12 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_book, a4);
    objc_storeStrong(&v10->_profileViewModel, a3);
    [(DMCManagedMediaViewController *)v10 _setup];
  }

  return v10;
}

- (void)_setup
{
  v13.receiver = self;
  v13.super_class = DMCManagedMediaViewController;
  [(DMCProfileTableViewController *)&v13 updateExtendedLayoutIncludesOpaqueBars];
  v4 = [(DMCManagedMediaViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIManagedMediaSummaryCell"];

  v5 = [(DMCManagedMediaViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIManagedMediaDetailsCell"];

  v12.receiver = self;
  v12.super_class = DMCManagedMediaViewController;
  [(DMCProfileTableViewController *)&v12 reloadTableOnContentSizeCategoryChange];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__profileChanged_ name:@"kMCUIProfileDidChangeNotification" object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__reloadTable_ name:@"kMCUIBridgeIconLoadedNotification" object:0];

  v8 = [(DMCManagedMediaViewController *)self app];
  v9 = [v8 name];
  v10 = v9;
  if (!v9)
  {
    v2 = [(DMCManagedMediaViewController *)self book];
    v10 = [v2 friendlyName];
  }

  v11 = [(DMCManagedMediaViewController *)self navigationItem];
  [v11 setTitle:v10];

  if (!v9)
  {
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCManagedMediaViewController;
  [(DMCProfileTableViewController *)&v4 dealloc];
}

- (void)_profileChanged:(id)a3
{
  v4 = a3;
  v5 = [(DMCManagedMediaViewController *)self app];
  if (v5)
  {
    v6 = [v4 userInfo];
    if (v6)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKeyedSubscript:@"kMCUIManagedAppsDidChange"];
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [(DMCManagedMediaViewController *)self book];
  if (v10)
  {
    v11 = [v4 userInfo];
    if (v11)
    {
      v12 = [v4 userInfo];
      v13 = [v12 objectForKeyedSubscript:@"kMCUIManagedBooksDidChange"];
      v14 = [v13 BOOLValue];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DMCManagedMediaViewController__profileChanged___block_invoke;
  block[3] = &unk_278EE7E50;
  objc_copyWeak(&v16, &location);
  v17 = v9;
  v18 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __49__DMCManagedMediaViewController__profileChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      v3 = [WeakRetained profileViewModel];
      v4 = [v9 app];
      v5 = [v4 bundleID];
      v6 = [v3 managesAppID:v5];
    }

    else
    {
      if (*(a1 + 41) != 1)
      {
        v8 = [WeakRetained tableView];
        [v8 reloadData];

LABEL_9:
        WeakRetained = v9;
        goto LABEL_10;
      }

      v3 = [WeakRetained profileViewModel];
      v4 = [v9 book];
      v5 = [v4 persistentID];
      v6 = [v3 managesBook:v5];
    }

    v7 = v6;

    WeakRetained = v9;
    if (v7)
    {
      goto LABEL_10;
    }

    [v9 dmc_popViewControllerAnimated:1];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_reloadTable:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__DMCManagedMediaViewController__reloadTable___block_invoke;
  v3[3] = &unk_278EE7880;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __46__DMCManagedMediaViewController__reloadTable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(DMCManagedMediaViewController *)self tableView:a3];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 row])
  {
    v8 = @"MCUIManagedMediaDetailsCell";
  }

  else
  {
    v8 = @"MCUIManagedMediaSummaryCell";
  }

  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(DMCManagedMediaViewController *)self app];

  if (v10)
  {
    v11 = [(DMCManagedMediaViewController *)self app];
    [v9 setManagedApp:v11];
  }

  else
  {
    v12 = [(DMCManagedMediaViewController *)self book];

    if (!v12)
    {
      goto LABEL_9;
    }

    v11 = [(DMCManagedMediaViewController *)self book];
    [v9 setManagedBook:v11];
  }

LABEL_9:

  return v9;
}

@end