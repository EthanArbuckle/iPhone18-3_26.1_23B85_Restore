@interface HRWDTableViewController
- (HRWDTableViewController)initWithCoder:(id)coder;
- (HRWDTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HRWDTableViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_sectionAtIndexPath:(id)path;
- (id)indexPathForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addObservers;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)pushViewController:(id)controller;
- (void)reloadSection:(unint64_t)section animated:(BOOL)animated;
- (void)reloadTable;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HRWDTableViewController

- (void)_addObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
}

- (HRWDTableViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = HRWDTableViewController;
  v3 = [(HRWDTableViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(HRWDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (HRWDTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = HRWDTableViewController;
  v4 = [(HRWDTableViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(HRWDTableViewController *)v4 _addObservers];
  }

  return v5;
}

- (HRWDTableViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HRWDTableViewController;
  v3 = [(HRWDTableViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HRWDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v4.receiver = self;
  v4.super_class = HRWDTableViewController;
  [(HRWDTableViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = HRWDTableViewController;
  [(HRWDTableViewController *)&v14 viewWillAppear:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_tableSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) viewWillAppear:{appearCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)applicationWillEnterForeground
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_tableSections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) applicationWillEnterForeground];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)applicationDidEnterBackground
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_tableSections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) applicationDidEnterBackground];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)viewDidLoad
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = HRWDTableViewController;
  [(HKTableViewController *)&v19 viewDidLoad];
  tableView = [(HRWDTableViewController *)self tableView];
  [tableView setEstimatedRowHeight:44.0];

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tableViewSectionClasses = [objc_opt_class() tableViewSectionClasses];
  v6 = [tableViewSectionClasses countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(tableViewSectionClasses);
        }

        v8 = v11 + 1;
        v12 = [objc_alloc(*(*(&v15 + 1) + 8 * v10)) initWithDelegate:self atSection:v11];
        [v12 setUpWithTableViewController:self];
        [array addObject:v12];

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [tableViewSectionClasses countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  tableSections = self->_tableSections;
  self->_tableSections = v13;

  [(HRWDTableViewController *)self reloadTable];
}

- (void)reloadTable
{
  tableView = [(HRWDTableViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HRWDTableViewController *)self _section:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(HRWDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v9 = [pathCopy row];

  v10 = [v8 cellForRow:v9 table:viewCopy];

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(HRWDTableViewController *)self _section:section];
  titleForHeader = [v4 titleForHeader];

  return titleForHeader;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(HRWDTableViewController *)self _section:section];
  titleForFooter = [v4 titleForFooter];

  return titleForFooter;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(HRWDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v7 = [pathCopy row];

  [v6 estimatedHeightForRow:v7];
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(HRWDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v6 = [pathCopy row];

  [v7 accessoryButtonTappedForRow:v6];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(HRWDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "row")}];
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
  v8 = [(HRWDTableViewController *)self _sectionAtIndexPath:pathCopy];
  v9 = [pathCopy row];
  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__HRWDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_1E83DCFC8;
  v12[4] = self;
  v13 = pathCopy;
  v11 = pathCopy;
  [v8 didSelectRow:v9 representedByCell:v10 withCompletion:v12];
}

void __61__HRWDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HRWDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    block[3] = &unk_1E83DCFA0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    v7 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __61__HRWDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
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
  tableView = [(HRWDTableViewController *)self tableView];
  v6 = [tableView indexPathForCell:cellCopy];

  return v6;
}

- (void)reloadSection:(unint64_t)section animated:(BOOL)animated
{
  animatedCopy = animated;
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  if (areAnimationsEnabled == animatedCopy)
  {
    tableView = [(HRWDTableViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:section];
    [tableView reloadSections:v12 withRowAnimation:5];
  }

  else
  {
    v8 = areAnimationsEnabled;
    [MEMORY[0x1E69DD250] setAnimationsEnabled:animatedCopy];
    tableView2 = [(HRWDTableViewController *)self tableView];
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:section];
    [tableView2 reloadSections:v10 withRowAnimation:5];

    v11 = MEMORY[0x1E69DD250];

    [v11 setAnimationsEnabled:v8];
  }
}

- (void)pushViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(HRWDTableViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

@end