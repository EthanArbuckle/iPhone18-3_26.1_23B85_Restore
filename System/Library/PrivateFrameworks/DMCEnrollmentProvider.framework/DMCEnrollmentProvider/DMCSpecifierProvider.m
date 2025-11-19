@interface DMCSpecifierProvider
+ (id)cellForSpecifier:(id)a3 inTableView:(id)a4;
+ (void)updateConfiguration:(id)a3 forSpecifier:(id)a4 subtitleColor:(id)a5;
- (AAUISpecifierProviderDelegate)delegate;
- (DMCSpecifierProvider)initWithAccount:(id)a3 reloadNotification:(id)a4 isLocalNotification:(BOOL)a5 reloadIfMissingRMAccount:(BOOL)a6;
- (DMCSpecifierProvider)initWithAccountManager:(id)a3 reloadNotification:(id)a4 isLocalNotification:(BOOL)a5 reloadIfMissingRMAccount:(BOOL)a6;
- (id)cachedSpecifiers:(id)a3;
- (id)tableCellsForSpecifiersInTableView:(id)a3;
- (void)_listenForNotification:(id)a3 isLocalNotification:(BOOL)a4;
- (void)dealloc;
- (void)registerCustomCellClassesInTableView:(id)a3;
- (void)reloadSpecifiers;
@end

@implementation DMCSpecifierProvider

- (DMCSpecifierProvider)initWithAccountManager:(id)a3 reloadNotification:(id)a4 isLocalNotification:(BOOL)a5 reloadIfMissingRMAccount:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = [v11 dmc_remoteManagementAccount];
  v14 = [(DMCSpecifierProvider *)self initWithAccount:v13 reloadNotification:v12 isLocalNotification:v7 reloadIfMissingRMAccount:v6];

  if (v14)
  {
    objc_storeStrong(&v14->_accountManager, a3);
  }

  return v14;
}

- (DMCSpecifierProvider)initWithAccount:(id)a3 reloadNotification:(id)a4 isLocalNotification:(BOOL)a5 reloadIfMissingRMAccount:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v15.receiver = self;
  v15.super_class = DMCSpecifierProvider;
  v13 = [(DMCSpecifierProvider *)&v15 init];
  if (v13)
  {
    if ([v11 dmc_isVisibleRemoteManagementAccount])
    {
      objc_storeStrong(&v13->_rmAccount, a3);
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (v12 && v6)
    {
LABEL_7:
      [(DMCSpecifierProvider *)v13 _listenForNotification:v12 isLocalNotification:v7];
    }
  }

LABEL_8:

  return v13;
}

- (void)_listenForNotification:(id)a3 isLocalNotification:(BOOL)a4
{
  v5 = 0x277CCAB98;
  if (!a4)
  {
    v5 = 0x277CCA9A0;
  }

  v6 = *v5;
  v7 = a3;
  v8 = [v6 defaultCenter];
  [v8 addObserver:self selector:sel_reloadNotificationPosted_ name:v7 object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = DMCSpecifierProvider;
  [(DMCSpecifierProvider *)&v5 dealloc];
}

- (id)cachedSpecifiers:(id)a3
{
  objc_storeStrong(&self->_specifiers, a3);
  v5 = a3;
  specifiers = self->_specifiers;
  v7 = specifiers;

  return specifiers;
}

- (void)reloadSpecifiers
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__DMCSpecifierProvider_reloadSpecifiers__block_invoke;
  v2[3] = &unk_278EE7880;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __40__DMCSpecifierProvider_reloadSpecifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained rmAccount];
    [v1 refresh];

    v2 = [WeakRetained[2] copy];
    v3 = WeakRetained[2];
    WeakRetained[2] = 0;

    v4 = [WeakRetained specifiersReloadedNotificationName];

    if (v4)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      v6 = [WeakRetained specifiersReloadedNotificationName];
      [v5 postNotificationName:v6 object:0 userInfo:0];
    }

    [WeakRetained setIsReloading:1];
    v7 = [WeakRetained delegate];
    [v7 reloadSpecifiersForProvider:WeakRetained oldSpecifiers:v2 animated:1];

    [WeakRetained setIsReloading:0];
  }
}

- (void)registerCustomCellClassesInTableView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[DMCTableViewCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)tableCellsForSpecifiersInTableView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DMCSpecifierProvider *)self specifiers];

  if (v5)
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(DMCSpecifierProvider *)self specifiers];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [DMCSpecifierProvider cellForSpecifier:*(*(&v14 + 1) + 8 * i) inTableView:v4];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

+ (id)cellForSpecifier:(id)a3 inTableView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[DMCTableViewCell cellReuseIdentifier];
  v8 = [v6 dequeueReusableCellWithIdentifier:v7];

  v9 = [MEMORY[0x277D756E0] valueCellConfiguration];
  [DMCSpecifierProvider updateConfiguration:v9 forSpecifier:v5 subtitleColor:0];
  [v8 setContentConfiguration:v9];
  v10 = *MEMORY[0x277D3FF38];
  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];

  if (v11)
  {
    v12 = [v5 objectForKeyedSubscript:v10];
    [v8 setUserInteractionEnabled:v12 != 0];
  }

  if ([v5 cellType] == 15)
  {
    v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    [v8 setBackgroundView:v13];
  }

  else
  {
    [v8 setAccessoryType:1];
  }

  [v5 detailControllerClass];
  v14 = objc_opt_new();
  [v8 setDetailViewController:v14];

  v15 = [v8 detailViewController];
  [v15 setSpecifier:v5];

  return v8;
}

+ (void)updateConfiguration:(id)a3 forSpecifier:(id)a4 subtitleColor:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 propertyForKey:*MEMORY[0x277D40170]];
  if (v10)
  {
    [v7 setText:v10];
  }

  else
  {
    v11 = [v8 name];
    [v7 setText:v11];
  }

  v12 = [v8 propertyForKey:*MEMORY[0x277D40160]];
  if (v12)
  {
    if (v9)
    {
      v13 = objc_alloc(MEMORY[0x277CCA898]);
      v29 = *MEMORY[0x277D740C0];
      v30[0] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v15 = [v13 initWithString:v12 attributes:v14];
      [v7 setSecondaryAttributedText:v15];
    }

    else
    {
      [v7 setSecondaryText:v12];
    }
  }

  else if ([v8 hasValidGetter])
  {
    v16 = [v8 performGetter];
    if (v16)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v16];
      [v7 setSecondaryText:v17];
    }
  }

  v18 = *MEMORY[0x277D3FFC0];
  v19 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FFC0]];

  if (v19)
  {
    v20 = [v8 objectForKeyedSubscript:v18];
    [v7 setImage:v20];
  }

  v21 = *MEMORY[0x277D3FFD8];
  v22 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FFD8]];

  if (v22)
  {
    v23 = [v8 objectForKeyedSubscript:v21];
    v24 = [DMCIconFactory iconForTypeID:v23 large:0];
    [v7 setImage:v24];
  }

  v25 = *MEMORY[0x277D40008];
  v26 = [v8 objectForKeyedSubscript:*MEMORY[0x277D40008]];

  if (v26)
  {
    v27 = [v8 objectForKeyedSubscript:v25];
    v28 = [DMCIconFactory appIconForBundleID:v27];
    [v7 setImage:v28];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end