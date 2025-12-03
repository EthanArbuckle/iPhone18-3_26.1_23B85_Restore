@interface HURestrictedGuestAccessSettingsModule
- (HURestrictedGuestAccessSettingsModule)initWithItemUpdater:(id)updater;
- (HURestrictedGuestAccessSettingsModule)initWithItemUpdater:(id)updater home:(id)home accessoryToAdd:(id)add;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)enableRestrictedGuestAccessSetting:(BOOL)setting forItem:(id)item;
- (id)itemProviders;
- (void)_buildItemProviders;
@end

@implementation HURestrictedGuestAccessSettingsModule

- (HURestrictedGuestAccessSettingsModule)initWithItemUpdater:(id)updater home:(id)home accessoryToAdd:(id)add
{
  updaterCopy = updater;
  homeCopy = home;
  addCopy = add;
  v12 = addCopy;
  if (homeCopy)
  {
    if (addCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HURestrictedGuestAccessSettingsModule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestAccessSettingsModule.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"accessoryToAdd != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HURestrictedGuestAccessSettingsModule;
  v13 = [(HFItemModule *)&v18 initWithItemUpdater:updaterCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v14->_accessoryToAdd, add);
    [(HURestrictedGuestAccessSettingsModule *)v14 _buildItemProviders];
  }

  return v14;
}

- (HURestrictedGuestAccessSettingsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HURestrictedGuestAccessSettingsModule.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "-[HURestrictedGuestAccessSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  transformedUserItemProvider = [(HURestrictedGuestAccessSettingsModule *)self transformedUserItemProvider];
  v4 = [v2 setWithObjects:{transformedUserItemProvider, 0}];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  transformedUserItemProvider = [(HURestrictedGuestAccessSettingsModule *)self transformedUserItemProvider];
  items = [transformedUserItemProvider items];
  v8 = [items intersectsSet:itemsCopy];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HURestrictedGuestAccessSettingsUserItemSectionIdentifier"];
    transformedUserItemProvider2 = [(HURestrictedGuestAccessSettingsModule *)self transformedUserItemProvider];
    items2 = [transformedUserItemProvider2 items];
    allObjects = [items2 allObjects];
    _userItemComparator = [objc_opt_class() _userItemComparator];
    v14 = [allObjects sortedArrayUsingComparator:_userItemComparator];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__HURestrictedGuestAccessSettingsModule_buildSectionsWithDisplayedItems___block_invoke;
    v17[3] = &unk_277DB85D8;
    v18 = itemsCopy;
    v15 = [v14 na_filter:v17];
    [v9 setItems:v15];

    [v5 addObject:v9];
  }

  return v5;
}

- (id)enableRestrictedGuestAccessSetting:(BOOL)setting forItem:(id)item
{
  settingCopy = setting;
  v48 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy2 = self;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Inside enableRestrictedGuestAccessSetting...", buf, 0x16u);
  }

  home = [(HURestrictedGuestAccessSettingsModule *)self home];
  user = [itemCopy user];

  v12 = [home homeAccessControlForUser:user];
  v13 = objc_alloc(MEMORY[0x277CBEB58]);
  restrictedGuestAccessSettings = [v12 restrictedGuestAccessSettings];
  accessAllowedToAccessories = [restrictedGuestAccessSettings accessAllowedToAccessories];
  v16 = [v13 initWithSet:accessAllowedToAccessories];

  accessoryToAdd = [(HURestrictedGuestAccessSettingsModule *)self accessoryToAdd];
  v18 = [v16 na_safeContainsObject:accessoryToAdd];

  if (settingCopy)
  {
    if (v18)
    {
      goto LABEL_9;
    }

    accessoryToAdd2 = [(HURestrictedGuestAccessSettingsModule *)self accessoryToAdd];
    [v16 na_safeAddObject:accessoryToAdd2];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_9;
    }

    accessoryToAdd2 = [(HURestrictedGuestAccessSettingsModule *)self accessoryToAdd];
    [v16 removeObject:accessoryToAdd2];
  }

LABEL_9:
  restrictedGuestAccessSettings2 = [v12 restrictedGuestAccessSettings];
  v21 = [restrictedGuestAccessSettings2 mutableCopy];

  [v21 setAccessAllowedToAccessories:v16];
  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v44 = 2112;
    v45 = v23;
    v46 = 2112;
    v47 = v16;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating allowed accessories to: %@", buf, 0x20u);
  }

  v24 = MEMORY[0x277D2C900];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke;
  v39[3] = &unk_277DB8200;
  v40 = v12;
  v41 = v21;
  v25 = v21;
  v26 = v12;
  v27 = [v24 futureWithBlock:v39];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_26;
  v36[3] = &unk_277DB7E68;
  v28 = user;
  v37 = v28;
  v38 = home;
  v29 = home;
  v30 = [v27 addSuccessBlock:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_2_33;
  v34[3] = &unk_277DB8C00;
  v35 = v28;
  v31 = v28;
  v32 = [v27 addFailureBlock:v34];

  return v27;
}

void __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_2;
  v7[3] = &unk_277DB8C00;
  v8 = v3;
  v6 = v3;
  [v5 updateRestrictedGuestSettings:v4 completionHandler:v7];
}

void __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HURestrictedGuestAccessSettingsModule enableRestrictedGuestAccessSetting:forItem:]_block_invoke_2";
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

void __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_26(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v9 = "[HURestrictedGuestAccessSettingsModule enableRestrictedGuestAccessSetting:forItem:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Successfully updated allowed accessories for %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_28;
  v5[3] = &unk_277DB9920;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v5 sender:0];
}

void __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdateAccessControlForUser:*(a1 + 40)];
  }
}

void __84__HURestrictedGuestAccessSettingsModule_enableRestrictedGuestAccessSetting_forItem___block_invoke_2_33(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[HURestrictedGuestAccessSettingsModule enableRestrictedGuestAccessSetting:forItem:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%s) Failed to update allowed accessories for %@ with error: %@.", &v6, 0x20u);
  }
}

uint64_t __60__HURestrictedGuestAccessSettingsModule__userItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D14120];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v9 = [v5 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];

  if ([v8 type] || !objc_msgSend(v10, "type"))
  {
    if ([v8 type] && !objc_msgSend(v10, "type"))
    {
      v12 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277D14778] defaultItemComparator];
      v12 = (v11)[2](v11, v4, v5);
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)_buildItemProviders
{
  v3 = objc_alloc(MEMORY[0x277D14CA0]);
  home = [(HURestrictedGuestAccessSettingsModule *)self home];
  v5 = [v3 initWithHome:home];

  [v5 setIncludeGuestUsers:1];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HURestrictedGuestAccessSettingsModule__buildItemProviders__block_invoke;
  v10[3] = &unk_277DB87C8;
  objc_copyWeak(&v11, &location);
  [v5 setFilter:v10];
  v6 = objc_alloc(MEMORY[0x277D14C38]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HURestrictedGuestAccessSettingsModule__buildItemProviders__block_invoke_2;
  v8[3] = &unk_277DBCAE0;
  objc_copyWeak(&v9, &location);
  v7 = [v6 initWithSourceProvider:v5 transformationBlock:v8];
  [(HURestrictedGuestAccessSettingsModule *)self setTransformedUserItemProvider:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __60__HURestrictedGuestAccessSettingsModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
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

id __60__HURestrictedGuestAccessSettingsModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc(MEMORY[0x277D14C30]);
  v6 = [v3 copy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HURestrictedGuestAccessSettingsModule__buildItemProviders__block_invoke_3;
  v10[3] = &unk_277DBA468;
  objc_copyWeak(&v12, (a1 + 32));
  v7 = v3;
  v11 = v7;
  v8 = [v5 initWithSourceItem:v6 transformationBlock:v10];

  objc_destroyWeak(&v12);

  return v8;
}

id __60__HURestrictedGuestAccessSettingsModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
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
  v14 = [WeakRetained accessoryToAdd];
  [v13 na_safeContainsObject:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v5;
}

@end