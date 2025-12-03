@interface FPDProvider
+ (id)defaultNSDomainForDescriptor:(id)descriptor;
+ (id)fpfsDomainURLIsRootOf:(id)of;
+ (id)getXattr:(const char *)xattr at:(const char *)at;
+ (id)onDiskProvidersForServer:(id)server;
+ (void)_garbageCollectFoldersWithNoRelatedDomain:(id)domain supportDir:(id)dir;
+ (void)dumpXattrsForContentsOfDirectoryAtURL:(id)l dumper:(id)dumper;
+ (void)dumpXattrsForItemAtURL:(id)l to:(id)to;
+ (void)dumpXattrsForSyncRootDirectoryOfVolume:(id)volume dumper:(id)dumper;
+ (void)dumpXattrsForSystemDirectoryOfVolume:(id)volume dumper:(id)dumper;
- (BOOL)_supportsFPFS;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKnownFolderSyncingAllowedByManagement;
- (BOOL)shouldHideDomainDisplayName;
- (BOOL)supportsFPFS;
- (BOOL)testingProvider;
- (FPDExtension)asAppExtensionBackedProvider;
- (FPDProvider)initWithDescriptor:(id)descriptor server:(id)server;
- (NSArray)providedItemsURLs;
- (NSDictionary)nsDomainsByID;
- (NSDictionary)relevantDomainsByID;
- (id)_domainsWithFilter:(id)filter;
- (id)_recreateDefaultDomainIfNeededOnVolume:(id)volume;
- (id)defaultNSDomain;
- (id)description;
- (id)domainForIdentifier:(id)identifier reason:(unint64_t *)reason;
- (id)domainForRealPathURLFast:(id)fast;
- (id)domainForRealPathURLSlow:(id)slow;
- (id)domainForURL:(id)l;
- (id)importDomainsFromLibrary:(id)library updatePlist:(BOOL)plist;
- (id)loggerForDomainWithIdentifier:(id)identifier;
- (id)newDomainFromNSDomain:(id)domain volume:(id)volume;
- (id)providerDomainForDomain:(id)domain;
- (void)_setEnabledOrHiddenByUser:(BOOL)user forDomainIdentifier:(id)identifier newValue:(BOOL)value request:(id)request completionHandler:(id)handler;
- (void)_writeDomainPropertiesIntoLibrary:(id)library ifChangedFrom:(id)from;
- (void)addDomain:(id)domain byImportingDirectoryAtURL:(id)l knownFolders:(id)folders userAllowedDBDrop:(BOOL)drop unableToStartup:(BOOL)startup startupError:(id)error reloadDomain:(BOOL)reloadDomain request:(id)self0 completionHandler:(id)self1;
- (void)dumpAllDomains:(id)domains domains:(id)a4 auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpDomain:(id)domain allowedToDump:(BOOL)dump dumper:(id)dumper options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)dumpStateTo:(id)to auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpValue:(id)value forKey:(id)key to:(id)to;
- (void)dumpXattrsForDomains:(id)domains dumper:(id)dumper;
- (void)enableAllDomainsIfNoUserElection;
- (void)invalidateAllDomainsOnVolume:(id)volume reason:(id)reason;
- (void)invalidateSingleDomain:(id)domain reason:(id)reason;
- (void)invalidateWithReason:(id)reason;
- (void)materializeRootForDomain:(id)domain;
- (void)removeAllDomainsForRequest:(id)request completionHandler:(id)handler;
- (void)removeDomain:(id)domain mode:(unint64_t)mode request:(id)request completionHandler:(id)handler;
- (void)setDomainUserInfo:(id)info forDomainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setEjectable:(BOOL)ejectable forDomainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setReplicatedKnownFolders:(unint64_t)folders forDomainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)startDomains:(id)domains completion:(id)completion;
- (void)startWithCompletion:(id)completion;
- (void)writeAllDomainProperties;
@end

@implementation FPDProvider

- (NSDictionary)relevantDomainsByID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_domainsByID fp_filter:&__block_literal_global_176];
  objc_sync_exit(selfCopy);

  return v3;
}

uint64_t __34__FPDProvider_relevantDomainsByID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 nsDomain];
  if ([v4 isHidden])
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E6967178]] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSDictionary)nsDomainsByID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_new();
  relevantDomainsByID = [(FPDProvider *)selfCopy relevantDomainsByID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__FPDProvider_nsDomainsByID__block_invoke;
  v7[3] = &unk_1E83BFD50;
  v5 = v3;
  v8 = v5;
  [relevantDomainsByID enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(selfCopy);

  return v5;
}

void __28__FPDProvider_nsDomainsByID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 nsDomainOrNilForDefault];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (NSArray)providedItemsURLs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_domainsByID allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        rootURLs = [*(*(&v12 + 1) + 8 * i) rootURLs];
        [v3 addObjectsFromArray:rootURLs];
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)shouldHideDomainDisplayName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [(FPDProvider *)selfCopy identifier];
  v4 = [identifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    relevantDomainsByID = [(FPDProvider *)selfCopy relevantDomainsByID];
    v5 = [relevantDomainsByID count] < 2;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)isKnownFolderSyncingAllowedByManagement
{
  if (isKnownFolderSyncingAllowedByManagement_onceToken != -1)
  {
    [FPDProvider isKnownFolderSyncingAllowedByManagement];
  }

  descriptor = [(FPDProvider *)self descriptor];
  topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];

  if (isKnownFolderSyncingAllowedByManagement_knownFolderSyncingIsGloballyDisallowed)
  {
    v5 = 0;
  }

  else if (isKnownFolderSyncingAllowedByManagement_allowedBundleIDs)
  {
    v5 = [isKnownFolderSyncingAllowedByManagement_allowedBundleIDs containsObject:topLevelBundleIdentifier];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (FPDProvider)initWithDescriptor:(id)descriptor server:(id)server
{
  v58 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  serverCopy = server;
  v56.receiver = self;
  v56.super_class = FPDProvider;
  v9 = [(FPDProvider *)&v56 init];
  if (v9)
  {
    v10 = objc_opt_new();
    domainsByID = v9->_domainsByID;
    v9->_domainsByID = v10;

    v12 = objc_opt_new();
    domainsByRootPath = v9->_domainsByRootPath;
    v9->_domainsByRootPath = v12;

    objc_storeStrong(&v9->_descriptor, descriptor);
    identifier = [(FPDProviderDescriptor *)v9->_descriptor identifier];
    v15 = [identifier stringByAppendingString:@".domain"];
    v16 = v15;
    uTF8String = [v15 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    domainQueue = v9->_domainQueue;
    v9->_domainQueue = v19;

    v21 = [identifier stringByAppendingString:@".queue"];
    v22 = v21;
    uTF8String2 = [v21 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(uTF8String2, v24);
    queue = v9->_queue;
    v9->_queue = v25;

    v27 = [identifier stringByAppendingString:@".presenters"];
    v28 = v27;
    uTF8String3 = [v27 UTF8String];
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create(uTF8String3, v30);
    presentersQueue = v9->_presentersQueue;
    v9->_presentersQueue = v31;

    objc_storeStrong(&v9->_server, server);
    extensionManager = [serverCopy extensionManager];
    manager = v9->_manager;
    v9->_manager = extensionManager;

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    v55 = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    personaIdentifier = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
    if (userPersonaUniqueString == personaIdentifier)
    {
      v46 = 0;
    }

    else
    {
      personaIdentifier2 = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
      v40 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

      if ((v40 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
      {
        v46 = 0;
LABEL_15:
        fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
        v49 = [fp_supportDirectory URLByAppendingPathComponent:identifier isDirectory:1];
        objc_storeStrong(&v9->_supportURL, v49);
        v50 = [v49 URLByAppendingPathComponent:@"Provider.plist" isDirectory:0];
        providerPlistURL = v9->_providerPlistURL;
        v9->_providerPlistURL = v50;

        _FPRestorePersona();
        goto LABEL_16;
      }

      v54 = 0;
      v41 = [currentPersona copyCurrentPersonaContextWithError:&v54];
      v42 = v54;
      v43 = v55;
      v55 = v41;

      if (v42)
      {
        v44 = fp_current_or_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [FPDProviderDescriptor initWithExtensionRecord:];
        }
      }

      personaIdentifier3 = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
      v46 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

      if (!v46)
      {
        goto LABEL_15;
      }

      personaIdentifier = fp_current_or_default_log();
      if (os_log_type_enabled(personaIdentifier, OS_LOG_TYPE_ERROR))
      {
        personaIdentifier4 = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
        [(FPDProvider *)personaIdentifier4 initWithDescriptor:v46 server:v57];
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  v52 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)startDomains:(id)domains completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  block = completion;
  dispatch_assert_queue_V2(self->_domainQueue);
  v7 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = domainsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 log];
        v22 = fpfs_adopt_log();

        if (([v12 started] & 1) == 0 && (objc_msgSend(v12, "invalidated") & 1) == 0)
        {
          domainsByID = self->_domainsByID;
          identifier = [v12 identifier];
          v16 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:identifier];
          LOBYTE(domainsByID) = v12 == v16;

          if (domainsByID)
          {
            [v12 finishSetup];
            selfCopy = self;
            objc_sync_enter(selfCopy);
            addRootPathKeys(self->_domainsByRootPath, v12);
            objc_sync_exit(selfCopy);

            dispatch_group_enter(v7);
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __39__FPDProvider_startDomains_completion___block_invoke;
            v20[3] = &unk_1E83BE068;
            v21 = v7;
            [(FPDProvider *)selfCopy _startOrClearDomain:v12 userAllowedDBDrop:0 reason:@"domainStartup" completion:v20];
          }
        }

        __fp_pop_log();
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  dispatch_group_notify(v7, self->_queue, block);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)startWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  section = __fp_create_section();
  v14 = section;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FPDProvider *)self identifier];
    *buf = 134218242;
    *&buf[4] = section;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Starting domains for %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  domainQueue = self->_domainQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__FPDProvider_startWithCompletion___block_invoke;
  v11[3] = &unk_1E83BFBB0;
  v12 = completionCopy;
  v13 = buf;
  v11[4] = self;
  v9 = completionCopy;
  dispatch_sync(domainQueue, v11);

  _Block_object_dispose(buf, 8);
  __fp_leave_section_Notice();
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __35__FPDProvider_startWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 80) allValues];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_sync_exit(v2);
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = *(a1 + 32);

  return [v8 startDomains:v7 completion:v6];
}

- (void)invalidateSingleDomain:(id)domain reason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  reasonCopy = reason;
  section = __fp_create_section();
  v16 = section;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v18 = section;
    v19 = 2114;
    v20 = domainCopy;
    v21 = 2114;
    v22 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Tearing down %{public}@ (reason: %{public}@)", buf, 0x20u);
  }

  domainQueue = self->_domainQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPDProvider_invalidateSingleDomain_reason___block_invoke;
  block[3] = &unk_1E83BE158;
  block[4] = self;
  v11 = domainCopy;
  v15 = v11;
  dispatch_sync(domainQueue, block);
  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidating domain %@ (reason: %@)", v11, reasonCopy];
  [v11 invalidateWithReason:reasonCopy];

  [v11 invalidateSession];
  __fp_leave_section_Notice();

  v13 = *MEMORY[0x1E69E9840];
}

void __45__FPDProvider_invalidateSingleDomain_reason___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) nsDomain];
  v4 = [v3 identifier];
  v5 = [v4 precomposedStringWithCanonicalMapping];
  [v2 removeObjectForKey:v5];

  removeRootPathKeys(*(*(a1 + 32) + 88), *(a1 + 40));
  objc_sync_exit(obj);
}

- (void)invalidateAllDomainsOnVolume:(id)volume reason:(id)reason
{
  v32 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  reasonCopy = reason;
  section = __fp_create_section();
  v26 = section;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = section;
    *&buf[12] = 2114;
    *&buf[14] = volumeCopy;
    *&buf[22] = 2114;
    v29 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Tearing down all domains on %{public}@ (reason: %{public}@)", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  domainQueue = self->_domainQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FPDProvider_invalidateAllDomainsOnVolume_reason___block_invoke;
  block[3] = &unk_1E83BFBD8;
  block[4] = self;
  v11 = volumeCopy;
  v24 = v11;
  v25 = buf;
  dispatch_sync(domainQueue, block);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(*&buf[8] + 40);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidating domain %@ (reason: %@)", v16, reasonCopy, v19];
        [v16 invalidateWithReason:v17];

        [v16 invalidateSession];
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(buf, 8);
  __fp_leave_section_Notice();

  v18 = *MEMORY[0x1E69E9840];
}

void __51__FPDProvider_invalidateAllDomainsOnVolume_reason___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [*(a1 + 32) domainsByID];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v5)
  {
    v7 = *v28;
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 volume];
        v11 = v10 == *(a1 + 40);

        if (v11)
        {
          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v22;
            v33 = v9;
            _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] Invalidating domain %@...", buf, 0xCu);
          }

          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
          removeRootPathKeys(*(*(a1 + 32) + 88), v9);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = *(*(*(a1 + 48) + 8) + 40);
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(a1 + 32) + 80);
        v18 = [*(*(&v23 + 1) + 8 * j) nsDomain];
        v19 = [v18 identifier];
        v20 = [v19 precomposedStringWithCanonicalMapping];
        [v17 removeObjectForKey:v20];
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  objc_sync_exit(v2);
  v21 = *MEMORY[0x1E69E9840];
}

- (void)invalidateWithReason:(id)reason
{
  v63 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = section;
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v60 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Invalidating %{public}@ (reason: %{public}@)...", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = __Block_byref_object_copy__8;
  v61 = __Block_byref_object_dispose__8;
  v62 = 0;
  domainQueue = self->_domainQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPDProvider_invalidateWithReason___block_invoke;
  block[3] = &unk_1E83BF3D8;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(domainQueue, block);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = *(*&buf[8] + 40);
  v5 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v5)
  {
    v44 = *v49;
    do
    {
      v6 = 0;
      do
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v48 + 1) + 8 * v6);
        reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidating the provider instance (reason: %@)", reasonCopy];
        [v7 invalidateWithReason:reasonCopy];

        nsDomain = [v7 nsDomain];
        personaIdentifier = [nsDomain personaIdentifier];

        if (personaIdentifier)
        {
          mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
          currentPersona = [mEMORY[0x1E69DF068] currentPersona];

          v47 = 0;
          userPersonaUniqueString = [currentPersona userPersonaUniqueString];
          nsDomain2 = [v7 nsDomain];
          personaIdentifier2 = [nsDomain2 personaIdentifier];
          v16 = personaIdentifier2;
          if (userPersonaUniqueString != personaIdentifier2)
          {
            nsDomain3 = [v7 nsDomain];
            personaIdentifier3 = [nsDomain3 personaIdentifier];
            v19 = [userPersonaUniqueString isEqualToString:personaIdentifier3];

            if ((v19 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
            {
              v26 = 0;
            }

            else
            {
              v46 = 0;
              v20 = [currentPersona copyCurrentPersonaContextWithError:&v46];
              v21 = v46;
              v22 = v47;
              v47 = v20;

              if (v21)
              {
                v23 = fp_current_or_default_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *v54 = 138412290;
                  v55 = v21;
                  _os_log_error_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", v54, 0xCu);
                }
              }

              nsDomain4 = [v7 nsDomain];
              personaIdentifier4 = [nsDomain4 personaIdentifier];
              v26 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier4];

              if (v26)
              {
                nsDomain2 = fp_current_or_default_log();
                if (os_log_type_enabled(nsDomain2, OS_LOG_TYPE_ERROR))
                {
                  nsDomain5 = [v7 nsDomain];
                  personaIdentifier5 = [nsDomain5 personaIdentifier];
                  *v54 = 138412546;
                  v55 = personaIdentifier5;
                  v56 = 2112;
                  v57 = v26;
                  _os_log_error_impl(&dword_1CEFC7000, nsDomain2, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", v54, 0x16u);
                }

LABEL_21:
              }
            }

            mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
            currentPersona2 = [mEMORY[0x1E69DF068]2 currentPersona];
            userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];

            if (userPersonaUniqueString2)
            {
              nsDomain6 = [v7 nsDomain];
              personaIdentifier6 = [nsDomain6 personaIdentifier];
              v34 = [userPersonaUniqueString2 isEqualToString:personaIdentifier6];

              if ((v34 & 1) == 0)
              {
                v35 = fp_current_or_default_log();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                {
                  nsDomain7 = [v7 nsDomain];
                  personaIdentifier7 = [nsDomain7 personaIdentifier];
                  *v54 = 138412290;
                  v55 = personaIdentifier7;
                  _os_log_fault_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_FAULT, "[CRIT] domain's persona %@ doesn't exist anymore, cleaning up", v54, 0xCu);
                }

                v36 = [v7 cleanupDomainWithMode:0];
              }
            }

            _FPRestorePersona();
            goto LABEL_28;
          }

          v26 = 0;
          goto LABEL_21;
        }

LABEL_28:
        [v7 invalidateSession];
        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v5);
  }

  server = self->_server;
  self->_server = 0;

  manager = self->_manager;
  self->_manager = 0;

  _Block_object_dispose(buf, 8);
  __fp_leave_section_Notice();

  v41 = *MEMORY[0x1E69E9840];
}

void __36__FPDProvider_invalidateWithReason___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  *(v7 + 88) = 0;

  objc_sync_exit(obj);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FPDProviderDescriptor *)self->_descriptor identifier];
  extensionUUID = [(FPDProviderDescriptor *)self->_descriptor extensionUUID];
  personaIdentifier = [(FPDProviderDescriptor *)self->_descriptor personaIdentifier];
  v8 = [v3 stringWithFormat:@"<%@:%p %@ uuid:%@ persona:%@>", v4, self, identifier, extensionUUID, personaIdentifier];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      descriptor = self->_descriptor;
      descriptor = [(FPDProvider *)equalCopy descriptor];
      v6 = [(FPDProviderDescriptor *)descriptor isEqual:descriptor];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)providerDomainForDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc(MEMORY[0x1E69673D8]);
  identifier = [(FPDProvider *)selfCopy identifier];
  nsDomain = [domainCopy nsDomain];
  v10 = [v7 initWithProviderID:identifier domain:nsDomain];

  descriptor = [(FPDProvider *)selfCopy descriptor];
  localizedName = [descriptor localizedName];
  v13 = localizedName;
  if (localizedName)
  {
    v14 = localizedName;
  }

  else
  {
    v14 = &stru_1F4C2FFD0;
  }

  [v10 setProviderDisplayName:v14];

  extensionPointVersion = [descriptor extensionPointVersion];
  [v10 setVersion:extensionPointVersion];

  supportedFileTypes = [descriptor supportedFileTypes];
  [v10 setSupportedFileTypes:supportedFileTypes];

  [v10 setSupportsEnumeration:{objc_msgSend(descriptor, "supportsEnumeration")}];
  [v10 setIsAvailableSystemWide:{objc_msgSend(descriptor, "isAvailableSystemWide")}];
  readonly = [descriptor readonly];
  if (readonly)
  {
    readOnly = 1;
  }

  else
  {
    nsDomain2 = [domainCopy nsDomain];
    readOnly = [nsDomain2 readOnly];
  }

  [v10 setReadOnly:readOnly];
  if ((readonly & 1) == 0)
  {
  }

  [v10 setCanDisable:{objc_msgSend(descriptor, "canToggleDomainVisibility")}];
  [v10 setShouldHideExtensionName:{objc_msgSend(descriptor, "shouldHideExtensionName")}];
  topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];
  [v10 setTopLevelBundleIdentifier:topLevelBundleIdentifier];

  topLevelBundleURL = [descriptor topLevelBundleURL];
  [v10 setTopLevelBundleURL:topLevelBundleURL];

  [v10 setUsesUniqueItemIdentifiersAcrossDevices:{objc_msgSend(descriptor, "usesUniqueItemIdentifiersAcrossDevices")}];
  supportedSearchFilters = [descriptor supportedSearchFilters];
  [v10 setSupportedSearchFilters:supportedSearchFilters];

  extensionBundleURL = [descriptor extensionBundleURL];
  [v10 setExtensionBundleURL:extensionBundleURL];

  [v10 setOwningApplicationIsHidden:{objc_msgSend(descriptor, "owningApplicationIsHidden")}];
  nsDomain3 = [domainCopy nsDomain];
  [v10 setSupportsPickingFolders:{objc_msgSend(domainCopy, "supportsPickingFolders")}];
  [v10 setUseFPFS:{objc_msgSend(domainCopy, "isUsingFPFS")}];
  [v10 setEnabled:{objc_msgSend(domainCopy, "userEnabled")}];
  [v10 setEjectable:{objc_msgSend(domainCopy, "ejectable")}];
  v33 = 0;
  v24 = [domainCopy rootURLsWithTransientState:&v33];
  [v10 setStorageURLs:v24];

  [v10 setStorageURLsAreInTransientState:v33];
  indexer = [domainCopy indexer];
  [v10 setNeedsAuthentication:{objc_msgSend(indexer, "needsAuthentication")}];

  [v10 setAllowsUserControlledEviction:{objc_msgSend(descriptor, "allowsUserControlledEviction")}];
  [v10 setAllowsSystemDeleteAlerts:{objc_msgSend(descriptor, "allowsSystemDeleteAlerts")}];
  [v10 setAllowsContextualMenuDownloadEntry:{objc_msgSend(descriptor, "allowsContextualMenuDownloadEntry")}];
  [v10 setDisconnectionState:{objc_msgSend(domainCopy, "disconnectionState")}];
  [v10 setAppliesChangesAtomically:{objc_msgSend(descriptor, "appliesChangesAtomically")}];
  domainUserInfo = [domainCopy domainUserInfo];
  [v10 setDomainUserInfo:domainUserInfo];

  [v10 setBackgroundActivityIsPaused:{objc_msgSend(domainCopy, "backgroundActivityIsPaused")}];
  [v10 setSupportsSyncingTrash:{objc_msgSend(domainCopy, "supportsSyncingTrash")}];
  [v10 setSupportsSearch:{objc_msgSend(domainCopy, "supportsSearch")}];
  [v10 setErrorGenerationCount:{objc_msgSend(domainCopy, "errorGenerationCount")}];
  indexer2 = [domainCopy indexer];
  [v10 setIsIndexed:{objc_msgSend(indexer2, "isIndexed")}];

  [v10 setSupportsRemoteVersions:{objc_msgSend(domainCopy, "supportsRemoteVersions")}];
  volume = [domainCopy volume];
  if ([volume role] == 1)
  {
    isKnownFolderSyncingAllowedByManagement = [(FPDProvider *)selfCopy isKnownFolderSyncingAllowedByManagement];

    if (!isKnownFolderSyncingAllowedByManagement)
    {
      goto LABEL_13;
    }

    volume = [domainCopy nsDomain];
    [v10 setSupportedKnownFolders:{objc_msgSend(volume, "supportedKnownFolders")}];
  }

LABEL_13:
  volume2 = [domainCopy volume];
  [v10 setIsOnMainVolume:{objc_msgSend(volume2, "role") == 1}];

  nsDomain4 = [domainCopy nsDomain];
  [v10 setSupportsSearchOnServer:{objc_msgSend(nsDomain4, "supportsStringSearchRequest")}];

  objc_sync_exit(selfCopy);

  return v10;
}

- (FPDExtension)asAppExtensionBackedProvider
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: -asAppExtensionBackedProvider called on a non-app extension backed provider"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDProvider asAppExtensionBackedProvider]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 343, [v2 UTF8String]);
}

- (BOOL)_supportsFPFS
{
  identifier = [(FPDProvider *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.FileProvider.TestingHarness.TestFileProvider"];

  if (v4)
  {
    return 0;
  }

  identifier2 = [(FPDProvider *)self identifier];
  v6 = [identifier2 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v6)
  {
    return 0;
  }

  identifier3 = [(FPDProvider *)self identifier];
  IsDeniedForFPFS = FPFSProviderIsDeniedForFPFS();

  return IsDeniedForFPFS ^ 1;
}

- (BOOL)supportsFPFS
{
  v12 = *MEMORY[0x1E69E9840];
  supportsEnumeration = [(FPDProvider *)self supportsEnumeration];
  if (supportsEnumeration)
  {
    if (![(FPDProvider *)self _supportsFPFS])
    {
      identifier = [(FPDProvider *)self identifier];
      IsForcedForFPFS = FPFSProviderIsForcedForFPFS();

      if (!IsForcedForFPFS)
      {
        LOBYTE(supportsEnumeration) = 0;
        goto LABEL_9;
      }

      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        identifier2 = [(FPDProvider *)self identifier];
        v10 = 138412290;
        v11 = identifier2;
        _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_INFO, "[INFO] %@ is fpfs-forced", &v10, 0xCu);
      }
    }

    LOBYTE(supportsEnumeration) = 1;
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return supportsEnumeration;
}

- (BOOL)testingProvider
{
  identifier = [(FPDProvider *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.FileProvider.TestingHarness.TestFileProvider"];

  return v3;
}

- (id)domainForURL:(id)l
{
  fp_realpathURL = [l fp_realpathURL];
  v5 = [(FPDProvider *)self domainForRealPathURLFast:fp_realpathURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(FPDProvider *)self domainForRealPathURLSlow:fp_realpathURL];
  }

  v8 = v7;

  return v8;
}

- (id)domainForRealPathURLFast:(id)fast
{
  v64 = *MEMORY[0x1E69E9840];
  fastCopy = fast;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = selfCopy;
  obj = selfCopy->_domainsByRootPath;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v5)
  {
    v47 = *v55;
    v46 = *MEMORY[0x1E6967178];
    *&v6 = 138412546;
    v40 = v6;
    while (2)
    {
      v7 = 0;
      v45 = v5;
      do
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v54 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [(NSMutableDictionary *)v48->_domainsByRootPath objectForKeyedSubscript:v8];
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:v46];

        if (v12)
        {
          v13 = 3;
        }

        else
        {
          path = [fastCopy path];
          v49 = [v8 fp_relativePathWithRealpath:path];

          if (v49)
          {
            domainsByID = v48->_domainsByID;
            identifier2 = [v10 identifier];
            precomposedStringWithCanonicalMapping = [identifier2 precomposedStringWithCanonicalMapping];
            v44 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:precomposedStringWithCanonicalMapping];

            if (v44 == v10)
            {
              rootURLs = [v10 rootURLs];
              v23 = [rootURLs copy];

              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v18 = v23;
              v24 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v24)
              {
                v25 = *v51;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v51 != v25)
                    {
                      objc_enumerationMutation(v18);
                    }

                    path2 = [*(*(&v50 + 1) + 8 * i) path];
                    fp_realpath = [path2 fp_realpath];

                    LOBYTE(path2) = [fp_realpath isEqual:v8];
                    if (path2)
                    {

                      v30 = fp_current_or_default_log();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                      {
                        identifier3 = [v10 identifier];
                        fp_obfuscatedProviderDomainID = [identifier3 fp_obfuscatedProviderDomainID];
                        fp_shortDescription = [fastCopy fp_shortDescription];
                        *buf = v40;
                        v60 = fp_obfuscatedProviderDomainID;
                        v61 = 2112;
                        v62 = fp_shortDescription;
                        _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Found domain %@ with fast path for %@", buf, 0x16u);
                      }

                      v41 = v10;
                      v13 = 1;
                      goto LABEL_28;
                    }
                  }

                  v24 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              v29 = fp_current_or_default_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                fp_shortDescription2 = [fastCopy fp_shortDescription];
                identifier4 = [v10 identifier];
                fp_obfuscatedProviderDomainID2 = [identifier4 fp_obfuscatedProviderDomainID];
                *buf = 138543618;
                v60 = fp_shortDescription2;
                v61 = 2114;
                v62 = fp_obfuscatedProviderDomainID2;
                _os_log_error_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_ERROR, "[ERROR] Fast path %{public}@ for domain %{public}@ not accurate: root path not present", buf, 0x16u);
              }
            }

            else
            {
              v18 = fp_current_or_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                fp_prettyPath = [v8 fp_prettyPath];
                identifier5 = [v10 identifier];
                fp_obfuscatedProviderDomainID3 = [identifier5 fp_obfuscatedProviderDomainID];
                *buf = 138543618;
                v60 = fp_prettyPath;
                v61 = 2114;
                v62 = fp_obfuscatedProviderDomainID3;
                _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "[ERROR] Fast path %{public}@ for domain %{public}@ not accurate: domain not in domainsByID", buf, 0x16u);
              }
            }

            v13 = 2;
LABEL_28:
          }

          else
          {
            v13 = 3;
          }
        }

        objc_autoreleasePoolPop(v9);
        if (v13 != 3)
        {
          if (v13)
          {
            v37 = v41;
          }

          else
          {
            v37 = 0;
          }

          goto LABEL_37;
        }

        ++v7;
      }

      while (v7 != v45);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0;
LABEL_37:

  objc_sync_exit(v48);
  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)domainForRealPathURLSlow:(id)slow
{
  v24 = *MEMORY[0x1E69E9840];
  slowCopy = slow;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_domainsByID allValues];
  objc_sync_exit(selfCopy);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = allValues;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    v11 = *MEMORY[0x1E6967178];
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isProviderForRealPathURL:{slowCopy, v19}])
        {
          identifier = [v13 identifier];
          v15 = [identifier isEqualToString:v11];

          v16 = v13;
          if (!v15)
          {

            goto LABEL_13;
          }

          v8 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v8 = v8;
  v16 = v8;
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __54__FPDProvider_isKnownFolderSyncingAllowedByManagement__block_invoke()
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  if (([v5 objectIsForcedForKey:@"ManagementAllowsKnownFolderSyncing"] & 1) != 0 || FPIgnoresForcedKeyChecks())
  {
    isKnownFolderSyncingAllowedByManagement_knownFolderSyncingIsGloballyDisallowed = [v5 BOOLForKey:@"ManagementAllowsKnownFolderSyncing"] ^ 1;
  }

  if (([v5 objectIsForcedForKey:@"ManagementKnownFolderSyncingAllowList"] & 1) != 0 || FPIgnoresForcedKeyChecks())
  {
    v0 = [v5 stringArrayForKey:@"ManagementKnownFolderSyncingAllowList"];

    if (v0)
    {
      v1 = MEMORY[0x1E695DFD8];
      v2 = [v5 stringArrayForKey:@"ManagementKnownFolderSyncingAllowList"];
      v3 = [v1 setWithArray:v2];
      v4 = isKnownFolderSyncingAllowedByManagement_allowedBundleIDs;
      isKnownFolderSyncingAllowedByManagement_allowedBundleIDs = v3;
    }
  }
}

- (id)domainForIdentifier:(id)identifier reason:(unint64_t *)reason
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no domain identifier"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDProvider domainForIdentifier:reason:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 530, [v13 UTF8String]);
  }

  v7 = identifierCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  domainsByID = selfCopy->_domainsByID;
  precomposedStringWithCanonicalMapping = [v7 precomposedStringWithCanonicalMapping];
  v11 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:precomposedStringWithCanonicalMapping];

  if (reason && !v11)
  {
    *reason = 1;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)loggerForDomainWithIdentifier:(id)identifier
{
  identifierCopy = *MEMORY[0x1E6967178];
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v5 = identifierCopy;
  v6 = MEMORY[0x1E696AEC0];
  identifier = [(FPDProvider *)self identifier];
  v8 = [v6 fp_providerDomainIDFromProviderID:identifier domainIdentifier:v5];

  fp_obfuscatedProviderDomainID = [v8 fp_obfuscatedProviderDomainID];
  [fp_obfuscatedProviderDomainID UTF8String];
  v10 = fpfs_create_log_for_provider();

  return v10;
}

+ (id)fpfsDomainURLIsRootOf:(id)of
{
  ofCopy = of;
  v4 = [ofCopy fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
  if (v4 && getxattr([ofCopy fileSystemRepresentation], "com.apple.fileprovider.detached#B", 0, 0, 0, 0) < 0 && getxattr(objc_msgSend(ofCopy, "fileSystemRepresentation"), "com.apple.fileprovider.detached", 0, 0, 0, 0) < 0 && getxattr(objc_msgSend(ofCopy, "fileSystemRepresentation"), "com.apple.fileprovider.detached#PN", 0, 0, 0, 0) < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)onDiskProvidersForServer:(id)server
{
  v76 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v5 = objc_opt_new();
  section = __fp_create_section();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    fp_shortDescription = [fp_supportDirectory fp_shortDescription];
    *buf = 134218242;
    v73 = section;
    v74 = 2114;
    v75 = fp_shortDescription;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Listing domains & providers in %{public}@", buf, 0x16u);
  }

  volumeManager = [serverCopy volumeManager];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __40__FPDProvider_onDiskProvidersForServer___block_invoke;
  v65[3] = &unk_1E83BFC00;
  v41 = defaultManager;
  v66 = v41;
  selfCopy = self;
  v51 = v5;
  v67 = v51;
  [volumeManager enumerateLibrariesWithBlock:v65];

  v43 = objc_opt_new();
  [v41 enumeratorAtURL:fp_supportDirectory includingPropertiesForKeys:0 options:1 errorHandler:0];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v9 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v9)
  {
    v49 = *v62;
    do
    {
      v50 = v9;
      for (i = 0; i != v50; ++i)
      {
        if (*v62 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        if ([v11 fp_isFolder])
        {
          v12 = [v11 URLByAppendingPathComponent:@"Provider.plist"];
          v60 = 0;
          v13 = [v12 checkResourceIsReachableAndReturnError:&v60];
          v14 = v60;
          if (v13)
          {
            v59 = __fp_create_section();
            v15 = fp_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v59;
              lastPathComponent = [v11 lastPathComponent];
              *buf = 134218242;
              v73 = v16;
              v74 = 2114;
              v75 = lastPathComponent;
              _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Loading %{public}@", buf, 0x16u);
            }

            v47 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v12];
            if (v47)
            {
              v18 = MEMORY[0x1E696ACD0];
              v19 = objc_opt_class();
              v58 = v14;
              log = [v18 unarchivedObjectOfClass:v19 fromData:v47 error:&v58];
              v45 = v58;

              if (log)
              {
                v20 = [[FPDProvider alloc] initWithDescriptor:log server:serverCopy];
                if (v20)
                {
                  volumeManager2 = [serverCopy volumeManager];
                  personaIdentifier = [log personaIdentifier];
                  v56[0] = MEMORY[0x1E69E9820];
                  v56[1] = 3221225472;
                  v56[2] = __40__FPDProvider_onDiskProvidersForServer___block_invoke_65;
                  v56[3] = &unk_1E83BDF50;
                  v20 = v20;
                  v57 = v20;
                  [volumeManager2 enumerateLibrariesForPersona:personaIdentifier withBlock:v56];

                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  allValues = [(NSMutableDictionary *)v20->_domainsByID allValues];
                  v24 = [allValues countByEnumeratingWithState:&v52 objects:v70 count:16];
                  if (v24)
                  {
                    v25 = *v53;
                    while (2)
                    {
                      for (j = 0; j != v24; ++j)
                      {
                        if (*v53 != v25)
                        {
                          objc_enumerationMutation(allValues);
                        }

                        v27 = *(*(&v52 + 1) + 8 * j);
                        providerDomainID = [v27 providerDomainID];
                        v29 = [v51 containsObject:providerDomainID];

                        if (v29)
                        {

                          v38 = fp_current_or_default_log();
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543362;
                            v73 = v20;
                            _os_log_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_DEFAULT, "[NOTICE] Read provider %{public}@ from disk", buf, 0xCu);
                          }

                          [v43 addObject:v20];
                          goto LABEL_39;
                        }

                        v30 = fp_current_or_default_log();
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                        {
                          [v27 providerDomainID];
                          objc_claimAutoreleasedReturnValue();
                          +[FPDProvider onDiskProvidersForServer:];
                        }
                      }

                      v24 = [allValues countByEnumeratingWithState:&v52 objects:v70 count:16];
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v31 = fp_current_or_default_log();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v73 = v20;
                    _os_log_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEFAULT, "[WARNING] no root reachable for provider %@, skipping", buf, 0xCu);
                  }

LABEL_39:
                }
              }

              else
              {
                v20 = fp_current_or_default_log();
                if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_DEFAULT))
                {
                  fp_shortDescription2 = [v12 fp_shortDescription];
                  *buf = 138412546;
                  v73 = fp_shortDescription2;
                  v74 = 2112;
                  v75 = v45;
                  _os_log_impl(&dword_1CEFC7000, &v20->super, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't upack provider descriptor for %@: %@", buf, 0x16u);
                }
              }

              v14 = v45;
            }

            else
            {
              log = fp_current_or_default_log();
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                fp_shortDescription3 = [v12 fp_shortDescription];
                *buf = 138412290;
                v73 = fp_shortDescription3;
                _os_log_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't load data for %@", buf, 0xCu);
              }
            }

            __fp_leave_section_Notice();
          }

          else
          {
            v32 = [v11 fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
            v33 = v32 == 0;

            if (v33)
            {
              v34 = fp_current_or_default_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                fp_shortDescription4 = [v11 fp_shortDescription];
                *buf = 138543362;
                v73 = fp_shortDescription4;
                _os_log_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_DEFAULT, "[WARNING] found directory with no domain plist in it: %{public}@", buf, 0xCu);
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v9);
  }

  __fp_leave_section_Notice();
  v39 = *MEMORY[0x1E69E9840];

  return v43;
}

uint64_t __40__FPDProvider_onDiskProvidersForServer___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a2;
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v26 = section;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Listing domains & providers in %{public}@", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = [v18 syncRootsDirectory];
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 fp_isFolder])
        {
          v12 = [*(a1 + 48) fpfsDomainURLIsRootOf:v11];
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 fp_obfuscatedProviderDomainID];
            v15 = [v11 fp_shortDescription];
            *buf = 138412546;
            v26 = v14;
            v27 = 2112;
            v28 = v15;
            _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] found domain xattr '%@' on %@", buf, 0x16u);
          }

          if (v12)
          {
            [*(a1 + 40) addObject:v12];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  __fp_leave_section_Notice();
  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)writeAllDomainProperties
{
  server = [(FPDProvider *)self server];
  volumeManager = [server volumeManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__FPDProvider_writeAllDomainProperties__block_invoke;
  v5[3] = &unk_1E83BDF50;
  v5[4] = self;
  [volumeManager enumerateLibrariesWithBlock:v5];
}

- (void)_writeDomainPropertiesIntoLibrary:(id)library ifChangedFrom:(id)from
{
  v59 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  fromCopy = from;
  section = __fp_create_section();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FPDProvider *)self identifier];
    *buf = 134218498;
    v54 = section;
    v55 = 2114;
    v56 = identifier;
    v57 = 2114;
    v58 = libraryCopy;
    _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx writing domain properties for %{public}@ onto %{public}@", buf, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v45 = objc_opt_new();
  v10 = fromCopy != 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = selfCopy->_domainsByID;
  v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v11)
  {
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:v14];
        v16 = v15;
        if (!libraryCopy || ([v15 volume], v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 == libraryCopy, v17, v18))
        {
          v19 = fp_current_or_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            nsDomain = [v16 nsDomain];
            *buf = 138543362;
            v54 = nsDomain;
            _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_INFO, "[INFO] writing properties for domain %{public}@", buf, 0xCu);
          }

          [v16 nsDomainOrNilForDefault];
          nsDomainOrNilForDefault = [v16 nsDomainOrNilForDefault];
          plistDictionary = [nsDomainOrNilForDefault plistDictionary];
          v23 = plistDictionary;
          if (!plistDictionary)
          {
            plistDictionary = MEMORY[0x1E695E0F8];
          }

          v24 = [plistDictionary mutableCopy];

          v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "userEnabled")}];
          [v24 setObject:v25 forKeyedSubscript:@"Enabled"];

          v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "ejectable")}];
          [v24 setObject:v26 forKeyedSubscript:@"Connected"];

          domainUserInfo = [v16 domainUserInfo];
          [v24 setObject:domainUserInfo forKeyedSubscript:@"DomainUserInfo"];

          [v45 setObject:v24 forKeyedSubscript:v14];
          v10 = 1;
        }
      }

      v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v11);
  }

  if (v10)
  {
    if ([libraryCopy role] != 1)
    {
      [libraryCopy role];
    }

    if (([v45 isEqualToDictionary:fromCopy] & 1) == 0)
    {
      systemDirectory = [libraryCopy systemDirectory];
      v29 = systemDirectory;
      if (systemDirectory)
      {
        fp_supportDirectory = systemDirectory;
      }

      else
      {
        fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
      }

      v31 = fp_supportDirectory;

      identifier2 = [(FPDProviderDescriptor *)selfCopy->_descriptor identifier];
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v54 = identifier2;
        v55 = 2112;
        v56 = libraryCopy;
        v57 = 2112;
        v58 = v31;
        _os_log_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_INFO, "[INFO] Updating plist for %@ on %@ (%@)", buf, 0x20u);
      }

      v34 = [v31 URLByAppendingPathComponent:identifier2];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:0];

      v46 = 0;
      LODWORD(defaultManager) = [libraryCopy writeDomainsProperties:v45 underDirectoryAtURL:v34 error:&v46];
      v36 = v46;
      if (defaultManager)
      {
        v37 = fp_current_or_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          identifier3 = [(FPDProvider *)selfCopy identifier];
          allKeys = [(NSMutableDictionary *)selfCopy->_domainsByID allKeys];
          *buf = 138412802;
          v54 = identifier3;
          v55 = 2112;
          v56 = v34;
          v57 = 2112;
          v58 = allKeys;
          _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] updated domain plist for %@ at %@: %@", buf, 0x20u);
        }
      }

      else
      {
        v37 = fp_current_or_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          identifier4 = [(FPDProvider *)selfCopy identifier];
          fp_prettyDescription = [v36 fp_prettyDescription];
          *buf = 138412802;
          v54 = identifier4;
          v55 = 2112;
          v56 = v34;
          v57 = 2112;
          v58 = fp_prettyDescription;
          _os_log_error_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_ERROR, "[ERROR] error while writing domain plist for %@ at %@: %@", buf, 0x20u);
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
  __fp_leave_section_Notice();

  v40 = *MEMORY[0x1E69E9840];
}

- (id)_recreateDefaultDomainIfNeededOnVolume:(id)volume
{
  v20 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = *MEMORY[0x1E6967178];
  v7 = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:*MEMORY[0x1E6967178]];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:v6];
    nsDomain = [v8 nsDomain];
    isHidden = [nsDomain isHidden];

    if ([(NSMutableDictionary *)selfCopy->_domainsByID count]== 1 && [(FPDProviderDescriptor *)selfCopy->_descriptor defaultDomainVisible])
    {
      if (!isHidden)
      {
        v12 = 0;
        goto LABEL_18;
      }

      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(FPDProvider *)selfCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [FPDProvider _recreateDefaultDomainIfNeededOnVolume:];
      }

      v12 = 0;
    }

    else
    {
      if (isHidden)
      {
        v12 = 1;
LABEL_18:
        defaultNSDomain = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:v6];
        nsDomain2 = [defaultNSDomain nsDomain];
        [nsDomain2 setHidden:v12];

        v14 = 0;
        goto LABEL_19;
      }

      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(FPDProvider *)selfCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [FPDProvider _recreateDefaultDomainIfNeededOnVolume:];
      }

      v12 = 1;
    }

    goto LABEL_18;
  }

  defaultNSDomain = [(FPDProvider *)selfCopy defaultNSDomain];
  v14 = [(FPDProvider *)selfCopy newDomainFromNSDomain:defaultNSDomain volume:volumeCopy];
  descriptor = [(FPDProvider *)selfCopy descriptor];
  [v14 setUserEnabled:{objc_msgSend(descriptor, "enabledByDefault")}];

  [v14 setEjectable:0];
  [v14 setShouldIndexWhenStart:{objc_msgSend(v14, "userEnabled")}];
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(FPDProvider *)selfCopy identifier];
    objc_claimAutoreleasedReturnValue();
    [FPDProvider _recreateDefaultDomainIfNeededOnVolume:];
  }

  [(NSMutableDictionary *)selfCopy->_domainsByID setObject:v14 forKeyedSubscript:v6];
LABEL_19:

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)defaultNSDomain
{
  v3 = objc_alloc(MEMORY[0x1E69674D8]);
  v4 = [v3 initWithIdentifier:*MEMORY[0x1E6967178] displayName:&stru_1F4C2FFD0 pathRelativeToDocumentStorage:&stru_1F4C2FFD0];
  [v4 setHidden:{-[FPDProviderDescriptor defaultDomainVisible](self->_descriptor, "defaultDomainVisible") ^ 1}];
  personaIdentifier = [(FPDProviderDescriptor *)self->_descriptor personaIdentifier];
  [v4 setPersonaIdentifier:personaIdentifier];

  return v4;
}

- (id)newDomainFromNSDomain:(id)domain volume:(id)volume
{
  v30 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  volumeCopy = volume;
  pathRelativeToDocumentStorage = [domainCopy pathRelativeToDocumentStorage];
  if ([pathRelativeToDocumentStorage length])
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    extensionStorageURLs = [(FPDProviderDescriptor *)self->_descriptor extensionStorageURLs];
    v11 = [v9 initWithCapacity:{objc_msgSend(extensionStorageURLs, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    extensionStorageURLs2 = [(FPDProviderDescriptor *)self->_descriptor extensionStorageURLs];
    v13 = [extensionStorageURLs2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(extensionStorageURLs2);
          }

          v17 = [*(*(&v25 + 1) + 8 * i) URLByAppendingPathComponent:pathRelativeToDocumentStorage isDirectory:1];
          [v11 addObject:v17];
        }

        v14 = [extensionStorageURLs2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }
  }

  else
  {
    extensionStorageURLs2 = [(FPDProviderDescriptor *)self->_descriptor extensionStorageURLs];
    v11 = [extensionStorageURLs2 mutableCopy];
  }

  v18 = [FPDDomain alloc];
  identifier = [domainCopy identifier];
  purposeIdentifier = [(FPDProvider *)self purposeIdentifier];
  server = [(FPDProvider *)self server];
  v22 = -[FPDDomain initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:](v18, "initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:", identifier, domainCopy, v11, purposeIdentifier, [server fpfsClass], self, volumeCopy);

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)defaultNSDomainForDescriptor:(id)descriptor
{
  v3 = MEMORY[0x1E69674D8];
  descriptorCopy = descriptor;
  v5 = [v3 alloc];
  v6 = [v5 initWithIdentifier:*MEMORY[0x1E6967178] displayName:&stru_1F4C2FFD0 pathRelativeToDocumentStorage:&stru_1F4C2FFD0];
  [v6 setHidden:{objc_msgSend(descriptorCopy, "defaultDomainVisible") ^ 1}];
  personaIdentifier = [descriptorCopy personaIdentifier];

  [v6 setPersonaIdentifier:personaIdentifier];

  return v6;
}

- (id)importDomainsFromLibrary:(id)library updatePlist:(BOOL)plist
{
  plistCopy = plist;
  v57 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v43 = libraryCopy;
  v7 = [libraryCopy role] == 1 || objc_msgSend(libraryCopy, "role") == 2;
  if ([(FPDProviderDescriptor *)selfCopy->_descriptor allowsExternalVolumes]|| v7)
  {
    systemDirectory = [v43 systemDirectory];
    identifier = [(FPDProvider *)selfCopy identifier];
    v41 = [systemDirectory URLByAppendingPathComponent:identifier];

    section = __fp_create_section();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [(FPDProvider *)selfCopy identifier];
      fp_shortDescription = [v41 fp_shortDescription];
      *buf = 134218498;
      v52 = section;
      v53 = 2114;
      v54 = identifier2;
      v55 = 2114;
      v56 = fp_shortDescription;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx loading domain list for %{public}@ from disk %{public}@", buf, 0x20u);
    }

    v48 = 0;
    v11 = [v43 readDomainsPropertiesUnderDirectoryAtURL:v41 error:&v48];
    v38 = v48;
    v42 = v11;
    if (!v11)
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [v38 fp_prettyDescription];
        objc_claimAutoreleasedReturnValue();
        [FPDProvider importDomainsFromLibrary:updatePlist:];
      }
    }

    v13 = objc_opt_class();
    v14 = v11;
    if (!v11)
    {
      v14 = objc_opt_new();
    }

    v15 = [v13 parseDomainProperties:v14 descriptor:selfCopy->_descriptor volume:v43 replicatedByDefault:{0, v38}];
    if (!v11)
    {
    }

    v16 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v18)
    {
      v19 = *v45;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v44 + 1) + 8 * i);
          domainsByID = selfCopy->_domainsByID;
          precomposedStringWithCanonicalMapping = [v21 precomposedStringWithCanonicalMapping];
          v24 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:precomposedStringWithCanonicalMapping];

          if (v24)
          {
            v25 = fp_current_or_default_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              fp_obfuscatedFilename = [v21 fp_obfuscatedFilename];
              *buf = 138543618;
              v52 = fp_obfuscatedFilename;
              v53 = 2114;
              v54 = v43;
              _os_log_error_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_ERROR, "[ERROR] Found domain %{public}@ on %{public}@, which is already known, ignoring", buf, 0x16u);
            }
          }

          else
          {
            v25 = [v17 objectForKeyedSubscript:v21];
            v27 = [(FPDProvider *)selfCopy newDomainFromNSDomain:v25 volume:v43];
            [v27 setUserEnabled:{-[NSObject userEnabled](v25, "userEnabled")}];
            [v27 setEjectable:{-[NSObject isEjectable](v25, "isEjectable")}];
            domainUserInfo = [v25 domainUserInfo];
            [v27 setDomainUserInfo:domainUserInfo];

            precomposedStringWithCanonicalMapping2 = [v21 precomposedStringWithCanonicalMapping];
            [v16 setObject:v27 forKeyedSubscript:precomposedStringWithCanonicalMapping2];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v18);
    }

    if (!selfCopy->_domainsByRootPath)
    {
      v30 = objc_opt_new();
      domainsByRootPath = selfCopy->_domainsByRootPath;
      selfCopy->_domainsByRootPath = v30;
    }

    if (selfCopy->_domainsByID)
    {
      [(NSMutableDictionary *)selfCopy->_domainsByID addEntriesFromDictionary:v16];
    }

    else
    {
      objc_storeStrong(&selfCopy->_domainsByID, v16);
    }

    if ([v43 isDefaultVolumeForCurrentPersona])
    {
      v33 = [(FPDProvider *)selfCopy _recreateDefaultDomainIfNeededOnVolume:v43];
    }

    if (plistCopy)
    {
      [(FPDProvider *)selfCopy _writeDomainPropertiesIntoLibrary:v43 ifChangedFrom:v42];
    }

    allValues = [v16 allValues];

    __fp_leave_section_Debug();
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  v34 = *MEMORY[0x1E69E9840];

  return allValues;
}

- (void)materializeRootForDomain:(id)domain
{
  domainCopy = domain;
  v4 = domainCopy;
  if (domainCopy && [domainCopy isUsingFPFS] && objc_msgSend(v4, "userEnabled") && (objc_msgSend(v4, "isHidden") & 1) == 0)
  {
    serialQueue = [v4 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FPDProvider_materializeRootForDomain___block_invoke;
    block[3] = &unk_1E83BE068;
    v7 = v4;
    dispatch_async(serialQueue, block);
  }
}

void __40__FPDProvider_materializeRootForDomain___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) invalidated])
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] [Mat] Tried to materialize invalidated domain %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) defaultBackend];
    v5 = [v4 rootURLs];
    v6 = [v5 firstObject];

    v7 = [*(a1 + 32) provider];
    v8 = [v7 identifier];
    v9 = [v8 fp_isiCloudDriveIdentifier];

    if (v9)
    {
      v10 = @"com~apple~CloudDocs";
      v11 = [v6 URLByAppendingPathComponent:@"com~apple~CloudDocs"];

      v6 = v11;
    }

    else
    {
      v10 = @"root";
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 fp_shortDescription];
      *buf = 138412546;
      v22 = v10;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] [Mat] Will try to materialize %@ %{public}@", buf, 0x16u);
    }

    v14 = [*(a1 + 32) defaultBackend];
    v15 = +[FPDRequest requestForSelf];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__FPDProvider_materializeRootForDomain___block_invoke_96;
    v18[3] = &unk_1E83BE760;
    v19 = v10;
    v20 = v6;
    v2 = v6;
    v16 = [v14 startProvidingItemAtURL:v2 readerID:@"materializeRootForDomain" readingOptions:0 request:v15 completionHandler:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __40__FPDProvider_materializeRootForDomain___block_invoke_96(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) fp_shortDescription];
    v7 = [v3 fp_prettyDescription];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_INFO, "[INFO] [Mat] Materialized %{public}@ %{public}@ with error: %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v5 rootURLs];
  if (![v7 count])
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v8 = [v5 rootURLs];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = FPClearImportCookieForDomainURL();
  v11 = 0;

  if ((v10 & 1) == 0)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke_cold_1();
    }
  }

LABEL_9:
  v13 = *(a1 + 32);
  v14 = [v5 provider];
  v15 = [v14 identifier];
  (*(v13 + 16))(v13, v15, v6);
}

- (void)addDomain:(id)domain byImportingDirectoryAtURL:(id)l knownFolders:(id)folders userAllowedDBDrop:(BOOL)drop unableToStartup:(BOOL)startup startupError:(id)error reloadDomain:(BOOL)reloadDomain request:(id)self0 completionHandler:(id)self1
{
  v39 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  lCopy = l;
  foldersCopy = folders;
  errorCopy = error;
  requestCopy = request;
  handlerCopy = handler;
  identifier = [domainCopy identifier];
  v19 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifier];

  v36 = fpfs_adopt_log();
  if (FPFeatureFlagEbihilIsEnabled())
  {
    __assert_rtn("[FPDProvider addDomain:byImportingDirectoryAtURL:knownFolders:userAllowedDBDrop:unableToStartup:startupError:reloadDomain:request:completionHandler:]", "FPDProvider.m", 1108, "!FPFeatureFlagEbihilIsEnabled()");
  }

  if ([domainCopy isReplicated] && !-[FPDProvider supportsFPFS](self, "supportsFPFS", lCopy, foldersCopy, errorCopy) && !-[FPDProvider testingProvider](self, "testingProvider"))
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = domainCopy;
      _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] domain %@ was asked with FPFS, but it's not supported, will fallback", buf, 0xCu);
    }

    [domainCopy setReplicated:0];
  }

  if (([domainCopy isReplicated] & 1) == 0)
  {
    identifier2 = [(FPDProvider *)self identifier];
    IsForcedForFPFS = FPFSProviderIsForcedForFPFS();

    if (IsForcedForFPFS)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] domain %@ was asked without FPFS, but provider is forced", buf, 0xCu);
      }

      [domainCopy setReplicated:1];
    }
  }

  domainQueue = self->_domainQueue;
  v30 = domainCopy;
  v35 = handlerCopy;
  v31 = v27;
  v32 = foldersCopy;
  v33 = requestCopy;
  v34 = errorCopy;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
  v25 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke(uint64_t a1)
{
  v131 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v120 = 0;
  v4 = [v3 fp_isValidDomainIdentifierWithError:&v120];
  v102 = v120;

  if ((v4 & 1) == 0)
  {
    (*(*(a1 + 80) + 16))();
    goto LABEL_109;
  }

  v5 = [*v2 experimentIDIsValid];
  v6 = fp_current_or_default_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 identifier];
      v10 = [v9 fp_obfuscatedFilename];
      v11 = [*(a1 + 40) identifier];
      v12 = [*(a1 + 48) fp_shortDescription];
      v13 = [*(a1 + 56) fp_map:&__block_literal_global_105];
      v14 = [v13 componentsJoinedByString:{@", "}];
      v15 = *(a1 + 64);
      *buf = 138413570;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v124 = v11;
      v125 = 2114;
      v126 = v12;
      v127 = 2114;
      v128 = v14;
      v129 = 2114;
      v130 = v15;
      _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] Adding domain %@ (%{public}@) for extension %@, importing directory %{public}@ (known folders: %{public}@), for %{public}@", buf, 0x3Eu);
    }

    if (*(*(a1 + 40) + 8) == 1)
    {
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_8(a1);
      }

      v17 = *(a1 + 80);
      v18 = FPProviderXPCInvalidError();
      (*(v17 + 16))(v17, 0, v18);

      goto LABEL_109;
    }

    v21 = [*v2 identifier];
    v22 = *MEMORY[0x1E6967178];
    if ([v21 isEqualToString:*MEMORY[0x1E6967178]])
    {
      v23 = [*v2 isReplicated];

      if (v23)
      {
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_7(v24);
        }

        v25 = *(a1 + 80);
        v26 = FPNotSupportedError();
        (*(v25 + 16))(v25, 0, v26);

        goto LABEL_109;
      }
    }

    else
    {
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v124) = 0;
    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v119 = 0;
    v27 = *(a1 + 40);
    objc_sync_enter(v27);
    v28 = [*(*(a1 + 40) + 32) enabledByDefault];
    *(*&buf[8] + 24) = v28;
    *(v117 + 24) = 1;
    if ([*(*(a1 + 40) + 80) count] != 1 || (objc_msgSend(*(*(a1 + 40) + 80), "objectForKeyedSubscript:", v22), v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v30))
    {
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v36 = *(*(a1 + 40) + 80);
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112;
        v115[3] = &unk_1E83BFC70;
        v115[4] = buf;
        [v36 enumerateKeysAndObjectsUsingBlock:v115];
      }

      v37 = *(*(a1 + 40) + 80);
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114;
      v114[3] = &unk_1E83BFC70;
      v114[4] = &v116;
      [v37 enumerateKeysAndObjectsUsingBlock:v114];
    }

    else
    {
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v31 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v22];
        v32 = [v31 userEnabled];
        *(*&buf[8] + 24) = v32;
      }

      v33 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v22];
      v34 = [v33 isHiddenByUser];
      *(v117 + 24) = v34;

      v35 = fp_current_or_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_2(&buf[8]);
      }
    }

    v38 = *(a1 + 32);
    v39 = [*(a1 + 40) descriptor];
    [v38 setIsContentManaged:{objc_msgSend(v39, "owningApplicationIsManaged") | objc_msgSend(v38, "isContentManaged")}];

    v40 = *(*(a1 + 40) + 80);
    v41 = [*(a1 + 32) identifier];
    v42 = [v41 precomposedStringWithCanonicalMapping];
    v43 = [v40 objectForKeyedSubscript:v42];

    if (v43)
    {
      if (*(a1 + 48))
      {
        v44 = *(a1 + 80);
        v45 = [MEMORY[0x1E6967318] errorWithDomain:*MEMORY[0x1E696A250] code:516 userInfo:0];
        (*(v44 + 16))(v44, 0, v45);
LABEL_32:

        objc_sync_exit(v27);
LABEL_108:

        _Block_object_dispose(&v116, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_109;
      }

      v47 = fp_current_or_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_3(v2);
      }

      v45 = [v43 nsDomainOrNilForDefault];
      if (v45)
      {
        [*v2 copyValuesFromExistingDomain:v45];
      }

      v48 = [v45 testingModes];
      if (v48 == [*v2 testingModes] && (v49 = objc_msgSend(v45, "isReplicated"), v49 == objc_msgSend(*v2, "isReplicated")) && *(a1 + 96) != 1)
      {
        v100 = 0;
        v46 = 0;
      }

      else
      {
        if (([v45 testingModes] & 2) != 0 && (objc_msgSend(*v2, "testingModes") & 2) != 0)
        {
          v56 = *(a1 + 80);
          v57 = *(a1 + 32);
          v58 = FPInvalidParameterError();
          (*(v56 + 16))(v56, 0, v58);

          goto LABEL_32;
        }

        v50 = [v45 testingModes];
        if (v50 == [*v2 testingModes])
        {
          v51 = [v45 isReplicated];
          if (v51 == [*v2 isReplicated])
          {
            v52 = fp_current_or_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v59 = *v2;
              *v121 = 138412290;
              v122 = v59;
              _os_log_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEFAULT, "[NOTICE] need a new domain for %@ because we were asked to reload the domain", v121, 0xCu);
            }

            v54 = @"domainReload";
          }

          else
          {
            v52 = fp_current_or_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = *v2;
              *v121 = 138412290;
              v122 = v53;
              _os_log_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEFAULT, "[NOTICE] need a new domain for %@ because replicated status changed", v121, 0xCu);
            }

            v54 = @"domainReplicationUpdate";
          }
        }

        else
        {
          v52 = fp_current_or_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *v2;
            *v121 = 138412290;
            v122 = v55;
            _os_log_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEFAULT, "[NOTICE] need a new domain for %@ because testing modes changed", v121, 0xCu);
          }

          v54 = @"domainTestingModeUpdate";
        }

        v100 = v54;

        v46 = 1;
      }
    }

    else
    {
      v46 = 1;
      v100 = @"domainCreation";
    }

    objc_sync_exit(v27);

    if (!((v43 == 0) | v46 & 1))
    {
      v60 = [v43 serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_131;
      block[3] = &unk_1E83BE158;
      v112 = v43;
      v113 = *v2;
      dispatch_sync(v60, block);
    }

    if (v46)
    {
      [v43 stopIndexer];
    }

    v61 = *(a1 + 40);
    objc_sync_enter(v61);
    v62 = [v43 volume];
    if (v62)
    {
      v101 = 0;
    }

    else
    {
      v63 = [*v2 volumeUUID];
      v64 = *(a1 + 40);
      if (v63)
      {
        v65 = [v64 server];
        v66 = [v65 volumeManager];
        v110 = 0;
        v62 = [v66 libraryForVolume:v63 createIfNeeded:1 error:&v110];
        v101 = v110;

        if (!v62)
        {
          v97 = fp_current_or_default_log();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v98 = [v101 fp_prettyDescription];
            __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_5(v63, v98, v121);
          }

          (*(*(a1 + 80) + 16))();
          goto LABEL_102;
        }

        if (([v62 isDefaultVolumeForCurrentPersona] & 1) == 0)
        {
          if (!FPFeatureFlagEbihilIsEnabled() || ([*(a1 + 40) descriptor], v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "allowsExternalVolumes"), v67, (v68 & 1) == 0))
          {
            v69 = fp_current_or_default_log();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_4(v2);
            }

            v70 = *(a1 + 80);
            v71 = FPNotSupportedError();
            (*(v70 + 16))(v70, 0, v71);

            goto LABEL_102;
          }
        }
      }

      else
      {
        v72 = [v64 server];
        v73 = [v72 volumeManager];
        v62 = [v73 defaultVolumeForCurrentPersona];

        v101 = 0;
      }
    }

    if ([v62 role] == 3 || (objc_msgSend(*v2, "identifier"), v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "hasPrefix:", *MEMORY[0x1E69675B8]), v74, !v75))
    {
      if (v46)
      {
        v78 = [MEMORY[0x1E696AFB0] UUID];
        v79 = [v78 UUIDString];
        [*v2 setSpotlightDomainIdentifier:v79];

        v80 = [*(a1 + 40) newDomainFromNSDomain:*(a1 + 32) volume:v62];
        [v80 setUnableToStartup:*(a1 + 97)];
        [v80 setStartupError:*(a1 + 72)];
        v81 = [v80 serialQueue];
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_133;
        v107[3] = &unk_1E83BE158;
        v27 = v80;
        v108 = v27;
        v109 = *v2;
        dispatch_sync(v81, v107);

        if (v43)
        {
          [v27 setUserEnabled:{objc_msgSend(v43, "userEnabled")}];
          v82 = [v43 fpfsRootBookmarkData];
          [v27 setFpfsRootBookmarkData:v82];

          v83 = [v43 isHiddenByUser];
          v84 = v100;
        }

        else
        {
          [v27 setUserEnabled:*(*&buf[8] + 24)];
          v84 = v100;
          v83 = *(v117 + 24);
        }

        [v27 setHiddenByUser:v83 & 1];
        if ([v27 userEnabled])
        {
          v85 = 1;
        }

        else
        {
          v85 = [*v2 testingModes] & 1;
        }

        [v27 setUserEnabled:v85];
        [v27 setEjectable:0];
        [v27 finishSetup];
        if (v43)
        {
          if (!v84)
          {
            v84 = @"domainConfigurationUpdate";
          }
        }

        else if ([v27 isUsingFPFS])
        {
          v87 = *(a1 + 48);
          v86 = *(a1 + 56);
          v106 = v101;
          v88 = [v27 createRootByImportingDirectoryAtURL:v87 knownFolders:v86 error:&v106];
          if (v87)
          {
            v84 = @"domainImport";
          }

          v89 = v106;

          if ((v88 & 1) == 0)
          {
            (*(*(a1 + 80) + 16))();

            v63 = v108;
            v101 = v89;
            goto LABEL_103;
          }

          v101 = v89;
        }

        v90 = *(a1 + 40);
        v91 = *(a1 + 98);
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_2;
        v103[3] = &unk_1E83BFB10;
        v105 = *(a1 + 97);
        v103[4] = v90;
        v27 = v27;
        v104 = v27;
        [v90 _startOrClearDomain:v27 userAllowedDBDrop:v91 reason:v84 completion:v103];
        v92 = *(*(a1 + 40) + 80);
        v93 = [*(a1 + 32) identifier];
        v94 = [v93 precomposedStringWithCanonicalMapping];
        [v92 setObject:v27 forKeyedSubscript:v94];

        addRootPathKeys(*(*(a1 + 40) + 88), v27);
      }

      else
      {
        v27 = 0;
      }

      if ([v62 isDefaultVolumeForCurrentPersona])
      {
        v95 = [*(a1 + 40) _recreateDefaultDomainIfNeededOnVolume:v62];
      }

      [*(a1 + 40) _writeDomainPropertiesIntoLibrary:v62 ifChangedFrom:0];
      v96 = 1;
      goto LABEL_104;
    }

    v76 = fp_current_or_default_log();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_6(v2);
    }

    v77 = *(a1 + 80);
    v63 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:19];
    (*(v77 + 16))(v77, 0, v63);
LABEL_102:
    v27 = 0;
LABEL_103:

    v96 = 0;
LABEL_104:

    objc_sync_exit(v61);
    if (v96)
    {
      if (v46)
      {
        [v43 invalidateWithReason:@"replaced with newer instance"];
        [v43 invalidateSession];
      }

      (*(*(a1 + 80) + 16))();
    }

    goto LABEL_108;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_1(v7);
  }

  v19 = *(a1 + 80);
  v20 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22];
  (*(v19 + 16))(v19, 0, v20);

LABEL_109:
  v99 = *MEMORY[0x1E69E9840];
}

id __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_102(uint64_t a1, void *a2)
{
  v2 = [a2 knownFolder];
  v3 = [v2 fp_shortDescription];

  return v3;
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 isEqualToString:*MEMORY[0x1E6967178]] & 1) == 0 && objc_msgSend(v7, "userEnabled"))
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112_cold_1();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 isEqualToString:*MEMORY[0x1E6967178]] & 1) == 0 && (objc_msgSend(v7, "isHiddenByUser") & 1) == 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114_cold_1();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_2(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    return [*(result + 32) materializeRootForDomain:*(result + 40)];
  }

  return result;
}

- (void)removeAllDomainsForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  domainQueue = self->_domainQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke;
  v12[3] = &unk_1E83BE9B8;
  v12[4] = self;
  v13 = requestCopy;
  v14 = handlerCopy;
  v15 = a2;
  v10 = handlerCopy;
  v11 = requestCopy;
  dispatch_async(domainQueue, v12);
}

void __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v46 = v3;
    v47 = 2114;
    v48 = v4;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] Removing all domains for %@ for %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5[8] == 1)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke_cold_3(a1);
    }

    v7 = *(a1 + 48);
    v37 = FPProviderXPCInvalidError();
    (*(v7 + 16))(v7, v37);
  }

  else
  {
    v8 = v5;
    objc_sync_enter(v8);
    v37 = [*(*(a1 + 32) + 80) copy];
    objc_sync_exit(v8);

    if ([v37 count] == 1)
    {
      v9 = [v37 objectForKeyedSubscript:*MEMORY[0x1E6967178]];
      v10 = v9 == 0;

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Only domain expected to be the default domain"];
        v12 = fp_current_or_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[FPDVolume prettyNameForDomain:];
        }

        v13 = v11;
        __assert_rtn("-[FPDProvider removeAllDomainsForRequest:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 1420, [v11 UTF8String]);
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = [v37 allValues];
      v14 = 0;
      v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v15)
      {
        v16 = *v41;
        v17 = *MEMORY[0x1E6967178];
        v18 = 1;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            [v20 invalidateWithReason:@"removing all domains"];
            v21 = [v20 cleanupDomainWithMode:0];
            [v20 invalidateSession];
            v22 = [v20 identifier];
            v23 = [v22 isEqualToString:v17];

            if ((v23 & 1) == 0)
            {
              v14 |= [v20 userEnabled];
              v18 &= [v20 isHiddenByUser];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v15);
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      v24 = *(a1 + 32);
      objc_sync_enter(v24);
      v25 = [*(*(a1 + 32) + 80) count];
      if (v25 != [v37 count])
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Unexpected number of domains to remove"];
        v35 = fp_current_or_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          +[FPDVolume prettyNameForDomain:];
        }

        v36 = v34;
        __assert_rtn("-[FPDProvider removeAllDomainsForRequest:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 1446, [v34 UTF8String]);
      }

      [*(*(a1 + 32) + 80) removeAllObjects];
      [*(*(a1 + 32) + 88) removeAllObjects];
      v26 = *(a1 + 32);
      v27 = [v26 server];
      v28 = [v27 volumeManager];
      v29 = [v28 defaultVolumeForCurrentPersona];
      v30 = [v26 _recreateDefaultDomainIfNeededOnVolume:v29];

      if ([*(*(a1 + 32) + 32) canToggleDomainVisibility])
      {
        [v30 setUserEnabled:v14 & 1];
        [v30 setHiddenByUser:v18 & 1];
      }

      [v30 finishSetup];
      v31 = *(a1 + 32);
      if (v30)
      {
        addRootPathKeys(v31[11], v30);
        [*(a1 + 32) _startOrClearDomain:v30 userAllowedDBDrop:0 reason:@"domainCreation" completion:&__block_literal_global_153];
      }

      else
      {
        v32 = [*(a1 + 32) defaultNSDomain];
        [v31 reloadDomain:v32 unableToStartup:0 startupError:0 completionHandler:&__block_literal_global_155];
      }

      [*(a1 + 32) writeAllDomainProperties];

      objc_sync_exit(v24);
    }

    (*(*(a1 + 48) + 16))();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)removeDomain:(id)domain mode:(unint64_t)mode request:(id)request completionHandler:(id)handler
{
  domainCopy = domain;
  requestCopy = request;
  handlerCopy = handler;
  v12 = [(FPDProvider *)self loggerForDomainWithIdentifier:domainCopy];
  v17 = fpfs_adopt_log();
  domainQueue = self->_domainQueue;
  v14 = domainCopy;
  v15 = requestCopy;
  v16 = handlerCopy;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v5 = *(a1 + 48);
    *buf = 138412802;
    v38 = v3;
    v39 = 2112;
    v40 = v4;
    v41 = 2114;
    v42 = v5;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] Removing domain %@ on extension %@ for %{public}@", buf, 0x20u);
  }

  if (*(*(a1 + 40) + 8) != 1)
  {
    v9 = *MEMORY[0x1E6967178];
    if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E6967178]])
    {
      v10 = *(a1 + 56);
      v8 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Default domain cannot be removed"];
      (*(v10 + 16))(v10, 0, v8);
      goto LABEL_29;
    }

    v11 = *(a1 + 40);
    objc_sync_enter(v11);
    v8 = [*(*(a1 + 40) + 80) mutableCopy];
    v12 = [*(*(a1 + 40) + 88) mutableCopy];
    v13 = [*(a1 + 32) precomposedStringWithCanonicalMapping];
    v14 = [v8 objectForKeyedSubscript:v13];

    if (!v14)
    {
      (*(*(a1 + 56) + 16))();
      objc_sync_exit(v11);
LABEL_28:

      goto LABEL_29;
    }

    removeRootPathKeys(v12, v14);
    v15 = [*(a1 + 32) precomposedStringWithCanonicalMapping];
    [v8 setObject:0 forKeyedSubscript:v15];

    objc_storeStrong((*(a1 + 40) + 80), v8);
    objc_storeStrong((*(a1 + 40) + 88), v12);
    v16 = [v8 objectForKeyedSubscript:v9];
    if (v16 && [v8 count] == 1 || !objc_msgSend(v8, "count"))
    {
      v17 = [v14 userEnabled];
      v18 = [v14 isHiddenByUser];
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    [v16 setUserEnabled:v17];
    [v16 setHiddenByUser:v18];
    v20 = *(a1 + 40);
    v21 = [v20 server];
    v22 = [v21 volumeManager];
    v23 = [v22 defaultVolumeForCurrentPersona];
    v24 = [v20 _recreateDefaultDomainIfNeededOnVolume:v23];

    [v24 finishSetup];
    v25 = *(a1 + 40);
    if (v24)
    {
      addRootPathKeys(v25[11], v24);
      [*(a1 + 40) _startOrClearDomain:v24 userAllowedDBDrop:0 reason:@"domainCreation" completion:&__block_literal_global_168];
    }

    else
    {
      v26 = [*(a1 + 40) defaultNSDomain];
      [v25 reloadDomain:v26 unableToStartup:0 startupError:0 completionHandler:&__block_literal_global_170];
    }

    objc_sync_exit(v11);
    v27 = [v14 rootURLs];
    if ([v27 count])
    {
      v28 = [v14 rootURLs];
      v29 = [v28 objectAtIndexedSubscript:0];
      v30 = FPClearImportCookieForDomainURL();
      v31 = 0;

      if (v30)
      {
LABEL_27:
        [v14 invalidateWithReason:@"removing domain"];
        v32 = [v14 cleanupDomainWithMode:*(a1 + 72)];
        [v14 invalidateSession];
        v33 = *(a1 + 40);
        objc_sync_enter(v33);
        v34 = *(a1 + 40);
        v35 = [v14 volume];
        [v34 _writeDomainPropertiesIntoLibrary:v35 ifChangedFrom:&unk_1F4C62AD0];

        objc_sync_exit(v33);
        (*(*(a1 + 56) + 16))();

        v11 = v31;
        goto LABEL_28;
      }

      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_27;
  }

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_3(a1);
  }

  v7 = *(a1 + 56);
  v8 = FPProviderXPCInvalidError();
  (*(v7 + 16))(v7, 0, v8);
LABEL_29:

  v36 = *MEMORY[0x1E69E9840];
}

void __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke_cold_1(v5, v6);
    }
  }

  [*(a1 + 32) signalProviderChanges];
  (*(*(a1 + 40) + 16))();
}

- (void)_setEnabledOrHiddenByUser:(BOOL)user forDomainIdentifier:(id)identifier newValue:(BOOL)value request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  requestCopy = request;
  handlerCopy = handler;
  v13 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v19 = fpfs_adopt_log();
  if ([(FPDProviderDescriptor *)self->_descriptor canToggleDomainVisibility])
  {
    v14 = *MEMORY[0x1E6967178];
    if (identifierCopy)
    {
      v14 = identifierCopy;
    }

    v15 = v14;

    domainQueue = self->_domainQueue;
    v18 = handlerCopy;
    identifierCopy = v15;
    fp_dispatch_async_with_logs();
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }

  __fp_pop_log();
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_cold_2(a1);
    }

    v4 = *(a1 + 48);
    v5 = FPProviderXPCInvalidError();
    (*(v4 + 16))(v4, v5);

LABEL_33:
    v30 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = v2;
  objc_sync_enter(v6);
  v7 = *(*(a1 + 32) + 80);
  v8 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
  v9 = [v7 objectForKeyedSubscript:v8];

  objc_sync_exit(v6);
  if (v9)
  {
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = *(*(a1 + 32) + 80);
    v12 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 65) != [v13 userEnabled])
      {
        [v13 setUserEnabled:?];
        v14 = *(a1 + 65);
        v15 = fp_current_or_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v13;
          _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_INFO, "[INFO] reloading domain because userEnabled state changed for %@", &buf, 0xCu);
        }

LABEL_18:

        v19 = *(a1 + 32);
        v20 = [v13 volume];
        [v19 _writeDomainPropertiesIntoLibrary:v20 ifChangedFrom:0];

        v18 = 1;
        goto LABEL_19;
      }
    }

    else if (*(a1 + 65) != [v13 isHiddenByUser])
    {
      [v13 setHiddenByUser:?];
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_INFO, "[INFO] reloading domain because hiddenByUser state changed for %@", &buf, 0xCu);
      }

      v14 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    v14 = 0;
LABEL_19:
    if ([v13 userEnabled])
    {
      v21 = [v13 isHiddenByUser] ^ 1;
    }

    else
    {
      v21 = 0;
    }

    objc_sync_exit(v10);

    if (v14)
    {
      v22 = [v13 defaultBackend];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = [v24 initWithDomain:*MEMORY[0x1E6967190] code:-2011 userInfo:0];
        v26 = [v13 defaultBackend];
        [v26 signalErrorResolved:v25 completionHandler:&__block_literal_global_187];
      }

      else
      {
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_cold_1();
        }
      }
    }

    if (v18)
    {
      v27 = [v13 indexer];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__8;
      v38 = __Block_byref_object_dispose__8;
      v39 = 0;
      if (v27)
      {
        v28 = dispatch_semaphore_create(0);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_188;
        v32[3] = &unk_1E83BFD78;
        p_buf = &buf;
        v29 = v28;
        v33 = v29;
        [v27 setIndexingEnabled:v21 completionHandler:v32];
        dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      }

      (*(*(a1 + 48) + 16))();
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_33;
  }

  v16 = *(a1 + 48);
  v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:MEMORY[0x1E695E0F8]];
  (*(v16 + 16))(v16);
  v17 = *MEMORY[0x1E69E9840];
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_185(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_185_cold_1();
    }
  }
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)enableAllDomainsIfNoUserElection
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_domainsByID allValues];
  v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        identifier = [v9 identifier];
        v11 = +[FPDRequest requestForSelf];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __47__FPDProvider_enableAllDomainsIfNoUserElection__block_invoke;
        v13[3] = &unk_1E83BDFC8;
        v14 = v3;
        [(FPDProvider *)selfCopy setEnabled:1 forDomainIdentifier:identifier request:v11 completionHandler:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

  v12 = *MEMORY[0x1E69E9840];
}

void __47__FPDProvider_enableAllDomainsIfNoUserElection__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 fp_prettyDescription];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] unhandled error: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setEjectable:(BOOL)ejectable forDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v15 = fpfs_adopt_log();
  v10 = *MEMORY[0x1E6967178];
  if (identifierCopy)
  {
    v10 = identifierCopy;
  }

  v11 = v10;

  domainQueue = self->_domainQueue;
  v14 = handlerCopy;
  v13 = v11;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_2(a1);
    }

    v4 = *(a1 + 48);
    v5 = FPProviderXPCInvalidError();
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = v2;
    objc_sync_enter(v6);
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_1(a1);
    }

    v8 = *(*(a1 + 32) + 80);
    v9 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v10 = [v8 objectForKeyedSubscript:v9];

    [v10 setEjectable:*(a1 + 64)];
    v11 = *(a1 + 32);
    v12 = [v10 volume];
    [v11 _writeDomainPropertiesIntoLibrary:v12 ifChangedFrom:0];

    objc_sync_exit(v6);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)setDomainUserInfo:(id)info forDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  identifierCopy = identifier;
  v11 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v18 = fpfs_adopt_log();
  v12 = *MEMORY[0x1E6967178];
  if (identifierCopy)
  {
    v12 = identifierCopy;
  }

  v13 = v12;

  domainQueue = self->_domainQueue;
  v17 = handlerCopy;
  v15 = v13;
  v16 = infoCopy;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_2(a1);
    }

    v4 = *(a1 + 56);
    v5 = FPProviderXPCInvalidError();
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = v2;
    objc_sync_enter(v6);
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_1(a1);
    }

    v8 = *(*(a1 + 32) + 80);
    v9 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      [v10 setDomainUserInfo:*(a1 + 48)];
      v11 = *(a1 + 32);
      v12 = [v10 volume];
      [v11 _writeDomainPropertiesIntoLibrary:v12 ifChangedFrom:0];
    }

    objc_sync_exit(v6);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)setReplicatedKnownFolders:(unint64_t)folders forDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v15 = fpfs_adopt_log();
  v10 = *MEMORY[0x1E6967178];
  if (identifierCopy)
  {
    v10 = identifierCopy;
  }

  v11 = v10;

  domainQueue = self->_domainQueue;
  v14 = handlerCopy;
  v13 = v11;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_2(a1);
    }

    v4 = *(a1 + 48);
    v5 = FPProviderXPCInvalidError();
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = v2;
    objc_sync_enter(v6);
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_1(a1);
    }

    v8 = *(*(a1 + 32) + 80);
    v9 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 nsDomain];
      v12 = [v11 replicatedKnownFolders];
      v13 = *(a1 + 64);

      if (v12 != v13)
      {
        v14 = *(a1 + 64);
        v15 = [v10 nsDomain];
        [v15 setReplicatedKnownFolders:v14];

        v16 = *(a1 + 32);
        v17 = [v10 volume];
        [v16 _writeDomainPropertiesIntoLibrary:v17 ifChangedFrom:0];
      }
    }

    objc_sync_exit(v6);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)dumpValue:(id)value forKey:(id)key to:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  toCopy = to;
  v9 = [key stringByAppendingString:@":"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = valueCopy;
      [toCopy write:{@"  + %@ (%lu)\n", v9, -[__CFString count](v10, "count")}];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      fp_shortDescription2 = v10;
      v12 = [(__CFString *)fp_shortDescription2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(fp_shortDescription2);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              fp_shortDescription = [v16 fp_shortDescription];
              [toCopy write:{@"    - %@\n", fp_shortDescription}];
            }

            else
            {
              [toCopy write:{@"    - %@\n", v16}];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [(__CFString *)fp_shortDescription2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      fp_shortDescription2 = [(__CFString *)valueCopy fp_shortDescription];
      [toCopy write:{@"  + %-25@ %@\n", v9, fp_shortDescription2}];
    }

    goto LABEL_22;
  }

  if (![(__CFString *)valueCopy count])
  {
    [toCopy write:{@"  + %-25@ {}\n", v9, v20}];
    goto LABEL_22;
  }

LABEL_19:
  v18 = @"none";
  if (valueCopy)
  {
    v18 = valueCopy;
  }

  [toCopy write:{@"  + %-25@ %@\n", v9, v18}];
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)getXattr:(const char *)xattr at:(const char *)at
{
  v6 = getxattr(at, xattr, 0, 0, 0, 1);
  if (v6 < 1)
  {
    v10 = &stru_1F4C2FFD0;
  }

  else
  {
    v7 = v6;
    v8 = malloc_type_malloc(v6, 0x555BE6DDuLL);
    v9 = getxattr(at, xattr, v8, v7, 0, 1);
    if (v9 < 1)
    {
      v10 = &stru_1F4C2FFD0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:v9 encoding:4];
    }

    free(v8);
  }

  return v10;
}

+ (void)dumpXattrsForItemAtURL:(id)l to:(id)to
{
  lCopy = l;
  toCopy = to;
  v6 = lCopy;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v8 = listxattr(fileSystemRepresentation, 0, 0, 0);
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = malloc_type_malloc(v8, 0xF128B63CuLL);
    v11 = listxattr(fileSystemRepresentation, v10, v9, 0);
    if (v11 >= 1)
    {
      v12 = v11;
      lastPathComponent = [lCopy lastPathComponent];
      [toCopy write:{@"%@\n", lastPathComponent}];

      v14 = &v10[v12];
      v15 = v10;
      do
      {
        v16 = [FPDProvider getXattr:v15 at:fileSystemRepresentation];
        [toCopy write:{@"    %s: %@\n", v15, v16}];

        v15 += strnlen(v15, v14 - v15) + 1;
      }

      while (v15 < v14);
    }

    free(v10);
  }
}

- (void)dumpXattrsForDomains:(id)domains dumper:(id)dumper
{
  v53 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  dumperCopy = dumper;
  [dumperCopy write:@"== CloudStorage xattrs ==\n"];
  [dumperCopy write:@"=========================\n"];
  fp_cloudStorageDirectory = [MEMORY[0x1E695DFF8] fp_cloudStorageDirectory];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = domainsCopy;
  v30 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v30)
  {
    v28 = *v46;
    do
    {
      v8 = 0;
      do
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(FPDProvider *)self providerDomainForDomain:*(*(&v45 + 1) + 8 * v8)];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        storageURLs = [v9 storageURLs];
        v11 = [storageURLs countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v42;
          do
          {
            v14 = 0;
            do
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(storageURLs);
              }

              v15 = [*(*(&v41 + 1) + 8 * v14) fp_commonDirectDescendantOf:fp_cloudStorageDirectory];
              if (v15)
              {
                [FPDProvider dumpXattrsForItemAtURL:v15 to:dumperCopy];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [storageURLs countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v30);
      v30 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v30);
  }

  [dumperCopy write:@"\n"];
  [dumperCopy write:@"== FileProvider xattrs ==\n"];
  [dumperCopy write:@"=========================\n"];
  fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = obj;
  v31 = [obja countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v31)
  {
    v29 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v17 = [(FPDProvider *)self providerDomainForDomain:*(*(&v37 + 1) + 8 * v16)];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        storageURLs2 = [v17 storageURLs];
        v19 = [storageURLs2 countByEnumeratingWithState:&v33 objects:v49 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v34;
          do
          {
            v22 = 0;
            do
            {
              if (*v34 != v21)
              {
                objc_enumerationMutation(storageURLs2);
              }

              v23 = [*(*(&v33 + 1) + 8 * v22) fp_commonDirectDescendantOf:fp_cloudStorageDirectory];
              if (v23)
              {
                [FPDProvider dumpXattrsForItemAtURL:v23 to:dumperCopy];
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [storageURLs2 countByEnumeratingWithState:&v33 objects:v49 count:16];
          }

          while (v20);
        }

        ++v16;
      }

      while (v16 != v31);
      v31 = [obja countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v31);
  }

  [dumperCopy write:@"\n"];
  v24 = *MEMORY[0x1E69E9840];
}

+ (void)dumpXattrsForSyncRootDirectoryOfVolume:(id)volume dumper:(id)dumper
{
  dumperCopy = dumper;
  syncRootsDirectory = [volume syncRootsDirectory];
  [self dumpXattrsForContentsOfDirectoryAtURL:syncRootsDirectory dumper:dumperCopy];
}

+ (void)dumpXattrsForSystemDirectoryOfVolume:(id)volume dumper:(id)dumper
{
  dumperCopy = dumper;
  systemDirectory = [volume systemDirectory];
  [self dumpXattrsForContentsOfDirectoryAtURL:systemDirectory dumper:dumperCopy];
}

+ (void)dumpXattrsForContentsOfDirectoryAtURL:(id)l dumper:(id)dumper
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dumperCopy = dumper;
  if (lCopy)
  {
    lastPathComponent = [lCopy lastPathComponent];
    [dumperCopy write:{@"== %@ xattrs ==\n", lastPathComponent}];

    [dumperCopy write:@"=========================\n"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    array = [MEMORY[0x1E695DEC8] array];
    v20 = lCopy;
    v10 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:array options:0 error:0];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          lastPathComponent2 = [v16 lastPathComponent];
          v18 = [lastPathComponent2 isEqualToString:@".DS_Store"];

          if ((v18 & 1) == 0)
          {
            [FPDProvider dumpXattrsForItemAtURL:v16 to:dumperCopy];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [dumperCopy write:@"\n"];
    lCopy = v20;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dumpDomain:(id)domain allowedToDump:(BOOL)dump dumper:(id)dumper options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  dumpCopy = dump;
  domainCopy = domain;
  dumperCopy = dumper;
  requestCopy = request;
  if (dumpCopy)
  {
    handlerCopy = handler;
    handlerCopy2 = [(FPDProvider *)self providerDomainForDomain:domainCopy];
    [domainCopy dumpStateTo:dumperCopy providerDomain:handlerCopy2 options:options request:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v18 = *(handler + 2);
    handlerCopy2 = handler;
    v18();
  }
}

- (void)dumpAllDomains:(id)domains domains:(id)a4 auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  domainsCopy = domains;
  v16 = a4;
  requestCopy = request;
  filterCopy = filter;
  handlerCopy = handler;
  if ([v16 count])
  {
    v32 = domainsCopy;
    [v16 firstObject];
    v20 = v31 = options;
    [v16 removeObjectAtIndex:0];
    v21 = MEMORY[0x1E696AEC0];
    identifier = [(FPDProvider *)self identifier];
    [v20 identifier];
    v23 = filterCopy;
    v25 = v24 = requestCopy;
    v26 = [v21 fp_providerDomainIDFromProviderID:identifier domainIdentifier:v25];

    requestCopy = v24;
    filterCopy = v23;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke;
    v34[3] = &unk_1E83BFE40;
    v35 = v26;
    selfCopy = self;
    v37 = v20;
    domainsCopy = v32;
    v38 = v32;
    v43 = v31;
    v39 = requestCopy;
    v40 = v16;
    v27 = *&token->var0[4];
    v44 = *token->var0;
    v45 = v27;
    v41 = filterCopy;
    v42 = handlerCopy;
    v28 = *&token->var0[4];
    v33[0] = *token->var0;
    v33[1] = v28;
    v29 = v20;
    v30 = v26;
    [(FPDProvider *)self checkTCCAccessForDomainID:v30 auditToken:v33 completionHandler:v34];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

void __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_cold_1(a1, v5);
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 96);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_232;
  v16[3] = &unk_1E83BFE18;
  v16[4] = v7;
  v17 = v10;
  v18 = *(a1 + 72);
  v12 = *(a1 + 120);
  v23 = *(a1 + 104);
  v24 = v12;
  v19 = *(a1 + 64);
  v13 = *(a1 + 80);
  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  v20 = v13;
  v22 = v14;
  v21 = v15;
  [v7 dumpDomain:v8 allowedToDump:a2 dumper:v17 options:v9 request:v11 completionHandler:v16];
}

uint64_t __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_232(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = *(a1 + 104);
  v10[0] = *(a1 + 88);
  v10[1] = v8;
  return [v2 dumpAllDomains:v1 domains:v3 auditToken:v10 request:v4 providerFilter:v7 options:v5 completionHandler:v6];
}

- (id)_domainsWithFilter:(id)filter
{
  filterCopy = filter;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  domainsByID = [(FPDProvider *)selfCopy domainsByID];
  allValues = [domainsByID allValues];
  v8 = [allValues copy];

  objc_sync_exit(selfCopy);
  if ([filterCopy length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__FPDProvider__domainsWithFilter___block_invoke;
    v11[3] = &unk_1E83BFE68;
    v12 = filterCopy;
    v9 = [v8 fp_filter:v11];

    v8 = v9;
  }

  return v8;
}

uint64_t __34__FPDProvider__domainsWithFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 providerDomainID];
  if ([v4 localizedCaseInsensitiveContainsString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 nsDomain];
    v7 = [v6 displayName];
    v5 = [v7 localizedCaseInsensitiveContainsString:*(a1 + 32)];
  }

  return v5;
}

- (void)dumpStateTo:(id)to auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  toCopy = to;
  requestCopy = request;
  filterCopy = filter;
  handlerCopy = handler;
  v18 = filterCopy;
  v19 = handlerCopy;
  v20 = [(FPDProvider *)self _domainsWithFilter:v18];
  if ([v20 count])
  {
    optionsCopy = options;
    [toCopy write:@"=====================================================\n"];
    [(FPDProvider *)self identifier];
    v21 = v47 = token;
    [toCopy write:{@"%@\n", v21}];

    [toCopy write:@"=====================================================\n"];
    descriptor = [(FPDProvider *)self descriptor];
    extensionPointVersion = [descriptor extensionPointVersion];
    [(FPDProvider *)self dumpValue:extensionPointVersion forKey:@"version" to:toCopy];

    v49 = requestCopy;
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "isAvailableSystemWide")}];
    [(FPDProvider *)self dumpValue:v24 forKey:@"available system wide" to:toCopy];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "supportsEnumeration")}];
    [(FPDProvider *)self dumpValue:v25 forKey:@"supports enumeration" to:toCopy];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPDProvider supportsFPFS](self, "supportsFPFS")}];
    [(FPDProvider *)self dumpValue:v26 forKey:@"supports FPFS" to:toCopy];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "readonly")}];
    [(FPDProvider *)self dumpValue:v27 forKey:@"read-only" to:toCopy];

    extensionStorageURLs = [(FPDProvider *)self extensionStorageURLs];
    [(FPDProvider *)self dumpValue:extensionStorageURLs forKey:@"extension storage URLs" to:toCopy];

    purposeIdentifier = [(FPDProvider *)self purposeIdentifier];
    [(FPDProvider *)self dumpValue:purposeIdentifier forKey:@"file coordination purpose ID" to:toCopy];

    localizedName = [descriptor localizedName];
    [(FPDProvider *)self dumpValue:localizedName forKey:@"display name" to:toCopy];

    extensionBundleURL = [descriptor extensionBundleURL];
    [(FPDProvider *)self dumpValue:extensionBundleURL forKey:@"bundle URL" to:toCopy];

    topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];
    [(FPDProvider *)self dumpValue:topLevelBundleIdentifier forKey:@"containing bundle identifier" to:toCopy];

    personaIdentifier = [descriptor personaIdentifier];
    [(FPDProvider *)self dumpValue:personaIdentifier forKey:@"persona" to:toCopy];

    documentGroupName = [descriptor documentGroupName];
    [(FPDProvider *)self dumpValue:documentGroupName forKey:@"document group name" to:toCopy];

    supportedFileTypes = [descriptor supportedFileTypes];
    [(FPDProvider *)self dumpValue:supportedFileTypes forKey:@"supported file types" to:toCopy];

    v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "usesUniqueItemIdentifiersAcrossDevices")}];
    [(FPDProvider *)self dumpValue:v36 forKey:@"uses unique item identifiers across devices" to:toCopy];

    v37 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "appliesChangesAtomically")}];
    [(FPDProvider *)self dumpValue:v37 forKey:@"applies changes atomically" to:toCopy];

    v38 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "supportsFailingUploadOnConflict")}];
    [(FPDProvider *)self dumpValue:v38 forKey:@"supports failing upload on conflict" to:toCopy];

    v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "disallowedByMDM")}];
    [(FPDProvider *)self dumpValue:v39 forKey:@"disallowed by MDM" to:toCopy];

    manager = [(FPDProvider *)self manager];
    pushConnection = [manager pushConnection];

    topLevelBundleIdentifier2 = [descriptor topLevelBundleIdentifier];
    v45 = [pushConnection _debugTopicsForApplicationIdentifier:topLevelBundleIdentifier2];

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke;
    v57[3] = &unk_1E83BFE90;
    v57[4] = self;
    v42 = toCopy;
    v58 = v42;
    [v45 enumerateKeysAndObjectsUsingBlock:v57];
    [v42 write:@"\n"];
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v43 addObjectsFromArray:v20];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke_2;
    v51[3] = &unk_1E83BE8C8;
    v52 = v42;
    v53 = v18;
    selfCopy = self;
    v55 = v20;
    v56 = v19;
    v44 = *&v47->var0[4];
    v50[0] = *v47->var0;
    v50[1] = v44;
    requestCopy = v49;
    [(FPDProvider *)self dumpAllDomains:v52 domains:v43 auditToken:v50 request:v49 providerFilter:v53 options:optionsCopy completionHandler:v51];
  }

  else
  {
    v19[2](v19);
  }
}

void __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"push topics (%@)", a2];
  [v5 dumpValue:v7 forKey:v8 to:*(a1 + 40)];
}

uint64_t __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) write:@"\n"];
  if ([*(a1 + 40) length])
  {
    [*(a1 + 48) dumpXattrsForDomains:*(a1 + 56) dumper:*(a1 + 32)];
  }

  v2 = *(*(a1 + 64) + 16);

  return v2();
}

void __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) identifier];
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (v6)
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke_cold_1(a1);
      }
    }

    v13 = *(a1 + 32);
    v9 = [*(a1 + 40) identifier];
    v11 = MEMORY[0x1E695E0F8];
    v10 = v13;
  }

  [v10 setObject:v11 forKeyedSubscript:v9];

  [*(a1 + 48) fetchTelemetryReportForAllDomains:*(a1 + 56) alwaysFetchExpandedUsageStats:*(a1 + 72) resultDictionary:*(a1 + 32) completionHandler:*(a1 + 64)];
}

+ (void)_garbageCollectFoldersWithNoRelatedDomain:(id)domain supportDir:(id)dir
{
  v33 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  dirCopy = dir;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v23 = dirCopy;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:dirCopy];
  v24 = defaultManager;
  v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v13 = *MEMORY[0x1E695DB78];
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v26 = 0;
        [v15 getResourceValue:&v26 forKey:v13 error:0];
        v16 = v26;
        if ([v16 BOOLValue])
        {
          v17 = [v15 fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
          if ([v17 length])
          {
            v18 = [v17 componentsSeparatedByString:@"/"];
            v19 = [v18 objectAtIndex:0];

            if (([domainCopy containsObject:v19] & 1) == 0)
            {
              v20 = fp_current_or_default_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                [FPDProvider _garbageCollectFoldersWithNoRelatedDomain:v31 supportDir:v15];
              }

              path = [v15 path];
              [v24 removeItemAtPath:path error:0];
            }
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)initWithDescriptor:(uint64_t)a3 server:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", v4, 0x16u);
}

+ (void)onDiskProvidersForServer:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v5, v3, "[DEBUG] no root reachable for domain %@", v4);
}

- (void)_recreateDefaultDomainIfNeededOnVolume:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v3, v3, "[DEBUG] hiding default domain for %@", v4);
}

- (void)_recreateDefaultDomainIfNeededOnVolume:.cold.2()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v3, v3, "[DEBUG] exposing default domain for %@", v4);
}

- (void)_recreateDefaultDomainIfNeededOnVolume:.cold.3()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v3, v3, "[DEBUG] creating default domain for %@", v4);
}

+ (void)parseDomainProperties:(uint64_t)a1 descriptor:(uint64_t)a2 volume:replicatedByDefault:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_8(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_15_1(&dword_1CEFC7000, v5, v6, "[ERROR] cannot parse nsDomain for domain %{public}@");
}

+ (void)parseDomainProperties:(uint64_t)a1 descriptor:(uint64_t)a2 volume:replicatedByDefault:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_8(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_15_1(&dword_1CEFC7000, v5, v6, "[ERROR] unhandled domain %{public}@ with missing properties");
}

- (void)importDomainsFromLibrary:updatePlist:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v3, v3, "[ERROR] could not load the domain properties: %{public}@", v4);
}

void __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] failed to clear import cookie for domain %@: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  LODWORD(v1) = *(v1 + 24);
  v3 = *(*v2 + 24);
  v6[0] = 67109376;
  v6[1] = v1;
  v7 = 1024;
  v8 = v3;
  _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] inheriting userEnable=%{BOOL}d hiddenByUser=%{BOOL}d from default domain", v6, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v1, v2, "[ERROR] Can't add domain %@ on non-default volume %@: not supported");
  v3 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_5(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Unable to resolve library to setup domain at path %@: %@", v4, 0x16u);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_6(uint64_t *a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v1, v2, "[ERROR] Can't add domain %@ with external identifier to a default volume", v4);
  v3 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(*(a1 + 88));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_12_0(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reloadDomain:unableToStartup:startupError:completionHandler:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] attempt to reactivate a domain that got removed %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_12_0(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_185_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] error signaling error resolved during domain enablement transition: %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_12_0(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_12_0(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_obfuscatedProviderDomainID];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_garbageCollectFoldersWithNoRelatedDomain:(uint64_t)a1 supportDir:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_2_8(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] No provider for %@, deleting directory", v4, 0xCu);
}

@end