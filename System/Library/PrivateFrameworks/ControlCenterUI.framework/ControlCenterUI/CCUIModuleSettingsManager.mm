@interface CCUIModuleSettingsManager
- (BOOL)_shouldSkipControlMigrationFor:(id)a3;
- (CCUIModuleSettingsManager)init;
- (id)moduleSettingsForModuleIdentifier:(id)a3;
- (id)orderedEnabledModuleIdentifiersFromSettingsApp;
- (void)_loadDefaultSettings;
- (void)_loadMigrationSettings;
- (void)_runBlockOnListeners:(id)a3;
- (void)orderedEnabledModuleIdentifiersChangedForSettingsProvider:(id)a3;
@end

@implementation CCUIModuleSettingsManager

- (CCUIModuleSettingsManager)init
{
  v8.receiver = self;
  v8.super_class = CCUIModuleSettingsManager;
  v2 = [(CCUIModuleSettingsManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CFC868] sharedProvider];
    settingsProvider = v2->_settingsProvider;
    v2->_settingsProvider = v3;

    v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v5;

    [(CCUIModuleSettingsManager *)v2 _loadDefaultSettings];
    [(CCUIModuleSettingsManager *)v2 _loadMigrationSettings];
    [(CCSModuleSettingsProvider *)v2->_settingsProvider addObserver:v2];
  }

  return v2;
}

- (id)moduleSettingsForModuleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_migrationSettingsByModuleIdentifier objectForKey:v4];
  if (v5 || ([(NSDictionary *)self->_defaultSettingsByModuleIdentifier objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v8 = [CCUIModuleSettings alloc];
    v9 = SBHIconGridSizeClassForCCUIGridSizeClass();
    v6 = [(CCUIModuleSettings *)v8 initWithGridSizeClass:v9 containerBundleIdentifier:@"com.apple.springboard"];
  }

  return v6;
}

- (id)orderedEnabledModuleIdentifiersFromSettingsApp
{
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedFixedModuleIdentifiers];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  v6 = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedUserEnabledFixedModuleIdentifiers];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = [(CCSModuleSettingsProvider *)self->_settingsProvider orderedUserEnabledModuleIdentifiers];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (void)_runBlockOnListeners:(id)a3
{
  v4 = a3;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CCUIModuleSettingsManager__runBlockOnListeners___block_invoke;
  v8[3] = &unk_278382748;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)orderedEnabledModuleIdentifiersChangedForSettingsProvider:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__CCUIModuleSettingsManager_orderedEnabledModuleIdentifiersChangedForSettingsProvider___block_invoke;
  v3[3] = &unk_278382B90;
  v3[4] = self;
  [(CCUIModuleSettingsManager *)self _runBlockOnListeners:v3];
}

- (void)_loadDefaultSettings
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"DefaultModuleSettings" withExtension:@"plist"];

  v22 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          v14 = [v5 bs_safeObjectForKey:v13 ofType:objc_opt_class()];
          v15 = [MEMORY[0x277D661B0] controlCenterDomain];
          v16 = [v14 bs_safeObjectForKey:@"gridSize" ofType:objc_opt_class()];
          v17 = [v15 gridSizeClassForDescription:v16];

          v18 = [v14 bs_safeObjectForKey:@"containerBundleIdentifier" ofType:objc_opt_class()];
          v19 = [[CCUIModuleSettings alloc] initWithGridSizeClass:v17 containerBundleIdentifier:v18];
          [v24 setObject:v19 forKey:v13];
        }

        ++v8;
      }

      while (v7 != v8);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v20 = [v24 copy];
  defaultSettingsByModuleIdentifier = self->_defaultSettingsByModuleIdentifier;
  self->_defaultSettingsByModuleIdentifier = v20;
}

- (BOOL)_shouldSkipControlMigrationFor:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (!v5)
    {
      v8 = @"iPhone";
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      v8 = @"iPad";
LABEL_7:
      v9 = [v3 containsObject:v8];
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_loadMigrationSettings
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"ModuleParityControlMigrationList" withExtension:@"plist"];

  v5 = 0x277CBE000uLL;
  v26 = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v28 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = v11;
        if (v12)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          v33 = SBHIconGridSizeClassForCCUIGridSizeClass();
          v16 = [v7 bs_safeObjectForKey:v15 ofType:objc_opt_class()];
          v32 = [v16 bs_safeObjectForKey:@"extensionBundleIdentifier" ofType:objc_opt_class()];
          v31 = [v16 bs_safeObjectForKey:@"containerBundleIdentifier" ofType:objc_opt_class()];
          v30 = [v31 copy];
          v29 = [v16 bs_safeObjectForKey:@"kind" ofType:objc_opt_class()];
          v17 = [v16 bs_safeObjectForKey:@"controlType" ofType:objc_opt_class()];
          v18 = [v16 bs_safeObjectForKey:@"unavailablePlatform" ofType:objc_opt_class()];
          if (![(CCUIModuleSettingsManager *)self _shouldSkipControlMigrationFor:v18])
          {
            v19 = v9;
            v20 = v7;
            v21 = v5;
            v22 = self;
            v23 = [[CCUIModuleSettings alloc] initWithGridSizeClass:v33 moduleContainerBundleIdentifier:v30 controlExtensionIdentifier:v32 controlContainerBundleIdentifier:v31 controlKind:v29 controlType:v17];
            [v27 bs_setSafeObject:v23 forKey:v15];

            self = v22;
            v5 = v21;
            v7 = v20;
            v9 = v19;
          }
        }

        ++v10;
      }

      while (v9 != v10);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  v24 = [v27 copy];
  migrationSettingsByModuleIdentifier = self->_migrationSettingsByModuleIdentifier;
  self->_migrationSettingsByModuleIdentifier = v24;
}

@end