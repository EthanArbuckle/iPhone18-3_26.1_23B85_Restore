@interface FPDExtensionManager
- (FPDExtensionManager)initWithServer:(id)server updateHandler:(id)handler;
- (FPDServer)server;
- (id)_deserializedAlternateContentsDictionary;
- (id)_deserializedPausedSyncItemDictionary;
- (id)_domainForURL:(id)l;
- (id)allProviders;
- (id)alternateContentsDictionaryForProviderIdentifier:(id)identifier;
- (id)alternateContentsURLForItemID:(id)d;
- (id)clouddocsExtensionIdentifier;
- (id)defaultProviderWithTopLevelBundleIdentifier:(id)identifier;
- (id)domainForActionOperationLocator:(id)locator;
- (id)domainForURL:(id)l reason:(unint64_t *)reason;
- (id)domainWithID:(id)d reason:(unint64_t *)reason;
- (id)domainsForAppBundleIdentifier:(id)identifier;
- (id)extensionPointRecords;
- (id)extensionsByID:(id)d;
- (id)nonEvictableSizeByProviderDomain;
- (id)providerDomainsByID;
- (id)providerDomainsByIDFromExtensionsByID:(id)d;
- (id)providerWithIdentifier:(id)identifier checkInvalidation:(BOOL)invalidation reason:(unint64_t *)reason;
- (id)providersWithGroupContainers:(id)containers bundleIdentifier:(id)identifier;
- (id)providersWithTopLevelBundleIdentifier:(id)identifier;
- (id)syncPausedBundleIDForItemID:(id)d;
- (id)syncPausedFilesForBundleID:(id)d;
- (id)uniquedExtensions:(id)extensions;
- (void)_deserializedAlternateContentsDictionary;
- (void)_garbageCollectRemovedProvidersForInstalledProviderIdentifiers:(id)identifiers;
- (void)_loadAlternateContentsDictionary;
- (void)_loadPausedSyncItemsDictionary;
- (void)_serializeAlternateContentsURLDictionary:(id)dictionary;
- (void)_serializePausedSyncItemsDictionary:(id)dictionary;
- (void)_startLSObserver;
- (void)_updateProviderListForFilteredFPDExtensions:(id)extensions;
- (void)_updateProviderListForMatchingExtensionRecords:(id)records;
- (void)afterFirstDiscovery;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dropLegacyDaemonCoreSpotlightIndexIfNeeded;
- (void)garbageCollectDomainsExceptIdentifiers:(id)identifiers fromDirectory:(id)directory isUserData:(BOOL)data;
- (void)garbageCollectOnFirstLaunch;
- (void)handleAllExtensionsStarted:(id)started;
- (void)loadProvidersAndMonitor;
- (void)migrateEnabledStateIfNecessary:(id)necessary;
- (void)observerDidObserveDatabaseChange:(id)change;
- (void)purge:(id)purge;
- (void)removePausedSyncItemID:(id)d forBundleID:(id)iD;
- (void)setAlternateContentsURL:(id)l forItemID:(id)d;
- (void)setPausedSyncItemID:(id)d forBundleID:(id)iD;
- (void)synchronousProviderUpdate:(BOOL)update;
- (void)updateProviderOnAppearingVolume:(id)volume;
- (void)updateProviderOnDisappearingVolume:(id)volume reason:(id)reason;
- (void)updateProvidersIfNecessary;
@end

@implementation FPDExtensionManager

- (id)providerDomainsByID
{
  v3 = self->_providersByIdentifier;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_providersByIdentifier copy];
  objc_sync_exit(v3);

  v5 = [(FPDExtensionManager *)self providerDomainsByIDFromExtensionsByID:v4];

  return v5;
}

- (void)updateProvidersIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  [mEMORY[0x1E69DF068] personaGenerationIdentifierWithError:0];

  v5 = __swp(v2, &updateProvidersIfNecessary_personaGeneration);
  if (v2 == v5)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v11 = 0;
    [defaultWorkspace getKnowledgeUUID:0 andSequenceNumber:&v11];
    v7 = v11;

    [v7 unsignedLongLongValue];
    __swp(v2, &updateProvidersIfNecessary_databaseGeneration);
    if (v2 != [v7 unsignedLongLongValue])
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v13 = v2;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_INFO, "[INFO] LS resync because of LS generation change (%llu -> %@)", buf, 0x16u);
      }

      [(FPDExtensionManager *)self synchronousProviderUpdate:0];
    }
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v13 = v2;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_INFO, "[INFO] LS resync because of persona generation change (%llu -> %llu)", buf, 0x16u);
    }

    [(FPDExtensionManager *)self forceSynchronousProviderUpdate];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)allProviders
{
  v3 = self->_providersByIdentifier;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_providersByIdentifier allValues];
  objc_sync_exit(v3);

  return allValues;
}

- (FPDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (FPDExtensionManager)initWithServer:(id)server updateHandler:(id)handler
{
  serverCopy = server;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = FPDExtensionManager;
  v8 = [(FPDExtensionManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_server, serverCopy);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    providersByIdentifier = v9->_providersByIdentifier;
    v9->_providersByIdentifier = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("FPDExtensionManager callback queue", v12);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v13;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sessionQueueForExtensionIdentifier = v9->_sessionQueueForExtensionIdentifier;
    v9->_sessionQueueForExtensionIdentifier = strongToWeakObjectsMapTable;

    v17 = [[FPDPushConnection alloc] initWithExtensionManager:v9];
    pushConnection = v9->_pushConnection;
    v9->_pushConnection = v17;

    v19 = _Block_copy(handlerCopy);
    updateHandler = v9->_updateHandler;
    v9->_updateHandler = v19;

    atomic_store(0, &v9->_updating);
  }

  return v9;
}

- (void)afterFirstDiscovery
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  if ([MEMORY[0x1E69672F0] runningInSyncBubble])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] shared iPad: Skipping push connection because we're just finishing sync", v5, 2u);
    }
  }

  else
  {
    [(FPDPushConnection *)self->_pushConnection start];
  }

  WeakRetained = objc_loadWeakRetained(&self->_server);
  [objc_msgSend(WeakRetained "fpfsClass")];
}

- (void)garbageCollectDomainsExceptIdentifiers:(id)identifiers fromDirectory:(id)directory isUserData:(BOOL)data
{
  dataCopy = data;
  v41 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  section = __fp_create_section();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [directoryCopy fp_shortDescription];
    [(FPDExtensionManager *)fp_shortDescription garbageCollectDomainsExceptIdentifiers:v40 fromDirectory:section isUserData:v9];
  }

  [defaultManager enumeratorAtURL:directoryCopy includingPropertiesForKeys:0 options:1 errorHandler:&__block_literal_global_24];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v11 = v29 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v12)
  {
    v13 = *v29;
    v14 = "database";
    if (dataCopy)
    {
      v14 = "and archiving user data";
    }

    v26 = v14;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
        if ([v17 length] && (objc_msgSend(identifiersCopy, "containsObject:", v17) & 1) == 0)
        {
          v18 = fp_current_or_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            fp_shortDescription2 = [v16 fp_shortDescription];
            *buf = 136315650;
            v34 = v26;
            v35 = 2114;
            v36 = v17;
            v37 = 2114;
            v38 = fp_shortDescription2;
            _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] collecting %s for domain %{public}@ at %{public}@ because its provider is uninstalled or domain is lost", buf, 0x20u);
          }

          v27 = 0;
          v19 = [defaultManager removeItemAtURL:v16 error:&v27];
          v20 = v27;
          if ((v19 & 1) == 0)
          {
            v21 = fp_current_or_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              fp_shortDescription3 = [v16 fp_shortDescription];
              *buf = 138412546;
              v34 = fp_shortDescription3;
              v35 = 2112;
              v36 = v20;
              _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] can't remove: %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v12);
  }

  __fp_leave_section_Debug();
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_garbageCollectRemovedProvidersForInstalledProviderIdentifiers:(id)identifiers
{
  v113 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v63 = fileProviderDirectory();
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v73 = defaultManager;
  v7 = [defaultManager enumeratorAtURL:v6 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = objc_opt_new();
  v68 = identifiersCopy;
  v64 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v9 = [FPDAppMonitor alloc];
  selfCopy = self;
  server = [(FPDExtensionManager *)self server];
  v11 = [(FPDAppMonitor *)v9 initWithServer:server];

  v62 = v11;
  listOfPlaceholderApps = [(FPDAppMonitor *)v11 listOfPlaceholderApps];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v99;
    v67 = *v99;
    do
    {
      v15 = 0;
      v69 = v13;
      do
      {
        if (*v99 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v98 + 1) + 8 * v15);
        if ([v16 fp_isFolder])
        {
          v17 = [v16 URLByAppendingPathComponent:@"Domains.plist"];
          v18 = MEMORY[0x1E695DF20];
          path = [v17 path];
          v20 = [v18 dictionaryWithContentsOfFile:path];

          if (v20)
          {
            v71 = v17;
            lastPathComponent = [v16 lastPathComponent];
            v72 = v20;
            if ([v68 containsObject:lastPathComponent])
            {
LABEL_21:
              v75 = objc_opt_new();
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              keyEnumerator = [v20 keyEnumerator];
              v33 = [keyEnumerator countByEnumeratingWithState:&v90 objects:v110 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v91;
                do
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v91 != v35)
                    {
                      objc_enumerationMutation(keyEnumerator);
                    }

                    v37 = *(*(&v90 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v38 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:lastPathComponent domainIdentifier:v37];
                      v39 = fp_current_or_default_log();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138543362;
                        v103 = v38;
                        _os_log_debug_impl(&dword_1CEFC7000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] marking domain %{public}@ for preservation", buf, 0xCu);
                      }

                      [v8 addObject:v38];
                    }
                  }

                  v34 = [keyEnumerator countByEnumeratingWithState:&v90 objects:v110 count:16];
                }

                while (v34);
              }

              v14 = v67;
              v13 = v69;
              v20 = v72;
              path2 = v75;
            }

            else
            {
              v66 = v16;
              v96 = 0u;
              v97 = 0u;
              v94 = 0u;
              v95 = 0u;
              v74 = listOfPlaceholderApps;
              v22 = [v74 countByEnumeratingWithState:&v94 objects:v111 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v95;
                while (2)
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v95 != v24)
                    {
                      objc_enumerationMutation(v74);
                    }

                    v26 = *(*(&v94 + 1) + 8 * j);
                    v27 = objc_autoreleasePoolPush();
                    v28 = [v26 stringByAppendingString:@"."];
                    v29 = [lastPathComponent hasPrefix:v28];

                    objc_autoreleasePoolPop(v27);
                    if (v29)
                    {

                      v20 = v72;
                      goto LABEL_21;
                    }
                  }

                  v23 = [v74 countByEnumeratingWithState:&v94 objects:v111 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              v30 = fp_current_or_default_log();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                v103 = v66;
                v104 = 2114;
                v105 = lastPathComponent;
                _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Will collect %{public}@ because %{public}@ is no longer installed", buf, 0x16u);
              }

              path2 = [v66 path];
              [v64 addObject:path2];
              v14 = v67;
              v13 = v69;
              v20 = v72;
            }

            v17 = v71;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
    }

    while (v13);
  }

  v40 = [MEMORY[0x1E695DFF8] fileURLWithPath:v63 isDirectory:1];
  [(FPDExtensionManager *)selfCopy garbageCollectDomainsExceptIdentifiers:v8 fromDirectory:v40 isUserData:0];

  fp_cloudStorageDirectory = [MEMORY[0x1E695DFF8] fp_cloudStorageDirectory];
  [(FPDExtensionManager *)selfCopy garbageCollectDomainsExceptIdentifiers:v8 fromDirectory:fp_cloudStorageDirectory isUserData:1];

  if ([MEMORY[0x1E6964E78] isIndexingAvailable])
  {
    defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v76 = v64;
    v43 = [v76 countByEnumeratingWithState:&v86 objects:v109 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v87;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v87 != v45)
          {
            objc_enumerationMutation(v76);
          }

          v47 = *(*(&v86 + 1) + 8 * k);
          lastPathComponent2 = [v47 lastPathComponent];
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __86__FPDExtensionManager__garbageCollectRemovedProvidersForInstalledProviderIdentifiers___block_invoke;
          v82[3] = &unk_1E83BDF78;
          v83 = lastPathComponent2;
          v84 = v73;
          v85 = v47;
          v49 = lastPathComponent2;
          [defaultSearchableIndex deleteAllSearchableItemsForBundleID:v49 completionHandler:v82];
        }

        v44 = [v76 countByEnumeratingWithState:&v86 objects:v109 count:16];
      }

      while (v44);
    }
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    defaultSearchableIndex = v64;
    v50 = [defaultSearchableIndex countByEnumeratingWithState:&v78 objects:v108 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v79;
      do
      {
        for (m = 0; m != v51; ++m)
        {
          if (*v79 != v52)
          {
            objc_enumerationMutation(defaultSearchableIndex);
          }

          v54 = *(*(&v78 + 1) + 8 * m);
          lastPathComponent3 = [v54 lastPathComponent];
          v77 = 0;
          v56 = [v73 removeItemAtPath:v54 error:&v77];
          v57 = v77;
          if ((v56 & 1) == 0)
          {
            v58 = fp_current_or_default_log();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              fp_prettyDescription = [v57 fp_prettyDescription];
              *buf = 138543874;
              v103 = lastPathComponent3;
              v104 = 2114;
              v105 = v54;
              v106 = 2114;
              v107 = fp_prettyDescription;
              _os_log_error_impl(&dword_1CEFC7000, v58, OS_LOG_TYPE_ERROR, "[ERROR] Failed to remove domains entry for provider identifier %{public}@ at path %{public}@: %{public}@", buf, 0x20u);
            }
          }
        }

        v51 = [defaultSearchableIndex countByEnumeratingWithState:&v78 objects:v108 count:16];
      }

      while (v51);
    }
  }

  v60 = *MEMORY[0x1E69E9840];
}

void __86__FPDExtensionManager__garbageCollectRemovedProvidersForInstalledProviderIdentifiers___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__FPDExtensionManager__garbageCollectRemovedProvidersForInstalledProviderIdentifiers___block_invoke_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __86__FPDExtensionManager__garbageCollectRemovedProvidersForInstalledProviderIdentifiers___block_invoke_cold_2(a1, v5);
  }

  v12 = a1[5];
  v13 = a1[6];
  v19 = 0;
  v14 = [v12 removeItemAtPath:v13 error:&v19];
  v3 = v19;
  if ((v14 & 1) == 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v17 = a1[6];
      v18 = [v3 fp_prettyDescription];
      *buf = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Failed to remove domains entry for provider identifier %{public}@ at path %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_9;
  }

LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleAllExtensionsStarted:(id)started
{
  startedCopy = started;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FPDExtensionManager_handleAllExtensionsStarted___block_invoke;
  v9[3] = &unk_1E83BE158;
  v9[4] = self;
  v10 = startedCopy;
  v5 = handleAllExtensionsStarted__onceToken;
  v6 = startedCopy;
  if (v5 != -1)
  {
    dispatch_once(&handleAllExtensionsStarted__onceToken, v9);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPDExtensionManager_handleAllExtensionsStarted___block_invoke_2;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

uint64_t __50__FPDExtensionManager_handleAllExtensionsStarted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allValues];
  [v1 migrateEnabledStateIfNecessary:v2];

  return +[FPDSharedSystemScheduler checkIn];
}

- (void)garbageCollectOnFirstLaunch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPDExtensionManager_garbageCollectOnFirstLaunch__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  if (garbageCollectOnFirstLaunch_onceToken != -1)
  {
    dispatch_once(&garbageCollectOnFirstLaunch_onceToken, block);
  }
}

void __50__FPDExtensionManager_garbageCollectOnFirstLaunch__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [*(a1 + 32) server];
  if ([v3 isPastBuddy])
  {
    v4 = [MEMORY[0x1E69672F0] runningInSyncBubble];

    if ((v4 & 1) == 0)
    {
      v5 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
      v6 = [v5 userPersonaUniqueString];

      if (v6 || ([MEMORY[0x1E69DF068] sharedManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isSharedIPad"), v7, v8))
      {
        [*(a1 + 32) _garbageCollectRemovedProvidersForInstalledProviderIdentifiers:v2];
      }

      v9 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
      v10 = [v9 userPersonaUniqueString];

      if (v10)
      {
        v11 = [MEMORY[0x1E69DF068] sharedManager];
        v12 = [v11 currentPersona];

        v22 = 0;
        v13 = [v12 userPersonaUniqueString];
        v14 = v13;
        if (v13 == v10 || ([v13 isEqualToString:v10]& 1) != 0 || !voucher_process_can_use_arbitrary_personas())
        {
          v19 = 0;
        }

        else
        {
          v21 = 0;
          v15 = [v12 copyCurrentPersonaContextWithError:&v21];
          v16 = v21;
          v17 = v22;
          v22 = v15;

          if (v16)
          {
            v18 = fp_current_or_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [FPDDomain createRootURLWithCompletion:];
            }
          }

          v19 = [v12 generateAndRestorePersonaContextWithPersonaUniqueString:v10];

          if (v19)
          {
            v20 = fp_current_or_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __50__FPDExtensionManager_garbageCollectOnFirstLaunch__block_invoke_cold_2();
            }
          }
        }

        [*(a1 + 32) _garbageCollectRemovedProvidersForInstalledProviderIdentifiers:v2];

        _FPRestorePersona();
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __50__FPDExtensionManager_garbageCollectOnFirstLaunch__block_invoke_cold_3();
  }

LABEL_21:
}

- (void)loadProvidersAndMonitor
{
  [(FPDExtensionManager *)self _loadAlternateContentsDictionary];
  v3 = fp_default_log();
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = fp_default_log();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "InitialEnumeration", "Initial enumeration of file providers", buf, 2u);
  }

  [(FPDExtensionManager *)self _startLSObserver];
  [(FPDExtensionManager *)self _loadPausedSyncItemsDictionary];
  callbackQueue = self->_callbackQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__FPDExtensionManager_loadProvidersAndMonitor__block_invoke;
  v8[3] = &unk_1E83BEFB0;
  v8[4] = self;
  v8[5] = v4;
  dispatch_async(callbackQueue, v8);
}

void __46__FPDExtensionManager_loadProvidersAndMonitor__block_invoke(uint64_t a1)
{
  [*(a1 + 32) afterFirstDiscovery];
  v2 = fp_default_log();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v3, OS_SIGNPOST_INTERVAL_END, v4, "InitialEnumeration", "", v5, 2u);
  }
}

- (void)_startLSObserver
{
  if (self->_observer)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ you shouldn't call -loadProviders twice"];
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionManager _startLSObserver]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 365, [v10 UTF8String]);
  }

  v3 = objc_alloc_init(MEMORY[0x1E6963670]);
  observer = self->_observer;
  self->_observer = v3;

  [(LSObserver *)self->_observer setDelegate:self];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(LSObserver *)self->_observer setName:v6];

  [(LSObserver *)self->_observer startObserving];
  subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v8 = [subjectMonitorRegistry addMonitor:self subjectMask:1];
  apSubscription = self->_apSubscription;
  self->_apSubscription = v8;

  [(FPDExtensionManager *)self forceSynchronousProviderUpdate];
}

- (void)purge:(id)purge
{
  purgeCopy = purge;
  server = [(FPDExtensionManager *)self server];
  volumeManager = [server volumeManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__FPDExtensionManager_purge___block_invoke;
  v8[3] = &unk_1E83BDF50;
  v9 = purgeCopy;
  v7 = purgeCopy;
  [volumeManager enumerateLibrariesWithBlock:v8];
}

uint64_t __29__FPDExtensionManager_purge___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 purgatoryDirectory];
  [v2 purgeAsyncAtUrl:v3];

  return 1;
}

- (id)extensionPointRecords
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__FPDExtensionManager_extensionPointRecords__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  if (extensionPointRecords_onceToken != -1)
  {
    dispatch_once(&extensionPointRecords_onceToken, block);
  }

  return extensionPointRecords_ret;
}

void __44__FPDExtensionManager_extensionPointRecords__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(a1 + 32) extensionTypes];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = objc_alloc(MEMORY[0x1E6963668]);
        v19 = v9;
        v12 = [v11 initWithIdentifier:v10 platform:2 error:&v19];
        v6 = v19;

        if (v12)
        {
          [v2 addObject:v12];
        }

        else
        {
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [v6 fp_prettyDescription];
            *buf = 138412802;
            v25 = v10;
            v26 = 1024;
            v27 = 2;
            v28 = 2112;
            v29 = v14;
            v15 = v14;
            _os_log_error_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_ERROR, "[ERROR] Extension record %@ for platform %d missing: %@", buf, 0x1Cu);
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = [v2 copy];
  v17 = extensionPointRecords_ret;
  extensionPointRecords_ret = v16;

  v18 = *MEMORY[0x1E69E9840];
}

- (void)observerDidObserveDatabaseChange:(id)change
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FPDExtensionManager_observerDidObserveDatabaseChange___block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v5 = MEMORY[0x1E695DFD8];
  changedCopy = changed;
  allProviders = [(FPDExtensionManager *)self allProviders];
  v8 = [allProviders fp_map:&__block_literal_global_37_0];
  v9 = [v5 setWithArray:v8];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__FPDExtensionManager_appProtectionSubjectsChanged_forSubscription___block_invoke_2;
  v15[3] = &unk_1E83C10F8;
  v10 = v9;
  v16 = v10;
  v11 = [changedCopy fp_filter:v15];

  if ([v11 count])
  {
    callbackQueue = self->_callbackQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__FPDExtensionManager_appProtectionSubjectsChanged_forSubscription___block_invoke_40;
    v14[3] = &unk_1E83BE068;
    v14[4] = self;
    dispatch_async(callbackQueue, v14);
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [FPDExtensionManager appProtectionSubjectsChanged:forSubscription:];
    }
  }
}

id __68__FPDExtensionManager_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 descriptor];
  v3 = [v2 topLevelBundleIdentifier];

  return v3;
}

uint64_t __68__FPDExtensionManager_appProtectionSubjectsChanged_forSubscription___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 bundleIdentifier];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __68__FPDExtensionManager_appProtectionSubjectsChanged_forSubscription___block_invoke_40(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__FPDExtensionManager_appProtectionSubjectsChanged_forSubscription___block_invoke_40_cold_1();
  }

  return [*(a1 + 32) forceSynchronousProviderUpdate];
}

- (void)synchronousProviderUpdate:(BOOL)update
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  FPPerformWithDefaultPersona();
  objc_sync_exit(selfCopy);
}

void __49__FPDExtensionManager_synchronousProviderUpdate___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__FPDExtensionManager_synchronousProviderUpdate___block_invoke_cold_1();
    }
  }

  v19 = v3;
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) extensionPointRecords];
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

        v12 = [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:*(*(&v20 + 1) + 8 * i) options:0x4000000000000000];
        v13 = [v12 allObjects];
        [v5 addObjectsFromArray:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = [v5 fp_map:&__block_literal_global_46];
  v16 = [v14 setWithArray:v15];

  if (![*(*v6 + 7) isEqualToSet:v16] || *(a1 + 40) == 1)
  {
    *(*v6 + 16) = 1;
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __49__FPDExtensionManager_synchronousProviderUpdate___block_invoke_cold_2(v6);
    }

    [*v6 _updateProviderListForMatchingExtensionRecords:v5];
    objc_storeStrong(*v6 + 7, v16);
    *(*v6 + 16) = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateProviderOnAppearingVolume:(id)volume
{
  v26 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  v5 = dispatch_group_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_providersByIdentifier;
  objc_sync_enter(v7);
  allValues = [(NSMutableDictionary *)selfCopy->_providersByIdentifier allValues];
  objc_sync_exit(v7);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = allValues;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        domainQueue = [v12 domainQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__FPDExtensionManager_updateProviderOnAppearingVolume___block_invoke;
        block[3] = &unk_1E83BDE60;
        block[4] = v12;
        v19 = volumeCopy;
        v20 = v5;
        dispatch_sync(domainQueue, block);
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  callbackQueue = selfCopy->_callbackQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__FPDExtensionManager_updateProviderOnAppearingVolume___block_invoke_3;
  v17[3] = &unk_1E83BE068;
  v17[4] = selfCopy;
  dispatch_group_notify(v5, callbackQueue, v17);

  v15 = *MEMORY[0x1E69E9840];
}

void __55__FPDExtensionManager_updateProviderOnAppearingVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) importDomainsFromLibrary:*(a1 + 40) updatePlist:0];
  dispatch_group_enter(*(a1 + 48));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__FPDExtensionManager_updateProviderOnAppearingVolume___block_invoke_2;
  v4[3] = &unk_1E83BE068;
  v5 = *(a1 + 48);
  [v3 startDomains:v2 completion:v4];
}

- (void)updateProviderOnDisappearingVolume:(id)volume reason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy->_providersByIdentifier;
  objc_sync_enter(v9);
  allValues = [(NSMutableDictionary *)selfCopy->_providersByIdentifier allValues];
  objc_sync_exit(v9);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = allValues;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * v14++) invalidateAllDomainsOnVolume:volumeCopy reason:reasonCopy];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  objc_sync_exit(selfCopy);
  callbackQueue = selfCopy->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__FPDExtensionManager_updateProviderOnDisappearingVolume_reason___block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = selfCopy;
  dispatch_async(callbackQueue, block);

  v16 = *MEMORY[0x1E69E9840];
}

void __65__FPDExtensionManager_updateProviderOnDisappearingVolume_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained signalProviderChanges];
}

- (void)migrateEnabledStateIfNecessary:(id)necessary
{
  v23 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v4 = fileProviderDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"LegacyEnabledStateHasBeenMigrated"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if ((v7 & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = necessaryCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v18 + 1) + 8 * v12++) enableAllDomainsIfNoUserElection];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v17 = 0;
    v13 = [&stru_1F4C2FFD0 writeToFile:v5 atomically:0 encoding:4 error:&v17];
    v14 = v17;
    if ((v13 & 1) == 0)
    {
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [FPDExtensionManager migrateEnabledStateIfNecessary:v14];
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)extensionsByID:(id)d
{
  v52 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = dCopy;
  v5 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    *&v6 = 138412290;
    v36 = v6;
    v37 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        identifier = [v10 identifier];

        if (identifier)
        {
          v12 = v10;
          identifier2 = [v12 identifier];
          v14 = [v4 objectForKeyedSubscript:identifier2];

          v15 = v12;
          if (!v14)
          {
            goto LABEL_24;
          }

          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            identifier3 = [v12 identifier];
            identifier4 = [v14 identifier];
            identifier5 = [v12 identifier];
            *buf = 138412802;
            v44 = identifier3;
            v45 = 2112;
            v46 = identifier4;
            v47 = 2112;
            v48 = identifier5;
            _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_INFO, "[INFO] %@ and %@ are backing the same identifier, %@:", buf, 0x20u);

            v8 = v37;
          }

          bundleVersion = [v12 bundleVersion];
          bundleVersion2 = [v14 bundleVersion];
          v22 = [bundleVersion compare:bundleVersion2 options:64];

          v23 = fp_current_or_default_log();
          v24 = v23;
          if (v22)
          {
            if (v22 == -1)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                identifier6 = [v12 identifier];
                bundleVersion3 = [v12 bundleVersion];
                identifier7 = [v14 identifier];
                bundleVersion4 = [v14 bundleVersion];
                *buf = 138413058;
                v44 = identifier6;
                v45 = 2112;
                v46 = bundleVersion3;
                v47 = 2112;
                v48 = identifier7;
                v49 = 2112;
                v50 = bundleVersion4;
                _os_log_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_INFO, "[INFO] Ignoring provider %@ (%@) in favor of provider %@ (%@)", buf, 0x2Au);

                v8 = v37;
              }

              v15 = v14;
              v24 = v12;
LABEL_23:

LABEL_24:
              identifier8 = [v12 identifier];
              [v4 setObject:v15 forKeyedSubscript:identifier8];

              goto LABEL_25;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              identifier9 = [v14 identifier];
              bundleVersion5 = [v14 bundleVersion];
              identifier10 = [v12 identifier];
              bundleVersion6 = [v12 bundleVersion];
              *buf = 138413058;
              v44 = identifier9;
              v45 = 2112;
              v46 = bundleVersion5;
              v47 = 2112;
              v48 = identifier10;
              v49 = 2112;
              v50 = bundleVersion6;
              _os_log_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_INFO, "[INFO] Ignoring provider %@ (%@) in favor of provider %@ (%@)", buf, 0x2Au);
LABEL_21:

              v8 = v37;
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            identifier9 = [v14 identifier];
            bundleVersion5 = [v12 identifier];
            identifier10 = [v12 bundleVersion];
            bundleVersion6 = [v12 identifier];
            *buf = 138413058;
            v44 = identifier9;
            v45 = 2112;
            v46 = bundleVersion5;
            v47 = 2112;
            v48 = identifier10;
            v49 = 2112;
            v50 = bundleVersion6;
            _os_log_error_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Provider %@ and %@ have the same version number (%@). %@ will win nondeterministically.", buf, 0x2Au);
            goto LABEL_21;
          }

          v15 = v12;
          goto LABEL_23;
        }

        v15 = fp_current_or_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v36;
          v44 = v10;
          _os_log_error_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_ERROR, "[ERROR] ignoring extension without identifier: %@", buf, 0xCu);
        }

LABEL_25:
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v7);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)uniquedExtensions:(id)extensions
{
  v60 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = extensionsCopy;
  v6 = v4;
  v7 = v5;
  v8 = [v5 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v46;
    *&v9 = 138413058;
    v41 = v9;
    v42 = v4;
    v43 = *v46;
    v44 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        if (([v13 supportsFPFS] & 1) == 0)
        {
          extensionStorageURLs = [v13 extensionStorageURLs];
          firstObject = [extensionStorageURLs firstObject];

          if (firstObject)
          {
            v16 = v13;
            v17 = [v6 objectForKeyedSubscript:firstObject];
            if (!v17)
            {
              goto LABEL_24;
            }

            v18 = fp_current_or_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              identifier = [v16 identifier];
              identifier2 = [v17 identifier];
              fp_shortDescription = [firstObject fp_shortDescription];
              *buf = 138412802;
              v50 = identifier;
              v51 = 2112;
              v52 = identifier2;
              v53 = 2112;
              v54 = fp_shortDescription;
              _os_log_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_INFO, "[INFO] %@ and %@ are backing the same location, %@:", buf, 0x20u);
            }

            bundleVersion = [v16 bundleVersion];
            bundleVersion2 = [v17 bundleVersion];
            v24 = [bundleVersion compare:bundleVersion2 options:64];

            v25 = fp_current_or_default_log();
            v26 = v25;
            if (v24)
            {
              if (v24 == -1)
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  identifier3 = [v16 identifier];
                  bundleVersion3 = [v16 bundleVersion];
                  identifier4 = [v17 identifier];
                  bundleVersion4 = [v17 bundleVersion];
                  *buf = v41;
                  v50 = identifier3;
                  v51 = 2112;
                  v52 = bundleVersion3;
                  v53 = 2112;
                  v54 = identifier4;
                  v55 = 2112;
                  v56 = bundleVersion4;
                  _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_INFO, "[INFO] Ignoring provider %@ (%@) in favor of provider %@ (%@)", buf, 0x2Au);

                  v6 = v42;
                }

                v26 = v16;
                v16 = v17;
LABEL_23:
                v11 = v43;
                v7 = v44;

LABEL_24:
                [v6 setObject:v16 forKeyedSubscript:firstObject];

LABEL_25:
                continue;
              }

              if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                goto LABEL_23;
              }

              identifier5 = [v17 identifier];
              bundleVersion5 = [v17 bundleVersion];
              identifier6 = [v16 identifier];
              bundleVersion6 = [v16 bundleVersion];
              *buf = v41;
              v50 = identifier5;
              v51 = 2112;
              v52 = bundleVersion5;
              v53 = 2112;
              v54 = identifier6;
              v55 = 2112;
              v56 = bundleVersion6;
              _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_INFO, "[INFO] Ignoring provider %@ (%@) in favor of provider %@ (%@)", buf, 0x2Au);
            }

            else
            {
              if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }

              identifier5 = [v17 identifier];
              bundleVersion5 = [v16 identifier];
              identifier6 = [v16 bundleVersion];
              bundleVersion6 = [v16 identifier];
              *buf = v41;
              v50 = identifier5;
              v51 = 2112;
              v52 = bundleVersion5;
              v53 = 2112;
              v54 = identifier6;
              v55 = 2112;
              v56 = bundleVersion6;
              _os_log_error_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Provider %@ and %@ have the same version number (%@). %@ will win nondeterministically.", buf, 0x2Au);
            }

            v6 = v42;
            goto LABEL_23;
          }

          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(FPDExtensionManager *)v57 uniquedExtensions:v13, &v58, v16];
          }

          goto LABEL_25;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v10);
  }

  [v7 fp_filter:&__block_literal_global_55];
  v36 = v35 = v6;
  allValues = [v35 allValues];
  v38 = [allValues arrayByAddingObjectsFromArray:v36];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)_updateProviderListForMatchingExtensionRecords:(id)records
{
  v4 = MEMORY[0x1E695E000];
  recordsCopy = records;
  v6 = [[v4 alloc] initWithSuiteName:@"com.apple.fileproviderd"];
  v7 = [v6 stringForKey:@"provider-filter"];
  lowercaseString = [v7 lowercaseString];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __70__FPDExtensionManager__updateProviderListForMatchingExtensionRecords___block_invoke;
  v14 = &unk_1E83C1188;
  v15 = lowercaseString;
  selfCopy = self;
  v9 = lowercaseString;
  v10 = [recordsCopy fp_map:&v11];

  [(FPDExtensionManager *)self _updateProviderListForFilteredFPDExtensions:v10, v11, v12, v13, v14];
}

id __70__FPDExtensionManager__updateProviderListForMatchingExtensionRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if ((!*(a1 + 32) || ([v4 lowercaseString], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsString:", *(a1 + 32)), v6, v7)) && objc_msgSend(v5, "fp_isValidProviderIdentifierWithError:", 0))
  {
    v8 = [*(*(a1 + 40) + 72) objectForKey:v5];
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extension session queue for %@", v5];
      v10 = [v9 UTF8String];
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create(v10, v11);

      [*(*(a1 + 40) + 72) setObject:v8 forKey:v5];
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 104));
    v13 = [FPDExtension instanceWithExtensionRecord:v3 queue:v8 server:WeakRetained];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_updateProviderListForFilteredFPDExtensions:(id)extensions
{
  v70 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  context = objc_autoreleasePoolPush();
  section = __fp_create_section();
  v4 = fp_current_or_default_log();
  selfCopy = self;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v64 = section;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Updating list of extensions", buf, 0xCu);
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_opt_new();
  allValues = [(NSMutableDictionary *)self->_providersByIdentifier allValues];
  v7 = [allValues mutableCopy];

  v36 = [(FPDExtensionManager *)self uniquedExtensions:extensionsCopy];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v36 mutableCopy];
  v8 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v8)
  {
    v9 = *v57;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        identifier = [v11 identifier];
        if (identifier)
        {
          v14 = [(NSMutableDictionary *)selfCopy->_providersByIdentifier objectForKeyedSubscript:identifier];
          v15 = v14;
          if (v14 && [v14 isEqual:v11])
          {
            [v42 setObject:v15 forKeyedSubscript:identifier];
            [v7 removeObject:v15];
          }

          else
          {
            [v42 setObject:v11 forKeyedSubscript:identifier];
            [v5 addObject:v11];
          }
        }

        else
        {
          v15 = fp_current_or_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = v11;
            _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[NOTICE] File provider extension %@ has no identifier. Ignoring.", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v8);
  }

  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v64 = extensionsCopy;
    v65 = 2114;
    v66 = v7;
    v67 = 2114;
    v68 = v5;
    _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEFAULT, "[NOTICE] %{public}@ -> {unregistering: %{public}@, registering: %{public}@}", buf, 0x20u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = v7;
  v17 = [v40 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v17)
  {
    v18 = *v53;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v40);
        }

        v20 = *(*(&v52 + 1) + 8 * j);
        descriptor = [v20 descriptor];
        topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];

        if (topLevelBundleIdentifier)
        {
          [(FPDPushConnection *)selfCopy->_pushConnection setMessageDelegate:0 forApplicationBundleIdentifier:topLevelBundleIdentifier];
        }

        [v20 invalidateWithReason:@"extension was unregistered"];
      }

      v17 = [v40 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v17);
  }

  v23 = dispatch_group_create();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = v5;
  v24 = [v39 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v24)
  {
    v25 = *v49;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v39);
        }

        v27 = *(*(&v48 + 1) + 8 * k);
        dispatch_group_enter(v23);
        descriptor2 = [v27 descriptor];
        topLevelBundleIdentifier2 = [descriptor2 topLevelBundleIdentifier];

        if (topLevelBundleIdentifier2 && [v27 isAppExtensionReachable])
        {
          pushConnection = selfCopy->_pushConnection;
          asAppExtensionBackedProvider = [v27 asAppExtensionBackedProvider];
          [(FPDPushConnection *)pushConnection setMessageDelegate:asAppExtensionBackedProvider forApplicationBundleIdentifier:topLevelBundleIdentifier2];
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __67__FPDExtensionManager__updateProviderListForFilteredFPDExtensions___block_invoke;
        v46[3] = &unk_1E83BE068;
        v47 = v23;
        [v27 startWithCompletion:v46];
      }

      v24 = [v39 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v24);
  }

  v32 = selfCopy->_providersByIdentifier;
  objc_sync_enter(v32);
  if (([(NSMutableDictionary *)selfCopy->_providersByIdentifier isEqual:v42]& 1) == 0)
  {
    [(NSMutableDictionary *)selfCopy->_providersByIdentifier setDictionary:v42];
  }

  objc_sync_exit(v32);

  [(FPDExtensionManager *)selfCopy garbageCollectOnFirstLaunch];
  callbackQueue = selfCopy->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__FPDExtensionManager__updateProviderListForFilteredFPDExtensions___block_invoke_2;
  block[3] = &unk_1E83BE158;
  block[4] = selfCopy;
  v45 = v42;
  v34 = v42;
  dispatch_group_notify(v23, callbackQueue, block);

  __fp_leave_section_Notice();
  objc_autoreleasePoolPop(context);

  v35 = *MEMORY[0x1E69E9840];
}

- (id)providerDomainsByIDFromExtensionsByID:(id)d
{
  v70 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [dCopy allValues];
  v54 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v54)
  {
    v53 = *v62;
    v51 = *MEMORY[0x1E6967178];
    do
    {
      v4 = 0;
      do
      {
        if (*v62 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v61 + 1) + 8 * v4);
        nsDomainsByID = [v5 nsDomainsByID];
        v7 = [nsDomainsByID count] == 0;

        if (!v7)
        {
          shouldHideDomainDisplayName = [v5 shouldHideDomainDisplayName];
          relevantDomainsByID = [v5 relevantDomainsByID];
          allValues = [relevantDomainsByID allValues];

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v11 = allValues;
          v12 = [v11 countByEnumeratingWithState:&v57 objects:v68 count:16];
          if (v12)
          {
            v13 = *v58;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v58 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [v5 providerDomainForDomain:*(*(&v57 + 1) + 8 * i)];
                v16 = v15;
                if (v15)
                {
                  [v15 setShouldHideDomainDisplayName:shouldHideDomainDisplayName];
                  identifier = [v16 identifier];
                  [dictionary setObject:v16 forKeyedSubscript:identifier];
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v57 objects:v68 count:16];
            }

            while (v12);
          }

          v18 = v11;
LABEL_17:

          goto LABEL_18;
        }

        descriptor = [v5 descriptor];
        defaultDomainVisible = [descriptor defaultDomainVisible];

        if (defaultDomainVisible)
        {
          relevantDomainsByID2 = [v5 relevantDomainsByID];
          v18 = [relevantDomainsByID2 objectForKeyedSubscript:v51];

          v22 = [v5 providerDomainForDomain:v18];
          v11 = v22;
          if (v22)
          {
            [v22 setShouldHideDomainDisplayName:1];
            providedItemsURLs = [v5 providedItemsURLs];
            [v11 setStorageURLs:providedItemsURLs];

            identifier2 = [v11 identifier];
            [dictionary setObject:v11 forKeyedSubscript:identifier2];
          }

          goto LABEL_17;
        }

LABEL_18:
        ++v4;
      }

      while (v4 != v54);
      v25 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      v54 = v25;
    }

    while (v25);
  }

  if (fpfs_supports_local_storage_less())
  {
    v26 = objc_alloc(MEMORY[0x1E69674D8]);
    v27 = [v26 initWithIdentifier:*MEMORY[0x1E6967178] displayName:@"Dummy Local Storage"];
    [v27 setSupportsSyncingTrash:1];
    [v27 setSupportsSearch:1];
    [v27 setSupportsRemoteVersions:0];
    v28 = [objc_alloc(MEMORY[0x1E69673D8]) initWithProviderID:@"com.apple.FileProvider.LocalStorage" domain:v27];
    [v28 setProviderDisplayName:@"Dummy Local Storage"];
    [v28 setShouldHideDomainDisplayName:1];
    [v28 setEnabled:1];
    [v28 setSupportsEnumeration:1];
    [v28 setIsAvailableSystemWide:1];
    [v28 setSupportsPickingFolders:1];
    [v28 setCanDisable:1];
    [v28 setAllowsUserControlledEviction:1];
    [v28 setAllowsSystemDeleteAlerts:1];
    [v28 setAllowsContextualMenuDownloadEntry:1];
    [v28 setErrorGenerationCount:-1];
    v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/Frameworks/FileProvider.framework/PlugIns/LocalStorageFileProvider.appex" isDirectory:0];
    [v28 setTopLevelBundleURL:v29];

    [v28 setTopLevelBundleIdentifier:@"com.apple.FileProvider.LocalStorage"];
    v30 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
    userPersonaUniqueString = [v30 userPersonaUniqueString];

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    v56 = 0;
    userPersonaUniqueString2 = [currentPersona userPersonaUniqueString];
    v35 = userPersonaUniqueString2;
    if (userPersonaUniqueString2 == userPersonaUniqueString || ([userPersonaUniqueString2 isEqualToString:userPersonaUniqueString] & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
    {
      v40 = 0;
    }

    else
    {
      v55 = 0;
      v36 = [currentPersona copyCurrentPersonaContextWithError:&v55];
      v37 = v55;
      v38 = v56;
      v56 = v36;

      if (v37)
      {
        v39 = fp_current_or_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [FPDDomain createRootURLWithCompletion:];
        }
      }

      v40 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:userPersonaUniqueString];

      if (v40)
      {
        v41 = fp_current_or_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          __50__FPDExtensionManager_garbageCollectOnFirstLaunch__block_invoke_cold_2();
        }
      }
    }

    v42 = [MEMORY[0x1E695DFF8] fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.FileProvider.LocalStorage"];
    v43 = v42;
    if (v42)
    {
      v44 = [v42 URLByAppendingPathComponent:@"File Provider Storage" isDirectory:1];
      v67 = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
      [v28 setStorageURLs:v45];
    }

    identifier3 = [v28 identifier];
    [dictionary setObject:v28 forKeyedSubscript:identifier3];

    v47 = fp_current_or_default_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v66 = v28;
      _os_log_impl(&dword_1CEFC7000, v47, OS_LOG_TYPE_INFO, "[INFO] Faking local storage! %@", buf, 0xCu);
    }

    _FPRestorePersona();
  }

  v48 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)nonEvictableSizeByProviderDomain
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = self->_providersByIdentifier;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_providersByIdentifier allValues];
  objc_sync_exit(v4);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = allValues;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        nsDomainsByID = [v7 nsDomainsByID];
        v9 = [nsDomainsByID count] == 0;

        if (!v9)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          relevantDomainsByID = [v7 relevantDomainsByID];
          allValues2 = [relevantDomainsByID allValues];

          v12 = [allValues2 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = *v24;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(allValues2);
                }

                v15 = *(*(&v23 + 1) + 8 * j);
                if ([v15 isUsingFPFS])
                {
                  providerDomainID = [v15 providerDomainID];
                  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v15, "nonEvictableSpace")}];
                  [dictionary setObject:v17 forKeyedSubscript:providerDomainID];
                }
              }

              v12 = [allValues2 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v12);
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  v18 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)providerWithIdentifier:(id)identifier checkInvalidation:(BOOL)invalidation reason:(unint64_t *)reason
{
  invalidationCopy = invalidation;
  identifierCopy = identifier;
  v9 = self->_providersByIdentifier;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_providersByIdentifier objectForKeyedSubscript:identifierCopy];
  v11 = v10;
  if (!reason || v10)
  {
    if (([v10 invalidated] & invalidationCopy) == 1)
    {
      v12 = 0;
      *reason = 2;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
    *reason = 0;
  }

  objc_sync_exit(v9);

  return v12;
}

- (id)domainWithID:(id)d reason:(unint64_t *)reason
{
  dCopy = d;
  fp_toProviderID = [dCopy fp_toProviderID];
  v8 = [(FPDExtensionManager *)self providerWithIdentifier:fp_toProviderID checkInvalidation:0 reason:reason];

  fp_toDomainIdentifier = [dCopy fp_toDomainIdentifier];

  v10 = [v8 domainForIdentifier:fp_toDomainIdentifier reason:reason];

  return v10;
}

- (id)domainForURL:(id)l reason:(unint64_t *)reason
{
  lCopy = l;
  if (([lCopy hasDirectoryPath] & 1) != 0 || !objc_msgSend(lCopy, "fp_isSymlink"))
  {
    v8 = [(FPDExtensionManager *)self _domainForURL:lCopy];
    if (!reason)
    {
      goto LABEL_8;
    }
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v8 = [(FPDExtensionManager *)self _domainForURL:uRLByDeletingLastPathComponent];

    if (!reason)
    {
      goto LABEL_8;
    }
  }

  if (!v8)
  {
    *reason = 3;
  }

LABEL_8:

  return v8;
}

- (id)_domainForURL:(id)l
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v5 = self->_providersByIdentifier;
    objc_sync_enter(v5);
    allValues = [(NSMutableDictionary *)self->_providersByIdentifier allValues];
    objc_sync_exit(v5);

    fp_realpathURL = [lCopy fp_realpathURL];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = allValues;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v9)
    {
      v10 = *v38;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 domainForRealPathURLFast:fp_realpathURL];
          objc_autoreleasePoolPop(v13);
          if (v14)
          {

            v26 = v14;
            goto LABEL_27;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v16)
    {
      v17 = *v34;
LABEL_12:
      v18 = 0;
      while (1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v33 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 domainForRealPathURLSlow:{fp_realpathURL, v33}];
        objc_autoreleasePoolPop(v20);
        if (v21)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
          if (v16)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v21 = 0;
    }

    v22 = fssync_default_log();
    v23 = fp_default_log();
    v24 = os_signpost_id_generate(v23);

    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      fp_prettyDescription = [v21 fp_prettyDescription];
      *buf = 138412290;
      v42 = fp_prettyDescription;
      _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v22, OS_SIGNPOST_EVENT, v24, "Slow domain lookup", "%@", buf, 0xCu);
    }

    v26 = v21;
    if (v26)
    {
LABEL_27:
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        fp_shortDescription = [lCopy fp_shortDescription];
        v31 = [v8 count];
        fp_prettyDescription2 = [v26 fp_prettyDescription];
        *buf = 138412802;
        v42 = fp_shortDescription;
        v43 = 2048;
        v44 = v31;
        v45 = 2112;
        v46 = fp_prettyDescription2;
        _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] testing if %@ is in our %lu registered file providers: it's in %@", buf, 0x20u);
      }
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(FPDExtensionManager *)lCopy _domainForURL:v15, v27];
      }

      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)domainForActionOperationLocator:(id)locator
{
  locatorCopy = locator;
  if ([locatorCopy isProviderItem])
  {
    asFPItem = [locatorCopy asFPItem];

    itemID = [asFPItem itemID];
    v7 = [(FPDExtensionManager *)self domainFromItemID:itemID reason:0];
  }

  else
  {
    asFPItem = [locatorCopy asURL];

    v7 = [(FPDExtensionManager *)self domainForURL:asFPItem reason:0];
  }

  return v7;
}

- (id)domainsForAppBundleIdentifier:(id)identifier
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = self->_providersByIdentifier;
  objc_sync_enter(v5);
  allValues = [(NSMutableDictionary *)self->_providersByIdentifier allValues];
  v7 = [allValues copy];

  objc_sync_exit(v5);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v23)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v25 = v8;
        v10 = *(*(&v31 + 1) + 8 * v8);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        domainsByID = [v10 domainsByID];
        allValues2 = [domainsByID allValues];

        v13 = [allValues2 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v13)
        {
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(allValues2);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              v17 = [v10 providerDomainForDomain:v16];
              topLevelBundleIdentifier = [v17 topLevelBundleIdentifier];
              v19 = [identifierCopy isEqualToString:topLevelBundleIdentifier];

              if (v19)
              {
                [v26 addObject:v16];
              }
            }

            v13 = [allValues2 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        v8 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)providersWithTopLevelBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = self->_providersByIdentifier;
  objc_sync_enter(v5);
  allValues = [(NSMutableDictionary *)self->_providersByIdentifier allValues];
  objc_sync_exit(v5);

  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = allValues;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        descriptor = [v10 descriptor];
        topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];
        if ([topLevelBundleIdentifier isEqualToString:identifierCopy])
        {
        }

        else
        {
          identifier = [v10 identifier];
          v15 = [identifier isEqualToString:identifierCopy];

          if (!v15)
          {
            goto LABEL_11;
          }
        }

        if ([v10 isAppExtensionReachable])
        {
          asAppExtensionBackedProvider = [v10 asAppExtensionBackedProvider];
          [v19 addObject:asAppExtensionBackedProvider];
        }

LABEL_11:
        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)defaultProviderWithTopLevelBundleIdentifier:(id)identifier
{
  v3 = [(FPDExtensionManager *)self providersWithTopLevelBundleIdentifier:identifier];
  [v3 sortUsingComparator:&__block_literal_global_92];
  firstObject = [v3 firstObject];

  return firstObject;
}

uint64_t __67__FPDExtensionManager_defaultProviderWithTopLevelBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)providersWithGroupContainers:(id)containers bundleIdentifier:(id)identifier
{
  containersCopy = containers;
  identifierCopy = identifier;
  allProviders = [(FPDExtensionManager *)self allProviders];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __69__FPDExtensionManager_providersWithGroupContainers_bundleIdentifier___block_invoke;
  v17 = &unk_1E83C11D0;
  v18 = identifierCopy;
  v19 = containersCopy;
  v9 = containersCopy;
  v10 = identifierCopy;
  v11 = [allProviders fp_filter:&v14];

  v12 = [v11 fp_map:{&__block_literal_global_96_0, v14, v15, v16, v17}];

  return v12;
}

uint64_t __69__FPDExtensionManager_providersWithGroupContainers_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 descriptor];
  v5 = [v4 topLevelBundleIdentifier];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 descriptor];
    v8 = [v7 topLevelBundleIdentifier];
    if ([v6 hasPrefix:v8])
    {
      v9 = *(a1 + 40);
      v10 = [v3 descriptor];
      v11 = [v10 documentGroupName];
      v12 = [v9 containsObject:v11];
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

  return v12;
}

id __69__FPDExtensionManager_providersWithGroupContainers_bundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAppExtensionReachable])
  {
    v3 = [v2 asAppExtensionBackedProvider];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAlternateContentsURL:(id)l forItemID:(id)d
{
  lCopy = l;
  dCopy = d;
  alternateContentsURLDictionary = self->_alternateContentsURLDictionary;
  if (!alternateContentsURLDictionary)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _alternateContentsURLDictionary shouldn't be nil"];
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionManager setAlternateContentsURL:forItemID:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1083, [v12 UTF8String]);
  }

  v8 = dCopy;
  v9 = alternateContentsURLDictionary;
  objc_sync_enter(v9);
  providerID = [v8 providerID];
  if (providerID)
  {
    dictionary = [(NSMutableDictionary *)self->_alternateContentsURLDictionary objectForKeyedSubscript:providerID];
    if (!dictionary)
    {
      if (!lCopy)
      {
        goto LABEL_8;
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_alternateContentsURLDictionary setObject:dictionary forKeyedSubscript:providerID];
    }

    [dictionary setObject:lCopy forKeyedSubscript:v8];
  }

  [(FPDExtensionManager *)self _serializeAlternateContentsURLDictionary:self->_alternateContentsURLDictionary];
LABEL_8:

  objc_sync_exit(v9);
}

- (id)alternateContentsURLForItemID:(id)d
{
  dCopy = d;
  alternateContentsURLDictionary = self->_alternateContentsURLDictionary;
  if (!alternateContentsURLDictionary)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _alternateContentsURLDictionary shouldn't be nil"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionManager alternateContentsURLForItemID:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1104, [v13 UTF8String]);
  }

  v6 = dCopy;
  v7 = alternateContentsURLDictionary;
  objc_sync_enter(v7);
  v8 = self->_alternateContentsURLDictionary;
  providerID = [v6 providerID];
  v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:providerID];
  v11 = [v10 objectForKeyedSubscript:v6];

  objc_sync_exit(v7);

  return v11;
}

- (id)alternateContentsDictionaryForProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  alternateContentsURLDictionary = self->_alternateContentsURLDictionary;
  if (!alternateContentsURLDictionary)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _alternateContentsURLDictionary shouldn't be nil"];
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionManager alternateContentsDictionaryForProviderIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1112, [v11 UTF8String]);
  }

  v6 = identifierCopy;
  v7 = alternateContentsURLDictionary;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_alternateContentsURLDictionary objectForKeyedSubscript:v6];
  v9 = [v8 copy];

  objc_sync_exit(v7);

  return v9;
}

- (void)_loadAlternateContentsDictionary
{
  _deserializedAlternateContentsDictionary = [(FPDExtensionManager *)self _deserializedAlternateContentsDictionary];
  dictionary = [_deserializedAlternateContentsDictionary mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  alternateContentsURLDictionary = self->_alternateContentsURLDictionary;
  self->_alternateContentsURLDictionary = dictionary;
}

- (void)_serializeAlternateContentsURLDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = dictionaryCopy;
  v30 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v30)
  {
    v28 = *v42;
    v34 = *MEMORY[0x1E6967178];
    do
    {
      v4 = 0;
      do
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v41 + 1) + 8 * v4);
        v33 = v4;
        v5 = [obj objectForKeyedSubscript:v28];
        v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v38;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v38 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v37 + 1) + 8 * i);
              v13 = [v7 objectForKeyedSubscript:v12];
              path = [v13 path];
              if (path)
              {
                domainIdentifier = [v12 domainIdentifier];
                v16 = domainIdentifier;
                v17 = v34;
                if (domainIdentifier)
                {
                  v17 = domainIdentifier;
                }

                v18 = v17;

                v19 = [v6 objectForKeyedSubscript:v18];
                if (!v19)
                {
                  v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
                  [v6 setObject:v19 forKeyedSubscript:v18];
                }

                identifier = [v12 identifier];
                [v19 setObject:path forKeyedSubscript:identifier];
              }

              else
              {
                v18 = fp_current_or_default_log();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v46 = v13;
                  _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "[ERROR] nil path for url %@", buf, 0xCu);
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v9);
        }

        [v29 setObject:v6 forKeyedSubscript:v32];
        v4 = v33 + 1;
      }

      while (v33 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v30);
  }

  v36 = 0;
  v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v29 format:200 options:0 error:&v36];
  v22 = v36;
  if (!v21)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionManager _serializeAlternateContentsURLDictionary:v22];
    }

    goto LABEL_30;
  }

  v23 = alternateContentsPlistURL();
  v35 = v22;
  v24 = [v21 writeToURL:v23 options:1 error:&v35];
  v25 = v35;

  if ((v24 & 1) == 0)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionManager _serializeAlternateContentsURLDictionary:v25];
    }

    v22 = v25;
LABEL_30:

    v25 = v22;
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_deserializedAlternateContentsDictionary
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  v4 = alternateContentsPlistURL();
  v65 = 0;
  v5 = [v3 dataWithContentsOfURL:v4 options:0 error:&v65];
  v6 = v65;

  if (v5)
  {
    v64 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v64];
    v8 = v64;

    if (v7)
    {
      v40 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v7, "count")}];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = v7;
      v41 = [v7 countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v41)
      {
        selfCopy = self;
        v37 = v8;
        obj = v7;
        v49 = 0;
        v38 = v5;
        v39 = *v61;
        v9 = 0x1E695D000uLL;
        do
        {
          v10 = 0;
          do
          {
            if (*v61 != v39)
            {
              v11 = v10;
              objc_enumerationMutation(obj);
              v10 = v11;
            }

            v43 = v10;
            v51 = *(*(&v60 + 1) + 8 * v10);
            v12 = [obj objectForKeyedSubscript:?];
            v50 = objc_opt_new();
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v56 objects:v69 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v57;
              v44 = *v57;
              v45 = v13;
              do
              {
                v17 = 0;
                v46 = v15;
                do
                {
                  if (*v57 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v56 + 1) + 8 * v17);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [v13 objectForKeyedSubscript:v18];
                    v20 = *(v9 + 3872);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v47 = v19;
                      v48 = v17;
                      v54 = 0u;
                      v55 = 0u;
                      v52 = 0u;
                      v53 = 0u;
                      v21 = v19;
                      v22 = [v21 countByEnumeratingWithState:&v52 objects:v68 count:16];
                      if (v22)
                      {
                        v23 = v22;
                        v24 = *v53;
                        do
                        {
                          for (i = 0; i != v23; ++i)
                          {
                            if (*v53 != v24)
                            {
                              objc_enumerationMutation(v21);
                            }

                            v26 = *(*(&v52 + 1) + 8 * i);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v27 = [v21 objectForKeyedSubscript:v26];
                              v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];
                              v29 = v28;
                              if (v28)
                              {
                                if ([v28 checkResourceIsReachableAndReturnError:0])
                                {
                                  v30 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderID:v51 domainIdentifier:v18 itemIdentifier:v26];
                                  [v50 setObject:v29 forKeyedSubscript:v30];
                                }

                                else
                                {
                                  v30 = fp_current_or_default_log();
                                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 138412290;
                                    v67 = v29;
                                    _os_log_error_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_ERROR, "[ERROR] url is not reachable: %@, GC-ing the URL (iWork should have done it)", buf, 0xCu);
                                  }

                                  v49 = 1;
                                }
                              }

                              else
                              {
                                v30 = fp_current_or_default_log();
                                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 138412290;
                                  v67 = v27;
                                  _os_log_error_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_ERROR, "[ERROR] nil url for path %@", buf, 0xCu);
                                }
                              }
                            }
                          }

                          v23 = [v21 countByEnumeratingWithState:&v52 objects:v68 count:16];
                        }

                        while (v23);
                      }

                      v9 = 0x1E695D000;
                      v16 = v44;
                      v13 = v45;
                      v15 = v46;
                      v19 = v47;
                      v17 = v48;
                    }
                  }

                  ++v17;
                }

                while (v17 != v15);
                v15 = [v13 countByEnumeratingWithState:&v56 objects:v69 count:16];
              }

              while (v15);
            }

            [v40 setObject:v50 forKeyedSubscript:v51];
            v10 = v43 + 1;
          }

          while (v43 + 1 != v41);
          v41 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
        }

        while (v41);
        v7 = obj;

        v8 = v37;
        if (v49)
        {
          [(FPDExtensionManager *)selfCopy _serializeAlternateContentsURLDictionary:v40];
        }

        v5 = v38;
      }

      else
      {
      }
    }

    else
    {
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(FPDExtensionManager *)v8 _deserializedAlternateContentsDictionary];
      }

      v40 = 0;
    }
  }

  else
  {
    domain = [v6 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v6 code];

      if (code == 260)
      {
        v40 = 0;
        goto LABEL_53;
      }
    }

    else
    {
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FPDExtensionManager *)v6 _deserializedAlternateContentsDictionary];
    }

    v40 = 0;
    v8 = v6;
  }

  v6 = v8;
LABEL_53:

  v34 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)dropLegacyDaemonCoreSpotlightIndexIfNeeded
{
  if ([MEMORY[0x1E6964E78] isIndexingAvailable])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"com.apple.fileproviderd.did-drop-daemon-corespotlight-index", @"com.apple.fileproviderd", 0);
    objc_sync_exit(selfCopy);

    if (!AppBooleanValue)
    {
      v5 = [objc_alloc(MEMORY[0x1E6964E78]) initWithName:@"com.apple.fileproviderd"];
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [FPDExtensionManager dropLegacyDaemonCoreSpotlightIndexIfNeeded];
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke;
      v7[3] = &unk_1E83BDFC8;
      v7[4] = selfCopy;
      [v5 deleteAllSearchableItemsWithReason:4 completionHandler:v7];
    }
  }
}

void __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke_cold_1(v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke_cold_2();
    }

    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    CFPreferencesSetAppValue(@"com.apple.fileproviderd.did-drop-daemon-corespotlight-index", &unk_1F4C62A78, @"com.apple.fileproviderd");
    if (!CFPreferencesAppSynchronize(@"com.apple.fileproviderd"))
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    objc_sync_exit(v5);
  }
}

- (id)clouddocsExtensionIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_providersByIdentifier;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_providersByIdentifier keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  objc_sync_exit(v3);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_loadPausedSyncItemsDictionary
{
  _deserializedPausedSyncItemDictionary = [(FPDExtensionManager *)self _deserializedPausedSyncItemDictionary];
  dictionary = [_deserializedPausedSyncItemDictionary mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  syncPausedItemsDictionary = self->_syncPausedItemsDictionary;
  self->_syncPausedItemsDictionary = dictionary;
}

- (void)_serializePausedSyncItemsDictionary:(id)dictionary
{
  v48 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = dictionaryCopy;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v30)
  {
    v28 = *v41;
    v4 = *MEMORY[0x1E6967178];
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v40 + 1) + 8 * v5);
        v33 = v5;
        v6 = [obj objectForKeyedSubscript:v28];
        v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = [v8 objectForKeyedSubscript:v13];
              if (v14)
              {
                domainIdentifier = [v13 domainIdentifier];
                v16 = domainIdentifier;
                if (domainIdentifier)
                {
                  v17 = domainIdentifier;
                }

                else
                {
                  v17 = v4;
                }

                v18 = v17;

                v19 = [v7 objectForKeyedSubscript:v18];
                if (!v19)
                {
                  v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
                  [v7 setObject:v19 forKeyedSubscript:v18];
                }

                identifier = [v13 identifier];
                [v19 setObject:v14 forKeyedSubscript:identifier];
              }

              else
              {
                v18 = fp_current_or_default_log();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v45 = v13;
                  _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "[ERROR] nil bundleID for itemID %@", buf, 0xCu);
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v10);
        }

        [v29 setObject:v7 forKeyedSubscript:v32];
        v5 = v33 + 1;
      }

      while (v33 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v30);
  }

  v35 = 0;
  v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v29 format:200 options:0 error:&v35];
  v22 = v35;
  if (!v21)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionManager _serializeAlternateContentsURLDictionary:v22];
    }

    goto LABEL_31;
  }

  v23 = pausedSyncItemslistURL();
  v34 = v22;
  v24 = [v21 writeToURL:v23 options:1 error:&v34];
  v25 = v34;

  if ((v24 & 1) == 0)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionManager _serializePausedSyncItemsDictionary:v25];
    }

    v22 = v25;
LABEL_31:

    v25 = v22;
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_deserializedPausedSyncItemDictionary
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  v4 = pausedSyncItemslistURL();
  v62 = 0;
  v5 = [v3 dataWithContentsOfURL:v4 options:0 error:&v62];
  v6 = v62;

  if (v5)
  {
    v61 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v61];
    v8 = v61;

    if (v7)
    {
      v39 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v7, "count")}];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v7 = v7;
      v40 = [v7 countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v40)
      {
        selfCopy = self;
        v37 = v5;
        v9 = 0;
        v38 = *v58;
        v10 = 0x1E695D000uLL;
        obj = v7;
        do
        {
          v11 = 0;
          do
          {
            if (*v58 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v42 = v11;
            v12 = *(*(&v57 + 1) + 8 * v11);
            v13 = [obj objectForKeyedSubscript:v12];
            v48 = objc_opt_new();
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v53 objects:v66 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v54;
              v43 = *v54;
              v44 = v14;
              do
              {
                v18 = 0;
                v45 = v16;
                do
                {
                  if (*v54 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v53 + 1) + 8 * v18);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v20 = [v14 objectForKeyedSubscript:v19];
                    v21 = *(v10 + 3872);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v46 = v20;
                      v47 = v18;
                      v51 = 0u;
                      v52 = 0u;
                      v49 = 0u;
                      v50 = 0u;
                      v22 = v20;
                      v23 = [v22 countByEnumeratingWithState:&v49 objects:v65 count:16];
                      if (v23)
                      {
                        v24 = v23;
                        v25 = *v50;
                        do
                        {
                          for (i = 0; i != v24; ++i)
                          {
                            if (*v50 != v25)
                            {
                              objc_enumerationMutation(v22);
                            }

                            v27 = *(*(&v49 + 1) + 8 * i);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v28 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderID:v12 domainIdentifier:v19 itemIdentifier:v27];
                              v29 = [v22 objectForKeyedSubscript:v27];
                              if (v29)
                              {
                                [v48 setObject:v29 forKeyedSubscript:v28];
                              }

                              else
                              {
                                v30 = fp_current_or_default_log();
                                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 138412290;
                                  v64 = v28;
                                  _os_log_error_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_ERROR, "[ERROR] nil bundleID for itemID %@", buf, 0xCu);
                                }

                                v9 = 1;
                              }
                            }
                          }

                          v24 = [v22 countByEnumeratingWithState:&v49 objects:v65 count:16];
                        }

                        while (v24);
                      }

                      v10 = 0x1E695D000;
                      v17 = v43;
                      v14 = v44;
                      v16 = v45;
                      v20 = v46;
                      v18 = v47;
                    }
                  }

                  ++v18;
                }

                while (v18 != v16);
                v16 = [v14 countByEnumeratingWithState:&v53 objects:v66 count:16];
              }

              while (v16);
            }

            [v39 setObject:v48 forKeyedSubscript:v12];
            v11 = v42 + 1;
          }

          while (v42 + 1 != v40);
          v7 = obj;
          v40 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
        }

        while (v40);

        if (v9)
        {
          [(FPDExtensionManager *)selfCopy _serializePausedSyncItemsDictionary:v39];
        }

        v5 = v37;
      }

      else
      {
      }
    }

    else
    {
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(FPDExtensionManager *)v8 _deserializedAlternateContentsDictionary];
      }

      v39 = 0;
    }
  }

  else
  {
    domain = [v6 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v6 code];

      if (code == 260)
      {
        v39 = 0;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FPDExtensionManager *)v6 _deserializedAlternateContentsDictionary];
    }

    v39 = 0;
    v8 = v6;
  }

  v6 = v8;
LABEL_50:

  v34 = *MEMORY[0x1E69E9840];

  return v39;
}

- (void)setPausedSyncItemID:(id)d forBundleID:(id)iD
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  syncPausedItemsDictionary = self->_syncPausedItemsDictionary;
  if (!syncPausedItemsDictionary)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _syncPausedItemsDictionary shouldn't be nil"];
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v21 = v19;
    __assert_rtn("-[FPDExtensionManager setPausedSyncItemID:forBundleID:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1421, [v19 UTF8String]);
  }

  v9 = iDCopy;
  obj = syncPausedItemsDictionary;
  objc_sync_enter(obj);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = dCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        providerID = [v14 providerID];
        if (providerID)
        {
          dictionary = [(NSMutableDictionary *)self->_syncPausedItemsDictionary objectForKeyedSubscript:providerID];
          if (!dictionary)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            [(NSMutableDictionary *)self->_syncPausedItemsDictionary setObject:dictionary forKeyedSubscript:providerID];
          }

          v17 = [dictionary objectForKeyedSubscript:v14];
          if (v17)
          {

            goto LABEL_16;
          }

          [dictionary setObject:v9 forKeyedSubscript:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(FPDExtensionManager *)self _serializePausedSyncItemsDictionary:self->_syncPausedItemsDictionary];
LABEL_16:
  objc_sync_exit(obj);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removePausedSyncItemID:(id)d forBundleID:(id)iD
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  syncPausedItemsDictionary = self->_syncPausedItemsDictionary;
  if (!syncPausedItemsDictionary)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _syncPausedItemsDictionary shouldn't be nil"];
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v22 = v20;
    __assert_rtn("-[FPDExtensionManager removePausedSyncItemID:forBundleID:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1446, [v20 UTF8String]);
  }

  v9 = iDCopy;
  obj = syncPausedItemsDictionary;
  objc_sync_enter(obj);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = dCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        providerID = [v14 providerID];
        if (providerID)
        {
          v16 = [(NSMutableDictionary *)self->_syncPausedItemsDictionary objectForKeyedSubscript:providerID];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 objectForKeyedSubscript:v14];
            if ([v18 isEqualToString:v9])
            {
              [v17 setObject:0 forKeyedSubscript:v14];
            }
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  [(FPDExtensionManager *)self _serializePausedSyncItemsDictionary:self->_syncPausedItemsDictionary];
  objc_sync_exit(obj);

  v19 = *MEMORY[0x1E69E9840];
}

- (id)syncPausedBundleIDForItemID:(id)d
{
  dCopy = d;
  syncPausedItemsDictionary = self->_syncPausedItemsDictionary;
  if (!syncPausedItemsDictionary)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _syncPausedItemsDictionary shouldn't be nil"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionManager syncPausedBundleIDForItemID:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1466, [v13 UTF8String]);
  }

  v6 = dCopy;
  v7 = syncPausedItemsDictionary;
  objc_sync_enter(v7);
  v8 = self->_syncPausedItemsDictionary;
  providerID = [v6 providerID];
  v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:providerID];
  v11 = [v10 objectForKeyedSubscript:v6];

  objc_sync_exit(v7);

  return v11;
}

- (id)syncPausedFilesForBundleID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!self->_syncPausedItemsDictionary)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ _syncPausedItemsDictionary shouldn't be nil"];
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v18 = v16;
    __assert_rtn("-[FPDExtensionManager syncPausedFilesForBundleID:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionManager.m", 1474, [v16 UTF8String]);
  }

  v5 = dCopy;
  v6 = objc_opt_new();
  obj = self->_syncPausedItemsDictionary;
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_syncPausedItemsDictionary allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_syncPausedItemsDictionary objectForKeyedSubscript:v11];
        v13 = [v12 allKeysForObject:v5];
        if (v13)
        {
          [v6 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)garbageCollectDomainsExceptIdentifiers:(uint64_t)a3 fromDirectory:(os_log_t)log isUserData:.cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx garbage collecting in %@", buf, 0x16u);
}

void __86__FPDExtensionManager__garbageCollectRemovedProvidersForInstalledProviderIdentifiers___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, a2, a3, "[ERROR] failed deleting searchable items for %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __86__FPDExtensionManager__garbageCollectRemovedProvidersForInstalledProviderIdentifiers___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] deleted all searchable items for %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __50__FPDExtensionManager_garbageCollectOnFirstLaunch__block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] Can't adopt persona %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __49__FPDExtensionManager_synchronousProviderUpdate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, v0, v1, "[ERROR] Failed to adopt default persona (%@) - reloading providers may fail", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__FPDExtensionManager_synchronousProviderUpdate___block_invoke_cold_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 56);
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_5_3();
  _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] Updating extensions: %@ -> %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)migrateEnabledStateIfNecessary:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)uniquedExtensions:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1CEFC7000, a4, OS_LOG_TYPE_ERROR, "[ERROR] ignoring extension without File Provider Storage URL: %@", a1, 0xCu);
}

- (void)_domainForURL:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_shortDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = [a2 count];
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] testing if %@ is in our %lu registered file providers: it's not", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_serializeAlternateContentsURLDictionary:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = alternateContentsPlistURL();
  v3 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_serializeAlternateContentsURLDictionary:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_deserializedAlternateContentsDictionary
{
  v8 = *MEMORY[0x1E69E9840];
  fp_prettyDescription = [self fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __65__FPDExtensionManager_dropLegacyDaemonCoreSpotlightIndexIfNeeded__block_invoke_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, a1, a3, "[ERROR] failed to synchronize user defaults for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_serializePausedSyncItemsDictionary:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = pausedSyncItemslistURL();
  v3 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end