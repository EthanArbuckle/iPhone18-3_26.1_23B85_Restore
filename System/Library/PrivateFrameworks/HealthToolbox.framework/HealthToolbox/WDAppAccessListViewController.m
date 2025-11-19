@interface WDAppAccessListViewController
- (UIFont)bodyFont;
- (WDAppAccessListViewController)initWithSample:(id)a3 healthStore:(id)a4;
- (id)_identifierForCellInSection:(int64_t)a3;
- (id)_sourceForIndexPath:(id)a3;
- (id)_textForCellAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_displayGuestModeAlert;
- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7;
- (void)_loadIconForSource:(id)a3 onCell:(id)a4 ofTableView:(id)a5;
- (void)_refreshAppAuthorizationData;
- (void)resetAccess;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDAppAccessListViewController

- (WDAppAccessListViewController)initWithSample:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WDAppAccessListViewController;
  v9 = [(HKTableViewController *)&v14 initWithUsingInsetStyling:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sample, a3);
    objc_storeStrong(&v10->_healthStore, a4);
    v11 = [objc_alloc(MEMORY[0x277CCD060]) initWithHealthStore:v8];
    authorizationStore = v10->_authorizationStore;
    v10->_authorizationStore = v11;

    [(WDAppAccessListViewController *)v10 _refreshAppAuthorizationData];
  }

  return v10;
}

- (UIFont)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WDAppAccessListViewController;
  [(HKTableViewController *)&v7 viewDidLoad];
  v3 = *MEMORY[0x277D12780];
  v4 = [(WDAppAccessListViewController *)self tableView];
  [v4 setEstimatedRowHeight:v3];

  v5 = *MEMORY[0x277D76F30];
  v6 = [(WDAppAccessListViewController *)self tableView];
  [v6 setRowHeight:v5];
}

- (void)_refreshAppAuthorizationData
{
  authorizationStore = self->_authorizationStore;
  sample = self->_sample;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke;
  v4[3] = &unk_2796E6C28;
  v4[4] = self;
  [(HKAuthorizationStore *)authorizationStore fetchAuthorizationStatusesForSample:sample completion:v4];
}

void __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke_2;
    block[3] = &unk_2796E6BD8;
    block[4] = *(a1 + 32);
    v39 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_24;
  }

  v29 = [MEMORY[0x277CBEB18] array];
  v30 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v5 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v12 = 1;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v5 objectForKeyedSubscript:v14];
        v16 = [v15 integerValue];

        if (v16 == 2)
        {
          v17 = v29;
          goto LABEL_12;
        }

        if (v16 == 1)
        {
          v17 = v30;
LABEL_12:
          [v17 addObject:v14];
          continue;
        }

        v18 = [*(*(a1 + 32) + 1080) sourceRevision];
        v19 = [v18 source];
        v20 = [v14 isEqual:v19];

        v12 &= v20 ^ 1;
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (!v10)
      {

        if ((v12 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v21 = [*(*(a1 + 32) + 1080) sourceRevision];
  v22 = [v21 source];
  if (([v30 containsObject:v22] & 1) == 0)
  {
    v23 = [*(*(a1 + 32) + 1080) sourceRevision];
    v24 = [v23 source];
    v25 = [v29 containsObject:v24];

    if (v25)
    {
      goto LABEL_23;
    }

    v21 = [*(*(a1 + 32) + 1080) sourceRevision];
    v22 = [v21 source];
    [v29 addObject:v22];
  }

LABEL_23:
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke_306;
  v31[3] = &unk_2796E6C00;
  v31[4] = *(a1 + 32);
  v32 = v29;
  v33 = v30;
  v26 = v30;
  v27 = v29;
  dispatch_async(MEMORY[0x277D85CD0], v31);

  v7 = 0;
LABEL_24:

  v28 = *MEMORY[0x277D85DE8];
}

void __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke_2_cold_1(a1);
  }
}

void __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke_306(uint64_t a1)
{
  [*(a1 + 32) setAllowedApps:*(a1 + 40)];
  [*(a1 + 32) setDisallowedApps:*(a1 + 48)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v9 = 1;
  }

  else
  {
    if (a4 == 1)
    {
      v7 = 1072;
    }

    else
    {
      if (a4)
      {
        v9 = 0;
        goto LABEL_11;
      }

      v7 = 1064;
    }

    v8 = [*(&self->super.super.super.super.super.isa + v7) count];
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }
  }

LABEL_11:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (!a4)
  {
    v6 = @"CCD_SHARED_WITH_APP";
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v6 = @"CCD_NOT_SHARED_WITH_APP";
LABEL_5:
    v7 = WDBundle();
    v8 = [v7 localizedStringForKey:v6 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_identifierForCellInSection:(int64_t)a3
{
  if (a3 == 2)
  {
    v6 = @"WDAppAccessListResetAllCell";
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v3 = 1072;
  }

  else
  {
    if (a3)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v3 = 1064;
  }

  v4 = [*(&self->super.super.super.super.super.isa + v3) count];
  v5 = @"WDAppAccessListAppCell";
  if (!v4)
  {
    v5 = @"WDAppAccessListNoneCell";
  }

  v6 = v5;
LABEL_11:

  return v6;
}

- (id)_sourceForIndexPath:(id)a3
{
  v4 = a3;
  if (![v4 section])
  {
    v5 = &OBJC_IVAR___WDAppAccessListViewController__allowedApps;
    goto LABEL_5;
  }

  if ([v4 section] == 1)
  {
    v5 = &OBJC_IVAR___WDAppAccessListViewController__disallowedApps;
LABEL_5:
    v6 = *(&self->super.super.super.super.super.isa + *v5);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [v4 row];
  if (v7 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v8;
}

- (void)_loadIconForSource:(id)a3 onCell:(id)a4 ofTableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [MEMORY[0x277D127A8] sharedImageManager];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__WDAppAccessListViewController__loadIconForSource_onCell_ofTableView___block_invoke;
  v21[3] = &unk_2796E6C50;
  v12 = v9;
  v22 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__WDAppAccessListViewController__loadIconForSource_onCell_ofTableView___block_invoke_2;
  v16[3] = &unk_2796E6CA0;
  objc_copyWeak(&v20, &location);
  v13 = v8;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [v11 loadIconForSource:v13 syncHandler:v21 asyncHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __71__WDAppAccessListViewController__loadIconForSource_onCell_ofTableView___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 imageView];
  [v4 setImage:v3];
}

void __71__WDAppAccessListViewController__loadIconForSource_onCell_ofTableView___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__WDAppAccessListViewController__loadIconForSource_onCell_ofTableView___block_invoke_3;
  v9[3] = &unk_2796E6C78;
  objc_copyWeak(&v15, a1 + 7);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v15);
}

void __71__WDAppAccessListViewController__loadIconForSource_onCell_ofTableView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleReturnedImage:*(a1 + 32) forSource:*(a1 + 40) cell:*(a1 + 48) tableView:*(a1 + 56) fetchError:*(a1 + 64)];
}

- (void)_handleReturnedImage:(id)a3 forSource:(id)a4 cell:(id)a5 tableView:(id)a6 fetchError:(id)a7
{
  v18 = a3;
  v12 = a5;
  if (v18 && !a7)
  {
    v13 = a4;
    v14 = [a6 indexPathForCell:v12];
    v15 = [(WDAppAccessListViewController *)self _sourceForIndexPath:v14];
    v16 = [v15 isEqual:v13];

    if (v16)
    {
      v17 = [v12 imageView];
      [v17 setImage:v18];
    }
  }
}

- (id)_textForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (!v5)
  {
    v8 = &OBJC_IVAR___WDAppAccessListViewController__allowedApps;
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v8 = &OBJC_IVAR___WDAppAccessListViewController__disallowedApps;
LABEL_7:
    v6 = *(&self->super.super.super.super.super.isa + *v8);
LABEL_9:
    if ([v6 count])
    {
      v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
      [v9 name];
    }

    else
    {
      v9 = WDBundle();
      [v9 localizedStringForKey:@"NO_APPS_TO_SHOW" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    }
    v7 = ;

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = WDBundle();
  v7 = [v6 localizedStringForKey:@"RESET_SHARING" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
LABEL_13:

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[WDAppAccessListViewController _identifierForCellInSection:](self, "_identifierForCellInSection:", [v7 section]);
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v8];
  }

  if ([v7 section] == 2)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v9 setSelectionStyle:v10];
  v11 = [(WDAppAccessListViewController *)self _textForCellAtIndexPath:v7];
  v12 = [v9 textLabel];
  [v12 setText:v11];

  v13 = [(WDAppAccessListViewController *)self bodyFont];
  v14 = [v9 textLabel];
  [v14 setFont:v13];

  v15 = [(WDAppAccessListViewController *)self _sourceForIndexPath:v7];
  [(WDAppAccessListViewController *)self _loadIconForSource:v15 onCell:v9 ofTableView:v6];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 section] == 2)
  {
    [(WDAppAccessListViewController *)self resetAccess];
  }

  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)resetAccess
{
  v7[1] = *MEMORY[0x277D85DE8];
  authorizationStore = self->_authorizationStore;
  v7[0] = self->_sample;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WDAppAccessListViewController_resetAccess__block_invoke;
  v6[3] = &unk_2796E6CC8;
  v6[4] = self;
  [(HKAuthorizationStore *)authorizationStore resetAuthorizationStatusesForObjects:v4 completion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __44__WDAppAccessListViewController_resetAccess__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _refreshAppAuthorizationData];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__WDAppAccessListViewController_resetAccess__block_invoke_cold_1(a1);
    }
  }
}

- (void)_displayGuestModeAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_DESCRIPTION" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v12 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v11 = [v8 actionWithTitle:v10 style:0 handler:0];

  [v12 addAction:v11];
  [(WDAppAccessListViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDAppAccessListViewController;
  [(WDAppAccessListViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDAppAccessListViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      bodyFont = self->_bodyFont;
      self->_bodyFont = 0;
    }
  }
}

void __61__WDAppAccessListViewController__refreshAppAuthorizationData__block_invoke_2_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sample];
  v10 = *(a1 + 40);
  OUTLINED_FUNCTION_0(&dword_251E85000, v3, v4, "Failed to retrieve authorization records for sample: %@ with error: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

void __44__WDAppAccessListViewController_resetAccess__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) sample];
  v2 = [v1 UUID];
  OUTLINED_FUNCTION_0(&dword_251E85000, v3, v4, "Failed to reset authorization for sample: %@ with error: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end