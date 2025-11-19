@interface DMCProfileTableViewController
- (DMCProfileTableViewController)init;
- (DMCProfileTableViewController)initWithStyle:(int64_t)a3;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)hideProgressInNavBarShowBackButton:(BOOL)a3;
- (void)reloadTableOnContentSizeCategoryChange;
- (void)showProgressInNavBar;
- (void)updateExtendedLayoutIncludesOpaqueBars;
@end

@implementation DMCProfileTableViewController

- (DMCProfileTableViewController)init
{
  v6.receiver = self;
  v6.super_class = DMCProfileTableViewController;
  v2 = [(DMCProfileTableViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(DMCProfileTableViewController *)v2 tableView];
    [v4 setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v3;
}

- (DMCProfileTableViewController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = DMCProfileTableViewController;
  v3 = [(DMCProfileTableViewController *)&v7 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(DMCProfileTableViewController *)v3 tableView];
    [v5 setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileTableViewController;
  [(DMCProfileTableViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  v3 = [MEMORY[0x277D3FA48] appearance];
  -[DMCProfileTableViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [v3 extendedLayoutIncludesOpaqueBars]);
}

- (void)reloadTableOnContentSizeCategoryChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
}

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  v3 = [(DMCProfileTableViewController *)self tableView];
  [v3 reloadData];
}

- (void)showProgressInNavBar
{
  v9 = [MEMORY[0x277CCACA8] DMCMakeUUID];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  v4 = viewControllerPointerToIdentifierMap();
  [v4 setObject:v9 forKeyedSubscript:v3];

  v5 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  v6 = [(DMCProfileTableViewController *)self navigationItem];
  [v5 startAnimatingInNavItem:v6 forIdentifier:v9 hideBackButton:1];

  v7 = [(DMCProfileTableViewController *)self view];
  [v7 setUserInteractionEnabled:0];

  v8 = [(DMCProfileTableViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v8);
}

- (void)hideProgressInNavBarShowBackButton:(BOOL)a3
{
  v3 = a3;
  v12 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  v5 = viewControllerPointerToIdentifierMap();
  v6 = [v5 objectForKeyedSubscript:v12];

  if (v6)
  {
    v7 = viewControllerPointerToIdentifierMap();
    [v7 removeObjectForKey:v12];

    v8 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
    [v8 stopAnimatingForIdentifier:v6];

    if (v3)
    {
      v9 = [(DMCProfileTableViewController *)self navigationItem];
      [v9 setHidesBackButton:0 animated:1];
    }
  }

  v10 = [(DMCProfileTableViewController *)self view];
  [v10 setUserInteractionEnabled:1];

  v11 = [(DMCProfileTableViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v11);
}

@end