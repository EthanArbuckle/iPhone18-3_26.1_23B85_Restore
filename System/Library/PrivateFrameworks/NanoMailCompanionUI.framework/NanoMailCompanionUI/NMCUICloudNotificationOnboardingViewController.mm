@interface NMCUICloudNotificationOnboardingViewController
+ (BOOL)missingCredentialsForAccounts:(id)accounts;
+ (id)detailTextForAccounts:(id)accounts;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (NMCUICloudNotificationOnboardingViewController)initWithAccount:(id)account dataSource:(id)source completion:(id)completion;
- (NMCUICloudNotificationOnboardingViewController)initWithAccounts:(id)accounts dataSource:(id)source completion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)accountDataSourceAccountsChanged:(id)changed;
- (void)enableButtonTapped:(id)tapped;
- (void)setupView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation NMCUICloudNotificationOnboardingViewController

- (NMCUICloudNotificationOnboardingViewController)initWithAccount:(id)account dataSource:(id)source completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  sourceCopy = source;
  completionCopy = completion;
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v12 = [v11 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v21[0] = accountCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v14 = [NMCUICloudNotificationOnboardingViewController detailTextForAccounts:v13];
  v19.receiver = self;
  v19.super_class = NMCUICloudNotificationOnboardingViewController;
  v15 = [(OBTableWelcomeController *)&v19 initWithTitle:v12 detailText:v14 symbolName:@"bell.badge.fill"];

  if (v15)
  {
    v20 = accountCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(NMCUICloudNotificationOnboardingViewController *)v15 setAccounts:v16];

    [(NMCUICloudNotificationOnboardingViewController *)v15 setCompletion:completionCopy];
    [sourceCopy addObserver:v15];
    [(NMCUICloudNotificationOnboardingViewController *)v15 setDataSource:sourceCopy];
    [(NMCUICloudNotificationOnboardingViewController *)v15 setupView];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NMCUICloudNotificationOnboardingViewController)initWithAccounts:(id)accounts dataSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v10 = [accounts ac_filter:&__block_literal_global_0];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v12 = [v11 localizedStringForKey:@"CLOUD_NOTIFICATIONS_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v13 = [NMCUICloudNotificationOnboardingViewController detailTextForAccounts:v10];
  v16.receiver = self;
  v16.super_class = NMCUICloudNotificationOnboardingViewController;
  v14 = [(OBTableWelcomeController *)&v16 initWithTitle:v12 detailText:v13 symbolName:@"bell.badge.fill"];

  if (v14)
  {
    [sourceCopy addObserver:v14];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setDataSource:sourceCopy];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setCompletion:completionCopy];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setAccounts:v10];
    [(NMCUICloudNotificationOnboardingViewController *)v14 setupView];
  }

  return v14;
}

- (void)setupView
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v4 = [v3 localizedStringForKey:@"CLOUD_NOTIFICATIONS_ENABLE_BUTTON_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  [boldButton setTitle:v4 forState:0];

  [boldButton addTarget:self action:sel_enableButtonTapped_ forControlEvents:64];
  buttonTray = [(NMCUICloudNotificationOnboardingViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v8 = [v7 localizedStringForKey:@"CLOUD_NOTIFICATIONS_SKIP_BUTTON_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  [linkButton setTitle:v8 forState:0];

  [linkButton addTarget:self action:sel_notNowButtonTapped_ forControlEvents:64];
  buttonTray2 = [(NMCUICloudNotificationOnboardingViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  buttonTray3 = [(NMCUICloudNotificationOnboardingViewController *)self buttonTray];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v12 = [v11 localizedStringForKey:@"CLOUD_NOTIFICATIONS_API_DISCLOSURE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  [buttonTray3 setCaptionText:v12];

  v13 = objc_alloc(MEMORY[0x277D75B40]);
  v14 = [v13 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v14];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setScrollEnabled:0];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[NMCUIAccountsSettingsViewCell reuseIdentifier];
  [tableView3 registerClass:v18 forCellReuseIdentifier:v19];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDataSource:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView6 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:400.0];
  [(NMCUICloudNotificationOnboardingViewController *)self setTableViewHeightConstraint:v24];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  tableViewHeightConstraint = [(NMCUICloudNotificationOnboardingViewController *)self tableViewHeightConstraint];
  [tableView7 addConstraint:tableViewHeightConstraint];
}

- (void)viewDidLayoutSubviews
{
  view = [(NMCUICloudNotificationOnboardingViewController *)self view];
  [view layoutIfNeeded];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView contentSize];
  v6 = v5;
  tableViewHeightConstraint = [(NMCUICloudNotificationOnboardingViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint setConstant:v6];

  v8.receiver = self;
  v8.super_class = NMCUICloudNotificationOnboardingViewController;
  [(OBTableWelcomeController *)&v8 viewDidLayoutSubviews];
}

+ (id)detailTextForAccounts:(id)accounts
{
  firstObject = [accounts firstObject];
  acAccount = [firstObject acAccount];

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v6 = v5;
  if (acAccount)
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

+ (BOOL)missingCredentialsForAccounts:(id)accounts
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accountsCopy = accounts;
  v4 = [accountsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(accountsCopy);
        }

        if (![NMCUICloudNotificationAccountDataSource accountHasCredentials:*(*(&v9 + 1) + 8 * i), v9])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [accountsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)enableButtonTapped:(id)tapped
{
  location[3] = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
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
    selfCopy = self;
    v18 = [v15 actionWithTitle:v17 style:0 handler:&v24];

    [v10 addAction:{v14, v24, v25, v26, v27}];
    [v10 addAction:v18];
    [(NMCUICloudNotificationOnboardingViewController *)self presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }

  else
  {
    dataSource = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
    [dataSource setCloudNotificationsEnabled:1];

    v20 = __logCategories;
    if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      dataSource2 = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = dataSource2;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[NMCUIAccountsSettingsViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  accounts = [(NMCUICloudNotificationOnboardingViewController *)self accounts];
  item = [pathCopy item];

  v12 = [accounts objectAtIndexedSubscript:item];

  displayName = [v12 displayName];
  textLabel = [v9 textLabel];
  [textLabel setText:displayName];

  emailAddress = [v12 emailAddress];
  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:emailAddress];

  dataSource = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
  LODWORD(emailAddress) = [dataSource accountIsPending:v12];

  if (emailAddress)
  {
    spinner = [v9 spinner];
    [v9 setAccessoryView:spinner];

    spinner2 = [v9 spinner];
    [spinner2 startAnimating];

LABEL_5:
    v20 = 0;
    goto LABEL_7;
  }

  if ([NMCUICloudNotificationAccountDataSource accountHasCredentials:v12])
  {
    [v9 setAccessoryView:0];
    goto LABEL_5;
  }

  warningLabel = [v9 warningLabel];
  [v9 setAccessoryView:warningLabel];

  v20 = 3;
LABEL_7:
  [v9 setSelectionStyle:v20];

  return v9;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  accounts = [(NMCUICloudNotificationOnboardingViewController *)self accounts];
  item = [pathCopy item];

  v8 = [accounts objectAtIndexedSubscript:item];

  LOBYTE(accounts) = [NMCUICloudNotificationAccountDataSource accountHasCredentials:v8];
  return accounts ^ 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  accounts = [(NMCUICloudNotificationOnboardingViewController *)self accounts];
  v9 = [accounts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  objc_initWeak(&location, self);
  dataSource = [(NMCUICloudNotificationOnboardingViewController *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__NMCUICloudNotificationOnboardingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v11[3] = &unk_2799348A8;
  objc_copyWeak(&v12, &location);
  [dataSource handleAccountAuthenication:v9 viewController:self stateUpdateHandler:v11];

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

- (void)accountDataSourceAccountsChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__NMCUICloudNotificationOnboardingViewController_accountDataSourceAccountsChanged___block_invoke;
  v6[3] = &unk_2799348D0;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
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