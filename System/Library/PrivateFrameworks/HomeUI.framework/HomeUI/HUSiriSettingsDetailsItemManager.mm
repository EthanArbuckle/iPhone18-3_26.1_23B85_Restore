@interface HUSiriSettingsDetailsItemManager
- (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)path;
- (HUSiriSettingsDetailsItemManager)initWithDelegate:(id)delegate module:(id)module;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)updateSettingItem:(id)item withValue:(id)value;
@end

@implementation HUSiriSettingsDetailsItemManager

- (HUSiriSettingsDetailsItemManager)initWithDelegate:(id)delegate module:(id)module
{
  moduleCopy = module;
  delegateCopy = delegate;
  accessorySettingsItemProvider = [moduleCopy accessorySettingsItemProvider];
  items = [accessorySettingsItemProvider items];
  anyObject = [items anyObject];

  v12 = [anyObject copy];
  v21.receiver = self;
  v21.super_class = HUSiriSettingsDetailsItemManager;
  v13 = [(HFItemManager *)&v21 initWithDelegate:delegateCopy sourceItem:v12];

  if (v13)
  {
    settingsController = [moduleCopy settingsController];
    settingsController = v13->_settingsController;
    v13->_settingsController = settingsController;

    settingGroupKeyPath = [moduleCopy settingGroupKeyPath];
    settingGroupKeyPath = v13->_settingGroupKeyPath;
    v13->_settingGroupKeyPath = settingGroupKeyPath;

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
    [accessorySettingsDataSource addObserver:v13];

    objc_storeStrong(&v13->_module, module);
  }

  return v13;
}

- (id)updateSettingItem:(id)item withValue:(id)value
{
  itemCopy = item;
  valueCopy = value;
  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8 = [itemCopy updateValue:valueCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HUSiriSettingsDetailsItemManager_updateSettingItem_withValue___block_invoke;
  v16[3] = &unk_277DC0040;
  v9 = v7;
  v17 = v9;
  v18 = valueCopy;
  v19 = itemCopy;
  v10 = itemCopy;
  v11 = valueCopy;
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

- (id)_buildItemModulesForHome:(id)home
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  hf_groupKeyPaths = [MEMORY[0x277D14368] hf_groupKeyPaths];
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
          settingsController = [(HUSiriSettingsDetailsItemManager *)self settingsController];
          module = [(HUSiriSettingsDetailsItemManager *)self module];
          home = [module home];
          module2 = [(HUSiriSettingsDetailsItemManager *)self module];
          sourceItem = [module2 sourceItem];
          v16 = v10;
          v4 = v27;
          v17 = [(HUHomeKitAccessorySettingsItemModule *)v16 initWithSettingsController:settingsController itemUpdater:self home:home sourceItem:sourceItem settingGroupKeyPath:v9 isCollapsed:0];

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
  homeKitAccessorySettingsModules = [(HUSiriSettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HUSiriSettingsDetailsItemManager__buildItemModulesForHome___block_invoke;
  v30[3] = &unk_277DC0C38;
  v31 = hf_groupKeyPaths;
  v19 = hf_groupKeyPaths;
  v20 = [homeKitAccessorySettingsModules sortedArrayUsingComparator:v30];
  [(HUSiriSettingsDetailsItemManager *)self setHomeKitAccessorySettingsModules:v20];

  v21 = HFLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    homeKitAccessorySettingsModules2 = [(HUSiriSettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
    *buf = 138412546;
    v37 = hf_accessorySettingsDictionary;
    v38 = 2112;
    v39 = homeKitAccessorySettingsModules2;
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

- (id)_buildItemProvidersForHome:(id)home
{
  v33 = *MEMORY[0x277D85DE8];
  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  settingGroupKeyPath = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
  v6 = [hf_accessorySettingsDictionary objectForKey:settingGroupKeyPath];

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
  settingsController = [(HUSiriSettingsDetailsItemManager *)self settingsController];
  module = [(HUSiriSettingsDetailsItemManager *)self module];
  sourceItem = [module sourceItem];
  settingGroupKeyPath2 = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
  v19 = [v14 initWithSettingsController:settingsController sourceItem:sourceItem settingGroupKeyPath:settingGroupKeyPath2 moduleSettings:v13 usageOptions:0];
  [(HUSiriSettingsDetailsItemManager *)self setSiriSettingsItemProvider:v19];

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    siriSettingsItemProvider = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
    settingGroupKeyPath3 = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
    *buf = 138412546;
    v30 = siriSettingsItemProvider;
    v31 = 2112;
    v32 = settingGroupKeyPath3;
    _os_log_debug_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEBUG, "Built siriSettingsItemProvider [%@] for settingGroupKeyPath = [%@]", buf, 0x16u);
  }

  siriSettingsItemProvider2 = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
  v28 = siriSettingsItemProvider2;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

  return v22;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v32[2] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  siriSettingsItemProvider = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
  items = [siriSettingsItemProvider items];
  v7 = [items na_setByIntersectingWithSet:itemsCopy];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"SiriSettingsTopSection"];
  v9 = [v7 na_filter:&__block_literal_global_283];

  v31 = v9;
  allObjects = [v9 allObjects];
  [v8 setItems:allObjects];

  items2 = [v8 items];
  v12 = [items2 sortedArrayUsingComparator:&__block_literal_global_14_2];
  [v8 setItems:v12];

  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  settingGroupKeyPath = [(HUSiriSettingsDetailsItemManager *)self settingGroupKeyPath];
  v15 = [hf_accessorySettingsDictionary objectForKey:settingGroupKeyPath];

  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D138B0]];
  if (v16)
  {
    defaultFactory = [MEMORY[0x277D14338] defaultFactory];
    v18 = [defaultFactory formatterForKey:v16];
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

  siriSettingsItemProvider2 = [(HUSiriSettingsDetailsItemManager *)self siriSettingsItemProvider];
  items3 = [siriSettingsItemProvider2 items];
  v23 = [items3 na_setByIntersectingWithSet:itemsCopy];

  v24 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"SiriSettingsBottomSection"];
  v25 = [v23 na_filter:&__block_literal_global_20_6];

  allObjects2 = [v25 allObjects];
  [v24 setItems:allObjects2];

  items4 = [v24 items];
  v28 = [items4 sortedArrayUsingComparator:&__block_literal_global_22_3];
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

- (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x277D136D0];
  if ([pathCopy isEqualToString:*MEMORY[0x277D136D0]] && (!objc_msgSend(pathCopy, "isEqualToString:", *v5) || !objc_msgSend(MEMORY[0x277D14CE8], "isAMac")))
  {
    goto LABEL_10;
  }

  v6 = MEMORY[0x277D136E8];
  if ([pathCopy isEqualToString:*MEMORY[0x277D136E8]])
  {
    if (![pathCopy isEqualToString:*v6] || !objc_msgSend(MEMORY[0x277D14CE8], "isAMac"))
    {
      goto LABEL_10;
    }
  }

  v7 = MEMORY[0x277D13840];
  if (![pathCopy isEqualToString:*MEMORY[0x277D13840]])
  {
    v11 = 1;
    goto LABEL_12;
  }

  if ([pathCopy isEqualToString:*v7])
  {
    module = [(HUSiriSettingsDetailsItemManager *)self module];
    home = [module home];
    hf_allCameraProfilesWithDoorbellService = [home hf_allCameraProfilesWithDoorbellService];
    v11 = [hf_allCameraProfilesWithDoorbellService count] == 0;
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