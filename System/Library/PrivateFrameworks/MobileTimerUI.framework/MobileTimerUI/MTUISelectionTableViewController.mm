@interface MTUISelectionTableViewController
- (MTUISelectionTableViewController)initWithStyle:(int64_t)style title:(id)title selectionData:(id)data parentIndexPath:(id)path allowsMultiple:(BOOL)multiple allowsNone:(BOOL)none delegate:(id)delegate;
- (MTUISelectionTableViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)deselectRowsExcluding:(unint64_t)excluding;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MTUISelectionTableViewController

- (MTUISelectionTableViewController)initWithStyle:(int64_t)style title:(id)title selectionData:(id)data parentIndexPath:(id)path allowsMultiple:(BOOL)multiple allowsNone:(BOOL)none delegate:(id)delegate
{
  noneCopy = none;
  multipleCopy = multiple;
  titleCopy = title;
  dataCopy = data;
  pathCopy = path;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = MTUISelectionTableViewController;
  v19 = [(MTUISelectionTableViewController *)&v23 initWithStyle:style];
  v20 = v19;
  if (v19)
  {
    [(MTUISelectionTableViewController *)v19 setTitle:titleCopy];
    [(MTUISelectionTableViewController *)v20 setSelectionData:dataCopy];
    [(MTUISelectionTableViewController *)v20 setParentIndexPath:pathCopy];
    tableView = [(MTUISelectionTableViewController *)v20 tableView];
    [tableView setAllowsMultipleSelection:multipleCopy];

    [(MTUISelectionTableViewController *)v20 setAllowsNone:noneCopy];
    [(MTUISelectionTableViewController *)v20 setDelegate:delegateCopy];
  }

  return v20;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MTUISelectionTableViewController;
  [(MTUISelectionTableViewController *)&v8 viewDidLoad];
  mtui_backgroundColor = [MEMORY[0x277D75348] mtui_backgroundColor];
  tableView = [(MTUISelectionTableViewController *)self tableView];
  [tableView setBackgroundColor:mtui_backgroundColor];

  tableView2 = [(MTUISelectionTableViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:*MEMORY[0x277D76F38]];

  tableView3 = [(MTUISelectionTableViewController *)self tableView];
  [tableView3 setRowHeight:*MEMORY[0x277D76F30]];

  tableView4 = [(MTUISelectionTableViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTUISelectionTableViewCellIdentifier"];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MTUISelectionTableViewController *)self selectionData:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"MTUISelectionTableViewCellIdentifier" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"MTUISelectionTableViewCellIdentifier"];
  }

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel = [v7 textLabel];
  [textLabel setFont:v8];

  textLabel2 = [v7 textLabel];
  [textLabel2 setAdjustsFontForContentSizeCategory:1];

  mtui_primaryTextColor = [MEMORY[0x277D75348] mtui_primaryTextColor];
  textLabel3 = [v7 textLabel];
  [textLabel3 setTextColor:mtui_primaryTextColor];

  mtui_cellHighlightColor = [MEMORY[0x277D75348] mtui_cellHighlightColor];
  [v7 setSelectedBackgroundColor:mtui_cellHighlightColor];

  selectionData = [(MTUISelectionTableViewController *)self selectionData];
  v15 = [pathCopy row];

  v16 = [selectionData objectAtIndexedSubscript:v15];

  if ([v16 isSelected])
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  [v7 setAccessoryType:v17];
  title = [v16 title];
  textLabel4 = [v7 textLabel];
  [textLabel4 setText:title];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  if (![(MTUISelectionTableViewController *)self allowsNone])
  {
    selectionData = [(MTUISelectionTableViewController *)self selectionData];
    v9 = [selectionData indexesOfObjectsPassingTest:&__block_literal_global_1];

    if ([v9 count] == 1 && objc_msgSend(v9, "containsIndex:", objc_msgSend(pathCopy, "row")))
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      goto LABEL_12;
    }
  }

  if (([viewCopy allowsMultipleSelection] & 1) == 0)
  {
    -[MTUISelectionTableViewController deselectRowsExcluding:](self, "deselectRowsExcluding:", [pathCopy row]);
  }

  selectionData2 = [(MTUISelectionTableViewController *)self selectionData];
  v9 = [selectionData2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  [v9 setIsSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if ([v9 isSelected])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v11 setAccessoryType:v12];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  delegate = [(MTUISelectionTableViewController *)self delegate];
  v16[0] = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  parentIndexPath = [(MTUISelectionTableViewController *)self parentIndexPath];
  [delegate didSelectOptions:v14 parentIndexPath:parentIndexPath];

LABEL_12:
}

- (void)deselectRowsExcluding:(unint64_t)excluding
{
  selectionData = [(MTUISelectionTableViewController *)self selectionData];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__MTUISelectionTableViewController_deselectRowsExcluding___block_invoke;
  v8[3] = &__block_descriptor_40_e38_B32__0__MTUISelectionViewData_8Q16_B24l;
  v8[4] = excluding;
  v6 = [selectionData indexesOfObjectsPassingTest:v8];

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