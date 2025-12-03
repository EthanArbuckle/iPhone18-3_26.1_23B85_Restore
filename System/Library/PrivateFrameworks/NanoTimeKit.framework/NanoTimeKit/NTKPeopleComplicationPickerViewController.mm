@interface NTKPeopleComplicationPickerViewController
- (NTKPeopleComplicationPickerViewController)initWithDetailConfiguration:(id)configuration;
- (NTKPeopleComplicationPickerViewControllerDelegate)delegate;
- (void)_didSelectItemAtIndexPath:(id)path;
- (void)scrollToSelectedIdentifierAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NTKPeopleComplicationPickerViewController

- (NTKPeopleComplicationPickerViewController)initWithDetailConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = NTKPeopleComplicationPickerViewController;
  v6 = [(NTKPeopleComplicationPickerViewController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    title = [configurationCopy title];
    parentSectionName = v6->_parentSectionName;
    v6->_parentSectionName = title;

    objc_storeStrong(&v6->_configuration, configuration);
    v6->_isFirstTimeVisible = 1;
  }

  return v6;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v19 viewDidLoad];
  view = [(NTKPeopleComplicationPickerViewController *)self view];
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
  v15 = [[NTKPeopleDetailComplicationPickerDataSource alloc] initWithTableView:self->_tableView detailConfiguration:self->_configuration];
  [(UITableView *)self->_tableView setDataSource:v15];
  view2 = [(NTKPeopleComplicationPickerViewController *)self view];
  [view2 addSubview:self->_tableView];

  dataSource = self->_dataSource;
  self->_dataSource = v15;
  v18 = v15;

  [(NTKPeopleComplicationPickerViewController *)self setTitle:self->_parentSectionName];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationPickerViewController;
  [(NTKPeopleComplicationPickerViewController *)&v3 viewDidDisappear:disappear];
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

- (void)_didSelectItemAtIndexPath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dataSource = [(NTKPeopleComplicationPickerViewController *)self dataSource];
  v6 = [dataSource complicationItemForIndexPath:pathCopy];

  tableView = [(NTKPeopleComplicationPickerViewController *)self tableView];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  visibleCells = [tableView visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v15 + 1) + 8 * v12++) ntk_setPickerSelected:0];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [tableView cellForRowAtIndexPath:pathCopy];
  [v13 ntk_setPickerSelected:1];
  delegate = [(NTKPeopleComplicationPickerViewController *)self delegate];
  [delegate peopleComplicationPickerViewController:self didSelectItem:v6];
}

- (void)scrollToSelectedIdentifierAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dataSource = [(NTKPeopleComplicationPickerViewController *)self dataSource];
  selectedIndexPath = [dataSource selectedIndexPath];

  if (selectedIndexPath)
  {
    if ([selectedIndexPath item])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    tableView = [(NTKPeopleComplicationPickerViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:selectedIndexPath atScrollPosition:v6 animated:animatedCopy];
  }
}

- (NTKPeopleComplicationPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end