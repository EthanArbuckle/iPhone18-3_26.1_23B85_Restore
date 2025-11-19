@interface WFManagedConfigurationProfile
+ (WFManagedConfigurationProfile)defaultProfile;
- (ACAccount)primaryAppleAccount;
- (BOOL)isAccountBasedSourceApp:(id)a3;
- (BOOL)isAccountManaged:(id)a3;
- (BOOL)isAppManaged:(id)a3;
- (BOOL)isBluetoothModificationAllowed;
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)isScreenShotAllowed;
- (BOOL)isWallpaperModificationAllowed;
- (BOOL)isWiFiPowerModificationAllowed;
- (BOOL)mayOpenFromManagedToUnmanaged;
- (BOOL)mayOpenFromUnmanagedToManaged;
- (NSSet)managedAppBundleIDs;
- (WFManagedConfigurationProfile)init;
- (WFManagedConfigurationProfile)initWithProfileConnection:(id)a3 accountStore:(id)a4;
- (id)accountIdentifiersEnabledForDataclass:(id)a3;
- (id)accountWithIdentifier:(id)a3;
- (id)allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:(id)a3 originatingAppBundleID:(id)a4 originatingAccountIsManaged:(BOOL)a5;
- (unint64_t)managedLevelForContentOfURL:(id)a3;
- (unint64_t)managedLevelForContentOfURLs:(id)a3;
- (void)handleAccountStoreDidChangeNotification:(id)a3;
- (void)handleManagedAppDidChangeNotification:(id)a3;
- (void)removeCachedChildrenAccountForAccount:(id)a3;
@end

@implementation WFManagedConfigurationProfile

- (void)handleManagedAppDidChangeNotification:(id)a3
{
  v4 = [(WFManagedConfigurationProfile *)self operatingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFManagedConfigurationProfile_handleManagedAppDidChangeNotification___block_invoke;
  block[3] = &unk_278349550;
  block[4] = self;
  dispatch_async(v4, block);
}

void __71__WFManagedConfigurationProfile_handleManagedAppDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = 0;
  }
}

- (void)handleAccountStoreDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = getACAccountIdentifierKey();
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(WFManagedConfigurationProfile *)self operatingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__WFManagedConfigurationProfile_handleAccountStoreDidChangeNotification___block_invoke;
    v8[3] = &unk_278347FF0;
    v8[4] = self;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

void __73__WFManagedConfigurationProfile_handleAccountStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accounts];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v12 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) accountStore];
    v12 = [v5 accountWithIdentifier:*(a1 + 40)];
  }

  [*(a1 + 32) removeCachedChildrenAccountForAccount:v12];
  v6 = [*(*(a1 + 32) + 16) identifier];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
  }

  v10 = [*(a1 + 32) accounts];
  [v10 removeObjectForKey:*(a1 + 40)];

  v11 = [*(a1 + 32) accountIdentifiersByDataClass];
  [v11 removeAllObjects];
}

- (void)removeCachedChildrenAccountForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 childAccounts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(WFManagedConfigurationProfile *)self accounts];
    v8 = [v4 childAccounts];
    v9 = [v8 valueForKey:@"identifier"];
    [v7 removeObjectsForKeys:v9];

    v10 = [v4 childAccounts];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__WFManagedConfigurationProfile_removeCachedChildrenAccountForAccount___block_invoke;
    v11[3] = &unk_278347FC8;
    v11[4] = self;
    [v10 enumerateObjectsUsingBlock:v11];
  }
}

- (NSSet)managedAppBundleIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16614;
  v11 = __Block_byref_object_dispose__16615;
  v12 = 0;
  v3 = [(WFManagedConfigurationProfile *)self operatingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__WFManagedConfigurationProfile_managedAppBundleIDs__block_invoke;
  v6[3] = &unk_278347FA0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__WFManagedConfigurationProfile_managedAppBundleIDs__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [*(v2 + 56) managedAppBundleIDs];
    v6 = [v4 setWithArray:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    v3 = *(*(a1 + 32) + 8);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v3);
}

- (ACAccount)primaryAppleAccount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16614;
  v11 = __Block_byref_object_dispose__16615;
  v12 = 0;
  v3 = [(WFManagedConfigurationProfile *)self operatingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__WFManagedConfigurationProfile_primaryAppleAccount__block_invoke;
  v6[3] = &unk_278347FA0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__WFManagedConfigurationProfile_primaryAppleAccount__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    v4 = [v2 accountStore];
    v5 = [v4 aa_primaryAppleAccount];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v3 = *(*(a1 + 32) + 16);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (WFManagedConfigurationProfile)initWithProfileConnection:(id)a3 accountStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = WFManagedConfigurationProfile;
  v9 = [(WFManagedConfigurationProfile *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.shortcuts.ManagedConfigurationManager.queue", v10);
    operatingQueue = v9->_operatingQueue;
    v9->_operatingQueue = v11;

    v13 = objc_opt_new();
    accounts = v9->_accounts;
    v9->_accounts = v13;

    objc_storeStrong(&v9->_accountStore, a4);
    objc_storeStrong(&v9->_profileConnection, a3);
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = getMCManagedAppsChangedNotification();
    v17 = [(WFManagedConfigurationProfile *)v9 profileConnection];
    [v15 addObserver:v9 selector:sel_handleManagedAppDidChangeNotification_ name:v16 object:v17];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = getACDAccountStoreDidChangeNotification();
    [v18 addObserver:v9 selector:sel_handleAccountStoreDidChangeNotification_ name:v19 object:0];

    v20 = v9;
  }

  return v9;
}

- (WFManagedConfigurationProfile)init
{
  v3 = [(objc_class *)getMCProfileConnectionClass() sharedConnection];
  getACAccountStoreClass();
  v4 = objc_opt_new();
  v5 = [(WFManagedConfigurationProfile *)self initWithProfileConnection:v3 accountStore:v4];

  return v5;
}

+ (WFManagedConfigurationProfile)defaultProfile
{
  if (defaultProfile_onceToken != -1)
  {
    dispatch_once(&defaultProfile_onceToken, &__block_literal_global_16632);
  }

  v3 = defaultProfile_defaultProfile;

  return v3;
}

uint64_t __47__WFManagedConfigurationProfile_defaultProfile__block_invoke()
{
  defaultProfile_defaultProfile = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isWallpaperModificationAllowed
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 isWallpaperModificationAllowed];

  return v3;
}

- (BOOL)isScreenShotAllowed
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 isScreenShotAllowed];

  return v3;
}

- (BOOL)isBluetoothModificationAllowed
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 isBluetoothModificationAllowed];

  return v3;
}

- (BOOL)isWiFiPowerModificationAllowed
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 isWiFiPowerModificationAllowed];

  return v3;
}

- (id)allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:(id)a3 originatingAppBundleID:(id)a4 originatingAccountIsManaged:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(WFManagedConfigurationProfile *)self profileConnection];
  v11 = [v10 allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:v9 originatingAppBundleID:v8 originatingAccountIsManaged:v5];

  return v11;
}

- (unint64_t)managedLevelForContentOfURLs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(WFManagedConfigurationProfile *)self managedLevelForContentOfURL:*(*(&v14 + 1) + 8 * i)];
        if (v11 == 1)
        {
          v7 = 1;
        }

        else if (v11 == 2)
        {
          v8 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
    if (v8)
    {
      v12 = 2;
    }

    else
    {
      v12 = v7 & 1;
    }

    if ((v8 & 1 & v7) != 0)
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)managedLevelForContentOfURL:(id)a3
{
  v4 = a3;
  v5 = [(WFManagedConfigurationProfile *)self profileConnection];
  v6 = [v5 isURLManaged:v4];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isAccountBasedSourceApp:(id)a3
{
  if (a3)
  {
    return softLinkMCIsAppAccountBasedSourceForOpenIn(a3);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAccountManaged:(id)a3
{
  v3 = [(WFManagedConfigurationProfile *)self accountWithIdentifier:a3];
  v4 = [v3 MCIsManaged];

  return v4;
}

- (BOOL)isAppManaged:(id)a3
{
  v4 = a3;
  v5 = [(WFManagedConfigurationProfile *)self managedAppBundleIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)mayOpenFromManagedToUnmanaged
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 mayOpenFromManagedToUnmanaged];

  return v3;
}

- (BOOL)mayOpenFromUnmanagedToManaged
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 mayOpenFromUnmanagedToManaged];

  return v3;
}

- (BOOL)isOpenInRestrictionInEffect
{
  v2 = [(WFManagedConfigurationProfile *)self profileConnection];
  v3 = [v2 isOpenInRestrictionInEffect];

  return v3;
}

- (id)accountIdentifiersEnabledForDataclass:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16614;
  v16 = __Block_byref_object_dispose__16615;
  v17 = 0;
  v5 = [(WFManagedConfigurationProfile *)self operatingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WFManagedConfigurationProfile_Account__accountIdentifiersEnabledForDataclass___block_invoke;
  block[3] = &unk_278348018;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __80__WFManagedConfigurationProfile_Account__accountIdentifiersEnabledForDataclass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountIdentifiersByDataClass];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) accountStore];
    v7 = [v6 accountIdentifiersEnabledForDataclass:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (v10)
    {
      v11 = [*(a1 + 32) accountIdentifiersByDataClass];
      [v11 setObject:v10 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

- (id)accountWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__16614;
    v15 = __Block_byref_object_dispose__16615;
    v16 = 0;
    v5 = [(WFManagedConfigurationProfile *)self operatingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WFManagedConfigurationProfile_Account__accountWithIdentifier___block_invoke;
    block[3] = &unk_278348018;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __64__WFManagedConfigurationProfile_Account__accountWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accounts];
  v3 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 32) accountStore];
    v8 = [v7 accountWithIdentifier:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(*(*(a1 + 48) + 8) + 40) identifier];

    if (v11)
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v14 = [*(a1 + 32) accounts];
      v13 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      [v14 setObject:v12 forKeyedSubscript:v13];
    }
  }
}

@end