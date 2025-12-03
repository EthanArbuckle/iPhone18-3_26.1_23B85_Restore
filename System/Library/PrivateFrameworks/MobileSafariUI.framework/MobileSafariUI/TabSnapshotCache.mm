@interface TabSnapshotCache
+ (id)defaultSnapshotCache;
+ (void)removeSavedSnapshotsKeepingSnapshotsWithIdentifiers:(id)identifiers;
- (BOOL)hasValidSnapshotWithIdentifier:(id)identifier;
- (BOOL)isIdentifier:(id)identifier memberOfSameGroupAsIdentifier:(id)asIdentifier;
- (NSString)debugDescription;
- (TabSnapshotCache)init;
- (TabSnapshotCache)initWithThumbnailCacheDirectoryURL:(id)l;
- (TabSnapshotCacheProviding)fallbackProvider;
- (id)_allIdentifiersToCache;
- (id)_contextForDelegate:(id)delegate;
- (id)_entryForIdentifier:(id)identifier createIfNeeded:(BOOL)needed;
- (id)_preferredURLForSnapshotWithIdentifier:(id)identifier;
- (id)_readSnapshotImageFromURL:(id)l forIdentifier:(id)identifier;
- (id)_writeSnapshotImage:(CGImage *)image toURL:(id)l forIdentifier:(id)identifier;
- (id)identifiersToCacheForDelegate:(id)delegate;
- (id)metadataWithIdentifier:(id)identifier;
- (id)snapshotWithIdentifier:(id)identifier;
- (void)_beginUpdatingStateForIdentifier:(id)identifier;
- (void)_calculateFitsInCache;
- (void)_enumerateIdentifiersForEntry:(id)entry respondingToSelector:(SEL)selector withBlock:(id)block;
- (void)_finishUpdatingToState:(int64_t)state cachedSnapshot:(id)snapshot metadata:(id)metadata forEntry:(id)entry;
- (void)_requestNextSnapshotIfNecessaryForDelegate:(id)delegate;
- (void)_requestSavedSnapshotForIdentifier:(id)identifier;
- (void)_saveSnapshotForIdentifier:(id)identifier;
- (void)_sendDidFinishUpdatingToDelegateIfNeeded;
- (void)addIdentifier:(id)identifier toGroupWithIdentifier:(id)withIdentifier;
- (void)adjustRequestedSnapshotCountBy:(int64_t)by forProvider:(id)provider;
- (void)cleanUpSavedSnapshots;
- (void)invalidateRecoverableEntries;
- (void)invalidateSnapshotWithIdentifier:(id)identifier;
- (void)performBatchUpdatesWithBlock:(id)block;
- (void)removeIdentifier:(id)identifier fromGroupWithIdentifier:(id)withIdentifier;
- (void)removeSnapshotWithIdentifier:(id)identifier;
- (void)requestNextSnapshotIfNecessaryWithOptions:(unint64_t)options;
- (void)requestSnapshotWithIdentifier:(id)identifier fromProvider:(id)provider;
- (void)requestSnapshotsFromFallbackProvider;
- (void)setCapacity:(unint64_t)capacity forDelegate:(id)delegate;
- (void)setIdentifiersToCache:(id)cache forDelegate:(id)delegate;
- (void)setPersistentIdentifiersProvider:(id)provider;
- (void)setUpdating:(BOOL)updating forDelegate:(id)delegate;
- (void)tabSnapshotCacheEntryDidUpdateState:(id)state;
@end

@implementation TabSnapshotCache

+ (id)defaultSnapshotCache
{
  v2 = defaultSnapshotCache_defaultTabSnapshotCacheInstance;
  if (!defaultSnapshotCache_defaultTabSnapshotCacheInstance)
  {
    v3 = objc_alloc_init(self);
    v4 = defaultSnapshotCache_defaultTabSnapshotCacheInstance;
    defaultSnapshotCache_defaultTabSnapshotCacheInstance = v3;

    v2 = defaultSnapshotCache_defaultTabSnapshotCacheInstance;
  }

  v5 = v2;

  return v5;
}

- (TabSnapshotCache)init
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = SafariThumbnailCacheDirectoryPath();
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];
  v6 = [(TabSnapshotCache *)self initWithThumbnailCacheDirectoryURL:v5];

  return v6;
}

- (void)cleanUpSavedSnapshots
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = (*(self->_persistentIdentifiersProvider + 2))();
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] set];
  }

  v33 = v6;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = self->_delegateToContextMap;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(TabSnapshotCache *)self _contextForDelegate:*(*(&v40 + 1) + 8 * i)];
        identifiersToCache = [v12 identifiersToCache];
        v14 = [identifiersToCache set];
        [v33 unionSet:v14];
      }

      v9 = [(NSMapTable *)v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v15 = [(NSSet *)self->_lastPersistentIdentifiers mutableCopy];
  [v15 minusSet:v33];
  v16 = [v33 copy];
  lastPersistentIdentifiers = self->_lastPersistentIdentifiers;
  self->_lastPersistentIdentifiers = v16;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v15;
  v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        v23 = [(NSMutableDictionary *)self->_snapshots objectForKeyedSubscript:v22];
        [v23 setUpdatingState:0];
        [(NSMutableDictionary *)self->_snapshots setObject:0 forKeyedSubscript:v22];
        [(NSMutableSet *)self->_identifiersPendingUpdate removeObject:v22];
        v24 = [(NSMutableDictionary *)self->_groupIdentifiers objectForKeyedSubscript:v22];
        if (v24)
        {
          v25 = [(TabSnapshotCache *)self _entryForIdentifier:v22];
          groupMembers = [v25 groupMembers];
          [groupMembers removeObject:v22];

          v27 = [(TabSnapshotCache *)self _entryForIdentifier:v24];
          groupMembers2 = [v27 groupMembers];
          v29 = [groupMembers2 count];

          if (!v29)
          {
            [(NSMutableSet *)self->_identifiersPendingUpdate removeObject:v24];
          }

          [(NSMutableDictionary *)self->_groupIdentifiers setObject:0 forKeyedSubscript:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v19);
  }

  [(SFTabSnapshotMetadataStore *)self->_metadataStore deleteMetadataExceptIdentifiers:v33 completion:&__block_literal_global_189_2];
  fileSystemAccessQueue = self->_fileSystemAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TabSnapshotCache_cleanUpSavedSnapshots__block_invoke_2;
  block[3] = &unk_2781D4D40;
  v35 = v33;
  v31 = v33;
  dispatch_async(fileSystemAccessQueue, block);
}

- (TabSnapshotCache)initWithThumbnailCacheDirectoryURL:(id)l
{
  lCopy = l;
  v36.receiver = self;
  v36.super_class = TabSnapshotCache;
  v6 = [(TabSnapshotCache *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thumbnailCacheDirectoryURL, l);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_create("com.apple.mobilesafari.TabSnapshotCache.FileSystem", v8);
    fileSystemAccessQueue = v7->_fileSystemAccessQueue;
    v7->_fileSystemAccessQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    snapshots = v7->_snapshots;
    v7->_snapshots = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groupIdentifiers = v7->_groupIdentifiers;
    v7->_groupIdentifiers = v13;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToContextMap = v7->_delegateToContextMap;
    v7->_delegateToContextMap = weakToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    snapshotCacheObservers = v7->_snapshotCacheObservers;
    v7->_snapshotCacheObservers = weakObjectsHashTable;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    identifiersPendingUpdate = v7->_identifiersPendingUpdate;
    v7->_identifiersPendingUpdate = v19;

    v21 = [objc_alloc(MEMORY[0x277D28DB0]) initWithDirectoryURL:lCopy];
    metadataStore = v7->_metadataStore;
    v7->_metadataStore = v21;

    v23 = dispatch_group_create();
    loadMetadataGroup = v7->_loadMetadataGroup;
    v7->_loadMetadataGroup = v23;

    dispatch_group_enter(v7->_loadMetadataGroup);
    v25 = v7->_metadataStore;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke;
    v33[3] = &unk_2781DC7B8;
    v26 = v7;
    v34 = v26;
    v35 = lCopy;
    [(SFTabSnapshotMetadataStore *)v25 loadMetadataWithCompletion:v33];
    v27 = v7->_fileSystemAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_5;
    block[3] = &unk_2781D4D40;
    v28 = v26;
    v32 = v28;
    dispatch_async(v27, block);
    v29 = v28;
  }

  return v7;
}

void __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = *(*(a1 + 32) + 104);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_117;
    block[3] = &unk_2781D58E8;
    v10 = v5;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    dispatch_async(v8, block);
  }
}

void __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_117(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_2;
  v8[3] = &unk_2781DC790;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v3 = [v2 safari_filterObjectsUsingBlock:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_4;
  v5[3] = &unk_2781D4C88;
  v6 = v3;
  v7 = *(a1 + 48);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 fileName];
  v6 = [v4 URLByAppendingPathComponent:v5];
  v7 = [v6 checkResourceIsReachableAndReturnError:0];

  if ((v7 & 1) == 0)
  {
    v8 = *(*(a1 + 40) + 88);
    v9 = [v3 identifier];
    [v8 deleteMetadataForIdentifier:v9 completion:&__block_literal_global_77];
  }

  return v7;
}

void __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 identifier];
        v10 = [v8 _entryForIdentifier:v9 createIfNeeded:1];

        [v10 setMetadata:v7];
        [v10 setState:3];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(*(a1 + 40) + 96));
}

void __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_5(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(*(a1 + 32) + 48);
  v3 = *MEMORY[0x277CBE878];
  v7 = 0;
  v4 = [v2 setResourceValue:MEMORY[0x277CBEC38] forKey:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_5_cold_1(v1, v6, v5);
    }
  }
}

- (id)_entryForIdentifier:(id)identifier createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  groupIdentifiers = self->_groupIdentifiers;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)groupIdentifiers objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = identifierCopy;
  }

  v11 = v10;

  v12 = [(NSMutableDictionary *)self->_snapshots objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = !neededCopy;
  }

  if (!v13)
  {
    v12 = [[TabSnapshotCacheEntry alloc] initWithIdentifier:v11 isGroup:v9 != 0];
    [(TabSnapshotCacheEntry *)v12 setStateObserver:self];
    [(TabSnapshotCache *)self tabSnapshotCacheEntryDidUpdateState:v12];
    [(NSMutableDictionary *)self->_snapshots setObject:v12 forKeyedSubscript:v11];
  }

  return v12;
}

- (id)_preferredURLForSnapshotWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCACA8];
  uUIDString = [identifier UUIDString];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceReferenceDate];
  v8 = [v4 stringWithFormat:@"%@_%f", uUIDString, v7];

  if (deviceSupportsASTC)
  {
    v9 = @"ktx";
  }

  else
  {
    v9 = @"png";
  }

  thumbnailCacheDirectoryURL = self->_thumbnailCacheDirectoryURL;
  v11 = v9;
  v12 = [(NSURL *)thumbnailCacheDirectoryURL URLByAppendingPathComponent:v8 isDirectory:0];
  v13 = [v12 URLByAppendingPathExtension:v11];

  return v13;
}

- (id)_allIdentifiersToCache
{
  v16 = *MEMORY[0x277D85DE8];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_delegateToContextMap;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(TabSnapshotCache *)self identifiersToCacheForDelegate:*(*(&v11 + 1) + 8 * i), v11];
        [orderedSet unionOrderedSet:v9];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return orderedSet;
}

- (id)identifiersToCacheForDelegate:(id)delegate
{
  v3 = [(TabSnapshotCache *)self _contextForDelegate:delegate];
  identifiersToCache = [v3 identifiersToCache];

  return identifiersToCache;
}

- (void)setIdentifiersToCache:(id)cache forDelegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  delegateCopy = delegate;
  v8 = [(TabSnapshotCache *)self identifiersToCacheForDelegate:delegateCopy];
  if (([v8 isEqualToOrderedSet:cacheCopy] & 1) == 0)
  {
    v9 = [cacheCopy mutableCopy];
    [v9 minusOrderedSet:v8];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [(TabSnapshotCache *)self _entryForIdentifier:v15 createIfNeeded:0, v19];

          if (!v16)
          {
            [(NSMutableSet *)self->_identifiersPendingUpdate addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v17 = [cacheCopy copy];
    v18 = [(TabSnapshotCache *)self _contextForDelegate:delegateCopy];
    [v18 setIdentifiersToCache:v17];

    if (([delegateCopy tabSnapshotCacheShouldDeferNextSnapshotRequest:self] & 1) == 0)
    {
      [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
    }
  }
}

- (id)snapshotWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(TabSnapshotCache *)self _entryForIdentifier:?];
    snapshot = [v3 snapshot];
  }

  else
  {
    snapshot = 0;
  }

  return snapshot;
}

- (id)metadataWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(TabSnapshotCache *)self _entryForIdentifier:?];
    metadata = [v3 metadata];
  }

  else
  {
    metadata = 0;
  }

  return metadata;
}

- (BOOL)hasValidSnapshotWithIdentifier:(id)identifier
{
  v3 = [(TabSnapshotCache *)self _entryForIdentifier:identifier];
  snapshot = [v3 snapshot];

  if (snapshot)
  {
    LOBYTE(snapshot) = ([v3 state] - 1) < 2;
  }

  return snapshot;
}

- (void)setPersistentIdentifiersProvider:(id)provider
{
  v4 = _Block_copy(provider);
  persistentIdentifiersProvider = self->_persistentIdentifiersProvider;
  self->_persistentIdentifiersProvider = v4;

  [(TabSnapshotCache *)self cleanUpSavedSnapshots];
}

- (void)removeSnapshotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_snapshots objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    metadata = [v5 metadata];
    fileName = [metadata fileName];

    [(NSMutableDictionary *)self->_snapshots setObject:0 forKeyedSubscript:identifierCopy];
    [(NSMutableDictionary *)self->_groupIdentifiers setObject:0 forKeyedSubscript:identifierCopy];
    if (fileName)
    {
      v9 = [(NSURL *)self->_thumbnailCacheDirectoryURL URLByAppendingPathComponent:fileName];
      fileSystemAccessQueue = self->_fileSystemAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__TabSnapshotCache_removeSnapshotWithIdentifier___block_invoke;
      block[3] = &unk_2781D4D40;
      v14 = v9;
      v11 = v9;
      dispatch_async(fileSystemAccessQueue, block);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49__TabSnapshotCache_removeSnapshotWithIdentifier___block_invoke_137;
      v12[3] = &unk_2781DC7E0;
      v12[4] = self;
      [(TabSnapshotCache *)self _enumerateIdentifiersForEntry:v6 respondingToSelector:sel_tabSnapshotCache_didEvictSnapshotWithIdentifier_ withBlock:v12];
      [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
    }
  }
}

void __49__TabSnapshotCache_removeSnapshotWithIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) path];
  v4 = [v2 _web_removeFileOnlyAtPath:v3];

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Removed snapshot at path %{public}@", &v7, 0xCu);
    }
  }
}

- (void)invalidateSnapshotWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(TabSnapshotCache *)self _entryForIdentifier:identifier];
  v5 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 debugDescription];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Invalidate entry: %{public}@", &v8, 0xCu);
  }

  [v4 setState:0];
  [v4 setStateUpdateCancelled:1];
  [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
}

- (void)_requestSavedSnapshotForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(TabSnapshotCache *)self _entryForIdentifier:identifierCopy];
  v6 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(TabSnapshotCache *)v6 _requestSavedSnapshotForIdentifier:v5];
  }

  metadata = [v5 metadata];
  [(TabSnapshotCache *)self _beginUpdatingStateForIdentifier:identifierCopy];
  fileName = [metadata fileName];
  if (fileName)
  {
    thumbnailCacheDirectoryURL = self->_thumbnailCacheDirectoryURL;
    fileName2 = [metadata fileName];
    v11 = [(NSURL *)thumbnailCacheDirectoryURL URLByAppendingPathComponent:fileName2 isDirectory:0];
  }

  else
  {
    v11 = 0;
  }

  fileSystemAccessQueue = self->_fileSystemAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TabSnapshotCache__requestSavedSnapshotForIdentifier___block_invoke;
  block[3] = &unk_2781D7D88;
  block[4] = self;
  v18 = v11;
  v19 = identifierCopy;
  v20 = v5;
  v21 = metadata;
  v13 = metadata;
  v14 = v5;
  v15 = identifierCopy;
  v16 = v11;
  dispatch_async(fileSystemAccessQueue, block);
}

void __55__TabSnapshotCache__requestSavedSnapshotForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _readSnapshotImageFromURL:*(a1 + 40) forIdentifier:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TabSnapshotCache__requestSavedSnapshotForIdentifier___block_invoke_2;
  v6[3] = &unk_2781D5A50;
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  v10 = *(a1 + 64);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __55__TabSnapshotCache__requestSavedSnapshotForIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(a1 + 40);
  if (v2 == 3)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);

    return [v3 _finishUpdatingToState:2 cachedSnapshot:v4 metadata:v5 forEntry:v6];
  }

  else
  {
    v8 = *(a1 + 32);

    return [v3 _finishUpdatingToState:3 forEntry:v8];
  }
}

- (id)_readSnapshotImageFromURL:(id)l forIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  if (lCopy)
  {
    v7 = CGImageSourceCreateWithURL(lCopy, 0);
    if (v7)
    {
      v8 = v7;
      v17 = *MEMORY[0x277CD3620];
      v18[0] = MEMORY[0x277CBEC38];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, v9);
      CFRelease(v8);
      v11 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:ImageAtIndex];
      CGImageRelease(ImageAtIndex);
      if (deviceSupportsASTC == 1)
      {
        safari_decodedImageIfPossible = v11;
      }

      else
      {
        safari_decodedImageIfPossible = [(UIImage *)v11 safari_decodedImageIfPossible];
      }

      v13 = safari_decodedImageIfPossible;

      goto LABEL_11;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TabSnapshotCache _readSnapshotImageFromURL:forIdentifier:];
    }
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [TabSnapshotCache _readSnapshotImageFromURL:forIdentifier:];
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_saveSnapshotForIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(TabSnapshotCache *)self _entryForIdentifier:identifierCopy];
  v6 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 debugDescription];
    *buf = 138543362;
    v28 = v8;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Save snapshot for entry: %{public}@", buf, 0xCu);
  }

  if (v5)
  {
    [(TabSnapshotCache *)self _beginUpdatingStateForIdentifier:identifierCopy];
    metadata = [v5 metadata];
    fileName = [metadata fileName];
    if (fileName)
    {
      thumbnailCacheDirectoryURL = self->_thumbnailCacheDirectoryURL;
      metadata2 = [v5 metadata];
      fileName2 = [metadata2 fileName];
      v14 = [(NSURL *)thumbnailCacheDirectoryURL URLByAppendingPathComponent:fileName2 isDirectory:0];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(TabSnapshotCache *)self _preferredURLForSnapshotWithIdentifier:identifierCopy];
    metadata3 = [v5 metadata];
    lastPathComponent = [v15 lastPathComponent];
    [metadata3 setFileName:lastPathComponent];

    [(SFTabSnapshotMetadataStore *)self->_metadataStore deleteMetadataForIdentifier:identifierCopy completion:&__block_literal_global_141];
    [(SFTabSnapshotMetadataStore *)self->_metadataStore saveMetadata:metadata3 completion:&__block_literal_global_143];
    fileSystemAccessQueue = self->_fileSystemAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__TabSnapshotCache__saveSnapshotForIdentifier___block_invoke_3;
    block[3] = &unk_2781D7D88;
    block[4] = self;
    v23 = v5;
    v24 = v15;
    v25 = v14;
    v26 = metadata3;
    v19 = metadata3;
    v20 = v14;
    v21 = v15;
    dispatch_async(fileSystemAccessQueue, block);
  }
}

void __47__TabSnapshotCache__saveSnapshotForIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) snapshot];
  v4 = [v3 CGImage];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) identifier];
  v7 = [v2 _writeSnapshotImage:v4 toURL:v5 forIdentifier:v6];

  v8 = *(a1 + 56);
  if (v8 && ([v8 isEqual:*(a1 + 48)] & 1) == 0)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    [v9 removeItemAtURL:*(a1 + 56) error:0];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__TabSnapshotCache__saveSnapshotForIdentifier___block_invoke_4;
  v12[3] = &unk_2781D5A50;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v10;
  v14 = v7;
  v15 = *(a1 + 64);
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __47__TabSnapshotCache__saveSnapshotForIdentifier___block_invoke_4(uint64_t a1)
{
  if (deviceSupportsASTC)
  {
    if (*(a1 + 48))
    {
      v2 = *(a1 + 32);

      return [v2 _finishUpdatingToState:2 cachedSnapshot:? metadata:? forEntry:?];
    }

    [*(a1 + 40) setSnapshot:0];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 3;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 2;
  }

  return [v4 _finishUpdatingToState:v6 forEntry:v5];
}

- (id)_writeSnapshotImage:(CGImage *)image toURL:(id)l forIdentifier:(id)identifier
{
  v26[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  if (deviceSupportsASTC == 1)
  {
    v10 = *MEMORY[0x277CD2DD0];
    v25[0] = *MEMORY[0x277CD2F40];
    v25[1] = v10;
    v26[0] = *MEMORY[0x277CD2DD8];
    v26[1] = &unk_2827FC298;
    v25[2] = *MEMORY[0x277CD2DE8];
    v26[2] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v12 = @"org.khronos.ktx";
  }

  else
  {
    v12 = *MEMORY[0x277CC2120];
    v23 = *MEMORY[0x277CD3438];
    v21 = *MEMORY[0x277CD3428];
    v22 = &unk_2827FC2B0;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v24 = v13;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  }

  v14 = CGImageDestinationCreateWithURL(lCopy, v12, 1uLL, 0);
  if (v14)
  {
    v15 = v14;
    CGImageDestinationAddImage(v14, image, v11);
    v16 = CGImageDestinationFinalize(v15);
    CFRelease(v15);
    if (v16)
    {
      if (deviceSupportsASTC == 1)
      {
        v17 = [(TabSnapshotCache *)self _readSnapshotImageFromURL:lCopy forIdentifier:identifierCopy];
        goto LABEL_13;
      }
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TabSnapshotCache _writeSnapshotImage:toURL:forIdentifier:];
      }
    }
  }

  else
  {
    v18 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [TabSnapshotCache _writeSnapshotImage:toURL:forIdentifier:];
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (void)_beginUpdatingStateForIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(TabSnapshotCache *)self _entryForIdentifier:identifier];
  v4 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 debugDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "Begin updating entry: %{public}@", &v7, 0xCu);
  }

  [v3 setUpdatingState:1];
  [v3 setStateUpdateCancelled:0];
}

- (void)_finishUpdatingToState:(int64_t)state cachedSnapshot:(id)snapshot metadata:(id)metadata forEntry:(id)entry
{
  v27 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  metadataCopy = metadata;
  entryCopy = entry;
  v13 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [entryCopy debugDescription];
    v16 = v15;
    if (state > 4)
    {
      v17 = @"Empty";
    }

    else
    {
      v17 = off_2781DC828[state];
    }

    *buf = 138543874;
    v22 = v15;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = snapshotCopy;
    _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Finish updating entry: %{public}@ (toState = %@; snapshot = %@)", buf, 0x20u);
  }

  if ([entryCopy isUpdatingState])
  {
    [entryCopy setUpdatingState:0];
    if (([entryCopy stateUpdateCancelled] & 1) == 0)
    {
      [entryCopy setState:state];
      if (snapshotCopy)
      {
        [entryCopy setSnapshot:snapshotCopy];
        metadata = [entryCopy metadata];
        fileName = [metadata fileName];
        [metadataCopy setFileName:fileName];

        [entryCopy setMetadata:metadataCopy];
        if (deviceSupportsASTC != 1 || [entryCopy state] == 2)
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __76__TabSnapshotCache__finishUpdatingToState_cachedSnapshot_metadata_forEntry___block_invoke;
          v20[3] = &unk_2781DC7E0;
          v20[4] = self;
          [(TabSnapshotCache *)self _enumerateIdentifiersForEntry:entryCopy respondingToSelector:sel_tabSnapshotCache_didCacheSnapshotWithIdentifier_ withBlock:v20];
        }
      }

      [(TabSnapshotCache *)self _sendDidFinishUpdatingToDelegateIfNeeded];
    }

    [(TabSnapshotCache *)self requestNextSnapshotIfNecessaryWithOptions:0];
  }
}

- (void)_enumerateIdentifiersForEntry:(id)entry respondingToSelector:(SEL)selector withBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  blockCopy = block;
  if ([entryCopy isGroup])
  {
    groupMembers = [entryCopy groupMembers];
    v9 = [groupMembers copy];
  }

  else
  {
    v10 = MEMORY[0x277CBEB98];
    groupMembers = [entryCopy identifier];
    v9 = [v10 setWithObject:groupMembers];
  }

  v39 = v9;
  v33 = entryCopy;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = self->_delegateToContextMap;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    v34 = *v53;
    do
    {
      v14 = 0;
      v36 = v12;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v52 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [(TabSnapshotCache *)self identifiersToCacheForDelegate:v15];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v17 = v39;
          v18 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v49;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v49 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v48 + 1) + 8 * i);
                if ([v16 containsObject:v22])
                {
                  blockCopy[2](blockCopy, v15, v22);
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
            }

            while (v19);
          }

          v13 = v34;
          v12 = v36;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v12);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = self->_snapshotCacheObservers;
  v23 = [(NSHashTable *)obja countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v44 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v28 = v39;
          v29 = [v28 countByEnumeratingWithState:&v40 objects:v56 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v41;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v41 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                blockCopy[2](blockCopy, v27, *(*(&v40 + 1) + 8 * k));
              }

              v30 = [v28 countByEnumeratingWithState:&v40 objects:v56 count:16];
            }

            while (v30);
          }
        }
      }

      v24 = [(NSHashTable *)obja countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v24);
  }
}

- (NSString)debugDescription
{
  v24 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _allIdentifiersToCache = [(TabSnapshotCache *)self _allIdentifiersToCache];
  v5 = [_allIdentifiersToCache countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(_allIdentifiersToCache);
        }

        v9 = [(TabSnapshotCache *)self _entryForIdentifier:*(*(&v19 + 1) + 8 * i)];
        if ([v9 state])
        {
          state = [v9 state];
          v11 = @"e";
          if (state != 3)
          {
            state2 = [v9 state];
            v11 = @"r";
            if (state2 != 4)
            {
              state3 = [v9 state];
              v11 = @"█";
              if (state3 != 2)
              {
                if ([v9 state] == 1)
                {
                  v11 = @"S";
                }

                else
                {
                  v11 = @"X";
                }
              }
            }
          }
        }

        else
        {
          v11 = @"*";
        }

        [string appendString:v11];
      }

      v6 = [_allIdentifiersToCache countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 stringWithFormat:@"<%@: %p delegateToContextMap = %@, snapshotCacheStates = %@;>", v16, self, self->_delegateToContextMap, string];;

  return v17;
}

- (void)_requestNextSnapshotIfNecessaryForDelegate:(id)delegate
{
  v36 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v4 = [(TabSnapshotCache *)self _contextForDelegate:?];
  identifiersToCache = [v4 identifiersToCache];
  v25 = v4;
  updating = [v4 updating];
  v6 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = identifiersToCache;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [(TabSnapshotCache *)self _entryForIdentifier:v12 createIfNeeded:1];
        if ([v13 isGroup])
        {
          identifier = [v13 identifier];
          v15 = [v6 containsObject:identifier];

          if (v15)
          {
            goto LABEL_10;
          }

          identifier2 = [v13 identifier];
          [v6 addObject:identifier2];
        }

        fitsInCache = [v13 fitsInCache];
        if (([v13 isUpdatingState] & 1) == 0)
        {
          state = [v13 state];
          if (state > 1)
          {
            if (state == 2)
            {
              if ((fitsInCache & 1) == 0)
              {
                v21 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  v22 = v21;
                  v23 = [v13 debugDescription];
                  *buf = 138543362;
                  v34 = v23;
                  _os_log_impl(&dword_215819000, v22, OS_LOG_TYPE_INFO, "Reached capacity; will evict snapshot for entry: %{public}@", buf, 0xCu);
                }

                [v13 setSnapshot:0];
                [v13 setState:3];
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __63__TabSnapshotCache__requestNextSnapshotIfNecessaryForDelegate___block_invoke;
                v28[3] = &unk_2781DC7E0;
                v28[4] = self;
                [(TabSnapshotCache *)self _enumerateIdentifiersForEntry:v13 respondingToSelector:sel_tabSnapshotCache_didEvictSnapshotWithIdentifier_ withBlock:v28];
              }
            }

            else if (state == 3 && fitsInCache != 0)
            {
              [(TabSnapshotCache *)self _requestSavedSnapshotForIdentifier:v12];
            }
          }

          else if (state)
          {
            if (state == 1 && updating != 0)
            {
              [(TabSnapshotCache *)self _saveSnapshotForIdentifier:v12];
            }
          }

          else if (updating)
          {
            [(TabSnapshotCache *)self requestSnapshotWithIdentifier:v12 fromProvider:delegateCopy];
          }
        }

LABEL_10:

        ++v11;
      }

      while (v9 != v11);
      v24 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
      v9 = v24;
    }

    while (v24);
  }
}

- (void)adjustRequestedSnapshotCountBy:(int64_t)by forProvider:(id)provider
{
  providerCopy = provider;
  self->_currentlyRequestedSnapshotCount += by;
  WeakRetained = objc_loadWeakRetained(&self->_fallbackProvider);

  v7 = providerCopy;
  if (WeakRetained == providerCopy)
  {
    self->_fallbackProviderNumberOfRequests += by;
  }

  else
  {
    v8 = [(TabSnapshotCache *)self _contextForDelegate:providerCopy];
    [v8 setNumberOfRequests:{objc_msgSend(v8, "numberOfRequests") + by}];

    v7 = providerCopy;
  }
}

- (void)requestSnapshotWithIdentifier:(id)identifier fromProvider:(id)provider
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  providerCopy = provider;
  v8 = [(TabSnapshotCache *)self _entryForIdentifier:identifierCopy createIfNeeded:1];
  if ([v8 fitsInCache] && self->_currentlyRequestedSnapshotCount <= 7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_fallbackProvider);

    if (WeakRetained == providerCopy)
    {
      fallbackProviderNumberOfRequests = self->_fallbackProviderNumberOfRequests;
    }

    else
    {
      v10 = [(TabSnapshotCache *)self _contextForDelegate:providerCopy];
      fallbackProviderNumberOfRequests = [v10 numberOfRequests];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || fallbackProviderNumberOfRequests < [providerCopy maximumNumberOfRequestsForTabSnapshotCache:self])
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([providerCopy tabSnapshotCache:self canAcceptRequestForIdentifier:identifierCopy] & 1) == 0)
      {
        v15 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          if (WeakRetained == providerCopy)
          {
            v16 = @"Fallback provider";
          }

          else
          {
            v16 = @"Delegate";
          }

          v17 = v15;
          v18 = [v8 debugDescription];
          *buf = 138543618;
          v23 = v16;
          v24 = 2114;
          v25 = v18;
          _os_log_impl(&dword_215819000, v17, OS_LOG_TYPE_INFO, "%{public}@ skipped request for entry %{public}@", buf, 0x16u);
        }

        [(NSMutableOrderedSet *)self->_identifiersNotHandledByProvider addObject:identifierCopy];
      }

      else
      {
        [(NSMutableOrderedSet *)self->_identifiersNotHandledByProvider removeObject:identifierCopy];
        [(TabSnapshotCache *)self adjustRequestedSnapshotCountBy:1 forProvider:providerCopy];
        [(TabSnapshotCache *)self _beginUpdatingStateForIdentifier:identifierCopy];
        v12 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = v12;
          v14 = [v8 debugDescription];
          *buf = 138543362;
          v23 = v14;
          _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_INFO, "Request snapshot for entry: %{public}@", buf, 0xCu);
        }

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __63__TabSnapshotCache_requestSnapshotWithIdentifier_fromProvider___block_invoke;
        v19[3] = &unk_2781DC808;
        v19[4] = self;
        v20 = providerCopy;
        v21 = v8;
        [v20 tabSnapshotCache:self requestSnapshotWithIdentifier:identifierCopy completion:v19];
      }
    }
  }
}

void __63__TabSnapshotCache_requestSnapshotWithIdentifier_fromProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) adjustRequestedSnapshotCountBy:-1 forProvider:*(a1 + 40)];
  v6 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"Error";
    if (!a3)
    {
      v7 = @"Success";
    }

    if (a3 == 1)
    {
      v7 = @"Temporarily Unavailable";
    }

    v8 = v7;
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = [v9 debugDescription];
    v16 = 138412546;
    v17 = v8;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_INFO, "Did request snapshot with result %@ for entry: %{public}@", &v16, 0x16u);
  }

  if (v5)
  {
    v12 = *(a1 + 32);
    v13 = [v5 image];
    v14 = [v5 metadata];
    [v12 _finishUpdatingToState:1 cachedSnapshot:v13 metadata:v14 forEntry:*(a1 + 48)];
  }

  else
  {
    if (a3 == 1)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    [*(a1 + 32) _finishUpdatingToState:v15 forEntry:*(a1 + 48)];
  }
}

- (void)requestSnapshotsFromFallbackProvider
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_fallbackProvider);
  if (WeakRetained)
  {
    v4 = self->_identifiersNotHandledByProvider;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    identifiersNotHandledByProvider = self->_identifiersNotHandledByProvider;
    self->_identifiersNotHandledByProvider = orderedSet;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(TabSnapshotCache *)self requestSnapshotWithIdentifier:*(*(&v25 + 1) + 8 * i) fromProvider:WeakRetained];
        }

        v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }
  }

  v12 = self->_identifiersNotHandledByProvider;
  v13 = self->_identifiersNotHandledByProvider;
  self->_identifiersNotHandledByProvider = 0;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v12;
  v15 = [(NSMutableOrderedSet *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        v20 = [(TabSnapshotCache *)self _entryForIdentifier:v19, v21];
        [(TabSnapshotCache *)self _beginUpdatingStateForIdentifier:v19];
        [(TabSnapshotCache *)self _finishUpdatingToState:3 forEntry:v20];
      }

      v16 = [(NSMutableOrderedSet *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }
}

- (void)requestNextSnapshotIfNecessaryWithOptions:(unint64_t)options
{
  self->_requestNextSnapshotOptions |= options;
  if (!self->_needsRequestNextSnapshot)
  {
    self->_needsRequestNextSnapshot = 1;
    loadMetadataGroup = self->_loadMetadataGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__TabSnapshotCache_requestNextSnapshotIfNecessaryWithOptions___block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_group_notify(loadMetadataGroup, MEMORY[0x277D85CD0], block);
  }
}

void __62__TabSnapshotCache_requestNextSnapshotIfNecessaryWithOptions___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TabSnapshotCache_requestNextSnapshotIfNecessaryWithOptions___block_invoke_2;
  block[3] = &unk_2781D4D40;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__TabSnapshotCache_requestNextSnapshotIfNecessaryWithOptions___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 debugDescription];
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Begin update for cache: %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6[120])
  {
    [v6 invalidateRecoverableEntries];
    v6 = *(a1 + 32);
  }

  *(v6 + 15) = 0;
  *(*(a1 + 32) + 112) = 0;
  [*(a1 + 32) _calculateFitsInCache];
  [*(a1 + 32) cleanUpSavedSnapshots];
  v7 = [MEMORY[0x277CBEB40] orderedSet];
  v8 = *(a1 + 32);
  v9 = *(v8 + 72);
  *(v8 + 72) = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(*(a1 + 32) + 8);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) _requestNextSnapshotIfNecessaryForDelegate:{*(*(&v17 + 1) + 8 * v14++), v17}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [*(a1 + 32) requestSnapshotsFromFallbackProvider];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = 0;
}

- (void)invalidateRecoverableEntries
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_delegateToContextMap;
  v16 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      v3 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v3;
        v4 = [(TabSnapshotCache *)self _contextForDelegate:*(*(&v23 + 1) + 8 * v3)];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v17 = v4;
        identifiersToCache = [v4 identifiersToCache];
        v6 = [identifiersToCache countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v20;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(identifiersToCache);
              }

              v10 = [(TabSnapshotCache *)self _entryForIdentifier:*(*(&v19 + 1) + 8 * i)];
              if ([v10 state] == 4)
              {
                v11 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
                {
                  v12 = v11;
                  v13 = [v10 debugDescription];
                  *buf = 138543362;
                  v28 = v13;
                  _os_log_impl(&dword_215819000, v12, OS_LOG_TYPE_INFO, "Retry entry: %{public}@", buf, 0xCu);
                }

                [v10 setState:0];
                [v10 setStateUpdateCancelled:1];
              }
            }

            v7 = [identifiersToCache countByEnumeratingWithState:&v19 objects:v29 count:16];
          }

          while (v7);
        }

        v3 = v18 + 1;
      }

      while (v18 + 1 != v16);
      v16 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v16);
  }
}

- (void)_calculateFitsInCache
{
  v54 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_delegateToContextMap;
  v3 = [(NSMapTable *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v47;
    do
    {
      v6 = 0;
      do
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(TabSnapshotCache *)self _contextForDelegate:*(*(&v46 + 1) + 8 * v6)];
        identifiersToCache = [v7 identifiersToCache];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v9 = [identifiersToCache countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v43;
          do
          {
            v12 = 0;
            do
            {
              if (*v43 != v11)
              {
                objc_enumerationMutation(identifiersToCache);
              }

              v13 = [(TabSnapshotCache *)self _entryForIdentifier:*(*(&v42 + 1) + 8 * v12) createIfNeeded:1];
              [v13 setFitsInCache:0];

              ++v12;
            }

            while (v10 != v12);
            v10 = [identifiersToCache countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSMapTable *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v4);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = self->_delegateToContextMap;
  v30 = [(NSMapTable *)v28 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v30)
  {
    v29 = *v39;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v28);
        }

        obja = v14;
        v15 = [(TabSnapshotCache *)self _contextForDelegate:*(*(&v38 + 1) + 8 * v14)];
        identifiersToCache2 = [v15 identifiersToCache];
        v31 = v15;
        capacity = [v15 capacity];
        v18 = [MEMORY[0x277CBEB58] set];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v19 = identifiersToCache2;
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v35;
LABEL_22:
          v23 = 0;
          while (1)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            if (!capacity)
            {
              goto LABEL_32;
            }

            v24 = [(TabSnapshotCache *)self _entryForIdentifier:*(*(&v34 + 1) + 8 * v23) createIfNeeded:1];
            if (![v24 isGroup])
            {
              goto LABEL_29;
            }

            identifier = [v24 identifier];
            v26 = [v18 containsObject:identifier];

            if ((v26 & 1) == 0)
            {
              break;
            }

LABEL_30:

            if (v21 == ++v23)
            {
              v21 = [v19 countByEnumeratingWithState:&v34 objects:v50 count:16];
              if (v21)
              {
                goto LABEL_22;
              }

              goto LABEL_32;
            }
          }

          identifier2 = [v24 identifier];
          [v18 addObject:identifier2];

LABEL_29:
          [v24 fitsInCache];
          [v24 setFitsInCache:1];
          --capacity;
          goto LABEL_30;
        }

LABEL_32:

        v14 = obja + 1;
      }

      while (obja + 1 != v30);
      v30 = [(NSMapTable *)v28 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v30);
  }
}

- (void)performBatchUpdatesWithBlock:(id)block
{
  (*(block + 2))(block, a2);

  [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
}

- (void)_sendDidFinishUpdatingToDelegateIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(TabSnapshotCache *)self isFinishedUpdating])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = self->_delegateToContextMap;
    v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 tabSnapshotCacheDidFinishUpdating:self];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allObjects = [(NSHashTable *)self->_snapshotCacheObservers allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 tabSnapshotCacheDidFinishUpdating:self];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }
  }
}

- (id)_contextForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(NSMapTable *)self->_delegateToContextMap objectForKey:delegateCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(TabSnapshotCacheContext);
    -[TabSnapshotCacheContext setCapacity:](v5, "setCapacity:", [delegateCopy capacityForTabSnapshotCache:self]);
    [(NSMapTable *)self->_delegateToContextMap setObject:v5 forKey:delegateCopy];
  }

  return v5;
}

- (void)setUpdating:(BOOL)updating forDelegate:(id)delegate
{
  updatingCopy = updating;
  v6 = [(TabSnapshotCache *)self _contextForDelegate:delegate];
  if ([v6 updating] != updatingCopy)
  {
    [v6 setUpdating:updatingCopy];
    if (updatingCopy)
    {
      [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
    }
  }
}

- (void)setCapacity:(unint64_t)capacity forDelegate:(id)delegate
{
  v6 = [(TabSnapshotCache *)self _contextForDelegate:delegate];
  if ([v6 capacity] != capacity)
  {
    [v6 setCapacity:capacity];
    [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
  }
}

+ (void)removeSavedSnapshotsKeepingSnapshotsWithIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = SafariThumbnailCacheDirectoryPath();
  [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = v21 = 0u;
  v5 = [v17 contentsOfDirectoryAtPath:v4 error:0];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138543362;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 length] >= 0x24)
        {
          v12 = [v11 substringToIndex:36];
          v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
          if (v13 && ([identifiersCopy containsObject:v13] & 1) == 0)
          {
            v14 = [v4 stringByAppendingPathComponent:v11];
            if ([v17 _web_removeFileOnlyAtPath:v14])
            {
              v15 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v16;
                v23 = v14;
                _os_log_impl(&dword_215819000, v15, OS_LOG_TYPE_DEFAULT, "Cleaning cache directory; removed snapshot at path %{public}@", buf, 0xCu);
              }
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }
}

- (void)addIdentifier:(id)identifier toGroupWithIdentifier:(id)withIdentifier
{
  identifiersPendingUpdate = self->_identifiersPendingUpdate;
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  [(NSMutableSet *)identifiersPendingUpdate removeObject:identifierCopy];
  [(NSMutableDictionary *)self->_groupIdentifiers setObject:withIdentifierCopy forKeyedSubscript:identifierCopy];

  v9 = [(TabSnapshotCache *)self _entryForIdentifier:identifierCopy createIfNeeded:1];
  groupMembers = [v9 groupMembers];
  [groupMembers addObject:identifierCopy];

  [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
}

- (void)removeIdentifier:(id)identifier fromGroupWithIdentifier:(id)withIdentifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v8 = [(NSMutableDictionary *)self->_groupIdentifiers objectForKeyedSubscript:identifierCopy];
  v9 = [v8 isEqual:withIdentifierCopy];

  if (v9)
  {
    v10 = [(TabSnapshotCache *)self _entryForIdentifier:identifierCopy];
    groupMembers = [v10 groupMembers];
    [groupMembers removeObject:identifierCopy];

    v12 = [(TabSnapshotCache *)self _entryForIdentifier:withIdentifierCopy];
    groupMembers2 = [v12 groupMembers];
    v14 = [groupMembers2 count];

    if (!v14)
    {
      [(NSMutableSet *)self->_identifiersPendingUpdate removeObject:withIdentifierCopy];
    }

    [(NSMutableDictionary *)self->_groupIdentifiers removeObjectForKey:identifierCopy];
    [(TabSnapshotCache *)self requestNextSnapshotIfNecessary];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    objectEnumerator = [(NSMapTable *)self->_delegateToContextMap objectEnumerator];
    v16 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          identifiersToCache = [*(*(&v22 + 1) + 8 * i) identifiersToCache];
          v21 = [identifiersToCache containsObject:identifierCopy];

          if (v21)
          {

            objectEnumerator = [(TabSnapshotCache *)self _entryForIdentifier:identifierCopy];
            if (objectEnumerator)
            {
              [(TabSnapshotCache *)self tabSnapshotCacheEntryDidUpdateState:objectEnumerator];
            }

            else
            {
              [(NSMutableSet *)self->_identifiersPendingUpdate addObject:identifierCopy];
            }

            goto LABEL_16;
          }
        }

        v17 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

- (BOOL)isIdentifier:(id)identifier memberOfSameGroupAsIdentifier:(id)asIdentifier
{
  groupIdentifiers = self->_groupIdentifiers;
  asIdentifierCopy = asIdentifier;
  v8 = [(NSMutableDictionary *)groupIdentifiers objectForKeyedSubscript:identifier];
  v9 = [(NSMutableDictionary *)self->_groupIdentifiers objectForKeyedSubscript:asIdentifierCopy];

  LOBYTE(groupIdentifiers) = [v8 isEqual:v9];
  return groupIdentifiers;
}

- (void)tabSnapshotCacheEntryDidUpdateState:(id)state
{
  stateCopy = state;
  isPendingUpdate = [stateCopy isPendingUpdate];
  identifiersPendingUpdate = self->_identifiersPendingUpdate;
  identifier = [stateCopy identifier];

  if (isPendingUpdate)
  {
    [(NSMutableSet *)identifiersPendingUpdate addObject:identifier];
  }

  else
  {
    [(NSMutableSet *)identifiersPendingUpdate removeObject:identifier];
  }
}

- (TabSnapshotCacheProviding)fallbackProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackProvider);

  return WeakRetained;
}

void __55__TabSnapshotCache_initWithThumbnailCacheDirectoryURL___block_invoke_5_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 48);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_215819000, v5, OS_LOG_TYPE_ERROR, "Failed to exclude tab snapshots directory from backup %@. Error: %{public}@", &v7, 0x16u);
}

- (void)_requestSavedSnapshotForIdentifier:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 debugDescription];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Request saved snapshot for entry: %{public}@", v5, 0xCu);
}

- (void)_writeSnapshotImage:toURL:forIdentifier:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_215819000, v1, OS_LOG_TYPE_ERROR, "Failed to finalize image destination with URL: %{public}@, image properties: %{public}@", v2, 0x16u);
}

@end