@interface CSLPRFStingSettingsModel
+ (BOOL)IsHermes;
+ (BOOL)activePairedWatchSupportsControls;
+ (BOOL)activePairedWatchSupportsMoonstoneActions;
+ (id)actionNameForActionType:(unint64_t)type;
+ (id)alternateActionNameForActionType:(unint64_t)type;
+ (id)sfSymbolAssetNameForActionType:(unint64_t)type;
- (BOOL)_lock_isLinkActionSupportedForIdentifier:(id)identifier;
- (CSLPRFStingSettingsModel)init;
- (id)_buildActionIdentifierToSupportedBundleIDsMap:(id)map;
- (id)_buildDefaultActionTypeItems;
- (id)_modelItemWithActionType:(unint64_t)type;
- (id)bundleIDsForActionType:(unint64_t)type;
- (id)controlItems;
- (id)defaultQuickActionItems;
- (id)quickActionItems;
- (id)shortcutItems;
- (id)startWorkoutsListForBundleID:(id)d;
- (void)_lock_rebuildModels;
- (void)_withLock:(id)lock;
- (void)rebuildModel;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation CSLPRFStingSettingsModel

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  v4 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22CE92000, v4, OS_LOG_TYPE_DEFAULT, "supported sting action settings changed (StingSystemSettings), rebuilding model", v5, 2u);
  }

  [(CSLPRFStingSettingsModel *)self rebuildModel];
}

- (void)_lock_rebuildModels
{
  read = [(CSLPRFStingSystemSettings *)self->_stingSystemSettings read];
  settingsData = self->_settingsData;
  self->_settingsData = read;

  actionsDictionary = [(CSLPRFStingSettingsModelData *)self->_settingsData actionsDictionary];
  v5 = [(CSLPRFStingSettingsModel *)self _buildActionIdentifierToSupportedBundleIDsMap:actionsDictionary];
  actionIdentifierToSupportedBundleIDsMap = self->_actionIdentifierToSupportedBundleIDsMap;
  self->_actionIdentifierToSupportedBundleIDsMap = v5;
}

- (void)rebuildModel
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__CSLPRFStingSettingsModel_rebuildModel__block_invoke;
  v4[3] = &unk_278745368;
  v4[4] = self;
  [(CSLPRFStingSettingsModel *)self _withLock:v4];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CSLPRFStingSettingsModelDidChangeNotification" object:self];
}

- (BOOL)_lock_isLinkActionSupportedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (CSLIdentifierToLinkActionType(identifierCopy) == 2)
  {
    shortcutsDictionary = [(CSLPRFStingSettingsModelData *)self->_settingsData shortcutsDictionary];
  }

  else if (CSLIdentifierToLinkActionType(identifierCopy) == 42)
  {
    shortcutsDictionary = [(CSLPRFStingSettingsModelData *)self->_settingsData controlsDictionary];
  }

  else
  {
    if (CSLIdentifierToLinkActionType(identifierCopy) == 38)
    {
      [(CSLPRFStingSettingsModelData *)self->_settingsData accessibilityShortcutsArray];
    }

    else
    {
      [(NSDictionary *)self->_actionIdentifierToSupportedBundleIDsMap objectForKeyedSubscript:identifierCopy];
    }
    shortcutsDictionary = ;
  }

  v6 = shortcutsDictionary;
  v7 = [shortcutsDictionary count];

  return v7 != 0;
}

- (id)_modelItemWithActionType:(unint64_t)type
{
  v4 = [CSLPRFStingSettingsModel actionNameForActionType:?];
  v5 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:type];
  if (type - 1 > 0x29)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278744510[type - 1];
  }

  v7 = v6;
  v8 = [CSLPRFStingSettingsItem alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10 = [(CSLPRFStingSettingsItem *)v8 initWithIdentifier:v7 title:v4 actionType:v9 assetName:v5];

  return v10;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_buildActionIdentifierToSupportedBundleIDsMap:(id)map
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  mapCopy = map;
  v5 = objc_alloc_init(v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__CSLPRFStingSettingsModel__buildActionIdentifierToSupportedBundleIDsMap___block_invoke;
  v10[3] = &unk_2787449B0;
  v6 = v5;
  v11 = v6;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v10];

  v7 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, "build sting action identifier map complete %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

void __74__CSLPRFStingSettingsModel__buildActionIdentifierToSupportedBundleIDsMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138412290;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 startActionIdentifier];

        if (v13)
        {
          v14 = *(a1 + 32);
          v15 = [v12 startActionIdentifier];
          v16 = [v14 objectForKeyedSubscript:v15];

          if ([v16 count])
          {
            v17 = [v16 mutableCopy];
            [v17 addObject:v5];
          }

          else
          {
            v28 = v5;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          }

          v18 = *(a1 + 32);
          v19 = [v12 startActionIdentifier];
          [v18 setObject:v17 forKeyedSubscript:v19];
        }

        else
        {
          v16 = cslprf_sting_settings_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v27 = v12;
            _os_log_error_impl(&dword_22CE92000, v16, OS_LOG_TYPE_ERROR, "model action requires a start action identifier, skipping %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_buildDefaultActionTypeItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = +[CSLPRFStingSettingsModel activePairedWatchSupportsMoonstoneActions];
  v5 = +[CSLPRFStingSettingsModel activePairedWatchSupportsControls];
  if (+[CSLPRFStingSettingsModel IsHermes])
  {
    v6 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:34];
    [v3 setObject:v6 atIndexedSubscript:0];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:6];
  [v3 setObject:v8 atIndexedSubscript:v7];

  v9 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:4];
  [v3 setObject:v9 atIndexedSubscript:v7 + 1];

  v10 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:5];
  [v3 setObject:v10 atIndexedSubscript:v7 | 2];

  v11 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:12];
  [v3 setObject:v11 atIndexedSubscript:v7 + 3];

  v12 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:20];
  [v3 setObject:v12 atIndexedSubscript:v7 | 4];

  v13 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:1];
  v14 = v7 | 6;
  [v3 setObject:v13 atIndexedSubscript:v7 + 5];

  if (v5)
  {
    v15 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:42];
    [v3 setObject:v15 atIndexedSubscript:v7 | 6];

    v14 = v7 + 7;
  }

  v16 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:2];
  [v3 setObject:v16 atIndexedSubscript:v14];

  if (v4)
  {
    v17 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:25];
    [v3 setObject:v17 atIndexedSubscript:v14 + 1];

    v18 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:29];
    [v3 setObject:v18 atIndexedSubscript:v14 + 2];

    v19 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:38];
    [v3 setObject:v19 atIndexedSubscript:v14 + 3];

    v20 = [(CSLPRFStingSettingsModel *)self _modelItemWithActionType:40];
    [v3 setObject:v20 atIndexedSubscript:v14 + 4];
  }

  v21 = [v3 copy];

  return v21;
}

- (id)quickActionItems
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2061;
  v15 = __Block_byref_object_dispose__2062;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__CSLPRFStingSettingsModel_quickActionItems__block_invoke;
  v8[3] = &unk_278744960;
  objc_copyWeak(&v9, &location);
  v8[4] = &v11;
  [(CSLPRFStingSettingsModel *)self _withLock:v8];
  v3 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v12[5];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_22CE92000, v3, OS_LOG_TYPE_INFO, "%{public}@: quickActionItems %@", buf, 0x16u);
  }

  v5 = [v12[5] copy];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v11, 8);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __44__CSLPRFStingSettingsModel_quickActionItems__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained defaultActionTypeItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [WeakRetained _lock_isLinkActionSupportedForIdentifier:v9];

        if (v10)
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)controlItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2061;
  v12 = __Block_byref_object_dispose__2062;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__CSLPRFStingSettingsModel_controlItems__block_invoke;
  v5[3] = &unk_278744960;
  objc_copyWeak(&v6, &location);
  v5[4] = &v8;
  [(CSLPRFStingSettingsModel *)self _withLock:v5];
  v3 = [v9[5] copy];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __40__CSLPRFStingSettingsModel_controlItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained settingsData];
  v4 = [v3 controlsDictionary];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__CSLPRFStingSettingsModel_controlItems__block_invoke_2;
  v5[3] = &unk_278744D70;
  v5[4] = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __40__CSLPRFStingSettingsModel_controlItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6 copyItems:1];

  [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v7];
}

- (id)shortcutItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2061;
  v12 = __Block_byref_object_dispose__2062;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CSLPRFStingSettingsModel_shortcutItems__block_invoke;
  v5[3] = &unk_278744960;
  objc_copyWeak(&v6, &location);
  v5[4] = &v8;
  [(CSLPRFStingSettingsModel *)self _withLock:v5];
  v3 = [v9[5] copy];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __41__CSLPRFStingSettingsModel_shortcutItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained settingsData];
  v4 = [v3 shortcutsDictionary];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CSLPRFStingSettingsModel_shortcutItems__block_invoke_2;
  v5[3] = &unk_278744D70;
  v5[4] = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __41__CSLPRFStingSettingsModel_shortcutItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6 copyItems:1];

  [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v7];
}

- (id)startWorkoutsListForBundleID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2061;
  v16 = __Block_byref_object_dispose__2062;
  v17 = 0;
  objc_initWeak(&location, self);
  if (dCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__CSLPRFStingSettingsModel_startWorkoutsListForBundleID___block_invoke;
    v7[3] = &unk_278744988;
    objc_copyWeak(&v10, &location);
    v8 = dCopy;
    v9 = &v12;
    [(CSLPRFStingSettingsModel *)self _withLock:v7];

    objc_destroyWeak(&v10);
  }

  v5 = v13[5];
  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);

  return v5;
}

void __57__CSLPRFStingSettingsModel_startWorkoutsListForBundleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained settingsData];
  v3 = [v2 startWorkoutsDictionary];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)defaultQuickActionItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2061;
  v12 = __Block_byref_object_dispose__2062;
  v13 = 0;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__CSLPRFStingSettingsModel_defaultQuickActionItems__block_invoke;
  v5[3] = &unk_278744960;
  objc_copyWeak(&v6, &location);
  v5[4] = &v8;
  [(CSLPRFStingSettingsModel *)self _withLock:v5];
  v3 = v9[5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __51__CSLPRFStingSettingsModel_defaultQuickActionItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained defaultActionTypeItems];
  v3 = [v2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)bundleIDsForActionType:(unint64_t)type
{
  if (type - 1 > 0x29)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278744510[type - 1];
  }

  v5 = v4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2061;
  v18 = __Block_byref_object_dispose__2062;
  v19 = 0;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__CSLPRFStingSettingsModel_bundleIDsForActionType___block_invoke;
  v9[3] = &unk_278744988;
  objc_copyWeak(&v12, &location);
  v11 = &v14;
  v6 = v5;
  v10 = v6;
  [(CSLPRFStingSettingsModel *)self _withLock:v9];
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __51__CSLPRFStingSettingsModel_bundleIDsForActionType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained actionIdentifierToSupportedBundleIDsMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (CSLPRFStingSettingsModel)init
{
  v9.receiver = self;
  v9.super_class = CSLPRFStingSettingsModel;
  v2 = [(CSLPRFStingSettingsModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(CSLPRFStingSystemSettings);
    stingSystemSettings = v3->_stingSystemSettings;
    v3->_stingSystemSettings = v4;

    [(CSLPRFStingSystemSettings *)v3->_stingSystemSettings setDelegate:v3];
    _buildDefaultActionTypeItems = [(CSLPRFStingSettingsModel *)v3 _buildDefaultActionTypeItems];
    defaultActionTypeItems = v3->_defaultActionTypeItems;
    v3->_defaultActionTypeItems = _buildDefaultActionTypeItems;

    [(CSLPRFStingSettingsModel *)v3 rebuildModel];
  }

  return v3;
}

+ (id)alternateActionNameForActionType:(unint64_t)type
{
  v3 = 0;
  if (type <= 13)
  {
    if (type <= 11)
    {
      if (type == 7)
      {
        v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
        v5 = v4;
        v6 = @"STING_ACTION_ALTERNATE_HINT_WORKOUT_PAUSE";
      }

      else
      {
        if (type != 8)
        {
          goto LABEL_19;
        }

        v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
        v5 = v4;
        v6 = @"STING_ACTION_ALTERNATE_HINT_WORKOUT_RESUME";
      }

      goto LABEL_17;
    }

    if (type != 12)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_ALTERNATE_HINT_BACKTRACK_RETRACE";
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (type <= 15)
  {
    if (type != 14)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_ALTERNATE_HINT_STOPWATCH_STOP";
LABEL_17:
      v7 = @"LocalizableSettings-N199";
      goto LABEL_18;
    }

LABEL_14:
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
    v5 = v4;
    v6 = @"STING_ACTION_ALTERNATE_HINT_BACKTRACK_RECORD";
    goto LABEL_17;
  }

  if (type == 16)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
    v5 = v4;
    v6 = @"STING_ACTION_ALTERNATE_HINT_STOPWATCH_START";
    goto LABEL_17;
  }

  if (type != 30)
  {
    goto LABEL_19;
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
  v5 = v4;
  v6 = @"STING_ACTION_ALTERNATE_HINT_TRANSLATION_STOP";
  v7 = @"LocalizableSettings-Translate";
LABEL_18:
  v3 = [v4 localizedStringForKey:v6 value:&stru_28401BD18 table:v7];

LABEL_19:

  return v3;
}

+ (id)actionNameForActionType:(unint64_t)type
{
  v3 = 0;
  switch(type)
  {
    case 1uLL:
    case 0x13uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_LAUNCH_FLASHLIGHT";
      goto LABEL_15;
    case 2uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_SHORTCUT";
      goto LABEL_15;
    case 4uLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_STOPWATCH";
      goto LABEL_15;
    case 5uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_WAYPOINT";
      goto LABEL_15;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0x17uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_WORKOUT";
      goto LABEL_15;
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_BACKTRACK";
      goto LABEL_15;
    case 0x14uLL:
    case 0x18uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_DIVE";
      goto LABEL_15;
    case 0x19uLL:
    case 0x1AuLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_VOICE_MEMO";
      goto LABEL_15;
    case 0x1DuLL:
    case 0x1EuLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_TRANSLATION";
      v7 = @"LocalizableSettings-Translate";
      goto LABEL_16;
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_REGATTA";
      v7 = @"LocalizableSettings-Squall";
      goto LABEL_16;
    case 0x26uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_ACCESSIBILITY";
      goto LABEL_15;
    case 0x28uLL:
    case 0x29uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_RECOGNIZE_MUSIC";
      goto LABEL_15;
    case 0x2AuLL:
      v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarouselPreferenceServices"];
      v5 = v4;
      v6 = @"STING_ACTION_TYPE_CONTROLS";
LABEL_15:
      v7 = @"LocalizableSettings-N199";
LABEL_16:
      v3 = [v4 localizedStringForKey:v6 value:&stru_28401BD18 table:v7];

      break;
    default:
      break;
  }

  return v3;
}

+ (id)sfSymbolAssetNameForActionType:(unint64_t)type
{
  v4 = type - 12;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (v4 > 2)
  {
    if (type > 0x2B)
    {
      v9 = @"figure.run";
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"622B6312-95FA-4F09-9148-69E286A9C31F"];
  v8 = [getActivePairedDevice supportsCapability:v7];

  if (v8)
  {
LABEL_5:
    v9 = off_2787449D0[type];
    goto LABEL_7;
  }

  v9 = @"shoeprints.fill";
LABEL_7:

  return v9;
}

+ (BOOL)activePairedWatchSupportsControls
{
  if (activePairedWatchSupportsControls_onceToken != -1)
  {
    dispatch_once(&activePairedWatchSupportsControls_onceToken, &__block_literal_global_8_2180);
  }

  return activePairedWatchSupportsControls___supportsControls;
}

BOOL __61__CSLPRFStingSettingsModel_activePairedWatchSupportsControls__block_invoke()
{
  activePairedWatchSupportsControls___supportsControls = 0;
  result = +[CSLPRFDeviceUtilities activePairedWatchSupportsControls];
  activePairedWatchSupportsControls___supportsControls = result;
  return result;
}

+ (BOOL)activePairedWatchSupportsMoonstoneActions
{
  if (activePairedWatchSupportsMoonstoneActions_onceToken != -1)
  {
    dispatch_once(&activePairedWatchSupportsMoonstoneActions_onceToken, &__block_literal_global_6);
  }

  return activePairedWatchSupportsMoonstoneActions___supportsNewActions;
}

BOOL __69__CSLPRFStingSettingsModel_activePairedWatchSupportsMoonstoneActions__block_invoke()
{
  activePairedWatchSupportsMoonstoneActions___supportsNewActions = 0;
  result = +[CSLPRFDeviceUtilities activePairedWatchSupportsMoonstoneActions];
  activePairedWatchSupportsMoonstoneActions___supportsNewActions = result;
  return result;
}

+ (BOOL)IsHermes
{
  if (IsHermes_onceToken != -1)
  {
    dispatch_once(&IsHermes_onceToken, &__block_literal_global_2183);
  }

  return IsHermes___isHermes;
}

BOOL __36__CSLPRFStingSettingsModel_IsHermes__block_invoke()
{
  IsHermes___isHermes = 0;
  result = +[CSLPRFDeviceUtilities isHermes];
  IsHermes___isHermes = result;
  return result;
}

@end