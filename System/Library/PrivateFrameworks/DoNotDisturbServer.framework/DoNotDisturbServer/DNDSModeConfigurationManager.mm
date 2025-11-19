@interface DNDSModeConfigurationManager
- (BOOL)removeModeConfigurationForModeIdentifier:(id)a3 deletePlaceholder:(BOOL)a4 withError:(id *)a5;
- (BOOL)setModeConfiguration:(id)a3 withError:(id *)a4;
- (DNDSModeConfigurationManager)initWithBackingStore:(id)a3 keybag:(id)a4;
- (DNDSModeConfigurationManagerDelegate)delegate;
- (id)_inheritFromDefaultModeConfiguration:(id)a3;
- (id)_prepareModeConfigurationForStorage:(id)a3 withError:(id *)a4;
- (id)_readModeConfigurationsReturningError:(id *)a3;
- (id)_removedModeConfigurationRecordForModeRecord:(id)a3;
- (id)availableModesFilteringPlaceholders:(BOOL)a3 returningError:(id *)a4;
- (id)modeConfigurationForModeIdentifier:(id)a3 withError:(id *)a4;
- (id)modeConfigurationsWithError:(id *)a3;
- (id)relevantApplicationIdentifiers;
- (id)relevantContacts;
- (unint64_t)exceptionForApplication:(id)a3 thread:(id)a4 forModeIdentifier:(id)a5;
- (unint64_t)exceptionForApplicationIdentifier:(id)a3 thread:(id)a4 forModeIdentifier:(id)a5;
- (unint64_t)exceptionForContactHandle:(id)a3 forModeIdentifier:(id)a4;
- (void)_fixupConfigurationsIfNeeded;
- (void)_notifyChangeOfModeConfigurationFrom:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)keybagDidUnlockForTheFirstTime:(id)a3;
- (void)modeConfigurationStore:(id)a3 didUpdateAvailableModes:(id)a4;
@end

@implementation DNDSModeConfigurationManager

- (DNDSModeConfigurationManager)initWithBackingStore:(id)a3 keybag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = DNDSModeConfigurationManager;
  v9 = [(DNDSModeConfigurationManager *)&v13 init];
  if (v9)
  {
    v10 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.ModeConfigurationsManager"];
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_backingStore, a3);
    [(DNDSModeConfigurationsStoring *)v9->_backingStore setDelegate:v9];
    objc_storeStrong(&v9->_keybag, a4);
    [(DNDSKeybagStateProviding *)v9->_keybag addObserver:v9];
    DNDSRegisterSysdiagnoseDataProvider(v9);
    [(DNDSModeConfigurationManager *)v9 _fixupConfigurationsIfNeeded];
  }

  return v9;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSModeConfigurationManager;
  [(DNDSModeConfigurationManager *)&v3 dealloc];
}

- (BOOL)setModeConfiguration:(id)a3 withError:(id *)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 mode];
  v8 = [v7 modeIdentifier];
  v9 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:v8 withError:0];

  if (v9 == v6 || v6 && v9 && [v6 isEqual:v9])
  {
    v10 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring call to set mode configuration because it is unchanged.", &v36, 2u);
    }
  }

  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    v11 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Secure data will be written", &v36, 2u);
    }

    goto LABEL_21;
  }

  if ([v6 hasSecureData])
  {
    v12 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationManager setModeConfiguration:v12 withError:?];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D05840];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Cannot store mode configuration as new configuration contains secure data and store is not writeable";
    v15 = MEMORY[0x277CBEAC0];
    v16 = v41;
    v17 = &v40;
  }

  else
  {
    v18 = [v9 hasSecureData];
    v19 = DNDSLogModeConfigurations;
    if (!v18)
    {
      v24 = 0;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Secure data will not be written", &v36, 2u);
        v24 = 0;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationManager setModeConfiguration:v19 withError:?];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D05840];
    v38 = *MEMORY[0x277CCA450];
    v39 = @"Cannot replace mode configuration as existing configuration has secure data and store is not writeable";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v39;
    v17 = &v38;
  }

  v20 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v21 = [v13 errorWithDomain:v14 code:1004 userInfo:v20];

  if (!v21)
  {
LABEL_21:
    v24 = 1;
LABEL_22:
    if (!v9 && [v6 isAutomaticallyGenerated])
    {
      v25 = [(DNDSModeConfigurationManager *)self _inheritFromDefaultModeConfiguration:v6];

      v6 = v25;
    }

    v26 = v6;
    v6 = [(DNDSModeConfigurationManager *)self _prepareModeConfigurationForStorage:v6 withError:a4];

    if (a4 && *a4)
    {
      v21 = 0;
      goto LABEL_28;
    }

    v27 = [v6 mode];
    v28 = [v27 isPlaceholder];

    if (v28)
    {
      v29 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v6 mode];
        v32 = [v31 modeIdentifier];
        v36 = 138543362;
        v37 = v32;
        _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "Setting mode configuration with placeholder visibility effectively removing mode configuration for system Focus by demoting to placeholder; modeIdentifier=%{public}@", &v36, 0xCu);
      }
    }

    v33 = [(DNDSModeConfigurationManager *)self _saveModeConfiguration:v6 writeSecurePartition:v24 error:a4];
    if (v33 == 2)
    {
      [(DNDSModeConfigurationManager *)self _notifyChangeOfModeConfigurationFrom:v9 to:v6];
    }

    v21 = 0;
    v23 = v33 != 0;
    goto LABEL_35;
  }

  if (!a4)
  {
LABEL_28:
    v23 = 0;
    goto LABEL_35;
  }

  v22 = v21;
  v23 = 0;
  *a4 = v21;
LABEL_35:

  v34 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)modeConfigurationForModeIdentifier:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:a4];
  v8 = [v7 modeConfigurationForModeIdentifier:v6];

  if (v8 && ([v8 mode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "visibility"), v9, !v10))
  {
    v11 = [MEMORY[0x277D05990] modeConfigurationForRecord:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)removeModeConfigurationForModeIdentifier:(id)a3 deletePlaceholder:(BOOL)a4 withError:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:a5];
  v10 = [v9 modeConfigurationForModeIdentifier:v8];
  if (v10)
  {
    v11 = [v9 mutableCopy];
    v12 = [v10 mode];
    v13 = [v12 semanticType];

    if ((v13 - 1) >= 9)
    {
      if (v13)
      {
        v24 = DNDSLogModeConfigurations;
        if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138543362;
          v26 = v8;
          _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Removing mode configuration for custom Focus or Focus w/ unknown semantic type; modeIdentifier=%{public}@", &v25, 0xCu);
        }

        [v11 setModeConfiguration:0 forModeIdentifier:v8];
      }

      else if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_FAULT))
      {
        [DNDSModeConfigurationManager removeModeConfigurationForModeIdentifier:deletePlaceholder:withError:];
      }
    }

    else
    {
      if (a4)
      {
        v14 = 0;
      }

      else
      {
        v16 = [v10 mode];
        v17 = [(DNDSModeConfigurationManager *)self _removedModeConfigurationRecordForModeRecord:v16];
        v14 = [v17 makeRecord];
      }

      v18 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v8;
        _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Removing mode configuration for system Focus by demoting to placeholder; modeIdentifier=%{public}@", &v25, 0xCu);
      }

      [v11 setModeConfiguration:v14 forModeIdentifier:v8];
    }

    v19 = [(DNDSModeConfigurationManager *)self _writeModeConfigurationsRecord:v11 writeSecurePartition:1 error:a5];
    if (v19 == 2)
    {
      v20 = [(DNDSModeConfigurationManager *)self availableModesFilteringPlaceholders:1 returningError:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained modeConfigurationManager:self didUpdateAvailableModes:v20];
    }

    v15 = v19 != 0;
  }

  else
  {
    v15 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)modeConfigurationsWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 modeConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 mode];
        v14 = [v13 visibility];

        if (!v14)
        {
          v15 = [MEMORY[0x277D05990] modeConfigurationForRecord:v12];
          v16 = [v12 mode];
          v17 = [v16 modeIdentifier];
          [v5 setObject:v15 forKeyedSubscript:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)availableModesFilteringPlaceholders:(BOOL)a3 returningError:(id *)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:a4];
  v6 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 modeConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) mode];
        v13 = [MEMORY[0x277D05930] modeForRecord:v12];
        v14 = v13;
        if ((!v4 || ([v13 isPlaceholder] & 1) == 0) && (objc_msgSend(v14, "semanticType") != 9 || _os_feature_enabled_impl()))
        {
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)exceptionForApplication:(id)a3 thread:(id)a4 forModeIdentifier:(id)a5
{
  v8 = MEMORY[0x277D058C8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithBundleID:v11];

  v13 = [(DNDSModeConfigurationManager *)self exceptionForApplicationIdentifier:v12 thread:v10 forModeIdentifier:v9];
  return v13;
}

- (unint64_t)exceptionForApplicationIdentifier:(id)a3 thread:(id)a4 forModeIdentifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:a5 withError:0];
  v11 = [v10 configuration];
  v12 = [v11 exceptionForApplicationIdentifier:v9 thread:v8];

  return v12;
}

- (unint64_t)exceptionForContactHandle:(id)a3 forModeIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:a4 withError:0];
  v8 = [v7 configuration];
  v9 = [v8 exceptionForContactHandle:v6];

  return v9;
}

- (id)_readModeConfigurationsReturningError:(id *)a3
{
  backingStore = self->_backingStore;
  v13 = 0;
  v6 = [(DNDSModeConfigurationsStoring *)backingStore readRecordWithError:&v13];
  v7 = v13;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  if (a3)
  {
    v9 = v7;
    *a3 = v8;
  }

  v10 = [(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot];
  v11 = os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (v11)
    {
      [DNDSModeConfigurationManager _readModeConfigurationsReturningError:];
    }

    _DNDSRequestRadar(@"Failed to load configurations", v8, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/DNDSModeConfigurationManager.m", 266);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v11)
  {
LABEL_10:
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [DNDSModeConfigurationManager _readModeConfigurationsReturningError:];
  if (!v6)
  {
LABEL_11:
    v6 = objc_alloc_init(DNDSModeConfigurationsRecord);
  }

LABEL_12:

  return v6;
}

- (id)relevantApplicationIdentifiers
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v27 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:0];
  [v27 modeConfigurations];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v29 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [v7 triggers];
        v9 = [v8 triggers];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [v15 applicationIdentifier];
                [v3 addObject:v16];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v12);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v17 = [v7 secureConfiguration];
        v18 = [v17 allowedApplications];

        v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [v3 addObject:*(*(&v30 + 1) + 8 * k)];
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v20);
        }

        v23 = [v7 secureConfiguration];
        v24 = [v23 deniedApplications];
        [v3 unionSet:v24];
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v5);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)relevantContacts
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(DNDSModeConfigurationManager *)self _readModeConfigurationsReturningError:0];
  v5 = [v4 modeConfigurations];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x277D05A90];
        v11 = [*(*(&v18 + 1) + 8 * i) secureConfiguration];
        v12 = [v11 senderConfiguration];
        v13 = [v10 configurationForRecord:v12];

        v14 = [v13 allowedContacts];
        [v3 unionSet:v14];

        v15 = [v13 deniedContacts];
        [v3 unionSet:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)keybagDidUnlockForTheFirstTime:(id)a3
{
  v4 = DNDSLogModeConfigurations;
  if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Keybag unlocked for the first time; fixing up mode sender configurations if needed.", v5, 2u);
  }

  [(DNDSModeConfigurationManager *)self _fixupConfigurationsIfNeeded];
}

- (id)_inheritFromDefaultModeConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 mode];
  v6 = [v5 modeIdentifier];

  v7 = *MEMORY[0x277D05830];
  v8 = [v6 isEqualToString:*MEMORY[0x277D05830]];
  v9 = [v6 isEqualToString:*MEMORY[0x277D05860]];
  v10 = v4;
  if ((v8 & 1) == 0)
  {
    v10 = v4;
    if ((v9 & 1) == 0)
    {
      v11 = [(DNDSModeConfigurationManager *)self modeConfigurationForModeIdentifier:v7 withError:0];
      v12 = [v4 configuration];
      v13 = [v12 phoneCallBypassSettings];

      v14 = [v11 configuration];
      v15 = [v14 phoneCallBypassSettings];

      v10 = v4;
      if (([v13 isEqual:v15] & 1) == 0)
      {
        v16 = [v4 mutableCopy];
        v17 = [v4 configuration];
        v18 = [v17 mutableCopy];

        v19 = [v4 isAutomaticallyGenerated];
        [v18 setPhoneCallBypassSettings:v15];
        [v16 setConfiguration:v18];
        [v16 setAutomaticallyGenerated:v19];
        v10 = [v16 copy];
      }
    }
  }

  return v10;
}

- (id)_prepareModeConfigurationForStorage:(id)a3 withError:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v6 = [v4 configuration];
  v7 = [v6 senderConfiguration];
  v8 = [v7 sanitizedConfigurationWithContactStore:v5];

  if (v8)
  {
    v9 = [v4 configuration];
    v10 = [v9 mutableCopy];

    v11 = [v4 isAutomaticallyGenerated];
    [v10 setSenderConfiguration:v8];
    v12 = [v4 mutableCopy];
    [v12 setConfiguration:v10];
    [v12 setAutomaticallyGenerated:v11];
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_notifyChangeOfModeConfigurationFrom:(id)a3 to:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 configuration];
  v8 = [v7 senderConfiguration];
  v9 = [v8 allowedContacts];

  v10 = [v6 configuration];
  v11 = [v10 senderConfiguration];
  v12 = [v11 allowedContacts];

  v13 = [v9 mutableCopy];
  [v13 intersectSet:v12];
  v63 = v12;
  v14 = [v12 mutableCopy];
  [v14 minusSet:v13];
  v15 = [v9 mutableCopy];
  v61 = v13;
  [v15 minusSet:v13];
  v65 = v5;
  v16 = [v5 configuration];
  v17 = [v16 senderConfiguration];
  v18 = [v17 deniedContacts];

  v64 = v6;
  v19 = [v6 configuration];
  v20 = [v19 senderConfiguration];
  v21 = [v20 deniedContacts];

  v22 = [v18 mutableCopy];
  [v22 intersectSet:v21];
  v59 = v21;
  v56 = [v21 mutableCopy];
  [v56 minusSet:v22];
  v60 = v18;
  v23 = [v18 mutableCopy];
  v58 = v22;
  [v23 minusSet:v22];
  v24 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v79;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v79 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v78 + 1) + 8 * i);
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
        [v24 setObject:v31 forKey:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v78 objects:v85 count:16];
    }

    while (v27);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v75;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v75 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v74 + 1) + 8 * j);
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
        [v24 setObject:v38 forKey:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v34);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v39 = v14;
  v40 = [v39 countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v71;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v71 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v70 + 1) + 8 * k);
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
        [v24 setObject:v45 forKey:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v70 objects:v83 count:16];
    }

    while (v41);
  }

  v57 = v25;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v46 = v56;
  v47 = [v46 countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v67;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v67 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v66 + 1) + 8 * m);
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
        [v24 setObject:v52 forKey:v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v66 objects:v82 count:16];
    }

    while (v48);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained modeConfigurationManager:self didModifyExceptionsForContacts:v24 forModeConfiguration:v64];
  if (objc_opt_respondsToSelector())
  {
    v54 = [v64 mode];
    [WeakRetained modeConfigurationManager:self didModifyAvailableMode:v54];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (id)_removedModeConfigurationRecordForModeRecord:(id)a3
{
  v4 = MEMORY[0x277D05A20];
  v5 = a3;
  v6 = [v4 defaultConfiguration];
  v7 = [v5 mutableCopy];

  [v7 setVisibility:1];
  v8 = objc_alloc(MEMORY[0x277D05990]);
  v9 = [MEMORY[0x277D05930] modeForRecord:v7];
  v10 = [v8 initWithMode:v9 configuration:v6 triggers:MEMORY[0x277CBEBF8]];

  v11 = [(DNDSModeConfigurationManager *)self _prepareModeConfigurationForStorage:v10 withError:0];

  return v11;
}

- (void)_fixupConfigurationsIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to write record to fix up configurations though it was needed; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)modeConfigurationStore:(id)a3 didUpdateAvailableModes:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained modeConfigurationManager:self didUpdateAvailableModes:v5];
}

- (DNDSModeConfigurationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removeModeConfigurationForModeIdentifier:deletePlaceholder:withError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_24912E000, v0, OS_LOG_TYPE_FAULT, "Removing mode configuration for default Focus is not supported; modeIdentifier=%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_readModeConfigurationsReturningError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to load configurations but device is under first lock; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_readModeConfigurationsReturningError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to load configurations, will request a radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeModeConfigurationsRecord:writeSecurePartition:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to save configurations but device is under first lock; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeModeConfigurationsRecord:writeSecurePartition:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to save configurations, will request a radar; error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end