@interface HUAccessorySettingsUtilities
+ (BOOL)_shouldCollapseModuleForGroupKeyPath:(id)path;
+ (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)path accessory:(id)accessory home:(id)home;
+ (id)generateModulesFromSettingsDictionary:(id)dictionary itemUpdater:(id)updater home:(id)home sourceItem:(id)item usageOptions:(id)options settingsController:(id)controller;
@end

@implementation HUAccessorySettingsUtilities

+ (id)generateModulesFromSettingsDictionary:(id)dictionary itemUpdater:(id)updater home:(id)home sourceItem:(id)item usageOptions:(id)options settingsController:(id)controller
{
  v49 = *MEMORY[0x277D85DE8];
  updaterCopy = updater;
  homeCopy = home;
  itemCopy = item;
  controllerCopy = controller;
  v36 = objc_opt_new();
  hf_accessorySettingsDictionary = [MEMORY[0x277D14368] hf_accessorySettingsDictionary];
  accessories = [itemCopy accessories];
  anyObject = [accessories anyObject];

  if (hf_accessorySettingsDictionary)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = hf_accessorySettingsDictionary;
    v17 = hf_accessorySettingsDictionary;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      selfCopy = self;
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
          if (([self _shouldSkipModuleCreationForGroupKeyPath:v22 accessory:anyObject home:homeCopy] & 1) == 0)
          {
            if ([self _shouldCollapseModuleForGroupKeyPath:v22])
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

            v26 = [[HUHomeKitAccessorySettingsItemModule alloc] initWithSettingsController:controllerCopy itemUpdater:updaterCopy home:homeCopy sourceItem:itemCopy settingGroupKeyPath:v22 isCollapsed:v23];
            [v17 objectForKeyedSubscript:v22];
            v27 = controllerCopy;
            v29 = v28 = itemCopy;
            v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D13398]];

            if (v30)
            {
              v31 = [objc_alloc(NSClassFromString(v30)) initWithSettingsController:v27 sourceItem:v28 home:homeCopy];
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
            itemCopy = v28;
            controllerCopy = v27;
            self = selfCopy;
            v17 = v38;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v19);
    }

    hf_accessorySettingsDictionary = v34;
  }

  return v36;
}

+ (BOOL)_shouldSkipModuleCreationForGroupKeyPath:(id)path accessory:(id)accessory home:(id)home
{
  v23[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  accessoryCopy = accessory;
  homeCopy = home;
  v10 = objc_opt_new();
  hf_categoryOrPrimaryServiceType = [accessoryCopy hf_categoryOrPrimaryServiceType];
  v12 = [hf_categoryOrPrimaryServiceType isEqualToString:*MEMORY[0x277CCE900]];

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

  if ([accessoryCopy supportsUserMediaSettings])
  {
    [v10 addObject:*MEMORY[0x277D138A8]];
  }

  v14 = MEMORY[0x277D13840];
  if ([pathCopy isEqualToString:*MEMORY[0x277D13840]])
  {
    hf_allCameraProfilesWithDoorbellService = [homeCopy hf_allCameraProfilesWithDoorbellService];
    v16 = [hf_allCameraProfilesWithDoorbellService count];

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

  v19 = [v10 containsObject:pathCopy];

  return v19;
}

+ (BOOL)_shouldCollapseModuleForGroupKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:*MEMORY[0x277D133A8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [pathCopy isEqualToString:*MEMORY[0x277D14170]];
  }

  return v4;
}

@end