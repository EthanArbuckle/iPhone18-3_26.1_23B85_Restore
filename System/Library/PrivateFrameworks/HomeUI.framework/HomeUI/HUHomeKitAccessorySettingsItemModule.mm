@interface HUHomeKitAccessorySettingsItemModule
- (HUHomeKitAccessorySettingsItemModule)initWithSettingsController:(id)controller itemUpdater:(id)updater home:(id)home sourceItem:(id)item settingGroupKeyPath:(id)path isCollapsed:(BOOL)collapsed;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (void)_buildItemProviders;
@end

@implementation HUHomeKitAccessorySettingsItemModule

- (HUHomeKitAccessorySettingsItemModule)initWithSettingsController:(id)controller itemUpdater:(id)updater home:(id)home sourceItem:(id)item settingGroupKeyPath:(id)path isCollapsed:(BOOL)collapsed
{
  controllerCopy = controller;
  updaterCopy = updater;
  homeCopy = home;
  itemCopy = item;
  pathCopy = path;
  if (homeCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeKitAccessorySettingsItemModule.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUHomeKitAccessorySettingsItemModule.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"sourceItem"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = HUHomeKitAccessorySettingsItemModule;
  v19 = [(HFItemModule *)&v26 initWithItemUpdater:updaterCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_settingsController, controller);
    objc_storeStrong(&v20->_home, home);
    objc_storeStrong(&v20->_sourceItem, item);
    objc_storeStrong(&v20->_settingGroupKeyPath, path);
    v20->_isCollapsed = collapsed;
    [(HUHomeKitAccessorySettingsItemModule *)v20 _buildItemProviders];
  }

  return v20;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  accessorySettingsItemProvider = [(HUHomeKitAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  v4 = [v2 setWithObject:accessorySettingsItemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v54 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCACA8];
  settingGroupKeyPath = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v8 = [v6 stringWithFormat:@"%@", settingGroupKeyPath];

  v46 = v8;
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v8];
  accessorySettingsItemProvider = [(HUHomeKitAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  items = [accessorySettingsItemProvider items];
  allObjects = [items allObjects];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __72__HUHomeKitAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v48[3] = &unk_277DB85D8;
  v45 = itemsCopy;
  v49 = v45;
  v47 = allObjects;
  v13 = [allObjects na_filter:v48];
  [v9 setItems:v13];

  items2 = [v9 items];
  v15 = [items2 sortedArrayUsingComparator:&__block_literal_global_21];
  [v9 setItems:v15];

  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  settingGroupKeyPath2 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v18 = [hf_accessorySettingsDictionary objectForKey:settingGroupKeyPath2];

  v19 = MEMORY[0x277D13BC0];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13BC0]];
  if (!v20 || (v21 = v20, [v18 objectForKeyedSubscript:*v19], v22 = objc_claimAutoreleasedReturnValue(), HFLocalizedString(), v23 = objc_claimAutoreleasedReturnValue(), v22, v21, !v23))
  {
    isCollapsed = [(HUHomeKitAccessorySettingsItemModule *)self isCollapsed];
    v25 = MEMORY[0x277D137B8];
    if (!isCollapsed)
    {
      v25 = MEMORY[0x277D138A0];
    }

    v26 = [v18 objectForKeyedSubscript:*v25];
    v23 = [v26 objectForKeyedSubscript:*v19];
  }

  if (v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = &stru_2823E0EE8;
  }

  [v9 setHeaderTitle:v27];
  v28 = MEMORY[0x277D138B0];
  v29 = [v18 objectForKeyedSubscript:*MEMORY[0x277D138B0]];
  if (v29)
  {
    v30 = v29;
LABEL_14:
    v34 = v47;
    defaultFactory = [MEMORY[0x277D14338] defaultFactory];
    v36 = [defaultFactory formatterForKey:v30];

    goto LABEL_15;
  }

  isCollapsed2 = [(HUHomeKitAccessorySettingsItemModule *)self isCollapsed];
  v32 = MEMORY[0x277D137B8];
  if (!isCollapsed2)
  {
    v32 = MEMORY[0x277D138A0];
  }

  v33 = [v18 objectForKeyedSubscript:*v32];
  v30 = [v33 objectForKeyedSubscript:*v28];

  if (v30)
  {
    goto LABEL_14;
  }

  v36 = 0;
  v34 = v47;
LABEL_15:
  sourceItem = [(HUHomeKitAccessorySettingsItemModule *)self sourceItem];
  v38 = [v36 attributedStringForObjectValue:sourceItem withDefaultAttributes:0];

  if (v38)
  {
    [v9 setAttributedFooterTitle:v38];
  }

  else
  {
    sourceItem2 = [(HUHomeKitAccessorySettingsItemModule *)self sourceItem];
    v40 = [v36 stringForObjectValue:sourceItem2];
    [v9 setFooterTitle:v40];

    v34 = v47;
  }

  if ([v34 count])
  {
    [v5 addObject:v9];
  }

  v41 = HFLogForCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    settingGroupKeyPath3 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
    *buf = 138412546;
    v51 = v5;
    v52 = 2112;
    v53 = settingGroupKeyPath3;
    _os_log_debug_impl(&dword_20CEB6000, v41, OS_LOG_TYPE_DEBUG, "Built sections [%@] for settingGroupKeyPath = [%@]", buf, 0x16u);

    v34 = v47;
  }

  v42 = v5;
  return v5;
}

uint64_t __72__HUHomeKitAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)_buildItemProviders
{
  v22 = *MEMORY[0x277D85DE8];
  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  settingGroupKeyPath = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v5 = [hf_accessorySettingsDictionary objectForKey:settingGroupKeyPath];

  isCollapsed = [(HUHomeKitAccessorySettingsItemModule *)self isCollapsed];
  v7 = MEMORY[0x277D137B8];
  if (!isCollapsed)
  {
    v7 = MEMORY[0x277D138A0];
  }

  v8 = [v5 objectForKeyedSubscript:*v7];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D14168]];
  v10 = objc_alloc(MEMORY[0x277D146E0]);
  settingsController = [(HUHomeKitAccessorySettingsItemModule *)self settingsController];
  sourceItem = [(HUHomeKitAccessorySettingsItemModule *)self sourceItem];
  settingGroupKeyPath2 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v14 = [v10 initWithSettingsController:settingsController sourceItem:sourceItem settingGroupKeyPath:settingGroupKeyPath2 moduleSettings:v9 usageOptions:0];
  [(HUHomeKitAccessorySettingsItemModule *)self setAccessorySettingsItemProvider:v14];

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    accessorySettingsItemProvider = [(HUHomeKitAccessorySettingsItemModule *)self accessorySettingsItemProvider];
    settingGroupKeyPath3 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
    v18 = 138412546;
    v19 = accessorySettingsItemProvider;
    v20 = 2112;
    v21 = settingGroupKeyPath3;
    _os_log_debug_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEBUG, "Built accessorySettingsItemProvider [%@] for settingGroupKeyPath = [%@]", &v18, 0x16u);
  }
}

@end