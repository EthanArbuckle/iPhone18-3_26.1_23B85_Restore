@interface MCUITableViewController
- (MCUITableViewController)init;
- (MCUITableViewController)initWithStyle:(int64_t)a3;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
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
    v4 = [(MCUITableViewController *)v2 tableView];
    [v4 setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v3;
}

- (MCUITableViewController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = MCUITableViewController;
  v3 = [(MCUITableViewController *)&v7 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(MCUITableViewController *)v3 tableView];
    [v5 setCellLayoutMarginsFollowReadableWidth:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCUITableViewController;
  [(MCUITableViewController *)&v4 dealloc];
}

- (void)updateExtendedLayoutIncludesOpaqueBars
{
  v3 = [MEMORY[0x277D3FA48] appearance];
  -[MCUITableViewController setExtendedLayoutIncludesOpaqueBars:](self, "setExtendedLayoutIncludesOpaqueBars:", [v3 extendedLayoutIncludesOpaqueBars]);
}

- (void)reloadTableOnContentSizeCategoryChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
}

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  v3 = [(MCUITableViewController *)self tableView];
  [v3 reloadData];
}

@end