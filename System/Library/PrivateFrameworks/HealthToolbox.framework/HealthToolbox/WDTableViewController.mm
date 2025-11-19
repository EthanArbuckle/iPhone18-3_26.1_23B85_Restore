@interface WDTableViewController
- (WDTableViewController)initWithCoder:(id)a3;
- (WDTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WDTableViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_sectionAtIndexPath:(id)a3;
- (id)indexPathForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addObservers;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)reloadTable;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WDTableViewController

- (void)_addObservers
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
  [v3 addObserver:self selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];
}

- (WDTableViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = WDTableViewController;
  v3 = [(WDTableViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(WDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (WDTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDTableViewController;
  v4 = [(WDTableViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(WDTableViewController *)v4 _addObservers];
  }

  return v5;
}

- (WDTableViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WDTableViewController;
  v3 = [(WDTableViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(WDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];

  v4.receiver = self;
  v4.super_class = WDTableViewController;
  [(WDTableViewController *)&v4 dealloc];
}

- (void)applicationWillEnterForeground
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_tableSections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) applicationWillEnterForeground];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidEnterBackground
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_tableSections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) applicationDidEnterBackground];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WDTableViewController;
  [(HKTableViewController *)&v21 viewDidLoad];
  v3 = [(WDTableViewController *)self tableView];
  v4 = [(WDTableViewController *)self tableView];
  [v4 rowHeight];
  [v3 setEstimatedRowHeight:?];

  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [objc_opt_class() tableViewSectionClasses];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = v12 + 1;
        v13 = [objc_alloc(*(*(&v17 + 1) + 8 * v11)) initWithDelegate:self atSection:v12];
        [v13 setUpWithTableViewController:self];
        [v5 addObject:v13];

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  tableSections = self->_tableSections;
  self->_tableSections = v14;

  [(WDTableViewController *)self reloadTable];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)reloadTable
{
  v2 = [(WDTableViewController *)self tableView];
  [v2 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WDTableViewController *)self _section:a4];
  v5 = [v4 numberOfRows];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDTableViewController *)self _sectionAtIndexPath:v6];
  v9 = [v6 row];

  v10 = [v8 cellForRow:v9 table:v7];

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WDTableViewController *)self _section:a4];
  v5 = [v4 titleForHeader];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(WDTableViewController *)self _section:a4];
  v5 = [v4 titleForFooter];

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(WDTableViewController *)self _section:a4];
  v8 = [v7 viewForFooter:v6];

  return v8;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WDTableViewController *)self _sectionAtIndexPath:v5];
  v7 = [v5 row];

  [v6 estimatedHeightForRow:v7];
  v9 = v8;

  return v9;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(WDTableViewController *)self _sectionAtIndexPath:v5];
  v6 = [v5 row];

  [v7 accessoryButtonTappedForRow:v6];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WDTableViewController *)self _sectionAtIndexPath:v5];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "row")}];
  v8 = [v6 willSelectRow:v7];

  if (v8)
  {
    v9 = [v8 integerValue];
    if (v9 == [v5 row])
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDTableViewController *)self _sectionAtIndexPath:v6];
  v9 = [v6 row];
  v10 = [v7 cellForRowAtIndexPath:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__WDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_2796E6B90;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 didSelectRow:v9 representedByCell:v10 withCompletion:v12];
}

void __59__WDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    block[3] = &unk_2796E6B68;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    v7 = a3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__WDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:*(a1 + 48)];
}

- (id)_sectionAtIndexPath:(id)a3
{
  tableSections = self->_tableSections;
  v4 = [a3 section];

  return [(NSArray *)tableSections objectAtIndexedSubscript:v4];
}

- (id)indexPathForCell:(id)a3
{
  v4 = a3;
  v5 = [(WDTableViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  return v6;
}

@end