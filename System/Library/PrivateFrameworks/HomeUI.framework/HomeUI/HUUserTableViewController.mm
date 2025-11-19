@interface HUUserTableViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HFUserHandle)userHandle;
- (HUUserTableViewController)initWithUserItemManager:(id)a3 home:(id)a4;
- (id)_fetchAccountsForHome:(id)a3 forceCloudKitFetch:(BOOL)a4;
- (id)itemTableHeaderView;
- (id)user;
- (void)_presentMediaAccountErrorsIfNeeded:(BOOL)a3;
- (void)_presentMultiUserTokenFixUIForAccount:(id)a3;
- (void)_refreshSplitAccountsHeaderViewIfNeeded:(BOOL)a3;
- (void)applicationDidEnterBackground;
- (void)dealloc;
- (void)performRemovalAction:(id)a3;
- (void)setAMSiTunesAccount:(id)a3 forHome:(id)a4;
- (void)setHeaderMessage:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)signIniTunesAccount:(id)a3 forHome:(id)a4;
- (void)user:(id)a3 didUpdateNeedsiTunesMultiUserRepair:(BOOL)a4;
@end

@implementation HUUserTableViewController

- (HUUserTableViewController)initWithUserItemManager:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HUUserTableViewController;
  v9 = [(HUItemTableViewController *)&v15 initWithItemManager:v7 tableViewStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userItemManager, a3);
    objc_storeStrong(&v10->_home, a4);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v10 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v13 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v13 addUserObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HUUserTableViewController *)self mediaAccountFuture];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = HUUserTableViewController;
  [(HUUserTableViewController *)&v5 dealloc];
}

- (void)applicationDidEnterBackground
{
  v3 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v3 layoutIfNeeded];

  v4 = [(HUUserTableViewController *)self tableView];
  [v4 layoutIfNeeded];

  v5 = [(HUUserTableViewController *)self tableView];
  [v5 beginUpdates];

  v6 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v6 dismissMultiUserTokenFixUI];

  v7 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v7 dismissSplitAccountView];

  v8 = [(HUUserTableViewController *)self tableView];
  [v8 layoutIfNeeded];

  v9 = [(HUUserTableViewController *)self tableView];
  [v9 endUpdates];
}

- (id)itemTableHeaderView
{
  v3 = [(HUUserTableViewController *)self userAvatarHeaderView];

  if (!v3)
  {
    v4 = [_HUUserAvatarHeaderView alloc];
    v5 = [(HUUserTableViewController *)self user];
    v6 = [(HUUserTableViewController *)self home];
    v7 = [(_HUUserAvatarHeaderView *)v4 initWithUser:v5 home:v6 delegate:self];
    [(HUUserTableViewController *)self setUserAvatarHeaderView:v7];

    v8 = [(HUUserTableViewController *)self headerMessage];
    v9 = [(HUUserTableViewController *)self userAvatarHeaderView];
    [v9 setMessage:v8];

    [(HUUserTableViewController *)self _presentMediaAccountErrorsIfNeeded:1];
  }

  return [(HUUserTableViewController *)self userAvatarHeaderView];
}

- (id)user
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUUserTableViewController.m" lineNumber:123 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUUserTableViewController user]", objc_opt_class()}];

  return 0;
}

- (HFUserHandle)userHandle
{
  v3 = [(HUUserTableViewController *)self home];
  v4 = [(HUUserTableViewController *)self user];
  v5 = [v3 hf_handleForUser:v4];

  return v5;
}

- (void)setHeaderMessage:(id)a3
{
  v5 = a3;
  if (self->_headerMessage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_headerMessage, a3);
    v6 = [(HUUserTableViewController *)self userAvatarHeaderView];
    [v6 setMessage:v7];

    v5 = v7;
  }
}

- (void)performRemovalAction:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [(HUUserTableViewController *)self userItemManager];
  v7 = [v6 removeItem];
  v8 = [v5 indexPathForItem:v7];

  v9 = [(HUUserTableViewController *)self tableView];
  v10 = [v9 cellForRowAtIndexPath:v8];

  [v10 setShowSpinner:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__HUUserTableViewController_performRemovalAction___block_invoke;
  v16[3] = &unk_277DB8BD8;
  v16[4] = self;
  v11 = [v4 addSuccessBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HUUserTableViewController_performRemovalAction___block_invoke_2;
  v14[3] = &unk_277DB8C00;
  v15 = v10;
  v12 = v10;
  v13 = [v4 addFailureBlock:v14];
}

void __50__HUUserTableViewController_performRemovalAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void __50__HUUserTableViewController_performRemovalAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setShowSpinner:0];
  v4 = [MEMORY[0x277D14640] sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13C70] options:0 retryBlock:0 cancelBlock:0];
}

- (void)user:(id)a3 didUpdateNeedsiTunesMultiUserRepair:(BOOL)a4
{
  v4 = a4;
  v6 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v6 dismissSplitAccountView];

  if (v4)
  {

    [(HUUserTableViewController *)self _presentMediaAccountErrorsIfNeeded:0];
  }
}

- (void)_presentMediaAccountErrorsIfNeeded:(BOOL)a3
{
  v3 = a3;
  v12 = [(HUUserTableViewController *)self userHandle];
  if ([v12 type])
  {
  }

  else
  {
    v5 = [MEMORY[0x277D14CE8] isAMac];

    if ((v5 & 1) == 0)
    {
      v6 = [(HUUserTableViewController *)self home];
      v7 = [v6 currentUser];
      v8 = [v7 needsiTunesMultiUserRepair];

      if (v8)
      {
        v9 = [(HUUserTableViewController *)self home];
        v10 = [(HUUserTableViewController *)self _fetchAccountsForHome:v9 forceCloudKitFetch:v3];

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __64__HUUserTableViewController__presentMediaAccountErrorsIfNeeded___block_invoke;
        v13[3] = &unk_277DB7628;
        v13[4] = self;
        v11 = [v10 addCompletionBlock:v13];
      }

      else
      {

        [(HUUserTableViewController *)self _refreshSplitAccountsHeaderViewIfNeeded:v3];
      }
    }
  }
}

void __64__HUUserTableViewController__presentMediaAccountErrorsIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3 && [v5 count] >= 2)
  {
    v7 = MEMORY[0x277D2C900];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HUUserTableViewController__presentMediaAccountErrorsIfNeeded___block_invoke_2;
    v10[3] = &unk_277DB8200;
    v11 = *(a1 + 32);
    v12 = v6;
    v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v9 = [v7 futureWithBlock:v10 scheduler:v8];
  }
}

void __64__HUUserTableViewController__presentMediaAccountErrorsIfNeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  v4 = [v3 userAvatarHeaderView];
  [v4 layoutIfNeeded];

  v5 = [*(a1 + 32) tableView];
  [v5 layoutIfNeeded];

  v6 = [*(a1 + 32) tableView];
  [v6 beginUpdates];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) lastObject];
  [v7 _presentMultiUserTokenFixUIForAccount:v8];

  v9 = [*(a1 + 32) tableView];
  [v9 layoutIfNeeded];

  v10 = [*(a1 + 32) tableView];
  [v10 endUpdates];

  [v11 finishWithNoResult];
}

- (void)_presentMultiUserTokenFixUIForAccount:(id)a3
{
  v4 = a3;
  v6 = [(HUUserTableViewController *)self userAvatarHeaderView];
  v5 = [(HUUserTableViewController *)self home];
  [v6 presentMultiUserTokenFixUIForMediaAccount:v4 inHome:v5];
}

- (void)_refreshSplitAccountsHeaderViewIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUUserTableViewController *)self userHandle];
  v6 = [v5 type];

  if (!v6)
  {
    v7 = [(HUUserTableViewController *)self home];
    v8 = [(HUUserTableViewController *)self _fetchAccountsForHome:v7 forceCloudKitFetch:v3];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__HUUserTableViewController__refreshSplitAccountsHeaderViewIfNeeded___block_invoke;
    v10[3] = &unk_277DB7628;
    v10[4] = self;
    v9 = [v8 addCompletionBlock:v10];
  }
}

void __69__HUUserTableViewController__refreshSplitAccountsHeaderViewIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = MEMORY[0x277D2C900];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__HUUserTableViewController__refreshSplitAccountsHeaderViewIfNeeded___block_invoke_2;
    v10[3] = &unk_277DB8200;
    v11 = *(a1 + 32);
    v12 = v5;
    v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v9 = [v7 futureWithBlock:v10 scheduler:v8];
  }
}

void __69__HUUserTableViewController__refreshSplitAccountsHeaderViewIfNeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = a2;
  v4 = [v3 userAvatarHeaderView];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) home];
  [v4 setAccounts:v5 forHome:v6];

  v7 = [*(a1 + 32) userAvatarHeaderView];
  [v7 layoutIfNeeded];

  v8 = [*(a1 + 32) tableView];
  [v8 layoutIfNeeded];

  v9 = [*(a1 + 32) tableView];
  [v9 beginUpdates];

  v10 = [*(a1 + 32) userAvatarHeaderView];
  [v10 showSplitAccountViewIfNeeded];

  v11 = [*(a1 + 32) tableView];
  [v11 layoutIfNeeded];

  v12 = [*(a1 + 32) tableView];
  [v12 endUpdates];

  [v13 finishWithNoResult];
}

- (id)_fetchAccountsForHome:(id)a3 forceCloudKitFetch:(BOOL)a4
{
  v7 = a3;
  v8 = MEMORY[0x277D2C900];
  v14 = MEMORY[0x277D85DD0];
  v15 = v7;
  v17 = a4;
  v16 = a2;
  v9 = MEMORY[0x277D2C938];
  v10 = v7;
  v11 = [v9 globalAsyncScheduler];
  v12 = [v8 futureWithBlock:&v14 scheduler:v11];

  return v12;
}

void __70__HUUserTableViewController__fetchAccountsForHome_forceCloudKitFetch___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) userHandle];
  v6 = [v5 userID];

  if (v6)
  {
    v7 = [*(a1 + 32) userHandle];
    v8 = [v7 userID];
    [v4 addObject:v8];
  }

  v9 = [MEMORY[0x277D14400] sharedInstance];
  v10 = [*(a1 + 40) uniqueIdentifier];
  v11 = [v10 UUIDString];
  v12 = [v9 mediaAccountForHomeIdentifier:v11];

  if (v12 && (*(a1 + 56) & 1) == 0)
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(*(a1 + 48));
      v31 = *(a1 + 40);
      *buf = 138412802;
      v38 = v30;
      v39 = 2112;
      v40 = v12;
      v41 = 2112;
      v42 = v31;
      _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "%@ Found amsMediaAccount [%@] for home [%@]", buf, 0x20u);
    }

    [v4 addObject:v12];
    if ([v4 count])
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v38 = v18;
        v39 = 2112;
        v40 = v4;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@ Found accounts [%@]", buf, 0x16u);
      }

      [v3 finishWithResult:v4];
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] hf_errorWithCode:55];
      [v3 finishWithError:v29];
    }
  }

  else
  {
    v13 = [*(a1 + 32) mediaAccountFuture];
    if (v13)
    {
      v14 = v13;
      v15 = [*(a1 + 32) mediaAccountFuture];
      if ([v15 isCancelled])
      {
      }

      else
      {
        v19 = [*(a1 + 32) mediaAccountFuture];
        v20 = [v19 isFinished];

        if (!v20)
        {
          goto LABEL_18;
        }
      }
    }

    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(*(a1 + 48));
      v23 = *(a1 + 40);
      *buf = 138412546;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%@ Kicking of AMS fetch for Media Account for Home [%@]", buf, 0x16u);
    }

    v24 = [MEMORY[0x277D14400] sharedInstance];
    v25 = [v24 executeHomeMediaAccountFetchForHome:*(a1 + 40)];
    [*(a1 + 32) setMediaAccountFuture:v25];

    v26 = [*(a1 + 32) mediaAccountFuture];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __70__HUUserTableViewController__fetchAccountsForHome_forceCloudKitFetch___block_invoke_24;
    v32[3] = &unk_277DBE6C0;
    v27 = *(a1 + 40);
    v36 = *(a1 + 48);
    v33 = v27;
    v34 = v4;
    v35 = v3;
    v28 = [v26 addCompletionBlock:v32];
  }

LABEL_18:
}

void __70__HUUserTableViewController__fetchAccountsForHome_forceCloudKitFetch___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = NSStringFromSelector(*(a1 + 56));
    v10 = *(a1 + 32);
    v21 = 138412546;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@ Error fetching Media Account for Home [%@]", &v21, 0x16u);
  }

  else
  {
    if (v8)
    {
      v11 = NSStringFromSelector(*(a1 + 56));
      v21 = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@ Successfuly fetched Media Account [%@]", &v21, 0x16u);
    }

    v12 = [*(a1 + 32) uniqueIdentifier];
    v13 = [v12 UUIDString];
    v14 = [v5 objectForKeyedSubscript:v13];

    objc_opt_class();
    v7 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = v7;
    }

    else
    {
      v15 = 0;
    }

    v9 = v15;

    if (v9)
    {
      [*(a1 + 40) addObject:v9];
    }
  }

LABEL_12:
  if ([*(a1 + 40) count])
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(*(a1 + 56));
      v18 = *(a1 + 40);
      v21 = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@ Found accounts [%@]", &v21, 0x16u);
    }

    [*(a1 + 48) finishWithResult:*(a1 + 40)];
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x277CCA9B8] hf_errorWithCode:55];
    [v19 finishWithError:v20];
  }
}

- (void)setAMSiTunesAccount:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D14400] sharedInstance];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__HUUserTableViewController_setAMSiTunesAccount_forHome___block_invoke;
  v21[3] = &unk_277DBE710;
  v21[4] = self;
  v22 = v6;
  v23 = v7;
  v9 = v7;
  v10 = v6;
  [v8 setAMSiTunesAccount:v10 forHome:v9 completion:v21];

  v11 = objc_alloc(MEMORY[0x277D14C98]);
  v12 = [v9 currentUser];
  v13 = [v11 initWithHome:v9 user:v12 nameStyle:0];

  v14 = [v13 setDismissUserSplitMediaAccountWarning:1];
  v15 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v15 layoutIfNeeded];

  v16 = [(HUUserTableViewController *)self tableView];
  [v16 layoutIfNeeded];

  v17 = [(HUUserTableViewController *)self tableView];
  [v17 beginUpdates];

  v18 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v18 dismissSplitAccountView];

  v19 = [(HUUserTableViewController *)self tableView];
  [v19 layoutIfNeeded];

  v20 = [(HUUserTableViewController *)self tableView];
  [v20 endUpdates];
}

void __57__HUUserTableViewController_setAMSiTunesAccount_forHome___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Error setting AMS iTunes Account - [%@] for Home - [%@] - [%@]", &v7, 0x20u);
    }
  }

  else
  {
    [*(a1 + 32) _refreshSplitAccountsHeaderViewIfNeeded:0];
  }
}

- (void)signIniTunesAccount:(id)a3 forHome:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v9 layoutIfNeeded];

  v10 = [(HUUserTableViewController *)self tableView];
  [v10 layoutIfNeeded];

  v11 = [(HUUserTableViewController *)self tableView];
  [v11 beginUpdates];

  v12 = [(HUUserTableViewController *)self userAvatarHeaderView];
  [v12 dismissMultiUserTokenFixUI];

  v13 = [(HUUserTableViewController *)self tableView];
  [v13 layoutIfNeeded];

  v14 = [(HUUserTableViewController *)self tableView];
  [v14 endUpdates];

  v15 = objc_alloc(MEMORY[0x277CEE938]);
  v16 = [v7 uniqueIdentifier];
  v17 = [v15 initWithAccount:v8 homeIdentifier:v16 viewController:self];

  [(HUUserTableViewController *)self setMultiUserTokenFixTask:v17];
  v18 = [(HUUserTableViewController *)self multiUserTokenFixTask];
  v19 = [v18 performTask];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__HUUserTableViewController_signIniTunesAccount_forHome___block_invoke;
  v21[3] = &unk_277DBAFB0;
  v23 = self;
  v24 = a2;
  v22 = v7;
  v20 = v7;
  [v19 addFinishBlock:v21];
}

void __57__HUUserTableViewController_signIniTunesAccount_forHome___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = HFLogForCategory();
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = *(a1 + 32);
      *buf = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@ Error in fixing MultiUser Token for MediaAccount [%@] in Home [%@]", buf, 0x20u);
    }

    v8 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v9 = __57__HUUserTableViewController_signIniTunesAccount_forHome___block_invoke_29;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = *(a1 + 32);
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@ Successfully fixed MultiUser Token for MediaAccount [%@] in Home [%@]", buf, 0x20u);
    }

    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v9 = __57__HUUserTableViewController_signIniTunesAccount_forHome___block_invoke_31;
  }

  v8[2] = v9;
  v8[3] = &unk_277DB8488;
  v8[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = [(HUUserTableViewController *)self userItemManager];
  v8 = [v7 removeItem];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = objc_opt_class();
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HUUserTableViewController.m" lineNumber:391 description:{@"Couldn't find a cell class for item: %@", v6}];

    v10 = 0;
  }

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = [(HUUserTableViewController *)self userItemManager];
  v9 = [v8 removeItem];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = v12;
    [v11 setDestructive:1];
    [v11 setUseFullWidthSeparator:0];
    [v11 setAccessibilityIdentifier:@"Home.Users.RemovePerson"];
  }
}

@end