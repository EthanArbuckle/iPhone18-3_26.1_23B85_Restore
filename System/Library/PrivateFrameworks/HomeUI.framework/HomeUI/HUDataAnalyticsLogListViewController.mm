@interface HUDataAnalyticsLogListViewController
- (HUDataAnalyticsLogListViewController)init;
- (HUDataAnalyticsLogListViewController)initWithAccessoryGroupItem:(id)item;
- (HUDataAnalyticsLogListViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUDataAnalyticsLogListViewController)initWithMediaProfileContainer:(id)container;
- (id)itemModuleControllers;
- (void)_kickoffReload;
- (void)_watchForReload;
- (void)dataAnalyticsModuleController:(id)controller didSelectItem:(id)item;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUDataAnalyticsLogListViewController

- (HUDataAnalyticsLogListViewController)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  v6 = [objc_alloc(MEMORY[0x277D145E8]) initWithMediaProfileContainer:containerCopy delegate:self];
  v15.receiver = self;
  v15.super_class = HUDataAnalyticsLogListViewController;
  v7 = [(HUItemTableViewController *)&v15 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, container);
    v9 = [HUDataAnalyticsModuleController alloc];
    dataAnalyticsModule = [v6 dataAnalyticsModule];
    v11 = [(HUDataAnalyticsModuleController *)v9 initWithModule:dataAnalyticsModule];
    analyticsModuleController = v8->_analyticsModuleController;
    v8->_analyticsModuleController = v11;

    [(HUDataAnalyticsModuleController *)v8->_analyticsModuleController setDataAnalyticsModuleControllerDelegate:v8];
    v13 = HFLocalizedString();
    [(HUDataAnalyticsLogListViewController *)v8 setTitle:v13];
  }

  return v8;
}

- (HUDataAnalyticsLogListViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessory_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDataAnalyticsLogListViewController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUDataAnalyticsLogListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUDataAnalyticsLogListViewController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDataAnalyticsLogListViewController.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HUDataAnalyticsLogListViewController init]", v5}];

  return 0;
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = HUDataAnalyticsLogListViewController;
  [(HUItemTableViewController *)&v48 viewDidLoad];
  v3 = [HUActivityLoadingView alloc];
  v4 = [(HUActivityLoadingView *)v3 initWithFrame:100 activityIndicatorStyle:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  activityLoadingView = self->_activityLoadingView;
  self->_activityLoadingView = v4;

  v6 = _HULocalizedStringWithDefaultValue(@"HUDataAnalyticsDownloadingText", @"HUDataAnalyticsDownloadingText", 1);
  textLabel = [(HUActivityLoadingView *)self->_activityLoadingView textLabel];
  [textLabel setText:v6];

  [(HUActivityLoadingView *)self->_activityLoadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HUActivityLoadingView *)self->_activityLoadingView sizeToFit];
  v8 = objc_opt_new();
  tableView = [(HUDataAnalyticsLogListViewController *)self tableView];
  [tableView setBackgroundView:v8];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView2 = [(HUDataAnalyticsLogListViewController *)self tableView];
  backgroundView = [tableView2 backgroundView];
  [backgroundView setBackgroundColor:clearColor];

  tableView3 = [(HUDataAnalyticsLogListViewController *)self tableView];
  backgroundView2 = [tableView3 backgroundView];
  activityLoadingView = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  [backgroundView2 addSubview:activityLoadingView];

  v16 = objc_opt_new();
  tableView4 = [(HUDataAnalyticsLogListViewController *)self tableView];
  [tableView4 addLayoutGuide:v16];

  heightAnchor = [v16 heightAnchor];
  tableView5 = [(HUDataAnalyticsLogListViewController *)self tableView];
  heightAnchor2 = [tableView5 heightAnchor];
  v21 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.3];
  [v21 setActive:1];

  topAnchor = [v16 topAnchor];
  tableView6 = [(HUDataAnalyticsLogListViewController *)self tableView];
  topAnchor2 = [tableView6 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v25 setActive:1];

  activityLoadingView2 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  centerXAnchor = [activityLoadingView2 centerXAnchor];
  tableView7 = [(HUDataAnalyticsLogListViewController *)self tableView];
  backgroundView3 = [tableView7 backgroundView];
  centerXAnchor2 = [backgroundView3 centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v31 setActive:1];

  activityLoadingView3 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  centerYAnchor = [activityLoadingView3 centerYAnchor];
  bottomAnchor = [v16 bottomAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:bottomAnchor];
  [v35 setActive:1];

  activityLoadingView4 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  leadingAnchor = [activityLoadingView4 leadingAnchor];
  view = [(HUDataAnalyticsLogListViewController *)self view];
  layoutMarginsGuide = [view layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v41 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [v41 setActive:1];

  activityLoadingView5 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  trailingAnchor = [activityLoadingView5 trailingAnchor];
  view2 = [(HUDataAnalyticsLogListViewController *)self view];
  layoutMarginsGuide2 = [view2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v47 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v47 setActive:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUDataAnalyticsLogListViewController;
  [(HUItemTableViewController *)&v4 viewWillAppear:appear];
  [(HUDataAnalyticsLogListViewController *)self _watchForReload];
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  analyticsModuleController = [(HUDataAnalyticsLogListViewController *)self analyticsModuleController];
  v4 = [v2 setWithObject:analyticsModuleController];

  return v4;
}

- (void)dataAnalyticsModuleController:(id)controller didSelectItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v9 = *MEMORY[0x277D13F60];
  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v17 = HULocalizedStringWithFormat(@"HUDataAnalyticsLogListViewControllerLoadingFormatString", @"%@", v11, v12, v13, v14, v15, v16, v10);

  fetchLog = [itemCopy fetchLog];
  v19 = [[HUTextViewController alloc] initWithTextTitle:v17];
  [(HUTextViewController *)v19 setShowsShareButton:1];
  latestResults2 = [itemCopy latestResults];
  v21 = [latestResults2 objectForKeyedSubscript:v9];
  [(HUTextViewController *)v19 setTitle:v21];

  [(HUTextViewController *)v19 loadTextFromFuture:fetchLog textTitle:v17];
  navigationController = [(HUDataAnalyticsLogListViewController *)self navigationController];
  [navigationController pushViewController:v19 animated:1];

  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke;
  v26[3] = &unk_277DBD050;
  objc_copyWeak(&v29, &location);
  v23 = controllerCopy;
  v27 = v23;
  v24 = itemCopy;
  v28 = v24;
  v25 = [fetchLog addFailureBlock:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke_2;
  v5[3] = &unk_277DBD028;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v7 = a1[4];
  v8 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D14640] sharedHandler];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277D13C58];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke_3;
  v7[3] = &unk_277DB76C8;
  objc_copyWeak(&v10, (a1 + 56));
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke_4;
  v5[3] = &unk_277DB8770;
  objc_copyWeak(&v6, (a1 + 56));
  [v2 handleError:v3 operationType:v4 options:0 retryBlock:v7 cancelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v10);
}

void __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained dataAnalyticsModuleController:*(a1 + 32) didSelectItem:*(a1 + 40)];
}

void __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popToViewController:WeakRetained animated:1];
}

- (void)_kickoffReload
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = MEMORY[0x277D14788];
  v6 = MEMORY[0x277CBEB98];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  itemProviders = [itemManager2 itemProviders];
  v9 = [v6 setWithArray:itemProviders];
  v10 = [v5 requestToReloadItemProviders:v9 senderSelector:a2];
  v11 = [itemManager performItemUpdateRequest:v10];

  [(HUDataAnalyticsLogListViewController *)self _watchForReload];
}

- (void)_watchForReload
{
  activityLoadingView = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  [activityLoadingView setHidden:0];

  activityLoadingView2 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  activityIndicatorView = [activityLoadingView2 activityIndicatorView];
  [activityIndicatorView startAnimating];

  objc_initWeak(&location, self);
  analyticsModuleController = [(HUDataAnalyticsLogListViewController *)self analyticsModuleController];
  module = [analyticsModuleController module];

  logItemProvider = [module logItemProvider];
  logFetchFuture = [logItemProvider logFetchFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke;
  v11[3] = &unk_277DBD078;
  objc_copyWeak(&v12, &location);
  v10 = [logFetchFuture addCompletionBlock:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke_2;
  v6[3] = &unk_277DBA860;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained activityLoadingView];
  [v3 setHidden:1];

  v4 = [WeakRetained activityLoadingView];
  v5 = [v4 activityIndicatorView];
  [v5 stopAnimating];

  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x277D14640] sharedHandler];
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D13C60];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke_3;
    v11[3] = &unk_277DB8770;
    objc_copyWeak(&v12, (a1 + 40));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke_4;
    v9[3] = &unk_277DB8770;
    objc_copyWeak(&v10, (a1 + 40));
    [v6 handleError:v7 operationType:v8 options:0 retryBlock:v11 cancelBlock:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
  }
}

void __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _kickoffReload];
}

void __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

- (HUDataAnalyticsLogListViewController)initWithAccessoryGroupItem:(id)item
{
  homeKitSettingsVendor = [item homeKitSettingsVendor];
  homeKitObject = [homeKitSettingsVendor homeKitObject];
  v6 = &unk_2825BCB38;
  v7 = homeKitObject;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  if ([v7 conformsToProtocol:v6])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v13 = NSStringFromProtocol(v6);
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v13}];

LABEL_7:
    v10 = 0;
  }

  if (!v10)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "[HUDataAnalyticsLogListViewController initWithAccessoryGroupItem:] called without a HFMediaProfileContainer", buf, 2u);
    }
  }

  v15 = [(HUDataAnalyticsLogListViewController *)self initWithMediaProfileContainer:v10];

  return v15;
}

@end