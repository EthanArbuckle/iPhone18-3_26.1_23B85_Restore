@interface HKQuantitySeriesViewController
- (void)loadView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
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

  v5 = [(HKQuantitySeriesViewController *)self editButtonItem];
  v6 = [(HKQuantitySeriesViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  objc_initWeak(&location, self);
  v7 = [(HKQuantitySeriesViewController *)self dataProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKQuantitySeriesViewController_viewDidLoad__block_invoke;
  v8[3] = &unk_1E81B5738;
  objc_copyWeak(&v9, &location);
  [v7 queryForSubsamples:v8];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HKQuantitySeriesViewController;
  [(HKQuantitySeriesViewController *)&v5 viewWillDisappear:a3];
  v4 = [(HKQuantitySeriesViewController *)self dataProvider];
  [v4 commitDeletionsIfNeeded];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKQuantitySeriesViewController;
  [HKQuantitySeriesViewController setEditing:sel_setEditing_animated_ animated:?];
  if (!v5)
  {
    v7 = [(HKQuantitySeriesViewController *)self dataProvider];
    [v7 commitDeletionsIfNeeded];
  }

  v8 = [(HKQuantitySeriesViewController *)self tableView];
  [v8 setEditing:v5 animated:v4];
}

- (void)willMoveToParentViewController:(id)a3
{
  v3 = [(HKQuantitySeriesViewController *)self dataProvider];
  [v3 commitDeletionsIfNeeded];
}

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = HKQuantitySeriesViewController;
  [(HKQuantitySeriesViewController *)&v18 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKQuantitySeriesViewController *)self setTableView:v4];

  v5 = [(HKQuantitySeriesViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = +[HKQuantitySeriesTableViewCell reuseIdentifier];
  [v5 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = [(HKQuantitySeriesViewController *)self tableView];
  [v8 setEstimatedRowHeight:52.0];

  v9 = *MEMORY[0x1E69DE3D0];
  v10 = [(HKQuantitySeriesViewController *)self tableView];
  [v10 setRowHeight:v9];

  v11 = [(HKQuantitySeriesViewController *)self dataProvider];
  v12 = [(HKQuantitySeriesViewController *)self tableView];
  [v12 setDataSource:v11];

  v13 = [(HKQuantitySeriesViewController *)self dataProvider];
  v14 = [(HKQuantitySeriesViewController *)self tableView];
  [v14 setDelegate:v13];

  v15 = [(HKQuantitySeriesViewController *)self tableView];
  [v15 setAllowsMultipleSelection:1];

  v16 = [(HKQuantitySeriesViewController *)self tableView];
  [v16 setAllowsSelection:0];

  v17 = [(HKQuantitySeriesViewController *)self tableView];
  [(HKQuantitySeriesViewController *)self setView:v17];
}

@end