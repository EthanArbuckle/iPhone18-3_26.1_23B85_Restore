@interface HUAccessorySettingsUtilities
+ (BOOL)_shouldCollapseModuleForGroupKeyPath:(id)a3;
+ (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)a3 accessory:(id)a4 home:(id)a5;
+ (id)generateModulesFromSettingsDictionary:(id)a3 itemUpdater:(id)a4 home:(id)a5 sourceItem:(id)a6 usageOptions:(id)a7 settingsController:(id)a8;
@end

@implementation HUAccessorySettingsUtilities

+ (id)generateModulesFromSettingsDictionary:(id)a3 itemUpdater:(id)a4 home:(id)a5 sourceItem:(id)a6 usageOptions:(id)a7 settingsController:(id)a8
{
  v49 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a8;
  v36 = objc_opt_new();
  v15 = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  v16 = [v13 accessories];
  v39 = [v16 anyObject];

  if (v15)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      v35 = a1;
      v38 = v17;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          if (([a1 _shouldSkipModuleCreationForGroupKeyPath:v22 accessory:v39 home:v12] & 1) == 0)
          {
            if ([a1 _shouldCollapseModuleForGroupKeyPath:v22])
            {
              v23 = 1;
            }

            else
            {
              v24 = [v17 objectForKeyedSubscript:v22];
              v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D137B8]];
              v23 = v25 != 0;

              v17 = v38;
            }

            v26 = [[HUHomeKitAccessorySettingsItemModule alloc] initWithSettingsController:v14 itemUpdater:v37 home:v12 sourceItem:v13 settingGroupKeyPath:v22 isCollapsed:v23];
            [v17 objectForKeyedSubscript:v22];
            v27 = v14;
            v29 = v28 = v13;
            v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D13398]];

            if (v30)
            {
              v31 = [objc_alloc(NSClassFromString(v30)) initWithSettingsController:v27 sourceItem:v28 home:v12];
              [(HUHomeKitAccessorySettingsItemModule *)v26 setAccessorySettingsManager:v31];
            }

            v32 = HFLogForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v45 = v26;
              v46 = 2112;
              v47 = v22;
              _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "Created settingsModule [%@] for groupKeyPath [%@]", buf, 0x16u);
            }

            [v36 na_safeAddObject:v26];
            v13 = v28;
            v14 = v27;
            a1 = v35;
            v17 = v38;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v19);
    }

    v15 = v34;
  }

  return v36;
}

+ (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)a3 accessory:(id)a4 home:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [v8 hf_categoryOrPrimaryServiceType];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCE900]];

  if (v12)
  {
    [v10 addObject:*MEMORY[0x277D133A8]];
  }

  else
  {
    v23[0] = *MEMORY[0x277D13BD8];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v10 addObjectsFromArray:v13];
  }

  if ([v8 supportsUserMediaSettings])
  {
    [v10 addObject:*MEMORY[0x277D138A8]];
  }

  v14 = MEMORY[0x277D13840];
  if ([v7 isEqualToString:*MEMORY[0x277D13840]])
  {
    v15 = [v9 hf_allCameraProfilesWithDoorbellService];
    v16 = [v15 count];

    if (!v16)
    {
      v22 = *v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [v10 addObjectsFromArray:v17];
    }
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v21 = *MEMORY[0x277D136D0];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v10 addObjectsFromArray:v18];
  }

  v19 = [v10 containsObject:v7];

  return v19;
}

+ (BOOL)_shouldCollapseModuleForGroupKeyPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D133A8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x277D14170]];
  }

  return v4;
}

@end