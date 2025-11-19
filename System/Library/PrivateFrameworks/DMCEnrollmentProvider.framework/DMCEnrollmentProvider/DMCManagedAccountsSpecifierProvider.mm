@interface DMCManagedAccountsSpecifierProvider
- (DMCManagedAccountsSpecifierProvider)initWithAccountManager:(id)a3;
- (id)specifiers;
- (void)_accountCellWasTappedWithSpecifier:(id)a3;
- (void)_reloadManagedAccounts;
@end

@implementation DMCManagedAccountsSpecifierProvider

- (DMCManagedAccountsSpecifierProvider)initWithAccountManager:(id)a3
{
  v3 = *MEMORY[0x277CB8DB8];
  v5.receiver = self;
  v5.super_class = DMCManagedAccountsSpecifierProvider;
  return [(DMCSpecifierProvider *)&v5 initWithAccountManager:a3 reloadNotification:v3 isLocalNotification:1 reloadIfMissingRMAccount:0];
}

- (id)specifiers
{
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = DMCManagedAccountsSpecifierProvider;
  v3 = [(DMCSpecifierProvider *)&v28 specifiers];

  if (v3)
  {
    v27.receiver = self;
    v27.super_class = DMCManagedAccountsSpecifierProvider;
    v4 = [(DMCSpecifierProvider *)&v27 specifiers];
LABEL_3:
    v5 = v4;
    goto LABEL_4;
  }

  v7 = [(DMCSpecifierProvider *)self rmAccount];

  if (!v7)
  {
    v4 = [(DMCSpecifierProvider *)self cachedSpecifiers:MEMORY[0x277CBEBF8]];
    goto LABEL_3;
  }

  v8 = [(DMCManagedAccountsSpecifierProvider *)self managedAccounts];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = [(DMCManagedAccountsSpecifierProvider *)self managedAccounts];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count") + 1}];

    v12 = [(DMCManagedAccountsSpecifierProvider *)self managedAccounts];
    v13 = [v12 count];

    if (v13)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [(DMCManagedAccountsSpecifierProvider *)self managedAccounts];
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = MEMORY[0x277CE8568];
            v20 = [*(*(&v23 + 1) + 8 * i) copy];
            v21 = [v19 specifierWithStyle:3 account:v20 target:self controllerLoadAction:sel__accountCellWasTappedWithSpecifier_];

            if (v21)
            {
              [DMCIconFactory setAccountIconForSpecifier:v21];
              [v11 addObject:v21];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v16);
      }
    }

    if ([v11 count])
    {
      v22 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [v11 insertObject:v22 atIndex:0];
    }

    v5 = [(DMCSpecifierProvider *)self cachedSpecifiers:v11];
  }

  else
  {
    if (![(DMCManagedAccountsSpecifierProvider *)self isReloadingManagedAccounts])
    {
      [(DMCManagedAccountsSpecifierProvider *)self setIsReloadingManagedAccounts:1];
      [(DMCManagedAccountsSpecifierProvider *)self _reloadManagedAccounts];
    }

    v5 = MEMORY[0x277CBEBF8];
  }

LABEL_4:

  return v5;
}

- (void)_reloadManagedAccounts
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(DMCManagedAccountsSpecifierProvider *)self managedAccounts];
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    v8 = *MEMORY[0x277CB8B28];
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v18 + 1) + 8 * v9) objectForKeyedSubscript:v8];
        [v3 addObject:v10];

        ++v9;
      }

      while (v6 != v9);
      v5 += v6;
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, self);
  v11 = [MEMORY[0x277CB8F48] defaultStore];
  v12 = ACUIVisibleAccountTypes();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DMCManagedAccountsSpecifierProvider__reloadManagedAccounts__block_invoke;
  v14[3] = &unk_278EE7E28;
  objc_copyWeak(v16, &location);
  v13 = v3;
  v15 = v13;
  v16[1] = v5;
  [v11 visibleTopLevelAccountsWithAccountTypeIdentifiers:v12 completion:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __61__DMCManagedAccountsSpecifierProvider__reloadManagedAccounts__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  val = objc_loadWeakRetained((a1 + 40));
  if (val)
  {
    v21 = a1;
    v22 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      v8 = *MEMORY[0x277CB8B28];
      v23 = *MEMORY[0x277CB8BA0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{v8, v20}];
          if (v11)
          {
            v12 = [val rmAccount];
            v13 = [v12 identifier];
            v14 = [v11 isEqualToString:v13];

            if (v14)
            {
              v15 = [v10 accountType];
              v16 = [v15 identifier];
              v17 = [v16 isEqualToString:v23];

              if ((v17 & 1) == 0)
              {
                [v22 addObject:v10];
                [*(v21 + 32) removeObject:v11];
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

    if ([v22 count] != *(v21 + 48) || objc_msgSend(*(v21 + 32), "count"))
    {
      v18 = [v22 sortedArrayUsingComparator:{&__block_literal_global_7, v20}];
      objc_initWeak(&location, val);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__DMCManagedAccountsSpecifierProvider__reloadManagedAccounts__block_invoke_3;
      block[3] = &unk_278EE7918;
      objc_copyWeak(&v27, &location);
      v26 = v18;
      v19 = v18;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    v3 = v20;
  }
}

uint64_t __61__DMCManagedAccountsSpecifierProvider__reloadManagedAccounts__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 username];
  v7 = [v5 username];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 accountDescription];
    v10 = [v5 accountDescription];
    v8 = [v9 compare:v10];
  }

  return v8;
}

void __61__DMCManagedAccountsSpecifierProvider__reloadManagedAccounts__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setManagedAccounts:*(a1 + 32)];
    [v3 setIsReloadingManagedAccounts:0];
    [v3 reloadSpecifiers];
    WeakRetained = v3;
  }
}

- (void)_accountCellWasTappedWithSpecifier:(id)a3
{
  v5 = [DMCEnrollmentInterface accountControllerFromSpecifier:a3 baseViewController:0 preferiCloudAccount:0];
  v4 = [(DMCSpecifierProvider *)self delegate];
  [v4 specifierProvider:self showViewController:v5];
}

@end