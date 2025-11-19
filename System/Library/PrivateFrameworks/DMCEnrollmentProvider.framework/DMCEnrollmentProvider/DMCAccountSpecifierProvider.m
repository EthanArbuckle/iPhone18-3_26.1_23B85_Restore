@interface DMCAccountSpecifierProvider
+ (id)itemSpecifierIDForAccountUsername:(id)a3;
+ (id)itemSpecifierIDForReauthAccountUsername:(id)a3;
- (DMCAccountSpecifierProvider)init;
- (DMCAccountSpecifierProvider)initWithAccountStore:(id)a3;
- (DMCAccountSpecifierProviderDelegate)delegate;
- (DMCSecondaryAccountViewModelDelegate)viewModelDelegate;
- (id)_reauthSpecifierForAccount:(id)a3;
- (id)_specifierForManagedAccount:(id)a3;
- (id)_specifierForManagedAccountGroupWithTitle:(BOOL)a3 plural:(BOOL)a4;
- (id)secondaryAccountViewModels;
- (id)specifiersWithTitle:(BOOL)a3 includePrimaryAccounts:(BOOL)a4;
- (void)_accountCellWasTappedWithSpecifier:(id)a3;
- (void)appleAccountsDidChange:(id)a3;
- (void)dealloc;
- (void)registerCustomCellClassesInTableView:(id)a3;
- (void)specifiersWithCompletion:(id)a3;
@end

@implementation DMCAccountSpecifierProvider

- (DMCAccountSpecifierProvider)init
{
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [(DMCAccountSpecifierProvider *)self initWithAccountStore:v3];

  return v4;
}

- (DMCAccountSpecifierProvider)initWithAccountStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DMCAccountSpecifierProvider;
  v6 = [(DMCAccountSpecifierProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_appleAccountsDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCAccountSpecifierProvider;
  [(DMCAccountSpecifierProvider *)&v4 dealloc];
}

- (void)appleAccountsDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadAccountSpecifiersForProvider:self];

  v5 = objc_loadWeakRetained(&self->_viewModelDelegate);
  [v5 secondaryAccountViewModelsDidChange];
}

+ (id)itemSpecifierIDForAccountUsername:(id)a3
{
  v3 = a3;
  v4 = +[DMCAccountSpecifierProvider itemSpecifierIDPrefix];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

+ (id)itemSpecifierIDForReauthAccountUsername:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [DMCAccountSpecifierProvider itemSpecifierIDForAccountUsername:a3];
  v5 = [v3 stringWithFormat:@"%@:%@", v4, *MEMORY[0x277D24D48]];

  return v5;
}

- (void)specifiersWithCompletion:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
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

- (id)specifiersWithTitle:(BOOL)a3 includePrimaryAccounts:(BOOL)a4
{
  v4 = a3;
  v24 = *MEMORY[0x277D85DE8];
  accountStore = self->_accountStore;
  if (a4)
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
    v9 = -[DMCAccountSpecifierProvider _specifierForManagedAccountGroupWithTitle:plural:](self, "_specifierForManagedAccountGroupWithTitle:plural:", v4, [v7 count] > 1);
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

- (id)_specifierForManagedAccountGroupWithTitle:(BOOL)a3 plural:(BOOL)a4
{
  if (a3)
  {
    v4 = DMCLocalizedString();
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  }

  v6 = +[DMCAccountSpecifierProvider groupSpecifierID];
  [v5 setIdentifier:v6];

  return v5;
}

- (id)_specifierForManagedAccount:(id)a3
{
  v3 = a3;
  v4 = [DMCEnrollmentInterface preferredViewControllerClassForAccount:v3 preferiCloudAccount:1];
  v5 = MEMORY[0x277CE8568];
  v6 = [v3 copy];
  v7 = [v5 specifierWithStyle:3 account:v6 detailControllerClass:v4 presentationStyle:1];

  v8 = [v3 username];
  v9 = [DMCAccountSpecifierProvider itemSpecifierIDForAccountUsername:v8];
  [v7 setIdentifier:v9];

  v10 = [v3 accountDescription];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D40170]];

  v11 = [v3 username];

  [v7 setProperty:v11 forKey:*MEMORY[0x277D40160]];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [DMCIconFactory setLanyardIconForSpecifier:v7];

  return v7;
}

- (id)_reauthSpecifierForAccount:(id)a3
{
  v4 = a3;
  v5 = [[DMCReauthSpecifierProvider alloc] initWithAccount:v4];

  v6 = [(DMCReauthSpecifierProvider *)v5 specifiers];
  v7 = [v6 firstObject];

  if (v7)
  {
    [v7 setTarget:self];
    [v7 setButtonAction:sel__accountCellWasTappedWithSpecifier_];
    v8 = v7;
  }

  return v7;
}

- (void)_accountCellWasTappedWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(DMCAccountSpecifierProvider *)self delegate];
  [v5 accountCellWasTapped:v4];
}

- (void)registerCustomCellClassesInTableView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[(PSTableCell *)DMCAccountCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[(PSTableCell *)DMCReauthCell];
  [v3 registerClass:v6 forCellReuseIdentifier:v7];
}

- (id)secondaryAccountViewModels
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(ACAccountStore *)self->_accountStore dmc_visibleSecondaryRemoteManagementAccounts];
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v3;
    obj = v3;
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
          v12 = [v10 username];
          v13 = [DMCAccountSpecifierProvider itemSpecifierIDForAccountUsername:v12];
          [v11 setIdentifier:v13];

          v14 = [v10 accountDescription];
          [v11 setTitle:v14];

          v15 = [v10 username];
          [v11 setSubtitle:v15];

          v16 = [(DMCAccountSpecifierProvider *)self _reauthSpecifierForAccount:v10];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 identifier];
            [v11 setReauthIdentifer:v18];

            v19 = [v17 name];
            [v11 setReauthTitle:v19];

            v20 = [v17 objectForKeyedSubscript:v8];
            [v11 setReauthBadgeNumber:v20];
          }

          [v4 addObject:{v11, v22}];
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    v3 = v22;
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