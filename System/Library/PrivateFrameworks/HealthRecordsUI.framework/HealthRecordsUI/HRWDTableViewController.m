@interface HRWDTableViewController
- (HRWDTableViewController)initWithCoder:(id)a3;
- (HRWDTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HRWDTableViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_sectionAtIndexPath:(id)a3;
- (id)indexPathForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addObservers;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)pushViewController:(id)a3;
- (void)reloadSection:(unint64_t)a3 animated:(BOOL)a4;
- (void)reloadTable;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HRWDTableViewController

- (void)_addObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
  [v3 addObserver:self selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
}

- (HRWDTableViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = HRWDTableViewController;
  v3 = [(HRWDTableViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(HRWDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (HRWDTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = HRWDTableViewController;
  v4 = [(HRWDTableViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(HRWDTableViewController *)v4 _addObservers];
  }

  return v5;
}

- (HRWDTableViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HRWDTableViewController;
  v3 = [(HRWDTableViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HRWDTableViewController *)v3 _addObservers];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v4.receiver = self;
  v4.super_class = HRWDTableViewController;
  [(HRWDTableViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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

        [*(*(&v10 + 1) + 8 * v9++) viewWillAppear:{v3, v10}];
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
  v3 = [(HRWDTableViewController *)self tableView];
  [v3 setEstimatedRowHeight:44.0];

  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [objc_opt_class() tableViewSectionClasses];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = v11 + 1;
        v12 = [objc_alloc(*(*(&v15 + 1) + 8 * v10)) initWithDelegate:self atSection:v11];
        [v12 setUpWithTableViewController:self];
        [v4 addObject:v12];

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  tableSections = self->_tableSections;
  self->_tableSections = v13;

  [(HRWDTableViewController *)self reloadTable];
}

- (void)reloadTable
{
  v2 = [(HRWDTableViewController *)self tableView];
  [v2 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HRWDTableViewController *)self _section:a4];
  v5 = [v4 numberOfRows];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HRWDTableViewController *)self _sectionAtIndexPath:v6];
  v9 = [v6 row];

  v10 = [v8 cellForRow:v9 table:v7];

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(HRWDTableViewController *)self _section:a4];
  v5 = [v4 titleForHeader];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(HRWDTableViewController *)self _section:a4];
  v5 = [v4 titleForFooter];

  return v5;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HRWDTableViewController *)self _sectionAtIndexPath:v5];
  v7 = [v5 row];

  [v6 estimatedHeightForRow:v7];
  v9 = v8;

  return v9;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(HRWDTableViewController *)self _sectionAtIndexPath:v5];
  v6 = [v5 row];

  [v7 accessoryButtonTappedForRow:v6];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HRWDTableViewController *)self _sectionAtIndexPath:v5];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "row")}];
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
  v8 = [(HRWDTableViewController *)self _sectionAtIndexPath:v6];
  v9 = [v6 row];
  v10 = [v7 cellForRowAtIndexPath:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__HRWDTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v12[3] = &unk_1E83DCFC8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
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

- (id)_sectionAtIndexPath:(id)a3
{
  tableSections = self->_tableSections;
  v4 = [a3 section];

  return [(NSArray *)tableSections objectAtIndexedSubscript:v4];
}

- (id)indexPathForCell:(id)a3
{
  v4 = a3;
  v5 = [(HRWDTableViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  return v6;
}

- (void)reloadSection:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  if (v7 == v4)
  {
    v13 = [(HRWDTableViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
    [v13 reloadSections:v12 withRowAnimation:5];
  }

  else
  {
    v8 = v7;
    [MEMORY[0x1E69DD250] setAnimationsEnabled:v4];
    v9 = [(HRWDTableViewController *)self tableView];
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
    [v9 reloadSections:v10 withRowAnimation:5];

    v11 = MEMORY[0x1E69DD250];

    [v11 setAnimationsEnabled:v8];
  }
}

- (void)pushViewController:(id)a3
{
  v4 = a3;
  v5 = [(HRWDTableViewController *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

@end