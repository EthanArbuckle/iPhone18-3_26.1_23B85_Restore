@interface NTKPeopleComplicationPickerViewController
- (NTKPeopleComplicationPickerViewController)initWithDetailConfiguration:(id)a3;
- (NTKPeopleComplicationPickerViewControllerDelegate)delegate;
- (void)_didSelectItemAtIndexPath:(id)a3;
- (void)scrollToSelectedIdentifierAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NTKPeopleComplicationPickerViewController

- (NTKPeopleComplicationPickerViewController)initWithDetailConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NTKPeopleComplicationPickerViewController;
  v6 = [(NTKPeopleComplicationPickerViewController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = [v5 title];
    parentSectionName = v6->_parentSectionName;
    v6->_parentSectionName = v7;

    objc_storeStrong(&v6->_configuration, a3);
    v6->_isFirstTimeVisible = 1;
  }

  return v6;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v19 viewDidLoad];
  v3 = [(NTKPeopleComplicationPickerViewController *)self view];
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
  v15 = [[NTKPeopleDetailComplicationPickerDataSource alloc] initWithTableView:self->_tableView detailConfiguration:self->_configuration];
  [(UITableView *)self->_tableView setDataSource:v15];
  v16 = [(NTKPeopleComplicationPickerViewController *)self view];
  [v16 addSubview:self->_tableView];

  dataSource = self->_dataSource;
  self->_dataSource = v15;
  v18 = v15;

  [(NTKPeopleComplicationPickerViewController *)self setTitle:self->_parentSectionName];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewDidDisappear:a3];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewDidLayoutSubviews];
  if (self->_isFirstTimeVisible)
  {
    [(NTKPeopleComplicationPickerViewController *)self scrollToSelectedIdentifierAnimated:0];
    self->_isFirstTimeVisible = 0;
  }
}

- (void)_didSelectItemAtIndexPath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKPeopleComplicationPickerViewController *)self dataSource];
  v6 = [v5 complicationItemForIndexPath:v4];

  v7 = [(NTKPeopleComplicationPickerViewController *)self tableView];
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
  v14 = [(NTKPeopleComplicationPickerViewController *)self delegate];
  [v14 peopleComplicationPickerViewController:self didSelectItem:v6];
}

- (void)scrollToSelectedIdentifierAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKPeopleComplicationPickerViewController *)self dataSource];
  v8 = [v5 selectedIndexPath];

  if (v8)
  {
    if ([v8 item])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [(NTKPeopleComplicationPickerViewController *)self tableView];
    [v7 scrollToRowAtIndexPath:v8 atScrollPosition:v6 animated:v3];
  }
}

- (NTKPeopleComplicationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end