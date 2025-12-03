@interface HFSoftwareUpdateManager
- (BOOL)hasNewValidSoftwareUpdate:(id)update;
- (BOOL)hasRequestedSoftwareUpdate:(id)update;
- (BOOL)hasSoftwareUpdate:(id)update;
- (BOOL)hasValidSoftwareUpdate:(id)update;
- (BOOL)isDownloadingSoftwareUpdate:(id)update;
- (BOOL)isInstallingSoftwareUpdate:(id)update;
- (BOOL)isReadyToInstallSoftwareUpdate:(id)update;
- (BOOL)isSoftwareUpdateInProgress:(id)progress;
- (BOOL)isSoftwareUpdateInstalled:(id)installed;
- (BOOL)softwareUpdatePossessesNecessaryDocumentation:(id)documentation;
- (HFHomeKitDispatcher)dispatcher;
- (HFSoftwareUpdateManager)init;
- (HFSoftwareUpdateManager)initWithDispatcher:(id)dispatcher;
- (id)_fetchNeedsAttentionReasons:(id)reasons;
- (id)_fetchSoftwareUpdateDocumentationWithAccessory:(id)accessory;
- (id)fetchAvailableSoftwareUpdate:(id)update options:(unint64_t)options;
- (id)softwareUpdateDisplayableVersion:(id)version;
- (id)softwareUpdateDocumentation:(id)documentation;
- (id)softwareUpdateForAccessory:(id)accessory;
- (id)softwareUpdatePortionComplete:(id)complete;
- (id)softwareUpdateProgressForAccessory:(id)accessory;
- (id)softwareUpdateReleaseDate:(id)date;
- (id)softwareUpdateVersion:(id)version;
- (id)startSoftwareUpdate:(id)update;
- (int64_t)_softwareUpdateStateForAccessory:(id)accessory;
- (unint64_t)softwareUpdateDownloadSize:(id)size;
- (void)_didReceiveUpdateForAccessory:(id)accessory update:(id)update;
- (void)_finishFetchPromisesWithAccessory:(id)accessory;
- (void)_markSoftwareUpdate:(id)update asRequested:(BOOL)requested;
- (void)_updateRequestedSoftwareUpdateInstallsWithAccessory:(id)accessory softwareUpdateState:(int64_t)state softwareUpdateVersion:(id)version;
- (void)_waitToFinishPromise:(id)promise untilSoftwareUpdateDocumentationFetchCompletes:(id)completes;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)dealloc;
- (void)didUpdateDiagnosticInfo:(id)info forAccessory:(id)accessory;
- (void)executionEnvironmentDidBecomeActive:(id)active;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)resetCaches;
- (void)softwareUpdate:(id)update didUpdateState:(int64_t)state;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didUpdateProgress:(id)progress;
- (void)startObservingSoftwareUpdatesForAccessories:(id)accessories;
- (void)stopObservingSoftwareUpdatesForAccessories:(id)accessories;
@end

@implementation HFSoftwareUpdateManager

- (HFSoftwareUpdateManager)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v22.receiver = self;
  v22.super_class = HFSoftwareUpdateManager;
  v5 = [(HFSoftwareUpdateManager *)&v22 init];
  if (v5)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryUniqueIDToSoftwareUpdateMapTable = v5->_accessoryUniqueIDToSoftwareUpdateMapTable;
    v5->_accessoryUniqueIDToSoftwareUpdateMapTable = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryUniqueIDToSoftwareUpdateProgressMapTable = v5->_accessoryUniqueIDToSoftwareUpdateProgressMapTable;
    v5->_accessoryUniqueIDToSoftwareUpdateProgressMapTable = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    accessoryUniqueIDToFetchPromisesMapTable = v5->_accessoryUniqueIDToFetchPromisesMapTable;
    v5->_accessoryUniqueIDToFetchPromisesMapTable = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    observedAccessoryUniqueIDToAccessoryMapTable = v5->_observedAccessoryUniqueIDToAccessoryMapTable;
    v5->_observedAccessoryUniqueIDToAccessoryMapTable = strongToStrongObjectsMapTable4;

    strongToStrongObjectsMapTable5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    documentationMetadataToDocumentationMapTable = v5->_documentationMetadataToDocumentationMapTable;
    v5->_documentationMetadataToDocumentationMapTable = strongToStrongObjectsMapTable5;

    strongToStrongObjectsMapTable6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    documentationMetadataToDocumentationFutureMapTable = v5->_documentationMetadataToDocumentationFutureMapTable;
    v5->_documentationMetadataToDocumentationFutureMapTable = strongToStrongObjectsMapTable6;

    v18 = objc_opt_new();
    requestedSoftwareUpdateInstalls = v5->_requestedSoftwareUpdateInstalls;
    v5->_requestedSoftwareUpdateInstalls = v18;

    objc_storeWeak(&v5->_dispatcher, dispatcherCopy);
    [dispatcherCopy addAccessoryObserver:v5];
    [dispatcherCopy addHomeObserver:v5];
    [dispatcherCopy addSoftwareUpdateObserver:v5];
    [dispatcherCopy addSoftwareUpdateControllerV2Observer:v5];
    [dispatcherCopy addDiagnosticInfoObserver:v5];
    v20 = +[HFExecutionEnvironment sharedInstance];
    [v20 addObserver:v5];
  }

  return v5;
}

- (HFSoftwareUpdateManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDispatcher_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSoftwareUpdateManager.m" lineNumber:113 description:{@"%s is unavailable; use %@ instead", "-[HFSoftwareUpdateManager init]", v5}];

  return 0;
}

- (void)dealloc
{
  dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
  [dispatcher removeAccessoryObserver:self];

  dispatcher2 = [(HFSoftwareUpdateManager *)self dispatcher];
  [dispatcher2 removeHomeObserver:self];

  dispatcher3 = [(HFSoftwareUpdateManager *)self dispatcher];
  [dispatcher3 removeSoftwareUpdateObserver:self];

  dispatcher4 = [(HFSoftwareUpdateManager *)self dispatcher];
  [dispatcher4 removeDiagnosticInfoObserver:self];

  v7 = +[HFExecutionEnvironment sharedInstance];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = HFSoftwareUpdateManager;
  [(HFSoftwareUpdateManager *)&v8 dealloc];
}

- (void)resetCaches
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
  v4 = [accessoryUniqueIDToSoftwareUpdateMapTable count];

  if (v4)
  {
    v5 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      accessoryUniqueIDToSoftwareUpdateMapTable2 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
      hf_prettyDescription = [accessoryUniqueIDToSoftwareUpdateMapTable2 hf_prettyDescription];
      *buf = 138412290;
      v31 = hf_prettyDescription;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "[RESET] Unexpected entries in accessoryUniqueIDToSoftwareUpdateMapTable: %@", buf, 0xCu);
    }
  }

  accessoryUniqueIDToSoftwareUpdateMapTable3 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
  [accessoryUniqueIDToSoftwareUpdateMapTable3 removeAllObjects];

  accessoryUniqueIDToSoftwareUpdateProgressMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
  v8 = [accessoryUniqueIDToSoftwareUpdateProgressMapTable count];

  if (v8)
  {
    v9 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      accessoryUniqueIDToSoftwareUpdateProgressMapTable2 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
      hf_prettyDescription2 = [accessoryUniqueIDToSoftwareUpdateProgressMapTable2 hf_prettyDescription];
      *buf = 138412290;
      v31 = hf_prettyDescription2;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "[RESET] Unexpected entries in accessoryUniqueIDToSoftwareUpdateProgressMapTable: %@", buf, 0xCu);
    }
  }

  accessoryUniqueIDToSoftwareUpdateProgressMapTable3 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
  [accessoryUniqueIDToSoftwareUpdateProgressMapTable3 removeAllObjects];

  accessoryUniqueIDToFetchPromisesMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToFetchPromisesMapTable];
  keyEnumerator = [accessoryUniqueIDToFetchPromisesMapTable keyEnumerator];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __38__HFSoftwareUpdateManager_resetCaches__block_invoke;
  v29[3] = &unk_277DFF7F8;
  v29[4] = self;
  [keyEnumerator na_each:v29];

  accessoryUniqueIDToFetchPromisesMapTable2 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToFetchPromisesMapTable];
  [accessoryUniqueIDToFetchPromisesMapTable2 removeAllObjects];

  observedAccessoryUniqueIDToAccessoryMapTable = [(HFSoftwareUpdateManager *)self observedAccessoryUniqueIDToAccessoryMapTable];
  v15 = [observedAccessoryUniqueIDToAccessoryMapTable count];

  if (v15)
  {
    v16 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      observedAccessoryUniqueIDToAccessoryMapTable2 = [(HFSoftwareUpdateManager *)self observedAccessoryUniqueIDToAccessoryMapTable];
      hf_prettyDescription3 = [observedAccessoryUniqueIDToAccessoryMapTable2 hf_prettyDescription];
      *buf = 138412290;
      v31 = hf_prettyDescription3;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "[RESET] Unexpected entries in observedAccessoryUniqueIDToAccessoryMapTable: %@", buf, 0xCu);
    }
  }

  observedAccessoryUniqueIDToAccessoryMapTable3 = [(HFSoftwareUpdateManager *)self observedAccessoryUniqueIDToAccessoryMapTable];
  [observedAccessoryUniqueIDToAccessoryMapTable3 removeAllObjects];

  documentationMetadataToDocumentationFutureMapTable = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationFutureMapTable];
  keyEnumerator2 = [documentationMetadataToDocumentationFutureMapTable keyEnumerator];
  allObjects = [keyEnumerator2 allObjects];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __38__HFSoftwareUpdateManager_resetCaches__block_invoke_13;
  v28[3] = &unk_277DFF820;
  v28[4] = self;
  [allObjects na_each:v28];

  v21 = *MEMORY[0x277D85DE8];
}

void __38__HFSoftwareUpdateManager_resetCaches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessoryUniqueIDToFetchPromisesMapTable];
  v5 = [v4 objectForKey:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HFSoftwareUpdateManager_resetCaches__block_invoke_2;
  v7[3] = &unk_277DF28D8;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  [v5 na_each:v7];
}

void __38__HFSoftwareUpdateManager_resetCaches__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) observedAccessoryUniqueIDToAccessoryMapTable];
    v7 = [v6 objectForKey:*(a1 + 40)];
    v8 = [v7 hf_prettyDescription];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "[RESET] Unexpectedly finishing promise in accessoryUniqueIDToFetchPromisesMapTable: %@ %@", &v9, 0x16u);
  }

  [v3 finishWithNoResult];
  v5 = *MEMORY[0x277D85DE8];
}

void __38__HFSoftwareUpdateManager_resetCaches__block_invoke_13(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) documentationMetadataToDocumentationFutureMapTable];
  v5 = [v4 objectForKey:v3];

  v6 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "[RESET] Unexpectedly cancelling future in documentationMetadataToDocumentationFutureMapTable: %@ %@", &v8, 0x16u);
  }

  [v5 cancel];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startObservingSoftwareUpdatesForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  if ([accessoriesCopy count])
  {
    v6 = [accessoriesCopy na_map:&__block_literal_global_187];
    if (![v6 count])
    {
LABEL_8:

      goto LABEL_9;
    }

    dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
    home = [dispatcher home];
    softwareUpdateController = [home softwareUpdateController];
    delegate = [softwareUpdateController delegate];
    if (delegate)
    {
    }

    else
    {
      v11 = +[HFUtilities isInternalTest];

      if (v11)
      {
        goto LABEL_7;
      }

      dispatcher = [MEMORY[0x277CCA890] currentHandler];
      [dispatcher handleFailureInMethod:a2 object:self file:@"HFSoftwareUpdateManager.m" lineNumber:184 description:@"[SUBSCRIBE] softwareUpdateObserverDispatcher is nil"];
    }

LABEL_7:
    dispatcher2 = [(HFSoftwareUpdateManager *)self dispatcher];
    home2 = [dispatcher2 home];
    softwareUpdateController2 = [home2 softwareUpdateController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__HFSoftwareUpdateManager_startObservingSoftwareUpdatesForAccessories___block_invoke_2;
    v15[3] = &unk_277DF2748;
    v16 = accessoriesCopy;
    selfCopy = self;
    [softwareUpdateController2 subscribe:v6 completion:v15];

    goto LABEL_8;
  }

LABEL_9:
}

id __71__HFSoftwareUpdateManager_startObservingSoftwareUpdatesForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsSoftwareUpdateV2])
  {
    v3 = [v2 uniqueIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __71__HFSoftwareUpdateManager_startObservingSoftwareUpdatesForAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = HFLogForCategory(0x44uLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) count];
      v13 = *(a1 + 32);
      if (v12 == 1)
      {
        v2 = [v13 anyObject];
        [v2 hf_prettyDescription];
      }

      else
      {
        [v13 hf_prettyDescription];
      }
      v14 = ;
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v14;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "[SUBSCRIBE] %@: Cannot subscribe to %@", buf, 0x16u);
      if (v12 == 1)
      {

        v14 = v2;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) count];
      v8 = *(a1 + 32);
      if (v7 == 1)
      {
        v2 = [v8 anyObject];
        [v2 hf_prettyDescription];
      }

      else
      {
        [v8 hf_prettyDescription];
      }
      v9 = ;
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "[SUBSCRIBE] Subscribed to %@", buf, 0xCu);
      if (v7 == 1)
      {

        v9 = v2;
      }
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__HFSoftwareUpdateManager_startObservingSoftwareUpdatesForAccessories___block_invoke_20;
    v15[3] = &unk_277DF5200;
    v10 = *(a1 + 32);
    v15[4] = *(a1 + 40);
    [v10 na_each:v15];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HFSoftwareUpdateManager_startObservingSoftwareUpdatesForAccessories___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 observedAccessoryUniqueIDToAccessoryMapTable];
  v4 = [v3 uniqueIdentifier];
  [v5 setObject:v3 forKey:v4];
}

- (void)stopObservingSoftwareUpdatesForAccessories:(id)accessories
{
  v16 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  if ([accessoriesCopy count])
  {
    v5 = [accessoriesCopy na_map:&__block_literal_global_24_8];
    if ([v5 count])
    {
      dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
      home = [dispatcher home];
      softwareUpdateController = [home softwareUpdateController];
      [softwareUpdateController unsubscribe:v5];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__HFSoftwareUpdateManager_stopObservingSoftwareUpdatesForAccessories___block_invoke_2;
      v13[3] = &unk_277DFF7F8;
      v13[4] = self;
      [v5 na_each:v13];
      v9 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [accessoriesCopy count];
        if (v10 == 1)
        {
          home = [accessoriesCopy anyObject];
          [home hf_prettyDescription];
        }

        else
        {
          [accessoriesCopy hf_prettyDescription];
        }
        v11 = ;
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "[UNSUBSCRIBE] Unsubscribed from %@", buf, 0xCu);
        if (v10 == 1)
        {

          v11 = home;
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __70__HFSoftwareUpdateManager_stopObservingSoftwareUpdatesForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsSoftwareUpdateV2])
  {
    v3 = [v2 uniqueIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __70__HFSoftwareUpdateManager_stopObservingSoftwareUpdatesForAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accessoryUniqueIDToSoftwareUpdateMapTable];
  [v5 removeObjectForKey:v4];

  v6 = [*(a1 + 32) accessoryUniqueIDToSoftwareUpdateProgressMapTable];
  [v6 removeObjectForKey:v4];

  v7 = [*(a1 + 32) observedAccessoryUniqueIDToAccessoryMapTable];
  [v7 removeObjectForKey:v4];
}

- (id)softwareUpdateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];

  v7 = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

  return v7;
}

- (id)softwareUpdateProgressForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryUniqueIDToSoftwareUpdateProgressMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];

  v7 = [accessoryUniqueIDToSoftwareUpdateProgressMapTable objectForKey:uniqueIdentifier];

  return v7;
}

- (void)didUpdateDiagnosticInfo:(id)info forAccessory:(id)accessory
{
  infoCopy = info;
  uniqueIdentifier = [accessory uniqueIdentifier];
  softwareUpdate = [infoCopy softwareUpdate];

  [(HFSoftwareUpdateManager *)self _didReceiveUpdateForAccessory:uniqueIdentifier update:softwareUpdate];
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didUpdateProgress:(id)progress
{
  v23 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  progressCopy = progress;
  accessoryUniqueIDToSoftwareUpdateProgressMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
  v10 = [accessoryUniqueIDToSoftwareUpdateProgressMapTable objectForKey:accessoryCopy];

  if (([v10 isEqual:progressCopy] & 1) == 0)
  {
    accessoryUniqueIDToSoftwareUpdateProgressMapTable2 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
    [accessoryUniqueIDToSoftwareUpdateProgressMapTable2 setObject:progressCopy forKey:accessoryCopy];

    observedAccessoryUniqueIDToAccessoryMapTable = [(HFSoftwareUpdateManager *)self observedAccessoryUniqueIDToAccessoryMapTable];
    v13 = [observedAccessoryUniqueIDToAccessoryMapTable objectForKey:accessoryCopy];

    v14 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [v13 hf_prettyDescription];
      *buf = 138412290;
      v22 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "[PROGRESS] %@", buf, 0xCu);
    }

    dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__HFSoftwareUpdateManager_softwareUpdateController_accessory_didUpdateProgress___block_invoke;
    v19[3] = &unk_277DFF848;
    v20 = v13;
    v17 = v13;
    [dispatcher dispatchSoftwareUpdateMessage:v19 sender:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)executionEnvironmentDidBecomeActive:(id)active
{
  v4 = MEMORY[0x277CBEB98];
  dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
  home = [dispatcher home];
  accessories = [home accessories];
  v8 = [v4 setWithArray:accessories];

  observedAccessoryUniqueIDToAccessoryMapTable = [(HFSoftwareUpdateManager *)self observedAccessoryUniqueIDToAccessoryMapTable];
  objectEnumerator = [observedAccessoryUniqueIDToAccessoryMapTable objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  if ([allObjects count])
  {
    v12 = MEMORY[0x277CBEB58];
    if (allObjects)
    {
      v13 = [MEMORY[0x277CBEB58] setWithArray:allObjects];
    }

    else
    {
      v14 = objc_opt_new();
      v13 = [v12 setWithArray:v14];
    }

    [v13 minusSet:v8];
    if ([v13 count])
    {
      [(HFSoftwareUpdateManager *)self stopObservingSoftwareUpdatesForAccessories:v13];
    }
  }

  v15 = objc_opt_new();
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __63__HFSoftwareUpdateManager_executionEnvironmentDidBecomeActive___block_invoke;
  v20 = &unk_277DFF870;
  v21 = v15;
  selfCopy = self;
  v16 = v15;
  [v8 na_each:&v17];
  [(HFSoftwareUpdateManager *)self startObservingSoftwareUpdatesForAccessories:v16, v17, v18, v19, v20];
}

void __63__HFSoftwareUpdateManager_executionEnvironmentDidBecomeActive___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsSoftwareUpdateV2])
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v4 = [*(a1 + 40) requestedSoftwareUpdateInstalls];
    v5 = [v4 containsObject:v3];

    if (v5)
    {
      v6 = [v3 softwareUpdateController];
      v7 = [v6 availableUpdate];

      v8 = [*(a1 + 40) dispatcher];
      v9 = [v8 softwareUpdateObserverDispatcher];
      v10 = [v9 proxy];
      [v7 setDelegate:v10];

      v11 = [*(a1 + 40) dispatcher];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__HFSoftwareUpdateManager_executionEnvironmentDidBecomeActive___block_invoke_2;
      v13[3] = &unk_277DFF848;
      v14 = v7;
      v12 = v7;
      [v11 dispatchSoftwareUpdateMessage:v13 sender:0];
    }
  }
}

void __63__HFSoftwareUpdateManager_executionEnvironmentDidBecomeActive___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 softwareUpdate:v2 didUpdateState:{objc_msgSend(v2, "state")}];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  v17 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  if ([accessoryCopy supportsSoftwareUpdateV2])
  {
    v8 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [accessoryCopy hf_prettyDescription];
      hf_prettyDescription2 = [homeCopy hf_prettyDescription];
      v13 = 138412546;
      v14 = hf_prettyDescription;
      v15 = 2112;
      v16 = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[UNSUBSCRIBE] Stopped observing accessory because it was removed from its home: %@ %@", &v13, 0x16u);
    }

    v11 = [MEMORY[0x277CBEB98] setWithObject:accessoryCopy];
    [(HFSoftwareUpdateManager *)self stopObservingSoftwareUpdatesForAccessories:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  if ([reachabilityCopy supportsSoftwareUpdateV2] && (objc_msgSend(reachabilityCopy, "isReachable") & 1) == 0)
  {
    uniqueIdentifier = [reachabilityCopy uniqueIdentifier];
    accessoryUniqueIDToFetchPromisesMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToFetchPromisesMapTable];
    v7 = [accessoryUniqueIDToFetchPromisesMapTable objectForKey:uniqueIdentifier];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HFSoftwareUpdateManager_accessoryDidUpdateReachability___block_invoke;
    v9[3] = &unk_277DF29A0;
    v10 = reachabilityCopy;
    [v7 na_each:v9];
    accessoryUniqueIDToFetchPromisesMapTable2 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToFetchPromisesMapTable];
    [accessoryUniqueIDToFetchPromisesMapTable2 removeObjectForKey:uniqueIdentifier];
  }
}

void __58__HFSoftwareUpdateManager_accessoryDidUpdateReachability___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) hf_prettyDescription];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "[FETCH] Accessory became unreachable; finishing unmet promise: %@ %@", &v7, 0x16u);
  }

  [v3 finishWithNoResult];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdate:(id)update didUpdateState:(int64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v7 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyExpensiveDescription = [updateCopy hf_prettyExpensiveDescription];
    *buf = 138412290;
    v18 = hf_prettyExpensiveDescription;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "[STATUS] %@", buf, 0xCu);
  }

  if (updateCopy)
  {
    requestedSoftwareUpdateInstalls = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__HFSoftwareUpdateManager_softwareUpdate_didUpdateState___block_invoke;
    v15[3] = &unk_277DF3888;
    v10 = updateCopy;
    v16 = v10;
    v11 = [requestedSoftwareUpdateInstalls na_firstObjectPassingTest:v15];

    version = [v10 version];
    [(HFSoftwareUpdateManager *)self _updateRequestedSoftwareUpdateInstallsWithAccessory:v11 softwareUpdateState:state softwareUpdateVersion:version];

    v13 = v16;
  }

  else
  {
    v13 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "[STATUS] softwareUpdate:didUpdateState: invoked with a nil update; ignoring.", buf, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __57__HFSoftwareUpdateManager_softwareUpdate_didUpdateState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 softwareUpdateController];
  v4 = [v3 availableUpdate];
  v5 = v4 == *(a1 + 32);

  return v5;
}

- (void)_didReceiveUpdateForAccessory:(id)accessory update:(id)update
{
  v49 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  updateCopy = update;
  accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
  v9 = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:accessoryCopy];

  documentationMetadata = [v9 documentationMetadata];
  if (documentationMetadata)
  {
    documentationMetadataToDocumentationMapTable = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationMapTable];
    v36 = [documentationMetadataToDocumentationMapTable objectForKey:documentationMetadata];
  }

  else
  {
    v36 = 0;
  }

  if ([v9 isEqual:{updateCopy, v36}] && (objc_msgSend(updateCopy, "error"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) && v37)
  {
    v13 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [accessoryCopy UUIDString];
      v15 = [v37 description];
      *buf = 138412802;
      v44 = uUIDString;
      v45 = 2112;
      v46 = updateCopy;
      v47 = 2112;
      v48 = v15;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "[STATUS] Skipping didReceiveUpdate for accessory: %@, with software update: %@, existingDocumentation: %@", buf, 0x20u);
    }
  }

  else
  {
    observedAccessoryUniqueIDToAccessoryMapTable = [(HFSoftwareUpdateManager *)self observedAccessoryUniqueIDToAccessoryMapTable];
    v17 = [observedAccessoryUniqueIDToAccessoryMapTable objectForKey:accessoryCopy];

    updated = HMSoftwareUpdateStateFromHMSoftwareUpdateStatusV2([updateCopy status]);
    if (updated == 4 && ([updateCopy version], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "softwareVersion"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToVersion:", v20), v20, v19, (v21 & 1) == 0))
    {
      accessoryUniqueIDToSoftwareUpdateMapTable2 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
      v27 = [accessoryUniqueIDToSoftwareUpdateMapTable2 objectForKey:accessoryCopy];

      if (v27)
      {
        v28 = HFLogForCategory(0x44uLL);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          hf_prettyDescription = [v17 hf_prettyDescription];
          *buf = 138412290;
          v44 = hf_prettyDescription;
          _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "[STATUS] Removing update from accessoryUniqueIDToSoftwareUpdateMapTable: %@", buf, 0xCu);
        }

        accessoryUniqueIDToSoftwareUpdateMapTable3 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
        [accessoryUniqueIDToSoftwareUpdateMapTable3 removeObjectForKey:accessoryCopy];
      }

      v25 = 0;
    }

    else
    {
      accessoryUniqueIDToSoftwareUpdateMapTable4 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
      [accessoryUniqueIDToSoftwareUpdateMapTable4 setObject:updateCopy forKey:accessoryCopy];

      v23 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription2 = [v17 hf_prettyDescription];
        *buf = 138412290;
        v44 = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "[STATUS] %@", buf, 0xCu);
      }

      v25 = [(HFSoftwareUpdateManager *)self _fetchSoftwareUpdateDocumentationWithAccessory:v17];
    }

    version = [updateCopy version];
    [(HFSoftwareUpdateManager *)self _updateRequestedSoftwareUpdateInstallsWithAccessory:v17 softwareUpdateState:updated softwareUpdateVersion:version];

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__HFSoftwareUpdateManager__didReceiveUpdateForAccessory_update___block_invoke;
    aBlock[3] = &unk_277DF3A68;
    objc_copyWeak(&v42, buf);
    v13 = v17;
    v41 = v13;
    v32 = _Block_copy(aBlock);
    v33 = v32;
    if (v25)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __64__HFSoftwareUpdateManager__didReceiveUpdateForAccessory_update___block_invoke_3;
      v38[3] = &unk_277DFF898;
      v39 = v32;
      v34 = [v25 addCompletionBlock:v38];
    }

    else
    {
      v32[2](v32);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __64__HFSoftwareUpdateManager__didReceiveUpdateForAccessory_update___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishFetchPromisesWithAccessory:*(a1 + 32)];
  v3 = [WeakRetained dispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HFSoftwareUpdateManager__didReceiveUpdateForAccessory_update___block_invoke_2;
  v4[3] = &unk_277DFF848;
  v5 = *(a1 + 32);
  [v3 dispatchSoftwareUpdateMessage:v4 sender:0];
}

- (void)_markSoftwareUpdate:(id)update asRequested:(BOOL)requested
{
  requestedCopy = requested;
  v47 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (updateCopy)
  {
    v7 = HFLogForCategory(0x44uLL);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (requestedCopy)
    {
      if (v8)
      {
        hf_prettyDescription = [updateCopy hf_prettyDescription];
        *buf = 138412290;
        v46 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] Marked as requested: %@", buf, 0xCu);
      }

      requestedSoftwareUpdateInstalls = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
      [requestedSoftwareUpdateInstalls addObject:updateCopy];

      dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __59__HFSoftwareUpdateManager__markSoftwareUpdate_asRequested___block_invoke;
      v43 = &unk_277DFF848;
      v12 = &v44;
      v44 = updateCopy;
      v13 = &v40;
    }

    else
    {
      if (v8)
      {
        hf_prettyDescription2 = [updateCopy hf_prettyDescription];
        *buf = 138412290;
        v46 = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] Removed as requested: %@", buf, 0xCu);
      }

      requestedSoftwareUpdateInstalls2 = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
      [requestedSoftwareUpdateInstalls2 removeObject:updateCopy];

      dispatcher = [(HFSoftwareUpdateManager *)self dispatcher];
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __59__HFSoftwareUpdateManager__markSoftwareUpdate_asRequested___block_invoke_31;
      v38 = &unk_277DFF848;
      v12 = &v39;
      v39 = updateCopy;
      v13 = &v35;
    }

    [dispatcher dispatchSoftwareUpdateMessage:v13 sender:0];

    supportsSoftwareUpdateV2 = [updateCopy supportsSoftwareUpdateV2];
    v17 = HFLogForCategory(0x44uLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (supportsSoftwareUpdateV2)
    {
      if (v18)
      {
        hf_prettyDescription3 = [updateCopy hf_prettyDescription];
        *buf = 138412290;
        v46 = hf_prettyDescription3;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] Redispatching softwareUpdateController:accessory:didReceiveUpdate: %@", buf, 0xCu);
      }

      dispatcher2 = [(HFSoftwareUpdateManager *)self dispatcher];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __59__HFSoftwareUpdateManager__markSoftwareUpdate_asRequested___block_invoke_32;
      v33 = &unk_277DFF848;
      v21 = &v34;
      v34 = updateCopy;
      v22 = &v30;
    }

    else
    {
      if (v18)
      {
        hf_prettyDescription4 = [updateCopy hf_prettyDescription];
        *buf = 138412290;
        v46 = hf_prettyDescription4;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] Redispatching softwareUpdate:didUpdateState: %@", buf, 0xCu);
      }

      dispatcher2 = [(HFSoftwareUpdateManager *)self dispatcher];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __59__HFSoftwareUpdateManager__markSoftwareUpdate_asRequested___block_invoke_33;
      v28 = &unk_277DFF848;
      v21 = &v29;
      v29 = updateCopy;
      v22 = &v25;
    }

    [dispatcher2 dispatchSoftwareUpdateMessage:v22 sender:{0, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __59__HFSoftwareUpdateManager__markSoftwareUpdate_asRequested___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 softwareUpdateController];
  v5 = [v8 availableUpdate];
  v6 = [*(a1 + 32) softwareUpdateController];
  v7 = [v6 availableUpdate];
  [v4 softwareUpdate:v5 didUpdateState:{objc_msgSend(v7, "state")}];
}

- (int64_t)_softwareUpdateStateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    softwareUpdateController = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

    updated = HMSoftwareUpdateStateFromHMSoftwareUpdateStatusV2([softwareUpdateController status]);
  }

  else
  {
    softwareUpdateController = [accessoryCopy softwareUpdateController];
    availableUpdate = [softwareUpdateController availableUpdate];
    updated = [availableUpdate state];
  }

  return updated;
}

- (id)_fetchSoftwareUpdateDocumentationWithAccessory:(id)accessory
{
  location[3] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  v7 = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

  documentationMetadata = [v7 documentationMetadata];
  if (documentationMetadata)
  {
    documentationMetadataToDocumentationMapTable = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationMapTable];
    v10 = [documentationMetadataToDocumentationMapTable objectForKey:documentationMetadata];

    if (v10)
    {
      v11 = [MEMORY[0x277D2C900] futureWithResult:v10];
    }

    else
    {
      documentationMetadataToDocumentationFutureMapTable = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationFutureMapTable];
      v11 = [documentationMetadataToDocumentationFutureMapTable objectForKey:documentationMetadata];

      if (!v11)
      {
        v16 = MEMORY[0x277D2C900];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __74__HFSoftwareUpdateManager__fetchSoftwareUpdateDocumentationWithAccessory___block_invoke;
        v26[3] = &unk_277DF28D8;
        v27 = accessoryCopy;
        v17 = documentationMetadata;
        v28 = v17;
        v11 = [v16 futureWithBlock:v26];
        documentationMetadataToDocumentationFutureMapTable2 = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationFutureMapTable];
        [documentationMetadataToDocumentationFutureMapTable2 setObject:v11 forKey:v17];

        objc_initWeak(location, self);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __74__HFSoftwareUpdateManager__fetchSoftwareUpdateDocumentationWithAccessory___block_invoke_37;
        v23[3] = &unk_277DFF8E8;
        objc_copyWeak(&v25, location);
        v24 = v17;
        v19 = [v11 addCompletionBlock:v23];

        objc_destroyWeak(&v25);
        objc_destroyWeak(location);
      }
    }
  }

  else
  {
    v12 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      hf_prettyDescription = [accessoryCopy hf_prettyDescription];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = hf_prettyDescription;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "[DOCUMENTATION] Software update does not contain documentation metadata: %@", location, 0xCu);
    }

    v13 = MEMORY[0x277D2C900];
    na_genericError = [MEMORY[0x277CCA9B8] na_genericError];
    v11 = [v13 futureWithError:na_genericError];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

void __74__HFSoftwareUpdateManager__fetchSoftwareUpdateDocumentationWithAccessory___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Fetching: %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) home];
  v7 = [v6 softwareUpdateController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HFSoftwareUpdateManager__fetchSoftwareUpdateDocumentationWithAccessory___block_invoke_36;
  v11[3] = &unk_277DFF8C0;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v3;
  v9 = v3;
  [v7 fetchDocumentationFromMetadata:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __74__HFSoftwareUpdateManager__fetchSoftwareUpdateDocumentationWithAccessory___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x44uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) hf_prettyDescription];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "[DOCUMENTATION] Fetch error: %@ %@", &v12, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 hf_prettyDescription];
    v10 = [*(a1 + 32) hf_prettyDescription];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Completed fetch: %@ %@", &v12, 0x16u);

    goto LABEL_6;
  }

  [*(a1 + 40) finishWithResult:v5 error:v6];
  v11 = *MEMORY[0x277D85DE8];
}

void __74__HFSoftwareUpdateManager__fetchSoftwareUpdateDocumentationWithAccessory___block_invoke_37(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!a3)
  {
    v7 = [WeakRetained documentationMetadataToDocumentationMapTable];
    [v7 setObject:v9 forKey:*(a1 + 32)];
  }

  v8 = [v6 documentationMetadataToDocumentationFutureMapTable];
  [v8 removeObjectForKey:*(a1 + 32)];
}

- (void)_waitToFinishPromise:(id)promise untilSoftwareUpdateDocumentationFetchCompletes:(id)completes
{
  v31 = *MEMORY[0x277D85DE8];
  promiseCopy = promise;
  completesCopy = completes;
  accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
  uniqueIdentifier = [completesCopy uniqueIdentifier];
  v10 = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

  documentationMetadataToDocumentationFutureMapTable = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationFutureMapTable];
  documentationMetadata = [v10 documentationMetadata];
  v13 = [documentationMetadataToDocumentationFutureMapTable objectForKey:documentationMetadata];

  v14 = HFLogForCategory(0x44uLL);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      hf_prettyDescription = [completesCopy hf_prettyDescription];
      *buf = 138412290;
      v26 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "[FETCH] Waiting for documentation future to complete before finishing fetch promise: %@", buf, 0xCu);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__HFSoftwareUpdateManager__waitToFinishPromise_untilSoftwareUpdateDocumentationFetchCompletes___block_invoke;
    v21[3] = &unk_277DFF910;
    v22 = promiseCopy;
    selfCopy = self;
    v24 = completesCopy;
    v17 = [v13 addCompletionBlock:v21];
  }

  else
  {
    if (v15)
    {
      v18 = [(HFSoftwareUpdateManager *)self isReadyToInstallSoftwareUpdate:completesCopy];
      hf_prettyDescription2 = [completesCopy hf_prettyDescription];
      *buf = 138412802;
      v26 = promiseCopy;
      v27 = 1024;
      v28 = v18;
      v29 = 2112;
      v30 = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "[FETCH] Finishing promise %@; Ready to Install: %{BOOL}d; %@", buf, 0x1Cu);
    }

    [promiseCopy finishWithNoResult];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HFSoftwareUpdateManager__waitToFinishPromise_untilSoftwareUpdateDocumentationFetchCompletes___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [a1[5] isReadyToInstallSoftwareUpdate:a1[6]];
    v5 = [a1[6] hf_prettyDescription];
    v8 = 138412802;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "[FETCH] Finishing promise %@; Ready to Install: %{BOOL}d; %@", &v8, 0x1Cu);
  }

  result = [a1[4] finishWithNoResult];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_finishFetchPromisesWithAccessory:(id)accessory
{
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  accessoryUniqueIDToFetchPromisesMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToFetchPromisesMapTable];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  v7 = [accessoryUniqueIDToFetchPromisesMapTable objectForKey:uniqueIdentifier];

  if (v7)
  {
    if ([(HFSoftwareUpdateManager *)self _softwareUpdateStateForAccessory:accessoryCopy]== 4)
    {
      v8 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 count];
        anyObject = v7;
        if (v9 == 1)
        {
          anyObject = [v7 anyObject];
        }

        v11 = v9 == 1;
        hf_prettyDescription = [accessoryCopy hf_prettyDescription];
        *buf = 138412546;
        v24 = anyObject;
        v25 = 2112;
        v26 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[FETCH] Unfinished promises still exist, but we haven't seen the new update yet: %@ %@", buf, 0x16u);

        if (v11)
        {
        }
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __61__HFSoftwareUpdateManager__finishFetchPromisesWithAccessory___block_invoke;
      v20 = &unk_277DF8428;
      objc_copyWeak(&v22, buf);
      v13 = accessoryCopy;
      v21 = v13;
      [v7 na_each:&v17];
      v14 = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToFetchPromisesMapTable:v17];
      uniqueIdentifier2 = [v13 uniqueIdentifier];
      [v14 removeObjectForKey:uniqueIdentifier2];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__HFSoftwareUpdateManager__finishFetchPromisesWithAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _waitToFinishPromise:v3 untilSoftwareUpdateDocumentationFetchCompletes:*(a1 + 32)];
}

- (void)_updateRequestedSoftwareUpdateInstallsWithAccessory:(id)accessory softwareUpdateState:(int64_t)state softwareUpdateVersion:(id)version
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  versionCopy = version;
  requestedSoftwareUpdateInstalls = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
  v12 = [requestedSoftwareUpdateInstalls containsObject:accessoryCopy];

  if (v12)
  {
    if ((state - 3) > 2)
    {
      v17 = objc_alloc(MEMORY[0x277D0F8F8]);
      firmwareVersion = [accessoryCopy firmwareVersion];
      requestedSoftwareUpdateInstalls3 = [v17 initWithVersionString:firmwareVersion];

      if ([versionCopy isEqualToVersion:requestedSoftwareUpdateInstalls3])
      {
        v19 = HFLogForCategory(0x44uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          hf_prettyDescription = [accessoryCopy hf_prettyDescription];
          v31 = 138412546;
          v32 = requestedSoftwareUpdateInstalls3;
          v33 = 2112;
          v34 = hf_prettyDescription;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] Removing accessory from requestedSoftwareUpdateInstalls because accessory and update versions (%@) match: %@", &v31, 0x16u);
        }

        requestedSoftwareUpdateInstalls2 = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
        [requestedSoftwareUpdateInstalls2 removeObject:accessoryCopy];
      }
    }

    else
    {
      v13 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromHMSoftwareUpdateState(state);
        hf_prettyDescription2 = [accessoryCopy hf_prettyDescription];
        v31 = 138412546;
        v32 = v14;
        v33 = 2112;
        v34 = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] Removing accessory from requestedSoftwareUpdateInstalls because %@ is either Requested, Installing, Installed: %@", &v31, 0x16u);
      }

      requestedSoftwareUpdateInstalls3 = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
      [requestedSoftwareUpdateInstalls3 removeObject:accessoryCopy];
    }
  }

  requestedSoftwareUpdateInstalls4 = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
  v23 = [requestedSoftwareUpdateInstalls4 count];

  if (v23)
  {
    v24 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      requestedSoftwareUpdateInstalls5 = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
      v26 = [requestedSoftwareUpdateInstalls5 count];
      requestedSoftwareUpdateInstalls6 = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
      v28 = requestedSoftwareUpdateInstalls6;
      if (v26 == 1)
      {
        anyObject = [requestedSoftwareUpdateInstalls6 anyObject];
        [anyObject hf_prettyDescription];
      }

      else
      {
        [requestedSoftwareUpdateInstalls6 hf_prettyDescription];
      }
      v29 = ;
      v31 = 138412290;
      v32 = v29;
      _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "[MARK REQUESTED] requestedSoftwareUpdateInstalls still contains accessories: %@", &v31, 0xCu);
      if (v26 == 1)
      {

        v29 = anyObject;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSoftwareUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    v7 = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];
  }

  else
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [updateCopy softwareUpdateController];
    uniqueIdentifier = [accessoryUniqueIDToSoftwareUpdateMapTable availableUpdate];
    v7 = uniqueIdentifier;
  }

  return v7 != 0;
}

- (BOOL)hasValidSoftwareUpdate:(id)update
{
  updateCopy = update;
  isControllable = [updateCopy isControllable];
  if (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPadEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || (_os_feature_enabled_impl())
  {
    if (isControllable)
    {
      isControllable = 1;
LABEL_11:
      if ([(HFSoftwareUpdateManager *)self isReadyToInstallSoftwareUpdate:updateCopy]&& (isControllable & 1) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForMacEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) == 0) | isControllable & 1)
  {
    goto LABEL_11;
  }

  if ([updateCopy supportsCHIP])
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v6 homeManager];
    isControllable = [homeManager hasOptedToHH2];

    goto LABEL_11;
  }

  [(HFSoftwareUpdateManager *)self isReadyToInstallSoftwareUpdate:updateCopy];
LABEL_15:
  if (![(HFSoftwareUpdateManager *)self isSoftwareUpdateInProgress:updateCopy])
  {
    v8 = [(HFSoftwareUpdateManager *)self isSoftwareUpdateInstalled:updateCopy];
    goto LABEL_18;
  }

LABEL_16:
  v8 = 1;
LABEL_18:

  return v8;
}

- (BOOL)hasNewValidSoftwareUpdate:(id)update
{
  updateCopy = update;
  isControllable = [updateCopy isControllable];
  if (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || (_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPadEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) || (_os_feature_enabled_impl())
  {
    if (isControllable)
    {
      isControllable = 1;
      goto LABEL_11;
    }
  }

  else if ((CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForMacEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) == 0) | isControllable & 1)
  {
    goto LABEL_11;
  }

  if (([updateCopy supportsCHIP] & 1) == 0)
  {
    [(HFSoftwareUpdateManager *)self isReadyToInstallSoftwareUpdate:updateCopy];
LABEL_15:
    v8 = [(HFSoftwareUpdateManager *)self isSoftwareUpdateInProgress:updateCopy];
    goto LABEL_16;
  }

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v6 homeManager];
  isControllable = [homeManager hasOptedToHH2];

LABEL_11:
  if (![(HFSoftwareUpdateManager *)self isReadyToInstallSoftwareUpdate:updateCopy]|| (isControllable & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = 1;
LABEL_16:

  return v8;
}

- (BOOL)hasRequestedSoftwareUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (![(HFSoftwareUpdateManager *)self hasSoftwareUpdate:updateCopy])
  {
    goto LABEL_12;
  }

  v5 = [(HFSoftwareUpdateManager *)self _softwareUpdateStateForAccessory:updateCopy];
  if (v5 > 5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to handle HMSoftwareUpdateState: %lu", v5];
    v9 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v8);
    goto LABEL_12;
  }

  if (((1 << v5) & 0x1A) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << v5) & 5) == 0)
  {
    v7 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:updateCopy];
    goto LABEL_13;
  }

  if (![updateCopy supportsCHIP])
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  requestedSoftwareUpdateInstalls = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
  if ([requestedSoftwareUpdateInstalls containsObject:updateCopy])
  {
    v7 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:updateCopy];
  }

  else
  {
    v7 = 0;
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isReadyToInstallSoftwareUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (![(HFSoftwareUpdateManager *)self hasSoftwareUpdate:updateCopy])
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v5 = [(HFSoftwareUpdateManager *)self _softwareUpdateStateForAccessory:updateCopy];
  v6 = 0;
  if (v5 > 2)
  {
    if ((v5 - 3) < 3)
    {
      goto LABEL_13;
    }

LABEL_9:
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to handle HMSoftwareUpdateState: %lu", v5];
    v9 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v8);
    goto LABEL_12;
  }

  if (!v5)
  {
    v6 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:updateCopy];
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      requestedSoftwareUpdateInstalls = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
      v6 = ([requestedSoftwareUpdateInstalls containsObject:updateCopy] & 1) == 0 && -[HFSoftwareUpdateManager softwareUpdatePossessesNecessaryDocumentation:](self, "softwareUpdatePossessesNecessaryDocumentation:", updateCopy);

      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isDownloadingSoftwareUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (![(HFSoftwareUpdateManager *)self hasSoftwareUpdate:updateCopy])
  {
    goto LABEL_9;
  }

  v5 = [(HFSoftwareUpdateManager *)self _softwareUpdateStateForAccessory:updateCopy];
  v6 = 0;
  if ((v5 - 2) >= 4 && v5)
  {
    if (v5 == 1)
    {
      v6 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:updateCopy];
      goto LABEL_10;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to handle HMSoftwareUpdateState: %lu", v5];
    v8 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v7);
LABEL_9:
    v6 = 0;
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isInstallingSoftwareUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (![(HFSoftwareUpdateManager *)self hasSoftwareUpdate:updateCopy])
  {
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v5 = [(HFSoftwareUpdateManager *)self _softwareUpdateStateForAccessory:updateCopy];
  if (v5 > 5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to handle HMSoftwareUpdateState: %lu", v5];
    v11 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v10;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v10);
    goto LABEL_4;
  }

  if (((1 << v5) & 0x33) != 0)
  {
    goto LABEL_4;
  }

  if (v5 != 2)
  {
    v6 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:updateCopy];
    goto LABEL_5;
  }

  if ([updateCopy supportsCHIP])
  {
    goto LABEL_4;
  }

  requestedSoftwareUpdateInstalls = [(HFSoftwareUpdateManager *)self requestedSoftwareUpdateInstalls];
  if ([requestedSoftwareUpdateInstalls containsObject:updateCopy])
  {
    v6 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:updateCopy];
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isSoftwareUpdateInProgress:(id)progress
{
  progressCopy = progress;
  v5 = [(HFSoftwareUpdateManager *)self isDownloadingSoftwareUpdate:progressCopy]|| [(HFSoftwareUpdateManager *)self isInstallingSoftwareUpdate:progressCopy]|| [(HFSoftwareUpdateManager *)self hasRequestedSoftwareUpdate:progressCopy];

  return v5;
}

- (BOOL)isSoftwareUpdateInstalled:(id)installed
{
  v13 = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  if (![(HFSoftwareUpdateManager *)self hasSoftwareUpdate:installedCopy])
  {
    goto LABEL_9;
  }

  v5 = [(HFSoftwareUpdateManager *)self _softwareUpdateStateForAccessory:installedCopy];
  v6 = 0;
  if (v5 >= 4 && v5 != 5)
  {
    if (v5 == 4)
    {
      v6 = [(HFSoftwareUpdateManager *)self softwareUpdatePossessesNecessaryDocumentation:installedCopy];
      goto LABEL_10;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Yet to handle HMSoftwareUpdateState: %lu", v5];
    v8 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    NSLog(&stru_2824B1958.isa, v7);
LABEL_9:
    v6 = 0;
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)softwareUpdatePossessesNecessaryDocumentation:(id)documentation
{
  v20 = *MEMORY[0x277D85DE8];
  documentationCopy = documentation;
  if ([documentationCopy hf_isHomePod])
  {
    v5 = [(HFSoftwareUpdateManager *)self softwareUpdateDocumentation:documentationCopy];
    licenseAgreement = [v5 licenseAgreement];
    if (licenseAgreement)
    {
      v7 = licenseAgreement;
      releaseNotes = [v5 releaseNotes];
      if (releaseNotes)
      {

LABEL_7:
        v9 = 1;
LABEL_13:

        goto LABEL_14;
      }

      releaseNotesSummary = [v5 releaseNotesSummary];

      if (releaseNotesSummary)
      {
        goto LABEL_7;
      }
    }

    if ([(HFSoftwareUpdateManager *)self hasSoftwareUpdate:documentationCopy])
    {
      v11 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = [v5 description];
        hf_prettyExpensiveDescription = [documentationCopy hf_prettyExpensiveDescription];
        v16 = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = hf_prettyExpensiveDescription;
        _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "[DOCUMENTATION] Software update does not possess necessary documentation: %@, for accessory: %@", &v16, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_13;
  }

  v9 = 1;
LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)softwareUpdateDocumentation:(id)documentation
{
  documentationCopy = documentation;
  if ([documentationCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
    uniqueIdentifier = [documentationCopy uniqueIdentifier];
    softwareUpdateController = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

    documentationMetadata = [softwareUpdateController documentationMetadata];
    if (documentationMetadata)
    {
      documentationMetadataToDocumentationMapTable = [(HFSoftwareUpdateManager *)self documentationMetadataToDocumentationMapTable];
      documentation = [documentationMetadataToDocumentationMapTable objectForKey:documentationMetadata];
    }

    else
    {
      documentation = 0;
    }
  }

  else
  {
    softwareUpdateController = [documentationCopy softwareUpdateController];
    documentationMetadata = [softwareUpdateController availableUpdate];
    documentation = [documentationMetadata documentation];
  }

  return documentation;
}

- (id)softwareUpdateVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
    uniqueIdentifier = [versionCopy uniqueIdentifier];
    softwareUpdateController = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

    version = [softwareUpdateController version];
  }

  else
  {
    softwareUpdateController = [versionCopy softwareUpdateController];
    availableUpdate = [softwareUpdateController availableUpdate];
    version = [availableUpdate version];
  }

  return version;
}

- (id)softwareUpdateDisplayableVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
    uniqueIdentifier = [versionCopy uniqueIdentifier];
    softwareUpdateController = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

    version = [softwareUpdateController version];
    [version localizedDescription];
  }

  else
  {
    softwareUpdateController = [versionCopy softwareUpdateController];
    version = [softwareUpdateController availableUpdate];
    [version displayableVersion];
  }
  v9 = ;

  return v9;
}

- (id)softwareUpdateReleaseDate:(id)date
{
  dateCopy = date;
  if ([dateCopy supportsSoftwareUpdateV2])
  {
    releaseDate = 0;
  }

  else
  {
    softwareUpdateController = [dateCopy softwareUpdateController];
    availableUpdate = [softwareUpdateController availableUpdate];
    releaseDate = [availableUpdate releaseDate];
  }

  return releaseDate;
}

- (unint64_t)softwareUpdateDownloadSize:(id)size
{
  sizeCopy = size;
  if ([sizeCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
    uniqueIdentifier = [sizeCopy uniqueIdentifier];
    softwareUpdateController = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

    downloadSize = [softwareUpdateController downloadSize];
  }

  else
  {
    softwareUpdateController = [sizeCopy softwareUpdateController];
    availableUpdate = [softwareUpdateController availableUpdate];
    downloadSize = [availableUpdate downloadSize];
  }

  return downloadSize;
}

- (id)softwareUpdatePortionComplete:(id)complete
{
  completeCopy = complete;
  if ([completeCopy supportsSoftwareUpdateV2])
  {
    accessoryUniqueIDToSoftwareUpdateProgressMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateProgressMapTable];
    uniqueIdentifier = [completeCopy uniqueIdentifier];
    v7 = [accessoryUniqueIDToSoftwareUpdateProgressMapTable objectForKey:uniqueIdentifier];

    [v7 percentageComplete];
    if (v8 <= 0.0 || v8 < 0.00000011921)
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchNeedsAttentionReasons:(id)reasons
{
  reasonsCopy = reasons;
  if ([reasonsCopy supportsSoftwareUpdateV2] & 1) != 0 || (objc_msgSend(reasonsCopy, "hf_isHomePod"))
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v5 = MEMORY[0x277D2C900];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke;
    v8[3] = &unk_277DF29A0;
    v9 = reasonsCopy;
    v6 = [v5 futureWithBlock:v8];
    futureWithNoResult = [v6 flatMap:&__block_literal_global_67_3];
  }

  return futureWithNoResult;
}

void __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) softwareUpdateController];
  v5 = [v4 availableUpdate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke_2;
  v7[3] = &unk_277DFF938;
  v8 = v3;
  v6 = v3;
  [v5 fetchNeedsAttentionReasonsWithCompletionHandler:v7];
}

void __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke_3;
  block[3] = &unk_277DF32A8;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke_3(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 finishWithError:?];
  }

  else
  {
    return [v2 finishWithResult:a1[6]];
  }
}

id __55__HFSoftwareUpdateManager__fetchNeedsAttentionReasons___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 unsignedIntegerValue])
  {
    v3 = [v2 unsignedIntegerValue];
    if (v3)
    {
      v4 = v3;
      if ((v3 & 2) != 0)
      {
        v6 = 65;
      }

      else if ((v3 & 4) != 0)
      {
        v6 = 66;
      }

      else if ((v3 & 8) != 0)
      {
        v6 = 67;
      }

      else if (v3)
      {
        v6 = 64;
      }

      else
      {
        v5 = HFLogForCategory(0x44uLL);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v11 = 134217984;
          v12 = v4;
          _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "[START UPDATE] Unhandled needsAttentionReasons: %ld", &v11, 0xCu);
        }

        v6 = 68;
      }

      v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v6];
    }

    else
    {
      v8 = 0;
    }

    v7 = [MEMORY[0x277D2C900] futureWithError:v8];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)startSoftwareUpdate:(id)update
{
  updateCopy = update;
  if ([(HFSoftwareUpdateManager *)self isSoftwareUpdateInProgress:updateCopy]|| [(HFSoftwareUpdateManager *)self isSoftwareUpdateInstalled:updateCopy])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v6 = [(HFSoftwareUpdateManager *)self _fetchNeedsAttentionReasons:updateCopy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke;
    v14[3] = &unk_277DF5038;
    v7 = updateCopy;
    v15 = v7;
    v8 = [v6 recover:v14];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_2;
    v10[3] = &unk_277DF6F48;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    futureWithNoResult = [v8 flatMap:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return futureWithNoResult;
}

id __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hf_serviceNameComponents];
  v5 = [v4 composedString];
  v6 = [v3 hf_errorWithOperationType:@"HFOperationStartSoftwareUpdate" failedItemName:v5];

  v7 = [MEMORY[0x277D2C900] futureWithError:v6];

  return v7;
}

id __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_3;
  v14[3] = &unk_277DFF960;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = *(a1 + 32);
  v5 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_70;
  v12[3] = &unk_277DF2CE0;
  v13 = *(a1 + 32);
  v6 = [v5 flatMap:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_72;
  v9[3] = &unk_277DFF988;
  v10 = *(a1 + 32);
  objc_copyWeak(&v11, (a1 + 40));
  v7 = [v6 recover:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v16);

  return v7;
}

void __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markSoftwareUpdate:*(a1 + 32) asRequested:1];
  v5 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) hf_prettyExpensiveDescription];
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Starting software update: %@", &v14, 0xCu);
  }

  if ([*(a1 + 32) supportsSoftwareUpdateV2])
  {
    v7 = [WeakRetained accessoryUniqueIDToSoftwareUpdateMapTable];
    v8 = [*(a1 + 32) uniqueIdentifier];
    v9 = [v7 objectForKey:v8];

    v10 = [*(a1 + 32) home];
    v11 = [v10 softwareUpdateController];
    v12 = [*(a1 + 32) uniqueIdentifier];
    [v11 applySoftwareUpdate:v9 accessory:v12 completion:v3];
  }

  else
  {
    v9 = [*(a1 + 32) softwareUpdateController];
    v10 = [*(a1 + 32) softwareUpdateController];
    v11 = [v10 availableUpdate];
    [v9 startUpdate:v11 completionHandler:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

id __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_70(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) hf_prettyExpensiveDescription];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "[START UPDATE SUCCEEDED] %@", &v7, 0xCu);
  }

  v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id __47__HFSoftwareUpdateManager_startSoftwareUpdate___block_invoke_72(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v12 = [*(a1 + 32) hf_prettyExpensiveDescription];
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v12;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "[START UPDATE FAILED] %@ %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _markSoftwareUpdate:*(a1 + 32) asRequested:0];

  v6 = [*(a1 + 32) hf_serviceNameComponents];
  v7 = [v6 composedString];
  v8 = [v3 hf_errorWithOperationType:@"HFOperationStartSoftwareUpdate" failedItemName:v7];

  v9 = [MEMORY[0x277D2C900] futureWithError:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchAvailableSoftwareUpdate:(id)update options:(unint64_t)options
{
  location[3] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([updateCopy hf_isHomePod] & 1) != 0 || (objc_msgSend(updateCopy, "supportsSoftwareUpdateV2"))
  {
    if ([updateCopy supportsSoftwareUpdateV2])
    {
      uniqueIdentifier = [updateCopy uniqueIdentifier];
      accessoryUniqueIDToSoftwareUpdateMapTable = [(HFSoftwareUpdateManager *)self accessoryUniqueIDToSoftwareUpdateMapTable];
      v9 = [accessoryUniqueIDToSoftwareUpdateMapTable objectForKey:uniqueIdentifier];

      if (v9 && HMSoftwareUpdateStateFromHMSoftwareUpdateStatusV2([v9 status]) != 4)
      {
        v17 = HFLogForCategory(0x44uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          hf_prettyDescription = [updateCopy hf_prettyDescription];
          LODWORD(location[0]) = 138412290;
          *(location + 4) = hf_prettyDescription;
          _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "[FETCH] No scan necessary; we already have an update: %@", location, 0xCu);
        }

        objc_initWeak(location, self);
        v19 = MEMORY[0x277D2C900];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke;
        v33[3] = &unk_277DF8428;
        objc_copyWeak(&v35, location);
        v34 = updateCopy;
        futureWithNoResult = [v19 futureWithBlock:v33];

        objc_destroyWeak(&v35);
        objc_destroyWeak(location);
      }

      else
      {
        objc_initWeak(location, self);
        v10 = MEMORY[0x277D2C900];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_2;
        v29[3] = &unk_277DFF9D8;
        v30 = updateCopy;
        v31 = uniqueIdentifier;
        v32[1] = options;
        objc_copyWeak(v32, location);
        futureWithNoResult = [v10 futureWithBlock:v29];
        objc_destroyWeak(v32);

        objc_destroyWeak(location);
      }
    }

    else
    {
      v12 = MEMORY[0x277D2C900];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_74;
      v27[3] = &unk_277DF2C68;
      v13 = updateCopy;
      v28 = v13;
      v14 = [v12 futureWithErrorOnlyHandlerAdapterBlock:v27];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_2_75;
      v25[3] = &unk_277DF5038;
      v15 = v13;
      v26 = v15;
      v16 = [v14 recover:v25];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_3_77;
      v22[3] = &unk_277DF50B0;
      v23 = v15;
      selfCopy = self;
      futureWithNoResult = [v16 addCompletionBlock:v22];
    }
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v20 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _waitToFinishPromise:v3 untilSoftwareUpdateDocumentationFetchCompletes:*(a1 + 32)];
}

void __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 softwareUpdateController];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:*(a1 + 40)];
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_3;
  v9[3] = &unk_277DFF9B0;
  objc_copyWeak(&v13, (a1 + 48));
  v10 = *(a1 + 32);
  v8 = v3;
  v11 = v8;
  v12 = *(a1 + 40);
  [v5 scanForSoftwareUpdateOnAccessories:v6 withOptions:v7 completion:v9];

  objc_destroyWeak(&v13);
}

void __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_3(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (a2)
  {
    if ([WeakRetained hasSoftwareUpdate:*(a1 + 32)] && (objc_msgSend(v5, "isSoftwareUpdateInstalled:", *(a1 + 32)) & 1) == 0)
    {
      v16 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v5 isReadyToInstallSoftwareUpdate:*(a1 + 32)];
        v18 = [*(a1 + 32) hf_prettyDescription];
        v20 = 67109378;
        *v21 = v17;
        *&v21[4] = 2112;
        *&v21[6] = v18;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "[FETCH] Update found; Ready To Install: %{BOOL}d; %@", &v20, 0x12u);
      }

      [v5 _waitToFinishPromise:*(a1 + 40) untilSoftwareUpdateDocumentationFetchCompletes:*(a1 + 32)];
    }

    else
    {
      v6 = HFLogForCategory(0x44uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = [*(a1 + 32) hf_prettyDescription];
        v20 = 138412546;
        *v21 = v7;
        *&v21[8] = 2112;
        *&v21[10] = v8;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "[FETCH] Postpoining promise finish until next delegate callback: %@ %@", &v20, 0x16u);
      }

      v9 = [v5 accessoryUniqueIDToFetchPromisesMapTable];
      v10 = [*(a1 + 32) uniqueIdentifier];
      v11 = [v9 objectForKey:v10];

      if (v11)
      {
        v12 = [v11 setByAddingObject:*(a1 + 40)];
      }

      else
      {
        v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
      }

      v15 = [v5 accessoryUniqueIDToFetchPromisesMapTable];
      [v15 setObject:v12 forKey:*(a1 + 48)];
    }
  }

  else
  {
    v13 = HFLogForCategory(0x44uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) hf_prettyDescription];
      v20 = 138412290;
      *v21 = v14;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "[FETCH] No update found: %@", &v20, 0xCu);
    }

    [*(a1 + 40) finishWithNoResult];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 softwareUpdateController];
  [v4 fetchAvailableUpdateWithCompletionHandler:v3];
}

id __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_2_75(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = [*(a1 + 32) hf_serviceNameComponents];
  v7 = [v6 composedString];
  [v5 na_safeSetObject:v7 forKey:@"HFErrorHandlerOptionFailedItemName"];

  [v5 setObject:@"HFOperationCheckForSoftwareUpdates" forKeyedSubscript:@"HFErrorUserInfoOperationKey"];
  v8 = MEMORY[0x277D2C900];
  v9 = [v4 hf_errorWithAddedUserInfo:v5];

  v10 = [v8 futureWithError:v9];

  return v10;
}

void __64__HFSoftwareUpdateManager_fetchAvailableSoftwareUpdate_options___block_invoke_3_77(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v7 = [*(a1 + 32) hf_hasSoftwareUpdate];
    v5 = HFLogForCategory(0x44uLL);
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [*(a1 + 40) isReadyToInstallSoftwareUpdate:*(a1 + 32)];
      v6 = [*(a1 + 32) hf_prettyExpensiveDescription];
      v14 = 67109378;
      *v15 = v9;
      *&v15[4] = 2112;
      *&v15[6] = v6;
      v10 = "[FETCH] Update found; Ready To Install: %{BOOL}d; %@";
      v11 = v5;
      v12 = 18;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v6 = [*(a1 + 32) hf_prettyExpensiveDescription];
      v14 = 138412290;
      *v15 = v6;
      v10 = "[FETCH] No update found: %@";
      v11 = v5;
      v12 = 12;
    }

    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    goto LABEL_10;
  }

  v5 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) hf_prettyExpensiveDescription];
    v14 = 138412546;
    *v15 = v4;
    *&v15[8] = 2112;
    *&v15[10] = v6;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "[FETCH] Failed: %@ %@", &v14, 0x16u);
LABEL_10:
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (HFHomeKitDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

@end