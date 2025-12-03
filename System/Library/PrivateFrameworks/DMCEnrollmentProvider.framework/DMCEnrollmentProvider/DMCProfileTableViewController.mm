@interface DMCProfileTableViewController
- (DMCProfileTableViewController)init;
- (DMCProfileTableViewController)initWithStyle:(int64_t)style;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)hideProgressInNavBarShowBackButton:(BOOL)button;
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
    tableView = [(DMCProfileTableViewController *)v2 tableView];
    [tableView setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v3;
}

- (DMCProfileTableViewController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = DMCProfileTableViewController;
  v3 = [(DMCProfileTableViewController *)&v7 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    tableView = [(DMCProfileTableViewController *)v3 tableView];
    [tableView setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileTableViewController;
  [(DMCProfileTableViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  appearance = [MEMORY[0x277D3FA48] appearance];
  -[DMCProfileTableViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [appearance extendedLayoutIncludesOpaqueBars]);
}

- (void)reloadTableOnContentSizeCategoryChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  tableView = [(DMCProfileTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)showProgressInNavBar
{
  dMCMakeUUID = [MEMORY[0x277CCACA8] DMCMakeUUID];
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  v4 = viewControllerPointerToIdentifierMap();
  [v4 setObject:dMCMakeUUID forKeyedSubscript:v3];

  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(DMCProfileTableViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:dMCMakeUUID hideBackButton:1];

  view = [(DMCProfileTableViewController *)self view];
  [view setUserInteractionEnabled:0];

  navigationItem2 = [(DMCProfileTableViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem2);
}

- (void)hideProgressInNavBarShowBackButton:(BOOL)button
{
  buttonCopy = button;
  v12 = [MEMORY[0x277CCAE60] valueWithPointer:self];
  v5 = viewControllerPointerToIdentifierMap();
  v6 = [v5 objectForKeyedSubscript:v12];

  if (v6)
  {
    v7 = viewControllerPointerToIdentifierMap();
    [v7 removeObjectForKey:v12];

    mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
    [mEMORY[0x277D3FA90] stopAnimatingForIdentifier:v6];

    if (buttonCopy)
    {
      navigationItem = [(DMCProfileTableViewController *)self navigationItem];
      [navigationItem setHidesBackButton:0 animated:1];
    }
  }

  view = [(DMCProfileTableViewController *)self view];
  [view setUserInteractionEnabled:1];

  navigationItem2 = [(DMCProfileTableViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem2);
}

@end