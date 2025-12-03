@interface HKQuantitySeriesViewController
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation HKQuantitySeriesViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HKQuantitySeriesViewController;
  [(HKQuantitySeriesViewController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"QUANTITY_SERIES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKQuantitySeriesViewController *)self setTitle:v4];

  editButtonItem = [(HKQuantitySeriesViewController *)self editButtonItem];
  navigationItem = [(HKQuantitySeriesViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:editButtonItem];

  objc_initWeak(&location, self);
  dataProvider = [(HKQuantitySeriesViewController *)self dataProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKQuantitySeriesViewController_viewDidLoad__block_invoke;
  v8[3] = &unk_1E81B5738;
  objc_copyWeak(&v9, &location);
  [dataProvider queryForSubsamples:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__HKQuantitySeriesViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__HKQuantitySeriesViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E81B5738;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __45__HKQuantitySeriesViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 reloadData];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HKQuantitySeriesViewController;
  [(HKQuantitySeriesViewController *)&v5 viewWillDisappear:disappear];
  dataProvider = [(HKQuantitySeriesViewController *)self dataProvider];
  [dataProvider commitDeletionsIfNeeded];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = HKQuantitySeriesViewController;
  [HKQuantitySeriesViewController setEditing:sel_setEditing_animated_ animated:?];
  if (!editingCopy)
  {
    dataProvider = [(HKQuantitySeriesViewController *)self dataProvider];
    [dataProvider commitDeletionsIfNeeded];
  }

  tableView = [(HKQuantitySeriesViewController *)self tableView];
  [tableView setEditing:editingCopy animated:animatedCopy];
}

- (void)willMoveToParentViewController:(id)controller
{
  dataProvider = [(HKQuantitySeriesViewController *)self dataProvider];
  [dataProvider commitDeletionsIfNeeded];
}

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = HKQuantitySeriesViewController;
  [(HKQuantitySeriesViewController *)&v18 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKQuantitySeriesViewController *)self setTableView:v4];

  tableView = [(HKQuantitySeriesViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[HKQuantitySeriesTableViewCell reuseIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  tableView2 = [(HKQuantitySeriesViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:52.0];

  v9 = *MEMORY[0x1E69DE3D0];
  tableView3 = [(HKQuantitySeriesViewController *)self tableView];
  [tableView3 setRowHeight:v9];

  dataProvider = [(HKQuantitySeriesViewController *)self dataProvider];
  tableView4 = [(HKQuantitySeriesViewController *)self tableView];
  [tableView4 setDataSource:dataProvider];

  dataProvider2 = [(HKQuantitySeriesViewController *)self dataProvider];
  tableView5 = [(HKQuantitySeriesViewController *)self tableView];
  [tableView5 setDelegate:dataProvider2];

  tableView6 = [(HKQuantitySeriesViewController *)self tableView];
  [tableView6 setAllowsMultipleSelection:1];

  tableView7 = [(HKQuantitySeriesViewController *)self tableView];
  [tableView7 setAllowsSelection:0];

  tableView8 = [(HKQuantitySeriesViewController *)self tableView];
  [(HKQuantitySeriesViewController *)self setView:tableView8];
}

@end