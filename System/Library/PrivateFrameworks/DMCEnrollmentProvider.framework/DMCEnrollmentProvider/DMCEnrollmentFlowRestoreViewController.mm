@interface DMCEnrollmentFlowRestoreViewController
- (DMCEnrollmentFlowRestoreViewController)initWithDelegate:(id)a3 managedAppleID:(id)a4 restoreSnapshot:(id)a5 conflictingApps:(id)a6;
- (DMCEnrollmentFlowRestoreViewControllerDelegate)delegate;
- (id)_appNamesFromBunldeIDs:(id)a3;
- (void)loadView;
- (void)updateContinueButtonStatus;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DMCEnrollmentFlowRestoreViewController

- (DMCEnrollmentFlowRestoreViewController)initWithDelegate:(id)a3 managedAppleID:(id)a4 restoreSnapshot:(id)a5 conflictingApps:(id)a6
{
  v46[3] = *MEMORY[0x277D85DE8];
  obj = a3;
  v36 = a4;
  v10 = a5;
  v11 = a6;
  v38 = [MEMORY[0x277D755B8] _systemImageNamed:@"clock.arrow.circlepath"];
  v12 = DMCLocalizedString();
  v42.receiver = self;
  v42.super_class = DMCEnrollmentFlowRestoreViewController;
  v13 = [(DMCEnrollmentTemplateTableViewController *)&v42 initWithIconImage:v38 title:v12 subTitle:0];

  if (v13)
  {
    objc_storeWeak(&v13->_delegate, obj);
    objc_storeStrong(&v13->_restoreSnapshot, a5);
    v35 = [v10 date];
    v34 = [MEMORY[0x277CCA968] localizedStringFromDate:v35 dateStyle:2 timeStyle:1];
    v14 = [DMCEnrollmentTableViewTextCell alloc];
    v15 = DMCLocalizedFormat();
    v16 = [(DMCEnrollmentTableViewTextCell *)v14 initWithText:v15 bold:0, v36, v34];
    v46[0] = v16;
    v17 = [DMCEnrollmentTableViewTextCell alloc];
    v18 = [v10 deviceName];
    v19 = [(DMCEnrollmentTableViewTextCell *)v17 initWithText:v18 bold:1];
    v46[1] = v19;
    v20 = [DMCEnrollmentTableViewTextCell alloc];
    v21 = DMCLocalizedString();
    v22 = [(DMCEnrollmentTableViewTextCell *)v20 initWithText:v21 bold:0];
    v46[2] = v22;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];

    [(DMCEnrollmentTemplateTableViewController *)v13 addCellData:v33 animated:0];
    if ([v11 count])
    {
      [v11 count];
      v23 = DMCLocalizedStringByDevice();
      v24 = [[DMCEnrollmentTableViewTextCell alloc] initWithText:v23 bold:0];
      v45 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [(DMCEnrollmentTemplateTableViewController *)v13 addCellData:v25 animated:0];

      v26 = [DMCEnrollmentNameListCell alloc];
      v27 = [(DMCEnrollmentFlowRestoreViewController *)v13 _appNamesFromBunldeIDs:v11];
      v28 = [(DMCEnrollmentNameListCell *)v26 initWithNames:v27 numberOfColumns:2];
      v44 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [(DMCEnrollmentTemplateTableViewController *)v13 addSectionWithCellData:v29 animated:0];
    }

    objc_initWeak(&location, v13);
    v43 = objc_opt_class();
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __106__DMCEnrollmentFlowRestoreViewController_initWithDelegate_managedAppleID_restoreSnapshot_conflictingApps___block_invoke;
    v39[3] = &unk_278EE7C08;
    objc_copyWeak(&v40, &location);
    v31 = [(DMCEnrollmentFlowRestoreViewController *)v13 registerForTraitChanges:v30 withHandler:v39];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __106__DMCEnrollmentFlowRestoreViewController_initWithDelegate_managedAppleID_restoreSnapshot_conflictingApps___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained;
  BSRunLoopPerformAfterCACommit();
}

void __106__DMCEnrollmentFlowRestoreViewController_initWithDelegate_managedAppleID_restoreSnapshot_conflictingApps___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = DMCEnrollmentFlowRestoreViewController;
  [(DMCEnrollmentFlowRestoreViewController *)&v12 loadView];
  objc_initWeak(&location, self);
  v3 = [DMCEnrollmentConfirmationView alloc];
  v4 = DMCLocalizedString();
  v5 = DMCLocalizedString();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__DMCEnrollmentFlowRestoreViewController_loadView__block_invoke;
  v9[3] = &unk_278EE7880;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DMCEnrollmentFlowRestoreViewController_loadView__block_invoke_32;
  v7[3] = &unk_278EE7880;
  objc_copyWeak(&v8, &location);
  v6 = [(DMCEnrollmentConfirmationView *)v3 initWithConfirmationText:v4 cancelText:v5 confirmationAction:v9 cancelAction:v7];

  [(DMCEnrollmentFlowRestoreViewController *)self setConfirmationView:v6];
  [(DMCEnrollmentTemplateTableViewController *)self addBottomView:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__DMCEnrollmentFlowRestoreViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_247E7D000, v2, OS_LOG_TYPE_INFO, "DMCEnrollmentFlowRestoreViewController will restore", v4, 2u);
    }

    [WeakRetained setInProgress:1];
    v3 = [WeakRetained delegate];
    [v3 restoreViewController:WeakRetained didReceiveUserAction:1];
  }
}

void __50__DMCEnrollmentFlowRestoreViewController_loadView__block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_247E7D000, v2, OS_LOG_TYPE_INFO, "DMCEnrollmentFlowRestoreViewController skip restore", v4, 2u);
    }

    v3 = [WeakRetained delegate];
    [v3 restoreViewController:WeakRetained didReceiveUserAction:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DMCEnrollmentFlowRestoreViewController;
  [(DMCEnrollmentTemplateTableViewController *)&v5 viewWillAppear:a3];
  v4 = [(DMCEnrollmentFlowRestoreViewController *)self navigationItem];
  [v4 setHidesBackButton:1];

  [(DMCEnrollmentFlowRestoreViewController *)self setModalInPresentation:1];
}

- (void)updateContinueButtonStatus
{
  v3 = [(DMCEnrollmentTemplateTableViewController *)self inProgress];
  v4 = [(DMCEnrollmentFlowRestoreViewController *)self confirmationView];
  [v4 setInProgress:v3];
}

- (id)_appNamesFromBunldeIDs:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    *&v7 = 138543618;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CC1E70]);
        v23 = 0;
        v13 = [v12 initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v23];
        v14 = v23;
        if (v14)
        {
          v15 = *DMCLogObjects();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v29 = v11;
            v30 = 2114;
            v31 = v14;
            _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_ERROR, "Failed to load record for app: %{public}@ with error: %{public}@", buf, 0x16u);
          }
        }

        v16 = [v13 localizedShortName];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = [v13 localizedName];
        }

        v19 = v18;

        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v11;
        }

        [v4 addObject:v20];
      }

      v8 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  return v4;
}

- (DMCEnrollmentFlowRestoreViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end