@interface HUUsersAndGuestsPinCodeItemManager
- (HUUsersAndGuestsPinCodeItemManager)initWithDelegate:(id)a3;
- (HUUsersAndGuestsPinCodeItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUUsersAndGuestsPinCodeItemManager)initWithPinCodeManager:(id)a3 delegate:(id)a4 home:(id)a5 forAccessory:(id)a6;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)enableRestrictedGuestAccessSetting:(BOOL)a3 forItem:(id)a4;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUUsersAndGuestsPinCodeItemManager

- (HUUsersAndGuestsPinCodeItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithPinCodeManager_delegate_home_forAccessory_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUUsersAndGuestsPinCodeItemManager.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUUsersAndGuestsPinCodeItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUUsersAndGuestsPinCodeItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithPinCodeManager_delegate_home_forAccessory_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUUsersAndGuestsPinCodeItemManager.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HUUsersAndGuestsPinCodeItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUUsersAndGuestsPinCodeItemManager)initWithPinCodeManager:(id)a3 delegate:(id)a4 home:(id)a5 forAccessory:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = HUUsersAndGuestsPinCodeItemManager;
  v15 = [(HFItemManager *)&v27 initWithDelegate:a4 sourceItem:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pinCodeManager, a3);
    objc_storeStrong(&v16->_overrideHome, a5);
    objc_storeStrong(&v16->_accessory, a6);
    v17 = objc_alloc_init(MEMORY[0x277D2C900]);
    restoreFuture = v16->_restoreFuture;
    v16->_restoreFuture = v17;
  }

  if (v14)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__HUUsersAndGuestsPinCodeItemManager_initWithPinCodeManager_delegate_home_forAccessory___block_invoke;
    v22[3] = &unk_277DC40D0;
    v23 = v14;
    v24 = v13;
    v25 = v16;
    v26 = a2;
    [v24 fetchMissingWalletKeysForAccessory:v23 completion:v22];

    v19 = v23;
  }

  else
  {
    v19 = [(HUUsersAndGuestsPinCodeItemManager *)v16 restoreFuture];
    v20 = [MEMORY[0x277CBEB98] set];
    [v19 finishWithResult:v20];
  }

  return v16;
}

void __88__HUUsersAndGuestsPinCodeItemManager_initWithPinCodeManager_delegate_home_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) hf_minimumDescription];
    v14 = 136315906;
    v15 = "[HUUsersAndGuestsPinCodeItemManager initWithPinCodeManager:delegate:home:forAccessory:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Completed fetching the missing wallet keys %@ for %@ in %@", &v14, 0x2Au);
  }

  v7 = [*(a1 + 48) restoreFuture];
  [v7 finishWithResult:v3];

  v8 = [*(a1 + 48) restoreHomeKeyAccessItem];

  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = MEMORY[0x277CBEB98];
    v11 = [v9 restoreHomeKeyAccessItem];
    v12 = [v10 setWithObject:v11];
    v13 = [v9 updateResultsForItems:v12 senderSelector:*(a1 + 56)];
  }
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D14CA0]) initWithHome:v4];
  [(HUUsersAndGuestsPinCodeItemManager *)self setUserItemProvider:v5];

  v6 = [(HUUsersAndGuestsPinCodeItemManager *)self userItemProvider];
  [v6 setIncludeCurrentUser:1];

  v7 = [(HUUsersAndGuestsPinCodeItemManager *)self userItemProvider];
  [v7 setIncludeOtherUsers:1];

  objc_initWeak(&location, self);
  v8 = [objc_alloc(MEMORY[0x277D14CA0]) initWithHome:v4];
  [v8 setIncludeCurrentUser:0];
  [v8 setIncludeOtherUsers:1];
  [v8 setIncludeGuestUsers:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke;
  v27[3] = &unk_277DB87C8;
  objc_copyWeak(&v28, &location);
  [v8 setFilter:v27];
  v9 = objc_alloc(MEMORY[0x277D14C38]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_2;
  v25[3] = &unk_277DBCAE0;
  objc_copyWeak(&v26, &location);
  v10 = [v9 initWithSourceProvider:v8 transformationBlock:v25];
  [(HUUsersAndGuestsPinCodeItemManager *)self setTransformedGuestUserItemProvider:v10];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);

  v11 = objc_alloc(MEMORY[0x277D14B38]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_4;
  v23[3] = &unk_277DB7448;
  objc_copyWeak(&v24, &location);
  v12 = [v11 initWithResultsBlock:v23];
  [(HUUsersAndGuestsPinCodeItemManager *)self setRestoreHomeKeyAccessItem:v12];

  v13 = objc_alloc(MEMORY[0x277D14B40]);
  v14 = MEMORY[0x277CBEB98];
  v15 = [(HUUsersAndGuestsPinCodeItemManager *)self restoreHomeKeyAccessItem];
  v31[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v17 = [v14 setWithArray:v16];
  v18 = [v13 initWithItems:v17];

  v30[0] = v18;
  v19 = [(HUUsersAndGuestsPinCodeItemManager *)self userItemProvider];
  v30[1] = v19;
  v20 = [(HUUsersAndGuestsPinCodeItemManager *)self transformedGuestUserItemProvider];
  v30[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v21;
}

uint64_t __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [WeakRetained home];
  v9 = [v8 hf_userIsRestrictedGuest:v7];

  return v9;
}

id __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc(MEMORY[0x277D14C30]);
  v6 = [v3 copy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_3;
  v10[3] = &unk_277DBA468;
  objc_copyWeak(&v12, (a1 + 32));
  v7 = v3;
  v11 = v7;
  v8 = [v5 initWithSourceItem:v6 transformationBlock:v10];

  objc_destroyWeak(&v12);

  return v8;
}

id __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];

  objc_opt_class();
  v6 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [WeakRetained home];
  v10 = [v8 user];
  v11 = [v9 homeAccessControlForUser:v10];

  v12 = [v11 restrictedGuestAccessSettings];
  v13 = [v12 accessAllowedToAccessories];
  v14 = [WeakRetained accessory];
  [v13 na_safeContainsObject:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277D14068]];

  v16 = MEMORY[0x277CCACA8];
  v17 = [WeakRetained accessory];
  v18 = [v17 name];
  v19 = [v16 stringWithFormat:@"Home.Locks.UsersAndGuests.UserHandle.AllowedAccess.%@", v18];
  v20 = [v19 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
  [v5 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13DC8]];

  return v5;
}

id __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained restoreFuture];
  v3 = [v2 isFinished];

  if (v3)
  {
    v4 = [WeakRetained restoreFuture];
    v5 = [v4 flatMap:&__block_literal_global_278];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v6 = _HULocalizedStringWithDefaultValue(@"HUPinCodeRestoreHomeKeyAccessButton", @"HUPinCodeRestoreHomeKeyAccessButton", 1);
    [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v4 setObject:@"Home.Locks.UsersAndGuests.Pincode.RestoreHomeKeyAccess" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[HUUsersAndGuestsPinCodeItemManager _buildItemProvidersForHome:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) restoreHomeKeyAccessItem is hidden because restoreFuture is NOT finished", &v10, 0xCu);
    }

    v5 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  v8 = v5;

  return v8;
}

id __65__HUUsersAndGuestsPinCodeItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = _HULocalizedStringWithDefaultValue(@"HUPinCodeRestoreHomeKeyAccessButton", @"HUPinCodeRestoreHomeKeyAccessButton", 1);
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:@"Home.Locks.UsersAndGuests.Pincode.RestoreHomeKeyAccess" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v5 = [v2 hmf_isEmpty];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[HUUsersAndGuestsPinCodeItemManager _buildItemProvidersForHome:]_block_invoke_5";
    v12 = 1024;
    v13 = v5;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) For restoreHomeKeyAccessItem, hidden = %{BOOL}d | missingWalletKeys = %@ | getMissingWalletKeyFuture.isFinished = YES", &v10, 0x1Cu);
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v8;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HFItemManager *)self itemModules];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __71__HUUsersAndGuestsPinCodeItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v42[3] = &unk_277DC40F8;
  v7 = v4;
  v43 = v7;
  v8 = [v6 na_flatMap:v42];
  [v5 addObjectsFromArray:v8];

  v9 = [v5 na_firstObjectPassingTest:&__block_literal_global_44_1];
  v40 = v7;
  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Found pin code list section", buf, 2u);
    }

    v11 = [v9 mutableCopy];
    v12 = MEMORY[0x277CBEB18];
    v13 = [v9 items];
    v14 = [v12 arrayWithArray:v13];

    [(HUUsersAndGuestsPinCodeItemManager *)self transformedGuestUserItemProvider];
    v16 = v15 = self;
    v17 = [v16 items];
    v18 = [v17 allObjects];
    v19 = [MEMORY[0x277D14778] defaultItemComparator];
    v20 = [v18 sortedArrayUsingComparator:v19];

    v21 = MEMORY[0x277CCAA78];
    v22 = [(HUUsersAndGuestsPinCodeItemManager *)v15 transformedGuestUserItemProvider];
    v23 = [v22 items];
    v24 = [v23 allObjects];
    v25 = [v21 indexSetWithIndexesInRange:{0, objc_msgSend(v24, "count")}];
    [v14 insertObjects:v20 atIndexes:v25];

    self = v15;
    [v11 setItems:v14];
    [v5 removeObject:v9];
    [v5 addObject:v11];
  }

  v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"PinCodes-users"];
  v27 = [(HUUsersAndGuestsPinCodeItemManager *)self userItemProvider];
  v28 = [v27 items];
  v29 = [v28 allObjects];
  [MEMORY[0x277D14778] defaultItemComparator];
  v30 = v5;
  v32 = v31 = self;
  v33 = [v29 sortedArrayUsingComparator:v32];
  v34 = [v33 mutableCopy];

  v35 = [(HUUsersAndGuestsPinCodeItemManager *)v31 restoreHomeKeyAccessItem];
  [v34 addObject:v35];

  [v26 setItems:v34];
  v36 = HFLocalizedString();
  [v26 setHeaderTitle:v36];

  v37 = HFLocalizedString();
  [v26 setFooterTitle:v37];

  [v30 insertObject:v26 atIndex:0];
  v38 = [MEMORY[0x277D14778] filterSections:v30 toDisplayedItems:v40];

  return v38;
}

uint64_t __71__HUUsersAndGuestsPinCodeItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"PinCodes-guests"];

  return v3;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc(MEMORY[0x277D14928]);
  v7 = [(HUUsersAndGuestsPinCodeItemManager *)self pinCodeManager];
  v8 = [(HUUsersAndGuestsPinCodeItemManager *)self accessory];
  v9 = [v6 initWithItemUpdater:self pinCodeManager:v7 listType:3 home:v4 forAccessory:v8];

  [v5 addObject:v9];
  if ([v4 hasOnboardedForAccessCode])
  {
    v10 = [v4 hf_accessoriesSupportingAccessCodes];
    v11 = [v10 count];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277D14928]);
      v13 = [(HUUsersAndGuestsPinCodeItemManager *)self pinCodeManager];
      v14 = [(HUUsersAndGuestsPinCodeItemManager *)self accessory];
      v15 = [v12 initWithItemUpdater:self pinCodeManager:v13 listType:2 home:v4 forAccessory:v14];

      [v5 addObject:v15];
    }
  }

  return v5;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUUsersAndGuestsPinCodeItemManager;
  [(HFItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HUUsersAndGuestsPinCodeItemManager *)self pinCodeManager];
  [v3 addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HUUsersAndGuestsPinCodeItemManager;
  [(HFItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HUUsersAndGuestsPinCodeItemManager *)self pinCodeManager];
  [v3 removeObserver:self];
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUUsersAndGuestsPinCodeItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)enableRestrictedGuestAccessSetting:(BOOL)a3 forItem:(id)a4
{
  v4 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(HUUsersAndGuestsPinCodeItemManager *)self overrideHome];
  v9 = [v7 user];

  v10 = [v8 homeAccessControlForUser:v9];
  v11 = objc_alloc(MEMORY[0x277CBEB58]);
  v12 = [v10 restrictedGuestAccessSettings];
  v13 = [v12 accessAllowedToAccessories];
  v14 = [v11 initWithSet:v13];

  v15 = [(HUUsersAndGuestsPinCodeItemManager *)self accessory];
  v16 = [v14 na_safeContainsObject:v15];

  if (v4)
  {
    if (v16)
    {
      goto LABEL_7;
    }

    v17 = [(HUUsersAndGuestsPinCodeItemManager *)self accessory];
    [v14 na_safeAddObject:v17];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = [(HUUsersAndGuestsPinCodeItemManager *)self accessory];
    [v14 removeObject:v17];
  }

LABEL_7:
  v18 = [v10 restrictedGuestAccessSettings];
  v19 = [v18 mutableCopy];

  [v19 setAccessAllowedToAccessories:v14];
  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    *buf = 138412802;
    v41 = self;
    v42 = 2112;
    v43 = v21;
    v44 = 2112;
    v45 = v14;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating allowed accessories to: %@", buf, 0x20u);
  }

  v22 = MEMORY[0x277D2C900];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke;
  v37[3] = &unk_277DB8200;
  v38 = v10;
  v39 = v19;
  v23 = v19;
  v24 = v10;
  v25 = [v22 futureWithBlock:v37];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_68;
  v34[3] = &unk_277DB7E68;
  v26 = v9;
  v35 = v26;
  v36 = v8;
  v27 = v8;
  v28 = [v25 addSuccessBlock:v34];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_2_75;
  v32[3] = &unk_277DB8C00;
  v33 = v26;
  v29 = v26;
  v30 = [v25 addFailureBlock:v32];

  return v25;
}

void __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_2;
  v7[3] = &unk_277DB8C00;
  v8 = v3;
  v6 = v3;
  [v5 updateRestrictedGuestSettings:v4 completionHandler:v7];
}

void __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HUUsersAndGuestsPinCodeItemManager enableRestrictedGuestAccessSetting:forItem:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Finished attempt to update guest access settings with error %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 finishWithError:v3];
  }

  else
  {
    [v5 finishWithNoResult];
  }
}

void __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_68(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v9 = "[HUUsersAndGuestsPinCodeItemManager enableRestrictedGuestAccessSetting:forItem:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Successfully updated allowed accessories for %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_70;
  v5[3] = &unk_277DB9920;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v5 sender:0];
}

void __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

void __81__HUUsersAndGuestsPinCodeItemManager_enableRestrictedGuestAccessSetting_forItem___block_invoke_2_75(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[HUUsersAndGuestsPinCodeItemManager enableRestrictedGuestAccessSetting:forItem:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Failed to update allowed accessories for %@ with error: %@.", &v6, 0x20u);
  }
}

@end