@interface DMCManagedMediaViewController
- (DMCManagedMediaViewController)initWithProfileViewModel:(id)model managedApp:(id)app;
- (DMCManagedMediaViewController)initWithProfileViewModel:(id)model managedBook:(id)book;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_profileChanged:(id)changed;
- (void)_reloadTable:(id)table;
- (void)_setup;
- (void)dealloc;
@end

@implementation DMCManagedMediaViewController

- (DMCManagedMediaViewController)initWithProfileViewModel:(id)model managedApp:(id)app
{
  modelCopy = model;
  appCopy = app;
  v12.receiver = self;
  v12.super_class = DMCManagedMediaViewController;
  v9 = [(DMCProfileTableViewController *)&v12 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_app, app);
    objc_storeStrong(&v10->_profileViewModel, model);
    [(DMCManagedMediaViewController *)v10 _setup];
  }

  return v10;
}

- (DMCManagedMediaViewController)initWithProfileViewModel:(id)model managedBook:(id)book
{
  modelCopy = model;
  bookCopy = book;
  v12.receiver = self;
  v12.super_class = DMCManagedMediaViewController;
  v9 = [(DMCProfileTableViewController *)&v12 initWithStyle:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_book, book);
    objc_storeStrong(&v10->_profileViewModel, model);
    [(DMCManagedMediaViewController *)v10 _setup];
  }

  return v10;
}

- (void)_setup
{
  v13.receiver = self;
  v13.super_class = DMCManagedMediaViewController;
  [(DMCProfileTableViewController *)&v13 updateExtendedLayoutIncludesOpaqueBars];
  tableView = [(DMCManagedMediaViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIManagedMediaSummaryCell"];

  tableView2 = [(DMCManagedMediaViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"MCUIManagedMediaDetailsCell"];

  v12.receiver = self;
  v12.super_class = DMCManagedMediaViewController;
  [(DMCProfileTableViewController *)&v12 reloadTableOnContentSizeCategoryChange];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__profileChanged_ name:@"kMCUIProfileDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__reloadTable_ name:@"kMCUIBridgeIconLoadedNotification" object:0];

  v8 = [(DMCManagedMediaViewController *)self app];
  name = [v8 name];
  friendlyName = name;
  if (!name)
  {
    book = [(DMCManagedMediaViewController *)self book];
    friendlyName = [book friendlyName];
  }

  navigationItem = [(DMCManagedMediaViewController *)self navigationItem];
  [navigationItem setTitle:friendlyName];

  if (!name)
  {
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCManagedMediaViewController;
  [(DMCProfileTableViewController *)&v4 dealloc];
}

- (void)_profileChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(DMCManagedMediaViewController *)self app];
  if (v5)
  {
    userInfo = [changedCopy userInfo];
    if (userInfo)
    {
      userInfo2 = [changedCopy userInfo];
      v8 = [userInfo2 objectForKeyedSubscript:@"kMCUIManagedAppsDidChange"];
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  book = [(DMCManagedMediaViewController *)self book];
  if (book)
  {
    userInfo3 = [changedCopy userInfo];
    if (userInfo3)
    {
      userInfo4 = [changedCopy userInfo];
      v13 = [userInfo4 objectForKeyedSubscript:@"kMCUIManagedBooksDidChange"];
      bOOLValue2 = [v13 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }
  }

  else
  {
    bOOLValue2 = 0;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DMCManagedMediaViewController__profileChanged___block_invoke;
  block[3] = &unk_278EE7E50;
  objc_copyWeak(&v16, &location);
  v17 = bOOLValue;
  v18 = bOOLValue2;
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

- (void)_reloadTable:(id)table
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

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(DMCManagedMediaViewController *)self tableView:view];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy row])
  {
    v8 = @"MCUIManagedMediaDetailsCell";
  }

  else
  {
    v8 = @"MCUIManagedMediaSummaryCell";
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(DMCManagedMediaViewController *)self app];

  if (v10)
  {
    book2 = [(DMCManagedMediaViewController *)self app];
    [v9 setManagedApp:book2];
  }

  else
  {
    book = [(DMCManagedMediaViewController *)self book];

    if (!book)
    {
      goto LABEL_9;
    }

    book2 = [(DMCManagedMediaViewController *)self book];
    [v9 setManagedBook:book2];
  }

LABEL_9:

  return v9;
}

@end