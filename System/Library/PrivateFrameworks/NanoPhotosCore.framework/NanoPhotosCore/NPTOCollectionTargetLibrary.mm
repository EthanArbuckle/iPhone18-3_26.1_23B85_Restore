@interface NPTOCollectionTargetLibrary
- (BOOL)isSyncNeeded;
- (NPTOCollectionTargetLibrary)initWithCollectionTarget:(int64_t)a3 device:(id)a4;
- (NSDate)lastUpdatedDate;
- (id)assetCollections;
- (id)fetchAssetsInAssetCollection:(id)a3 options:(id)a4;
- (id)fetchAssetsWithOptions:(id)a3;
- (id)fetchKeyAssetsInAssetCollection:(id)a3 options:(id)a4;
- (id)metadataForAssetCollection:(id)a3;
- (unint64_t)countOfAssetsInAssetCollection:(id)a3 options:(id)a4;
- (unint64_t)countOfAssetsWithOptions:(id)a3;
- (unint64_t)expectedCountOfAssets;
- (unint64_t)expectedCountOfAssetsInAssetCollection:(id)a3;
- (void)_createLibraryCollectionTargetMapChangeObserverIfNeeded;
- (void)_createSyncNeededChangeObserverIfNeeded;
- (void)_createSyncingChangeObserverIfNeeded;
- (void)_isSyncing;
- (void)_libraryAssetCollections;
- (void)_libraryAssetUUIDs;
- (void)_libraryInfo;
- (void)addObserver:(id)a3;
@end

@implementation NPTOCollectionTargetLibrary

- (NPTOCollectionTargetLibrary)initWithCollectionTarget:(int64_t)a3 device:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NPTOCollectionTargetLibrary;
  v8 = [(NPTOCollectionTargetLibrary *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_collectionTarget = a3;
    objc_storeStrong(&v8->_device, a4);
  }

  return v9;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
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
      v2 = [(NPTOCollectionTargetLibrary *)val _libraryInfo];
      v3 = [MEMORY[0x277CCABD8] mainQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __86__NPTOCollectionTargetLibrary__createLibraryCollectionTargetMapChangeObserverIfNeeded__block_invoke;
      v6[3] = &unk_27995B8C8;
      objc_copyWeak(&v7, &location);
      v4 = [v2 collectionTargetMapChangeObserverWithQueue:v3 block:v6];
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
      v2 = [(NPTOCollectionTargetLibrary *)val _libraryInfo];
      v3 = [MEMORY[0x277CCABD8] mainQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __67__NPTOCollectionTargetLibrary__createSyncingChangeObserverIfNeeded__block_invoke;
      v6[3] = &unk_27995B8C8;
      objc_copyWeak(&v7, &location);
      v4 = [v2 syncingChangeObserverWithQueue:v3 block:v6];
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
      v2 = [(NPTOCollectionTargetLibrary *)val _libraryInfo];
      v3 = [MEMORY[0x277CCABD8] mainQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __70__NPTOCollectionTargetLibrary__createSyncNeededChangeObserverIfNeeded__block_invoke;
      v6[3] = &unk_27995B8C8;
      objc_copyWeak(&v7, &location);
      v4 = [v2 syncNeededChangeObserverWithQueue:v3 block:v6];
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
  v4 = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__NPTOCollectionTargetLibrary_assetCollections__block_invoke;
  v11 = &unk_27995B878;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (void)_libraryAssetCollections
{
  if (a1)
  {
    v2 = a1;
    [(NPTOCollectionTargetLibrary *)a1 _createLibraryCollectionTargetMapChangeObserverIfNeeded];
    v3 = v2[6];
    if (!v3)
    {
      v4 = [(NPTOCollectionTargetLibrary *)v2 _libraryInfo];
      v5 = [v4 collectionTargetMap];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:v2[7]];
      v7 = [v5 objectForKeyedSubscript:v6];
      v8 = v2[6];
      v2[6] = v7;

      v3 = v2[6];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
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

- (id)metadataForAssetCollection:(id)a3
{
  v4 = [a3 npto_uuid];
  v5 = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"metadata"];

  return v7;
}

- (id)fetchAssetsWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(NPTOCollectionTargetLibrary *)self _libraryAssetUUIDs];
  v6 = MEMORY[0x277CD97A8];
  v7 = [MEMORY[0x277CD97A8] npto_localIdentifiersWithUUIDs:v5];
  v8 = [v6 fetchAssetsWithLocalIdentifiers:v7 options:v4];

  return v8;
}

- (void)_libraryAssetUUIDs
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v3 = [(NPTOCollectionTargetLibrary *)v1 _libraryAssetCollections];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__NPTOCollectionTargetLibrary__libraryAssetUUIDs__block_invoke;
    v6[3] = &unk_27995B8A0;
    v7 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];

    v1 = [v4 copy];
  }

  return v1;
}

- (id)fetchAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v9 = [v7 npto_uuid];

  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:@"assetUUIDs"];

  v12 = MEMORY[0x277CD97A8];
  v13 = [MEMORY[0x277CD97A8] npto_localIdentifiersWithUUIDs:v11];
  v14 = [v12 fetchAssetsWithLocalIdentifiers:v13 options:v6];

  return v14;
}

- (id)fetchKeyAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v9 = [v7 npto_uuid];

  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:@"keyAssetUUIDs"];

  v12 = MEMORY[0x277CD97A8];
  v13 = [MEMORY[0x277CD97A8] npto_localIdentifiersWithUUIDs:v11];
  v14 = [v12 fetchAssetsWithLocalIdentifiers:v13 options:v6];

  return v14;
}

- (unint64_t)countOfAssetsWithOptions:(id)a3
{
  v3 = [(NPTOCollectionTargetLibrary *)self fetchAssetsWithOptions:a3];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)countOfAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v4 = [(NPTOCollectionTargetLibrary *)self fetchAssetsInAssetCollection:a3 options:a4];
  v5 = [v4 count];

  return v5;
}

- (unint64_t)expectedCountOfAssets
{
  v2 = [(NPTOCollectionTargetLibrary *)self _libraryAssetUUIDs];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)expectedCountOfAssetsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NPTOCollectionTargetLibrary *)self _libraryAssetCollections];
  v6 = [v4 npto_uuid];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:@"assetUUIDs"];

  v9 = [v8 count];
  return v9;
}

- (NSDate)lastUpdatedDate
{
  v2 = [(NPTOCollectionTargetLibrary *)self _libraryInfo];
  v3 = [v2 lastUpdatedDate];

  return v3;
}

- (void)_libraryInfo
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [[NPTOLibraryInfo alloc] initWithDevice:a1[8]];
      v5 = v2[2];
      v2[2] = v4;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_isSyncing
{
  if (result)
  {
    v1 = result;
    [(NPTOCollectionTargetLibrary *)result _createSyncingChangeObserverIfNeeded];
    v2 = [(NPTOCollectionTargetLibrary *)v1 _libraryInfo];
    v3 = [v2 isSyncing];

    return v3;
  }

  return result;
}

- (BOOL)isSyncNeeded
{
  if (self)
  {
    v2 = self;
    [(NPTOCollectionTargetLibrary *)self _createSyncNeededChangeObserverIfNeeded];
    v3 = [(NPTOCollectionTargetLibrary *)v2 _libraryInfo];
    v4 = [v3 isSyncNeeded];

    LOBYTE(self) = v4;
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