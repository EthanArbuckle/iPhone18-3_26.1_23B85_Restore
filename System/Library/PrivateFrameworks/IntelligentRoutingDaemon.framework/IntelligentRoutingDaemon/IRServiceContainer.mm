@interface IRServiceContainer
+ (BOOL)deleteDatabaseWithPersistenceManager:(id)manager;
+ (id)createServiceWithClientIdentifier:(id)identifier serviceIdentifier:(id)serviceIdentifier parameters:(id)parameters persistenceManager:(id)manager;
+ (id)exportDatabaseWithPersistenceManager:(id)manager;
+ (id)getServiceTokensForClientIdentifier:(id)identifier persistenceManager:(id)manager;
+ (id)getServicesWithPersistenceManager:(id)manager;
+ (void)deleteServiceWithToken:(id)token persistenceManager:(id)manager;
- (IRServiceContainer)initWithServiceIdentifier:(id)identifier delegate:(id)delegate avOutputDeviceProvider:(id)provider biomeProvider:(id)biomeProvider rapportProvider:(id)rapportProvider proximityProvider:(id)proximityProvider persistenceManager:(id)manager displayMonitor:(id)self0 audioAVOutputContextController:(id)self1 isLowLatencyMiLo:(BOOL)self2;
- (IRServiceContainerDelegate)delegate;
- (id)getStatistics;
- (id)requestCurrentContextWithBundleID:(id)d;
- (int64_t)getUpdateMode;
- (void)_refreshServiceWithDate:(id)date;
- (void)addEvent:(id)event forCandidate:(id)candidate;
- (void)clearStatistics;
- (void)dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard:(id)discard;
- (void)dealloc;
- (void)deallocSync;
- (void)deleteCandidate:(id)candidate;
- (void)policyManager:(id)manager didSpotOnLocationCompleteForClientIds:(id)ids withError:(id)error;
- (void)policyManager:(id)manager didUpdateBundlesWithSignificantInteractionPattern:(id)pattern;
- (void)policyManager:(id)manager didUpdateContexts:(id)contexts withReason:(id)reason;
- (void)requestUpdatedBundlesWithSignificantInteraction;
- (void)restartLowLatencyMiLo:(BOOL)lo;
- (void)run;
- (void)setSpotOnLocationWithParameters:(id)parameters andClientID:(id)d;
- (void)setUpdateMode:(int64_t)mode;
- (void)updateCandidates:(id)candidates;
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
  queue = [(IRServiceContainer *)self queue];
  IRDispatchAsyncWithStrongSelf(queue, self, &__block_literal_global_55_0);
}

- (int64_t)getUpdateMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__IRServiceContainer_getUpdateMode__block_invoke;
  v6[3] = &unk_2797E2548;
  v6[4] = &v7;
  IRDispatchAsyncAndWaitWithStrongSelf(queue, self, v6);

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

- (IRServiceContainer)initWithServiceIdentifier:(id)identifier delegate:(id)delegate avOutputDeviceProvider:(id)provider biomeProvider:(id)biomeProvider rapportProvider:(id)rapportProvider proximityProvider:(id)proximityProvider persistenceManager:(id)manager displayMonitor:(id)self0 audioAVOutputContextController:(id)self1 isLowLatencyMiLo:(BOOL)self2
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  providerCopy = provider;
  biomeProviderCopy = biomeProvider;
  rapportProviderCopy = rapportProvider;
  proximityProviderCopy = proximityProvider;
  managerCopy = manager;
  monitorCopy = monitor;
  controllerCopy = controller;
  v58.receiver = self;
  v58.super_class = IRServiceContainer;
  v27 = [(IRServiceContainer *)&v58 init];
  v28 = v27;
  v54 = proximityProviderCopy;
  if (!v27)
  {
    goto LABEL_6;
  }

  [(IRServiceContainer *)v27 setServiceIdentifier:identifierCopy];
  v53 = delegateCopy;
  [(IRServiceContainer *)v28 setDelegate:delegateCopy];
  v52 = providerCopy;
  [(IRServiceContainer *)v28 setAvOutputDeviceProvider:providerCopy];
  v51 = biomeProviderCopy;
  [(IRServiceContainer *)v28 setBiomeProvider:biomeProviderCopy];
  [(IRServiceContainer *)v28 setRapportProvider:rapportProviderCopy];
  [(IRServiceContainer *)v28 setPersistenceManager:managerCopy];
  [(IRServiceContainer *)v28 setProximityProvider:proximityProviderCopy];
  [(IRServiceContainer *)v28 setDisplayMonitor:monitorCopy];
  [(IRServiceContainer *)v28 setAudioAVOutputContextController:controllerCopy];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.intelligentroutingd.serviceContainer", identifierCopy];
  uTF8String = [identifierCopy UTF8String];
  v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = dispatch_queue_create(uTF8String, v31);
  [(IRServiceContainer *)v28 setQueue:v32];

  persistenceManager = [(IRServiceContainer *)v28 persistenceManager];
  LOBYTE(v32) = [persistenceManager connectToStore];

  if ((v32 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRServiceContainer initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:];
    }

    goto LABEL_13;
  }

  v34 = [IRServiceStore alloc];
  persistenceManager2 = [(IRServiceContainer *)v28 persistenceManager];
  serviceIdentifier = [(IRServiceContainer *)v28 serviceIdentifier];
  v37 = [(IRServiceStore *)v34 initWithPersistenceManager:persistenceManager2 serviceIdentifier:serviceIdentifier];
  [(IRServiceContainer *)v28 setServiceStore:v37];

  serviceStore = [(IRServiceContainer *)v28 serviceStore];
  LOBYTE(persistenceManager2) = [serviceStore injectStatisticsRelationship];

  if ((persistenceManager2 & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRServiceContainer initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:];
    }

    goto LABEL_13;
  }

  serviceStore2 = [(IRServiceContainer *)v28 serviceStore];
  fetchService = [serviceStore2 fetchService];

  if (!fetchService)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRServiceContainer initWithServiceIdentifier:delegate:avOutputDeviceProvider:biomeProvider:rapportProvider:proximityProvider:persistenceManager:displayMonitor:audioAVOutputContextController:isLowLatencyMiLo:];
    }

LABEL_13:
    v49 = 0;
    providerCopy = v52;
    delegateCopy = v53;
    biomeProviderCopy = v51;
    goto LABEL_14;
  }

  v41 = objc_alloc_init(IRServiceLogPrefix);
  [(IRServiceContainer *)v28 setServiceLogPrefix:v41];

  serviceIdentifier2 = [fetchService serviceIdentifier];
  serviceLogPrefix = [(IRServiceContainer *)v28 serviceLogPrefix];
  [serviceLogPrefix setPrefix:serviceIdentifier2];

  queue = [(IRServiceContainer *)v28 queue];
  v45 = *MEMORY[0x277D21308];
  serviceLogPrefix2 = [(IRServiceContainer *)v28 serviceLogPrefix];
  dispatch_queue_set_specific(queue, v45, serviceLogPrefix2, 0);

  queue2 = [(IRServiceContainer *)v28 queue];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __210__IRServiceContainer_initWithServiceIdentifier_delegate_avOutputDeviceProvider_biomeProvider_rapportProvider_proximityProvider_persistenceManager_displayMonitor_audioAVOutputContextController_isLowLatencyMiLo___block_invoke;
  v55[3] = &unk_2797E2468;
  v56 = fetchService;
  loCopy = lo;
  v48 = fetchService;
  IRDispatchSyncWithStrongSelf(queue2, v28, v55);

  providerCopy = v52;
  delegateCopy = v53;
  biomeProviderCopy = v51;
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
  queue = [(IRServiceContainer *)self queue];
  IRDispatchSyncWithStrongSelf(queue, self, &__block_literal_global_23);
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

+ (id)createServiceWithClientIdentifier:(id)identifier serviceIdentifier:(id)serviceIdentifier parameters:(id)parameters persistenceManager:(id)manager
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceIdentifierCopy = serviceIdentifier;
  parametersCopy = parameters;
  managerCopy = manager;
  v13 = MEMORY[0x277D21260];
  v14 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = parametersCopy;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_DEFAULT, "#service-container, Creating a service for client: %@, with parameters = %@", &v28, 0x16u);
  }

  if (([MEMORY[0x277D212D8] isServicePackageSupported:{objc_msgSend(parametersCopy, "servicePackage")}] & 1) == 0)
  {
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:];
    }

    goto LABEL_13;
  }

  if (([managerCopy connectToStore] & 1) == 0)
  {
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer createServiceWithClientIdentifier:serviceIdentifier:parameters:persistenceManager:];
    }

LABEL_13:
    v25 = 0;
    goto LABEL_18;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v16 = +[IRServiceDO serviceDOWithLastSeenDate:clientIdentifier:serviceIdentifier:servicePackage:](IRServiceDO, "serviceDOWithLastSeenDate:clientIdentifier:serviceIdentifier:servicePackage:", date, identifierCopy, serviceIdentifierCopy, [parametersCopy servicePackage]);

  v17 = [IRServiceStore alloc];
  serviceIdentifier = [v16 serviceIdentifier];
  v19 = [(IRServiceStore *)v17 initWithPersistenceManager:managerCopy serviceIdentifier:serviceIdentifier];

  if ([(IRServiceStore *)v19 addService:v16])
  {
    v20 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      serviceIdentifier2 = [v16 serviceIdentifier];
      v28 = 138412290;
      v29 = serviceIdentifier2;
      _os_log_impl(&dword_25543D000, v21, OS_LOG_TYPE_DEFAULT, "#service-container, Service created: %@", &v28, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277D212E0]);
    serviceIdentifier3 = [v16 serviceIdentifier];
    v25 = [v23 initWithServiceIdentifier:serviceIdentifier3 servicePackage:{objc_msgSend(parametersCopy, "servicePackage")}];
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

+ (void)deleteServiceWithToken:(id)token persistenceManager:(id)manager
{
  v12 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  serviceIdentifier = [token serviceIdentifier];
  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = serviceIdentifier;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#service-container, [%@]: Trying to delete service", &v10, 0xCu);
  }

  if ([managerCopy connectToStore])
  {
    if (![IRMiLoProvider deleteServiceWithToken:serviceIdentifier]&& os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer deleteServiceWithToken:persistenceManager:];
    }

    v8 = [[IRServiceStore alloc] initWithPersistenceManager:managerCopy serviceIdentifier:serviceIdentifier];
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

+ (id)exportDatabaseWithPersistenceManager:(id)manager
{
  v109[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#service-container, Trying to export DB", buf, 2u);
  }

  if ([managerCopy connectToStore])
  {
    userLibraryDirectoryPath = [MEMORY[0x277CCAA00] userLibraryDirectoryPath];
    persistenceStore = [managerCopy persistenceStore];
    v7 = [persistenceStore url];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", userLibraryDirectoryPath, @"/Logs/intelligentroutingd/intelligentroutingexport"];
    v108 = *MEMORY[0x277CCA180];
    v109[0] = &unk_2867692E0;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:&v108 count:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8 isDirectory:0];

    if ((v10 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v101 = 0;
      v12 = v8;
      v13 = [defaultManager2 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v89 error:&v101];
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
    v86 = userLibraryDirectoryPath;
    lastPathComponent = [v7 lastPathComponent];
    v84 = v8;
    v18 = [v16 stringWithFormat:@"%@/%@", v8, lastPathComponent];
    v19 = [v15 fileURLWithPath:v18 isDirectory:0];

    v20 = MEMORY[0x277CBEBC0];
    path = [v19 path];
    v22 = [path stringByAppendingString:@"-wal"];
    v23 = [v20 fileURLWithPath:v22 isDirectory:0];

    v24 = MEMORY[0x277CBEBC0];
    path2 = [v19 path];
    v26 = [path2 stringByAppendingString:@"-shm"];
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
          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          path3 = [v33 path];
          v36 = [defaultManager3 fileExistsAtPath:path3];

          if (v36)
          {
            defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
            path4 = [v33 path];
            v96 = v30;
            v39 = [defaultManager4 removeItemAtPath:path4 error:&v96];
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
              userLibraryDirectoryPath = v86;
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
    managedObjectModel = [managerCopy managedObjectModel];
    v48 = [v46 initWithManagedObjectModel:managedObjectModel];

    persistenceStore2 = [managerCopy persistenceStore];
    options = [persistenceStore2 options];
    v51 = [persistenceStore2 url];
    options2 = [persistenceStore2 options];
    v78 = persistenceStore2;
    storeType = [persistenceStore2 storeType];
    v95 = 0;
    v54 = [v48 replacePersistentStoreAtURL:v87 destinationOptions:options withPersistentStoreFromURL:v51 sourceOptions:options2 storeType:storeType error:&v95];
    v81 = v95;

    v55 = *MEMORY[0x277D21260];
    v79 = v48;
    v56 = *MEMORY[0x277D21260];
    if (v54)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v55;
        path5 = [v87 path];
        *buf = 138412290;
        v103 = path5;
        _os_log_impl(&dword_25543D000, v57, OS_LOG_TYPE_DEFAULT, "#service-container, Successfully exported database to: %@", buf, 0xCu);
      }

      v77 = managerCopy;
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
            defaultManager5 = [*(v63 + 2560) defaultManager];
            path6 = [v65 path];
            v68 = [defaultManager5 fileExistsAtPath:path6];

            if (v68)
            {
              defaultManager6 = [*(v63 + 2560) defaultManager];
              path7 = [v65 path];
              v90 = 0;
              v71 = [defaultManager6 setAttributes:v89 ofItemAtPath:path7 error:&v90];
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

      managerCopy = v77;
      v7 = v85;
      userLibraryDirectoryPath = v86;
    }

    else
    {
      v7 = v85;
      userLibraryDirectoryPath = v86;
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

+ (BOOL)deleteDatabaseWithPersistenceManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v4 = MEMORY[0x277D21260];
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    getLocalStoreURL = [managerCopy getLocalStoreURL];
    *buf = 138412290;
    v19 = getLocalStoreURL;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_DEFAULT, "#service-container, Attempting to delete database at: %@", buf, 0xCu);
  }

  if ([managerCopy disconnectFromStore])
  {
    persistentStoreCoordinator = [managerCopy persistentStoreCoordinator];
    getLocalStoreURL2 = [managerCopy getLocalStoreURL];
    v10 = *MEMORY[0x277CBE2E8];
    v17 = 0;
    v11 = [persistentStoreCoordinator destroyPersistentStoreAtURL:getLocalStoreURL2 withType:v10 options:0 error:&v17];
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

+ (id)getServiceTokensForClientIdentifier:(id)identifier persistenceManager:(id)manager
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  managerCopy = manager;
  v7 = MEMORY[0x277D21260];
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_DEFAULT, "#service-container, Trying to get service tokens for client identifier: %@", buf, 0xCu);
  }

  if ([managerCopy connectToStore])
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = [IRServiceStore fetchAllServicesContainingClientIdentifier:identifierCopy persistenceManager:managerCopy];
    if (v10)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __77__IRServiceContainer_getServiceTokensForClientIdentifier_persistenceManager___block_invoke;
      v13[3] = &unk_2797E1510;
      v14 = array;
      [v10 enumerateObjectsUsingBlock:v13];
    }
  }

  else
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      +[IRServiceContainer getServiceTokensForClientIdentifier:persistenceManager:];
    }

    array = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
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

+ (id)getServicesWithPersistenceManager:(id)manager
{
  managerCopy = manager;
  if ([managerCopy connectToStore])
  {
    v4 = [IRServiceStore fetchAllServicesWithPersistenceManager:managerCopy];
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

- (void)updateCandidates:(id)candidates
{
  candidatesCopy = candidates;
  queue = [(IRServiceContainer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__IRServiceContainer_updateCandidates___block_invoke;
  v7[3] = &unk_2797E24B0;
  v8 = candidatesCopy;
  v6 = candidatesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __39__IRServiceContainer_updateCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 updateCandidates:*(a1 + 32)];
}

- (void)deleteCandidate:(id)candidate
{
  candidateCopy = candidate;
  queue = [(IRServiceContainer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__IRServiceContainer_deleteCandidate___block_invoke;
  v7[3] = &unk_2797E24B0;
  v8 = candidateCopy;
  v6 = candidateCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __38__IRServiceContainer_deleteCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 deleteCandidate:*(a1 + 32)];
}

- (void)addEvent:(id)event forCandidate:(id)candidate
{
  eventCopy = event;
  candidateCopy = candidate;
  queue = [(IRServiceContainer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__IRServiceContainer_addEvent_forCandidate___block_invoke;
  v11[3] = &unk_2797E24D8;
  v12 = eventCopy;
  v13 = candidateCopy;
  v9 = candidateCopy;
  v10 = eventCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v11);
}

void __44__IRServiceContainer_addEvent_forCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 addEvent:*(a1 + 32) forCandidate:*(a1 + 40)];
}

- (id)requestCurrentContextWithBundleID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  queue = [(IRServiceContainer *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__IRServiceContainer_requestCurrentContextWithBundleID___block_invoke;
  v9[3] = &unk_2797E2500;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  IRDispatchAsyncAndWaitWithStrongSelf(queue, self, v9);

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

- (void)setSpotOnLocationWithParameters:(id)parameters andClientID:(id)d
{
  parametersCopy = parameters;
  dCopy = d;
  queue = [(IRServiceContainer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__IRServiceContainer_setSpotOnLocationWithParameters_andClientID___block_invoke;
  v11[3] = &unk_2797E24D8;
  v12 = parametersCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = parametersCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v11);
}

void __66__IRServiceContainer_setSpotOnLocationWithParameters_andClientID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 policyManager];
  [v3 setSpotOnLocationWithParameters:*(a1 + 32) andClientID:*(a1 + 40)];
}

- (void)requestUpdatedBundlesWithSignificantInteraction
{
  queue = [(IRServiceContainer *)self queue];
  IRDispatchAsyncWithStrongSelf(queue, self, &__block_literal_global_57_0);
}

void __69__IRServiceContainer_requestUpdatedBundlesWithSignificantInteraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 policyManager];
  [v2 requestUpdatedBundlesWithSignificantInteraction];
}

- (void)dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard:(id)discard
{
  discardCopy = discard;
  queue = [(IRServiceContainer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__IRServiceContainer_dbCleanupWithDateIntervalOfMiLoPredictionsToDiscard___block_invoke;
  v7[3] = &unk_2797E24B0;
  v8 = discardCopy;
  v6 = discardCopy;
  IRDispatchAsyncAndWaitWithStrongSelf(queue, self, v7);
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

- (void)restartLowLatencyMiLo:(BOOL)lo
{
  queue = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__IRServiceContainer_restartLowLatencyMiLo___block_invoke;
  v6[3] = &__block_descriptor_33_e28_v16__0__IRServiceContainer_8l;
  loCopy = lo;
  IRDispatchAsyncWithStrongSelf(queue, self, v6);
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
  queue = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__IRServiceContainer_getStatistics__block_invoke;
  v6[3] = &unk_2797E2548;
  v6[4] = &v7;
  IRDispatchAsyncAndWaitWithStrongSelf(queue, self, v6);

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
  queue = [(IRServiceContainer *)self queue];
  IRDispatchAsyncWithStrongSelf(queue, self, &__block_literal_global_66);
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

- (void)setUpdateMode:(int64_t)mode
{
  queue = [(IRServiceContainer *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__IRServiceContainer_setUpdateMode___block_invoke;
  v6[3] = &__block_descriptor_40_e28_v16__0__IRServiceContainer_8l;
  v6[4] = mode;
  IRDispatchAsyncWithStrongSelf(queue, self, v6);
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

- (void)_refreshServiceWithDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  serviceStore = [(IRServiceContainer *)self serviceStore];
  fetchService = [serviceStore fetchService];

  if (!fetchService)
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

  v7 = [fetchService copyWithReplacementLastSeenDate:dateCopy];

  serviceStore2 = [(IRServiceContainer *)self serviceStore];
  v9 = [serviceStore2 updateService:v7];

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
      v19 = dateCopy;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Service container update during refresh] Could not update service during refresh: %@", &v14, 0x20u);
    }

LABEL_8:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)policyManager:(id)manager didUpdateContexts:(id)contexts withReason:(id)reason
{
  reasonCopy = reason;
  contextsCopy = contexts;
  queue = [(IRServiceContainer *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(IRServiceContainer *)self delegate];
  [delegate serviceContainer:self didUpdateContexts:contextsCopy withReason:reasonCopy];
}

- (void)policyManager:(id)manager didSpotOnLocationCompleteForClientIds:(id)ids withError:(id)error
{
  errorCopy = error;
  idsCopy = ids;
  queue = [(IRServiceContainer *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(IRServiceContainer *)self delegate];
  [delegate serviceContainer:self didSpotOnLocationCompleteForClientIds:idsCopy withError:errorCopy];
}

- (void)policyManager:(id)manager didUpdateBundlesWithSignificantInteractionPattern:(id)pattern
{
  patternCopy = pattern;
  queue = [(IRServiceContainer *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(IRServiceContainer *)self delegate];
  [delegate serviceContainer:self didUpdateBundlesWithSignificantInteractionPattern:patternCopy];
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