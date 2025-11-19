@interface MCSectionBasedTableViewController
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)defaultView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_registerCellClass;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation MCSectionBasedTableViewController

- (void)loadView
{
  v6 = [(MCSectionBasedTableViewController *)self defaultView];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  [v6 setFrame:?];

  [(MCSectionBasedTableViewController *)self setView:v6];
  [(MCSectionBasedTableViewController *)self setSectionBasedTableView:v6];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(MCSectionBasedTableViewController *)self view];
  [v5 setBackgroundColor:v4];
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
  v3 = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
  v4 = [v3 tableView];
  [v4 setDelegate:self];

  v5 = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
  v6 = [v5 tableView];
  [v6 setDataSource:self];
}

- (void)_registerCellClass
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
        v10 = [v9 tableView];
        [v8 registerCellClassWithTableView:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [(MCSectionBasedTableViewController *)self sectionBasedTableView];
  v12 = [v11 tableView];
  [v12 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"sectionHeader"];

  v13 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 numberOfRows];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v5 row];

  v9 = [v7 cellForRowAtIndex:v8];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v5 row];

  [v7 heightForRowAtIndex:v8];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v6 = [v5 objectAtIndexedSubscript:a4];
  [v6 heightForHeader];
  v8 = v7;

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(MCSectionBasedTableViewController *)self sectionControllers];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 titleForHeader];

  return v7;
}

@end