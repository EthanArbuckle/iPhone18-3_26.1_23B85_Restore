@interface WDTableViewController
- (WDTableViewController)initWithCoder:(id)coder;
- (WDTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WDTableViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_sectionAtIndexPath:(id)path;
- (id)indexPathForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addObservers;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)reloadTable;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WDTableViewController

- (void)_addObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];
}

- (WDTableViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = WDTableViewController;
  v3 = [(WDTableViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(WDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (WDTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = WDTableViewController;
  v4 = [(WDTableViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(WDTableViewController *)v4 _addObservers];
  }

  return v5;
}

- (WDTableViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WDTableViewController;
  v3 = [(WDTableViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(WDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];

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
  tableView = [(WDTableViewController *)self tableView];
  tableView2 = [(WDTableViewController *)self tableView];
  [tableView2 rowHeight];
  [tableView setEstimatedRowHeight:?];

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  tableViewSectionClasses = [objc_opt_class() tableViewSectionClasses];
  v7 = [tableViewSectionClasses countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(tableViewSectionClasses);
        }

        v9 = v12 + 1;
        v13 = [objc_alloc(*(*(&v17 + 1) + 8 * v11)) initWithDelegate:self atSection:v12];
        [v13 setUpWithTableViewController:self];
        [array addObject:v13];

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [tableViewSectionClasses countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  tableSections = self->_tableSections;
  self->_tableSections = v14;

  [(WDTableViewController *)self reloadTable];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)reloadTable
{
  tableView = [(WDTableViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WDTableViewController *)self _section:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(WDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v9 = [pathCopy row];

  v10 = [v8 cellForRow:v9 table:viewCopy];

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WDTableViewController *)self _section:section];
  titleForHeader = [v4 titleForHeader];

  return titleForHeader;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(WDTableViewController *)self _section:section];
  titleForFooter = [v4 titleForFooter];

  return titleForFooter;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(WDTableViewController *)self _section:section];
  v8 = [v7 viewForFooter:viewCopy];

  return v8;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(WDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v7 = [pathCopy row];

  [v6 estimatedHeightForRow:v7];
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(WDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v6 = [pathCopy row];

  [v7 accessoryButtonTappedForRow:v6];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(WDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "row")}];
  v8 = [v6 willSelectRow:v7];

  if (v8)
  {
    integerValue = [v8 integerValue];
    if (integerValue == [pathCopy row])
    {
      v10 = pathCopy;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(WDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v9 = [pathCopy row];
  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__WDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_2796E6B90;
  v12[4] = self;
  v13 = pathCopy;
  v11 = pathCopy;
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

- (id)_sectionAtIndexPath:(id)path
{
  tableSections = self->_tableSections;
  section = [path section];

  return [(NSArray *)tableSections objectAtIndexedSubscript:section];
}

- (id)indexPathForCell:(id)cell
{
  cellCopy = cell;
  tableView = [(WDTableViewController *)self tableView];
  v6 = [tableView indexPathForCell:cellCopy];

  return v6;
}

@end