@interface DNDSAppSpecificSettingsManager
- (BOOL)removeAppSpecificSettingsForApplicationIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeModeSpecificSettingsForModeIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setAppSpecificSettings:(id)a3 identifier:(id)a4 type:(Class)a5 applicationIdentifier:(id)a6 modeIdentifier:(id)a7 error:(id *)a8;
- (BOOL)setModeSpecificSettings:(id)a3 identifier:(id)a4 type:(Class)a5 modeIdentifier:(id)a6 error:(id *)a7;
- (DNDSAppSpecificSettingsManager)init;
- (DNDSAppSpecificSettingsManager)initWithIDSSyncEngine:(id)a3 backingStoreURL:(id)a4;
- (DNDSAppSpecificSettingsManagerDelegate)delegate;
- (id)_allAppSpecificSettingsOfType:(Class)a3;
- (id)_allModeSpecificSettingsOfType:(Class)a3;
- (id)_initWithBackingStoreURL:(id)a3;
- (id)_perModeSettingsMOsOfType:(Class)a3 modeIdentifier:(id)a4 processBlock:(id)a5;
- (id)appActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (id)appConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (id)appConfigurationPredicateForApplicationIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (id)appConfigurationTargetContentIdentifierPrefixForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (id)appConfigurationTargetContentIdentifierPrefixForApplicationIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (id)appSpecificSettingsDictinariesForModeIdentifier:(id)a3;
- (id)appSpecificSettingsOfType:(Class)a3 identifier:(id)a4 modeIdentifier:(id)a5 applicationIdentifier:(id)a6 error:(id *)a7;
- (id)appSpecificSettingsOfType:(Class)a3 modeIdentifier:(id)a4 applicationIdentifier:(id)a5 error:(id *)a6;
- (id)appSpecificSettingsOfType:(Class)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (id)modeSpecificSettingsOfType:(Class)a3 identifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6;
- (id)modeSpecificSettingsOfType:(Class)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (id)recordIDsForIDSSyncEngine:(id)a3;
- (id)removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:(id)a3 error:(id *)a4;
- (id)systemActionWithIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5;
- (void)_allPerModeSettingsMOsOfType:(Class)a3 processBlock:(id)a4;
- (void)_modesToSave:(id)a3 modesToDelete:(id)a4;
- (void)idsSyncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)idsSyncEngine:(id)a3 prepareRecordToSave:(id)a4;
- (void)idsSyncEngine:(id)a3 recordWithIDWasDeleted:(id)a4;
- (void)purgeRecordsForIDSSyncEngine:(id)a3;
@end

@implementation DNDSAppSpecificSettingsManager

- (id)appActionWithIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() identifier:v12 modeIdentifier:v10 applicationIdentifier:v11 error:a6];

  return v13;
}

- (id)appConfigurationTargetContentIdentifierPrefixForApplicationIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() modeIdentifier:v8 applicationIdentifier:v9 error:a5];

  v11 = [v10 anyObject];

  return v11;
}

- (id)appConfigurationTargetContentIdentifierPrefixForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() identifier:v12 modeIdentifier:v10 applicationIdentifier:v11 error:a6];

  return v13;
}

- (id)systemActionWithIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(DNDSAppSpecificSettingsManager *)self modeSpecificSettingsOfType:objc_opt_class() identifier:v9 modeIdentifier:v8 error:a5];

  return v10;
}

- (id)appConfigurationPredicateForActionIdentifier:(id)a3 forApplicationIdentifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() identifier:v12 modeIdentifier:v10 applicationIdentifier:v11 error:a6];

  return v13;
}

- (id)appConfigurationPredicateForApplicationIdentifier:(id)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() modeIdentifier:v8 applicationIdentifier:v9 error:a5];

  v11 = [v10 anyObject];

  return v11;
}

- (DNDSAppSpecificSettingsManager)init
{
  v6.receiver = self;
  v6.super_class = DNDSAppSpecificSettingsManager;
  v2 = [(DNDSAppSpecificSettingsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(DNDSCoreDataBackingStore);
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

- (DNDSAppSpecificSettingsManager)initWithIDSSyncEngine:(id)a3 backingStoreURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DNDSAppSpecificSettingsManager;
  v9 = [(DNDSAppSpecificSettingsManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idsSyncEngine, a3);
    [(DNDSIDSSyncEngine *)v10->_idsSyncEngine setDataSource:v10 forZone:@"DNDSAppSpecificSettings"];
    v11 = [[DNDSCoreDataBackingStore alloc] _initWithURL:v8];
    store = v10->_store;
    v10->_store = v11;
  }

  return v10;
}

- (id)_initWithBackingStoreURL:(id)a3
{
  v4 = a3;
  v5 = [(DNDSAppSpecificSettingsManager *)self init];
  if (v5)
  {
    v6 = [[DNDSCoreDataBackingStore alloc] _initWithURL:v4];
    store = v5->_store;
    v5->_store = v6;
  }

  return v5;
}

- (id)modeSpecificSettingsOfType:(Class)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = [MEMORY[0x277CBEB58] set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_modeIdentifier_error___block_invoke;
  v14[3] = &unk_278F8B860;
  v14[4] = &v15;
  v14[5] = a3;
  v9 = [(DNDSAppSpecificSettingsManager *)self _perModeSettingsMOsOfType:a3 modeIdentifier:v8 processBlock:v14];
  if (v9)
  {
    v10 = v16[5];
    v16[5] = 0;

    if (a5)
    {
      v11 = v9;
      *a5 = v9;
    }
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __82__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_modeIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) appSpecificSettingsForManagedObject:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)appSpecificSettingsOfType:(Class)a3 modeIdentifier:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = [v8 dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke;
  v16[3] = &unk_278F8B888;
  v11 = v10;
  v17 = v11;
  v18 = a3;
  v12 = [(DNDSAppSpecificSettingsManager *)self _perModeSettingsMOsOfType:a3 modeIdentifier:v9 processBlock:v16];

  if (v12)
  {

    if (a5)
    {
      v13 = v12;
      v11 = 0;
      *a5 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = v11;

  return v11;
}

void __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = objc_alloc(MEMORY[0x277D058C8]);
          v10 = [v8 application];
          v11 = [v10 bundleIdentifier];
          v12 = [v9 initWithBundleID:v11];

          v13 = [*(a1 + 32) objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
            [*(a1 + 32) setObject:v14 forKeyedSubscript:v12];
          }

          v15 = [*(a1 + 40) appSpecificSettingsForManagedObject:v8];
          if (v15)
          {
            v16 = [*(a1 + 32) objectForKeyedSubscript:v12];
            v17 = [v16 setByAddingObject:v15];
            [*(a1 + 32) setObject:v17 forKeyedSubscript:v12];
          }
        }

        else
        {
          v18 = DNDSLogAppSpecificSettingsManager;
          if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
          {
            __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke_cold_1(v24, v18, v8, &v25);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_perModeSettingsMOsOfType:(Class)a3 modeIdentifier:(id)a4 processBlock:(id)a5
{
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__13;
  v45 = __Block_byref_object_dispose__13;
  v46 = 0;
  v10 = +[DNDSKeybag sharedInstance];
  v11 = [v10 hasUnlockedSinceBoot];

  if (v11)
  {
    v12 = [(DNDSAppSpecificSettingsManager *)self store];
    v13 = [v12 newManagedObjectContext];

    v14 = [(objc_class *)a3 appSpecificSettingsEntity];
    v15 = [v13 persistentStoreCoordinator];
    v16 = [v15 managedObjectModel];
    v17 = [v16 entitiesByName];
    v18 = [v17 objectForKeyedSubscript:v14];

    if (v8)
    {
      if (v18)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke;
        v34[3] = &unk_278F8B8B0;
        v35 = v13;
        v36 = v8;
        v37 = v18;
        v39 = &v41;
        v38 = v9;
        [v35 performBlockAndWait:v34];

        v19 = v35;
      }

      else
      {
        if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
        {
          [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
        }

        v29 = MEMORY[0x277CCA9B8];
        v47 = *MEMORY[0x277CCA450];
        v48 = @"Model does not contain provided entity name.";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v30 = [v29 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];
        v31 = v42[5];
        v42[5] = v30;
      }
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"Mode identifier not valid.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v27 = [v26 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];
      v28 = v42[5];
      v42[5] = v27;
    }

    v25 = v42[5];
  }

  else
  {
    v20 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Attempt to get mode specific settings before first unlock.", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52[0] = @"Attempt to get mode specific settings before first unlock.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v22];
    v24 = v42[5];
    v42[5] = v23;

    v25 = v42[5];
  }

  _Block_object_dispose(&v41, 8);

  v32 = *MEMORY[0x277D85DE8];

  return v25;
}

void __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v20 = @"MODE_ID";
  v21[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForMode" substitutionVariables:v5];

  [v6 setEntity:*(a1 + 48)];
  v7 = a1 + 64;
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v6 execute:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke_cold_1(v7);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D05840];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Error querying settings.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v10 errorWithDomain:v11 code:1008 userInfo:v12];
    v14 = *(*v7 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)appSpecificSettingsOfType:(Class)a3 modeIdentifier:(id)a4 applicationIdentifier:(id)a5 error:(id *)a6
{
  v53[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = +[DNDSKeybag sharedInstance];
  v13 = [v12 hasUnlockedSinceBoot];

  if (v13)
  {
    *buf = 0;
    v43 = buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__13;
    v46 = __Block_byref_object_dispose__13;
    v47 = [MEMORY[0x277CBEB58] set];
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__13;
    v40 = __Block_byref_object_dispose__13;
    v41 = 0;
    v14 = [v11 bundleID];
    v15 = v14 == 0;

    if (v15)
    {
      v23 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Application's bundle identifier not valid.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v24 = [v23 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v18];
    }

    else
    {
      if (v10)
      {
        v16 = [(DNDSAppSpecificSettingsManager *)self store];
        v17 = [v16 newManagedObjectContext];

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke;
        v29[3] = &unk_278F8B8D8;
        v18 = v17;
        v30 = v18;
        v31 = v11;
        v32 = v10;
        v33 = &v36;
        v34 = buf;
        v35 = a3;
        [v18 performBlockAndWait:v29];

        v19 = v30;
        goto LABEL_12;
      }

      v25 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Mode identifier not valid.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v24 = [v25 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v18];
    }

    v19 = v37[5];
    v37[5] = v24;
LABEL_12:

    if (a6)
    {
      *a6 = v37[5];
      if (v37[5])
      {
        v26 = *(v43 + 5);
        *(v43 + 5) = 0;
      }
    }

    a6 = *(v43 + 5);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_16;
  }

  v20 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Attempt to get app specific settings before first unlock.", buf, 2u);
  }

  if (a6)
  {
    v21 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    v53[0] = @"Attempt to get app specific settings before first unlock.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    *a6 = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v22];

    a6 = 0;
  }

LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return a6;
}

void __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke(uint64_t a1)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v41[0] = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v41[1] = @"MODE_ID";
  v42[0] = v4;
  v42[1] = *(a1 + 48);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v6 = [v3 fetchRequestFromTemplateWithName:@"PerAppSettingsForAppMode" substitutionVariables:v5];

  v7 = [*(a1 + 72) appSpecificSettingsEntity];
  v8 = [*(a1 + 32) persistentStoreCoordinator];
  v9 = [v8 managedObjectModel];
  v10 = [v9 entitiesByName];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v11)
  {
    [v6 setEntity:v11];
    v12 = a1 + 56;
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    v14 = [v6 execute:&obj];
    objc_storeStrong((v13 + 40), obj);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1(v12);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D05840];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"Failed to fetch settings.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v18 = [v15 errorWithDomain:v16 code:1008 userInfo:v17];
      v19 = *(*v12 + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v14;
      v25 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v32;
        do
        {
          v28 = 0;
          do
          {
            if (*v32 != v27)
            {
              objc_enumerationMutation(v17);
            }

            v29 = [*(a1 + 72) appSpecificSettingsForManagedObject:{*(*(&v31 + 1) + 8 * v28), v31}];
            if (v29)
            {
              [*(*(*(a1 + 64) + 8) + 40) addObject:v29];
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v26);
      }

      v14 = v17;
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D05840];
    v39 = *MEMORY[0x277CCA450];
    v40 = @"Model does not contain provided entity name.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v23 = [v21 errorWithDomain:v22 code:1006 userInfo:v14];
    v24 = *(*(a1 + 56) + 8);
    v17 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)modeSpecificSettingsOfType:(Class)a3 identifier:(id)a4 modeIdentifier:(id)a5 error:(id *)a6
{
  v47[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = +[DNDSKeybag sharedInstance];
  v13 = [v12 hasUnlockedSinceBoot];

  if (v13)
  {
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__13;
    v42 = __Block_byref_object_dispose__13;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__13;
    v36 = __Block_byref_object_dispose__13;
    v37 = 0;
    if (v11)
    {
      v14 = [(DNDSAppSpecificSettingsManager *)self store];
      v15 = [v14 newManagedObjectContext];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __93__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_identifier_modeIdentifier_error___block_invoke;
      v25[3] = &unk_278F8B8D8;
      v16 = v15;
      v26 = v16;
      v27 = v11;
      v28 = v10;
      v29 = &v32;
      v30 = buf;
      v31 = a3;
      [v16 performBlockAndWait:v25];

      v17 = v26;
    }

    else
    {
      v21 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v45 = @"Mode identifier not valid.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v22 = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v16];
      v17 = v33[5];
      v33[5] = v22;
    }

    if (a6)
    {
      *a6 = v33[5];
    }

    a6 = *(v39 + 5);
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Attempt to get mode specific settings before first unlock.", buf, 2u);
    }

    if (a6)
    {
      v19 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47[0] = @"Attempt to mode app specific settings before first unlock.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      *a6 = [v19 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v20];

      a6 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return a6;
}

void __93__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_identifier_modeIdentifier_error___block_invoke(uint64_t a1)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v34[0] = @"MODE_ID";
  v34[1] = @"SETTINGS_ID";
  v35[0] = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v35[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v8 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForModeID" substitutionVariables:v7];

  if (!v5)
  {
  }

  v9 = [*(a1 + 72) appSpecificSettingsEntity];
  v10 = [*(a1 + 32) persistentStoreCoordinator];
  v11 = [v10 managedObjectModel];
  v12 = [v11 entitiesByName];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (!v13)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D05840];
    v32 = *MEMORY[0x277CCA450];
    v33 = @"Model does not contain provided entity name.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v23 = [v21 errorWithDomain:v22 code:1006 userInfo:v16];
    v24 = *(*(a1 + 56) + 8);
    v19 = *(v24 + 40);
    *(v24 + 40) = v23;
    goto LABEL_16;
  }

  [v8 setEntity:v13];
  v14 = a1 + 56;
  v15 = *(*(a1 + 56) + 8);
  obj = *(v15 + 40);
  v16 = [v8 execute:&obj];
  objc_storeStrong((v15 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1(v14);
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D05840];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"Failed to fetch settings.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = [v17 errorWithDomain:v18 code:1008 userInfo:v19];
    goto LABEL_15;
  }

  if ([v16 count])
  {
    v25 = *(a1 + 72);
    v19 = [v16 firstObject];
    v20 = [v25 appSpecificSettingsForManagedObject:v19];
    v14 = a1 + 64;
LABEL_15:
    v26 = *(*v14 + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v20;

LABEL_16:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)appSpecificSettingsOfType:(Class)a3 identifier:(id)a4 modeIdentifier:(id)a5 applicationIdentifier:(id)a6 error:(id *)a7
{
  v56[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[DNDSKeybag sharedInstance];
  v16 = [v15 hasUnlockedSinceBoot];

  if (v16)
  {
    *buf = 0;
    v46 = buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__13;
    v49 = __Block_byref_object_dispose__13;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__13;
    v43 = __Block_byref_object_dispose__13;
    v44 = 0;
    v17 = [v14 bundleID];
    v18 = v17 == 0;

    if (v18)
    {
      v26 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v54 = @"Application's bundle identifier not valid.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v27 = [v26 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v21];
    }

    else
    {
      if (v13)
      {
        v19 = [(DNDSAppSpecificSettingsManager *)self store];
        v20 = [v19 newManagedObjectContext];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __114__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_identifier_modeIdentifier_applicationIdentifier_error___block_invoke;
        v31[3] = &unk_278F8B900;
        v21 = v20;
        v32 = v21;
        v33 = v14;
        v34 = v13;
        v35 = v12;
        v36 = &v39;
        v37 = buf;
        v38 = a3;
        [v21 performBlockAndWait:v31];

        v22 = v32;
LABEL_12:

        if (a7)
        {
          *a7 = v40[5];
        }

        a7 = *(v46 + 5);
        _Block_object_dispose(&v39, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_15;
      }

      v28 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA450];
      v52 = @"Mode identifier not valid.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v27 = [v28 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v21];
    }

    v22 = v40[5];
    v40[5] = v27;
    goto LABEL_12;
  }

  v23 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, "Attempt to get app specific settings before first unlock.", buf, 2u);
  }

  if (a7)
  {
    v24 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = @"Attempt to get app specific settings before first unlock.";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    *a7 = [v24 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v25];

    a7 = 0;
  }

LABEL_15:

  v29 = *MEMORY[0x277D85DE8];

  return a7;
}

void __114__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_identifier_modeIdentifier_applicationIdentifier_error___block_invoke(uint64_t a1)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v35[0] = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v36[0] = v4;
  v36[1] = v5;
  v35[1] = @"MODE_ID";
  v35[2] = @"SETTINGS_ID";
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v36[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v9 = [v3 fetchRequestFromTemplateWithName:@"PerAppSettingsForAppModeID" substitutionVariables:v8];

  if (!v6)
  {
  }

  v10 = [*(a1 + 80) appSpecificSettingsEntity];
  v11 = [*(a1 + 32) persistentStoreCoordinator];
  v12 = [v11 managedObjectModel];
  v13 = [v12 entitiesByName];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (!v14)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D05840];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"Model does not contain provided entity name.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v24 = [v22 errorWithDomain:v23 code:1006 userInfo:v17];
    v25 = *(*(a1 + 64) + 8);
    v20 = *(v25 + 40);
    *(v25 + 40) = v24;
    goto LABEL_16;
  }

  [v9 setEntity:v14];
  v15 = a1 + 64;
  v16 = *(*(a1 + 64) + 8);
  obj = *(v16 + 40);
  v17 = [v9 execute:&obj];
  objc_storeStrong((v16 + 40), obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1(v15);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D05840];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Failed to fetch settings.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v21 = [v18 errorWithDomain:v19 code:1008 userInfo:v20];
    goto LABEL_15;
  }

  if ([v17 count])
  {
    v26 = *(a1 + 80);
    v20 = [v17 firstObject];
    v21 = [v26 appSpecificSettingsForManagedObject:v20];
    v15 = a1 + 72;
LABEL_15:
    v27 = *(*v15 + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v21;

LABEL_16:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)setModeSpecificSettings:(id)a3 identifier:(id)a4 type:(Class)a5 modeIdentifier:(id)a6 error:(id *)a7
{
  v49[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[DNDSKeybag sharedInstance];
  v16 = [v15 hasUnlockedSinceBoot];

  if (v16)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__13;
    v44 = __Block_byref_object_dispose__13;
    v45 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    if (v14)
    {
      v17 = [(DNDSAppSpecificSettingsManager *)self store];
      v18 = [v17 newManagedObjectContext];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke;
      v27[3] = &unk_278F8B928;
      v19 = v18;
      v28 = v19;
      v29 = v14;
      v35 = a5;
      v30 = v13;
      v33 = &v40;
      v34 = &v36;
      v31 = v12;
      v32 = self;
      [v19 performBlockAndWait:v27];

      v20 = v28;
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47 = @"Mode identifier not valid.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v24 = [v23 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];
      v20 = v41[5];
      v41[5] = v24;
    }

    if (a7)
    {
      *a7 = v41[5];
    }

    LOBYTE(a7) = *(v37 + 24);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager setModeSpecificSettings:identifier:type:modeIdentifier:error:];
    }

    if (a7)
    {
      v21 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v49[0] = @"Attempt to set mode specific settings before first unlock.";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      *a7 = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v22];

      LOBYTE(a7) = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return a7 & 1;
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke(uint64_t a1)
{
  v83[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v82[0] = @"MODE_ID";
  v82[1] = @"SETTINGS_ID";
  v83[0] = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v83[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v8 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForModeID" substitutionVariables:v7];

  if (!v5)
  {
  }

  [v8 setFetchLimit:1];
  v9 = [*(a1 + 88) appSpecificSettingsEntity];
  v10 = [*(a1 + 32) persistentStoreCoordinator];
  v11 = [v10 managedObjectModel];
  v12 = [v11 entitiesByName];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (v13)
  {
    [v8 setEntity:v13];
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 72) + 8);
    obj = *(v15 + 40);
    v16 = [v14 executeFetchRequest:v8 error:&obj];
    objc_storeStrong((v15 + 40), obj);
    v17 = DNDSLogAppSpecificSettingsManager;
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_1(a1 + 72);
      }

      if (!*(a1 + 56))
      {
        v34 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277D05840];
        v78 = *MEMORY[0x277CCA450];
        v79 = @"Failed to fetch settings to delete.";
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v37 = [v34 errorWithDomain:v35 code:1008 userInfo:v36];
        v38 = *(*(a1 + 72) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = v37;

        v20 = 0;
        *(*(*(a1 + 80) + 8) + 24) = 0;
        v23 = v13;
LABEL_36:

        goto LABEL_37;
      }

      v18 = *(*(a1 + 72) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = 0;

      if (!*(a1 + 56))
      {
        v20 = 0;
LABEL_29:
        v23 = v13;
LABEL_30:
        if ([*(a1 + 32) hasChanges])
        {
          v47 = *(a1 + 32);
          v48 = *(*(a1 + 72) + 8);
          v66 = *(v48 + 40);
          v49 = [v47 save:&v66];
          objc_storeStrong((v48 + 40), v66);
          *(*(*(a1 + 80) + 8) + 24) = v49;
          if (*(*(*(a1 + 80) + 8) + 24) == 1 && !*(*(*(a1 + 72) + 8) + 40))
          {
            v57 = DNDSLogAppSpecificSettingsManager;
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
            {
              v59 = *(a1 + 40);
              v58 = *(a1 + 48);
              *buf = 138543618;
              v71 = v58;
              v72 = 2114;
              v73 = v59;
              _os_log_impl(&dword_24912E000, v57, OS_LOG_TYPE_DEFAULT, "Committed mode settings for %{public}@ in %{public}@", buf, 0x16u);
            }

            v60 = *(a1 + 64);
            v61 = *(a1 + 40);
            if (*(a1 + 56))
            {
              v69 = *(a1 + 40);
              v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
              v63 = v60;
              v64 = v62;
              v65 = 0;
            }

            else
            {
              v68 = *(a1 + 40);
              v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
              v63 = v60;
              v64 = 0;
              v65 = v62;
            }

            [v63 _modesToSave:v64 modesToDelete:v65];
          }

          else
          {
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
            {
              __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_3(a1 + 72);
            }

            v50 = MEMORY[0x277CCA9B8];
            v51 = *MEMORY[0x277D05840];
            v74 = *MEMORY[0x277CCA450];
            v75 = @"Failed to commit settings.";
            v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            v53 = [v50 errorWithDomain:v51 code:1008 userInfo:v52];
            v54 = *(*(a1 + 72) + 8);
            v55 = *(v54 + 40);
            *(v54 + 40) = v53;

            *(*(*(a1 + 80) + 8) + 24) = 0;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = v17;
        v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        *buf = 138543362;
        v71 = v28;
        _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ settings for set/clear.", buf, 0xCu);
      }

      v29 = [v16 firstObject];
      v20 = v29;
      v30 = *(a1 + 56);
      if (!v30)
      {
        if (v29)
        {
          [*(a1 + 32) deleteObject:v29];
        }

        goto LABEL_29;
      }

      if (v29)
      {
        v23 = v13;
LABEL_22:
        [*(a1 + 88) completeManagedObject:v20 forAppSpecificSettings:v30];
        goto LABEL_30;
      }
    }

    v31 = MEMORY[0x277CBE408];
    v32 = [*(a1 + 88) appSpecificSettingsEntity];
    v23 = [v31 entityForName:v32 inManagedObjectContext:*(a1 + 32)];

    v20 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v23 insertIntoManagedObjectContext:*(a1 + 32)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_2(v40);
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
      v41 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277D05840];
      v76 = *MEMORY[0x277CCA450];
      v77 = @"Unexpected managed object class for entity.";
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v44 = [v41 errorWithDomain:v42 code:1006 userInfo:v43];
      v45 = *(*(a1 + 72) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v44;

      goto LABEL_36;
    }

    [v20 setIdentifier:*(a1 + 48)];
    v33 = [[DNDFocusModeMO alloc] initWithContext:*(a1 + 32)];
    [(DNDFocusModeMO *)v33 setIdentifier:*(a1 + 40)];
    [*(a1 + 32) refreshObject:v33 mergeChanges:1];
    [v20 setMode:v33];

    v30 = *(a1 + 56);
    goto LABEL_22;
  }

  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
  }

  v21 = MEMORY[0x277CCA9B8];
  v22 = *MEMORY[0x277D05840];
  v80 = *MEMORY[0x277CCA450];
  v81 = @"Model does not contain provided entity name.";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v24 = [v21 errorWithDomain:v22 code:1006 userInfo:v23];
  v25 = *(*(a1 + 72) + 8);
  v20 = *(v25 + 40);
  *(v25 + 40) = v24;
LABEL_37:

  v56 = *MEMORY[0x277D85DE8];
}

- (BOOL)setAppSpecificSettings:(id)a3 identifier:(id)a4 type:(Class)a5 applicationIdentifier:(id)a6 modeIdentifier:(id)a7 error:(id *)a8
{
  v58[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = +[DNDSKeybag sharedInstance];
  v19 = [v18 hasUnlockedSinceBoot];

  if (v19)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__13;
    v51 = __Block_byref_object_dispose__13;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 1;
    v20 = [v16 bundleID];
    v21 = v20 == 0;

    if (v21)
    {
      v28 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      v56 = @"Application's bundle identifier not valid.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v29 = [v28 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v24];
    }

    else
    {
      if (v17)
      {
        v22 = [(DNDSAppSpecificSettingsManager *)self store];
        v23 = [v22 newManagedObjectContext];

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __116__DNDSAppSpecificSettingsManager_setAppSpecificSettings_identifier_type_applicationIdentifier_modeIdentifier_error___block_invoke;
        v33[3] = &unk_278F8B950;
        v24 = v23;
        v34 = v24;
        v35 = v16;
        v36 = v17;
        v42 = a5;
        v37 = v15;
        v40 = &v47;
        v41 = &v43;
        v38 = v14;
        v39 = self;
        [v24 performBlockAndWait:v33];

        v25 = v34;
LABEL_12:

        if (a8)
        {
          *a8 = v48[5];
        }

        LOBYTE(a8) = *(v44 + 24);
        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v47, 8);

        goto LABEL_15;
      }

      v30 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v54 = @"Mode identifier not valid.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v29 = [v30 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v24];
    }

    v25 = v48[5];
    v48[5] = v29;
    goto LABEL_12;
  }

  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager setAppSpecificSettings:identifier:type:applicationIdentifier:modeIdentifier:error:];
  }

  if (a8)
  {
    v26 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58[0] = @"Attempt to set app specific settings before first unlock.";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    *a8 = [v26 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v27];

    LOBYTE(a8) = 0;
  }

LABEL_15:

  v31 = *MEMORY[0x277D85DE8];
  return a8 & 1;
}

void __116__DNDSAppSpecificSettingsManager_setAppSpecificSettings_identifier_type_applicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1)
{
  v86[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v85[0] = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v86[0] = v4;
  v86[1] = v5;
  v85[1] = @"MODE_ID";
  v85[2] = @"SETTINGS_ID";
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v86[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v9 = [v3 fetchRequestFromTemplateWithName:@"PerAppSettingsForAppModeID" substitutionVariables:v8];

  if (!v6)
  {
  }

  [v9 setFetchLimit:1];
  v10 = [*(a1 + 96) appSpecificSettingsEntity];
  v11 = [*(a1 + 32) persistentStoreCoordinator];
  v12 = [v11 managedObjectModel];
  v13 = [v12 entitiesByName];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (v14)
  {
    [v9 setEntity:v14];
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 80) + 8);
    obj = *(v16 + 40);
    v17 = [v15 executeFetchRequest:v9 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    v18 = DNDSLogAppSpecificSettingsManager;
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_1(a1 + 80);
      }

      if (!*(a1 + 64))
      {
        v37 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277D05840];
        v81 = *MEMORY[0x277CCA450];
        v82 = @"Failed to fetch settings to delete.";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v40 = [v37 errorWithDomain:v38 code:1008 userInfo:v39];
        v41 = *(*(a1 + 80) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        v21 = 0;
        *(*(*(a1 + 88) + 8) + 24) = 0;
        v24 = v14;
LABEL_36:

        goto LABEL_37;
      }

      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = 0;

      if (!*(a1 + 64))
      {
        v21 = 0;
LABEL_29:
        v24 = v14;
LABEL_30:
        if ([*(a1 + 32) hasChanges])
        {
          v50 = *(a1 + 32);
          v51 = *(*(a1 + 80) + 8);
          v69 = *(v51 + 40);
          v52 = [v50 save:&v69];
          objc_storeStrong((v51 + 40), v69);
          *(*(*(a1 + 88) + 8) + 24) = v52;
          if (*(*(*(a1 + 88) + 8) + 24) == 1 && !*(*(*(a1 + 80) + 8) + 40))
          {
            v60 = DNDSLogAppSpecificSettingsManager;
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
            {
              v61 = *(a1 + 40);
              v62 = *(a1 + 48);
              *buf = 138543618;
              v74 = v61;
              v75 = 2114;
              v76 = v62;
              _os_log_impl(&dword_24912E000, v60, OS_LOG_TYPE_DEFAULT, "Committed settings for %{public}@ in %{public}@", buf, 0x16u);
            }

            v63 = *(a1 + 72);
            v64 = *(a1 + 48);
            if (*(a1 + 64))
            {
              v72 = *(a1 + 48);
              v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
              v66 = v63;
              v67 = v65;
              v68 = 0;
            }

            else
            {
              v71 = *(a1 + 48);
              v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
              v66 = v63;
              v67 = 0;
              v68 = v65;
            }

            [v66 _modesToSave:v67 modesToDelete:v68];
          }

          else
          {
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
            {
              __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_3(a1 + 80);
            }

            v53 = MEMORY[0x277CCA9B8];
            v54 = *MEMORY[0x277D05840];
            v77 = *MEMORY[0x277CCA450];
            v78 = @"Failed to commit settings.";
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v56 = [v53 errorWithDomain:v54 code:1008 userInfo:v55];
            v57 = *(*(a1 + 80) + 8);
            v58 = *(v57 + 40);
            *(v57 + 40) = v56;

            *(*(*(a1 + 88) + 8) + 24) = 0;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v27 = MEMORY[0x277CCABB0];
        v28 = v18;
        v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        *buf = 138412290;
        v74 = v29;
        _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Fetched %@ settings for set/clear.", buf, 0xCu);
      }

      v30 = [v17 firstObject];
      v21 = v30;
      v31 = *(a1 + 64);
      if (!v31)
      {
        if (v30)
        {
          [*(a1 + 32) deleteObject:v30];
        }

        goto LABEL_29;
      }

      if (v30)
      {
        v24 = v14;
LABEL_22:
        [*(a1 + 96) completeManagedObject:v21 forAppSpecificSettings:v31];
        goto LABEL_30;
      }
    }

    v32 = MEMORY[0x277CBE408];
    v33 = [*(a1 + 96) appSpecificSettingsEntity];
    v24 = [v32 entityForName:v33 inManagedObjectContext:*(a1 + 32)];

    v21 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v24 insertIntoManagedObjectContext:*(a1 + 32)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_2(v43);
      }

      *(*(*(a1 + 88) + 8) + 24) = 0;
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277D05840];
      v79 = *MEMORY[0x277CCA450];
      v80 = @"Unexpected managed object class for entity.";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v47 = [v44 errorWithDomain:v45 code:1006 userInfo:v46];
      v48 = *(*(a1 + 80) + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = v47;

      goto LABEL_36;
    }

    [v21 setIdentifier:*(a1 + 56)];
    v34 = [[DNDApplicationMO alloc] initWithContext:*(a1 + 32)];
    v35 = [*(a1 + 40) bundleID];
    [(DNDApplicationMO *)v34 setBundleIdentifier:v35];

    [*(a1 + 32) refreshObject:v34 mergeChanges:1];
    [v21 setApplication:v34];
    v36 = [[DNDFocusModeMO alloc] initWithContext:*(a1 + 32)];
    [(DNDFocusModeMO *)v36 setIdentifier:*(a1 + 48)];
    [*(a1 + 32) refreshObject:v36 mergeChanges:1];
    [v21 setMode:v36];

    v31 = *(a1 + 64);
    goto LABEL_22;
  }

  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
  }

  v22 = MEMORY[0x277CCA9B8];
  v23 = *MEMORY[0x277D05840];
  v83 = *MEMORY[0x277CCA450];
  v84 = @"Model does not contain provided entity name.";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  v25 = [v22 errorWithDomain:v23 code:1006 userInfo:v24];
  v26 = *(*(a1 + 80) + 8);
  v21 = *(v26 + 40);
  *(v26 + 40) = v25;
LABEL_37:

  v59 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeModeSpecificSettingsForModeIdentifier:(id)a3 error:(id *)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[DNDSKeybag sharedInstance];
  v8 = [v7 hasUnlockedSinceBoot];

  if (v8)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__13;
    v30 = __Block_byref_object_dispose__13;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v9 = [(DNDSAppSpecificSettingsManager *)self store];
    v10 = [v9 newManagedObjectContext];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke;
    v16[3] = &unk_278F8B978;
    v11 = v10;
    v17 = v11;
    v20 = &v26;
    v21 = &v22;
    v18 = v6;
    v19 = self;
    [v11 performBlockAndWait:v16];
    if (a4)
    {
      *a4 = v27[5];
    }

    LOBYTE(a4) = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager removeModeSpecificSettingsForModeIdentifier:error:];
    }

    if (a4)
    {
      v12 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"Attempt to remove mode specific settings before first unlock.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a4 = [v12 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v13];

      LOBYTE(a4) = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return a4 & 1;
}

void __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke(uint64_t a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v50 = @"MODE_ID";
  v51[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"ModeForModeIdentifier" substitutionVariables:v5];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v6];
  [v7 setResultType:2];
  v8 = *(a1 + 32);
  v9 = a1 + 56;
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v8 executeRequest:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = DNDSLogAppSpecificSettingsManager;
  v13 = MEMORY[0x277D05840];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1(a1 + 56);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *v13;
    v48 = *MEMORY[0x277CCA450];
    v49 = @"Failed to remote settings.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v17 = [v14 errorWithDomain:v15 code:1008 userInfo:v16];
    v18 = *(*v9 + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*v9 + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  else if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v12;
    v23 = [v11 result];
    v24 = *(a1 + 40);
    *buf = 138543618;
    v45 = v23;
    v46 = 2114;
    v47 = v24;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ settings for mode %{public}@.", buf, 0x16u);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v25 = *(a1 + 32);
    v26 = *(*(a1 + 56) + 8);
    v39 = *(v26 + 40);
    v27 = [v25 save:&v39];
    objc_storeStrong((v26 + 40), v39);
    *(*(*(a1 + 64) + 8) + 24) = v27;
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && !*(*(*v9 + 8) + 40))
    {
      v35 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 40);
        *buf = 138543362;
        v45 = v36;
        _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Committed settings removal for mode %{public}@", buf, 0xCu);
      }

      v37 = *(a1 + 48);
      v41 = *(a1 + 40);
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v37 _modesToSave:0 modesToDelete:v38];
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1(a1 + 56);
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277D05840];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Failed to remove settings.";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v31 = [v28 errorWithDomain:v29 code:1008 userInfo:v30];
      v32 = *(*(a1 + 56) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:(id)a3 error:(id *)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[DNDSKeybag sharedInstance];
  v8 = [v7 hasUnlockedSinceBoot];

  if (v8)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__13;
    v33 = __Block_byref_object_dispose__13;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__13;
    v27 = __Block_byref_object_dispose__13;
    v28 = 0;
    v9 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v6;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Removing settings for modes not in %{public}@.", buf, 0xCu);
    }

    v10 = [(DNDSAppSpecificSettingsManager *)self store];
    v11 = [v10 newManagedObjectContext];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke;
    v17[3] = &unk_278F8B978;
    v18 = v6;
    v12 = v11;
    v21 = &v29;
    v22 = &v23;
    v19 = v12;
    v20 = self;
    [v12 performBlockAndWait:v17];
    if (a4)
    {
      *a4 = v30[5];
    }

    a4 = v24[5];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager removeModeSpecificSettingsForModeIdentifier:error:];
    }

    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = @"Attempt to remove mode specific settings before first unlock.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *a4 = [v13 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v14];

      a4 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return a4;
}

void __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v79[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier IN (%@)", *(a1 + 32)];
  v3 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v2];

  v4 = +[DNDFocusModeMO fetchRequest];
  [v4 setPredicate:v3];
  [v4 setIncludesPendingChanges:1];
  v5 = *(v1 + 40);
  v6 = *(*(v1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(v1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_1(v1 + 56);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D05840];
    v78 = *MEMORY[0x277CCA450];
    v79[0] = @"Failed to fetch settings to delete.";
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
    v10 = [v8 errorWithDomain:v9 code:1008 userInfo:?];
    v11 = *(*(v1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v47 = v1 + 56;
    v49 = v4;
    v50 = v3;
    v54 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v48 = v7;
    v51 = v7;
    v55 = [v51 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v55)
    {
      v52 = *v66;
      v53 = v1;
      do
      {
        v13 = 0;
        do
        {
          if (*v66 != v52)
          {
            objc_enumerationMutation(v51);
          }

          v58 = v13;
          v14 = *(*(&v65 + 1) + 8 * v13);
          v57 = [v14 identifier];
          v15 = [MEMORY[0x277CBEB58] set];
          v59 = [MEMORY[0x277CBEB58] set];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v56 = v14;
          v16 = [v14 settings];
          v17 = [v16 countByEnumeratingWithState:&v61 objects:v76 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v62;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v62 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v61 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = MEMORY[0x277D058C8];
                  v23 = v21;
                  v24 = [v22 alloc];
                  v25 = [v23 application];
                  v26 = [v25 bundleIdentifier];
                  v27 = [v24 initWithBundleID:v26];
                  [v15 addObject:v27];
                }

                else
                {
                  v28 = [v21 dnd_settingsType];
                  v25 = NSStringFromClass(v28);
                  if ([&unk_285C53C30 containsObject:v25])
                  {
                    v29 = [(objc_class *)v28 appSpecificSettingsForManagedObject:v21];
                    if (v29)
                    {
                      [v59 addObject:v29];
                    }
                  }

                  else
                  {
                    v30 = DNDSLogAppSpecificSettingsManager;
                    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543362;
                      v73 = v25;
                    }
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v61 objects:v76 count:16];
            }

            while (v18);
          }

          v31 = objc_opt_new();
          [v31 setApplicationIdentifiers:v15];
          [v31 setModeSpecificSettings:v59];
          [v54 setObject:v31 forKeyedSubscript:v57];
          v32 = DNDSLogAppSpecificSettingsManager;
          if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v73 = v57;
            v74 = 2114;
            v75 = v15;
            _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Removing settings for %{public}@; apps=%{public}@", buf, 0x16u);
          }

          v1 = v53;
          [*(v53 + 40) deleteObject:v56];

          v13 = v58 + 1;
        }

        while (v58 + 1 != v55);
        v55 = [v51 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v55);
    }

    if (![*(v1 + 40) hasChanges])
    {
      v4 = v49;
      v3 = v50;
      v7 = v48;
      goto LABEL_37;
    }

    v33 = *(v1 + 40);
    v34 = *(*(v1 + 56) + 8);
    v60 = *(v34 + 40);
    v35 = [v33 save:&v60];
    objc_storeStrong((v34 + 40), v60);
    v4 = v49;
    v3 = v50;
    if (v35 && !*(*(*v47 + 8) + 40))
    {
      v42 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v42, OS_LOG_TYPE_DEFAULT, "Changes did commit.", buf, 2u);
      }

      v43 = [v54 copy];
      v44 = *(*(v1 + 64) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      v46 = *(v1 + 48);
      v12 = [v54 allKeys];
      [v46 _modesToSave:0 modesToDelete:v12];
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_2(v47);
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D05840];
      v70 = *MEMORY[0x277CCA450];
      v71 = @"Failed to commit changes.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v38 = [v36 errorWithDomain:v37 code:1008 userInfo:v12];
      v39 = *(*v47 + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    v7 = v48;
  }

LABEL_37:
  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeAppSpecificSettingsForApplicationIdentifier:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[DNDSKeybag sharedInstance];
  v8 = [v7 hasUnlockedSinceBoot];

  if (v8)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__13;
    v29 = __Block_byref_object_dispose__13;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v9 = [(DNDSAppSpecificSettingsManager *)self store];
    v10 = [v9 newManagedObjectContext];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke;
    v16[3] = &unk_278F8B9A0;
    v11 = v10;
    v17 = v11;
    v18 = v6;
    v19 = &v25;
    v20 = &v21;
    [v11 performBlockAndWait:v16];
    if (a4)
    {
      *a4 = v26[5];
    }

    LOBYTE(a4) = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager removeAppSpecificSettingsForApplicationIdentifier:error:];
    }

    if (a4)
    {
      v12 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = @"Attempt to remove app specific settings before first unlock.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a4 = [v12 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v13];

      LOBYTE(a4) = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return a4 & 1;
}

void __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke(uint64_t a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v38 = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v39[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"ApplicationForBundleIdentifier" substitutionVariables:v5];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v6];
  [v7 setResultType:2];
  v8 = *(a1 + 32);
  v9 = a1 + 48;
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v8 executeRequest:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = DNDSLogAppSpecificSettingsManager;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1(a1 + 48);
    }

    v13 = *(*v9 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  else if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v12;
    v16 = [v11 result];
    v17 = *(a1 + 40);
    *buf = 138543618;
    v35 = v16;
    v36 = 2114;
    v37 = v17;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ settings for app %{public}@.", buf, 0x16u);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 48) + 8);
    v30 = *(v19 + 40);
    v20 = [v18 save:&v30];
    objc_storeStrong((v19 + 40), v30);
    *(*(*(a1 + 56) + 8) + 24) = v20;
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && !*(*(*v9 + 8) + 40))
    {
      v28 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 40);
        *buf = 138543362;
        v35 = v29;
        _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Removed settings for app %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke_cold_2(a1 + 48);
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D05840];
      v32 = *MEMORY[0x277CCA450];
      v33 = @"Failed to remove app settings.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v24 = [v21 errorWithDomain:v22 code:1008 userInfo:v23];
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_allModeSpecificSettingsOfType:(Class)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__DNDSAppSpecificSettingsManager__allModeSpecificSettingsOfType___block_invoke;
  v8[3] = &unk_278F8B9C8;
  v6 = v5;
  v9 = v6;
  v10 = a3;
  [(DNDSAppSpecificSettingsManager *)self _allPerModeSettingsMOsOfType:a3 processBlock:v8];

  return v6;
}

void __65__DNDSAppSpecificSettingsManager__allModeSpecificSettingsOfType___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 mode];
  v4 = [v3 identifier];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [*(a1 + 40) appSpecificSettingsForManagedObject:v9];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v4];
    [v8 addObject:v7];
  }
}

- (id)_allAppSpecificSettingsOfType:(Class)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke;
  v8[3] = &unk_278F8B9C8;
  v6 = v5;
  v9 = v6;
  v10 = a3;
  [(DNDSAppSpecificSettingsManager *)self _allPerModeSettingsMOsOfType:a3 processBlock:v8];

  return v6;
}

void __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mode];
    v5 = [v4 identifier];

    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
    }

    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = objc_alloc(MEMORY[0x277D058C8]);
    v10 = [v3 application];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 initWithBundleID:v11];

    v13 = [v8 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
      [v8 setObject:v14 forKeyedSubscript:v12];
    }

    v15 = [*(a1 + 40) appSpecificSettingsForManagedObject:v3];
    if (v15)
    {
      v16 = [v8 objectForKeyedSubscript:v12];
      v17 = [v16 setByAddingObject:v15];
      [v8 setObject:v17 forKeyedSubscript:v12];
    }
  }

  else
  {
    v18 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke_cold_1(v18);
    }
  }
}

- (void)_allPerModeSettingsMOsOfType:(Class)a3 processBlock:(id)a4
{
  v6 = a4;
  v7 = [(DNDSAppSpecificSettingsManager *)self store];
  v8 = [v7 newManagedObjectContext];

  v9 = [(objc_class *)a3 appSpecificSettingsEntity];
  v10 = [v8 persistentStoreCoordinator];
  v11 = [v10 managedObjectModel];
  v12 = [v11 entitiesByName];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (v13)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke;
    v14[3] = &unk_278F89E80;
    v15 = v9;
    v16 = v6;
    [v8 performBlockAndWait:v14];
  }

  else if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
  }
}

void __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v17 = 0;
  v3 = [v2 execute:&v17];
  v4 = v17;
  if (v4)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke_cold_1();
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          (*(*(a1 + 40) + 16))(*(a1 + 40));
          objc_autoreleasePoolPop(v11);
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)a3 didFetchRecord:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager idsSyncEngine:didFetchRecord:];
  }
}

- (void)idsSyncEngine:(id)a3 prepareRecordToSave:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "prepareRecordToSave: %@", &v11, 0xCu);
  }

  v7 = [v5 recordID];
  v8 = [v7 identifier];

  v9 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsDictinariesForModeIdentifier:v8];
  [v5 setObject:v9 forKey:@"DNDSAppSpecificSettingsRecord"];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)appSpecificSettingsDictinariesForModeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(DNDSAppSpecificSettingsManager *)self store];
  v7 = [v6 newManagedObjectContext];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__DNDSAppSpecificSettingsManager_appSpecificSettingsDictinariesForModeIdentifier___block_invoke;
  v14[3] = &unk_278F89E30;
  v15 = v7;
  v16 = v4;
  v8 = v5;
  v17 = v8;
  v9 = v4;
  v10 = v7;
  [v10 performBlockAndWait:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

void __82__DNDSAppSpecificSettingsManager_appSpecificSettingsDictinariesForModeIdentifier___block_invoke(uint64_t a1)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v40 = @"MODE_ID";
  v41[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForMode" substitutionVariables:v5];

  v7 = +[DNDPerAppSettingsMO entity];
  [v6 setEntity:v7];

  v38 = 0;
  v8 = [v6 execute:&v38];
  v9 = v38;
  if (v9)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke_cold_1();
    }
  }

  else
  {
    v28 = v8;
    v29 = v6;
    v31 = a1;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0x277CBE000uLL;
      v13 = *v35;
      v30 = *v35;
      do
      {
        v14 = 0;
        v15 = sel_dictionaryRepresentationForAppSpecificSettings_;
        v32 = v11;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * v14);
          v17 = [*(v12 + 2872) dictionaryWithCapacity:4];
          v18 = [v16 dnd_settingsType];
          if (objc_opt_respondsToSelector())
          {
            v19 = NSStringFromClass(v18);
            v20 = [v16 identifier];
            [v16 application];
            v21 = v15;
            v23 = v22 = v12;
            v24 = [v23 bundleIdentifier];

            v25 = [(objc_class *)v18 appSpecificSettingsForManagedObject:v16];
            v26 = [(objc_class *)v18 dictionaryRepresentationForAppSpecificSettings:v25];
            [v17 setObject:v24 forKeyedSubscript:@"DNDSAppSpecificSettingsApp"];
            [v17 setObject:v20 forKeyedSubscript:@"DNDSAppSpecificSettingsIdentifier"];
            [v17 setObject:v19 forKeyedSubscript:@"DNDSAppSpecificSettingsType"];
            [v17 setObject:v26 forKeyedSubscript:@"DNDSAppSpecificSettingsPayload"];
            [*(v31 + 48) addObject:v17];

            v12 = v22;
            v15 = v21;

            v13 = v30;
            v11 = v32;
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    v8 = v28;
    v6 = v29;
    v9 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:(id)a3 recordWithIDWasDeleted:(id)a4
{
  v4 = a4;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager idsSyncEngine:recordWithIDWasDeleted:];
  }
}

- (void)purgeRecordsForIDSSyncEngine:(id)a3
{
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager purgeRecordsForIDSSyncEngine:];
  }
}

- (id)recordIDsForIDSSyncEngine:(id)a3
{
  v4 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "recordIDsForIDSSyncEngine", buf, 2u);
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(DNDSAppSpecificSettingsManager *)self store];
  v7 = [v6 newManagedObjectContext];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DNDSAppSpecificSettingsManager_recordIDsForIDSSyncEngine___block_invoke;
  v13[3] = &unk_278F89F48;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v9 = v7;
  [v9 performBlockAndWait:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __60__DNDSAppSpecificSettingsManager_recordIDsForIDSSyncEngine___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[DNDFocusModeMO fetchRequest];
  v3 = *(a1 + 32);
  v22 = 0;
  v17 = v2;
  v4 = [v3 executeFetchRequest:? error:?];
  v16 = v22;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = *(a1 + 40);
        v12 = [DNDSIDSRecordID alloc];
        v13 = [v10 identifier];
        v14 = [(DNDSIDSRecordID *)v12 initWithIdentifier:v13 zone:@"DNDSAppSpecificSettings"];
        [v11 addObject:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_modesToSave:(id)a3 modesToDelete:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[DNDSIDSRecordID alloc] initWithIdentifier:*(*(&v27 + 1) + 8 * v12) zone:@"DNDSAppSpecificSettings"];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[DNDSIDSRecordID alloc] initWithIdentifier:*(*(&v23 + 1) + 8 * v19) zone:@"DNDSAppSpecificSettings"];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine addRecordIDsToSave:v7 recordIDsToDelete:v14];
  v21 = *MEMORY[0x277D85DE8];
}

- (DNDSAppSpecificSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke_cold_1(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_24912E000, v6, OS_LOG_TYPE_ERROR, "Unexpected result type for appSpecificSettings: %{public}@", a1, 0xCu);
}

- (void)_perModeSettingsMOsOfType:modeIdentifier:processBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Error querying settings: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to fetch settings: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setModeSpecificSettings:identifier:type:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to fetch existing settings: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_6(&dword_24912E000, v4, v5, "Unexpected class for managed object: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to commit settings: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setAppSpecificSettings:identifier:type:applicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeModeSpecificSettingsForModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to remove settings for mode: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to fetch modes to delete: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to commit changes for modes not in: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeAppSpecificSettingsForApplicationIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v1, v2, "Failed to remove settings for app: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Unexpected result type for appSpecificSettings: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error querying settings: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:didFetchRecord:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)idsSyncEngine:recordWithIDWasDeleted:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeRecordsForIDSSyncEngine:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end