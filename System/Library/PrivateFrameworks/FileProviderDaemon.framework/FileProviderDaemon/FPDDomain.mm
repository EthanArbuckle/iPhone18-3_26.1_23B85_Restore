@interface FPDDomain
- (BOOL)_isProviderBlockingConsumer:(id)consumer;
- (BOOL)_shouldDisconnectDueToLowDiskSpace;
- (BOOL)backgroundActivityIsPaused;
- (BOOL)createRootByImportingDirectoryAtURL:(id)l knownFolders:(id)folders error:(id *)error;
- (BOOL)forceDisableIndexing;
- (BOOL)forceRecursiveRemoveAt:(id)at error:(id *)error;
- (BOOL)isDefaultDomain;
- (BOOL)isHiddenByUser;
- (BOOL)isHiddenDefaultDomain;
- (BOOL)isPendingInitialization;
- (BOOL)isProviderForRealPathURL:(id)l;
- (BOOL)mergeSyncRootsWithPathsManager:(id)manager error:(id *)error;
- (BOOL)removeEbihilSymlinkFromDefaultLocation;
- (BOOL)shouldDisconnectWithStartupError;
- (BOOL)supportsPickingFolders;
- (BOOL)supportsRemoteVersions;
- (BOOL)supportsSearch;
- (BOOL)supportsStringSearchRequest;
- (BOOL)supportsSyncingTrash;
- (BOOL)userEnabled;
- (FPDDomain)initWithIdentifier:(id)identifier nsDomain:(id)domain extensionStorageURLs:(id)ls purposeIdentifier:(id)purposeIdentifier fpfsClass:(Class)class provider:(id)provider volume:(id)volume;
- (FPDDomainBackend)defaultBackend;
- (FPDDomainBackend)extensionBackend;
- (FPDProvider)provider;
- (FPDVolume)volume;
- (NSArray)checkableURLs;
- (NSArray)coordinationRootURLs;
- (NSArray)rootURLs;
- (NSError)errorReflectingDisconnectionState;
- (NSFileProviderDomain)nsDomain;
- (NSFileProviderDomain)nsDomainOrNilForDefault;
- (NSString)description;
- (NSString)fp_prettyDescription;
- (NSURL)supportURL;
- (id)_physicalURLForURL:(id)l;
- (id)_removeProgressForProvidingItemAtURL:(id)l toReaderWithID:(id)d;
- (id)_siblingDelegateForURL:(id)l;
- (id)accumulatedSizeOfItems;
- (id)cleanupDomainWithMode:(unint64_t)mode;
- (id)cleanupDomainWithMode:(unint64_t)mode error:(id *)error;
- (id)getDefaultRootExposureSymlinkURL;
- (id)getProvidedItemRecursiveGenerationCountForItemAtURL:(id)l;
- (id)materializedURLForItemID:(id)d;
- (id)moveAwaySyncRootAndReturnError:(id *)error;
- (id)providerSupportURL;
- (id)providerVersion;
- (id)rootURLsWithTransientState:(BOOL *)state;
- (int64_t)accumulatedSizeOfPinnedItems;
- (int64_t)errorGenerationCount;
- (int64_t)nonEvictableSpace;
- (unint64_t)disconnectionState;
- (void)_cancelProvidingItemAtURL:(id)l toReaderWithID:(id)d;
- (void)_checkDomainConnectionPermittedWithCompletionHandler:(id)handler;
- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_prepareFileCoordinationProviders;
- (void)_provideItemAtURL:(id)l toReaderWithID:(id)d completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_providedItemAtURL:(id)l didGainPresenterWithInfo:(id)info;
- (void)_providedItemAtURL:(id)l didLosePresenterWithID:(id)d;
- (void)_providedItemAtURL:(id)l withPresenterWithID:(id)d didMoveToURL:(id)rL;
- (void)_registerFileCoordinatorAndSpaceForceWithCompletion:(id)completion;
- (void)_registerInSpaceForce;
- (void)_shouldDisconnectDueToLowDiskSpace;
- (void)_startObservingRootAndResumeIndexerWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion;
- (void)_unregisterFromFileCoordinatorAndSpaceForce;
- (void)_unregisterURLFromSpaceForce:(id)force;
- (void)_writerWithID:(id)d didFinishWritingForURL:(id)l;
- (void)callExtensionForItemDidChange:(id)change request:(id)request completionHandler:(id)handler;
- (void)cancelPendingCoordinations;
- (void)createRootURLWithCompletion:(id)completion;
- (void)daemonSideItemChange:(id)change changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler;
- (void)didChangeItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)didRefreshRootURLsWithCompletionHandler:(id)handler;
- (void)diskImportFinished;
- (void)downloadItemWithItemID:(id)d request:(id)request progress:(id)progress completionHandler:(id)handler;
- (void)downloadVersionThumbnail:(id)thumbnail version:(id)version completionHandler:(id)handler;
- (void)downloadVersionWithItemID:(id)d etag:(id)etag request:(id)request completionHandler:(id)handler;
- (void)downloadVersionWithItemID:(id)d version:(id)version originalURL:(id)l completionHandler:(id)handler;
- (void)dumpStateTo:(id)to providerDomain:(id)domain options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)finishSetup;
- (void)forceFSIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)forceIngestionAtURL:(id)l;
- (void)forceIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)invalidateWithReason:(id)reason;
- (void)refreshConnectionState;
- (void)removeEbihilSymlink;
- (void)setDefaultBackend:(id)backend;
- (void)setExtensionBackend:(id)backend;
- (void)setNsDomainOrNilForDefault:(id)default;
- (void)setProvidedItemRecursiveGenerationCount:(id)count forItemAtURL:(id)l;
- (void)shouldDisconnectWithStartupError;
- (void)startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion;
- (void)stopIndexer;
- (void)unregisterFromSpaceForceWithUrl:(id)url;
@end

@implementation FPDDomain

- (NSFileProviderDomain)nsDomain
{
  [(NSRecursiveLock *)self->_nsDomainLock lock];
  v3 = self->_nsDomain;
  [(NSRecursiveLock *)self->_nsDomainLock unlock];

  return v3;
}

- (NSFileProviderDomain)nsDomainOrNilForDefault
{
  [(NSRecursiveLock *)self->_nsDomainLock lock];
  identifier = [(NSFileProviderDomain *)self->_nsDomain identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E6967178]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_nsDomain;
  }

  [(NSRecursiveLock *)self->_nsDomainLock unlock];

  return v5;
}

- (NSArray)rootURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    rootURLs = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    rootURLs = [defaultBackend rootURLs];
  }

  objc_sync_exit(selfCopy);

  return rootURLs;
}

- (BOOL)supportsPickingFolders
{
  if (self->_isUsingFPFS)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  descriptor = [WeakRetained descriptor];
  if ([descriptor supportsPickingFolders])
  {
    v2 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_provider);
    identifier = [v6 identifier];
    if ([identifier isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
    {
      v2 = 1;
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_provider);
      identifier2 = [v8 identifier];
      if ([identifier2 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"])
      {
        v2 = 1;
      }

      else
      {
        v10 = objc_loadWeakRetained(&self->_provider);
        identifier3 = [v10 identifier];
        v2 = [identifier3 isEqualToString:@"com.apple.FileProvider.LocalStorage"];
      }
    }
  }

  return v2;
}

- (BOOL)userEnabled
{
  nsDomain = [(FPDDomain *)self nsDomain];
  userEnabled = [nsDomain userEnabled];

  return userEnabled;
}

- (unint64_t)disconnectionState
{
  if (self->_fpfsTestingBackendClass)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  isAppExtensionReachable = [WeakRetained isAppExtensionReachable];

  if (!isAppExtensionReachable)
  {
    return 5;
  }

  if ([(NSFileProviderDomain *)self->_nsDomain isDisconnected])
  {
    if (([(NSFileProviderDomain *)self->_nsDomain _disconnectionOptions]& 1) != 0)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if ([(FPDDomain *)self _shouldDisconnectDueToLowDiskSpace])
    {
      return 6;
    }

    v6 = objc_loadWeakRetained(&self->_provider);
    descriptor = [v6 descriptor];
    disallowedByMDM = [descriptor disallowedByMDM];

    if (disallowedByMDM)
    {
      return 8;
    }

    if (!self->_unableToStartup)
    {
      return 1;
    }

    if (([(NSError *)self->_startupError fp_isPOSIXErrorCode:28]& 1) != 0)
    {
      return 6;
    }

    if (([(NSError *)self->_startupError fp_isFileProviderInternalError:22]& 1) != 0)
    {
      return 7;
    }

    else if ([(NSError *)self->_startupError fp_isFileProviderInternalError:23])
    {
      return 9;
    }

    else
    {
      return 2;
    }
  }
}

- (BOOL)_shouldDisconnectDueToLowDiskSpace
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldDisconnectDueToLowDiskSpace = selfCopy->_shouldDisconnectDueToLowDiskSpace;
  if (!shouldDisconnectDueToLowDiskSpace)
  {
    volume = [(FPDDomain *)selfCopy volume];
    v6 = volume;
    bOOLValue = volume != 0;
    if (volume)
    {
      isInLowDiskSpaceState = [volume isInLowDiskSpaceState];
      if (isInLowDiskSpaceState)
      {
        [v6 monitorLowDiskSpaceRecovery];
      }

      v8 = [MEMORY[0x1E696AD98] numberWithBool:isInLowDiskSpaceState];
      v9 = selfCopy->_shouldDisconnectDueToLowDiskSpace;
      selfCopy->_shouldDisconnectDueToLowDiskSpace = v8;

      if (!isInLowDiskSpaceState)
      {
        bOOLValue = 0;
        goto LABEL_13;
      }

      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        fp_obfuscatedProviderDomainID = [(NSString *)selfCopy->_providerDomainID fp_obfuscatedProviderDomainID];
        v14 = 138412290;
        v15 = fp_obfuscatedProviderDomainID;
        _os_log_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] [diskspace] Disconnecting %@ due to low disk space.", &v14, 0xCu);
      }
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [FPDDomain _shouldDisconnectDueToLowDiskSpace];
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  bOOLValue = [(NSNumber *)shouldDisconnectDueToLowDiskSpace BOOLValue];
LABEL_14:
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)backgroundActivityIsPaused
{
  defaultBackend = self->_defaultBackend;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_defaultBackend;

  return [(FPDDomainBackend *)v4 backgroundActivityIsPaused];
}

- (BOOL)supportsSyncingTrash
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsSyncingTrash = [nsDomain supportsSyncingTrash];

  return supportsSyncingTrash;
}

- (BOOL)supportsSearch
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsSearch = [nsDomain supportsSearch];

  return supportsSearch;
}

- (int64_t)errorGenerationCount
{
  defaultBackend = self->_defaultBackend;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  v4 = self->_defaultBackend;

  return [(FPDDomainBackend *)v4 errorGenerationCount];
}

- (BOOL)supportsRemoteVersions
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsRemoteVersions = [nsDomain supportsRemoteVersions];

  return supportsRemoteVersions;
}

- (FPDVolume)volume
{
  volume = self->_volume;
  if (!volume)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ FPDDomain must have a volume attached", v3, v2, v4, v5];
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain volume]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 215, [v8 UTF8String]);
  }

  return volume;
}

- (BOOL)isPendingInitialization
{
  if (!self->_defaultBackend)
  {
    return 1;
  }

  defaultBackend = [(FPDDomain *)self defaultBackend];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && self->_deactivatedBackend == 0;

  return v4;
}

- (FPDDomainBackend)defaultBackend
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultBackend = selfCopy->_defaultBackend;
  if (!defaultBackend)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ not configured"];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain defaultBackend]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 409, [v6 UTF8String]);
  }

  v4 = defaultBackend;
  objc_sync_exit(selfCopy);

  return v4;
}

- (FPDProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (FPDDomain)initWithIdentifier:(id)identifier nsDomain:(id)domain extensionStorageURLs:(id)ls purposeIdentifier:(id)purposeIdentifier fpfsClass:(Class)class provider:(id)provider volume:(id)volume
{
  identifierCopy = identifier;
  domainCopy = domain;
  lsCopy = ls;
  purposeIdentifierCopy = purposeIdentifier;
  providerCopy = provider;
  volumeCopy = volume;
  if (!identifierCopy)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no domain identifier"];
    v59 = fp_current_or_default_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 147, [v58 UTF8String]);
  }

  v68.receiver = self;
  v68.super_class = FPDDomain;
  v19 = [(FPDDomain *)&v68 init];
  if (v19)
  {
    classCopy = class;
    v61 = domainCopy;
    v20 = MEMORY[0x1E696AEC0];
    identifier = [providerCopy identifier];
    v22 = [v20 fp_providerDomainIDFromProviderID:identifier domainIdentifier:identifierCopy];
    providerDomainID = v19->_providerDomainID;
    v19->_providerDomainID = v22;

    fp_obfuscatedProviderDomainID = [(NSString *)v19->_providerDomainID fp_obfuscatedProviderDomainID];
    [fp_obfuscatedProviderDomainID UTF8String];
    v25 = fpfs_create_log_for_provider();
    log = v19->_log;
    v19->_log = v25;

    objc_storeStrong(&v19->_identifier, identifier);
    v27 = objc_opt_new();
    nsDomainLock = v19->_nsDomainLock;
    v19->_nsDomainLock = v27;

    objc_storeStrong(&v19->_nsDomain, domain);
    objc_storeWeak(&v19->_provider, providerCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    coordinatorMetadataPerURL = v19->_coordinatorMetadataPerURL;
    v19->_coordinatorMetadataPerURL = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    providedItemRecursiveGenCountPerURL = v19->_providedItemRecursiveGenCountPerURL;
    v19->_providedItemRecursiveGenCountPerURL = dictionary2;

    v33 = objc_opt_new();
    versionsCache = v19->_versionsCache;
    v19->_versionsCache = v33;

    [(NSCache *)v19->_versionsCache setCountLimit:128];
    if (providedItemsOperationQueue_onceToken != -1)
    {
      [FPDDomain initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:];
    }

    objc_storeStrong(&v19->_providedItemsOperationQueue, providedItemsOperationQueue_operationQueue);
    objc_storeStrong(&v19->_purposeIdentifier, purposeIdentifier);
    fp_obfuscatedProviderDomainID2 = [(NSString *)v19->_providerDomainID fp_obfuscatedProviderDomainID];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: domain-queue", fp_obfuscatedProviderDomainID2];
    uTF8String = [v36 UTF8String];
    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create(uTF8String, v38);
    serialQueue = v19->_serialQueue;
    v19->_serialQueue = v39;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ext-domain-queue", fp_obfuscatedProviderDomainID2];
    uTF8String2 = [v41 UTF8String];
    v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v44 = dispatch_queue_create(uTF8String2, v43);
    extCallOutQueue = v19->_extCallOutQueue;
    v19->_extCallOutQueue = v44;

    v19->_fpfsClass = classCopy;
    objc_storeStrong(&v19->_extensionStorageURLs, ls);
    v46 = [objc_alloc(MEMORY[0x1E69673C8]) initWithName:@"root-creation" queue:v19->_serialQueue minFireInterval:1.0];
    rootCreationPacer = v19->_rootCreationPacer;
    v19->_rootCreationPacer = v46;

    objc_initWeak(&location, v19);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __106__FPDDomain_initWithIdentifier_nsDomain_extensionStorageURLs_purposeIdentifier_fpfsClass_provider_volume___block_invoke;
    v65[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v66, &location);
    [(FPPacer *)v19->_rootCreationPacer setEventBlock:v65];
    nsDomainOrNilForDefault = [(FPDDomain *)v19 nsDomainOrNilForDefault];

    if (!nsDomainOrNilForDefault)
    {
      v19->_isUsingFPFS = 0;
      [v61 setReplicated:0];
    }

    objc_storeStrong(&v19->_volume, volume);
    nsDomain = [(FPDDomain *)v19 nsDomain];
    isReplicated = [nsDomain isReplicated];

    if ((isReplicated & 1) == 0)
    {
      shouldDisconnectDueToLowDiskSpace = v19->_shouldDisconnectDueToLowDiskSpace;
      v19->_shouldDisconnectDueToLowDiskSpace = MEMORY[0x1E695E110];
    }

    if (FPFeatureFlagSpaceAttributionIsEnabled())
    {
      v52 = objc_opt_new();
      saPathManager = v19->_saPathManager;
      v19->_saPathManager = v52;
    }

    v54 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967190] code:-2012 userInfo:0];
    v55 = [[FPDDomainDeadEndBackend alloc] initWithDomain:v19 materializationError:v54];
    defaultBackend = v19->_defaultBackend;
    v19->_defaultBackend = v55;

    objc_storeStrong(&v19->_extensionBackend, v19->_defaultBackend);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);

    domainCopy = v61;
  }

  return v19;
}

void __106__FPDDomain_initWithIdentifier_nsDomain_extensionStorageURLs_purposeIdentifier_fpfsClass_provider_volume___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createRootAndObserveIfNeededWithReason:@"deferredRootCreation" userAllowedDBDrop:0 completion:&__block_literal_global_14];
}

- (NSError)errorReflectingDisconnectionState
{
  v11[1] = *MEMORY[0x1E69E9840];
  disconnectionState = [(FPDDomain *)self disconnectionState];
  if (disconnectionState == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E6967190];
    v10 = *MEMORY[0x1E6967198];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:disconnectionState];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v3 = [v4 errorWithDomain:v5 code:-1004 userInfo:v7];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isHiddenDefaultDomain
{
  isHidden = [(NSFileProviderDomain *)self->_nsDomain isHidden];
  if (isHidden)
  {
    identifier = self->_identifier;
    v5 = *MEMORY[0x1E6967178];

    LOBYTE(isHidden) = [(NSString *)identifier isEqualToString:v5];
  }

  return isHidden;
}

- (BOOL)isDefaultDomain
{
  nsDomain = [(FPDDomain *)self nsDomain];
  identifier = [nsDomain identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E6967178]];

  return v4;
}

- (BOOL)forceDisableIndexing
{
  providerDomainID = [(FPDDomain *)self providerDomainID];
  if ([providerDomainID isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v3 = FPIsFileIndexerEnabled();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rootURLsWithTransientState:(BOOL *)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    *state = 1;
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    v5 = [defaultBackend rootURLsWithTransientState:state];
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSArray)coordinationRootURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    coordinationRootURLs = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    coordinationRootURLs = [defaultBackend coordinationRootURLs];
  }

  objc_sync_exit(selfCopy);

  return coordinationRootURLs;
}

- (NSArray)checkableURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    checkableURLs = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    checkableURLs = [defaultBackend checkableURLs];
  }

  objc_sync_exit(selfCopy);

  return checkableURLs;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fp_prettyDescription = [(FPDDomain *)self fp_prettyDescription];
  userEnabled = [(NSFileProviderDomain *)self->_nsDomain userEnabled];
  v7 = @"user-disabled";
  if (userEnabled)
  {
    v7 = @"user-enabled";
  }

  if (self->_ejectable)
  {
    v8 = @", ejectable";
  }

  else
  {
    v8 = &stru_1F4C2FFD0;
  }

  v9 = [v3 stringWithFormat:@"<%@: %p> %@, %@%@", v4, self, fp_prettyDescription, v7, v8];

  return v9;
}

- (NSString)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  identifier = [WeakRetained identifier];
  fp_obfuscatedFilename = [(NSString *)self->_identifier fp_obfuscatedFilename];
  v7 = [v3 stringWithFormat:@"%@/%@", identifier, fp_obfuscatedFilename];

  return v7;
}

- (void)setDefaultBackend:(id)backend
{
  backendCopy = backend;
  obj = self;
  objc_sync_enter(obj);
  defaultBackend = obj->_defaultBackend;
  obj->_defaultBackend = backendCopy;

  objc_sync_exit(obj);
}

- (FPDDomainBackend)extensionBackend
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_extensionBackend;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setExtensionBackend:(id)backend
{
  backendCopy = backend;
  obj = self;
  objc_sync_enter(obj);
  extensionBackend = obj->_extensionBackend;
  obj->_extensionBackend = backendCopy;

  objc_sync_exit(obj);
}

- (void)refreshConnectionState
{
  v29 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (![(FPDDomain *)obj isPendingInitialization]&& ((v2 = obj->_extensionBackend, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v4 = obj->_defaultBackend, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass()) : (isKindOfClass = 1), (isKindOfClass & 1) == [(FPDDomain *)obj isConnectedToAppExtension]))
  {
    errorReflectingDisconnectionState = [(FPDDomain *)obj errorReflectingDisconnectionState];
    if (errorReflectingDisconnectionState)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = obj;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] domain %{public}@ is being disconnected, switching to a dead-end backend", buf, 0xCu);
      }

      v8 = [[FPDDeadEndExtensionSession alloc] initWithError:errorReflectingDisconnectionState];
      v9 = [[FPDDomainDeadEndBackend alloc] initWithDomain:obj];
      if ([(FPDDomain *)obj isUsingFPFS])
      {
        extensionBackend = obj->_extensionBackend;
      }

      else
      {
        extensionBackend = obj->_defaultBackend;
      }

      v16 = extensionBackend;
    }

    else
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = obj;
        _os_log_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] domain %{public}@ is being re-connected, enabling extension backend", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&obj->_provider);
      asAppExtensionBackedProvider = [WeakRetained asAppExtensionBackedProvider];

      v14 = [FPDExtensionSession alloc];
      sharedSessionQueue = [asAppExtensionBackedProvider sharedSessionQueue];
      v8 = [(FPDExtensionSession *)v14 initWithDomain:obj extension:asAppExtensionBackedProvider queue:sharedSessionQueue];

      v9 = obj->_deactivatedBackend;
      v16 = 0;
    }

    defaultBackend = obj->_defaultBackend;
    if (objc_opt_respondsToSelector())
    {
      [(FPDDomainBackend *)obj->_defaultBackend updateShouldRetryThrottledOperations:errorReflectingDisconnectionState == 0 completionHandler:&__block_literal_global_119];
    }

    [(FPDDeadEndExtensionSession *)v8 start];
    v18 = obj->_session;
    objc_storeStrong(&obj->_session, v8);
    isUsingFPFS = [(FPDDomain *)obj isUsingFPFS];
    v20 = 128;
    if (isUsingFPFS)
    {
      v20 = 136;
    }

    v21 = *(&obj->super.isa + v20);
    *(&obj->super.isa + v20) = v9;
    v22 = v9;

    deactivatedBackend = obj->_deactivatedBackend;
    obj->_deactivatedBackend = v16;
    v24 = v16;

    objc_sync_exit(obj);
    [(FPDExtensionSessionProtocol *)v18 cancelAsync];
    [(FPDExtensionSessionProtocol *)v18 invalidate];

    v25 = *MEMORY[0x1E69E9840];
  }

  else
  {
    objc_sync_exit(obj);
    v5 = *MEMORY[0x1E69E9840];
  }
}

void __35__FPDDomain_refreshConnectionState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__FPDDomain_refreshConnectionState__block_invoke_cold_1();
    }
  }
}

- (BOOL)isHiddenByUser
{
  nsDomain = [(FPDDomain *)self nsDomain];
  isHiddenByUser = [nsDomain isHiddenByUser];

  return isHiddenByUser;
}

- (void)setNsDomainOrNilForDefault:(id)default
{
  defaultCopy = default;
  dispatch_assert_queue_V2(self->_serialQueue);
  backingStoreIdentity = [(FPDDomainBackend *)self->_defaultBackend backingStoreIdentity];
  [defaultCopy setBackingStoreIdentity:backingStoreIdentity];

  [(NSRecursiveLock *)self->_nsDomainLock lock];
  v7 = self->_nsDomain;
  if (defaultCopy)
  {
    objc_storeStrong(&self->_nsDomain, default);
  }

  [(NSRecursiveLock *)self->_nsDomainLock unlock];
  [(FPDDomain *)self refreshConnectionState];
  if (self->_defaultBackend && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(FPDDomainBackend *)self->_defaultBackend didChangeDomainConfiguration:v7];
  }

  if ([(NSFileProviderDomain *)v7 isHidden])
  {
    isHiddenByUser = 1;
  }

  else
  {
    isHiddenByUser = [(NSFileProviderDomain *)v7 isHiddenByUser];
  }

  if ([defaultCopy isHidden])
  {
    isHiddenByUser2 = 1;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isHiddenByUser2 = [defaultCopy isHiddenByUser];
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (isHiddenByUser != isHiddenByUser2)
  {
    objc_initWeak(&location, self);
    indexer = [(FPDDomain *)self indexer];
    userEnabled = [(FPDDomain *)self userEnabled];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__FPDDomain_setNsDomainOrNilForDefault___block_invoke;
    v12[3] = &unk_1E83BF788;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [indexer setIndexingEnabled:userEnabled & (isHiddenByUser2 ^ 1u) completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

LABEL_15:
}

void __40__FPDDomain_setNsDomainOrNilForDefault___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) isHidden];
    v8 = [WeakRetained[8] isHidden];
    v9[0] = 67109634;
    v9[1] = v7;
    v10 = 1024;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Failed switching indexer from %d to %d: %@", v9, 0x18u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldDisconnectWithStartupError
{
  v17 = *MEMORY[0x1E69E9840];
  startupError = [(FPDDomain *)self startupError];
  v4 = [startupError fp_isPOSIXErrorCode:28];

  if (v4)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] Initializing disconnected (low disk space) provider for %@", &v15, 0xCu);
    }

    volume = [(FPDDomain *)self volume];
    v7 = volume;
    if (volume)
    {
      [volume monitorLowDiskSpaceRecovery];
    }

    else
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [FPDDomain shouldDisconnectWithStartupError];
      }
    }
  }

  else
  {
    startupError2 = [(FPDDomain *)self startupError];
    v9 = [startupError2 fp_isFileProviderInternalError:22];

    if (v9)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomain shouldDisconnectWithStartupError];
      }
    }

    else
    {
      startupError3 = [(FPDDomain *)self startupError];
      v11 = [startupError3 fp_isFileProviderInternalError:23];

      if (!v11)
      {
        result = 0;
        goto LABEL_16;
      }

      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomain shouldDisconnectWithStartupError];
      }
    }
  }

  result = 1;
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)finishSetup
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] Initializing regular provider for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)createRootByImportingDirectoryAtURL:(id)l knownFolders:(id)folders error:(id *)error
{
  v5 = [(FPDDomainBackend *)self->_defaultBackend createRootByImportingURL:l knownFolders:folders error:error];
  v6 = v5 != 0;

  return v6;
}

- (void)createRootURLWithCompletion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_defaultBackend;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v40 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  nsDomain = [(FPDDomain *)self nsDomain];
  personaIdentifier = [nsDomain personaIdentifier];
  v11 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  nsDomain2 = [(FPDDomain *)self nsDomain];
  personaIdentifier2 = [nsDomain2 personaIdentifier];
  v14 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v14 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v39 = 0;
  v15 = [currentPersona copyCurrentPersonaContextWithError:&v39];
  v16 = v39;
  v17 = v40;
  v40 = v15;

  if (v16)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDDomain createRootURLWithCompletion:];
    }
  }

  nsDomain3 = [(FPDDomain *)self nsDomain];
  personaIdentifier3 = [nsDomain3 personaIdentifier];
  v21 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v21)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      nsDomain4 = [(FPDDomain *)self nsDomain];
      personaIdentifier4 = [nsDomain4 personaIdentifier];
      *buf = 138412546;
      v42 = personaIdentifier4;
      v43 = 2112;
      v44 = v21;
      _os_log_error_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  if ([(FPDDomain *)self isDefaultDomain])
  {
    if ([(FPDDomain *)self isHiddenDefaultDomain])
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomain createRootURLWithCompletion:];
      }

      v24 = FPDomainUnavailableError();
      completionCopy[2](completionCopy, 0, v24);
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomain createRootURLWithCompletion:];
      }

      v28 = MEMORY[0x1E69673A0];
      providerDomainID = [(FPDDomain *)self providerDomainID];
      v24 = [v28 rootItemIDWithProviderDomainID:providerDomainID];

      v30 = [(FPDExtensionSessionProtocol *)self->_session newFileProviderProxyWithTimeout:0 pid:-1.0];
      requestFromTheSystem = [MEMORY[0x1E6967518] requestFromTheSystem];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __41__FPDDomain_createRootURLWithCompletion___block_invoke;
      v35[3] = &unk_1E83BF7B0;
      v35[4] = self;
      v37 = completionCopy;
      v36 = v5;
      [v30 itemForItemID:v24 request:requestFromTheSystem completionHandler:v35];
    }
  }

  else
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain createRootURLWithCompletion:];
    }

    v38 = 0;
    v26 = [(FPDDomainBackend *)v5 createRootByImportingURL:0 knownFolders:MEMORY[0x1E695E0F0] error:&v38];
    v24 = v38;
    (completionCopy)[2](completionCopy, v26, v24);
  }

  _FPRestorePersona();
  v32 = *MEMORY[0x1E69E9840];
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 168);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__FPDDomain_createRootURLWithCompletion___block_invoke_2;
  v9[3] = &unk_1E83BF228;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, v9);
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = fp_current_or_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_1(a1, v2);
    }

    v12 = a1[4];
    (*(a1[7] + 16))();
  }

  else
  {
    if (v5)
    {
      __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_2(a1, v4, v6, v7, v8, v9, v10, v11);
    }

    v13 = a1[6];
    v16 = 0;
    v14 = [v13 createRootByImportingURL:0 knownFolders:MEMORY[0x1E695E0F0] error:&v16];
    v15 = v16;
    (*(a1[7] + 16))();
  }
}

- (void)_prepareFileCoordinationProviders
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = fileCoordinationProviderByURL;
  objc_sync_enter(v23);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  coordinationRootURLs = [(FPDDomain *)self coordinationRootURLs];
  v4 = 0;
  v5 = [coordinationRootURLs countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    obj = coordinationRootURLs;
    v25 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = fileCoordinationProviderByURL;
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          v10 = *v29;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v28 + 1) + 8 * j);
              if ([v12 fp_relationshipToItemAtURL:v7] == 1)
              {
                v13 = [fileCoordinationProviderByURL objectForKeyedSubscript:v12];
                v9 = v12;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v13 = 0;
LABEL_16:

        v14 = +[FPDKnownFolderArbiter desktopURL];
        v15 = [v14 fp_relationshipToItemAtURL:v7] == 1;

        v16 = +[FPDKnownFolderArbiter documentsURL];
        v17 = [v16 fp_relationshipToItemAtURL:v7] == 1;

        if (v17)
        {
          v4 |= v15 | 2;
        }

        else
        {
          v4 |= v15;
        }

        if (v13)
        {
          [fileCoordinationProviderByURL removeObjectForKey:v9];
        }

        else
        {
          v13 = [[FPDFileCoordinationProvider alloc] initWithRootURL:v7];
          [(FPDFileCoordinationProvider *)v13 setExtensionIdentifier:selfCopy->_identifier];
        }

        [fileCoordinationProviderByURL setObject:v13 forKeyedSubscript:v7];
        [(FPDFileCoordinationProvider *)v13 setDelegate:selfCopy];
      }

      coordinationRootURLs = obj;
      v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v23);
  nsDomain = [(FPDDomain *)selfCopy nsDomain];
  v19 = v4 == [nsDomain replicatedKnownFolders];

  if (!v19)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_provider);
    identifier = selfCopy->_identifier;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __46__FPDDomain__prepareFileCoordinationProviders__block_invoke;
    v27[3] = &unk_1E83BDFC8;
    v27[4] = selfCopy;
    [WeakRetained setReplicatedKnownFolders:v4 forDomainIdentifier:identifier completionHandler:v27];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __46__FPDDomain__prepareFileCoordinationProviders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v1 = [WeakRetained manager];
  v2 = [v1 server];
  [v2 signalProviderChanges];
}

- (void)_checkDomainConnectionPermittedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  volume = [(FPDDomain *)self volume];
  role = [volume role];

  if (role == 3 && ([(FPDDomain *)self session], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) == 0))
  {
    extCallOutQueue = self->_extCallOutQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E83BE310;
    v10[4] = self;
    v11 = handlerCopy;
    dispatch_async(extCallOutQueue, v10);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 newFileProviderProxyWithTimeout:0 pid:180.0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE1A8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 shouldConnectExternalDomainWithCompletionHandler:v5];
}

void __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E83BF450;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_startObservingRootAndResumeIndexerWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion
{
  reasonCopy = reason;
  serialQueue = self->_serialQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(serialQueue);
  provider = [(FPDDomain *)self provider];
  asAppExtensionBackedProvider = [provider asAppExtensionBackedProvider];

  self->_isObservingRoot = 1;
  [(FPDDomain *)self _prepareFileCoordinationProviders];
  v12 = self->_serialQueue;
  v15 = MEMORY[0x1E69E9820];
  v16 = reasonCopy;
  v13 = asAppExtensionBackedProvider;
  v14 = reasonCopy;
  fp_dispatch_async_with_logs();
  [(FPDDomain *)self _registerFileCoordinatorAndSpaceForceWithCompletion:completionCopy, v15, 3221225472, __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke, &unk_1E83BEB68, self];
}

uint64_t __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  section = __fp_create_section();
  v14 = section;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v7[8];
    v9 = [v7 defaultBackend];
    *buf = 134218498;
    v16 = section;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx starting domain %@ with backend %@", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132;
  v10[3] = &unk_1E83BF800;
  v10[4] = v4;
  v11 = *(a1 + 40);
  v13 = *(a1 + 56);
  v12 = *(a1 + 48);
  [v4 _checkDomainConnectionPermittedWithCompletionHandler:v10];

  result = __fp_leave_section_Debug();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_1(v3);
    }

    v5 = [MEMORY[0x1E696ABC0] fp_externalDomainRejectedErrorWithUnderlyingError:v3];
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v6 = [*(a1 + 32) defaultBackend];
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v25 = 0;
  v9 = [v6 startWithReason:v7 userAllowedDBDrop:v8 error:&v25];
  v5 = v25;

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v12 = *(*(a1 + 32) + 64);
    v13 = [*(a1 + 48) server];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_2(v12, v5);
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 168);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_133;
    v20[3] = &unk_1E83BE5A8;
    v20[4] = v15;
    v21 = *(a1 + 48);
    v22 = v12;
    v5 = v5;
    v23 = v5;
    v24 = v13;
    v17 = v13;
    v18 = v12;
    dispatch_async(v16, v20);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_3;
    block[3] = &unk_1E83BE068;
    block[4] = v10;
    dispatch_async(v11, block);
  }
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_133(uint64_t a1)
{
  if (*(*(a1 + 32) + 121) == 1)
  {
    v4 = [*(a1 + 32) defaultBackend];
    [v4 invalidate];
  }

  else
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_2;
    v5[3] = &unk_1E83BF7D8;
    v3 = *(a1 + 56);
    v6 = *(a1 + 64);
    [v1 reloadDomain:v2 unableToStartup:1 startupError:v3 completionHandler:v5];
  }
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultBackend];
  v3 = [v2 backingStoreIdentity];
  [*(*(a1 + 32) + 64) setBackingStoreIdentity:v3];

  v4 = *(a1 + 32);
  if ((v4[121] & 1) != 0 || v4[51] == 1)
  {
    v7 = [v4 defaultBackend];
    [v7 invalidate];
  }

  else if ([MEMORY[0x1E69672F0] runningInSyncBubble])
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] shared iPad: skipping indexing because we're just finishing sync", buf, 2u);
    }
  }

  else
  {
    v6 = [*(a1 + 32) indexer];
    [v6 start];

    *(*(a1 + 32) + 50) = 1;
  }
}

void __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 168));
  v7 = [*(a1 + 32) log];
  v21 = fpfs_adopt_log();

  v8 = *(a1 + 32);
  if (v8[121] == 1)
  {
    v9 = [*(a1 + 32) defaultBackend];
    [v9 invalidate];
  }

  else
  {
    if (!v6)
    {
      v16 = *(a1 + 64);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_136;
      v18[3] = &unk_1E83BE310;
      v17 = *(a1 + 48);
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      [v8 _startObservingRootAndResumeIndexerWithReason:v17 userAllowedDBDrop:v16 completion:v18];

      goto LABEL_9;
    }

    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      [v6 fp_prettyDescription];
      objc_claimAutoreleasedReturnValue();
      __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_cold_1();
    }

    v12 = [*(a1 + 32) defaultBackend];
    [v12 invalidate];

    v13 = *(a1 + 32);
    if ((v13[50] & 1) == 0)
    {
      v14 = [v13 indexer];
      [v14 start];

      *(*(a1 + 32) + 50) = 1;
    }
  }

  [*(a1 + 40) resume];
  (*(*(a1 + 56) + 16))();
LABEL_9:
  __fp_pop_log();

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_136(uint64_t a1)
{
  [*(a1 + 32) resume];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)didRefreshRootURLsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  log = self->_log;
  v13 = fpfs_adopt_log();
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  manager = [WeakRetained manager];
  server = [manager server];
  [server signalProviderChanges];

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPDDomain_didRefreshRootURLsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E83BE310;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_sync(serialQueue, block);

  __fp_pop_log();
}

uint64_t __53__FPDDomain_didRefreshRootURLsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _prepareFileCoordinationProviders];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _registerFileCoordinatorAndSpaceForceWithCompletion:v3];
}

- (void)diskImportFinished
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  v4 = v0;
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, v1, v1, "[ERROR] failed to clear import cookie for domain %@: %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FPDDomain_startWithReason_userAllowedDBDrop_completion___block_invoke;
  v13[3] = &unk_1E83BF850;
  v13[4] = self;
  v14 = reasonCopy;
  dropCopy = drop;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = reasonCopy;
  dispatch_sync(serialQueue, v13);
}

- (void)cancelPendingCoordinations
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_coordinatorMetadataPerURL copy];
  [(NSMutableDictionary *)self->_coordinatorMetadataPerURL removeAllObjects];
  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  v4 = [MEMORY[0x1E696AC28] responseWithError:?];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v3;
  allValues = [v3 allValues];
  v6 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        allValues2 = [v10 allValues];
        v12 = [allValues2 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            v15 = 0;
            do
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(allValues2);
              }

              completionHandler = [*(*(&v20 + 1) + 8 * v15) completionHandler];
              (completionHandler)[2](completionHandler, v4);

              ++v15;
            }

            while (v13 != v15);
            v13 = [allValues2 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)stopIndexer
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __24__FPDDomain_stopIndexer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[51] == 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Trying to stop already stopped indexer"];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain stopIndexer]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1068, [v4 UTF8String]);
  }

  if (v1[121] == 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Trying to stop indexer on invalided domain"];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain stopIndexer]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1069, [v6 UTF8String]);
  }

  v1[50] = 1;
  v3 = [*(a1 + 32) indexer];
  [v3 invalidate];

  *(*(a1 + 32) + 51) = 1;
}

- (void)invalidateWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  self->_invalidated = 1;
  section = __fp_create_section();
  v9[5] = section;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v11 = section;
    v12 = 2112;
    selfCopy = self;
    v14 = 2114;
    v15 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Invalidating %@ (reason: %{public}@)...", buf, 0x20u);
  }

  [(FPDDomain *)self _unregisterFromFileCoordinatorAndSpaceForce];
  serialQueue = self->_serialQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__FPDDomain_invalidateWithReason___block_invoke;
  v9[3] = &unk_1E83BE068;
  v9[4] = self;
  dispatch_sync(serialQueue, v9);
  [(NSURL *)self->_previouslyAccessedSecurityScopedURL stopAccessingSecurityScopedResource];
  __fp_leave_section_Notice();

  v8 = *MEMORY[0x1E69E9840];
}

void __34__FPDDomain_invalidateWithReason___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  v5 = fpfs_adopt_log();
  v3 = *(a1 + 32);
  if ((*(v3 + 51) & 1) == 0)
  {
    *(v3 + 50) = 1;
    v4 = [*(a1 + 32) indexer];
    [v4 invalidate];

    *(*(a1 + 32) + 51) = 1;
    v3 = *(a1 + 32);
  }

  [*(v3 + 128) invalidate];
  [*(a1 + 32) cancelPendingCoordinations];
  __fp_pop_log();
}

- (id)cleanupDomainWithMode:(unint64_t)mode
{
  v47[1] = *MEMORY[0x1E69E9840];
  log = self->_log;
  v39 = fpfs_adopt_log();
  provider = [(FPDDomain *)self provider];
  identifier = [provider identifier];
  if ([identifier isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v8 = 1;
  }

  else
  {
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v8 = [identifier2 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];
  }

  mEMORY[0x1E697A0F8] = [MEMORY[0x1E697A0F8] sharedInstance];
  providerDomainID = [(FPDDomain *)self providerDomainID];
  v47[0] = providerDomainID;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  [mEMORY[0x1E697A0F8] removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:v13 completionHandler:&__block_literal_global_157];

  v38 = 0;
  v14 = [(FPDDomain *)self cleanupDomainWithMode:mode error:&v38];
  v15 = v38;
  if (v15)
  {
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      providerDomainID2 = [(FPDDomain *)self providerDomainID];
      fp_obfuscatedProviderDomainID = [providerDomainID2 fp_obfuscatedProviderDomainID];
      fp_prettyDescription = [v15 fp_prettyDescription];
      *buf = 138412802;
      v42 = fp_obfuscatedProviderDomainID;
      v43 = 2048;
      modeCopy = mode;
      v45 = 2112;
      v46 = fp_prettyDescription;
      _os_log_error_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_ERROR, "[ERROR] removing domain %@ with mode %lu faile with %@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    resultURL = 0;
    goto LABEL_11;
  }

  resultURL = [v14 resultURL];
LABEL_11:
  indexer = [(FPDDomain *)self indexer];
  if (indexer)
  {
    v19 = v8;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (v8)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        providerDomainID3 = [(FPDDomain *)self providerDomainID];
        fp_obfuscatedProviderDomainID2 = [providerDomainID3 fp_obfuscatedProviderDomainID];
        [(FPDDomain *)fp_obfuscatedProviderDomainID2 cleanupDomainWithMode:v40, v20, providerDomainID3];
      }
    }
  }

  else
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      providerDomainID4 = [(FPDDomain *)self providerDomainID];
      fp_obfuscatedProviderDomainID3 = [providerDomainID4 fp_obfuscatedProviderDomainID];
      [(FPDDomain *)fp_obfuscatedProviderDomainID3 cleanupDomainWithMode:v40, v23, providerDomainID4];
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __35__FPDDomain_cleanupDomainWithMode___block_invoke_158;
    v37[3] = &unk_1E83BDFC8;
    v37[4] = self;
    [indexer dropIndexForReason:1 completion:v37];
  }

  supportURL = [(FPDDomain *)self supportURL];
  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = supportURL;
    _os_log_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_INFO, "[INFO] removing support directory at %@", buf, 0xCu);
  }

  v28 = supportURL;
  [supportURL fileSystemRepresentation];
  if ((fpfs_recursive_unlinkat() & 0x80000000) != 0)
  {
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = __error();
      v31 = strerror(*v30);
      [(FPDDomain *)v31 cleanupDomainWithMode:buf, supportURL, v29];
    }
  }

  else
  {
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain cleanupDomainWithMode:];
    }
  }

  __fp_pop_log();
  v32 = *MEMORY[0x1E69E9840];

  return resultURL;
}

void __35__FPDDomain_cleanupDomainWithMode___block_invoke_158(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) indexer];
      v7 = [v3 fp_prettyDescription];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to async drop index for %@: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__FPDDomain_cleanupDomainWithMode___block_invoke_158_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_physicalURLForURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->_extensionBackend == self->_defaultBackend)
  {
    v6 = 0;
    if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v7 = [MEMORY[0x1E6967510] placeholderURLForURL:v5];
      v6 = 0;
      if ([v7 checkResourceIsReachableAndReturnError:0])
      {
        v6 = v7;
      }
    }
  }

  else
  {
    v6 = lCopy;
  }

  return v6;
}

- (id)_siblingDelegateForURL:(id)l
{
  lCopy = l;
  provider = [(FPDDomain *)self provider];
  v6 = [provider domainForURL:lCopy];

  if (v6 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)_removeProgressForProvidingItemAtURL:(id)l toReaderWithID:(id)d
{
  lCopy = l;
  serialQueue = self->_serialQueue;
  dCopy = d;
  dispatch_assert_queue_V2(serialQueue);
  v9 = [(NSMutableDictionary *)self->_coordinatorMetadataPerURL objectForKeyedSubscript:lCopy];
  v10 = [v9 objectForKeyedSubscript:dCopy];
  [v9 setObject:0 forKeyedSubscript:dCopy];

  if (![v9 count])
  {
    [(NSMutableDictionary *)self->_coordinatorMetadataPerURL setObject:0 forKeyedSubscript:lCopy];
  }

  return v10;
}

- (id)getProvidedItemRecursiveGenerationCountForItemAtURL:(id)l
{
  lCopy = l;
  v5 = self->_providedItemRecursiveGenCountPerURL;
  if (([lCopy hasDirectoryPath] & 1) == 0)
  {
    v6 = MEMORY[0x1E695DFF8];
    path = [lCopy path];
    v8 = [v6 fileURLWithPath:path isDirectory:1];

    lCopy = v8;
  }

  v9 = v5;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)v9 objectForKey:lCopy];
  objc_sync_exit(v9);

  if (errorInjectionPointEnabled(0, 2))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:0xFFFFFFFFLL];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

- (void)setProvidedItemRecursiveGenerationCount:(id)count forItemAtURL:(id)l
{
  countCopy = count;
  lCopy = l;
  v7 = self->_providedItemRecursiveGenCountPerURL;
  if (([lCopy hasDirectoryPath] & 1) == 0)
  {
    v8 = MEMORY[0x1E695DFF8];
    path = [lCopy path];
    v10 = [v8 fileURLWithPath:path isDirectory:1];

    lCopy = v10;
  }

  v11 = v7;
  objc_sync_enter(v11);
  if (countCopy)
  {
    [(NSMutableDictionary *)v11 setObject:countCopy forKey:lCopy];
  }

  else
  {
    [(NSMutableDictionary *)v11 removeObjectForKey:lCopy];
  }

  objc_sync_exit(v11);
}

- (BOOL)_isProviderBlockingConsumer:(id)consumer
{
  consumerCopy = consumer;
  provider = [(FPDDomain *)self provider];
  objc_sync_enter(provider);
  provider2 = [(FPDDomain *)self provider];
  blockedProcessNames = [provider2 blockedProcessNames];
  v8 = [blockedProcessNames containsObject:consumerCopy];

  objc_sync_exit(provider);
  return v8;
}

- (void)_provideItemAtURL:(id)l toReaderWithID:(id)d completionHandler:(id)handler
{
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  _kernelMaterializationInfo = [MEMORY[0x1E696ABF8] _kernelMaterializationInfo];
  _readingOptions = [MEMORY[0x1E696ABF8] _readingOptions];
  if (dCopy)
  {
    v13 = [MEMORY[0x1E696ABF8] _processIdentifierForID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  *&v14 = -1;
  *(&v14 + 1) = -1;
  v15[0] = v14;
  v15[1] = v14;
  [(FPDDomain *)self _provideItemAtURL:lCopy withReaderID:dCopy withProcessID:v13 withAuditToken:v15 kernelInfo:_kernelMaterializationInfo readingOptions:_readingOptions completionHandler:handlerCopy];
}

- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  if (infoCopy)
  {
    [infoCopy readerAuditToken];
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
  }

  v11 = audit_token_to_pid(&atoken);
  readerID = [infoCopy readerID];
  if (infoCopy)
  {
    [infoCopy readerAuditToken];
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
  }

  kernelMaterializationInfo = [infoCopy kernelMaterializationInfo];
  -[FPDDomain _provideItemAtURL:withReaderID:withProcessID:withAuditToken:kernelInfo:readingOptions:completionHandler:](self, "_provideItemAtURL:withReaderID:withProcessID:withAuditToken:kernelInfo:readingOptions:completionHandler:", lCopy, readerID, v11, &atoken, kernelMaterializationInfo, [infoCopy readingOptions], handlerCopy);
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  v25 = fpfs_adopt_log();
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*(a1 + 48)];

    if (v5)
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [*(*(a1 + 32) + 8) setObject:v4 forKeyedSubscript:*(a1 + 40)];
  }

  v7 = *(a1 + 88);
  if ((v7 & 0x10) != 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_cold_2();
    }

    *(*(*(a1 + 80) + 8) + 24) |= 0x20000uLL;
    v7 = *(a1 + 88);
  }

  if ((v7 & 0xA) != 0)
  {
    [*(a1 + 56) setAllowsResurrection:1];
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(v9 + 128);
  v12 = *(*(*(a1 + 80) + 8) + 24);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_178;
  v19[3] = &unk_1E83BF8A0;
  v19[4] = v9;
  v20 = v10;
  v21 = *(a1 + 48);
  v22 = *(a1 + 64);
  v24 = *(a1 + 88);
  v18 = *(a1 + 72);
  v15 = v18;
  v23 = v18;
  v16 = [v11 startProvidingItemAtURL:v20 readerID:v14 readingOptions:v12 request:v13 completionHandler:v19];
  v17 = [[FPCoordinationContext alloc] initWithProgress:v16 completionHandler:*(a1 + 72)];
  [v4 setObject:v17 forKeyedSubscript:*(a1 + 48)];

LABEL_14:
  __fp_pop_log();
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2;
  block[3] = &unk_1E83BF878;
  block[4] = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v13 = v3;
  v14 = *(a1 + 56);
  v16 = *(a1 + 80);
  v9 = *(a1 + 64);
  v7 = v9;
  v15 = v9;
  v8 = v3;
  dispatch_async(v6, block);
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _removeProgressForProvidingItemAtURL:*(a1 + 40) toReaderWithID:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = fp_current_or_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 40) fp_shortDescription];
      v7 = [*(a1 + 56) fp_prettyDescription];
      v8 = *(a1 + 64);
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x1E696AEC0] fp_coordinatorReadingOptions:*(*(*(a1 + 80) + 8) + 24)];
      v11 = *(a1 + 88);
      v19 = 138413570;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ❌ NSFileCoordinator: failed providing item at %@: %@ (consumer: %@, readerID: %{public}@, options: %{public}@, kernelOperation: 0x%x)", &v19, 0x3Au);
    }
  }

  else if (v5)
  {
    v12 = [*(a1 + 40) fp_shortDescription];
    v13 = *(a1 + 64);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E696AEC0] fp_coordinatorReadingOptions:*(*(*(a1 + 80) + 8) + 24)];
    v19 = 138413058;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ✅ NSFileCoordinator: providing item at %@ (consumer: %@, readerID: %{public}@, options: %{public}@)", &v19, 0x2Au);
  }

  v16 = [*(a1 + 32) getProvidedItemRecursiveGenerationCountForItemAtURL:*(a1 + 40)];
  if (v16)
  {
    [*(a1 + 32) setProvidedItemRecursiveGenerationCount:0 forItemAtURL:*(a1 + 40)];
  }

  if (v2)
  {
    v17 = [MEMORY[0x1E696AC28] responseWithError:*(a1 + 56)];
    -[NSObject setProvidedItemRecursiveGenerationCount:](v17, "setProvidedItemRecursiveGenerationCount:", [v16 unsignedLongLongValue]);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2_cold_1();
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_cancelProvidingItemAtURL:(id)l toReaderWithID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  log = self->_log;
  v18 = fpfs_adopt_log();
  if (dCopy && [MEMORY[0x1E696ABF8] _processIdentifierForID:dCopy])
  {
    v9 = FPExecutableNameForProcessIdentifier();
  }

  else
  {
    v9 = @"(unknown)";
  }

  section = __fp_create_section();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    fp_prettyDescription = [(FPDDomain *)self fp_prettyDescription];
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134219010;
    v20 = section;
    v21 = 2112;
    v22 = fp_prettyDescription;
    v23 = 2112;
    v24 = fp_shortDescription;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = dCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx ❌ NSFileCoordinator cancelled request for %@ to provide item at %@ (consumer: %@, readerID: %@)", buf, 0x34u);
  }

  serialQueue = self->_serialQueue;
  v16 = lCopy;
  v17 = dCopy;
  fp_dispatch_async_with_logs();

  __fp_leave_section_Debug();
  __fp_pop_log();

  v13 = *MEMORY[0x1E69E9840];
}

void __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = [*(a1 + 32) _removeProgressForProvidingItemAtURL:*(a1 + 40) toReaderWithID:*(a1 + 48)];
  v3 = fp_current_or_default_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_1(v2);
    }

    v4 = [v2 progress];
    [v4 cancel];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_2(v1, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_writerWithID:(id)d didFinishWritingForURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  if (dCopy)
  {
    v8 = [MEMORY[0x1E696ABF8] _processIdentifierForID:dCopy];
    if (v8)
    {
      v9 = FPExecutableNameForProcessIdentifier();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = @"(unknown)";
LABEL_6:
  section = __fp_create_section();
  v24 = section;
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134218754;
    v26 = section;
    v27 = 2112;
    v28 = fp_shortDescription;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = dCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx NSFileCoordinator is telling us the item at %@ was changed (consumer: %@, writerID: %@)", buf, 0x2Au);
  }

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [lCopy fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [(FPDDomain *)self fp_prettyDescription];
    objc_claimAutoreleasedReturnValue();
    [FPDDomain _writerWithID:didFinishWritingForURL:];
  }

  defaultBackend = self->_defaultBackend;
  v14 = [FPDRequest requestForPID:v8];
  [(FPDDomainBackend *)defaultBackend itemChangedAtURL:lCopy request:v14];

  v15 = self->_defaultBackend;
  v16 = [FPDRequest requestForPID:v8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke;
  v20[3] = &unk_1E83BF910;
  v17 = lCopy;
  v21 = v17;
  selfCopy = self;
  v23 = v8;
  [(FPDDomainBackend *)v15 itemForURL:v17 options:0 request:v16 completionHandler:v20];

  __fp_leave_section_Debug();
  v18 = *MEMORY[0x1E69E9840];
}

void __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v5 lastUsedDate];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 lastUsedDate];
      v11 = [v5 contentModificationDate];
      v12 = [v10 compare:v11];

      if (v12 == -1)
      {
        v13 = [v5 contentModificationDate];
        [v5 setLastUsedDate:v13];

        v14 = *(a1 + 40);
        v15 = [FPDRequest requestForPID:*(a1 + 48)];
        [v14 daemonSideItemChange:v5 changedFields:8 request:v15 completionHandler:&__block_literal_global_183];
      }
    }
  }
}

- (void)_providedItemAtURL:(id)l didGainPresenterWithInfo:(id)info
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  section = __fp_create_section();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    presenterID = [infoCopy presenterID];
    *buf = 134218498;
    *&buf[4] = section;
    *&buf[12] = 2112;
    *&buf[14] = fp_shortDescription;
    *&buf[22] = 2112;
    *&buf[24] = presenterID;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Item at %@ gaining presenter %@", buf, 0x20u);
  }

  if ([(FPDDomain *)self _wantsPresenterNotifications])
  {
    memset(buf, 0, 32);
    if (infoCopy)
    {
      [infoCopy presenterAuditToken];
    }

    WeakRetained = objc_loadWeakRetained(&self->_provider);
    server = [WeakRetained server];
    presenterManager = [server presenterManager];

    presenterID2 = [infoCopy presenterID];
    v13 = [presenterManager promisePresenterWithID:presenterID2];

    defaultBackend = self->_defaultBackend;
    v15 = +[FPDRequest requestForSelf];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke;
    v22[3] = &unk_1E83BF938;
    v23 = lCopy;
    v16 = presenterManager;
    v24 = v16;
    v17 = infoCopy;
    v27 = *buf;
    v28 = *&buf[16];
    v25 = v17;
    v26 = v13;
    [(FPDDomainBackend *)defaultBackend itemIDForURL:v23 requireProviderItemID:0 request:v15 completionHandler:v22];
  }

  else
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain _providedItemAtURL:didGainPresenterWithInfo:];
    }
  }

  __fp_leave_section_Debug();

  v19 = *MEMORY[0x1E69E9840];
}

void __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) presenterID];
  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = *(a1 + 80);
    v13[0] = *(a1 + 64);
    v13[1] = v12;
    [v8 addPresenter:v9 itemID:v5 urlHint:v10 auditToken:v13 promiseID:v11];
  }

  else
  {
    [v8 forgetPromiseForPresenterWithID:v9 promiseID:*(a1 + 56)];
  }
}

- (void)_providedItemAtURL:(id)l didLosePresenterWithID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  log = self->_log;
  v16 = fpfs_adopt_log();
  section = __fp_create_section();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134218498;
    v18 = section;
    v19 = 2112;
    v20 = fp_shortDescription;
    v21 = 2112;
    v22 = dCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Item at %@ losing presenter %@", buf, 0x20u);
  }

  if ([(FPDDomain *)self _wantsPresenterNotifications])
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    server = [WeakRetained server];
    presenterManager = [server presenterManager];

    [presenterManager removePresenter:dCopy];
  }

  else
  {
    presenterManager = fp_current_or_default_log();
    if (os_log_type_enabled(presenterManager, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain _providedItemAtURL:didGainPresenterWithInfo:];
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_providedItemAtURL:(id)l withPresenterWithID:(id)d didMoveToURL:(id)rL
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  rLCopy = rL;
  log = self->_log;
  v36 = fpfs_adopt_log();
  section = __fp_create_section();
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    fp_shortDescription2 = [rLCopy fp_shortDescription];
    *buf = 134218754;
    *&buf[4] = section;
    *&buf[12] = 2112;
    *&buf[14] = fp_shortDescription;
    *&buf[22] = 2112;
    *&buf[24] = dCopy;
    v38 = 2112;
    v39 = fp_shortDescription2;
    _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Item at %@, presenter %@, moving to %@", buf, 0x2Au);
  }

  if ([(FPDDomain *)self _wantsPresenterNotifications])
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    server = [WeakRetained server];
    presenterManager = [server presenterManager];

    v16 = [presenterManager presenterWithID:dCopy];
    v17 = v16;
    if (v16)
    {
      memset(buf, 0, sizeof(buf));
      [v16 auditToken];
      [presenterManager removePresenter:dCopy];
      v18 = [presenterManager promisePresenterWithID:dCopy];
      defaultBackend = self->_defaultBackend;
      v20 = +[FPDRequest requestForSelf];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke;
      v28[3] = &unk_1E83BF938;
      v29 = rLCopy;
      v30 = presenterManager;
      v21 = dCopy;
      v33 = *buf;
      v34 = *&buf[16];
      v31 = v21;
      v32 = v18;
      [(FPDDomainBackend *)defaultBackend itemIDForURL:v29 requireProviderItemID:0 request:v20 completionHandler:v28];
    }

    else
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        fp_shortDescription3 = [lCopy fp_shortDescription];
        fp_shortDescription4 = [rLCopy fp_shortDescription];
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        *&buf[14] = fp_shortDescription3;
        *&buf[22] = 2112;
        *&buf[24] = fp_shortDescription4;
        _os_log_error_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Move of a presenter %@ from %@ to %@ notified but no previous presenter existed", buf, 0x20u);
      }
    }
  }

  else
  {
    presenterManager = fp_current_or_default_log();
    if (os_log_type_enabled(presenterManager, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain _providedItemAtURL:didGainPresenterWithInfo:];
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();

  v23 = *MEMORY[0x1E69E9840];
}

void __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = *(a1 + 80);
    v13[0] = *(a1 + 64);
    v13[1] = v12;
    [v8 addPresenter:v9 itemID:v5 urlHint:v10 auditToken:v13 promiseID:v11];
  }

  else
  {
    [v8 forgetPromiseForPresenterWithID:v9 promiseID:*(a1 + 56)];
  }
}

- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  section = __fp_create_section();
  v23 = section;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    destinationDirectoryURL = [infoCopy destinationDirectoryURL];
    fp_shortDescription2 = [destinationDirectoryURL fp_shortDescription];
    *buf = 134218498;
    v25 = section;
    v26 = 2112;
    v27 = fp_shortDescription;
    v28 = 2112;
    v29 = fp_shortDescription2;
    _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Checking if download is required for moving %@ to %@", buf, 0x20u);
  }

  defaultBackend = [(FPDDomain *)self defaultBackend];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke;
  v20[3] = &unk_1E83BF960;
  v14 = lCopy;
  v21 = v14;
  v15 = handlerCopy;
  v22 = v15;
  [defaultBackend movingItemAtURL:v14 withInfo:infoCopy completionHandler:v20];

  __fp_leave_section_Debug();
  v16 = *MEMORY[0x1E69E9840];
}

void __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_registerFileCoordinatorAndSpaceForceWithCompletion:(id)completion
{
  v58 = *MEMORY[0x1E69E9840];
  block = completion;
  log = self->_log;
  v56 = fpfs_adopt_log();
  if ([MEMORY[0x1E69672F0] runningInSyncBubble])
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] shared iPad: skipping file coordination registration because we're just finishing sync", buf, 2u);
    }

    dispatch_async(self->_serialQueue, block);
  }

  else
  {
    v33 = objc_opt_new();
    v6 = dispatch_group_create();
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    identifier = [WeakRetained identifier];

    v8 = objc_loadWeakRetained(&self->_provider);
    if (!v8)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no provider"];
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      v25 = v23;
      __assert_rtn("-[FPDDomain _registerFileCoordinatorAndSpaceForceWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1656, [v23 UTF8String]);
    }

    if (!identifier)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no provider identifier"];
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      v28 = v26;
      __assert_rtn("-[FPDDomain _registerFileCoordinatorAndSpaceForceWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1657, [v26 UTF8String]);
    }

    obj = fileCoordinationProviderByURL;
    objc_sync_enter(obj);
    v9 = MEMORY[0x1E695DFD8];
    coordinationRootURLs = [(FPDDomain *)self coordinationRootURLs];
    v35 = [v9 setWithArray:coordinationRootURLs];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    allKeys = [fileCoordinationProviderByURL allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v12)
    {
      v13 = *v52;
      v31 = v39;
      v32 = v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          v16 = [fileCoordinationProviderByURL objectForKeyedSubscript:{v15, obj, block, v31, v32}];
          delegate = [v16 delegate];
          v18 = delegate == self;

          if (v18)
          {
            dispatch_group_enter(v6);
            if ([v35 containsObject:v15])
            {
              providedItemsOperationQueue = self->_providedItemsOperationQueue;
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v45[0] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke;
              v45[1] = &unk_1E83BE0E0;
              v45[2] = self;
              v46 = v33;
              v47 = v15;
              v48 = v16;
              v49 = v6;
              v50 = identifier;
              [(NSOperationQueue *)providedItemsOperationQueue addOperationWithBlock:v44];
            }

            else
            {
              [fileCoordinationProviderByURL removeObjectForKey:v15];
              v20 = self->_providedItemsOperationQueue;
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v39[0] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_194;
              v39[1] = &unk_1E83BF988;
              v40 = v16;
              v41 = v6;
              selfCopy = self;
              v43 = v15;
              [(NSOperationQueue *)v20 addOperationWithBlock:v38];
            }
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v12);
    }

    objc_sync_exit(obj);
    [(FPDDomain *)self _registerInSpaceForce];
    serialQueue = self->_serialQueue;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_195;
    v36[3] = &unk_1E83BF9B0;
    v37 = block;
    dispatch_group_notify(v6, serialQueue, v36);
  }

  __fp_pop_log();

  v22 = *MEMORY[0x1E69E9840];
}

void __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v3 = [WeakRetained descriptor];
  if (([v3 hasExplicitExtensionStorageURLs]& 1) != 0)
  {
    goto LABEL_2;
  }

  v4 = [*(a1 + 32) isUsingFPFS];

  if ((v4 & 1) == 0)
  {
    v26 = 0;
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) path];
    LODWORD(v11) = [v11 fileExistsAtPath:v12 isDirectory:&v26];
    v13 = v26;

    if (v11 && (v13 & 1) != 0)
    {
      WeakRetained = 0;
      goto LABEL_3;
    }

    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v25 = 0;
    v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v25];
    WeakRetained = v25;
    if (v16)
    {
      goto LABEL_3;
    }

    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 48) fp_shortDescription];
      v18 = [*(a1 + 32) fp_prettyDescription];
      v19 = [WeakRetained fp_prettyDescription];
      *buf = 138412802;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_error_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_ERROR, "[ERROR] ❌ Error preparing documentStorage directory %@ for provider %@: %@", buf, 0x20u);
    }

LABEL_2:

LABEL_3:
  }

  if ([*(a1 + 56) isRegistered])
  {
    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    [*(a1 + 56) setRegistered:1];
    v5 = MEMORY[0x1E696ABF8];
    v6 = *(a1 + 56);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_193;
    v20[3] = &unk_1E83BE5A8;
    v20[4] = *(a1 + 32);
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = *(a1 + 64);
    [v5 _addFileProvider:v6 completionHandler:v20];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_193(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  v9 = fpfs_adopt_log();

  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) fp_prettyDescription];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) fp_shortDescription];
    v7 = *(a1 + 56);
    *buf = 138413058;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] 🅿️ Registered file provider extension %@ (%@) for path %@: %@", buf, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 64));
  __fp_pop_log();

  v8 = *MEMORY[0x1E69E9840];
}

void __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_194(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isRegistered])
  {
    [*(a1 + 32) setRegistered:0];
    [MEMORY[0x1E696ABF8] _removeFileProvider:*(a1 + 32)];
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 48) fp_prettyDescription];
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 208));
      v5 = [WeakRetained identifier];
      v6 = [*(a1 + 56) fp_shortDescription];
      v7 = *(a1 + 32);
      v11 = 138413058;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] 🅾️ Deregistered file provider extension %@ (%@) for path %@: %@", &v11, 0x2Au);
    }

    dispatch_group_leave(*(a1 + 40));
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x1E69E9840];

    dispatch_group_leave(v9);
  }
}

- (void)_registerInSpaceForce
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(FPDDomain *)self isUsingFPFS]&& FPFeatureFlagSpaceAttributionIsEnabled())
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      checkableURLs = [(FPDDomain *)self checkableURLs];
      provider = [(FPDDomain *)self provider];
      identifier = [provider identifier];
      *buf = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = checkableURLs;
      v18 = 2112;
      v19 = identifier;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: Space Attribution registration for paths %@ and bundle %@", buf, 0x20u);
    }

    checkableURLs2 = [(FPDDomain *)self checkableURLs];
    v8 = [checkableURLs2 fp_map:&__block_literal_global_198];

    saPathManager = self->_saPathManager;
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__FPDDomain__registerInSpaceForce__block_invoke_2;
    v13[3] = &unk_1E83BDFC8;
    v13[4] = self;
    [(SAPathManager *)saPathManager registerPaths:v8 forBundleID:identifier2 completionHandler:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __34__FPDDomain__registerInSpaceForce__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __34__FPDDomain__registerInSpaceForce__block_invoke_2_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) checkableURLs];
    v7 = [*(a1 + 32) provider];
    v8 = [v7 identifier];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Paths %@ were registered in Space Attribution with bundle %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterFromFileCoordinatorAndSpaceForce
{
  v25 = *MEMORY[0x1E69E9840];
  log = self->_log;
  v23 = fpfs_adopt_log();
  obj = fileCoordinationProviderByURL;
  objc_sync_enter(obj);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  coordinationRootURLs = [(FPDDomain *)self coordinationRootURLs];
  v5 = [coordinationRootURLs countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(coordinationRootURLs);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [fileCoordinationProviderByURL objectForKeyedSubscript:{v8, obj}];
        delegate = [v9 delegate];
        v11 = delegate == self;

        if (v11)
        {
          [fileCoordinationProviderByURL removeObjectForKey:v8];
          providedItemsOperationQueue = self->_providedItemsOperationQueue;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __56__FPDDomain__unregisterFromFileCoordinatorAndSpaceForce__block_invoke;
          v15[3] = &unk_1E83BDE60;
          v16 = v9;
          selfCopy = self;
          v18 = v8;
          [(NSOperationQueue *)providedItemsOperationQueue addOperationWithBlock:v15];
        }
      }

      v5 = [coordinationRootURLs countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  [(NSOperationQueue *)self->_providedItemsOperationQueue waitUntilAllOperationsAreFinished];
  __fp_pop_log();

  v13 = *MEMORY[0x1E69E9840];
}

void __56__FPDDomain__unregisterFromFileCoordinatorAndSpaceForce__block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a1[4] isRegistered])
  {
    [a1[4] setRegistered:0];
    [MEMORY[0x1E696ABF8] _removeFileProvider:a1[4]];
    [a1[5] _unregisterURLFromSpaceForce:a1[6]];
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [a1[5] fp_prettyDescription];
      WeakRetained = objc_loadWeakRetained(a1[5] + 26);
      v5 = [WeakRetained identifier];
      v6 = [a1[6] fp_shortDescription];
      v7 = a1[4];
      v9 = 138413058;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] 🅾️ Deregistered file provider extension %@ (%@) for path %@: %@", &v9, 0x2Au);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterURLFromSpaceForce:(id)force
{
  v22 = *MEMORY[0x1E69E9840];
  forceCopy = force;
  if ([(FPDDomain *)self isUsingFPFS]&& FPFeatureFlagSpaceAttributionIsEnabled())
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      provider = [(FPDDomain *)self provider];
      identifier = [provider identifier];
      *buf = 138412802;
      selfCopy = self;
      v18 = 2112;
      v19 = forceCopy;
      v20 = 2112;
      v21 = identifier;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: Space Attribution unregistration for path %@ and bundle %@", buf, 0x20u);
    }

    saPathManager = self->_saPathManager;
    v15 = forceCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke;
    v13[3] = &unk_1E83BE760;
    v13[4] = self;
    v14 = forceCopy;
    [(SAPathManager *)saPathManager unregisterURLs:v9 forBundleID:identifier2 completionHandler:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) provider];
    v8 = [v7 identifier];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Path %@ was unregistered from Space Attribution with bundle %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isProviderForRealPathURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (([(FPDDomainBackend *)self->_defaultBackend isProviderForRealPathURL:lCopy]& 1) != 0)
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    extensionBackend = self->_extensionBackend;
    if (self->_defaultBackend == extensionBackend)
    {
      if (![(FPDDomain *)self isConnectedToAppExtension])
      {
        provider = [(FPDDomain *)self provider];
        extensionStorageURLs = [provider extensionStorageURLs];

        pathRelativeToDocumentStorage = [(NSFileProviderDomain *)self->_nsDomain pathRelativeToDocumentStorage];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = extensionStorageURLs;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * i);
              v16 = v15;
              v17 = v15;
              if (pathRelativeToDocumentStorage)
              {
                v17 = [v15 URLByAppendingPathComponent:{pathRelativeToDocumentStorage, v21}];
              }

              v18 = [v16 fp_realPathRelationshipToItemAtRealPathURL:{lCopy, v21}];

              if (v18 != 2)
              {

                goto LABEL_2;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = 0;
    }

    else
    {
      v5 = [(FPDDomainBackend *)extensionBackend isProviderForRealPathURL:lCopy];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)daemonSideItemChange:(id)change changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  handlerCopy = handler;
  requestCopy = request;
  defaultBackend = [(FPDDomain *)self defaultBackend];
  v23[0] = changeCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__FPDDomain_daemonSideItemChange_changedFields_request_completionHandler___block_invoke;
  v18[3] = &unk_1E83BF9F8;
  v19 = changeCopy;
  selfCopy = self;
  v21 = handlerCopy;
  fieldsCopy = fields;
  v15 = handlerCopy;
  v16 = changeCopy;
  [defaultBackend bulkItemChanges:v14 changedFields:fields request:requestCopy completionHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __74__FPDDomain_daemonSideItemChange_changedFields_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 itemIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [*(a1 + 32) itemIdentifier];
  v11 = [v6 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) identifier];
      v15 = *(a1 + 56);
      v16 = *(a1 + 32);
      v17 = 138413058;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_ERROR, "[ERROR] can't notify extension %@ of item change %lu for item %@; %@", &v17, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)didChangeItemID:(id)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v15 = requestCopy;
  v16 = handlerCopy;
  v12 = requestCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  fp_dispatch_async_with_logs();
}

void __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke(id *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = [a1[4] domainIdentifier];
  v4 = [v3 isEqualToString:*(a1[5] + 18)];

  if ((v4 & 1) == 0)
  {
    v13 = a1[7];
    v14 = [a1[4] domainIdentifier];
LABEL_9:
    v15 = FPInvalidParameterError();
    v13[2](v13, v15);

    return;
  }

  v5 = [a1[4] providerID];
  WeakRetained = objc_loadWeakRetained(a1[5] + 26);
  v7 = [WeakRetained identifier];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v13 = a1[7];
    v14 = [a1[4] providerID];
    goto LABEL_9;
  }

  v9 = [a1[4] identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x1E6967298]];

  v11 = a1[5];
  if (v10)
  {
    v12 = [v11 defaultBackend];
    [v12 workingSetDidChangeWithCompletionHandler:a1[7]];
  }

  else
  {
    v16 = [v11 provider];
    v17 = [v16 server];
    v18 = [v17 presenterManager];
    [v18 signalPresentersForItemID:a1[4]];

    v19 = [a1[5] defaultBackend];
    LOBYTE(v17) = objc_opt_respondsToSelector();

    v20 = a1[5];
    if (v17)
    {
      v21 = [v20 defaultBackend];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_209;
      v24[3] = &unk_1E83BE3B0;
      v23 = *(a1 + 2);
      v22 = v23.i64[0];
      v25 = vextq_s8(v23, v23, 8uLL);
      v26 = a1[6];
      v27 = a1[7];
      [v21 didChangeItemID:v22 completionHandler:v24];
    }

    else
    {
      [v20 callExtensionForItemDidChange:a1[4] request:a1[6] completionHandler:a1[7]];
    }
  }
}

void __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_209(uint64_t a1)
{
  v7 = *(a1 + 32);
  v2 = *(v7 + 168);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v8 = v6;
  fp_dispatch_async_with_logs();
}

- (void)callExtensionForItemDidChange:(id)change request:(id)request completionHandler:(id)handler
{
  changeCopy = change;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  requestCopy = request;
  dispatch_assert_queue_V2(serialQueue);
  session = [(FPDDomain *)self session];
  v13 = [requestCopy pid];

  v14 = [session existingFileProviderProxyWithTimeout:1 onlyAlreadyLifetimeExtended:v13 pid:180.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke;
  v17[3] = &unk_1E83BFA20;
  v17[4] = self;
  v18 = changeCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = changeCopy;
  [v14 didChangeItemID:v16 completionHandler:v17];
}

void __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fp_isCocoaErrorCode:3072];
    v6 = fp_current_or_default_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) identifier];
        v9 = *(a1 + 40);
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] Extension %@ signalled for item at %@ without active enumerators, not launching it", &v11, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(FPDDomain *)self isPendingInitialization])
  {
    v7 = FPDomainUnavailableError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }

  else
  {
    [(FPDDomainBackend *)self->_defaultBackend fetchOperationServiceOrEndpointWithRequest:requestCopy completionHandler:handlerCopy];
  }
}

- (id)materializedURLForItemID:(id)d
{
  dCopy = d;
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(FPDDomainBackend *)self->_defaultBackend materializedURLForItemID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)forceIngestionAtURL:(id)l
{
  lCopy = l;
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend forceIngestionAtURL:lCopy];
  }
}

- (void)forceFSIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  defaultBackend = self->_defaultBackend;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend forceFSIngestionForItemID:dCopy request:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)forceIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend forceIngestionForItemID:dCopy request:requestCopy openFD:1 completionHandler:handlerCopy];
  }

  else
  {
    v11 = FPNotSupportedError();
    handlerCopy[2](handlerCopy, 0, v11);
  }
}

- (void)downloadItemWithItemID:(id)d request:(id)request progress:(id)progress completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  progressCopy = progress;
  handlerCopy = handler;
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend downloadItemWithItemID:dCopy request:requestCopy progress:progressCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = FPNotSupportedError();
    handlerCopy[2](handlerCopy, 0, v14);
  }
}

- (void)downloadVersionThumbnail:(id)thumbnail version:(id)version completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  versionCopy = version;
  handlerCopy = handler;
  defaultBackend = self->_defaultBackend;
  fileURL = [thumbnailCopy fileURL];
  version = [versionCopy version];
  v23[0] = version;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke;
  v19[3] = &unk_1E83BFA48;
  v20 = thumbnailCopy;
  v21 = versionCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = versionCopy;
  v17 = thumbnailCopy;
  [(FPDDomainBackend *)defaultBackend fetchThumbnailsAtURL:fileURL versions:v14 size:v19 perThumbnailCompletionHandler:&__block_literal_global_223 completionHandler:1024.0, 1024.0];

  v18 = *MEMORY[0x1E69E9840];
}

void __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a4;
  v10 = a7;
  if (v10)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v9 url];
    [v12 removeItemAtURL:v13 error:0];
  }
}

- (void)downloadVersionWithItemID:(id)d etag:(id)etag request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  etagCopy = etag;
  requestCopy = request;
  handlerCopy = handler;
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    v15 = self->_defaultBackend;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke;
    v17[3] = &unk_1E83BFAC0;
    v21 = handlerCopy;
    v17[4] = self;
    v18 = etagCopy;
    v19 = dCopy;
    v20 = requestCopy;
    [(FPDDomainBackend *)v15 itemForItemID:v19 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 request:v20 completionHandler:v17];
  }

  else
  {
    v16 = FPNotSupportedError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v16);
  }
}

void __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E83BFA70;
    v29 = *(a1 + 64);
    v6 = v5;
    v28 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [*(a1 + 32) versionsCache];
    v9 = [v8 objectForKey:*(a1 + 40)];

    if (v9 && ([v9 fpItemIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToItemID:", *(a1 + 48)), v10, v11))
    {
      v12 = *(a1 + 32);
      v13 = [v6 providerItemID];
      v14 = [v9 version];
      v15 = [v6 fileURL];
      [v12 downloadVersionWithItemID:v13 version:v14 originalURL:v15 completionHandler:v7];
    }

    else
    {
      v16 = *(*(a1 + 32) + 128);
      v13 = [v6 fileURL];
      v17 = *(a1 + 56);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke_3;
      v20[3] = &unk_1E83BFA98;
      v18 = *(a1 + 40);
      v19 = *(a1 + 32);
      v21 = v18;
      v22 = v19;
      v23 = v6;
      v25 = v7;
      v26 = *(a1 + 64);
      v24 = *(a1 + 48);
      [v16 listRemoteVersionsOfItemAtURL:v13 includeCachedVersions:1 request:v17 completionHandler:v20];

      v14 = v21;
    }
  }
}

void __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 etag];
        v11 = [v10 isEqualToString:*(a1 + 32)];

        if (v11)
        {
          v15 = *(a1 + 40);
          v14 = [*(a1 + 48) providerItemID];
          v16 = [v9 version];
          v17 = [*(a1 + 48) fileURL];
          [v15 downloadVersionWithItemID:v14 version:v16 originalURL:v17 completionHandler:*(a1 + 64)];

          v13 = v4;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = *(a1 + 72);
  v13 = [*(a1 + 56) identifier];
  v14 = FPItemNotFoundError();
  (*(v12 + 16))(v12, 0, 0, 0, v14);
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)downloadVersionWithItemID:(id)d version:(id)version originalURL:(id)l completionHandler:(id)handler
{
  dCopy = d;
  versionCopy = version;
  lCopy = l;
  handlerCopy = handler;
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend downloadVersionWithItemID:dCopy version:versionCopy originalURL:lCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = FPNotSupportedError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);
  }
}

- (int64_t)nonEvictableSpace
{
  defaultBackend = self->_defaultBackend;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_defaultBackend;

  return [(FPDDomainBackend *)v4 nonEvictableSpace];
}

- (int64_t)accumulatedSizeOfPinnedItems
{
  defaultBackend = self->_defaultBackend;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_defaultBackend;

  return [(FPDDomainBackend *)v4 accumulatedSizeOfPinnedItems];
}

- (id)accumulatedSizeOfItems
{
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    accumulatedSizeOfItems = [(FPDDomainBackend *)self->_defaultBackend accumulatedSizeOfItems];
  }

  else
  {
    accumulatedSizeOfItems = 0;
  }

  return accumulatedSizeOfItems;
}

- (id)providerVersion
{
  defaultBackend = self->_defaultBackend;
  if (objc_opt_respondsToSelector())
  {
    providerVersion = [(FPDDomainBackend *)self->_defaultBackend providerVersion];
  }

  else
  {
    providerVersion = 0;
  }

  return providerVersion;
}

- (BOOL)supportsStringSearchRequest
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsStringSearchRequest = [nsDomain supportsStringSearchRequest];

  return supportsStringSearchRequest;
}

- (void)dumpStateTo:(id)to providerDomain:(id)domain options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v145 = *MEMORY[0x1E69E9840];
  toCopy = to;
  domainCopy = domain;
  requestCopy = request;
  handlerCopy = handler;
  identifier = [(FPDDomain *)self identifier];
  v14 = [identifier isEqualToString:*MEMORY[0x1E6967178]];

  [toCopy write:@"-----------------------------------------------------\n"];
  if (v14)
  {
    fp_obfuscatedFilename = @"(default)";
  }

  else
  {
    identifier = [(FPDDomain *)self identifier];
    fp_obfuscatedFilename = [identifier fp_obfuscatedFilename];
  }

  nsDomain = [(FPDDomain *)self nsDomain];
  isHidden = [nsDomain isHidden];
  v18 = &stru_1F4C2FFD0;
  v19 = @" (hidden)";
  if (!isHidden)
  {
    v19 = &stru_1F4C2FFD0;
  }

  [toCopy write:{@"domain: %@%@", fp_obfuscatedFilename, v19}];

  if ((v14 & 1) == 0)
  {
  }

  nsDomain2 = [(FPDDomain *)self nsDomain];
  displayName = [nsDomain2 displayName];
  v22 = [displayName length];

  if (v22)
  {
    nsDomain3 = [(FPDDomain *)self nsDomain];
    displayName2 = [nsDomain3 displayName];
    fp_obfuscatedFilename2 = [displayName2 fp_obfuscatedFilename];
    [toCopy write:{@" (%@)", fp_obfuscatedFilename2}];
  }

  nsDomain4 = [(FPDDomain *)self nsDomain];
  containsPhotos = [nsDomain4 containsPhotos];

  if (containsPhotos)
  {
    [toCopy write:@" (photos)"];
  }

  nsDomain5 = [(FPDDomain *)self nsDomain];
  readOnly = [nsDomain5 readOnly];

  if (readOnly)
  {
    [toCopy write:@" (readOnly)"];
  }

  nsDomain6 = [(FPDDomain *)self nsDomain];
  isErasable = [nsDomain6 isErasable];

  if (isErasable)
  {
    [toCopy write:@" (erasable)"];
  }

  nsDomain7 = [(FPDDomain *)self nsDomain];
  isContentManaged = [nsDomain7 isContentManaged];

  if (isContentManaged)
  {
    [toCopy startFgColor:1];
    [toCopy startAttributes:2];
    [toCopy write:@" (managed)"];
    [toCopy reset];
  }

  [toCopy write:@"\n"];
  [toCopy write:@"-----------------------------------------------------\n"];
  session = [(FPDDomain *)self session];
  [session dumpStateTo:toCopy];

  if (![(FPDDomain *)self userEnabled])
  {
    [toCopy startFgColor:3];
    [toCopy write:@"  + (⏹  user-disabled)\n"];
    [toCopy reset];
  }

  if (self->_unableToStartup)
  {
    [toCopy startFgColor:1];
    startupError = [(FPDDomain *)self startupError];
    v36 = [startupError fp_isFileProviderInternalError:22];

    if (v36)
    {
      [toCopy write:@"  + (⏹  unable to startup - needs reimport)\n"];
    }

    else
    {
      fp_prettyDescription = [(NSError *)self->_startupError fp_prettyDescription];
      [toCopy write:{@"  + (⏹  unable to startup)\n    %@\n", fp_prettyDescription}];
    }

    [toCopy reset];
  }

  if ([(FPDDomain *)self disconnectionState]!= 1)
  {
    [toCopy startFgColor:3];
    [(FPDDomain *)self disconnectionState];
    disconnectionReason = [domainCopy disconnectionReason];
    v39 = FPConnectionStateToPrettyString();

    [toCopy write:{@"  + %@\n", v39}];
    [toCopy reset];
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  isAppExtensionReachable = [WeakRetained isAppExtensionReachable];

  if ((isAppExtensionReachable & 1) == 0)
  {
    [toCopy startFgColor:3];
    [toCopy write:@"  + (❔ app-ext not reachable)\n"];
    [toCopy reset];
  }

  if ([(FPDDomain *)self ejectable])
  {
    [toCopy startFgColor:9];
    [toCopy write:@"  + (ejectable)\n"];
    [toCopy reset];
  }

  nsDomain8 = [(FPDDomain *)self nsDomain];
  isReplicated = [nsDomain8 isReplicated];

  v44 = @"repl,";
  if (!isReplicated)
  {
    v44 = &stru_1F4C2FFD0;
  }

  v45 = v44;
  v46 = &stru_1F4C2FFD0;
  v47 = &stru_1F4C2FFD0;
  v48 = &stru_1F4C2FFD0;
  if (isReplicated)
  {
    nsDomain9 = [(FPDDomain *)self nsDomain];
    supportsSyncingTrash = [nsDomain9 supportsSyncingTrash];
    v51 = @"syncTrash,";
    if (!supportsSyncingTrash)
    {
      v51 = &stru_1F4C2FFD0;
    }

    v52 = v51;

    nsDomain10 = [(FPDDomain *)self nsDomain];
    supportsSearch = [nsDomain10 supportsSearch];
    v55 = @"searchLegacy,";
    if (!supportsSearch)
    {
      v55 = &stru_1F4C2FFD0;
    }

    v46 = v55;

    nsDomain11 = [(FPDDomain *)self nsDomain];
    supportsStringSearchRequest = [nsDomain11 supportsStringSearchRequest];
    v58 = @"search,";
    if (!supportsStringSearchRequest)
    {
      v58 = &stru_1F4C2FFD0;
    }

    v47 = v58;

    nsDomain12 = [(FPDDomain *)self nsDomain];
    supportsRemoteVersions = [nsDomain12 supportsRemoteVersions];
    v61 = @"remoteVersions,";
    if (!supportsRemoteVersions)
    {
      v61 = &stru_1F4C2FFD0;
    }

    v62 = v61;

    v48 = v62;
    v18 = v52;
  }

  v122 = v48;
  v123 = v47;
  [toCopy write:{@"  + features: %@%@%@%@%@\n", v45, v18, v47, v46, v48}];
  rootURLs = [(FPDDomain *)self rootURLs];
  v64 = [rootURLs count];

  selfCopy = self;
  v125 = v45;
  v126 = v18;
  v124 = v46;
  if (v64)
  {
    rootURLs2 = [(FPDDomain *)self rootURLs];
    v66 = [rootURLs2 count];

    if (v66 == 1)
    {
      rootURLs3 = [(FPDDomain *)self rootURLs];
      firstObject = [rootURLs3 firstObject];
      fp_shortDescription = [firstObject fp_shortDescription];
      [toCopy write:{@"  + root: %@\n", fp_shortDescription}];
    }

    else
    {
      v70 = domainCopy;
      [toCopy write:@"  + roots:\n"];
      v141 = 0u;
      v142 = 0u;
      v140 = 0u;
      v139 = 0u;
      rootURLs4 = [(FPDDomain *)self rootURLs];
      v72 = [rootURLs4 countByEnumeratingWithState:&v139 objects:v144 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v140;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v140 != v74)
            {
              objc_enumerationMutation(rootURLs4);
            }

            fp_shortDescription2 = [*(*(&v139 + 1) + 8 * i) fp_shortDescription];
            [toCopy write:{@"    + %@\n", fp_shortDescription2}];
          }

          v73 = [rootURLs4 countByEnumeratingWithState:&v139 objects:v144 count:16];
        }

        while (v73);
      }

      domainCopy = v70;
      self = selfCopy;
    }
  }

  else
  {
    [toCopy startFgColor:1];
    [toCopy write:@"  + no root\n"];
    [toCopy reset];
  }

  [toCopy write:{@"  + FPDDomain instance: <%@:%p>\n", objc_opt_class(), self}];
  defaultBackend = self->_defaultBackend;
  [toCopy write:{@"      - default backend: <%@:%p>\n", objc_opt_class(), defaultBackend}];
  extensionBackend = self->_extensionBackend;
  [toCopy write:{@"      - extension backend: <%@:%p>\n", objc_opt_class(), extensionBackend}];
  deactivatedBackend = self->_deactivatedBackend;
  [toCopy write:{@"      - deactivated backend: <%@:%p>\n", objc_opt_class(), deactivatedBackend}];
  [toCopy write:{@"      - volume: %@\n", self->_volume}];
  nsDomain13 = [(FPDDomain *)self nsDomain];
  personaIdentifier = [nsDomain13 personaIdentifier];
  v82 = objc_loadWeakRetained(&self->_provider);
  descriptor = [v82 descriptor];
  personaIdentifier2 = [descriptor personaIdentifier];
  v85 = personaIdentifier2;
  v86 = toCopy;
  v129 = domainCopy;
  if (personaIdentifier == personaIdentifier2)
  {
  }

  else
  {
    [(FPDDomain *)self nsDomain];
    v87 = v121 = personaIdentifier;
    personaIdentifier3 = [v87 personaIdentifier];
    v89 = objc_loadWeakRetained(&self->_provider);
    [v89 descriptor];
    v91 = v90 = nsDomain13;
    personaIdentifier4 = [v91 personaIdentifier];
    v120 = [personaIdentifier3 isEqual:personaIdentifier4];

    toCopy = v86;
    domainCopy = v129;
    if ((v120 & 1) == 0)
    {
      [v86 startFgColor:1];
    }
  }

  v93 = selfCopy;
  nsDomain14 = [(FPDDomain *)selfCopy nsDomain];
  personaIdentifier5 = [nsDomain14 personaIdentifier];
  v96 = personaIdentifier5;
  v97 = @"none";
  if (personaIdentifier5)
  {
    v97 = personaIdentifier5;
  }

  [toCopy write:{@"  + persona: %@\n", v97}];

  [toCopy reset];
  nsDomain15 = [(FPDDomain *)selfCopy nsDomain];
  userInfo = [nsDomain15 userInfo];

  if (userInfo)
  {
    nsDomain16 = [(FPDDomain *)selfCopy nsDomain];
    userInfo2 = [nsDomain16 userInfo];

    [toCopy write:{@"  + userInfo: %d keys\n", objc_msgSend(userInfo2, "count")}];
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v102 = userInfo2;
    v103 = [v102 countByEnumeratingWithState:&v135 objects:v143 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v136;
      do
      {
        for (j = 0; j != v104; ++j)
        {
          if (*v136 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = *(*(&v135 + 1) + 8 * j);
          if ((options & 2) != 0)
          {
            fp_obfuscatedFilename3 = [v102 objectForKeyedSubscript:*(*(&v135 + 1) + 8 * j)];
            v112 = objc_opt_class();
            v109 = NSStringFromClass(v112);
            v111 = [v102 objectForKeyedSubscript:v107];
            v118 = v107;
            toCopy = v86;
            [v86 write:{@"      %@: %@ - %@\n", v118, v109, v111}];
          }

          else
          {
            fp_obfuscatedFilename3 = [*(*(&v135 + 1) + 8 * j) fp_obfuscatedFilename];
            v109 = [v102 objectForKeyedSubscript:v107];
            v110 = objc_opt_class();
            v111 = NSStringFromClass(v110);
            toCopy = v86;
            [v86 write:{@"      %@: %@\n", fp_obfuscatedFilename3, v111, v119}];
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v135 objects:v143 count:16];
      }

      while (v104);
    }

    domainCopy = v129;
    v93 = selfCopy;
  }

  [toCopy write:@"  + indexer:\n"];
  indexer = [(FPDDomain *)v93 indexer];
  [indexer dumpStateTo:toCopy];

  defaultBackend = [(FPDDomain *)v93 defaultBackend];
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke;
  v132[3] = &unk_1E83BFA20;
  v132[4] = v93;
  v133 = toCopy;
  v134 = handlerCopy;
  v115 = handlerCopy;
  v116 = toCopy;
  [defaultBackend dumpStateTo:v116 options:options request:requestCopy completionHandler:v132];

  v117 = *MEMORY[0x1E69E9840];
}

void __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke_2;
  v8[3] = &unk_1E83BF228;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v3 = [WeakRetained server];
  v4 = [v3 presenterManager];
  v5 = [v4 presentersForDomain:*(a1 + 32)];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10++) dumpStateTo:{*(a1 + 40), v13}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) write:@"\n"];
  v11 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (id)providerSupportURL
{
  provider = [(FPDDomain *)self provider];
  identifier = [provider identifier];
  v18 = 0;
  v5 = [identifier fp_isValidProviderIdentifierWithError:&v18];
  v6 = v18;

  if ((v5 & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v16 = objc_claimAutoreleasedReturnValue();

    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain providerSupportURL]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 2334, [v16 UTF8String]);
  }

  volume = [(FPDDomain *)self volume];
  systemDirectory = [volume systemDirectory];
  provider3 = [(FPDDomain *)self provider];
  identifier3 = [provider3 identifier];
  v11 = [systemDirectory URLByAppendingPathComponent:identifier3 isDirectory:1];

  return v11;
}

- (NSURL)supportURL
{
  identifier = [(FPDDomain *)self identifier];
  v15 = 0;
  v4 = [identifier fp_isValidDomainIdentifierWithError:&v15];
  v5 = v15;

  if ((v4 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    provider = [(FPDDomain *)self provider];
    identifier2 = [provider identifier];
    v13 = objc_claimAutoreleasedReturnValue();

    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain supportURL]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 2342, [v13 UTF8String]);
  }

  providerSupportURL = [(FPDDomain *)self providerSupportURL];
  identifier3 = [(FPDDomain *)self identifier];
  v8 = [providerSupportURL URLByAppendingPathComponent:identifier3 isDirectory:1];

  return v8;
}

- (id)cleanupDomainWithMode:(unint64_t)mode error:(id *)error
{
  selfCopy = self;
  v6 = FPDDomain.cleanupDomain(with:)(mode);

  return v6;
}

- (BOOL)forceRecursiveRemoveAt:(id)at error:(id *)error
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  selfCopy = self;
  sub_1CF1B5EF0(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)moveAwaySyncRootAndReturnError:(id *)error
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  selfCopy = self;
  volume = [(FPDDomain *)selfCopy volume];
  removedURL = [(FPDVolume *)volume removedURL];

  sub_1CF9E59D8();
  v14[2].isa = v8;
  sub_1CF1AF818(1702260589, 0xE400000000000000, sub_1CF1B7E48, v14);

  v12 = sub_1CF9E5928();
  (*(v5 + 8))(v8, v4);

  return v12;
}

- (void)removeEbihilSymlink
{
  selfCopy = self;
  sub_1CF1B394C();
}

- (BOOL)removeEbihilSymlinkFromDefaultLocation
{
  selfCopy = self;
  v3 = sub_1CF1B3A1C();

  return v3 & 1;
}

- (id)getDefaultRootExposureSymlinkURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1CF1B3FCC(v6);

  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1CF9E5928();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)unregisterFromSpaceForceWithUrl:(id)url
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (url)
  {
    sub_1CF9E59D8();
    v9 = sub_1CF9E5A58();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1CF9E5A58();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_1CF1B4D9C();

  sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
}

- (BOOL)mergeSyncRootsWithPathsManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  selfCopy = self;
  sub_1CF1B68F0();

  return 1;
}

- (void)_shouldDisconnectDueToLowDiskSpace
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_1CEFC7000, v0, v1, "[CRIT] domain %@ doesn't have a volume, cannot determine disk space state", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __35__FPDDomain_refreshConnectionState__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, v0, v1, "[ERROR] error in updateShouldRetryThrottledOperations: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)shouldDisconnectWithStartupError
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_6(&dword_1CEFC7000, v0, v1, "[CRIT] [diskspace] domain %@ is in low disk space, but does not have a volume assigned; will not monitor for recovery", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createRootURLWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, v0, v1, "[ERROR] won't restore persona: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createRootURLWithCompletion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@: is not the default domain, creating a root right away", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createRootURLWithCompletion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@: is the default domain, fetching the root first", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createRootURLWithCompletion:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@: is a hidden default domain, ignoring", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v9 = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] %@: creating default root", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)createRootAndObserveIfNeededWithReason:userAllowedDBDrop:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@: root already created", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)createRootAndObserveIfNeededWithReason:userAllowedDBDrop:completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] %@: need root creation", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, v6, v4, "[ERROR] %@: error while creating root for domain: %@", v5);
}

- (void)_startWithReason:userAllowedDBDrop:completion:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, v6, v4, "[ERROR] cannot create indexer for domain %@: %@", v5);
}

- (void)cleanupDomainWithMode:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)cleanupDomainWithMode:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)cleanupDomainWithMode:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v0, v1, "[DEBUG] removed support directory at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cleanupDomainWithMode:(uint64_t)a3 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138412546;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = a1;
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, a4, a3, "[ERROR] failed removing domainSupportFolder at %@: %s", a2);
}

void __35__FPDDomain_cleanupDomainWithMode___block_invoke_158_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(a1) indexer];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 progress];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, a2, a3, "[ERROR] got cancellation request for unknown reader ID %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_writerWithID:didFinishWritingForURL:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0(v1, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] The item at %@ is provided by the domain %@", v5, 0x16u);
}

void __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_providedItemAtURL:didGainPresenterWithInfo:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(v2) fp_shortDescription];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v11 = *MEMORY[0x1E69E9840];
  [v1 requiresProviding];
  v3 = [*(v0 + 32) fp_shortDescription];
  v4 = [v2 syncRootID];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __34__FPDDomain__registerInSpaceForce__block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [v6 checkableURLs];
  v8 = [*(a1 + 32) provider];
  v9 = [v8 identifier];
  v10 = [a2 fp_prettyDescription];
  v14 = 138413058;
  v15 = v6;
  OUTLINED_FUNCTION_3_1();
  v16 = v7;
  v17 = v11;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  _os_log_fault_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_FAULT, "[CRIT] %@: paths %@ for bundle %@ Space Attribution registration error: %@", &v14, 0x2Au);

  v13 = *MEMORY[0x1E69E9840];
}

void __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 40);
  v4 = [*(v2 + 32) provider];
  v5 = [v4 identifier];
  v6 = [v1 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  v11 = v3;
  v12 = v7;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  _os_log_fault_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_FAULT, "[CRIT] %@: path %@ for bundle %@ Space Attribution unregistration error: %@", v10, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

void __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v12 = *MEMORY[0x1E69E9840];
  v3 = [*(v1 + 32) identifier];
  v4 = *(v2 + 40);
  v5 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_8(a1) providerItemID];
  v4 = [*(a1 + 40) etag];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

@end