@interface HUDataAnalyticsLogListViewController
- (HUDataAnalyticsLogListViewController)init;
- (HUDataAnalyticsLogListViewController)initWithAccessoryGroupItem:(id)a3;
- (HUDataAnalyticsLogListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUDataAnalyticsLogListViewController)initWithMediaProfileContainer:(id)a3;
- (id)itemModuleControllers;
- (void)_kickoffReload;
- (void)_watchForReload;
- (void)dataAnalyticsModuleController:(id)a3 didSelectItem:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUDataAnalyticsLogListViewController

- (HUDataAnalyticsLogListViewController)initWithMediaProfileContainer:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D145E8]) initWithMediaProfileContainer:v5 delegate:self];
  v15.receiver = self;
  v15.super_class = HUDataAnalyticsLogListViewController;
  v7 = [(HUItemTableViewController *)&v15 initWithItemManager:v6 tableViewStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, a3);
    v9 = [HUDataAnalyticsModuleController alloc];
    v10 = [v6 dataAnalyticsModule];
    v11 = [(HUDataAnalyticsModuleController *)v9 initWithModule:v10];
    analyticsModuleController = v8->_analyticsModuleController;
    v8->_analyticsModuleController = v11;

    [(HUDataAnalyticsModuleController *)v8->_analyticsModuleController setDataAnalyticsModuleControllerDelegate:v8];
    v13 = HFLocalizedString();
    [(HUDataAnalyticsLogListViewController *)v8 setTitle:v13];
  }

  return v8;
}

- (HUDataAnalyticsLogListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessory_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUDataAnalyticsLogListViewController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUDataAnalyticsLogListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUDataAnalyticsLogListViewController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUDataAnalyticsLogListViewController.m" lineNumber:63 description:{@"%s is unavailable; use %@ instead", "-[HUDataAnalyticsLogListViewController init]", v5}];

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
  v7 = [(HUActivityLoadingView *)self->_activityLoadingView textLabel];
  [v7 setText:v6];

  [(HUActivityLoadingView *)self->_activityLoadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HUActivityLoadingView *)self->_activityLoadingView sizeToFit];
  v8 = objc_opt_new();
  v9 = [(HUDataAnalyticsLogListViewController *)self tableView];
  [v9 setBackgroundView:v8];

  v10 = [MEMORY[0x277D75348] clearColor];
  v11 = [(HUDataAnalyticsLogListViewController *)self tableView];
  v12 = [v11 backgroundView];
  [v12 setBackgroundColor:v10];

  v13 = [(HUDataAnalyticsLogListViewController *)self tableView];
  v14 = [v13 backgroundView];
  v15 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  [v14 addSubview:v15];

  v16 = objc_opt_new();
  v17 = [(HUDataAnalyticsLogListViewController *)self tableView];
  [v17 addLayoutGuide:v16];

  v18 = [v16 heightAnchor];
  v19 = [(HUDataAnalyticsLogListViewController *)self tableView];
  v20 = [v19 heightAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 multiplier:0.3];
  [v21 setActive:1];

  v22 = [v16 topAnchor];
  v23 = [(HUDataAnalyticsLogListViewController *)self tableView];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v25 setActive:1];

  v26 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  v27 = [v26 centerXAnchor];
  v28 = [(HUDataAnalyticsLogListViewController *)self tableView];
  v29 = [v28 backgroundView];
  v30 = [v29 centerXAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  v33 = [v32 centerYAnchor];
  v34 = [v16 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  v37 = [v36 leadingAnchor];
  v38 = [(HUDataAnalyticsLogListViewController *)self view];
  v39 = [v38 layoutMarginsGuide];
  v40 = [v39 leadingAnchor];
  v41 = [v37 constraintGreaterThanOrEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  v43 = [v42 trailingAnchor];
  v44 = [(HUDataAnalyticsLogListViewController *)self view];
  v45 = [v44 layoutMarginsGuide];
  v46 = [v45 trailingAnchor];
  v47 = [v43 constraintLessThanOrEqualToAnchor:v46];
  [v47 setActive:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUDataAnalyticsLogListViewController;
  [(HUItemTableViewController *)&v4 viewWillAppear:a3];
  [(HUDataAnalyticsLogListViewController *)self _watchForReload];
}

- (id)itemModuleControllers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUDataAnalyticsLogListViewController *)self analyticsModuleController];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (void)dataAnalyticsModuleController:(id)a3 didSelectItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 latestResults];
  v9 = *MEMORY[0x277D13F60];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v17 = HULocalizedStringWithFormat(@"HUDataAnalyticsLogListViewControllerLoadingFormatString", @"%@", v11, v12, v13, v14, v15, v16, v10);

  v18 = [v7 fetchLog];
  v19 = [[HUTextViewController alloc] initWithTextTitle:v17];
  [(HUTextViewController *)v19 setShowsShareButton:1];
  v20 = [v7 latestResults];
  v21 = [v20 objectForKeyedSubscript:v9];
  [(HUTextViewController *)v19 setTitle:v21];

  [(HUTextViewController *)v19 loadTextFromFuture:v18 textTitle:v17];
  v22 = [(HUDataAnalyticsLogListViewController *)self navigationController];
  [v22 pushViewController:v19 animated:1];

  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __84__HUDataAnalyticsLogListViewController_dataAnalyticsModuleController_didSelectItem___block_invoke;
  v26[3] = &unk_277DBD050;
  objc_copyWeak(&v29, &location);
  v23 = v6;
  v27 = v23;
  v24 = v7;
  v28 = v24;
  v25 = [v18 addFailureBlock:v26];

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
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = MEMORY[0x277D14788];
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 itemProviders];
  v9 = [v6 setWithArray:v8];
  v10 = [v5 requestToReloadItemProviders:v9 senderSelector:a2];
  v11 = [v4 performItemUpdateRequest:v10];

  [(HUDataAnalyticsLogListViewController *)self _watchForReload];
}

- (void)_watchForReload
{
  v3 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  [v3 setHidden:0];

  v4 = [(HUDataAnalyticsLogListViewController *)self activityLoadingView];
  v5 = [v4 activityIndicatorView];
  [v5 startAnimating];

  objc_initWeak(&location, self);
  v6 = [(HUDataAnalyticsLogListViewController *)self analyticsModuleController];
  v7 = [v6 module];

  v8 = [v7 logItemProvider];
  v9 = [v8 logFetchFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HUDataAnalyticsLogListViewController__watchForReload__block_invoke;
  v11[3] = &unk_277DBD078;
  objc_copyWeak(&v12, &location);
  v10 = [v9 addCompletionBlock:v11];

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

- (HUDataAnalyticsLogListViewController)initWithAccessoryGroupItem:(id)a3
{
  v4 = [a3 homeKitSettingsVendor];
  v5 = [v4 homeKitObject];
  v6 = &unk_2825BCB38;
  v7 = v5;
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
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v13 = NSStringFromProtocol(v6);
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v13}];

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