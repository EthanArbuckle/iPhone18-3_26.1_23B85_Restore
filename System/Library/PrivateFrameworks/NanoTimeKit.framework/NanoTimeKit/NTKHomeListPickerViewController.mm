@interface NTKHomeListPickerViewController
- (NTKHomeListPickerViewController)initWithDetailConfiguration:(id)configuration;
- (NTKHomeListPickerViewControllerDelegate)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation NTKHomeListPickerViewController

- (NTKHomeListPickerViewController)initWithDetailConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = NTKHomeListPickerViewController;
  v6 = [(NTKHomeListPickerViewController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    title = [configurationCopy title];
    parentSectionName = v6->_parentSectionName;
    v6->_parentSectionName = title;

    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v6;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = NTKHomeListPickerViewController;
  [(NTKHomeListPickerViewController *)&v19 viewDidLoad];
  view = [(NTKHomeListPickerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{v5, v7, v9, v11}];
  tableView = self->_tableView;
  self->_tableView = v12;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UITableView *)self->_tableView setBackgroundColor:blackColor];

  [(UITableView *)self->_tableView setDelegate:self];
  v15 = [[NTKHomeListPickerDataSource alloc] initWithTableView:self->_tableView detailConfiguration:self->_configuration];
  [(UITableView *)self->_tableView setDataSource:v15];
  view2 = [(NTKHomeListPickerViewController *)self view];
  [view2 addSubview:self->_tableView];

  dataSource = self->_dataSource;
  self->_dataSource = v15;
  v18 = v15;

  [(NTKHomeListPickerViewController *)self setTitle:self->_parentSectionName];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  visibleCells = [viewCopy visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v17 + 1) + 8 * v12++) ntk_setPickerSelected:0];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v13 ntk_setPickerSelected:1];
  dataSource = [(NTKHomeListPickerViewController *)self dataSource];
  v15 = [dataSource pickerItemForIndexPath:pathCopy];

  delegate = [(NTKHomeListPickerViewController *)self delegate];
  [delegate homeListPickerViewController:self didSelectItem:v15];
}

- (NTKHomeListPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end