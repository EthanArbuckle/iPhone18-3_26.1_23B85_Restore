@interface MCUITableViewController
- (MCUITableViewController)init;
- (MCUITableViewController)initWithStyle:(int64_t)style;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)reloadTableOnContentSizeCategoryChange;
- (void)updateExtendedLayoutIncludesOpaqueBars;
@end

@implementation MCUITableViewController

- (MCUITableViewController)init
{
  v6.receiver = self;
  v6.super_class = MCUITableViewController;
  v2 = [(MCUITableViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    tableView = [(MCUITableViewController *)v2 tableView];
    [tableView setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v3;
}

- (MCUITableViewController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = MCUITableViewController;
  v3 = [(MCUITableViewController *)&v7 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    tableView = [(MCUITableViewController *)v3 tableView];
    [tableView setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCUITableViewController;
  [(MCUITableViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  appearance = [MEMORY[0x277D3FA48] appearance];
  -[MCUITableViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [appearance extendedLayoutIncludesOpaqueBars]);
}

- (void)reloadTableOnContentSizeCategoryChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  tableView = [(MCUITableViewController *)self tableView];
  [tableView reloadData];
}

@end