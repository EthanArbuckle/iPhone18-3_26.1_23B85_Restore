@interface HRAccountsTableViewController
- (HRAccountsTableViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_hideLoadingIndicator;
- (void)_reloadAccounts;
- (void)_showLoadingIndicator;
- (void)clinicalAccountStore:(id)store accountDidChange:(id)change changeType:(int64_t)type;
- (void)setAccounts:(id)accounts;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HRAccountsTableViewController

- (HRAccountsTableViewController)init
{
  v13.receiver = self;
  v13.super_class = HRAccountsTableViewController;
  v2 = [(HRAccountsTableViewController *)&v13 initWithStyle:2];
  if (v2)
  {
    v3 = +[HRProfileManager sharedInstance];
    currentProfile = [v3 currentProfile];
    profile = v2->_profile;
    v2->_profile = currentProfile;

    v6 = objc_alloc(MEMORY[0x1E69A3F10]);
    healthStore = [(HRProfile *)v2->_profile healthStore];
    v8 = [v6 initWithHealthStore:healthStore];
    clinicalAccountStore = v2->_clinicalAccountStore;
    v2->_clinicalAccountStore = v8;

    v10 = +[HRViewControllerFactory shared];
    factory = v2->_factory;
    v2->_factory = v10;
  }

  return v2;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HRAccountsTableViewController;
  [(HRAccountsTableViewController *)&v12 viewDidLoad];
  v3 = HRLocalizedString(@"HEALTH_RECORDS_TITLE");
  [(HRAccountsTableViewController *)self setTitle:v3];

  tableView = [(HRAccountsTableViewController *)self tableView];
  [tableView _setSectionCornerRadius:*MEMORY[0x1E69A40E0]];

  v5 = *MEMORY[0x1E69A40D0];
  tableView2 = [(HRAccountsTableViewController *)self tableView];
  [tableView2 setRowHeight:v5];

  tableView3 = [(HRAccountsTableViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = +[HRAccountTableViewCell reuseIdentifier];
  [tableView3 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = objc_alloc_init(HRContentStatusView);
  [(HRAccountsTableViewController *)self setLoadingView:v10];

  [(HRAccountsTableViewController *)self _reloadAccounts];
  clinicalAccountStore = [(HRAccountsTableViewController *)self clinicalAccountStore];
  [clinicalAccountStore addAccountStateChangeListener:self];
}

- (void)_reloadAccounts
{
  objc_initWeak(&location, self);
  [(HRAccountsTableViewController *)self _showLoadingIndicator];
  profile = [(HRAccountsTableViewController *)self profile];
  clinicalSourcesDataProvider = [profile clinicalSourcesDataProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__HRAccountsTableViewController__reloadAccounts__block_invoke;
  v6[3] = &unk_1E83DCD58;
  objc_copyWeak(&v7, &location);
  v5 = [clinicalSourcesDataProvider fetchAccountsForDisplayWithCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__HRAccountsTableViewController__reloadAccounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAccounts:v3];
}

- (void)setAccounts:(id)accounts
{
  objc_storeStrong(&self->_accounts, accounts);
  [(HRAccountsTableViewController *)self _hideLoadingIndicator];
  tableView = [(HRAccountsTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)_showLoadingIndicator
{
  loadingView = [(HRAccountsTableViewController *)self loadingView];
  [loadingView startAnimating];

  loadingView2 = [(HRAccountsTableViewController *)self loadingView];
  tableView = [(HRAccountsTableViewController *)self tableView];
  [tableView setBackgroundView:loadingView2];

  tableView2 = [(HRAccountsTableViewController *)self tableView];
  [tableView2 setScrollEnabled:0];
}

- (void)_hideLoadingIndicator
{
  loadingView = [(HRAccountsTableViewController *)self loadingView];
  [loadingView stopAnimating];

  tableView = [(HRAccountsTableViewController *)self tableView];
  [tableView setBackgroundView:0];

  tableView2 = [(HRAccountsTableViewController *)self tableView];
  [tableView2 setScrollEnabled:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HRAccountsTableViewController *)self accounts:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[HRAccountTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  accounts = [(HRAccountsTableViewController *)self accounts];
  v11 = [pathCopy row];

  v12 = [accounts objectAtIndexedSubscript:v11];

  profile = [(HRAccountsTableViewController *)self profile];
  clinicalSourcesDataProvider = [profile clinicalSourcesDataProvider];
  [v9 configureWithAccount:v12 dataProvider:clinicalSourcesDataProvider];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  accounts = [(HRAccountsTableViewController *)self accounts];
  v8 = [pathCopy row];

  v14 = [accounts objectAtIndexedSubscript:v8];

  v9 = [HRMedicalRecordTimelineViewController alloc];
  profile = [(HRAccountsTableViewController *)self profile];
  identifier = [v14 identifier];
  v12 = [(HRMedicalRecordTimelineViewController *)v9 initWithProfile:profile accountId:identifier];

  navigationController = [(HRAccountsTableViewController *)self navigationController];
  [navigationController hk_showViewController:v12 animated:1];
}

- (void)clinicalAccountStore:(id)store accountDidChange:(id)change changeType:(int64_t)type
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__HRAccountsTableViewController_clinicalAccountStore_accountDidChange_changeType___block_invoke;
  block[3] = &unk_1E83DCA20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end