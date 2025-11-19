@interface HUHomeKitAccessorySettingsItemModule
- (HUHomeKitAccessorySettingsItemModule)initWithSettingsController:(id)a3 itemUpdater:(id)a4 home:(id)a5 sourceItem:(id)a6 settingGroupKeyPath:(id)a7 isCollapsed:(BOOL)a8;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
- (void)_buildItemProviders;
@end

@implementation HUHomeKitAccessorySettingsItemModule

- (HUHomeKitAccessorySettingsItemModule)initWithSettingsController:(id)a3 itemUpdater:(id)a4 home:(id)a5 sourceItem:(id)a6 settingGroupKeyPath:(id)a7 isCollapsed:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HUHomeKitAccessorySettingsItemModule.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"HUHomeKitAccessorySettingsItemModule.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"sourceItem"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = HUHomeKitAccessorySettingsItemModule;
  v19 = [(HFItemModule *)&v26 initWithItemUpdater:v15];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_settingsController, a3);
    objc_storeStrong(&v20->_home, a5);
    objc_storeStrong(&v20->_sourceItem, a6);
    objc_storeStrong(&v20->_settingGroupKeyPath, a7);
    v20->_isCollapsed = a8;
    [(HUHomeKitAccessorySettingsItemModule *)v20 _buildItemProviders];
  }

  return v20;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUHomeKitAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v8 = [v6 stringWithFormat:@"%@", v7];

  v46 = v8;
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v8];
  v10 = [(HUHomeKitAccessorySettingsItemModule *)self accessorySettingsItemProvider];
  v11 = [v10 items];
  v12 = [v11 allObjects];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __72__HUHomeKitAccessorySettingsItemModule_buildSectionsWithDisplayedItems___block_invoke;
  v48[3] = &unk_277DB85D8;
  v45 = v4;
  v49 = v45;
  v47 = v12;
  v13 = [v12 na_filter:v48];
  [v9 setItems:v13];

  v14 = [v9 items];
  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_21];
  [v9 setItems:v15];

  v16 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v17 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v18 = [v16 objectForKey:v17];

  v19 = MEMORY[0x277D13BC0];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13BC0]];
  if (!v20 || (v21 = v20, [v18 objectForKeyedSubscript:*v19], v22 = objc_claimAutoreleasedReturnValue(), HFLocalizedString(), v23 = objc_claimAutoreleasedReturnValue(), v22, v21, !v23))
  {
    v24 = [(HUHomeKitAccessorySettingsItemModule *)self isCollapsed];
    v25 = MEMORY[0x277D137B8];
    if (!v24)
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
    v35 = [MEMORY[0x277D14338] defaultFactory];
    v36 = [v35 formatterForKey:v30];

    goto LABEL_15;
  }

  v31 = [(HUHomeKitAccessorySettingsItemModule *)self isCollapsed];
  v32 = MEMORY[0x277D137B8];
  if (!v31)
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
  v37 = [(HUHomeKitAccessorySettingsItemModule *)self sourceItem];
  v38 = [v36 attributedStringForObjectValue:v37 withDefaultAttributes:0];

  if (v38)
  {
    [v9 setAttributedFooterTitle:v38];
  }

  else
  {
    v39 = [(HUHomeKitAccessorySettingsItemModule *)self sourceItem];
    v40 = [v36 stringForObjectValue:v39];
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
    v44 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
    *buf = 138412546;
    v51 = v5;
    v52 = 2112;
    v53 = v44;
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
  v3 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v4 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v5 = [v3 objectForKey:v4];

  v6 = [(HUHomeKitAccessorySettingsItemModule *)self isCollapsed];
  v7 = MEMORY[0x277D137B8];
  if (!v6)
  {
    v7 = MEMORY[0x277D138A0];
  }

  v8 = [v5 objectForKeyedSubscript:*v7];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D14168]];
  v10 = objc_alloc(MEMORY[0x277D146E0]);
  v11 = [(HUHomeKitAccessorySettingsItemModule *)self settingsController];
  v12 = [(HUHomeKitAccessorySettingsItemModule *)self sourceItem];
  v13 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
  v14 = [v10 initWithSettingsController:v11 sourceItem:v12 settingGroupKeyPath:v13 moduleSettings:v9 usageOptions:0];
  [(HUHomeKitAccessorySettingsItemModule *)self setAccessorySettingsItemProvider:v14];

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(HUHomeKitAccessorySettingsItemModule *)self accessorySettingsItemProvider];
    v17 = [(HUHomeKitAccessorySettingsItemModule *)self settingGroupKeyPath];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_debug_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEBUG, "Built accessorySettingsItemProvider [%@] for settingGroupKeyPath = [%@]", &v18, 0x16u);
  }
}

@end