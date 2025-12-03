@interface NPTOPreferencesAccessor
- (BOOL)npto_appPhotosSyncingEnabled;
- (BOOL)npto_featuredPhotosSyncingEnabled;
- (BOOL)npto_isAlwaysUpdatingEnabledForAssetCollection:(id)collection;
- (BOOL)npto_memoriesSyncingEnabled;
- (NPTOPreferencesAccessor)initWithDevice:(id)device;
- (id)_notificationNameForKey:(uint64_t)key;
- (id)_npto_defaultAlbum;
- (id)changeObserverForKey:(id)key queue:(id)queue block:(id)block;
- (id)npto_alwaysUpdatingEnabledForAllCollections;
- (id)npto_fetchCountsForAllCollections;
- (id)npto_fetchSyncedAlbum;
- (id)npto_syncedAlbumIdentifier;
- (unint64_t)npto_appResyncVersion;
- (unint64_t)npto_fetchCountForAssetCollection:(id)collection;
- (unint64_t)npto_syncedPhotosLimit;
- (void)npto_removeFetchCountForAssetCollection:(id)collection;
- (void)npto_setAlwaysUpdatingEnabled:(BOOL)enabled forAssetCollection:(id)collection;
- (void)npto_setAlwaysUpdatingEnabledForAllCollections:(id)collections;
- (void)npto_setFetchCount:(unint64_t)count forAssetCollection:(id)collection;
- (void)npto_setFetchCountsForAllCollections:(id)collections;
- (void)performBatchUpdates:(id)updates synchronizeToRemoteDevice:(BOOL)device;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation NPTOPreferencesAccessor

- (id)npto_fetchSyncedAlbum
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [(NPTOPreferencesAccessor *)self objectForKey:@"SyncAlbum"];
  if ([v3 isEqualToString:@"none"])
  {
LABEL_2:
    _npto_defaultAlbum = 0;
    goto LABEL_25;
  }

  if (v3)
  {
    v5 = MEMORY[0x277CD97B8];
    v27[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    _npto_defaultAlbum = [v5 fetchAssetCollectionsWithLocalIdentifiers:v6 options:0];

    device = [(NPTOPreferencesAccessor *)self device];
    v8 = [device valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = _npto_defaultAlbum;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            if ([v15 assetCollectionType] == 1 && objc_msgSend(v15, "assetCollectionSubtype") == 101)
            {
              v16 = nanophotos_log_NanoPhotosCore();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v25 = v15;
                _os_log_impl(&dword_25B657000, v16, OS_LOG_TYPE_DEFAULT, "Synced album is cloud shared: %@", buf, 0xCu);
              }

              [(NPTOPreferencesAccessor *)self setObject:@"none" forKey:@"SyncAlbum"];
              goto LABEL_2;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    if ([_npto_defaultAlbum count])
    {
      if (_npto_defaultAlbum)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = nanophotos_log_NanoPhotosCore();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v3;
        _os_log_impl(&dword_25B657000, v17, OS_LOG_TYPE_DEFAULT, "Synced album is missing: %@", buf, 0xCu);
      }

      [(NPTOPreferencesAccessor *)self removeObjectForKey:@"SyncAlbum"];
    }
  }

  _npto_defaultAlbum = [(NPTOPreferencesAccessor *)self _npto_defaultAlbum];
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];

  return _npto_defaultAlbum;
}

- (id)_npto_defaultAlbum
{
  if (self)
  {
    selfCopy = self;
    device = [self device];
    v4 = [device valueForProperty:*MEMORY[0x277D2BB28]];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      self = 0;
    }

    else
    {
      v6 = [selfCopy objectForKey:@"TinkerGraduated"];
      bOOLValue2 = [v6 BOOLValue];

      if (bOOLValue2)
      {
        v8 = 206;
      }

      else
      {
        v8 = 203;
      }

      self = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:v8 options:0];
    }

    v1 = vars8;
  }

  return self;
}

- (id)npto_syncedAlbumIdentifier
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NPTOPreferencesAccessor *)self objectForKey:@"SyncAlbum"];
  if (!v3)
  {
    _npto_defaultAlbum = [(NPTOPreferencesAccessor *)self _npto_defaultAlbum];
    firstObject = [_npto_defaultAlbum firstObject];
    localIdentifier = [firstObject localIdentifier];
    v7 = localIdentifier;
    v8 = @"none";
    if (localIdentifier)
    {
      v8 = localIdentifier;
    }

    v3 = v8;

    v9 = nanophotos_log_NanoPhotosCore();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      device = [(NPTOPreferencesAccessor *)self device];
      v13 = 138412546;
      v14 = device;
      v15 = 2112;
      v16 = _npto_defaultAlbum;
      _os_log_impl(&dword_25B657000, v9, OS_LOG_TYPE_DEFAULT, "No album identifier found for device: %@. Defaulting to %@.", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)npto_syncedPhotosLimit
{
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"SyncCount"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_286CEA868;
  }

  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)npto_appPhotosSyncingEnabled
{
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"AppPhotosSync"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)npto_memoriesSyncingEnabled
{
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"Memories"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)npto_featuredPhotosSyncingEnabled
{
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"FeaturedPhotos"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)npto_appResyncVersion
{
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"AppResyncVersion"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_286CEA880;
  }

  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)npto_fetchCountForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  npto_uuid = [collectionCopy npto_uuid];

  uUIDString = [npto_uuid UUIDString];
  v8 = [v5 objectForKeyedSubscript:uUIDString];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)npto_setFetchCount:(unint64_t)count forAssetCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  dictionary = [v7 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  npto_uuid = [collectionCopy npto_uuid];

  uUIDString = [npto_uuid UUIDString];
  [dictionary setObject:v9 forKeyedSubscript:uUIDString];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__NPTOPreferencesAccessor_WatchFaces__npto_setFetchCount_forAssetCollection___block_invoke;
  v13[3] = &unk_27995B850;
  v13[4] = self;
  v14 = dictionary;
  v12 = dictionary;
  [(NPTOPreferencesAccessor *)self performBatchUpdates:v13 synchronizeToRemoteDevice:1];
}

void __77__NPTOPreferencesAccessor_WatchFaces__npto_setFetchCount_forAssetCollection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 setObject:v2 forKey:@"WatchFaceAlbumFetchCounts"];
}

- (void)npto_removeFetchCountForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  v6 = [v5 mutableCopy];

  npto_uuid = [collectionCopy npto_uuid];

  uUIDString = [npto_uuid UUIDString];
  [v6 removeObjectForKey:uUIDString];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__NPTOPreferencesAccessor_WatchFaces__npto_removeFetchCountForAssetCollection___block_invoke;
  v10[3] = &unk_27995B850;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(NPTOPreferencesAccessor *)self performBatchUpdates:v10 synchronizeToRemoteDevice:1];
}

void __79__NPTOPreferencesAccessor_WatchFaces__npto_removeFetchCountForAssetCollection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 setObject:v2 forKey:@"WatchFaceAlbumFetchCounts"];
}

- (BOOL)npto_isAlwaysUpdatingEnabledForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlwaysUpdatingAlbums"];
  npto_uuid = [collectionCopy npto_uuid];

  uUIDString = [npto_uuid UUIDString];
  v8 = [v5 containsObject:uUIDString];

  return v8;
}

- (void)npto_setAlwaysUpdatingEnabled:(BOOL)enabled forAssetCollection:(id)collection
{
  enabledCopy = enabled;
  collectionCopy = collection;
  v7 = MEMORY[0x277CBEB58];
  v8 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlwaysUpdatingAlbums"];
  v9 = [v7 setWithArray:v8];

  if (enabledCopy)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB58] set];
    }

    npto_uuid = [collectionCopy npto_uuid];
    uUIDString = [npto_uuid UUIDString];
    [v9 addObject:uUIDString];
  }

  else
  {
    npto_uuid = [collectionCopy npto_uuid];
    uUIDString = [npto_uuid UUIDString];
    [v9 removeObject:uUIDString];
  }

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__NPTOPreferencesAccessor_WatchFaces__npto_setAlwaysUpdatingEnabled_forAssetCollection___block_invoke;
    v12[3] = &unk_27995B850;
    v12[4] = self;
    v13 = v9;
    [(NPTOPreferencesAccessor *)self performBatchUpdates:v12 synchronizeToRemoteDevice:1];
  }
}

void __88__NPTOPreferencesAccessor_WatchFaces__npto_setAlwaysUpdatingEnabled_forAssetCollection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [v1 setObject:v2 forKey:@"WatchFaceAlwaysUpdatingAlbums"];
}

- (id)npto_fetchCountsForAllCollections
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:{v9, v15}];
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
        [dictionary setObject:v10 forKey:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [dictionary copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)npto_setFetchCountsForAllCollections:(id)collections
{
  v23 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = collectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        uUIDString = [v11 UUIDString];
        [dictionary setObject:v12 forKey:uUIDString];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__NPTOPreferencesAccessor_WatchFaces__npto_setFetchCountsForAllCollections___block_invoke;
  v16[3] = &unk_27995B850;
  v16[4] = self;
  v17 = dictionary;
  v14 = dictionary;
  [(NPTOPreferencesAccessor *)self performBatchUpdates:v16 synchronizeToRemoteDevice:1];

  v15 = *MEMORY[0x277D85DE8];
}

void __76__NPTOPreferencesAccessor_WatchFaces__npto_setFetchCountsForAllCollections___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 setObject:v2 forKey:@"WatchFaceAlbumFetchCounts"];
}

- (id)npto_alwaysUpdatingEnabledForAllCollections
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlwaysUpdatingAlbums"];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CCAD78]);
        v11 = [v10 initWithUUIDString:{v9, v15}];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)npto_setAlwaysUpdatingEnabledForAllCollections:(id)collections
{
  v21 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = collectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uUIDString = [*(*(&v16 + 1) + 8 * v10) UUIDString];
        [array addObject:uUIDString];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__NPTOPreferencesAccessor_WatchFaces__npto_setAlwaysUpdatingEnabledForAllCollections___block_invoke;
  v14[3] = &unk_27995B850;
  v14[4] = self;
  v15 = array;
  v12 = array;
  [(NPTOPreferencesAccessor *)self performBatchUpdates:v14 synchronizeToRemoteDevice:1];

  v13 = *MEMORY[0x277D85DE8];
}

void __86__NPTOPreferencesAccessor_WatchFaces__npto_setAlwaysUpdatingEnabledForAllCollections___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 setObject:v2 forKey:@"WatchFaceAlwaysUpdatingAlbums"];
}

- (NPTOPreferencesAccessor)initWithDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NPTOPreferencesAccessor;
  v6 = [(NPTOPreferencesAccessor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanophotos" pairedDevice:deviceCopy];
    domainAccessor = v7->_domainAccessor;
    v7->_domainAccessor = v8;

    v10 = [[NPTONotificationCenter alloc] initWithDevice:deviceCopy];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = v10;
  }

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:keyCopy];
  if (v7 != objectCopy && ([objectCopy isEqual:v7] & 1) == 0)
  {
    [(NPSDomainAccessor *)self->_domainAccessor setObject:objectCopy forKey:keyCopy];
    lastObject = [(NSMutableArray *)self->_batchUpdatesKeyStack lastObject];
    [lastObject addObject:keyCopy];

    if (![(NSMutableArray *)self->_batchUpdatesKeyStack count])
    {
      synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
      notificationCenter = self->_notificationCenter;
      v11 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:keyCopy];
      [(NPTONotificationCenter *)notificationCenter postNotificationName:v11];
    }
  }
}

- (id)_notificationNameForKey:(uint64_t)key
{
  if (key)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = *(key + 8);
    v4 = a2;
    domain = [v3 domain];
    v6 = [v2 stringWithFormat:@"%@.prefs.%@-changed", domain, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v4 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:?];
  if (v4)
  {
    [(NPSDomainAccessor *)self->_domainAccessor removeObjectForKey:keyCopy];
    lastObject = [(NSMutableArray *)self->_batchUpdatesKeyStack lastObject];
    [lastObject addObject:keyCopy];

    if (![(NSMutableArray *)self->_batchUpdatesKeyStack count])
    {
      synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
      notificationCenter = self->_notificationCenter;
      v8 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:keyCopy];
      [(NPTONotificationCenter *)notificationCenter postNotificationName:v8];
    }
  }
}

- (void)performBatchUpdates:(id)updates synchronizeToRemoteDevice:(BOOL)device
{
  deviceCopy = device;
  v28 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  batchUpdatesKeyStack = self->_batchUpdatesKeyStack;
  if (!batchUpdatesKeyStack)
  {
    array = [MEMORY[0x277CBEB18] array];
    v9 = self->_batchUpdatesKeyStack;
    self->_batchUpdatesKeyStack = array;

    batchUpdatesKeyStack = self->_batchUpdatesKeyStack;
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  [(NSMutableArray *)batchUpdatesKeyStack addObject:orderedSet];

  updatesCopy[2](updatesCopy);
  lastObject = [(NSMutableArray *)self->_batchUpdatesKeyStack lastObject];
  [(NSMutableArray *)self->_batchUpdatesKeyStack removeLastObject];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = lastObject;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        notificationCenter = self->_notificationCenter;
        v19 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:?];
        [(NPTONotificationCenter *)notificationCenter postNotificationName:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  if (deviceCopy)
  {
    v20 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v21 = [v13 set];
    [v20 synchronizeNanoDomain:@"com.apple.nanophotos" keys:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)changeObserverForKey:(id)key queue:(id)queue block:(id)block
{
  keyCopy = key;
  queueCopy = queue;
  blockCopy = block;
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v12 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:keyCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__NPTOPreferencesAccessor_changeObserverForKey_queue_block___block_invoke;
  v16[3] = &unk_27995B8F0;
  objc_copyWeak(&v18, &location);
  v13 = blockCopy;
  v17 = v13;
  v14 = [(NPTONotificationCenter *)notificationCenter observerForName:v12 queue:queueCopy block:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v14;
}

void __60__NPTOPreferencesAccessor_changeObserverForKey_queue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained[1] synchronize];
  }

  (*(*(a1 + 32) + 16))();
}

@end