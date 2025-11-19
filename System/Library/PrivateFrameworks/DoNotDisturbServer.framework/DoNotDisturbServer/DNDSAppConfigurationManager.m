@interface DNDSAppConfigurationManager
- (DNDSAppConfigurationManager)initWithAppSpecificSettingsManager:(id)a3;
- (id)appActionsForModeIdentifier:(id)a3 error:(id *)a4;
- (id)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5;
- (id)clearSystemActionWithIdentifier:(id)a3 modeIdentifier:(id)a4;
- (id)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5;
- (id)setPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6;
- (id)setSystemAction:(id)a3 modeIdentifier:(id)a4;
- (id)setTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6;
- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4;
- (id)systemActionForActionIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (id)systemActionsForModeIdentifier:(id)a3 error:(id *)a4;
- (id)targetContentIdentifierPrefixesForModeIdentifier:(id)a3 error:(id *)a4;
- (id)updateSystemActionWithReverseAction:(id)a3 actionIdentifier:(id)a4 modeIdentifier:(id)a5;
- (void)appSpecificSettingsManager:(id)a3 receivedSyncedAppSpecificSettings:(id)a4 ofType:(Class)a5 applicationIdentifier:(id)a6 modeIdentifier:(id)a7;
- (void)appSpecificSettingsManager:(id)a3 receivedSyncedClearForAppSpecificSettings:(id)a4 ofType:(Class)a5 applicationIdentifier:(id)a6 modeIdentifier:(id)a7;
- (void)dealloc;
- (void)invalidateAppContextForActionIdentifier:(id)a3 applicationIdentifier:(id)a4 modeIdentifier:(id)a5;
- (void)refreshWithAvailableModes:(id)a3;
@end

@implementation DNDSAppConfigurationManager

- (DNDSAppConfigurationManager)initWithAppSpecificSettingsManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DNDSAppConfigurationManager;
  v6 = [(DNDSAppConfigurationManager *)&v14 init];
  if (v6)
  {
    v7 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.AppConfigurationsManager"];
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    predicates = v6->_predicates;
    v6->_predicates = v9;

    objc_storeStrong(&v6->_appSpecificSettingsManager, a3);
    [(DNDSAppSpecificSettingsManager *)v6->_appSpecificSettingsManager setDelegate:v6];
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v6->_delegates;
    v6->_delegates = v11;

    DNDSRegisterSysdiagnoseDataProvider(v6);
  }

  return v6;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSAppConfigurationManager;
  [(DNDSAppConfigurationManager *)&v3 dealloc];
}

- (void)refreshWithAvailableModes:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = [a3 bs_map:&__block_literal_global_30];
  v25 = self;
  v4 = [DNDSAppSpecificSettingsManager removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:"removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:error:" error:?];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [v13 applicationIdentifiers];
        [v5 setObject:v14 forKeyedSubscript:v12];

        v15 = [v7 objectForKeyedSubscript:v12];
        v16 = [v15 modeSpecificSettings];
        [v6 setObject:v16 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v25->_delegates;
  v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v22 appConfigurationManager:v25 didClearActionsForAppsInModeIdentifiers:v5];
        }

        if (objc_opt_respondsToSelector())
        {
          [v22 appConfigurationManager:v25 didClearSystemActionsInModeIdentifiers:v6];
        }
      }

      v19 = [(NSHashTable *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)setPredicate:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    goto LABEL_4;
  }

  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v22 = 0;
  v15 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appActionWithIdentifier:v11 forApplicationIdentifier:v12 modeIdentifier:v13 error:&v22];
  v16 = v22;
  if (v15)
  {

LABEL_4:
    v17 = self->_appSpecificSettingsManager;
    v21 = 0;
    [(DNDSAppSpecificSettingsManager *)v17 setAppSpecificSettings:v10 identifier:v11 type:objc_opt_class() applicationIdentifier:v12 modeIdentifier:v13 error:&v21];
    v18 = v21;
    goto LABEL_8;
  }

  v19 = [MEMORY[0x277CBEB38] dictionary];
  [v19 setObject:@"No action exists for action identifier; ignoring request to set predicate." forKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v16)
  {
    [v19 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];

LABEL_8:

  return v18;
}

- (id)targetContentIdentifierPrefixesForModeIdentifier:(id)a3 error:(id *)a4
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v6 = a3;
  v7 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appSpecificSettingsOfType:objc_opt_class() modeIdentifier:v6 error:a4];

  return v7;
}

- (id)setTargetContentIdentifierPrefix:(id)a3 forActionIdentifier:(id)a4 forApplicationIdentifier:(id)a5 modeIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10 || ![v10 length])
  {
    goto LABEL_5;
  }

  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v22 = 0;
  v15 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appActionWithIdentifier:v11 forApplicationIdentifier:v12 modeIdentifier:v13 error:&v22];
  v16 = v22;
  if (v15)
  {

LABEL_5:
    v17 = self->_appSpecificSettingsManager;
    v21 = 0;
    [(DNDSAppSpecificSettingsManager *)v17 setAppSpecificSettings:v10 identifier:v11 type:objc_opt_class() applicationIdentifier:v12 modeIdentifier:v13 error:&v21];
    v18 = v21;
    goto LABEL_6;
  }

  v20 = [MEMORY[0x277CBEB38] dictionary];
  [v20 setObject:@"No action exists for action identifier; ignoring request to set target content identifier prefix." forKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v20];

LABEL_6:

  return v18;
}

- (void)invalidateAppContextForActionIdentifier:(id)a3 applicationIdentifier:(id)a4 modeIdentifier:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40 = 0;
  v11 = [(DNDSAppConfigurationManager *)self appActionForActionIdentifier:v8 applicationIdentifier:v9 modeIdentifier:v10 error:&v40];
  v12 = v40;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  if (v13)
  {
    v14 = v12;
    v15 = DNDSLogAppConfigurationServiceProvider;
    if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v42 = v8;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = v10;
      v47 = 2112;
      v48 = v14;
      _os_log_error_impl(&dword_24912E000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve action for actionIdentifier:%@ applicationIdentifier:%@ modeIdentifier: %@, error=%@", buf, 0x2Au);
    }
  }

  else
  {
    v16 = [v9 bundleID];
    v17 = objc_alloc_init(MEMORY[0x277D23C30]);
    v39 = 0;
    v18 = [v17 actionForBundleIdentifier:v16 andActionIdentifier:v8 error:&v39];
    v19 = v39;
    v14 = v19;
    if (v19 || !v18)
    {
      v27 = DNDSLogAppFocusConfiguration;
      if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v42 = v8;
        v43 = 2114;
        v44 = v9;
        v45 = 2114;
        v46 = v10;
        v47 = 2114;
        v48 = v14;
        _os_log_error_impl(&dword_24912E000, v27, OS_LOG_TYPE_ERROR, "Failed to get action metadata for task with actionIdentifier:%{public}@ applicationIdentifier:%{public}@ modeIdentifier:%{public}@ error=%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v30 = v17;
      v31 = v16;
      v20 = [MEMORY[0x277D23BB8] policyWithActionMetadata:v18];
      v21 = [v11 action];
      v22 = [v21 parameters];
      v23 = [v20 actionWithParameters:v22];

      v24 = [v23 actionWithOpenWhenRun:0];

      v25 = v20;
      v38 = 0;
      v26 = [v20 connectionWithError:&v38];
      v14 = v38;
      if (v14 || !v26)
      {
        v28 = DNDSLogAppConfigurationServiceProvider;
        if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v42 = v8;
          v43 = 2112;
          v44 = v9;
          v45 = 2112;
          v46 = v10;
          v47 = 2112;
          v48 = v14;
          _os_log_error_impl(&dword_24912E000, v28, OS_LOG_TYPE_ERROR, "Failed to create connection for actionIdentifier:%@ applicationIdentifier:%@ modeIdentifier: %@, error=%@", buf, 0x2Au);
        }
      }

      else
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke;
        v32[3] = &unk_278F8BBC8;
        v33 = v24;
        v34 = self;
        v35 = v8;
        v36 = v9;
        v37 = v10;
        [v26 fetchActionAppContextForAction:v33 completionHandler:v32];
      }

      v17 = v30;
      v16 = v31;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DNDSLogAppConfigurationServiceProvider;
    if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
    {
      __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_1(a1, v6, v7);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
      v9 = DNDSLogAppConfigurationServiceProvider;
      if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[4];
        v19 = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched updated appContext %@ for action %@", &v19, 0x16u);
      }

      v11 = a1[5];
      v12 = [v8 notificationFilterPredicate];
      v13 = [v11 setPredicate:v12 forActionIdentifier:a1[6] forApplicationIdentifier:a1[7] modeIdentifier:a1[8]];

      v14 = a1[5];
      v15 = [v8 targetContentIdentifierPrefix];
      v16 = [v14 setTargetContentIdentifierPrefix:v15 forActionIdentifier:a1[6] forApplicationIdentifier:a1[7] modeIdentifier:a1[8]];
    }

    else
    {
      v17 = DNDSLogAppConfigurationServiceProvider;
      if (os_log_type_enabled(DNDSLogAppConfigurationServiceProvider, OS_LOG_TYPE_ERROR))
      {
        __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_2(v5, a1, v17);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)appActionsForModeIdentifier:(id)a3 error:(id *)a4
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v6 = a3;
  v7 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager appSpecificSettingsOfType:objc_opt_class() modeIdentifier:v6 error:a4];

  return v7;
}

- (id)setAppAction:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = 0;
  [MEMORY[0x277D05898] runtimeIsSupported:&v34];
  v11 = v34;
  if (!v11)
  {
    v12 = [v9 bundleID];
    [v8 setBundleIdentifier:v12];

    appSpecificSettingsManager = self->_appSpecificSettingsManager;
    v14 = [v8 identifier];
    v33 = 0;
    [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setAppSpecificSettings:v8 identifier:v14 type:objc_opt_class() applicationIdentifier:v9 modeIdentifier:v10 error:&v33];
    v11 = v33;

    if (v8)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = self->_appSpecificSettingsManager;
      v16 = [0 identifier];
      v32 = v11;
      [(DNDSAppSpecificSettingsManager *)v15 setAppSpecificSettings:0 identifier:v16 type:objc_opt_class() applicationIdentifier:v9 modeIdentifier:v10 error:&v32];
      v17 = v32;

      v11 = v17;
      if (v17)
      {
        goto LABEL_16;
      }
    }

    v27 = v11;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = self->_delegates;
    v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v23 appConfigurationManager:self didSetAction:v8 forApplicationIdentifier:v9 modeIdentifier:v10];
          }
        }

        v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v20);
    }

    v11 = v27;
  }

LABEL_16:
  v24 = v11;

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)clearAppActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v28 = 0;
  [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setAppSpecificSettings:0 identifier:v8 type:objc_opt_class() applicationIdentifier:v9 modeIdentifier:v10 error:&v28];
  v12 = v28;
  v13 = self->_appSpecificSettingsManager;
  v27 = v12;
  [(DNDSAppSpecificSettingsManager *)v13 setAppSpecificSettings:0 identifier:v8 type:objc_opt_class() applicationIdentifier:v9 modeIdentifier:v10 error:&v27];
  v22 = v27;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_delegates;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v19 appConfigurationManager:self didClearActionWithIdentifier:v8 forApplicationIdentifier:v9 modeIdentifier:v10];
        }
      }

      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)systemActionForActionIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v8 = a4;
  v9 = a3;
  v10 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager modeSpecificSettingsOfType:objc_opt_class() identifier:v9 modeIdentifier:v8 error:a5];

  return v10;
}

- (id)systemActionsForModeIdentifier:(id)a3 error:(id *)a4
{
  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v6 = a3;
  v7 = [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager modeSpecificSettingsOfType:objc_opt_class() modeIdentifier:v6 error:a4];

  return v7;
}

- (id)setSystemAction:(id)a3 modeIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25 = 0;
  [MEMORY[0x277D05AC0] runtimeIsSupported:&v25];
  v8 = v25;
  if (!v8)
  {
    appSpecificSettingsManager = self->_appSpecificSettingsManager;
    v10 = [v6 identifier];
    v24 = 0;
    [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setModeSpecificSettings:v6 identifier:v10 type:objc_opt_class() modeIdentifier:v7 error:&v24];
    v8 = v24;

    if (!v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = self->_delegates;
      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v16 appConfigurationManager:self didSetSystemAction:v6 modeIdentifier:{v7, v20}];
            }
          }

          v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v13);
      }
    }
  }

  v17 = v8;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)updateSystemActionWithReverseAction:(id)a3 actionIdentifier:(id)a4 modeIdentifier:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = 0;
  [MEMORY[0x277D05AC0] runtimeIsSupported:&v34];
  v11 = v34;
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_19;
  }

  v33 = 0;
  v14 = [(DNDSAppConfigurationManager *)self systemActionForActionIdentifier:v9 modeIdentifier:v10 error:&v33];
  v12 = v33;
  if (!v14)
  {
    v21 = DNDSLogSystemFocusConfiguration;
    if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppConfigurationManager updateSystemActionWithReverseAction:v9 actionIdentifier:v10 modeIdentifier:v21];
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else if (v12)
    {
LABEL_12:
      v26 = v12;
      v12 = v26;
      v14 = 0;
      goto LABEL_15;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find system action for reverse action. action=%@ mode=%@", v9, v10];;
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D05840];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = v22;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v12 = [v23 errorWithDomain:v24 code:1007 userInfo:v25];

    goto LABEL_12;
  }

  v15 = [v14 reverseAction];
  v16 = v15;
  if (v15 == v8)
  {

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (v8 && ([v14 reverseAction], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [v14 reverseAction];
    v20 = [v8 isEqual:v19];

    if (v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v27 = [v14 mutableCopy];
  [v27 setReverseAction:v8];

  appSpecificSettingsManager = self->_appSpecificSettingsManager;
  v32 = v12;
  [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setModeSpecificSettings:v27 identifier:v9 type:objc_opt_class() modeIdentifier:v10 error:&v32];
  v29 = v32;

  v26 = v29;
  v12 = v26;
  v14 = v27;
LABEL_15:
  v13 = v26;
LABEL_18:

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)clearSystemActionWithIdentifier:(id)a3 modeIdentifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v8 = [(DNDSAppConfigurationManager *)self systemActionForActionIdentifier:v6 modeIdentifier:v7 error:&v26];
  v9 = v26;
  if (v8)
  {
    appSpecificSettingsManager = self->_appSpecificSettingsManager;
    v25 = v9;
    v20 = v6;
    [(DNDSAppSpecificSettingsManager *)appSpecificSettingsManager setModeSpecificSettings:0 identifier:v6 type:objc_opt_class() modeIdentifier:v7 error:&v25];
    v19 = v25;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_delegates;
    v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 appConfigurationManager:self didClearSystemAction:v8 modeIdentifier:v7];
          }
        }

        v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v9 = v19;
    v6 = v20;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4
{
  v4 = objc_opt_new();

  return v4;
}

- (void)appSpecificSettingsManager:(id)a3 receivedSyncedAppSpecificSettings:(id)a4 ofType:(Class)a5 applicationIdentifier:(id)a6 modeIdentifier:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v13 = v10;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_delegates;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 appConfigurationManager:self didSetAction:v13 forApplicationIdentifier:v11 modeIdentifier:{v12, v21}];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)appSpecificSettingsManager:(id)a3 receivedSyncedClearForAppSpecificSettings:(id)a4 ofType:(Class)a5 applicationIdentifier:(id)a6 modeIdentifier:(id)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v21 = a6;
  v11 = a7;
  v12 = v10;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = self->_delegates;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          v19 = [v12 identifier];
          [v18 appConfigurationManager:self didClearActionWithIdentifier:v19 forApplicationIdentifier:v21 modeIdentifier:v11];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Failed to fetch appContext for action:%@, error=%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __108__DNDSAppConfigurationManager_invalidateAppContextForActionIdentifier_applicationIdentifier_modeIdentifier___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = *(a2 + 32);
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Fetched appContext:%@ for action:%@ is invalid", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateSystemActionWithReverseAction:(uint64_t)a1 actionIdentifier:(uint64_t)a2 modeIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_24912E000, a2, a3, "Unable to find system action for reverse action. action=%@; mode=%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end