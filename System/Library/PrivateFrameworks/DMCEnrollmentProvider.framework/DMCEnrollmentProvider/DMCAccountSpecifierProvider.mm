@interface DMCAccountSpecifierProvider
+ (id)itemSpecifierIDForAccountUsername:(id)username;
+ (id)itemSpecifierIDForReauthAccountUsername:(id)username;
- (DMCAccountSpecifierProvider)init;
- (DMCAccountSpecifierProvider)initWithAccountStore:(id)store;
- (DMCAccountSpecifierProviderDelegate)delegate;
- (DMCSecondaryAccountViewModelDelegate)viewModelDelegate;
- (id)_reauthSpecifierForAccount:(id)account;
- (id)_specifierForManagedAccount:(id)account;
- (id)_specifierForManagedAccountGroupWithTitle:(BOOL)title plural:(BOOL)plural;
- (id)secondaryAccountViewModels;
- (id)specifiersWithTitle:(BOOL)title includePrimaryAccounts:(BOOL)accounts;
- (void)_accountCellWasTappedWithSpecifier:(id)specifier;
- (void)appleAccountsDidChange:(id)change;
- (void)dealloc;
- (void)registerCustomCellClassesInTableView:(id)view;
- (void)specifiersWithCompletion:(id)completion;
@end

@implementation DMCAccountSpecifierProvider

- (DMCAccountSpecifierProvider)init
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [(DMCAccountSpecifierProvider *)self initWithAccountStore:defaultStore];

  return v4;
}

- (DMCAccountSpecifierProvider)initWithAccountStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = DMCAccountSpecifierProvider;
  v6 = [(DMCAccountSpecifierProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_appleAccountsDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCAccountSpecifierProvider;
  [(DMCAccountSpecifierProvider *)&v4 dealloc];
}

- (void)appleAccountsDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadAccountSpecifiersForProvider:self];

  v5 = objc_loadWeakRetained(&self->_viewModelDelegate);
  [v5 secondaryAccountViewModelsDidChange];
}

+ (id)itemSpecifierIDForAccountUsername:(id)username
{
  usernameCopy = username;
  v4 = +[DMCAccountSpecifierProvider itemSpecifierIDPrefix];
  v5 = [v4 stringByAppendingString:usernameCopy];

  return v5;
}

+ (id)itemSpecifierIDForReauthAccountUsername:(id)username
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [DMCAccountSpecifierProvider itemSpecifierIDForAccountUsername:username];
  v5 = [v3 stringWithFormat:@"%@:%@", v4, *MEMORY[0x277D24D48]];

  return v5;
}

- (void)specifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_updateQueue)
  {
    v5 = dispatch_queue_create("com.apple.devicemanagementclient.secondaryAccountUpdate", 0);
    updateQueue = self->_updateQueue;
    self->_updateQueue = v5;
  }

  objc_initWeak(&location, self);
  v7 = self->_updateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DMCAccountSpecifierProvider_specifiersWithCompletion___block_invoke;
  block[3] = &unk_278EE72A8;
  objc_copyWeak(&v11, &location);
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__DMCAccountSpecifierProvider_specifiersWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained specifiersWithTitle:0 includePrimaryAccounts:0];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, MEMORY[0x277CBEBF8]);
  }
}

- (id)specifiersWithTitle:(BOOL)title includePrimaryAccounts:(BOOL)accounts
{
  titleCopy = title;
  v24 = *MEMORY[0x277D85DE8];
  accountStore = self->_accountStore;
  if (accounts)
  {
    [(ACAccountStore *)accountStore dmc_visibleRemoteManagementAccounts];
  }

  else
  {
    [(ACAccountStore *)accountStore dmc_visibleSecondaryRemoteManagementAccounts];
  }
  v7 = ;
  if ([v7 count])
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count") + 1}];
    v9 = -[DMCAccountSpecifierProvider _specifierForManagedAccountGroupWithTitle:plural:](self, "_specifierForManagedAccountGroupWithTitle:plural:", titleCopy, [v7 count] > 1);
    [v8 addObject:v9];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [(DMCAccountSpecifierProvider *)self _specifierForManagedAccount:v15, v19];
          [v8 addObject:v16];

          v17 = [(DMCAccountSpecifierProvider *)self _reauthSpecifierForAccount:v15];
          if (v17)
          {
            [v8 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)_specifierForManagedAccountGroupWithTitle:(BOOL)title plural:(BOOL)plural
{
  if (title)
  {
    v4 = DMCLocalizedString();
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v4];
  }

  else
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  }

  v6 = +[DMCAccountSpecifierProvider groupSpecifierID];
  [emptyGroupSpecifier setIdentifier:v6];

  return emptyGroupSpecifier;
}

- (id)_specifierForManagedAccount:(id)account
{
  accountCopy = account;
  v4 = [DMCEnrollmentInterface preferredViewControllerClassForAccount:accountCopy preferiCloudAccount:1];
  v5 = MEMORY[0x277CE8568];
  v6 = [accountCopy copy];
  v7 = [v5 specifierWithStyle:3 account:v6 detailControllerClass:v4 presentationStyle:1];

  username = [accountCopy username];
  v9 = [DMCAccountSpecifierProvider itemSpecifierIDForAccountUsername:username];
  [v7 setIdentifier:v9];

  accountDescription = [accountCopy accountDescription];
  [v7 setProperty:accountDescription forKey:*MEMORY[0x277D40170]];

  username2 = [accountCopy username];

  [v7 setProperty:username2 forKey:*MEMORY[0x277D40160]];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [DMCIconFactory setLanyardIconForSpecifier:v7];

  return v7;
}

- (id)_reauthSpecifierForAccount:(id)account
{
  accountCopy = account;
  v5 = [[DMCReauthSpecifierProvider alloc] initWithAccount:accountCopy];

  specifiers = [(DMCReauthSpecifierProvider *)v5 specifiers];
  firstObject = [specifiers firstObject];

  if (firstObject)
  {
    [firstObject setTarget:self];
    [firstObject setButtonAction:sel__accountCellWasTappedWithSpecifier_];
    v8 = firstObject;
  }

  return firstObject;
}

- (void)_accountCellWasTappedWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  delegate = [(DMCAccountSpecifierProvider *)self delegate];
  [delegate accountCellWasTapped:specifierCopy];
}

- (void)registerCustomCellClassesInTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)DMCAccountCell];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[(PSTableCell *)DMCReauthCell];
  [viewCopy registerClass:v6 forCellReuseIdentifier:v7];
}

- (id)secondaryAccountViewModels
{
  v29 = *MEMORY[0x277D85DE8];
  dmc_visibleSecondaryRemoteManagementAccounts = [(ACAccountStore *)self->_accountStore dmc_visibleSecondaryRemoteManagementAccounts];
  if ([dmc_visibleSecondaryRemoteManagementAccounts count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dmc_visibleSecondaryRemoteManagementAccounts, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = dmc_visibleSecondaryRemoteManagementAccounts;
    obj = dmc_visibleSecondaryRemoteManagementAccounts;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      v8 = *MEMORY[0x277D3FDB0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = objc_opt_new();
          [v11 setAccount:v10];
          username = [v10 username];
          v13 = [DMCAccountSpecifierProvider itemSpecifierIDForAccountUsername:username];
          [v11 setIdentifier:v13];

          accountDescription = [v10 accountDescription];
          [v11 setTitle:accountDescription];

          username2 = [v10 username];
          [v11 setSubtitle:username2];

          v16 = [(DMCAccountSpecifierProvider *)self _reauthSpecifierForAccount:v10];
          v17 = v16;
          if (v16)
          {
            identifier = [v16 identifier];
            [v11 setReauthIdentifer:identifier];

            name = [v17 name];
            [v11 setReauthTitle:name];

            v20 = [v17 objectForKeyedSubscript:v8];
            [v11 setReauthBadgeNumber:v20];
          }

          [v4 addObject:{v11, v22}];
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    dmc_visibleSecondaryRemoteManagementAccounts = v22;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (DMCAccountSpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DMCSecondaryAccountViewModelDelegate)viewModelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModelDelegate);

  return WeakRetained;
}

@end