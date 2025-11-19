@interface IRServiceContainer
+ (BOOL)deleteDatabaseWithPersistenceManager:(id)a3;
+ (id)createServiceWithClientIdentifier:(id)a3 serviceIdentifier:(id)a4 parameters:(id)a5 persistenceManager:(id)a6;
+ (id)exportDatabaseWithPersistenceManager:(id)a3;
+ (id)getServiceTokensForClientIdentifier:(id)a3 persistenceManager:(id)a4;
+ (id)getServicesWithPersistenceManager:(id)a3;
+ (void)deleteServiceWithToken:(id)a3 persistenceManager:(id)a4;
- (IRServiceContainer)initWithServiceIdentifier:(id)a3 delegate:(id)a4 avOutputDeviceProvider:(id)a5 biomeProvider:(id)a6 rapportProvider:(id)a7 proximityProvider:(id)a8 persistenceManager:(id)a9 displayMonitor:(id)a10 audioAVOutputContextController:(id)a11 isLowLatencyMiLo:(BOOL)a12;
- (IRServiceContainerDelegate)delegate;
- (id)getStatistics;
- (id)requestCurrentContextWithBundleID:(id)a3;
- (int64_t)getUpdateMode;
- (void)_refreshServiceWithDate:(id)a3;
- (void)addEvent:(id)a3 forCandidate:(id)a4;
- (void)clearStatistics;
- (void)dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard:(id)a3;
- (void)dealloc;
- (void)deallocSync;
- (void)deleteCandidate:(id)a3;
- (void)policyManager:(id)a3 didSpotOnLocationCompleteForClientIds:(id)a4 withError:(id)a5;
- (void)policyManager:(id)a3 didUpdateBundlesWithSignificantInteractionPattern:(id)a4;
- (void)policyManager:(id)a3 didUpdateContexts:(id)a4 withReason:(id)a5;
- (void)requestUpdatedBundlesWithSignificantInteraction;
- (void)restartLowLatencyMiLo:(BOOL)a3;
- (void)run;
- (void)setSpotOnLocationWithParameters:(id)a3 andClientID:(id)a4;
- (void)setUpdateMode:(int64_t)a3;
- (void)updateCandidates:(id)a3;
@end

@implementation IRServiceContainer

void __35__IRServiceContainer_getUpdateMode__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 policyManager];
  *(*(*(a1 + 32) + 8) + 24) = [v3 mode];

  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = v5;
    v9 = [v6 numberWithInteger:v7];
    v11 = 136315650;
    v12 = "#service-container, ";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Getting service mode: %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v3 = [(IRServiceContainer *)self queue];
  IRDispatchAsyncWithStrongSelf(v3, self, &__block_literal_global_55_0);
}

- (int64_t)getUpdateMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__IRServiceContainer_getUpdateMode__block_invoke;
  v6[3] = &unk_2797E2548;
  v6[4] = &v7;
  IRDispatchAsyncAndWaitWithStrongSelf(v3, self, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __25__IRServiceContainer_run__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v4 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "#service-container, ";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "%s[%@], Running service", &v8, 0x16u);
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  [v2 _refreshServiceWithDate:v5];

  v6 = [v2 policyManager];
  [v6 run];

  v7 = *MEMORY[0x277D85DE8];
}

- (IRServiceContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IRServiceContainer)initWithServiceIdentifier:(id)a3 delegate:(id)a4 avOutputDeviceProvider:(id)a5 biomeProvider:(id)a6 rapportProvider:(id)a7 proximityProvider:(id)a8 persistenceManager:(id)a9 displayMonitor:(id)a10 audioAVOutputContextController:(id)a11 isLowLatencyMiLo:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v58.receiver = self;
  v58.super_class = IRServiceContainer;
  v27 = [(IRServiceContainer *)&v58 init];
  v28 = v27;
  v54 = v23;
  if (!v27)
  {
    goto LABEL_6;
  }

  [(IRServiceContainer *)v27 setServiceIdentifier:v18];
  v53 = v19;
  [(IRServiceContainer *)v28 setDelegate:v19];
  v52 = v20;
  [(IRServiceContainer *)v28 setAvOutputDeviceProvider:v20];
  v51 = v21;
  [(IRServiceContainer *)v28 setBiomeProvider:v21];
  [(IRServiceContainer *)v28 setRapportProvider:v22];
  [(IRServiceContainer *)v28 setPersistenceManager:v24];
  [(IRServiceContainer *)v28 setProximityProvider:v23];
  [(IRServiceContainer *)v28 setDisplayMonitor:v25];
  [(IRServiceContainer *)v28 setAudioAVOutputContextController:v26];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.intelligentroutingd.serviceContainer", v18];
  v30 = [v29 UTF8String];
  v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = dispatch_queue_create(v30, v31);
  [(IRServiceContainer *)v28 setQueue:v32];

  v33 = [(IRServiceContainer *)v28 persistenceManager];
  LOBYTE(v32) = [v33 connectToStore];

  if ((v32 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRServiceContainer initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:];
    }

    goto LABEL_13;
  }

  v34 = [IRServiceStore alloc];
  v35 = [(IRServiceContainer *)v28 persistenceManager];
  v36 = [(IRServiceContainer *)v28 serviceIdentifier];
  v37 = [(IRServiceStore *)v34 initWithPersistenceManager:v35 serviceIdentifier:v36];
  [(IRServiceContainer *)v28 setServiceStore:v37];

  v38 = [(IRServiceContainer *)v28 serviceStore];
  LOBYTE(v35) = [v38 injectStatisticsRelationship];

  if ((v35 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRServiceContainer initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:];
    }

    goto LABEL_13;
  }

  v39 = [(IRServiceContainer *)v28 serviceStore];
  v40 = [v39 fetchService];

  if (!v40)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRServiceContainer initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:];
    }

LABEL_13:
    v49 = 0;
    v20 = v52;
    v19 = v53;
    v21 = v51;
    goto LABEL_14;
  }

  v41 = objc_alloc_init(IRServiceLogPrefix);
  [(IRServiceContainer *)v28 setServiceLogPrefix:v41];

  v42 = [v40 serviceIdentifier];
  v43 = [(IRServiceContainer *)v28 serviceLogPrefix];
  [v43 setPrefix:v42];

  v44 = [(IRServiceContainer *)v28 queue];
  v45 = *MEMORY[0x277D21308];
  v46 = [(IRServiceContainer *)v28 serviceLogPrefix];
  dispatch_queue_set_specific(v44, v45, v46, 0);

  v47 = [(IRServiceContainer *)v28 queue];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __210__IRServiceContainer_initWithServiceIdentifier_delegate_avOutputDeviceProvider_biomeProvider_rapportProvider_proximityProvider_persistenceManager_displayMonitor_audioAVOutputContextController_isLowLatencyMiLo___block_invoke;
  v55[3] = &unk_2797E2468;
  v56 = v40;
  v57 = a12;
  v48 = v40;
  IRDispatchSyncWithStrongSelf(v47, v28, v55);

  v20 = v52;
  v19 = v53;
  v21 = v51;
LABEL_6:
  v49 = v28;
LABEL_14:

  return v49;
}

void __210__IRServiceContainer_initWithServiceIdentifier_delegate_avOutputDeviceProvider_biomeProvider_rapportProvider_proximityProvider_persistenceManager_displayMonitor_audioAVOutputContextController_isLowLatencyMiLo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IRMiLoProvider alloc];
  v5 = [v3 queue];
  v6 = [(IRMiLoProvider *)v4 initWithQueue:v5];
  [v3 setMiloProvider:v6];

  v7 = [IRPolicyManager alloc];
  v18 = *(a1 + 32);
  v19 = v7;
  v20 = [v3 queue];
  v8 = [v3 avOutputDeviceProvider];
  v9 = [v3 biomeProvider];
  v10 = [v3 miloProvider];
  v11 = [v3 rapportProvider];
  v12 = [v3 proximityProvider];
  v13 = [v3 serviceStore];
  v14 = [v3 displayMonitor];
  v15 = [v3 audioAVOutputContextController];
  LOBYTE(v17) = *(a1 + 40);
  v16 = [(IRPolicyManager *)v19 initWithService:v18 queue:v20 delegate:v3 avOutputDeviceProvider:v8 biomeProvider:v9 miloProvider:v10 rapportProvider:v11 proximityProvider:v12 serviceStore:v13 displayMonitor:v14 audioAVOutputContextController:v15 isLowLatencyMiLo:v17];
  [v3 setPolicyManager:v16];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRServiceContainer;
  [(IRServiceContainer *)&v2 dealloc];
}

- (void)deallocSync
{
  v3 = [(IRServiceContainer *)self queue];
  IRDispatchSyncWithStrongSelf(v3, self, &__block_literal_global_23);
}

void __33__IRServiceContainer_deallocSync__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277D21308];
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "#service-container, ";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "%s[%@], Sync deallocation", &v9, 0x16u);
  }

  v6 = [v2 policyManager];
  [v6 deallocSync];

  v7 = [v2 queue];
  dispatch_queue_set_specific(v7, *v3, 0, 0);

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)createServiceWithClientIdentifier:(id)a3 serviceIdentifier:(id)a4 parameters:(id)a5 persistenceManager:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277D21260];
  v14 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = v9;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_DEFAULT, "#service-container, Creating a service for client: %@, with parameters = %@", &v28, 0x16u);
  }

  if (([MEMORY[0x277D212D8] isServicePackageSupported:{objc_msgSend(v11, "servicePackage")}] & 1) == 0)
  {
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:];
    }

    goto LABEL_13;
  }

  if (([v12 connectToStore] & 1) == 0)
  {
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:];
    }

LABEL_13:
    v25 = 0;
    goto LABEL_18;
  }

  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = +[IRServiceDO serviceDOWithLastSeenDate:clientIdentifier:serviceIdentifier:servicePackage:](IRServiceDO, "serviceDOWithLastSeenDate:clientIdentifier:serviceIdentifier:servicePackage:", v15, v9, v10, [v11 servicePackage]);

  v17 = [IRServiceStore alloc];
  v18 = [v16 serviceIdentifier];
  v19 = [(IRServiceStore *)v17 initWithPersistenceManager:v12 serviceIdentifier:v18];

  if ([(IRServiceStore *)v19 addService:v16])
  {
    v20 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v16 serviceIdentifier];
      v28 = 138412290;
      v29 = v22;
      _os_log_impl(&dword_25543D000, v21, OS_LOG_TYPE_DEFAULT, "#service-container, Service created: %@", &v28, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277D212E0]);
    v24 = [v16 serviceIdentifier];
    v25 = [v23 initWithServiceIdentifier:v24 servicePackage:{objc_msgSend(v11, "servicePackage")}];
  }

  else
  {
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:];
    }

    v25 = 0;
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (void)deleteServiceWithToken:(id)a3 persistenceManager:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 serviceIdentifier];
  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#service-container, [%@]: Trying to delete service", &v10, 0xCu);
  }

  if ([v5 connectToStore])
  {
    if (![IRMiLoProvider deleteServiceWithToken:v6]&& os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer deleteServiceWithToken:persistenceManager:];
    }

    v8 = [[IRServiceStore alloc] initWithPersistenceManager:v5 serviceIdentifier:v6];
    if (![(IRServiceStore *)v8 deleteService]&& os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer deleteServiceWithToken:persistenceManager:];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
  {
    +[IRServiceContainer deleteServiceWithToken:persistenceManager:];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)exportDatabaseWithPersistenceManager:(id)a3
{
  v109[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#service-container, Trying to export DB", buf, 2u);
  }

  if ([v3 connectToStore])
  {
    v5 = [MEMORY[0x277CCAA00] userLibraryDirectoryPath];
    v6 = [v3 persistenceStore];
    v7 = [v6 url];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v5, @"/Logs/intelligentroutingd/intelligentroutingexport"];
    v108 = *MEMORY[0x277CCA180];
    v109[0] = &unk_2867692E0;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:&v108 count:1];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v8 isDirectory:0];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v101 = 0;
      v12 = v8;
      v13 = [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v89 error:&v101];
      v14 = v101;

      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          v45 = v12;
          +[IRServiceContainer exportDatabaseWithPersistenceManager:];
          v41 = 0;
        }

        else
        {
          v41 = 0;
          v45 = v12;
        }

LABEL_48:

        goto LABEL_49;
      }

      v8 = v12;
    }

    v15 = MEMORY[0x277CBEBC0];
    v16 = MEMORY[0x277CCACA8];
    v85 = v7;
    v86 = v5;
    v17 = [v7 lastPathComponent];
    v84 = v8;
    v18 = [v16 stringWithFormat:@"%@/%@", v8, v17];
    v19 = [v15 fileURLWithPath:v18 isDirectory:0];

    v20 = MEMORY[0x277CBEBC0];
    v21 = [v19 path];
    v22 = [v21 stringByAppendingString:@"-wal"];
    v23 = [v20 fileURLWithPath:v22 isDirectory:0];

    v24 = MEMORY[0x277CBEBC0];
    v25 = [v19 path];
    v26 = [v25 stringByAppendingString:@"-shm"];
    v27 = [v24 fileURLWithPath:v26 isDirectory:0];

    v82 = v27;
    v83 = v23;
    v87 = v19;
    [MEMORY[0x277CBEA60] arrayWithObjects:{v19, v23, v27, 0}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = v100 = 0u;
    v28 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v98;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v98 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v97 + 1) + 8 * i);
          v34 = [MEMORY[0x277CCAA00] defaultManager];
          v35 = [v33 path];
          v36 = [v34 fileExistsAtPath:v35];

          if (v36)
          {
            v37 = [MEMORY[0x277CCAA00] defaultManager];
            v38 = [v33 path];
            v96 = v30;
            v39 = [v37 removeItemAtPath:v38 error:&v96];
            v40 = v96;

            if ((v39 & 1) == 0)
            {
              v42 = *MEMORY[0x277D21260];
              if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
              {
                [(IRServiceContainer *)v42 exportDatabaseWithPersistenceManager:v33, v40];
              }

              v41 = 0;
              v14 = v87;
              v43 = obj;
              v44 = obj;
              v7 = v85;
              v5 = v86;
              v45 = v84;
              goto LABEL_47;
            }

            v30 = v40;
          }
        }

        v29 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v30 = 0;
    }

    v80 = v30;

    v46 = objc_alloc(MEMORY[0x277CBE4D8]);
    v47 = [v3 managedObjectModel];
    v48 = [v46 initWithManagedObjectModel:v47];

    v49 = [v3 persistenceStore];
    v50 = [v49 options];
    v51 = [v49 url];
    v52 = [v49 options];
    v78 = v49;
    v53 = [v49 storeType];
    v95 = 0;
    v54 = [v48 replacePersistentStoreAtURL:v87 destinationOptions:v50 withPersistentStoreFromURL:v51 sourceOptions:v52 storeType:v53 error:&v95];
    v81 = v95;

    v55 = *MEMORY[0x277D21260];
    v79 = v48;
    v56 = *MEMORY[0x277D21260];
    if (v54)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v55;
        v58 = [v87 path];
        *buf = 138412290;
        v103 = v58;
        _os_log_impl(&dword_25543D000, v57, OS_LOG_TYPE_DEFAULT, "#service-container, Successfully exported database to: %@", buf, 0xCu);
      }

      v77 = v3;
      v41 = objc_alloc_init(MEMORY[0x277CBEA60]);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v59 = obj;
      v60 = [v59 countByEnumeratingWithState:&v91 objects:v106 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v92;
        v63 = 0x277CCA000uLL;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v92 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v65 = *(*(&v91 + 1) + 8 * j);
            v66 = [*(v63 + 2560) defaultManager];
            v67 = [v65 path];
            v68 = [v66 fileExistsAtPath:v67];

            if (v68)
            {
              v69 = [*(v63 + 2560) defaultManager];
              v70 = [v65 path];
              v90 = 0;
              v71 = [v69 setAttributes:v89 ofItemAtPath:v70 error:&v90];
              v72 = v90;

              if ((v71 & 1) == 0)
              {
                v73 = *MEMORY[0x277D21260];
                if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v103 = v65;
                  v104 = 2112;
                  v105 = v72;
                  _os_log_error_impl(&dword_25543D000, v73, OS_LOG_TYPE_ERROR, "#service-container, [ErrorId - export database: error setting file permissions] failed to change permissions of file: %@ with error: %@", buf, 0x16u);
                }
              }

              v74 = [v41 arrayByAddingObject:v65];

              v41 = v74;
              v63 = 0x277CCA000;
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v91 objects:v106 count:16];
        }

        while (v61);
      }

      v3 = v77;
      v7 = v85;
      v5 = v86;
    }

    else
    {
      v7 = v85;
      v5 = v86;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[IRServiceContainer exportDatabaseWithPersistenceManager:];
      }

      v41 = 0;
    }

    v45 = v84;
    v14 = v87;

    v43 = obj;
    v40 = v80;
    v44 = v81;
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
  {
    +[IRServiceContainer exportDatabaseWithPersistenceManager:];
  }

  v41 = 0;
LABEL_49:

  v75 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (BOOL)deleteDatabaseWithPersistenceManager:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D21260];
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v3 getLocalStoreURL];
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEFAULT, "#service-container, Attempting to delete database at: %@", buf, 0xCu);
  }

  if ([v3 disconnectFromStore])
  {
    v8 = [v3 persistentStoreCoordinator];
    v9 = [v3 getLocalStoreURL];
    v10 = *MEMORY[0x277CBE2E8];
    v17 = 0;
    v11 = [v8 destroyPersistentStoreAtURL:v9 withType:v10 options:0 error:&v17];
    v12 = v17;

    v13 = *v4;
    v14 = *v4;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25543D000, v13, OS_LOG_TYPE_DEFAULT, "#service-container, Database deleted", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer deleteDatabaseWithPersistenceManager:];
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)getServiceTokensForClientIdentifier:(id)a3 persistenceManager:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D21260];
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#service-container, Trying to get service tokens for client identifier: %@", buf, 0xCu);
  }

  if ([v6 connectToStore])
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [IRServiceStore fetchAllServicesContainingClientIdentifier:v5 persistenceManager:v6];
    if (v10)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __77__IRServiceContainer_getServiceTokensForClientIdentifier_persistenceManager___block_invoke;
      v13[3] = &unk_2797E1510;
      v14 = v9;
      [v10 enumerateObjectsUsingBlock:v13];
    }
  }

  else
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer getServiceTokensForClientIdentifier:persistenceManager:];
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __77__IRServiceContainer_getServiceTokensForClientIdentifier_persistenceManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D212E0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 serviceIdentifier];
  v7 = [v4 servicePackage];

  v8 = [v5 initWithServiceIdentifier:v6 servicePackage:v7];
  [*(a1 + 32) addObject:v8];
}

+ (id)getServicesWithPersistenceManager:(id)a3
{
  v3 = a3;
  if ([v3 connectToStore])
  {
    v4 = [IRServiceStore fetchAllServicesWithPersistenceManager:v3];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer getServicesWithPersistenceManager:];
    }

    v4 = 0;
  }

  return v4;
}

- (void)updateCandidates:(id)a3
{
  v4 = a3;
  v5 = [(IRServiceContainer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__IRServiceContainer_updateCandidates___block_invoke;
  v7[3] = &unk_2797E24B0;
  v8 = v4;
  v6 = v4;
  IRDispatchAsyncWithStrongSelf(v5, self, v7);
}

void __39__IRServiceContainer_updateCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 updateCandidates:*(a1 + 32)];
}

- (void)deleteCandidate:(id)a3
{
  v4 = a3;
  v5 = [(IRServiceContainer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__IRServiceContainer_deleteCandidate___block_invoke;
  v7[3] = &unk_2797E24B0;
  v8 = v4;
  v6 = v4;
  IRDispatchAsyncWithStrongSelf(v5, self, v7);
}

void __38__IRServiceContainer_deleteCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 deleteCandidate:*(a1 + 32)];
}

- (void)addEvent:(id)a3 forCandidate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IRServiceContainer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__IRServiceContainer_addEvent_forCandidate___block_invoke;
  v11[3] = &unk_2797E24D8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  IRDispatchAsyncWithStrongSelf(v8, self, v11);
}

void __44__IRServiceContainer_addEvent_forCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 addEvent:*(a1 + 32) forCandidate:*(a1 + 40)];
}

- (id)requestCurrentContextWithBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  v5 = [(IRServiceContainer *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__IRServiceContainer_requestCurrentContextWithBundleID___block_invoke;
  v9[3] = &unk_2797E2500;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  IRDispatchAsyncAndWaitWithStrongSelf(v5, self, v9);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__IRServiceContainer_requestCurrentContextWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v12 = 136315650;
    v13 = "#service-container, ";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_DEFAULT, "%s[%@], Requesting current context, with bundleID: %@", &v12, 0x20u);
  }

  v7 = [v3 policyManager];
  v8 = [v7 requestCurrentContextWithBundleID:*(a1 + 32)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSpotOnLocationWithParameters:(id)a3 andClientID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IRServiceContainer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__IRServiceContainer_setSpotOnLocationWithParameters_andClientID___block_invoke;
  v11[3] = &unk_2797E24D8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  IRDispatchAsyncWithStrongSelf(v8, self, v11);
}

void __66__IRServiceContainer_setSpotOnLocationWithParameters_andClientID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 setSpotOnLocationWithParameters:*(a1 + 32) andClientID:*(a1 + 40)];
}

- (void)requestUpdatedBundlesWithSignificantInteraction
{
  v3 = [(IRServiceContainer *)self queue];
  IRDispatchAsyncWithStrongSelf(v3, self, &__block_literal_global_57_0);
}

void __69__IRServiceContainer_requestUpdatedBundlesWithSignificantInteraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 policyManager];
  [v2 requestUpdatedBundlesWithSignificantInteraction];
}

- (void)dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard:(id)a3
{
  v4 = a3;
  v5 = [(IRServiceContainer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__IRServiceContainer_dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard___block_invoke;
  v7[3] = &unk_2797E24B0;
  v8 = v4;
  v6 = v4;
  IRDispatchAsyncAndWaitWithStrongSelf(v5, self, v7);
}

void __74__IRServiceContainer_dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 date];
  v6 = [v4 serviceStore];
  v7 = [v6 cleanupWithDate:v5 dateIntervalOfMiLoPredictionsToDiscard:*(a1 + 32)];

  [v4 _refreshServiceWithDate:v5];
  v8 = [v4 policyManager];

  [v8 synchronizeAndFetchFromDBOnDisk];
  v9 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v10 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277CBEAA8];
    v13 = v10;
    v14 = [v12 date];
    [v14 timeIntervalSinceDate:v5];
    v15 = [v11 numberWithDouble:?];
    v16 = v15;
    v17 = @"Fail";
    v19 = 136315906;
    v20 = "#service-container, ";
    v21 = 2112;
    v22 = v9;
    if (v7)
    {
      v17 = @"Ok";
    }

    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_25543D000, v13, OS_LOG_TYPE_INFO, "%s[%@], Finished DB cleanup in: %@ seconds with status: %@", &v19, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)restartLowLatencyMiLo:(BOOL)a3
{
  v5 = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__IRServiceContainer_restartLowLatencyMiLo___block_invoke;
  v6[3] = &__block_descriptor_33_e28_v16__0__IRServiceContainer_8l;
  v7 = a3;
  IRDispatchAsyncWithStrongSelf(v5, self, v6);
}

void __44__IRServiceContainer_restartLowLatencyMiLo___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 policyManager];
  [v3 restartLowLatencyMiLo:*(a1 + 32)];

  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = [v6 numberWithBool:v7];
    v11 = 136315650;
    v12 = "#service-container, ";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Finished restartLowLatencyMiLo: %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getStatistics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v3 = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__IRServiceContainer_getStatistics__block_invoke;
  v6[3] = &unk_2797E2548;
  v6[4] = &v7;
  IRDispatchAsyncAndWaitWithStrongSelf(v3, self, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__IRServiceContainer_getStatistics__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 policyManager];
  v4 = [v3 getStatistics];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v11 = 136315650;
    v12 = "#service-container, ";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Getting statistics: %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearStatistics
{
  v3 = [(IRServiceContainer *)self queue];
  IRDispatchAsyncWithStrongSelf(v3, self, &__block_literal_global_66);
}

void __37__IRServiceContainer_clearStatistics__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "#service-container, ";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_INFO, "%s[%@], Clearing statistics", &v7, 0x16u);
  }

  v5 = [v2 policyManager];
  [v5 clearStatistics];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateMode:(int64_t)a3
{
  v5 = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__IRServiceContainer_setUpdateMode___block_invoke;
  v6[3] = &__block_descriptor_40_e28_v16__0__IRServiceContainer_8l;
  v6[4] = a3;
  IRDispatchAsyncWithStrongSelf(v5, self, v6);
}

void __36__IRServiceContainer_setUpdateMode___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = [v6 numberWithInteger:v7];
    v12 = 136315650;
    v13 = "#service-container, ";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], Setting service mode to: %@", &v12, 0x20u);
  }

  v10 = [v3 policyManager];
  [v10 setUpdateMode:*(a1 + 32)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_refreshServiceWithDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IRServiceContainer *)self serviceStore];
  v6 = [v5 fetchService];

  if (!v6)
  {
    v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "#service-container, ";
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Service not in DB] Cant initialize a new service container, service identifier does not exist in DB", &v14, 0x16u);
    }

    v7 = 0;
    goto LABEL_8;
  }

  v7 = [v6 copyWithReplacementLastSeenDate:v4];

  v8 = [(IRServiceContainer *)self serviceStore];
  v9 = [v8 updateService:v7];

  if ((v9 & 1) == 0)
  {
    v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "#service-container, ";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Service container update during refresh] Could not update service during refresh: %@", &v14, 0x20u);
    }

LABEL_8:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)policyManager:(id)a3 didUpdateContexts:(id)a4 withReason:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(IRServiceContainer *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(IRServiceContainer *)self delegate];
  [v10 serviceContainer:self didUpdateContexts:v8 withReason:v7];
}

- (void)policyManager:(id)a3 didSpotOnLocationCompleteForClientIds:(id)a4 withError:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(IRServiceContainer *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(IRServiceContainer *)self delegate];
  [v10 serviceContainer:self didSpotOnLocationCompleteForClientIds:v8 withError:v7];
}

- (void)policyManager:(id)a3 didUpdateBundlesWithSignificantInteractionPattern:(id)a4
{
  v5 = a4;
  v6 = [(IRServiceContainer *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(IRServiceContainer *)self delegate];
  [v7 serviceContainer:self didUpdateBundlesWithSignificantInteractionPattern:v5];
}

- (void)initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)deleteServiceWithToken:persistenceManager:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)deleteServiceWithToken:persistenceManager:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)deleteServiceWithToken:persistenceManager:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)exportDatabaseWithPersistenceManager:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)exportDatabaseWithPersistenceManager:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_25543D000, v1, OS_LOG_TYPE_ERROR, "#service-container, [ErrorId - export database error] failed to create directory at %@ with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)exportDatabaseWithPersistenceManager:(uint64_t)a3 .cold.3(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 path];
  OUTLINED_FUNCTION_0_0();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_25543D000, v5, OS_LOG_TYPE_ERROR, "#service-container, [ErrorId - export database error] failed to remove existing file: %@ with error: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)exportDatabaseWithPersistenceManager:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)deleteDatabaseWithPersistenceManager:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getServiceTokensForClientIdentifier:persistenceManager:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getServicesWithPersistenceManager:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end