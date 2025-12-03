@interface NPTOCollectionTargetLibrary
- (BOOL)isSyncNeeded;
- (NPTOCollectionTargetLibrary)initWithCollectionTarget:(int64_t)target device:(id)device;
- (NSDate)lastUpdatedDate;
- (id)assetCollections;
- (id)fetchAssetsInAssetCollection:(id)collection options:(id)options;
- (id)fetchAssetsWithOptions:(id)options;
- (id)fetchKeyAssetsInAssetCollection:(id)collection options:(id)options;
- (id)metadataForAssetCollection:(id)collection;
- (unint64_t)countOfAssetsInAssetCollection:(id)collection options:(id)options;
- (unint64_t)countOfAssetsWithOptions:(id)options;
- (unint64_t)expectedCountOfAssets;
- (unint64_t)expectedCountOfAssetsInAssetCollection:(id)collection;
- (void)_createLibraryCollectionTargetMapChangeObserverIfNeeded;
- (void)_createSyncNeededChangeObserverIfNeeded;
- (void)_createSyncingChangeObserverIfNeeded;
- (void)_isSyncing;
- (void)_libraryAssetCollections;
- (void)_libraryAssetUUIDs;
- (void)_libraryInfo;
- (void)addObserver:(id)observer;
@end

@implementation NPTOCollectionTargetLibrary

- (NPTOCollectionTargetLibrary)initWithCollectionTarget:(int64_t)target device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NPTOCollectionTargetLibrary;
  v8 = [(NPTOCollectionTargetLibrary *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_collectionTarget = target;
    objc_storeStrong(&v8->_device, device);
  }

  return v9;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
  [(NPTOCollectionTargetLibrary *)self _createLibraryCollectionTargetMapChangeObserverIfNeeded];
  [(NPTOCollectionTargetLibrary *)self _createSyncingChangeObserverIfNeeded];
  [(NPTOCollectionTargetLibrary *)self _createSyncNeededChangeObserverIfNeeded];
}

- (void)_createLibraryCollectionTargetMapChangeObserverIfNeeded
{
  if (val)
  {
    if (!val[3])
    {
      objc_initWeak(&location, val);
      _libraryInfo = [(NPTOCollectionTargetLibrary *)val _libraryInfo];
      mainQueue = [MEMORY[0x277CCABD8] mainQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __86__NPTOCollectionTargetLibrary__createLibraryCollectionTargetMapChangeObserverIfNeeded__block_invoke;
      v6[3] = &unk_27995B8C8;
      objc_copyWeak(&v7, &location);
      v4 = [_libraryInfo collectionTargetMapChangeObserverWithQueue:mainQueue block:v6];
      v5 = val[3];
      val[3] = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_createSyncingChangeObserverIfNeeded
{
  if (val)
  {
    if (!val[4])
    {
      objc_initWeak(&location, val);
      _libraryInfo = [(NPTOCollectionTargetLibrary *)val _libraryInfo];
      mainQueue = [MEMORY[0x277CCABD8] mainQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __67__NPTOCollectionTargetLibrary__createSyncingChangeObserverIfNeeded__block_invoke;
      v6[3] = &unk_27995B8C8;
      objc_copyWeak(&v7, &location);
      v4 = [_libraryInfo syncingChangeObserverWithQueue:mainQueue block:v6];
      v5 = val[4];
      val[4] = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_createSyncNeededChangeObserverIfNeeded
{
  if (val)
  {
    if (!val[5])
    {
      objc_initWeak(&location, val);
      _libraryInfo = [(NPTOCollectionTargetLibrary *)val _libraryInfo];
      mainQueue = [MEMORY[0x277CCABD8] mainQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __70__NPTOCollectionTargetLibrary__createSyncNeededChangeObserverIfNeeded__block_invoke;
      v6[3] = &unk_27995B8C8;
      objc_copyWeak(&v7, &location);
      v4 = [_libraryInfo syncNeededChangeObserverWithQueue:mainQueue block:v6];
      v5 = val[5];
      val[5] = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (id)assetCollections
{
  v3 = [MEMORY[0x277CBEB58] set];
  _libraryAssetCollections = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__NPTOCollectionTargetLibrary_assetCollections__block_invoke;
  v11 = &unk_27995B878;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [_libraryAssetCollections enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (void)_libraryAssetCollections
{
  if (self)
  {
    selfCopy = self;
    [(NPTOCollectionTargetLibrary *)self _createLibraryCollectionTargetMapChangeObserverIfNeeded];
    v3 = selfCopy[6];
    if (!v3)
    {
      _libraryInfo = [(NPTOCollectionTargetLibrary *)selfCopy _libraryInfo];
      collectionTargetMap = [_libraryInfo collectionTargetMap];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy[7]];
      v7 = [collectionTargetMap objectForKeyedSubscript:v6];
      v8 = selfCopy[6];
      selfCopy[6] = v7;

      v3 = selfCopy[6];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

void __47__NPTOCollectionTargetLibrary_assetCollections__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  v5 = MEMORY[0x277CD97B8];
  v6 = MEMORY[0x277CD9888];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v9 = *(a1 + 32);
  v10 = [v20 objectForKeyedSubscript:@"type"];
  v11 = [v10 intValue];
  if (v11 - 1 >= 3 || v9 == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(a1 + 32);
  v15 = [v20 objectForKeyedSubscript:@"subtype"];
  v16 = [v15 intValue];
  if (v14)
  {
    if (v16 > 100)
    {
      if (v16 != 101)
      {
        if (v16 == 203)
        {
          v14 = 203;
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v14 = 101;
    }

    else
    {
      if (v16 != 2)
      {
        if (v16 == 100)
        {
          v14 = 100;
          goto LABEL_18;
        }

LABEL_15:
        v14 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_18;
      }

      v14 = 2;
    }
  }

LABEL_18:
  v17 = [v20 objectForKeyedSubscript:@"title"];
  v18 = [v20 objectForKeyedSubscript:@"subtitle"];
  v19 = [v5 transientAssetCollectionWithAssetFetchResult:v8 type:v13 subtype:v14 title:v17 subtitle:v18 titleFontName:&stru_286CE9CB8];

  [v19 npto_setUUID:v7];
  [*(a1 + 40) addObject:v19];
}

- (id)metadataForAssetCollection:(id)collection
{
  npto_uuid = [collection npto_uuid];
  _libraryAssetCollections = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v6 = [_libraryAssetCollections objectForKeyedSubscript:npto_uuid];

  v7 = [v6 objectForKeyedSubscript:@"metadata"];

  return v7;
}

- (id)fetchAssetsWithOptions:(id)options
{
  optionsCopy = options;
  _libraryAssetUUIDs = [(NPTOCollectionTargetLibrary *)self _libraryAssetUUIDs];
  v6 = MEMORY[0x277CD97A8];
  v7 = [MEMORY[0x277CD97A8] npto_localIdentifiersWithUUIDs:_libraryAssetUUIDs];
  v8 = [v6 fetchAssetsWithLocalIdentifiers:v7 options:optionsCopy];

  return v8;
}

- (void)_libraryAssetUUIDs
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    _libraryAssetCollections = [(NPTOCollectionTargetLibrary *)selfCopy _libraryAssetCollections];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__NPTOCollectionTargetLibrary__libraryAssetUUIDs__block_invoke;
    v6[3] = &unk_27995B8A0;
    v7 = v2;
    v4 = v2;
    [_libraryAssetCollections enumerateKeysAndObjectsUsingBlock:v6];

    selfCopy = [v4 copy];
  }

  return selfCopy;
}

- (id)fetchAssetsInAssetCollection:(id)collection options:(id)options
{
  optionsCopy = options;
  collectionCopy = collection;
  _libraryAssetCollections = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  npto_uuid = [collectionCopy npto_uuid];

  v10 = [_libraryAssetCollections objectForKeyedSubscript:npto_uuid];
  v11 = [v10 objectForKeyedSubscript:@"assetUUIDs"];

  v12 = MEMORY[0x277CD97A8];
  v13 = [MEMORY[0x277CD97A8] npto_localIdentifiersWithUUIDs:v11];
  v14 = [v12 fetchAssetsWithLocalIdentifiers:v13 options:optionsCopy];

  return v14;
}

- (id)fetchKeyAssetsInAssetCollection:(id)collection options:(id)options
{
  optionsCopy = options;
  collectionCopy = collection;
  _libraryAssetCollections = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  npto_uuid = [collectionCopy npto_uuid];

  v10 = [_libraryAssetCollections objectForKeyedSubscript:npto_uuid];
  v11 = [v10 objectForKeyedSubscript:@"keyAssetUUIDs"];

  v12 = MEMORY[0x277CD97A8];
  v13 = [MEMORY[0x277CD97A8] npto_localIdentifiersWithUUIDs:v11];
  v14 = [v12 fetchAssetsWithLocalIdentifiers:v13 options:optionsCopy];

  return v14;
}

- (unint64_t)countOfAssetsWithOptions:(id)options
{
  v3 = [(NPTOCollectionTargetLibrary *)self fetchAssetsWithOptions:options];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)countOfAssetsInAssetCollection:(id)collection options:(id)options
{
  v4 = [(NPTOCollectionTargetLibrary *)self fetchAssetsInAssetCollection:collection options:options];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)expectedCountOfAssets
{
  _libraryAssetUUIDs = [(NPTOCollectionTargetLibrary *)self _libraryAssetUUIDs];
  v3 = [_libraryAssetUUIDs count];

  return v3;
}

- (unint64_t)expectedCountOfAssetsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  _libraryAssetCollections = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  npto_uuid = [collectionCopy npto_uuid];

  v7 = [_libraryAssetCollections objectForKeyedSubscript:npto_uuid];
  v8 = [v7 objectForKeyedSubscript:@"assetUUIDs"];

  v9 = [v8 count];
  return v9;
}

- (NSDate)lastUpdatedDate
{
  _libraryInfo = [(NPTOCollectionTargetLibrary *)self _libraryInfo];
  lastUpdatedDate = [_libraryInfo lastUpdatedDate];

  return lastUpdatedDate;
}

- (void)_libraryInfo
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = [[NPTOLibraryInfo alloc] initWithDevice:self[8]];
      v5 = selfCopy[2];
      selfCopy[2] = v4;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_isSyncing
{
  if (result)
  {
    v1 = result;
    [(NPTOCollectionTargetLibrary *)result _createSyncingChangeObserverIfNeeded];
    _libraryInfo = [(NPTOCollectionTargetLibrary *)v1 _libraryInfo];
    isSyncing = [_libraryInfo isSyncing];

    return isSyncing;
  }

  return result;
}

- (BOOL)isSyncNeeded
{
  if (self)
  {
    selfCopy = self;
    [(NPTOCollectionTargetLibrary *)self _createSyncNeededChangeObserverIfNeeded];
    _libraryInfo = [(NPTOCollectionTargetLibrary *)selfCopy _libraryInfo];
    isSyncNeeded = [_libraryInfo isSyncNeeded];

    LOBYTE(self) = isSyncNeeded;
  }

  return self;
}

void __49__NPTOCollectionTargetLibrary__libraryAssetUUIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectForKeyedSubscript:@"assetUUIDs"];
  [v3 addObjectsFromArray:v4];
}

void __86__NPTOCollectionTargetLibrary__createLibraryCollectionTargetMapChangeObserverIfNeeded__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(WeakRetained + 1);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v7 collectionTargetLibraryDidUpdate:WeakRetained];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __67__NPTOCollectionTargetLibrary__createSyncingChangeObserverIfNeeded__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = WeakRetained[1];
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v6 collectionTargetLibrarySyncingDidChange:WeakRetained];
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __70__NPTOCollectionTargetLibrary__createSyncNeededChangeObserverIfNeeded__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v1 = WeakRetained[1];
    v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v6 collectionTargetLibrarySyncNeeded:WeakRetained];
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end