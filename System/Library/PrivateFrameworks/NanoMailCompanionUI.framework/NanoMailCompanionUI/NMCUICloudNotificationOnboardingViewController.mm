@interface NMCUICloudNotificationOnboardingViewController
+ (BOOL)missingCredentialsForAccounts:(id)a3;
+ (id)detailTextForAccounts:(id)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (NMCUICloudNotificationOnboardingViewController)initWithAccount:(id)a3 dataSource:(id)a4 completion:(id)a5;
- (NMCUICloudNotificationOnboardingViewController)initWithAccounts:(id)a3 dataSource:(id)a4 completion:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)accountDataSourceAccountsChanged:(id)a3;
- (void)enableButtonTapped:(id)a3;
- (void)setupView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation NMCUICloudNotificationOnboardingViewController

- (NMCUICloudNotificationOnboardingViewController)initWithAccount:(id)a3 dataSource:(id)a4 completion:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v12 = [v11 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v21[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v14 = [NMCUICloudNotificationOnboardingViewController detailTextForAccounts:v13];
  v19.receiver = self;
  v19.super_class = NMCUICloudNotificationOnboardingViewController;
  v15 = [(OBTableWelcomeController *)&v19 initWithTitle:v12 detailText:v14 symbolName:@"bell.badge.fill"];

  if (v15)
  {
    v20 = v8;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(NMCUICloudNotificationOnboardingViewController *)v15 setAccounts:v16];

    [(NMCUICloudNotificationOnboardingViewController *)v15 setCompletion:v10];
    [v9 addObserver:v15];
    [(NMCUICloudNotificationOnboardingViewController *)v15 setDataSource:v9];
    [(NMCUICloudNotificationOnboardingViewController *)v15 setupView];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NMCUICloudNotificationOnboardingViewController)initWithAccounts:(id)a3 dataSource:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 ac_filter:&__block_literal_global_0];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v12 = [v11 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v13 = [NMCUICloudNotificationOnboardingViewController detailTextForAccounts:v10];
  v16.receiver = self;
  v16.super_class = NMCUICloudNotificationOnboardingViewController;
  v14 = [(OBTableWelcomeController *)&v16 initWithTitle:v12 detailText:v13 symbolName:@"bell.badge.fill"];

  if (v14)
  {
    [v8 addObserver:v14];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setDataSource:v8];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setCompletion:v9];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setAccounts:v10];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setupView];
  }

  return v14;
}

- (void)setupView
{
  v27 = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v4 = [v3 localizedStringForKey:@"CLOUD_NOTIFICATIONS_ENABLE_BUTTON_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  [v27 setTitle:v4 forState:0];

  [v27 addTarget:self action:sel_enableButtonTapped_ forControlEvents:64];
  v5 = [(NMCUICloudNotificationOnboardingViewController *)self buttonTray];
  [v5 addButton:v27];

  v6 = [MEMORY[0x277D37650] linkButton];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v8 = [v7 localizedStringForKey:@"CLOUD_NOTIFICATIONS_SKIP_BUTTON_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  [v6 setTitle:v8 forState:0];

  [v6 addTarget:self action:sel_notNowButtonTapped_ forControlEvents:64];
  v9 = [(NMCUICloudNotificationOnboardingViewController *)self buttonTray];
  [v9 addButton:v6];

  v10 = [(NMCUICloudNotificationOnboardingViewController *)self buttonTray];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v12 = [v11 localizedStringForKey:@"CLOUD_NOTIFICATIONS_API_DISCLOSURE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  [v10 setCaptionText:v12];

  v13 = objc_alloc(MEMORY[0x277D75B40]);
  v14 = [v13 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v14];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setScrollEnabled:0];

  v17 = [(OBTableWelcomeController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[NMCUIAccountsSettingsViewCell reuseIdentifier];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 setDataSource:self];

  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 setDelegate:self];

  v22 = [(OBTableWelcomeController *)self tableView];
  v23 = [v22 heightAnchor];
  v24 = [v23 constraintEqualToConstant:400.0];
  [(NMCUICloudNotificationOnboardingViewController *)self setTableViewHeightConstraint:v24];

  v25 = [(OBTableWelcomeController *)self tableView];
  v26 = [(NMCUICloudNotificationOnboardingViewController *)self tableViewHeightConstraint];
  [v25 addConstraint:v26];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(NMCUICloudNotificationOnboardingViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(NMCUICloudNotificationOnboardingViewController *)self tableViewHeightConstraint];
  [v7 setConstant:v6];

  v8.receiver = self;
  v8.super_class = NMCUICloudNotificationOnboardingViewController;
  [(OBTableWelcomeController *)&v8 viewDidLayoutSubviews];
}

+ (id)detailTextForAccounts:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 acAccount];

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v6 = v5;
  if (v4)
  {
    v7 = @"CLOUD_NOTIFICATIONS_DETAIL_TINKER";
  }

  else
  {
    v7 = @"CLOUD_NOTIFICATIONS_DETAIL";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];

  return v8;
}

+ (BOOL)missingCredentialsForAccounts:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![NMCUICloudNotificationAccountDataSource accountHasCredentials:*(*(&v9 + 1) + 8 * i), v9])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)enableButtonTapped:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() missingCredentialsForAccounts:self->_accounts])
  {
    v5 = MEMORY[0x277D75110];
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v7 = [v6 localizedStringForKey:@"CLOUD_NOTIFICATIONS_NOT_ALL_ACCOUNT_ENABLED_ALERT_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v9 = [v8 localizedStringForKey:@"CLOUD_NOTIFICATIONS_NOT_ALL_ACCOUNT_ENABLED_ALERT_DETAILS" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v13 = [v12 localizedStringForKey:@"CANCEL_ALERT_BUTTON" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    v14 = [v11 actionWithTitle:v13 style:1 handler:0];

    objc_initWeak(location, self);
    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
    v17 = [v16 localizedStringForKey:@"CONTINUE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __69__NMCUICloudNotificationOnboardingViewController_enableButtonTapped___block_invoke;
    v27 = &unk_279934880;
    objc_copyWeak(&v29, location);
    v28 = self;
    v18 = [v15 actionWithTitle:v17 style:0 handler:&v24];

    [v10 addAction:{v14, v24, v25, v26, v27}];
    [v10 addAction:v18];
    [(NMCUICloudNotificationOnboardingViewController *)self presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
    [v19 setCloudNotificationsEnabled:1];

    v20 = __logCategories;
    if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v22;
      _os_log_impl(&dword_25B191000, v21, OS_LOG_TYPE_DEFAULT, "self.dataSource.cloudNotificationsEnabled: %{public}@", location, 0xCu);
    }

    [(NMCUICloudNotificationOnboardingViewController *)self dismissViewControllerAnimated:1 completion:self->_completion];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __69__NMCUICloudNotificationOnboardingViewController_enableButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataSource];
  [v2 setCloudNotificationsEnabled:1];

  v3 = [*(a1 + 32) completion];
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NMCUIAccountsSettingsViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(NMCUICloudNotificationOnboardingViewController *)self accounts];
  v11 = [v6 item];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [v12 displayName];
  v14 = [v9 textLabel];
  [v14 setText:v13];

  v15 = [v12 emailAddress];
  v16 = [v9 detailTextLabel];
  [v16 setText:v15];

  v17 = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
  LODWORD(v15) = [v17 accountIsPending:v12];

  if (v15)
  {
    v18 = [v9 spinner];
    [v9 setAccessoryView:v18];

    v19 = [v9 spinner];
    [v19 startAnimating];

LABEL_5:
    v20 = 0;
    goto LABEL_7;
  }

  if ([NMCUICloudNotificationAccountDataSource accountHasCredentials:v12])
  {
    [v9 setAccessoryView:0];
    goto LABEL_5;
  }

  v21 = [v9 warningLabel];
  [v9 setAccessoryView:v21];

  v20 = 3;
LABEL_7:
  [v9 setSelectionStyle:v20];

  return v9;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NMCUICloudNotificationOnboardingViewController *)self accounts];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  LOBYTE(v6) = [NMCUICloudNotificationAccountDataSource accountHasCredentials:v8];
  return v6 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NMCUICloudNotificationOnboardingViewController *)self accounts];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

  objc_initWeak(&location, self);
  v10 = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__NMCUICloudNotificationOnboardingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v11[3] = &unk_2799348A8;
  objc_copyWeak(&v12, &location);
  [v10 handleAccountAuthenication:v9 viewController:self stateUpdateHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __84__NMCUICloudNotificationOnboardingViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__NMCUICloudNotificationOnboardingViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  block[3] = &unk_2799348A8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __84__NMCUICloudNotificationOnboardingViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tableView];
  [v1 reloadData];
}

- (void)accountDataSourceAccountsChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__NMCUICloudNotificationOnboardingViewController_accountDataSourceAccountsChanged___block_invoke;
  v6[3] = &unk_2799348D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __83__NMCUICloudNotificationOnboardingViewController_accountDataSourceAccountsChanged___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [*(a1 + 32) accounts];
  v19 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = a1;
  obj = [*(a1 + 40) accounts];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [*(v21 + 32) accounts];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v22 + 1) + 8 * j) identifier];
              v14 = [v7 identifier];
              v15 = [v13 isEqualToString:v14];

              if (v15)
              {
                [v19 addObject:v7];
                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  [*(v21 + 32) setAccounts:v19];
  v16 = [*(v21 + 32) tableView];
  [v16 reloadData];

  v17 = *MEMORY[0x277D85DE8];
}

@end