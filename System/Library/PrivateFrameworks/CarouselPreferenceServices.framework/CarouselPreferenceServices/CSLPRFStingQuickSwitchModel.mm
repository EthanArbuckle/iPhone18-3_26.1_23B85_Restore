@interface CSLPRFStingQuickSwitchModel
- (BOOL)isQuickSwitchEnabled;
- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)a3;
- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)a3 settingsModel:(id)a4;
- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)a3 settingsModel:(id)a4 settings:(id)a5;
- (CSLPRFStingQuickSwitchModelDelegate)delegate;
- (NSArray)availableQuickSwitchActions;
- (id)existingItemForActionType:(unint64_t)a3;
- (void)lock_restoreFromSettings;
- (void)quickSwitchItemDidChange:(id)a3;
- (void)restoreFromSettings;
- (void)twoWaySyncSettingDidUpdate:(id)a3;
@end

@implementation CSLPRFStingQuickSwitchModel

- (CSLPRFStingQuickSwitchModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)twoWaySyncSettingDidUpdate:(id)a3
{
  [(CSLPRFStingQuickSwitchModel *)self restoreFromSettings];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained quickSwitchModelDidChange:self];
}

- (void)quickSwitchItemDidChange:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = obj->_allQuickSwitchItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 actionType];
        if (v11 == [v4 actionType])
        {
          [v10 setAvailableForQuickSwitch:{objc_msgSend(v4, "isAvailableForQuickSwitch")}];
        }

        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isAvailableForQuickSwitch")}];
        v13 = [v10 settingsItem];
        v14 = [v13 identifier];
        [v5 setObject:v12 forKeyedSubscript:v14];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  quickSwitchSettings = obj->_quickSwitchSettings;
  v16 = [v5 copy];
  [(CSLPRFStingQuickSwitchSettings *)quickSwitchSettings setQuickSwitchActionAvailability:v16];

  objc_sync_exit(obj);
  WeakRetained = objc_loadWeakRetained(&obj->_delegate);
  [WeakRetained quickSwitchModelDidChange:obj];

  v18 = *MEMORY[0x277D85DE8];
}

- (NSArray)availableQuickSwitchActions
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2->_allQuickSwitchItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isAvailableForQuickSwitch])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];
  objc_sync_exit(v2);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)existingItemForActionType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4->_allQuickSwitchItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 actionType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  objc_sync_exit(v4);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isQuickSwitchEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CSLPRFStingQuickSwitchSettings *)v2->_quickSwitchSettings isQuickSwitchEnabled];
  objc_sync_exit(v2);

  return v3;
}

- (void)lock_restoreFromSettings
{
  v38 = *MEMORY[0x277D85DE8];
  self->_quickSwitchEnabled = [(CSLPRFStingQuickSwitchSettings *)self->_quickSwitchSettings isQuickSwitchEnabled];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(CSLPRFStingSettingsModel *)self->_stingModel quickActionItems];
  v26 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v5 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSLPRFStingSettingsModel *)self->_stingModel quickActionItems];
    v7 = [(CSLPRFStingSettingsModel *)self->_stingModel defaultQuickActionItems];
    *buf = 138412802;
    v33 = self;
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEFAULT, "%@: _settingsModel.quickActionItems %@ _settingsModel.defaultQuickActionItems %@", buf, 0x20u);
  }

  v8 = [(CSLPRFStingQuickSwitchSettings *)self->_quickSwitchSettings quickSwitchActionAvailability];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(CSLPRFStingSettingsModel *)self->_stingModel quickActionItems];
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 linkActionType];
        if ((v14 - 1) > 0x29)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_278744510[v14 - 1];
        }

        v16 = v15;
        v17 = [v8 objectForKeyedSubscript:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 BOOLValue];
        }

        else
        {
          v19 = 1;
        }

        v20 = -[CSLPRFStingQuickSwitchModel existingItemForActionType:](self, "existingItemForActionType:", [v13 linkActionType]);
        if (v20)
        {
          v21 = v20;
          [(CSLPRFStingQuickSwitchItem *)v20 setAvailableForQuickSwitch:v19];
        }

        else
        {
          v21 = [[CSLPRFStingQuickSwitchItem alloc] initWithDelegate:self settingsItem:v13 availability:v19];
        }

        [(NSArray *)v26 addObject:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v22 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = self;
    v34 = 2112;
    v35 = v26;
    _os_log_impl(&dword_22CE92000, v22, OS_LOG_TYPE_DEFAULT, "%@: allQuickSwitchItems %@", buf, 0x16u);
  }

  allQuickSwitchItems = self->_allQuickSwitchItems;
  self->_allQuickSwitchItems = v26;

  v24 = *MEMORY[0x277D85DE8];
}

- (void)restoreFromSettings
{
  obj = self;
  objc_sync_enter(obj);
  [(CSLPRFStingQuickSwitchModel *)obj lock_restoreFromSettings];
  objc_sync_exit(obj);
}

- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)a3 settingsModel:(id)a4 settings:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CSLPRFStingQuickSwitchModel;
  v11 = [(CSLPRFStingQuickSwitchModel *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_stingModel, a4);
    objc_storeStrong(&v12->_quickSwitchSettings, a5);
    [(CSLPRFTwoWaySyncSetting *)v12->_quickSwitchSettings setDelegate:v12];
    v13 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      stingModel = v12->_stingModel;
      *buf = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = stingModel;
      _os_log_debug_impl(&dword_22CE92000, v13, OS_LOG_TYPE_DEBUG, "%@: _settingsModel %@", buf, 0x16u);
    }

    [(CSLPRFStingQuickSwitchModel *)v12 restoreFromSettings];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)a3 settingsModel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CSLPRFStingQuickSwitchSettings fetchQuickSwitchSettings];
  v9 = [(CSLPRFStingQuickSwitchModel *)self initWithDelegate:v7 settingsModel:v6 settings:v8];

  return v9;
}

- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(CSLPRFStingConfiguration);
  v6 = objc_alloc_init(CSLPRFStingSettingsModel);
  v7 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, "%@:configuration %@ settingsModel %@", &v11, 0x20u);
  }

  v8 = [(CSLPRFStingQuickSwitchModel *)self initWithDelegate:v4 settingsModel:v6];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end