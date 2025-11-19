@interface HUManagedConfigurationProfilesViewController
- (BOOL)profileViewControllerIsProfileInstalled;
- (HUManagedConfigurationProfilesViewController)initWithAccessory:(id)a3;
- (HUPresentationDelegate)presentationDelegate;
- (id)_confirmProfileDeletion:(id)a3;
- (id)_newCellForProfile:(id)a3;
- (id)_profileForIdentifier:(id)a3;
- (id)_removeProfileForIdentifier:(id)a3;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)_fetchDataAndReloadTable;
- (void)_reloadTableViewWithExistingData;
- (void)profileViewControllerDidSelectRemoveProfile:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUManagedConfigurationProfilesViewController

- (HUManagedConfigurationProfilesViewController)initWithAccessory:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUManagedConfigurationProfilesViewController;
  v5 = [(HUManagedConfigurationProfilesViewController *)&v8 initWithStyle:2];
  if (v5)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUManagedConfigurationProfilesTitle", @"HUManagedConfigurationProfilesTitle", 1);
    [(HUManagedConfigurationProfilesViewController *)v5 setTitle:v6];

    [(HUManagedConfigurationProfilesViewController *)v5 setAccessory:v4];
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUManagedConfigurationProfilesViewController;
  [(HUManagedConfigurationProfilesViewController *)&v7 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B60]);
  v4 = [(HUManagedConfigurationProfilesViewController *)self tableView];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HUManagedConfigurationProfilesViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_277DC1E08;
  v6[4] = self;
  v5 = [v3 initWithTableView:v4 cellProvider:v6];
  [(HUManagedConfigurationProfilesViewController *)self setTableViewDataSource:v5];
}

id __59__HUManagedConfigurationProfilesViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [*(a1 + 32) _newCellForProfile:a4];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = HUManagedConfigurationProfilesViewController;
  [(HUManagedConfigurationProfilesViewController *)&v5 viewWillAppear:a3];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[HUManagedConfigurationProfilesViewController viewWillAppear:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@)%s: beginning fetch & reload sequence", buf, 0x16u);
  }

  [(HUManagedConfigurationProfilesViewController *)self _fetchDataAndReloadTable];
}

- (id)_newCellForProfile:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277D264D0]);
  v7 = [(HUManagedConfigurationProfilesViewController *)self profiles];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HUManagedConfigurationProfilesViewController__newCellForProfile___block_invoke;
  v18[3] = &unk_277DC1E30;
  v8 = v5;
  v19 = v8;
  v9 = [v7 na_firstObjectPassingTest:v18];

  v10 = MEMORY[0x277D26290];
  v11 = [v9 profileData];
  v17 = 0;
  v12 = [v10 profileWithData:v11 outError:&v17];
  v13 = v17;

  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "%@ Profile not found for %@", buf, 0x16u);
    }
  }

  [v6 setProfile:v12];
  [v6 setAccessoryType:1];

  return v6;
}

uint64_t __67__HUManagedConfigurationProfilesViewController__newCellForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_fetchDataAndReloadTable
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(HUManagedConfigurationProfilesViewController *)self fetchDataFuture];
  if (v4)
  {
    v5 = [(HUManagedConfigurationProfilesViewController *)self fetchDataFuture];
    v6 = [v5 isFinished];

    if ((v6 & 1) == 0)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = self;
        v24 = 2080;
        v25 = "[HUManagedConfigurationProfilesViewController _fetchDataAndReloadTable]";
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%@)%s: Called with existing fetch future - cancelling existing future", buf, 0x16u);
      }

      v8 = [(HUManagedConfigurationProfilesViewController *)self fetchDataFuture];
      [v8 cancel];
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke;
  v21[3] = &unk_277DBB150;
  v21[4] = self;
  v9 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke_2;
  v20[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v20[4] = a2;
  v10 = [v9 addFailureBlock:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke_42;
  v19[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v19[4] = a2;
  v11 = [v9 addSuccessBlock:v19];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = self;
    v24 = 2080;
    v25 = "[HUManagedConfigurationProfilesViewController _fetchDataAndReloadTable]";
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%@)%s: Kicking off fetch future - will reload if successful", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke_45;
  v17 = &unk_277DC00F0;
  objc_copyWeak(&v18, buf);
  v13 = [v9 flatMap:&v14];
  [(HUManagedConfigurationProfilesViewController *)self setFetchDataFuture:v13, v14, v15, v16, v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessory];
  [v4 fetchManagedConfigurationProfilesWithCompletionHandler:v3];
}

void __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@ Error fetching managed configuration profiles %@", &v6, 0x16u);
  }
}

void __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke_42(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEBUG, "%@ fetching managed configuration profiles returned %@", &v6, 0x16u);
  }
}

id __72__HUManagedConfigurationProfilesViewController__fetchDataAndReloadTable__block_invoke_45(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProfiles:v3];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = WeakRetained;
    v10 = 2080;
    v11 = "[HUManagedConfigurationProfilesViewController _fetchDataAndReloadTable]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: fetch future succeeded, reloading table view...", &v8, 0x16u);
  }

  [WeakRetained _reloadTableViewWithExistingData];
  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

- (void)_reloadTableViewWithExistingData
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__HUManagedConfigurationProfilesViewController__reloadTableViewWithExistingData__block_invoke;
  v3[3] = &unk_277DB8770;
  objc_copyWeak(&v4, &location);
  [v2 performBlock:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __80__HUManagedConfigurationProfilesViewController__reloadTableViewWithExistingData__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = WeakRetained;
    v15 = 2080;
    v16 = "[HUManagedConfigurationProfilesViewController _reloadTableViewWithExistingData]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%@)%s: Reload for managed configuration profiles table", buf, 0x16u);
  }

  v3 = objc_opt_new();
  v4 = [WeakRetained profiles];
  v5 = [v4 na_map:&__block_literal_global_223];
  [v3 appendSectionsWithIdentifiers:v5];

  v6 = [WeakRetained profiles];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HUManagedConfigurationProfilesViewController__reloadTableViewWithExistingData__block_invoke_2;
  v11[3] = &unk_277DC1E78;
  v7 = v3;
  v12 = v7;
  [v6 na_each:v11];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = WeakRetained;
    v15 = 2080;
    v16 = "[HUManagedConfigurationProfilesViewController _reloadTableViewWithExistingData]_block_invoke_3";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: applying snapshot: %@", buf, 0x20u);
  }

  v9 = [WeakRetained tableViewDataSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HUManagedConfigurationProfilesViewController__reloadTableViewWithExistingData__block_invoke_54;
  v10[3] = &unk_277DB8488;
  v10[4] = WeakRetained;
  [v9 applySnapshot:v7 animatingDifferences:0 completion:v10];
}

void __80__HUManagedConfigurationProfilesViewController__reloadTableViewWithExistingData__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [v3 identifier];

  [v2 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:v6];
}

void __80__HUManagedConfigurationProfilesViewController__reloadTableViewWithExistingData__block_invoke_54(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412546;
    v5 = v3;
    v6 = 2080;
    v7 = "[HUManagedConfigurationProfilesViewController _reloadTableViewWithExistingData]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%@)%s: snapshot applied", &v4, 0x16u);
  }
}

- (id)_profileForIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUManagedConfigurationProfilesViewController *)self profiles];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__HUManagedConfigurationProfilesViewController__profileForIdentifier___block_invoke;
  v17[3] = &unk_277DC1E30;
  v7 = v5;
  v18 = v7;
  v8 = [v6 na_firstObjectPassingTest:v17];

  v9 = MEMORY[0x277D26290];
  v10 = [v8 profileData];
  v16 = 0;
  v11 = [v9 profileWithData:v10 outError:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@ Profile not found for %@", buf, 0x16u);
    }
  }

  return v11;
}

uint64_t __70__HUManagedConfigurationProfilesViewController__profileForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_removeProfileForIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[HUManagedConfigurationProfilesViewController _removeProfileForIdentifier:]";
    v16 = 2112;
    v17 = self;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%s(%@) Removing profileIdentifier = %@ ", buf, 0x20u);
  }

  v7 = [(HUManagedConfigurationProfilesViewController *)self _profileForIdentifier:v5];
  if (v7)
  {
    objc_initWeak(buf, self);
    v8 = [(HUManagedConfigurationProfilesViewController *)self _confirmProfileDeletion:v7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke;
    v11[3] = &unk_277DC1EC8;
    objc_copyWeak(v13, buf);
    v12 = v5;
    v13[1] = a2;
    v9 = [v8 flatMap:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v9;
}

id __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x277D2C900];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke_2;
  v19[3] = &unk_277DB9D40;
  objc_copyWeak(&v21, (a1 + 40));
  v20 = *(a1 + 32);
  v6 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke_3;
  v16[3] = &unk_277DB8E70;
  v18 = *(a1 + 48);
  v17 = *(a1 + 32);
  v7 = [v6 addFailureBlock:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke_57;
  v12[3] = &unk_277DC1EA0;
  v15 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = WeakRetained;
  v8 = [v6 addSuccessBlock:v12];
  v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [v6 reschedule:v9];

  objc_destroyWeak(&v21);

  return v10;
}

void __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained accessory];
  [v4 removeManagedConfigurationProfileWithIdentifier:*(a1 + 32) completionHandler:v3];
}

void __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@ Error removing profile %@: %@", &v7, 0x20u);
  }
}

uint64_t __76__HUManagedConfigurationProfilesViewController__removeProfileForIdentifier___block_invoke_57(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@ Profile %@ removed", &v6, 0x16u);
  }

  return [*(a1 + 40) _fetchDataAndReloadTable];
}

- (id)_confirmProfileDeletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerRemoveProfile", @"HUAccessorySettingsProfileViewControllerRemoveProfile", 1);
  v7 = [v4 needsReboot];

  if (v7)
  {
    v8 = @"HUAccessorySettingsProfileViewControllerRemoveNeedsReboot";
  }

  else
  {
    v8 = @"HUAccessorySettingsProfileViewControllerRemove";
  }

  v9 = _HULocalizedStringWithDefaultValue(v8, v8, 1);
  v10 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerDeleteActionTitle", @"HUAccessorySettingsProfileViewControllerDeleteActionTitle", 1);
  v11 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsProfileViewControllerCancelActionTitle", @"HUAccessorySettingsProfileViewControllerCancelActionTitle", 1);
  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HUManagedConfigurationProfilesViewController__confirmProfileDeletion___block_invoke;
  v27[3] = &unk_277DB7600;
  v14 = v5;
  v28 = v14;
  v15 = [v13 actionWithTitle:v10 style:2 handler:v27];
  [v12 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __72__HUManagedConfigurationProfilesViewController__confirmProfileDeletion___block_invoke_2;
  v25 = &unk_277DB7600;
  v17 = v14;
  v26 = v17;
  v18 = [v16 actionWithTitle:v11 style:1 handler:&v22];
  [v12 addAction:{v18, v22, v23, v24, v25}];

  [(HUManagedConfigurationProfilesViewController *)self presentViewController:v12 animated:1 completion:0];
  v19 = v26;
  v20 = v17;

  return v17;
}

void __72__HUManagedConfigurationProfilesViewController__confirmProfileDeletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] na_cancelledError];
  [v1 finishWithError:v2];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HUManagedConfigurationProfilesViewController *)self tableViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "[HUManagedConfigurationProfilesViewController tableView:didSelectRowAtIndexPath:]";
    v14 = 2112;
    v15 = self;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s(%@) tapping indexPath = %@/profileIdentifier = %@ ", &v12, 0x2Au);
  }

  v9 = [(HUManagedConfigurationProfilesViewController *)self _profileForIdentifier:v7];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D264D8]) initWithStyle:1 profile:v9 profileViewMode:2];
    [v10 setProfileViewControllerDelegate:self];
    v11 = [(HUManagedConfigurationProfilesViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[HUManagedConfigurationProfilesViewController tableView:trailingSwipeActionsConfigurationForRowAtIndexPath:]";
    v23 = 2112;
    v24 = self;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s(%@) User swiped for trailing actions on indexPath = %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v9 = MEMORY[0x277D753C0];
  v10 = _HULocalizedStringWithDefaultValue(@"HUProfileDeletion", @"HUProfileDeletion", 1);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __109__HUManagedConfigurationProfilesViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
  v17[3] = &unk_277DBD9F8;
  objc_copyWeak(&v19, buf);
  v11 = v7;
  v18 = v11;
  v12 = [v9 contextualActionWithStyle:1 title:v10 handler:v17];

  v13 = MEMORY[0x277D75AD8];
  v20 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v15 = [v13 configurationWithActions:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return v15;
}

void __109__HUManagedConfigurationProfilesViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained tableViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:*(a1 + 32)];

  v8 = [WeakRetained _removeProfileForIdentifier:v7];
  v5[2](v5, 1);
}

- (BOOL)profileViewControllerIsProfileInstalled
{
  v2 = [(HUManagedConfigurationProfilesViewController *)self profiles];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)profileViewControllerDidSelectRemoveProfile:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUManagedConfigurationProfilesViewController *)self profiles];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HUManagedConfigurationProfilesViewController_profileViewControllerDidSelectRemoveProfile___block_invoke;
  v19[3] = &unk_277DC1EF0;
  v21 = a2;
  v7 = v5;
  v20 = v7;
  v8 = [v6 na_firstObjectPassingTest:v19];

  if (v8)
  {
    objc_initWeak(location, self);
    v9 = [v8 identifier];
    v10 = [(HUManagedConfigurationProfilesViewController *)self _removeProfileForIdentifier:v9];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __92__HUManagedConfigurationProfilesViewController_profileViewControllerDidSelectRemoveProfile___block_invoke_86;
    v16[3] = &unk_277DBD700;
    objc_copyWeak(&v18, location);
    v17 = v7;
    v11 = [v10 flatMap:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = [v7 UIProfile];
      v15 = [v14 profile];
      *location = 138412546;
      *&location[4] = v13;
      v23 = 2112;
      v24 = v15;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@ Profile %@ not found !?", location, 0x16u);
    }
  }
}

uint64_t __92__HUManagedConfigurationProfilesViewController_profileViewControllerDidSelectRemoveProfile___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D26290];
  v5 = [v3 profileData];
  v16 = 0;
  v6 = [v4 profileWithData:v5 outError:&v16];
  v7 = v16;

  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "%@ Profile not found for %@", buf, 0x16u);
    }
  }

  v9 = [v6 UUID];
  v10 = [*(a1 + 32) UIProfile];
  v11 = [v10 profile];
  v12 = [v11 UUID];
  v13 = [v9 isEqualToString:v12];

  return v13;
}

id __92__HUManagedConfigurationProfilesViewController_profileViewControllerDidSelectRemoveProfile___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  v5 = [WeakRetained profiles];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [WeakRetained navigationController];
    v8 = [v7 popViewControllerAnimated:1];
  }

  [WeakRetained _fetchDataAndReloadTable];
  v9 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v9;
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

@end