@interface MCSectionBasedTableViewController
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)defaultView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_registerCellClass;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation MCSectionBasedTableViewController

- (void)loadView
{
  defaultView = [(MCSectionBasedTableViewController *)self defaultView];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  [defaultView setFrame:?];

  [(MCSectionBasedTableViewController *)self setView:defaultView];
  [(MCSectionBasedTableViewController *)self setSectionBasedTableView:defaultView];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(MCSectionBasedTableViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];
}

- (id)defaultView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MCSectionBasedTableViewController;
  [(MCSectionBasedTableViewController *)&v7 viewDidLoad];
  [(MCSectionBasedTableViewController *)self _registerCellClass];
  sectionBasedTableView = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
  tableView = [sectionBasedTableView tableView];
  [tableView setDelegate:self];

  sectionBasedTableView2 = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
  tableView2 = [sectionBasedTableView2 tableView];
  [tableView2 setDataSource:self];
}

- (void)_registerCellClass
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v4 = [sectionControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(sectionControllers);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        sectionBasedTableView = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
        tableView = [sectionBasedTableView tableView];
        [v8 registerCellClassWithTableView:tableView];

        ++v7;
      }

      while (v5 != v7);
      v5 = [sectionControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  sectionBasedTableView2 = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
  tableView2 = [sectionBasedTableView2 tableView];
  [tableView2 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"sectionHeader"];

  v13 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v4 = [sectionControllers count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v6 = [sectionControllers objectAtIndexedSubscript:section];
  numberOfRows = [v6 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v7 = [sectionControllers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [pathCopy row];

  v9 = [v7 cellForRowAtIndex:v8];

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v7 = [sectionControllers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [pathCopy row];

  [v7 heightForRowAtIndex:v8];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v6 = [sectionControllers objectAtIndexedSubscript:section];
  [v6 heightForHeader];
  v8 = v7;

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sectionControllers = [(MCSectionBasedTableViewController *)self sectionControllers];
  v6 = [sectionControllers objectAtIndexedSubscript:section];
  titleForHeader = [v6 titleForHeader];

  return titleForHeader;
}

@end