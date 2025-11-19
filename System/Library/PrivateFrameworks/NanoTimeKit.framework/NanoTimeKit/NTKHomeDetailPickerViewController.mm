@interface NTKHomeDetailPickerViewController
- (NTKHomeDetailPickerViewController)initWithDetailConfiguration:(id)a3 homeListItem:(id)a4;
- (NTKHomeDetailPickerViewControllerDelegate)delegate;
- (void)_didSelectItemAtIndexPath:(id)a3;
- (void)viewDidLoad;
@end

@implementation NTKHomeDetailPickerViewController

- (NTKHomeDetailPickerViewController)initWithDetailConfiguration:(id)a3 homeListItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKHomeDetailPickerViewController;
  v9 = [(NTKHomeDetailPickerViewController *)&v13 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = [v7 title];
    parentSectionName = v9->_parentSectionName;
    v9->_parentSectionName = v10;

    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v9->_homeListItem, a4);
  }

  return v9;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = NTKHomeDetailPickerViewController;
  [(NTKHomeDetailPickerViewController *)&v19 viewDidLoad];
  v3 = [(NTKHomeDetailPickerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{v5, v7, v9, v11}];
  tableView = self->_tableView;
  self->_tableView = v12;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  v14 = [MEMORY[0x277D75348] blackColor];
  [(UITableView *)self->_tableView setBackgroundColor:v14];

  [(UITableView *)self->_tableView setDelegate:self];
  v15 = [[NTKHomeDetailPickerDataSource alloc] initWithTableView:self->_tableView detailConfiguration:self->_configuration homeListItem:self->_homeListItem];
  [(UITableView *)self->_tableView setDataSource:v15];
  v16 = [(NTKHomeDetailPickerViewController *)self view];
  [v16 addSubview:self->_tableView];

  dataSource = self->_dataSource;
  self->_dataSource = v15;
  v18 = v15;

  [(NTKHomeDetailPickerViewController *)self setTitle:self->_parentSectionName];
}

- (void)_didSelectItemAtIndexPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKHomeDetailPickerViewController *)self dataSource];
  v6 = [v5 pickerItemForIndexPath:v4];

  v7 = [(NTKHomeDetailPickerViewController *)self tableView];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 visibleCells];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) ntk_setPickerSelected:0];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [v7 cellForRowAtIndexPath:v4];
  [v13 ntk_setPickerSelected:1];
  v14 = [(NTKHomeDetailPickerViewController *)self delegate];
  [v14 homeDetailPickerViewController:self didSelectItem:v6];
}

- (NTKHomeDetailPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end