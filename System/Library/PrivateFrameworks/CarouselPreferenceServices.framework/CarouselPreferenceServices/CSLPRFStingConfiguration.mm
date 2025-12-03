@interface CSLPRFStingConfiguration
- (CSLPRFStingConfiguration)initWithDelegate:(id)delegate;
- (CSLPRFStingConfigurationDelegate)delegate;
- (INIntent)controlConfigurationIntent;
- (NSString)bundleID;
- (NSString)description;
- (NSString)workoutIdentifier;
- (id)_lock_settingsDictionary;
- (int64_t)source;
- (unint64_t)actionType;
- (void)_locked_setConfigurationForBundleID:(id)d actionType:(unint64_t)type identifier:(id)identifier intent:(id)intent source:(int64_t)source;
- (void)_withLock:(id)lock;
- (void)depthAutoLaunchAppSettingDidUpdate:(id)update;
- (void)reset;
- (void)setActionType:(unint64_t)type;
- (void)setBundleID:(id)d;
- (void)setConfigurationForBundleID:(id)d actionType:(unint64_t)type identifier:(id)identifier source:(int64_t)source;
- (void)setControlConfigurationForBundleID:(id)d identifier:(id)identifier intent:(id)intent source:(int64_t)source;
- (void)setExpectedConfigurationForAction:(unint64_t)action source:(int64_t)source;
- (void)setSource:(int64_t)source;
- (void)setWorkoutIdentifier:(id)identifier;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation CSLPRFStingConfiguration

- (CSLPRFStingConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bundleID = [(CSLPRFStingConfiguration *)self bundleID];
  [v3 appendString:bundleID withName:@"bundleID" skipIfEmpty:1];

  actionType = [(CSLPRFStingConfiguration *)self actionType];
  if (actionType - 1 > 0x29)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278744510[actionType - 1];
  }

  v7 = v6;
  [v3 appendString:v7 withName:@"actionType"];

  workoutIdentifier = [(CSLPRFStingConfiguration *)self workoutIdentifier];
  [v3 appendString:workoutIdentifier withName:@"workoutIdentifier" skipIfEmpty:1];

  source = [(CSLPRFStingConfiguration *)self source];
  if ((source - 1) > 5)
  {
    v10 = @"setup";
  }

  else
  {
    v10 = off_278745030[source - 1];
  }

  v11 = v10;
  [v3 appendString:v11 withName:@"source"];

  controlConfigurationIntent = [(CSLPRFStingConfiguration *)self controlConfigurationIntent];
  v13 = [v3 appendObject:controlConfigurationIntent withName:@"controlConfigurationIntent" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (id)_lock_settingsDictionary
{
  value = [(CSLPRFTwoWaySyncSetting *)self->_stingConfigurationSetting value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = value;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v4 = v3;

  return v4;
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__CSLPRFStingConfiguration_reset__block_invoke;
  v5[3] = &unk_278745368;
  v5[4] = self;
  [(CSLPRFStingConfiguration *)self _withLock:v5];
  v3 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v7 = "[CSLPRFStingConfiguration reset]";
    v8 = 2113;
    selfCopy = self;
    _os_log_impl(&dword_22CE92000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s reset stingConfigurationSetting to %{private}@", buf, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __33__CSLPRFStingConfiguration_reset__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionary];
  [*(*(a1 + 32) + 16) setValue:v2];
}

- (void)setSource:(int64_t)source
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__CSLPRFStingConfiguration_setSource___block_invoke;
  v3[3] = &unk_278744F98;
  v3[4] = self;
  v3[5] = source;
  [(CSLPRFStingConfiguration *)self _withLock:v3];
}

void __38__CSLPRFStingConfiguration_setSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _lock_settingsDictionary];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v3 setObject:v4 forKeyedSubscript:@"source"];

  v5 = [v3 copy];
  [*(*(a1 + 32) + 16) setValue:v5];

  v6 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 16);
    v9 = 136446467;
    v10 = "[CSLPRFStingConfiguration setSource:]_block_invoke";
    v11 = 2113;
    v12 = v7;
    _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s set stingConfigurationSetting to %{private}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)source
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__CSLPRFStingConfiguration_source__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFStingConfiguration *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CSLPRFStingConfiguration_source__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _lock_settingsDictionary];
  v2 = [v3 objectForKeyedSubscript:@"source"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
  }
}

- (void)setWorkoutIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CSLPRFStingConfiguration_setWorkoutIdentifier___block_invoke;
  v6[3] = &unk_2787455E0;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(CSLPRFStingConfiguration *)self _withLock:v6];
}

void __49__CSLPRFStingConfiguration_setWorkoutIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _lock_settingsDictionary];
  v3 = [v2 mutableCopy];

  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"workoutIdentifier"];
  v4 = [v3 copy];
  [*(*(a1 + 32) + 16) setValue:v4];

  v5 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136446467;
    v9 = "[CSLPRFStingConfiguration setWorkoutIdentifier:]_block_invoke";
    v10 = 2113;
    v11 = v6;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s set stingConfigurationSetting to %{private}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (INIntent)controlConfigurationIntent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4003;
  v9 = __Block_byref_object_dispose__4004;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__CSLPRFStingConfiguration_controlConfigurationIntent__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFStingConfiguration *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__CSLPRFStingConfiguration_controlConfigurationIntent__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _lock_settingsDictionary];
  v2 = [v8 bs_safeObjectForKey:@"intent" ofType:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v2 error:0];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [v3 decodeObjectOfClasses:v4 forKey:*MEMORY[0x277CCA308]];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSString)workoutIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4003;
  v9 = __Block_byref_object_dispose__4004;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CSLPRFStingConfiguration_workoutIdentifier__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFStingConfiguration *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __45__CSLPRFStingConfiguration_workoutIdentifier__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _lock_settingsDictionary];
  v2 = [v3 objectForKeyedSubscript:@"workoutIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  }
}

- (void)_locked_setConfigurationForBundleID:(id)d actionType:(unint64_t)type identifier:(id)identifier intent:(id)intent source:(int64_t)source
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  intentCopy = intent;
  _lock_settingsDictionary = [(CSLPRFStingConfiguration *)self _lock_settingsDictionary];
  v16 = [_lock_settingsDictionary mutableCopy];
  v17 = v16;
  if (type == 24 || type == 20)
  {
    depthSetting = self->_depthSetting;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __100__CSLPRFStingConfiguration__locked_setConfigurationForBundleID_actionType_identifier_intent_source___block_invoke;
    v29[3] = &unk_278744FC0;
    v30 = dCopy;
    [(CSLPRFDepthAutoLaunchAppSetting *)depthSetting updateSettingsWithBlock:v29];

    v19 = type - 1;
LABEL_4:
    v20 = off_278744510[v19];
    goto LABEL_5;
  }

  [v16 setObject:dCopy forKeyedSubscript:@"bundleID"];
  v19 = type - 1;
  if (type - 1 <= 0x29)
  {
    goto LABEL_4;
  }

  v20 = 0;
LABEL_5:
  v21 = v20;
  [v17 setObject:v21 forKeyedSubscript:@"action"];

  [v17 setObject:identifierCopy forKeyedSubscript:@"workoutIdentifier"];
  if (intentCopy)
  {
    v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:intentCopy requiringSecureCoding:1 error:0];
    [v17 setObject:v22 forKeyedSubscript:@"intent"];
  }

  else
  {
    [v17 setObject:0 forKeyedSubscript:@"intent"];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [v17 setObject:v23 forKeyedSubscript:@"source"];

  if ([v17 isEqual:_lock_settingsDictionary])
  {
    v24 = cslprf_sting_settings_log();
    if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22CE92000, &v24->super, OS_LOG_TYPE_INFO, "setConfigurationForBundleID: stingConfigurationSetting did not change", buf, 2u);
    }
  }

  else
  {
    v25 = [v17 copy];
    [(CSLPRFTwoWaySyncSetting *)self->_stingConfigurationSetting setValue:v25];

    v26 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      stingConfigurationSetting = self->_stingConfigurationSetting;
      *buf = 138477827;
      v32 = stingConfigurationSetting;
      _os_log_impl(&dword_22CE92000, v26, OS_LOG_TYPE_DEFAULT, "setConfigurationForBundleID: set stingConfigurationSetting to %{private}@", buf, 0xCu);
    }

    v24 = [[CSLPRFStingConfigurationHistoryItem alloc] initWithBundleID:dCopy actionType:type identifier:identifierCopy];
    [(CSLPRFStingConfigurationHistory *)self->_configurationHistory addHistoryItem:v24];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __100__CSLPRFStingConfiguration__locked_setConfigurationForBundleID_actionType_identifier_intent_source___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setBundleID:v2];
  [v3 setChangeSource:2];
}

- (void)setControlConfigurationForBundleID:(id)d identifier:(id)identifier intent:(id)intent source:(int64_t)source
{
  dCopy = d;
  identifierCopy = identifier;
  intentCopy = intent;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__CSLPRFStingConfiguration_setControlConfigurationForBundleID_identifier_intent_source___block_invoke;
  v16[3] = &unk_278745010;
  v16[4] = self;
  v17 = dCopy;
  v18 = identifierCopy;
  v19 = intentCopy;
  sourceCopy = source;
  v13 = intentCopy;
  v14 = identifierCopy;
  v15 = dCopy;
  [(CSLPRFStingConfiguration *)self _withLock:v16];
}

- (void)setConfigurationForBundleID:(id)d actionType:(unint64_t)type identifier:(id)identifier source:(int64_t)source
{
  dCopy = d;
  identifierCopy = identifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__CSLPRFStingConfiguration_setConfigurationForBundleID_actionType_identifier_source___block_invoke;
  v14[3] = &unk_278744FE8;
  v14[4] = self;
  v15 = dCopy;
  v16 = identifierCopy;
  typeCopy = type;
  sourceCopy = source;
  v12 = identifierCopy;
  v13 = dCopy;
  [(CSLPRFStingConfiguration *)self _withLock:v14];
}

- (void)setExpectedConfigurationForAction:(unint64_t)action source:(int64_t)source
{
  v9 = [(CSLPRFStingConfigurationHistory *)self->_configurationHistory itemForActionType:action];
  bundleID = [v9 bundleID];
  linkActionType = [v9 linkActionType];
  identifier = [v9 identifier];
  [(CSLPRFStingConfiguration *)self setConfigurationForBundleID:bundleID actionType:linkActionType identifier:identifier source:source];
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  if ([(CSLPRFStingConfiguration *)self actionType]== 20 || [(CSLPRFStingConfiguration *)self actionType]== 24)
  {
    depthSetting = self->_depthSetting;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__CSLPRFStingConfiguration_setBundleID___block_invoke;
    v11[3] = &unk_278744FC0;
    v12 = dCopy;
    v6 = dCopy;
    [(CSLPRFDepthAutoLaunchAppSetting *)depthSetting updateSettingsWithBlock:v11];
    v7 = v12;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__CSLPRFStingConfiguration_setBundleID___block_invoke_2;
    v9[3] = &unk_2787455E0;
    v9[4] = self;
    v10 = dCopy;
    v8 = dCopy;
    [(CSLPRFStingConfiguration *)self _withLock:v9];
    v7 = v10;
  }
}

void __40__CSLPRFStingConfiguration_setBundleID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setBundleID:v2];
  [v3 setChangeSource:2];
}

void __40__CSLPRFStingConfiguration_setBundleID___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _lock_settingsDictionary];
  v3 = [v2 mutableCopy];

  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"bundleID"];
  v4 = [v3 copy];
  [*(*(a1 + 32) + 16) setValue:v4];

  v5 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 16);
    v8 = 136446467;
    v9 = "[CSLPRFStingConfiguration setBundleID:]_block_invoke_2";
    v10 = 2113;
    v11 = v6;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s set stingConfigurationSetting to %{private}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)bundleID
{
  if ([(CSLPRFStingConfiguration *)self actionType]== 20 || [(CSLPRFStingConfiguration *)self actionType]== 24)
  {
    settings = [(CSLPRFDepthAutoLaunchAppSetting *)self->_depthSetting settings];
    bundleID = [settings bundleID];
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__4003;
    v11 = __Block_byref_object_dispose__4004;
    v12 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__CSLPRFStingConfiguration_bundleID__block_invoke;
    v6[3] = &unk_278745590;
    v6[4] = self;
    v6[5] = &v7;
    [(CSLPRFStingConfiguration *)self _withLock:v6];
    bundleID = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return bundleID;
}

void __36__CSLPRFStingConfiguration_bundleID__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _lock_settingsDictionary];
  v2 = [v3 objectForKeyedSubscript:@"bundleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  }
}

- (void)setActionType:(unint64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__CSLPRFStingConfiguration_setActionType___block_invoke;
  v3[3] = &unk_278744F98;
  v3[4] = self;
  v3[5] = type;
  [(CSLPRFStingConfiguration *)self _withLock:v3];
}

void __42__CSLPRFStingConfiguration_setActionType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _lock_settingsDictionary];
  v3 = [v2 mutableCopy];

  v4 = *(a1 + 40) - 1;
  if (v4 > 0x29)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278744510[v4];
  }

  v6 = v5;
  [v3 setObject:v6 forKeyedSubscript:@"action"];

  v7 = [v3 copy];
  [*(*(a1 + 32) + 16) setValue:v7];

  v8 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 16);
    v11 = 136446467;
    v12 = "[CSLPRFStingConfiguration setActionType:]_block_invoke";
    v13 = 2113;
    v14 = v9;
    _os_log_impl(&dword_22CE92000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s set stingConfigurationSetting to %{private}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)actionType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__CSLPRFStingConfiguration_actionType__block_invoke;
  v4[3] = &unk_278745590;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLPRFStingConfiguration *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __38__CSLPRFStingConfiguration_actionType__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _lock_settingsDictionary];
  v2 = [v3 objectForKeyedSubscript:@"action"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = CSLIdentifierToLinkActionType(v2);
  }
}

- (void)depthAutoLaunchAppSettingDidUpdate:(id)update
{
  updateCopy = update;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CSLPRFStingConfiguration_depthAutoLaunchAppSettingDidUpdate___block_invoke;
  block[3] = &unk_278744F70;
  objc_copyWeak(&v8, &location);
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__CSLPRFStingConfiguration_depthAutoLaunchAppSettingDidUpdate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  [v3 stingConfigurationDidUpdate:WeakRetained];

  v4 = cslprf_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[CSLPRFStingConfiguration depthAutoLaunchAppSettingDidUpdate:]_block_invoke";
    v9 = 2112;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22CE92000, v4, OS_LOG_TYPE_INFO, "%s: %@ setting did update %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  updateCopy = update;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSLPRFStingConfiguration_twoWaySyncSettingDidUpdate___block_invoke;
  block[3] = &unk_278744F70;
  objc_copyWeak(&v8, &location);
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__CSLPRFStingConfiguration_twoWaySyncSettingDidUpdate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  [v3 stingConfigurationDidUpdate:WeakRetained];

  v4 = cslprf_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[CSLPRFStingConfiguration twoWaySyncSettingDidUpdate:]_block_invoke";
    v9 = 2112;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_22CE92000, v4, OS_LOG_TYPE_INFO, "%s: %@ setting did update %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (CSLPRFStingConfiguration)initWithDelegate:(id)delegate
{
  v22 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = CSLPRFStingConfiguration;
  v5 = [(CSLPRFStingConfiguration *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [[CSLPRFTwoWaySyncSetting alloc] initWithKey:@"StingSettingsConfiguration" defaultValue:0 notification:"CSLPRFStingConfigurationChangedNotification"];
    stingConfigurationSetting = v6->_stingConfigurationSetting;
    v6->_stingConfigurationSetting = v7;

    v9 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = v6->_stingConfigurationSetting;
      *buf = 138543619;
      v19 = v6;
      v20 = 2113;
      v21 = v16;
      _os_log_debug_impl(&dword_22CE92000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ initialValue %{private}@", buf, 0x16u);
    }

    v10 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSetting);
    depthSetting = v6->_depthSetting;
    v6->_depthSetting = v10;

    [(CSLPRFDepthAutoLaunchAppSetting *)v6->_depthSetting setDelegate:v6];
    v12 = objc_alloc_init(CSLPRFStingConfigurationHistory);
    configurationHistory = v6->_configurationHistory;
    v6->_configurationHistory = v12;

    [(CSLPRFTwoWaySyncSetting *)v6->_stingConfigurationSetting setDelegate:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

@end