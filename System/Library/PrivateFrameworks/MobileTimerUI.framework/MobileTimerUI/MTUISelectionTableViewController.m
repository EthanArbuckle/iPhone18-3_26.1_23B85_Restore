@interface MTUISelectionTableViewController
- (MTUISelectionTableViewController)initWithStyle:(int64_t)a3 title:(id)a4 selectionData:(id)a5 parentIndexPath:(id)a6 allowsMultiple:(BOOL)a7 allowsNone:(BOOL)a8 delegate:(id)a9;
- (MTUISelectionTableViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)deselectRowsExcluding:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MTUISelectionTableViewController

- (MTUISelectionTableViewController)initWithStyle:(int64_t)a3 title:(id)a4 selectionData:(id)a5 parentIndexPath:(id)a6 allowsMultiple:(BOOL)a7 allowsNone:(BOOL)a8 delegate:(id)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v23.receiver = self;
  v23.super_class = MTUISelectionTableViewController;
  v19 = [(MTUISelectionTableViewController *)&v23 initWithStyle:a3];
  v20 = v19;
  if (v19)
  {
    [(MTUISelectionTableViewController *)v19 setTitle:v15];
    [(MTUISelectionTableViewController *)v20 setSelectionData:v16];
    [(MTUISelectionTableViewController *)v20 setParentIndexPath:v17];
    v21 = [(MTUISelectionTableViewController *)v20 tableView];
    [v21 setAllowsMultipleSelection:v10];

    [(MTUISelectionTableViewController *)v20 setAllowsNone:v9];
    [(MTUISelectionTableViewController *)v20 setDelegate:v18];
  }

  return v20;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MTUISelectionTableViewController;
  [(MTUISelectionTableViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277D75348] mtui_backgroundColor];
  v4 = [(MTUISelectionTableViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = [(MTUISelectionTableViewController *)self tableView];
  [v5 setEstimatedRowHeight:*MEMORY[0x277D76F38]];

  v6 = [(MTUISelectionTableViewController *)self tableView];
  [v6 setRowHeight:*MEMORY[0x277D76F30]];

  v7 = [(MTUISelectionTableViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTUISelectionTableViewCellIdentifier"];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MTUISelectionTableViewController *)self selectionData:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"MTUISelectionTableViewCellIdentifier" forIndexPath:v6];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"MTUISelectionTableViewCellIdentifier"];
  }

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v9 = [v7 textLabel];
  [v9 setFont:v8];

  v10 = [v7 textLabel];
  [v10 setAdjustsFontForContentSizeCategory:1];

  v11 = [MEMORY[0x277D75348] mtui_primaryTextColor];
  v12 = [v7 textLabel];
  [v12 setTextColor:v11];

  v13 = [MEMORY[0x277D75348] mtui_cellHighlightColor];
  [v7 setSelectedBackgroundColor:v13];

  v14 = [(MTUISelectionTableViewController *)self selectionData];
  v15 = [v6 row];

  v16 = [v14 objectAtIndexedSubscript:v15];

  if ([v16 isSelected])
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  [v7 setAccessoryType:v17];
  v18 = [v16 title];
  v19 = [v7 textLabel];
  [v19 setText:v18];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(MTUISelectionTableViewController *)self allowsNone])
  {
    v8 = [(MTUISelectionTableViewController *)self selectionData];
    v9 = [v8 indexesOfObjectsPassingTest:&__block_literal_global_1];

    if ([v9 count] == 1 && objc_msgSend(v9, "containsIndex:", objc_msgSend(v7, "row")))
    {
      [v6 deselectRowAtIndexPath:v7 animated:1];
      goto LABEL_12;
    }
  }

  if (([v6 allowsMultipleSelection] & 1) == 0)
  {
    -[MTUISelectionTableViewController deselectRowsExcluding:](self, "deselectRowsExcluding:", [v7 row]);
  }

  v10 = [(MTUISelectionTableViewController *)self selectionData];
  v9 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  [v9 setIsSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
  v11 = [v6 cellForRowAtIndexPath:v7];
  if ([v9 isSelected])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v11 setAccessoryType:v12];
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v13 = [(MTUISelectionTableViewController *)self delegate];
  v16[0] = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v15 = [(MTUISelectionTableViewController *)self parentIndexPath];
  [v13 didSelectOptions:v14 parentIndexPath:v15];

LABEL_12:
}

- (void)deselectRowsExcluding:(unint64_t)a3
{
  v5 = [(MTUISelectionTableViewController *)self selectionData];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__MTUISelectionTableViewController_deselectRowsExcluding___block_invoke;
  v8[3] = &__block_descriptor_40_e38_B32__0__MTUISelectionViewData_8Q16_B24l;
  v8[4] = a3;
  v6 = [v5 indexesOfObjectsPassingTest:v8];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__MTUISelectionTableViewController_deselectRowsExcluding___block_invoke_2;
  v7[3] = &unk_279917A58;
  v7[4] = self;
  [v6 enumerateIndexesUsingBlock:v7];
}

uint64_t __58__MTUISelectionTableViewController_deselectRowsExcluding___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) == a3)
  {
    return 0;
  }

  else
  {
    return [a2 isSelected];
  }
}

void __58__MTUISelectionTableViewController_deselectRowsExcluding___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) selectionData];
  v5 = [v4 objectAtIndexedSubscript:a2];
  [v5 setIsSelected:0];

  v6 = [*(a1 + 32) tableView];
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v8 = [v6 cellForRowAtIndexPath:v7];

  [v8 setAccessoryType:0];
}

- (MTUISelectionTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end