@interface NPTOPreferencesAccessor
- (BOOL)npto_appPhotosSyncingEnabled;
- (BOOL)npto_featuredPhotosSyncingEnabled;
- (BOOL)npto_isAlwaysUpdatingEnabledForAssetCollection:(id)a3;
- (BOOL)npto_memoriesSyncingEnabled;
- (NPTOPreferencesAccessor)initWithDevice:(id)a3;
- (id)_notificationNameForKey:(uint64_t)a1;
- (id)_npto_defaultAlbum;
- (id)changeObserverForKey:(id)a3 queue:(id)a4 block:(id)a5;
- (id)npto_alwaysUpdatingEnabledForAllCollections;
- (id)npto_fetchCountsForAllCollections;
- (id)npto_fetchSyncedAlbum;
- (id)npto_syncedAlbumIdentifier;
- (unint64_t)npto_appResyncVersion;
- (unint64_t)npto_fetchCountForAssetCollection:(id)a3;
- (unint64_t)npto_syncedPhotosLimit;
- (void)npto_removeFetchCountForAssetCollection:(id)a3;
- (void)npto_setAlwaysUpdatingEnabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)npto_setAlwaysUpdatingEnabledForAllCollections:(id)a3;
- (void)npto_setFetchCount:(unint64_t)a3 forAssetCollection:(id)a4;
- (void)npto_setFetchCountsForAllCollections:(id)a3;
- (void)performBatchUpdates:(id)a3 synchronizeToRemoteDevice:(BOOL)a4;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation NPTOPreferencesAccessor

- (id)npto_fetchSyncedAlbum
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [(NPTOPreferencesAccessor *)self objectForKey:@"SyncAlbum"];
  if ([v3 isEqualToString:@"none"])
  {
LABEL_2:
    v4 = 0;
    goto LABEL_25;
  }

  if (v3)
  {
    v5 = MEMORY[0x277CD97B8];
    v27[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v4 = [v5 fetchAssetCollectionsWithLocalIdentifiers:v6 options:0];

    v7 = [(NPTOPreferencesAccessor *)self device];
    v8 = [v7 valueForProperty:*MEMORY[0x277D2BB28]];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v4;
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

    if ([v4 count])
    {
      if (v4)
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

  v4 = [(NPTOPreferencesAccessor *)self _npto_defaultAlbum];
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_npto_defaultAlbum
{
  if (a1)
  {
    v2 = a1;
    v3 = [a1 device];
    v4 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      a1 = 0;
    }

    else
    {
      v6 = [v2 objectForKey:@"TinkerGraduated"];
      v7 = [v6 BOOLValue];

      if (v7)
      {
        v8 = 206;
      }

      else
      {
        v8 = 203;
      }

      a1 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:v8 options:0];
    }

    v1 = vars8;
  }

  return a1;
}

- (id)npto_syncedAlbumIdentifier
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NPTOPreferencesAccessor *)self objectForKey:@"SyncAlbum"];
  if (!v3)
  {
    v4 = [(NPTOPreferencesAccessor *)self _npto_defaultAlbum];
    v5 = [v4 firstObject];
    v6 = [v5 localIdentifier];
    v7 = v6;
    v8 = @"none";
    if (v6)
    {
      v8 = v6;
    }

    v3 = v8;

    v9 = nanophotos_log_NanoPhotosCore();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NPTOPreferencesAccessor *)self device];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
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

  v4 = [v3 unsignedIntegerValue];

  return v4;
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

  v4 = [v3 BOOLValue];

  return v4;
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

  v4 = [v3 BOOLValue];

  return v4;
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

  v4 = [v3 BOOLValue];

  return v4;
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

  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)npto_fetchCountForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  v6 = [v4 npto_uuid];

  v7 = [v6 UUIDString];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

- (void)npto_setFetchCount:(unint64_t)a3 forAssetCollection:(id)a4
{
  v6 = a4;
  v7 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [v6 npto_uuid];

  v11 = [v10 UUIDString];
  [v8 setObject:v9 forKeyedSubscript:v11];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__NPTOPreferencesAccessor_WatchFaces__npto_setFetchCount_forAssetCollection___block_invoke;
  v13[3] = &unk_27995B850;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [(NPTOPreferencesAccessor *)self performBatchUpdates:v13 synchronizeToRemoteDevice:1];
}

void __77__NPTOPreferencesAccessor_WatchFaces__npto_setFetchCount_forAssetCollection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 setObject:v2 forKey:@"WatchFaceAlbumFetchCounts"];
}

- (void)npto_removeFetchCountForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlbumFetchCounts"];
  v6 = [v5 mutableCopy];

  v7 = [v4 npto_uuid];

  v8 = [v7 UUIDString];
  [v6 removeObjectForKey:v8];

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

- (BOOL)npto_isAlwaysUpdatingEnabledForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlwaysUpdatingAlbums"];
  v6 = [v4 npto_uuid];

  v7 = [v6 UUIDString];
  v8 = [v5 containsObject:v7];

  return v8;
}

- (void)npto_setAlwaysUpdatingEnabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB58];
  v8 = [(NPTOPreferencesAccessor *)self objectForKey:@"WatchFaceAlwaysUpdatingAlbums"];
  v9 = [v7 setWithArray:v8];

  if (v4)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB58] set];
    }

    v10 = [v6 npto_uuid];
    v11 = [v10 UUIDString];
    [v9 addObject:v11];
  }

  else
  {
    v10 = [v6 npto_uuid];
    v11 = [v10 UUIDString];
    [v9 removeObject:v11];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
        [v3 setObject:v10 forKey:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)npto_setFetchCountsForAllCollections:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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
        v13 = [v11 UUIDString];
        [v5 setObject:v12 forKey:v13];
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
  v17 = v5;
  v14 = v5;
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

- (void)npto_setAlwaysUpdatingEnabledForAllCollections:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v16 + 1) + 8 * v10) UUIDString];
        [v5 addObject:v11];

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
  v15 = v5;
  v12 = v5;
  [(NPTOPreferencesAccessor *)self performBatchUpdates:v14 synchronizeToRemoteDevice:1];

  v13 = *MEMORY[0x277D85DE8];
}

void __86__NPTOPreferencesAccessor_WatchFaces__npto_setAlwaysUpdatingEnabledForAllCollections___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 setObject:v2 forKey:@"WatchFaceAlwaysUpdatingAlbums"];
}

- (NPTOPreferencesAccessor)initWithDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NPTOPreferencesAccessor;
  v6 = [(NPTOPreferencesAccessor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanophotos" pairedDevice:v5];
    domainAccessor = v7->_domainAccessor;
    v7->_domainAccessor = v8;

    v10 = [[NPTONotificationCenter alloc] initWithDevice:v5];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = v10;
  }

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:v6];
  if (v7 != v12 && ([v12 isEqual:v7] & 1) == 0)
  {
    [(NPSDomainAccessor *)self->_domainAccessor setObject:v12 forKey:v6];
    v8 = [(NSMutableArray *)self->_batchUpdatesKeyStack lastObject];
    [v8 addObject:v6];

    if (![(NSMutableArray *)self->_batchUpdatesKeyStack count])
    {
      v9 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
      notificationCenter = self->_notificationCenter;
      v11 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:v6];
      [(NPTONotificationCenter *)notificationCenter postNotificationName:v11];
    }
  }
}

- (id)_notificationNameForKey:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = *(a1 + 8);
    v4 = a2;
    v5 = [v3 domain];
    v6 = [v2 stringWithFormat:@"%@.prefs.%@-changed", v5, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeObjectForKey:(id)a3
{
  v9 = a3;
  v4 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:?];
  if (v4)
  {
    [(NPSDomainAccessor *)self->_domainAccessor removeObjectForKey:v9];
    v5 = [(NSMutableArray *)self->_batchUpdatesKeyStack lastObject];
    [v5 addObject:v9];

    if (![(NSMutableArray *)self->_batchUpdatesKeyStack count])
    {
      v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
      notificationCenter = self->_notificationCenter;
      v8 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:v9];
      [(NPTONotificationCenter *)notificationCenter postNotificationName:v8];
    }
  }
}

- (void)performBatchUpdates:(id)a3 synchronizeToRemoteDevice:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  batchUpdatesKeyStack = self->_batchUpdatesKeyStack;
  if (!batchUpdatesKeyStack)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = self->_batchUpdatesKeyStack;
    self->_batchUpdatesKeyStack = v8;

    batchUpdatesKeyStack = self->_batchUpdatesKeyStack;
  }

  v10 = [MEMORY[0x277CBEB40] orderedSet];
  [(NSMutableArray *)batchUpdatesKeyStack addObject:v10];

  v6[2](v6);
  v11 = [(NSMutableArray *)self->_batchUpdatesKeyStack lastObject];
  [(NSMutableArray *)self->_batchUpdatesKeyStack removeLastObject];
  v12 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v11;
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

  if (v4)
  {
    v20 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v21 = [v13 set];
    [v20 synchronizeNanoDomain:@"com.apple.nanophotos" keys:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)changeObserverForKey:(id)a3 queue:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v12 = [(NPTOPreferencesAccessor *)self _notificationNameForKey:v8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__NPTOPreferencesAccessor_changeObserverForKey_queue_block___block_invoke;
  v16[3] = &unk_27995B8F0;
  objc_copyWeak(&v18, &location);
  v13 = v10;
  v17 = v13;
  v14 = [(NPTONotificationCenter *)notificationCenter observerForName:v12 queue:v9 block:v16];

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