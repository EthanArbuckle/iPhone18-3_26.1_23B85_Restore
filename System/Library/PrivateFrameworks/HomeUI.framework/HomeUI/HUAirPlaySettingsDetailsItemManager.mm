@interface HUAirPlaySettingsDetailsItemManager
- (BOOL)_shouldHideModuleHavingGroupKeyPath:(id)path;
- (HUAirPlaySettingsDetailsItemManager)initWithDelegate:(id)delegate module:(id)module;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)updateSettingItem:(id)item withValue:(id)value;
- (void)_subscribeToAccessorySettings:(id)settings;
@end

@implementation HUAirPlaySettingsDetailsItemManager

- (HUAirPlaySettingsDetailsItemManager)initWithDelegate:(id)delegate module:(id)module
{
  v23[1] = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  delegateCopy = delegate;
  accessorySettingsItemProvider = [moduleCopy accessorySettingsItemProvider];
  items = [accessorySettingsItemProvider items];
  anyObject = [items anyObject];

  v12 = [anyObject copy];
  v22.receiver = self;
  v22.super_class = HUAirPlaySettingsDetailsItemManager;
  v13 = [(HFItemManager *)&v22 initWithDelegate:delegateCopy sourceItem:v12];

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
    v23[0] = *MEMORY[0x277D133A0];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [(HUAirPlaySettingsDetailsItemManager *)v13 _subscribeToAccessorySettings:v20];
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
  v16[2] = __67__HUAirPlaySettingsDetailsItemManager_updateSettingItem_withValue___block_invoke;
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

uint64_t __67__HUAirPlaySettingsDetailsItemManager_updateSettingItem_withValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  hf_groupKeyPaths = [MEMORY[0x277D14368] hf_groupKeyPaths];
  hf_accessorySettingsDictionary2 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [hf_accessorySettingsDictionary2 countByEnumeratingWithState:&v37 objects:v45 count:16];
  v33 = hf_accessorySettingsDictionary2;
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = MEMORY[0x277D133A8];
    v31 = *v38;
    v32 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(hf_accessorySettingsDictionary2);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if (![(HUAirPlaySettingsDetailsItemManager *)self _shouldHideModuleHavingGroupKeyPath:v11])
        {
          settingGroupKeyPath = [0 settingGroupKeyPath];
          v13 = [settingGroupKeyPath isEqualToString:*v9];

          if (v13)
          {
            module = [(HUAirPlaySettingsDetailsItemManager *)self module];
          }

          else
          {
            v34 = [HUHomeKitAccessorySettingsItemModule alloc];
            settingsController = [(HUAirPlaySettingsDetailsItemManager *)self settingsController];
            module2 = [(HUAirPlaySettingsDetailsItemManager *)self module];
            home = [module2 home];
            [(HUAirPlaySettingsDetailsItemManager *)self module];
            v18 = v9;
            v20 = v19 = v7;
            sourceItem = [v20 sourceItem];
            module = [(HUHomeKitAccessorySettingsItemModule *)v34 initWithSettingsController:settingsController itemUpdater:self home:home sourceItem:sourceItem settingGroupKeyPath:v11 isCollapsed:0];

            hf_accessorySettingsDictionary2 = v33;
            v7 = v19;
            v9 = v18;

            v8 = v31;
            v4 = v32;
          }

          [v4 na_safeAddObject:module];
        }
      }

      v7 = [hf_accessorySettingsDictionary2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v7);
  }

  [(HUAirPlaySettingsDetailsItemManager *)self setHomeKitAccessorySettingsModules:v4];
  homeKitAccessorySettingsModules = [(HUAirPlaySettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__HUAirPlaySettingsDetailsItemManager__buildItemModulesForHome___block_invoke;
  v35[3] = &unk_277DC0C38;
  v36 = hf_groupKeyPaths;
  v23 = hf_groupKeyPaths;
  v24 = [homeKitAccessorySettingsModules sortedArrayUsingComparator:v35];
  [(HUAirPlaySettingsDetailsItemManager *)self setHomeKitAccessorySettingsModules:v24];

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    homeKitAccessorySettingsModules2 = [(HUAirPlaySettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
    *buf = 138412546;
    v42 = hf_accessorySettingsDictionary;
    v43 = 2112;
    v44 = homeKitAccessorySettingsModules2;
    _os_log_debug_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEBUG, ". settingsDict = [%@] Generated homeKitAccessorySettingsModules = [%@]", buf, 0x16u);
  }

  v26 = [v4 copy];

  return v26;
}

uint64_t __64__HUAirPlaySettingsDetailsItemManager__buildItemModulesForHome___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v66[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v54 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"AirPlayMasterSettingSection"];
  module = [(HUAirPlaySettingsDetailsItemManager *)self module];
  module2 = [(HUAirPlaySettingsDetailsItemManager *)self module];
  accessorySettingsItemProvider = [module2 accessorySettingsItemProvider];
  items = [accessorySettingsItemProvider items];
  anyObject = [items anyObject];

  if (anyObject)
  {
    v66[0] = anyObject;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    [v4 setItems:v10];
  }

  else
  {
    [v4 setItems:0];
  }

  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  settingGroupKeyPath = [(HUAirPlaySettingsDetailsItemManager *)self settingGroupKeyPath];
  v13 = [hf_accessorySettingsDictionary objectForKey:settingGroupKeyPath];

  v49 = v13;
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D138B0]];
  if (v14)
  {
    defaultFactory = [MEMORY[0x277D14338] defaultFactory];
    v16 = [defaultFactory formatterForKey:v14];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 attributedStringForObjectValue:self withDefaultAttributes:0];
  v50 = anyObject;
  v47 = v16;
  v48 = v14;
  v46 = v17;
  if (v17)
  {
    [v4 setAttributedFooterTitle:v17];
  }

  else
  {
    v18 = [v16 stringForObjectValue:self];
    [v4 setFooterTitle:v18];
  }

  v52 = v4;
  [v54 na_safeAddObject:v4];
  objc_opt_class();
  v51 = module;
  itemProviders = [module itemProviders];
  allObjects = [itemProviders allObjects];
  lastObject = [allObjects lastObject];
  if (objc_opt_isKindOfClass())
  {
    v22 = lastObject;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  objc_opt_class();
  v45 = v23;
  items2 = [v23 items];
  allObjects2 = [items2 allObjects];
  lastObject2 = [allObjects2 lastObject];
  if (objc_opt_isKindOfClass())
  {
    v27 = lastObject2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  settingValue = [v28 settingValue];
  bOOLValue = [settingValue BOOLValue];

  module3 = [(HUAirPlaySettingsDetailsItemManager *)self module];
  sourceItem = [module3 sourceItem];
  accessories = [sourceItem accessories];
  anyObject2 = [accessories anyObject];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  homeKitAccessorySettingsModules = [(HUAirPlaySettingsDetailsItemManager *)self homeKitAccessorySettingsModules];
  v36 = [homeKitAccessorySettingsModules countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v58;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v58 != v38)
        {
          objc_enumerationMutation(homeKitAccessorySettingsModules);
        }

        if (bOOLValue)
        {
          v40 = *(*(&v57 + 1) + 8 * i);
          v41 = [v40 buildSectionsWithDisplayedItems:itemsCopy];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __72__HUAirPlaySettingsDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke;
          v55[3] = &unk_277DBE440;
          v56 = anyObject2;
          v42 = [v41 na_filter:v55];

          [v54 addObjectsFromArray:v42];
          v43 = HFLogForCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v62 = v42;
            v63 = 2112;
            v64 = v40;
            _os_log_debug_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEBUG, "Built Setting Sections = [%@] for module = [%@]", buf, 0x16u);
          }
        }

        else
        {
          v42 = HFLogForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v62) = 0;
            _os_log_impl(&dword_20CEB6000, v42, OS_LOG_TYPE_DEFAULT, "Hiding all other sections since airPlayEnabledSettingValue = %{BOOL}d", buf, 8u);
          }
        }
      }

      v37 = [homeKitAccessorySettingsModules countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v37);
  }

  return v54;
}

uint64_t __72__HUAirPlaySettingsDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D13BD8]];

  if (!v4)
  {
    return 1;
  }

  v5 = *(a1 + 32);

  return [v5 supportsPreferredMediaUser];
}

- (BOOL)_shouldHideModuleHavingGroupKeyPath:(id)path
{
  v11[8] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D133A8];
  v11[0] = *MEMORY[0x277D14170];
  v11[1] = v3;
  v4 = *MEMORY[0x277D136D0];
  v11[2] = *MEMORY[0x277D13678];
  v11[3] = v4;
  v5 = *MEMORY[0x277D13BC8];
  v11[4] = *MEMORY[0x277D136E8];
  v11[5] = v5;
  v6 = *MEMORY[0x277D138A8];
  v11[6] = *MEMORY[0x277D13840];
  v11[7] = v6;
  v7 = MEMORY[0x277CBEA60];
  pathCopy = path;
  v9 = [v7 arrayWithObjects:v11 count:8];
  LOBYTE(v7) = [v9 containsObject:pathCopy];

  return v7;
}

- (void)_subscribeToAccessorySettings:(id)settings
{
  v24 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  module = [(HUAirPlaySettingsDetailsItemManager *)self module];
  sourceItem = [module sourceItem];
  accessories = [sourceItem accessories];
  anyObject = [accessories anyObject];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [anyObject uniqueIdentifier];
    *buf = 138412546;
    v21 = uniqueIdentifier;
    v22 = 2112;
    v23 = settingsCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Now subscribing to setting accessoryUUID [%@] - keyPaths [%@]", buf, 0x16u);
  }

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
  module2 = [(HUAirPlaySettingsDetailsItemManager *)self module];
  home = [module2 home];
  uniqueIdentifier2 = [home uniqueIdentifier];
  uniqueIdentifier3 = [anyObject uniqueIdentifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HUAirPlaySettingsDetailsItemManager__subscribeToAccessorySettings___block_invoke;
  v18[3] = &unk_277DB8C00;
  v19 = settingsCopy;
  v17 = settingsCopy;
  [accessorySettingsDataSource hf_subscribeToAccessorySettingsWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:uniqueIdentifier3 keyPaths:v17 options:0 completionHandler:v18];
}

void __69__HUAirPlaySettingsDetailsItemManager__subscribeToAccessorySettings___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error subscribing to keypaths [%@] Error = %@", &v6, 0x16u);
    }
  }
}

@end