@interface HUSiriSettingsDetailsItemManager
- (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)a3;
- (HUSiriSettingsDetailsItemManager)initWithDelegate:(id)a3 module:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)updateSettingItem:(id)a3 withValue:(id)a4;
@end

@implementation HUSiriSettingsDetailsItemManager

- (HUSiriSettingsDetailsItemManager)initWithDelegate:(id)a3 module:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 accessorySettingsItemProvider];
  v10 = [v9 items];
  v11 = [v10 anyObject];

  v12 = [v11 copy];
  v21.receiver = self;
  v21.super_class = HUSiriSettingsDetailsItemManager;
  v13 = [(HFItemManager *)&v21 initWithDelegate:v8 sourceItem:v12];

  if (v13)
  {
    v14 = [v7 settingsController];
    settingsController = v13->_settingsController;
    v13->_settingsController = v14;

    v16 = [v7 settingGroupKeyPath];
    settingGroupKeyPath = v13->_settingGroupKeyPath;
    v13->_settingGroupKeyPath = v16;

    v18 = [MEMORY[0x277D146E8] sharedDispatcher];
    v19 = [v18 accessorySettingsDataSource];
    [v19 addObserver:v13];

    objc_storeStrong(&v13->_module, a4);
  }

  return v13;
}

- (id)updateSettingItem:(id)a3 withValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8 = [v5 updateValue:v6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HUSiriSettingsDetailsItemManager_updateSettingItem_withValue___block_invoke;
  v16[3] = &unk_277DC0040;
  v9 = v7;
  v17 = v9;
  v18 = v6;
  v19 = v5;
  v10 = v5;
  v11 = v6;
  v12 = [v8 addCompletionBlock:v16];
  v13 = v19;
  v14 = v9;

  return v9;
}

uint64_t __64__HUSiriSettingsDetailsItemManager_updateSettingItem_withValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    return [v4 finishWithError:?];
  }

  else
  {
    v6 = [MEMORY[0x277D146E8] sharedDispatcher];
    v7 = [v6 accessorySettingsDataSource];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) settingKeyPath];
    v10 = [*(a1 + 48) accessoryIdentifier];
    [v7 updateSettingValue:v8 forKeyPath:v9 accessoryIdentifier:v10];

    v11 = *(a1 + 32);

    return [v11 finishWithNoResult];
  }
}

- (id)_buildItemModulesForHome:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v26 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v25 = [MEMORY[0x277D14368] hf_groupKeyPaths];
  [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v27 = v4;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        if (![(HUSiriSettingsDetailsItemManager *)self _shouldSkipModuleCreationForGroupKeyPath:v9])
        {
          v10 = [HUHomeKitAccessorySettingsItemModule alloc];
          v11 = [(HUSiriSettingsDetailsItemManager *)self settingsController];
          v12 = [(HUSiriSettingsDetailsItemManager *)self module];
          v13 = [v12 home];
          v14 = [(HUSiriSettingsDetailsItemManager *)self module];
          v15 = [v14 sourceItem];
          v16 = v10;
          v4 = v27;
          v17 = [(HUHomeKitAccessorySettingsItemModule *)v16 initWithSettingsController:v11 itemUpdater:self home:v13 sourceItem:v15 settingGroupKeyPath:v9 isCollapsed:0];

          v6 = v28;
          [v27 na_safeAddObject:v17];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v6);
  }

  [(HUSiriSettingsDetailsItemManager *)self setHomeKitAccessorySettingsModules:v4];
  v18 = [(HUSiriSettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HUSiriSettingsDetailsItemManager__buildItemModulesForHome___block_invoke;
  v30[3] = &unk_277DC0C38;
  v31 = v25;
  v19 = v25;
  v20 = [v18 sortedArrayUsingComparator:v30];
  [(HUSiriSettingsDetailsItemManager *)self setHomeKitAccessorySettingsModules:v20];

  v21 = HFLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v24 = [(HUSiriSettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
    *buf = 138412546;
    v37 = v26;
    v38 = 2112;
    v39 = v24;
    _os_log_debug_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEBUG, ". settingsDict = [%@] Generated homeKitAccessorySettingsModules = [%@]", buf, 0x16u);
  }

  v22 = [v4 copy];

  return v22;
}

uint64_t __61__HUSiriSettingsDetailsItemManager__buildItemModulesForHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 settingGroupKeyPath];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 settingGroupKeyPath];

  v11 = [v9 indexOfObject:v10];
  if (v8 > v11)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v5 = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
  v6 = [v4 objectForKey:v5];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D137B8]];
  v8 = MEMORY[0x277D14168];
  v27 = v7;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D14168]];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D138A0]];
  v11 = [v10 objectForKeyedSubscript:*v8];
  v26 = v9;
  v12 = [MEMORY[0x277CBEB18] arrayWithArray:v9];
  v13 = v12;
  if (v11)
  {
    [v12 addObjectsFromArray:v11];
  }

  v14 = objc_alloc(MEMORY[0x277D146E0]);
  v15 = [(HUSiriSettingsDetailsItemManager *)self settingsController];
  v16 = [(HUSiriSettingsDetailsItemManager *)self module];
  v17 = [v16 sourceItem];
  v18 = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
  v19 = [v14 initWithSettingsController:v15 sourceItem:v17 settingGroupKeyPath:v18 moduleSettings:v13 usageOptions:0];
  [(HUSiriSettingsDetailsItemManager *)self setSiriSettingsItemProvider:v19];

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v24 = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
    v25 = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
    *buf = 138412546;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    _os_log_debug_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEBUG, "Built siriSettingsItemProvider [%@] for settingGroupKeyPath = [%@]", buf, 0x16u);
  }

  v21 = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
  v28 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

  return v22;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
  v6 = [v5 items];
  v7 = [v6 na_setByIntersectingWithSet:v4];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"SiriSettingsTopSection"];
  v9 = [v7 na_filter:&__block_literal_global_283];

  v31 = v9;
  v10 = [v9 allObjects];
  [v8 setItems:v10];

  v11 = [v8 items];
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_14_2];
  [v8 setItems:v12];

  v13 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v14 = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
  v15 = [v13 objectForKey:v14];

  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D138B0]];
  if (v16)
  {
    v17 = [MEMORY[0x277D14338] defaultFactory];
    v18 = [v17 formatterForKey:v16];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 attributedStringForObjectValue:self withDefaultAttributes:0];
  if (v19)
  {
    [v8 setAttributedFooterTitle:v19];
  }

  else
  {
    v20 = [v18 stringForObjectValue:self];
    [v8 setFooterTitle:v20];
  }

  v21 = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
  v22 = [v21 items];
  v23 = [v22 na_setByIntersectingWithSet:v4];

  v24 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"SiriSettingsBottomSection"];
  v25 = [v23 na_filter:&__block_literal_global_20_6];

  v26 = [v25 allObjects];
  [v24 setItems:v26];

  v27 = [v24 items];
  v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_22_3];
  [v24 setItems:v28];

  v32[0] = v8;
  v32[1] = v24;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

  return v29;
}

uint64_t __69__HUSiriSettingsDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
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

  v6 = [v5 settingKeyPath];
  if ([v6 isEqualToString:*MEMORY[0x277D133B0]])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 settingKeyPath];
    v7 = [v8 isEqualToString:*MEMORY[0x277D14230]];
  }

  return v7;
}

uint64_t __69__HUSiriSettingsDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v8 displayIndex];
  if (v12 > [v11 displayIndex])
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

uint64_t __69__HUSiriSettingsDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
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

  v6 = [v5 settingKeyPath];
  if ([v6 isEqualToString:*MEMORY[0x277D13A00]])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 settingKeyPath];
    if ([v8 isEqualToString:*MEMORY[0x277D133B0]])
    {
      v7 = 0;
    }

    else
    {
      v9 = [v5 settingKeyPath];
      v7 = [v9 isEqualToString:*MEMORY[0x277D14230]] ^ 1;
    }
  }

  return v7;
}

uint64_t __69__HUSiriSettingsDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v8 displayIndex];
  if (v12 > [v11 displayIndex])
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D136D0];
  if ([v4 isEqualToString:*MEMORY[0x277D136D0]] && (!objc_msgSend(v4, "isEqualToString:", *v5) || !objc_msgSend(MEMORY[0x277D14CE8], "isAMac")))
  {
    goto LABEL_10;
  }

  v6 = MEMORY[0x277D136E8];
  if ([v4 isEqualToString:*MEMORY[0x277D136E8]])
  {
    if (![v4 isEqualToString:*v6] || !objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
    {
      goto LABEL_10;
    }
  }

  v7 = MEMORY[0x277D13840];
  if (![v4 isEqualToString:*MEMORY[0x277D13840]])
  {
    v11 = 1;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:*v7])
  {
    v8 = [(HUSiriSettingsDetailsItemManager *)self module];
    v9 = [v8 home];
    v10 = [v9 hf_allCameraProfilesWithDoorbellService];
    v11 = [v10 count] == 0;
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

@end