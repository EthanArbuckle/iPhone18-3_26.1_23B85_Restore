@interface HFHomeKitAccessorySettingsItemProvider
- (BOOL)shouldUpdateForKeyPaths:(id)a3;
- (BOOL)updateSettings:(id)a3;
- (HFHomeKitAccessorySettingsItemProvider)initWithSettingsController:(id)a3 sourceItem:(id)a4 settingGroupKeyPath:(id)a5 moduleSettings:(id)a6 usageOptions:(id)a7;
- (id)_fetchSettingsAndReloadItems;
- (id)_generateAccessorySettingItemForSettings:(id)a3 homeKitSettings:(id)a4 keyPaths:(id)a5;
- (id)_generateAccessorySettingItemForSettings:(id)a3 keyPaths:(id)a4;
- (id)_reloadItemsFromSettings:(id)a3 performInitialUpdateOnItems:(BOOL)a4;
- (id)items;
- (id)reloadItems;
- (id)sourceItemAccessory;
- (void)_subscribeToAccessorySettings:(id)a3;
- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4;
@end

@implementation HFHomeKitAccessorySettingsItemProvider

- (HFHomeKitAccessorySettingsItemProvider)initWithSettingsController:(id)a3 sourceItem:(id)a4 settingGroupKeyPath:(id)a5 moduleSettings:(id)a6 usageOptions:(id)a7
{
  v13 = a3;
  v14 = a4;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = HFHomeKitAccessorySettingsItemProvider;
  v17 = [(HFItemProvider *)&v26 init];
  if (v17)
  {
    v18 = objc_opt_new();
    settingItems = v17->_settingItems;
    v17->_settingItems = v18;

    objc_storeStrong(&v17->_settingsController, a3);
    objc_storeStrong(&v17->_sourceItem, a4);
    objc_storeStrong(&v17->_groupKeyPath, a5);
    objc_storeStrong(&v17->_moduleSettings, a6);
    objc_storeStrong(&v17->_usageOptions, a7);
    v20 = [(HFServiceLikeItem *)v17->_sourceItem accessories];
    v21 = [v20 anyObject];

    v22 = [v21 uniqueIdentifier];
    accessoryIdentifier = v17->_accessoryIdentifier;
    v17->_accessoryIdentifier = v22;
  }

  return v17;
}

- (id)items
{
  v2 = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
  v3 = [v2 copy];

  return v3;
}

- (id)reloadItems
{
  v3 = [(HFHomeKitAccessorySettingsItemProvider *)self settingsAlreadyFetched];
  v4 = HFLogForCategory(0x28uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "We have already fetched settings, so we will just reload the existing setting items to refresh the UI", v10, 2u);
    }

    v6 = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
    v7 = [v6 allObjects];
    v8 = [(HFHomeKitAccessorySettingsItemProvider *)self _reloadItemsFromSettings:v7 performInitialUpdateOnItems:0];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Now fetching the settings", buf, 2u);
    }

    v8 = [(HFHomeKitAccessorySettingsItemProvider *)self _fetchSettingsAndReloadItems];
  }

  return v8;
}

- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 settingKeyPath];
        if ([v14 isEqualToString:v7])
        {
        }

        else
        {
          v15 = [v13 targetSettingKeyPath];
          v16 = [v15 isEqualToString:v7];

          if (!v16)
          {
            continue;
          }
        }

        [v13 updateSettingValue:v6];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateSettings:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke;
  v23[3] = &unk_277DF30E0;
  v23[4] = self;
  v25 = &v26;
  v6 = v5;
  v24 = v6;
  [v4 na_each:v23];
  if ([v6 count])
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
    v9 = [v8 allObjects];
    v10 = [v7 arrayWithArray:v9];

    [v10 addObjectsFromArray:v6];
    v11 = [(HFHomeKitAccessorySettingsItemProvider *)self splitSettingsDictionary];
    v12 = [(HFHomeKitAccessorySettingsItemProvider *)self allKeyPaths];
    v13 = [(HFHomeKitAccessorySettingsItemProvider *)self _generateAccessorySettingItemForSettings:v11 homeKitSettings:v6 keyPaths:v12];

    [v10 addObjectsFromArray:v13];
    v14 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Creating New Settings = [%@]", buf, 0xCu);
    }

    v15 = [(HFHomeKitAccessorySettingsItemProvider *)self _reloadItemsFromSettings:v10 performInitialUpdateOnItems:1];
  }

  v16 = [(HFHomeKitAccessorySettingsItemProvider *)self nonHomeKitSettingsDictionary];
  v17 = [v16 count] == 0;

  if (!v17)
  {
    v18 = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke_2;
    v22[3] = &unk_277DF3108;
    v22[4] = self;
    [v18 na_each:v22];
  }

  v19 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = a1;
  v4 = [*(a1 + 32) settingItems];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v25 = 0;
    v8 = *v28;
    *&v6 = 138412290;
    v23 = v6;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 settingKeyPath];
        v12 = [v3 keyPath];
        if ([v11 isEqualToString:v12])
        {
        }

        else
        {
          v13 = [v10 targetSettingKeyPath];
          [v3 keyPath];
          v14 = v7;
          v15 = v8;
          v17 = v16 = v4;
          v26 = [v13 isEqualToString:v17];

          v4 = v16;
          v8 = v15;
          v7 = v14;

          if (!v26)
          {
            continue;
          }
        }

        if ([v10 updateSetting:v3])
        {
          *(*(*(v24 + 48) + 8) + 24) = 1;
          v18 = HFLogForCategory(0x28uLL);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v32 = v3;
            _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "New value has been found for [%@]", buf, 0xCu);
          }
        }

        v25 = 1;
      }

      v7 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (!v7)
      {

        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v19 = [*(v24 + 32) homeKitKeyPaths];
  v20 = [v3 keyPath];
  v21 = [v19 containsObject:v20];

  if (v21)
  {
    *(*(*(v24 + 48) + 8) + 24) = 1;
    [*(v24 + 40) addObject:v3];
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

void __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) nonHomeKitSettingsDictionary];
  v4 = [v6 settingKeyPath];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    [v6 setIsControllable:1];
  }
}

- (BOOL)shouldUpdateForKeyPaths:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFHomeKitAccessorySettingsItemProvider *)self homeKitKeyPaths];
  v6 = [v5 count];

  v7 = HFLogForCategory(0x28uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [(HFHomeKitAccessorySettingsItemProvider *)self homeKitKeyPaths];
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Deciding whether we should update [%@], current homeKitKeyPaths [%@]", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__HFHomeKitAccessorySettingsItemProvider_shouldUpdateForKeyPaths___block_invoke;
    v13[3] = &unk_277DF3130;
    v13[4] = self;
    v10 = [v4 na_any:v13];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Should always update for the first callback for [%@]", buf, 0xCu);
    }

    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __66__HFHomeKitAccessorySettingsItemProvider_shouldUpdateForKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 homeKitKeyPaths];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)sourceItemAccessory
{
  v2 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItem];
  v3 = [v2 accessories];
  v4 = [v3 anyObject];

  return v4;
}

- (id)_fetchSettingsAndReloadItems
{
  v53 = *MEMORY[0x277D85DE8];
  v39 = objc_alloc_init(MEMORY[0x277D2C900]);
  v3 = [(HFHomeKitAccessorySettingsItemProvider *)self moduleSettings];
  v4 = objc_opt_new();
  v5 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
  v41 = [v5 home];

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke;
  v46[3] = &unk_277DF3158;
  v47 = v4;
  v9 = v6;
  v48 = v9;
  v10 = v7;
  v49 = v10;
  v11 = v8;
  v50 = v11;
  v12 = v4;
  v42 = v3;
  [v3 na_each:v46];
  if ([v9 count])
  {
    v13 = [v9 copy];
    [(HFHomeKitAccessorySettingsItemProvider *)self setSplitSettingsDictionary:v13];

    v14 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = v9;
      _os_log_debug_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEBUG, "Identified Settings that need to be split = [%@]", buf, 0xCu);
    }
  }

  v40 = v9;
  if ([v10 count])
  {
    v15 = [v10 copy];
    [(HFHomeKitAccessorySettingsItemProvider *)self setNonHomeKitSettingsDictionary:v15];
  }

  v16 = [v12 copy];
  [(HFHomeKitAccessorySettingsItemProvider *)self setAllKeyPaths:v16];

  v17 = [v11 copy];
  [(HFHomeKitAccessorySettingsItemProvider *)self setHomeKitKeyPaths:v17];

  v18 = MEMORY[0x277CBEB18];
  [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
  v20 = v19 = v12;
  v21 = [v20 allObjects];
  v22 = [v18 arrayWithArray:v21];

  v23 = v19;
  v38 = [(HFHomeKitAccessorySettingsItemProvider *)self _generateAccessorySettingItemForSettings:v10 keyPaths:v19];
  [v22 addObjectsFromArray:v38];
  v24 = +[HFHomeKitDispatcher sharedDispatcher];
  v25 = [v24 accessorySettingsDataSource];
  v26 = [v41 uniqueIdentifier];
  v27 = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
  v28 = [v25 hf_defaultSettingsWithHomeIdentifier:v26 accessoryIdentifier:v27 keyPaths:v11];

  v29 = [(HFHomeKitAccessorySettingsItemProvider *)self _generateAccessorySettingItemForSettings:v40 homeKitSettings:v28 keyPaths:v23];
  [v22 na_safeAddObjectsFromArray:v28];
  [v22 na_safeAddObjectsFromArray:v29];
  v30 = [(HFHomeKitAccessorySettingsItemProvider *)self _reloadItemsFromSettings:v22 performInitialUpdateOnItems:0];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke_9;
  v43[3] = &unk_277DF3180;
  v43[4] = self;
  v44 = v11;
  v31 = v39;
  v45 = v31;
  v32 = v11;
  v33 = [v30 addCompletionBlock:v43];
  v34 = v45;
  v35 = v31;

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

void __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allKeys];
  v11 = [v4 objectAtIndexedSubscript:0];

  v5 = *(a1 + 32);
  v6 = [v3 allKeys];
  [v5 na_safeAddObjectsFromArray:v6];

  v7 = [v3 objectForKeyedSubscript:v11];

  v8 = [v7 objectForKeyedSubscript:HFHomeKitSettingTargetKeyPathKey];
  v9 = [v7 objectForKeyedSubscript:HFNonHomeKitSettingKey];
  if (v8 && ([v8 isEqualToString:v11] & 1) == 0)
  {
    v10 = *(a1 + 40);
  }

  else
  {
    if (!v9 || ![v9 BOOLValue])
    {
      [*(a1 + 56) addObject:v11];
      goto LABEL_9;
    }

    v10 = *(a1 + 48);
  }

  [v10 setObject:v7 forKey:v11];
LABEL_9:
}

void __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setSettingsAlreadyFetched:1];
  [*(a1 + 32) _subscribeToAccessorySettings:*(a1 + 40)];
  [*(a1 + 48) finishWithResult:v7 error:v6];
}

- (id)_reloadItemsFromSettings:(id)a3 performInitialUpdateOnItems:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_3;
  v12[3] = &unk_277DF3210;
  objc_copyWeak(&v13, &location);
  v14 = a4;
  v7 = [(HFItemProvider *)self reloadItemsWithObjects:v6 keyAdaptor:&__block_literal_global_4 itemAdaptor:&__block_literal_global_16_0 filter:0 itemMap:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_19;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

id __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    [v5 keyPath];
  }

  else
  {
    [v8 settingKeyPath];
  }
  v9 = ;

  return v9;
}

id __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_3(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
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

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    v11 = [WeakRetained moduleSettings];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_4;
    v50[3] = &unk_277DF31E8;
    v51 = v7;
    v12 = [v11 na_filter:v50];
  }

  else
  {
    v12 = 0;
  }

  v13 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v53 = v7;
    v54 = 2112;
    v55 = v10;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "HMImmutableSetting = [%@] HFHomeKitAccessorySettingItem = [%@]", buf, 0x16u);
  }

  if (v7 && [v12 count])
  {
    v49 = WeakRetained;
    v45 = v10;
    v46 = a1;
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v7 keyPath];
    v16 = [v14 objectForKeyedSubscript:v15];

    v43 = v16;
    v17 = [v16 objectForKeyedSubscript:HFLocalizedSettingTitleKey];
    v18 = v17;
    if (v17)
    {
      v19 = _HFLocalizedStringWithDefaultValue(v17, 0, 0);
      if (!v19)
      {
        v19 = _HFLocalizedStringWithDefaultValue(v18, 0, 0);
      }
    }

    else
    {
      v22 = +[HFHomeKitDispatcher sharedDispatcher];
      v23 = [v22 accessorySettingsDataSource];
      v24 = [v7 keyPath];
      v19 = [v23 hf_localizedTitleForKeyPath:v24];
    }

    v41 = v19;
    v42 = v18;
    v25 = [v49 settingsAlreadyFetched];
    v40 = [HFHomeKitAccessorySettingItem alloc];
    v48 = [v49 sourceItem];
    v47 = [v49 settingsController];
    v26 = [v49 sourceItemAccessory];
    v27 = [v26 home];
    v28 = [v27 uniqueIdentifier];
    v29 = [v49 accessoryIdentifier];
    v44 = v12;
    v30 = [v12 objectAtIndexedSubscript:0];
    v31 = [v49 usageOptions];
    v32 = v31;
    if (v25)
    {
      v33 = v41;
      v34 = [(HFHomeKitAccessorySettingItem *)v40 initWithSetting:v8 sourceItem:v48 localizedTitle:v41 settingsController:v47 homeIdentifier:v28 accessoryIdentifier:v29 settingDict:v30 usageOptions:v31];
    }

    else
    {
      v33 = v41;
      v34 = [(HFHomeKitAccessorySettingItem *)v40 initWithDefaultSetting:v8 sourceItem:v48 localizedTitle:v41 settingsController:v47 homeIdentifier:v28 accessoryIdentifier:v29 settingDict:v30 usageOptions:v31];
    }

    v21 = v34;

    WeakRetained = v49;
    v35 = [v49 allKeyPaths];
    v36 = [v7 keyPath];
    [v21 setDisplayIndex:{objc_msgSend(v35, "indexOfObject:", v36)}];

    v10 = v45;
    a1 = v46;
    v12 = v44;
  }

  else if (v10)
  {
    v20 = v10;
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  if (*(a1 + 40) == 1)
  {
    v37 = [v21 updateWithOptions:MEMORY[0x277CBEC10]];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 allKeys];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [*(a1 + 32) keyPath];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_19(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained settingItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained settingItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained settingItems];
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Assembled settingItems = [%@], results = [%@]", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_subscribeToAccessorySettings:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Now subscribing to setting accessoryUUID [%@] - keyPaths [%@]", buf, 0x16u);
  }

  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = [v7 accessorySettingsDataSource];
  v9 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
  v10 = [v9 home];
  v11 = [v10 uniqueIdentifier];
  v12 = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HFHomeKitAccessorySettingsItemProvider__subscribeToAccessorySettings___block_invoke;
  v15[3] = &unk_277DF2D08;
  v16 = v4;
  v13 = v4;
  [v8 hf_subscribeToAccessorySettingsWithHomeIdentifier:v11 accessoryIdentifier:v12 keyPaths:v13 options:0 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __72__HFHomeKitAccessorySettingsItemProvider__subscribeToAccessorySettings___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error subscribing to keypaths [%@] Error = %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_generateAccessorySettingItemForSettings:(id)a3 homeKitSettings:(id)a4 keyPaths:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v7 = a4;
  v45 = a5;
  v44 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v7;
  v41 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v41)
  {
    v39 = *v61;
    do
    {
      v8 = 0;
      do
      {
        if (*v61 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v8;
        v55 = *(*(&v60 + 1) + 8 * v8);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v9 = v40;
        v10 = [v9 countByEnumeratingWithState:&v56 objects:v72 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v57;
          v46 = *v57;
          v47 = v9;
          do
          {
            v13 = 0;
            v48 = v11;
            do
            {
              if (*v57 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v56 + 1) + 8 * v13);
              v15 = [v9 objectForKeyedSubscript:v14];
              v16 = [v15 objectForKeyedSubscript:HFHomeKitSettingTargetKeyPathKey];
              v17 = [v55 keyPath];
              v18 = [v16 isEqualToString:v17];

              if (v18)
              {
                v19 = [v15 objectForKeyedSubscript:HFLocalizedSettingTitleKey];
                v20 = v19;
                v53 = v16;
                v54 = v15;
                if (v19)
                {
                  v21 = v19;
                }

                else
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFAccessorySettingsGroupTitle-%@", v14];
                }

                v22 = v21;
                v49 = v14;
                v50 = v21;

                v23 = _HFLocalizedStringWithDefaultValue(v22, 0, 0);
                v51 = [HFHomeKitAccessorySettingItem alloc];
                v24 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItem];
                v25 = [(HFHomeKitAccessorySettingsItemProvider *)self settingsController];
                v26 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
                v27 = [v26 home];
                v28 = [v27 uniqueIdentifier];
                v29 = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
                v70 = v14;
                v71 = v54;
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
                v31 = [(HFHomeKitAccessorySettingsItemProvider *)self usageOptions];
                v32 = v51;
                v52 = v23;
                v33 = [(HFHomeKitAccessorySettingItem *)v32 initWithSetting:v55 sourceItem:v24 localizedTitle:v23 settingsController:v25 homeIdentifier:v28 accessoryIdentifier:v29 settingDict:v30 usageOptions:v31];

                v34 = HFLogForCategory(0x28uLL);
                v16 = v53;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412802;
                  v65 = v33;
                  v66 = 2112;
                  v67 = v49;
                  v68 = 2112;
                  v69 = v53;
                  _os_log_debug_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEBUG, "SplitSetting: Generated HFHomeKitAccessorySettingItem [%@] for unique keypath %@ having targetKeyPath %@", buf, 0x20u);
                }

                -[HFHomeKitAccessorySettingItem setDisplayIndex:](v33, "setDisplayIndex:", [v45 indexOfObject:v49]);
                [v44 addObject:v33];

                v12 = v46;
                v9 = v47;
                v11 = v48;
                v15 = v54;
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v56 objects:v72 count:16];
          }

          while (v11);
        }

        v8 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v41);
  }

  v35 = [v44 copy];
  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)_generateAccessorySettingItemForSettings:(id)a3 keyPaths:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = a4;
  v30 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v32)
  {
    v28 = *v41;
    do
    {
      v6 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v6;
        v7 = *(*(&v40 + 1) + 8 * v6);
        v8 = [obj objectForKeyedSubscript:v7];
        v9 = [v8 objectForKeyedSubscript:HFLocalizedSettingTitleKey];
        v10 = v9;
        v36 = v7;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFAccessorySettingsGroupTitle-%@", v7];
        }

        v12 = v11;
        v37 = v11;

        v13 = _HFLocalizedStringWithDefaultValue(v12, 0, 0);
        v38 = [HFHomeKitAccessorySettingItem alloc];
        v14 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItem];
        v15 = [(HFHomeKitAccessorySettingsItemProvider *)self settingsController];
        v16 = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
        v17 = [v16 home];
        v18 = [v17 uniqueIdentifier];
        v19 = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
        v48 = v36;
        v49 = v8;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v20 = v35 = v8;
        v21 = [(HFHomeKitAccessorySettingsItemProvider *)self usageOptions];
        v22 = v38;
        v39 = v13;
        v23 = [(HFHomeKitAccessorySettingItem *)v22 initWithSourceItem:v14 localizedTitle:v13 settingsController:v15 homeIdentifier:v18 accessoryIdentifier:v19 settingDict:v20 usageOptions:v21];

        v24 = HFLogForCategory(0x28uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v45 = v23;
          v46 = 2112;
          v47 = v36;
          _os_log_debug_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEBUG, "Non-HomeKit Setting: Generated HFHomeKitAccessorySettingItem [%@] for unique keypath %@", buf, 0x16u);
        }

        -[HFHomeKitAccessorySettingItem setDisplayIndex:](v23, "setDisplayIndex:", [v31 indexOfObject:v36]);
        [v30 addObject:v23];

        v6 = v34 + 1;
      }

      while (v32 != v34 + 1);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v32);
  }

  v25 = [v30 copy];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end