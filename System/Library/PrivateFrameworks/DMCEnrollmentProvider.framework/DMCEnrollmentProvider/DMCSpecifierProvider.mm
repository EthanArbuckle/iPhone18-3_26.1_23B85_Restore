@interface DMCSpecifierProvider
+ (id)cellForSpecifier:(id)specifier inTableView:(id)view;
+ (void)updateConfiguration:(id)configuration forSpecifier:(id)specifier subtitleColor:(id)color;
- (AAUISpecifierProviderDelegate)delegate;
- (DMCSpecifierProvider)initWithAccount:(id)account reloadNotification:(id)notification isLocalNotification:(BOOL)localNotification reloadIfMissingRMAccount:(BOOL)mAccount;
- (DMCSpecifierProvider)initWithAccountManager:(id)manager reloadNotification:(id)notification isLocalNotification:(BOOL)localNotification reloadIfMissingRMAccount:(BOOL)account;
- (id)cachedSpecifiers:(id)specifiers;
- (id)tableCellsForSpecifiersInTableView:(id)view;
- (void)_listenForNotification:(id)notification isLocalNotification:(BOOL)localNotification;
- (void)dealloc;
- (void)registerCustomCellClassesInTableView:(id)view;
- (void)reloadSpecifiers;
@end

@implementation DMCSpecifierProvider

- (DMCSpecifierProvider)initWithAccountManager:(id)manager reloadNotification:(id)notification isLocalNotification:(BOOL)localNotification reloadIfMissingRMAccount:(BOOL)account
{
  accountCopy = account;
  localNotificationCopy = localNotification;
  managerCopy = manager;
  notificationCopy = notification;
  dmc_remoteManagementAccount = [managerCopy dmc_remoteManagementAccount];
  v14 = [(DMCSpecifierProvider *)self initWithAccount:dmc_remoteManagementAccount reloadNotification:notificationCopy isLocalNotification:localNotificationCopy reloadIfMissingRMAccount:accountCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_accountManager, manager);
  }

  return v14;
}

- (DMCSpecifierProvider)initWithAccount:(id)account reloadNotification:(id)notification isLocalNotification:(BOOL)localNotification reloadIfMissingRMAccount:(BOOL)mAccount
{
  mAccountCopy = mAccount;
  localNotificationCopy = localNotification;
  accountCopy = account;
  notificationCopy = notification;
  v15.receiver = self;
  v15.super_class = DMCSpecifierProvider;
  v13 = [(DMCSpecifierProvider *)&v15 init];
  if (v13)
  {
    if ([accountCopy dmc_isVisibleRemoteManagementAccount])
    {
      objc_storeStrong(&v13->_rmAccount, account);
      if (!notificationCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (notificationCopy && mAccountCopy)
    {
LABEL_7:
      [(DMCSpecifierProvider *)v13 _listenForNotification:notificationCopy isLocalNotification:localNotificationCopy];
    }
  }

LABEL_8:

  return v13;
}

- (void)_listenForNotification:(id)notification isLocalNotification:(BOOL)localNotification
{
  v5 = 0x277CCAB98;
  if (!localNotification)
  {
    v5 = 0x277CCA9A0;
  }

  v6 = *v5;
  notificationCopy = notification;
  defaultCenter = [v6 defaultCenter];
  [defaultCenter addObserver:self selector:sel_reloadNotificationPosted_ name:notificationCopy object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v5.receiver = self;
  v5.super_class = DMCSpecifierProvider;
  [(DMCSpecifierProvider *)&v5 dealloc];
}

- (id)cachedSpecifiers:(id)specifiers
{
  objc_storeStrong(&self->_specifiers, specifiers);
  specifiersCopy = specifiers;
  specifiers = self->_specifiers;
  specifiersCopy2 = specifiers;

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

- (void)registerCustomCellClassesInTableView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[DMCTableViewCell cellReuseIdentifier];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)tableCellsForSpecifiersInTableView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  specifiers = [(DMCSpecifierProvider *)self specifiers];

  if (specifiers)
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    specifiers2 = [(DMCSpecifierProvider *)self specifiers];
    v8 = [specifiers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(specifiers2);
          }

          v12 = [DMCSpecifierProvider cellForSpecifier:*(*(&v14 + 1) + 8 * i) inTableView:viewCopy];
          [v6 addObject:v12];
        }

        v9 = [specifiers2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)cellForSpecifier:(id)specifier inTableView:(id)view
{
  specifierCopy = specifier;
  viewCopy = view;
  v7 = +[DMCTableViewCell cellReuseIdentifier];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:v7];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  [DMCSpecifierProvider updateConfiguration:valueCellConfiguration forSpecifier:specifierCopy subtitleColor:0];
  [v8 setContentConfiguration:valueCellConfiguration];
  v10 = *MEMORY[0x277D3FF38];
  v11 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FF38]];

  if (v11)
  {
    v12 = [specifierCopy objectForKeyedSubscript:v10];
    [v8 setUserInteractionEnabled:v12 != 0];
  }

  if ([specifierCopy cellType] == 15)
  {
    v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    [v8 setBackgroundView:v13];
  }

  else
  {
    [v8 setAccessoryType:1];
  }

  [specifierCopy detailControllerClass];
  v14 = objc_opt_new();
  [v8 setDetailViewController:v14];

  detailViewController = [v8 detailViewController];
  [detailViewController setSpecifier:specifierCopy];

  return v8;
}

+ (void)updateConfiguration:(id)configuration forSpecifier:(id)specifier subtitleColor:(id)color
{
  v30[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  specifierCopy = specifier;
  colorCopy = color;
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  if (v10)
  {
    [configurationCopy setText:v10];
  }

  else
  {
    name = [specifierCopy name];
    [configurationCopy setText:name];
  }

  v12 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
  if (v12)
  {
    if (colorCopy)
    {
      v13 = objc_alloc(MEMORY[0x277CCA898]);
      v29 = *MEMORY[0x277D740C0];
      v30[0] = colorCopy;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v15 = [v13 initWithString:v12 attributes:v14];
      [configurationCopy setSecondaryAttributedText:v15];
    }

    else
    {
      [configurationCopy setSecondaryText:v12];
    }
  }

  else if ([specifierCopy hasValidGetter])
  {
    performGetter = [specifierCopy performGetter];
    if (performGetter)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", performGetter];
      [configurationCopy setSecondaryText:v17];
    }
  }

  v18 = *MEMORY[0x277D3FFC0];
  v19 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFC0]];

  if (v19)
  {
    v20 = [specifierCopy objectForKeyedSubscript:v18];
    [configurationCopy setImage:v20];
  }

  v21 = *MEMORY[0x277D3FFD8];
  v22 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFD8]];

  if (v22)
  {
    v23 = [specifierCopy objectForKeyedSubscript:v21];
    v24 = [DMCIconFactory iconForTypeID:v23 large:0];
    [configurationCopy setImage:v24];
  }

  v25 = *MEMORY[0x277D40008];
  v26 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40008]];

  if (v26)
  {
    v27 = [specifierCopy objectForKeyedSubscript:v25];
    v28 = [DMCIconFactory appIconForBundleID:v27];
    [configurationCopy setImage:v28];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end