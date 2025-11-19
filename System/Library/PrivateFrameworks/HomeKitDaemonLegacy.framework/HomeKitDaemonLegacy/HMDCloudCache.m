@interface HMDCloudCache
- (BOOL)homeZoneExists:(id)a3;
- (CKServerChangeToken)databaseServerChangeToken;
- (HMDBackingStore)backingStore;
- (HMDCloudCache)init;
- (HMDCloudCache)initWithBackingStore:(id)a3 workQueue:(id)a4;
- (HMDCloudHomeManagerZone)homeManagerZone;
- (HMDCloudLegacyZone)legacyZone;
- (HMDCloudMetadataZone)metadataZone;
- (HMDCloudZone)homeDataInformation;
- (id)_findStoreCacheZone:(id)a3 byName:(id)a4;
- (id)allHomeZones;
- (id)homeZoneWithName:(id)a3;
- (void)_createZones:(id)a3 completion:(id)a4;
- (void)createAndFetchZonesFromBackingStore:(id)a3;
- (void)deleteAllZones;
- (void)deleteHomeZoneWithName:(id)a3;
- (void)homeZoneWithName:(id)a3 owner:(id)a4 completion:(id)a5;
- (void)persistDatabaseServerChangeToken;
- (void)setDatabaseServerChangeToken:(id)a3;
- (void)setHomeDataInformation:(id)a3;
- (void)setHomeManagerZone:(id)a3;
- (void)setLegacyZone:(id)a3;
- (void)setMetadataZone:(id)a3;
@end

@implementation HMDCloudCache

- (HMDBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

- (void)persistDatabaseServerChangeToken
{
  v2 = [(HMDCloudCache *)self homeDataInformation];
  [v2 updateCurrentServerChangeToken];
}

- (void)setDatabaseServerChangeToken:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudCache *)self homeDataInformation];
  [v5 setServerChangeToken:v4];
}

- (CKServerChangeToken)databaseServerChangeToken
{
  v2 = [(HMDCloudCache *)self homeDataInformation];
  v3 = [v2 serverChangeToken];

  return v3;
}

- (void)deleteHomeZoneWithName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(HMDCloudCache *)self homeZones];
    v6 = [v5 objectForKeyedSubscript:v4];

    v7 = [(HMDCloudCache *)self homeZones];
    [v7 setObject:0 forKeyedSubscript:v4];

    [v6 deleteZone];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Must specify zone name when deleting zone", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllZones
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudCache *)self homeDataInformation];

  if (v3)
  {
    v4 = [(HMDCloudCache *)self homeDataInformation];
    [v4 deleteZone];

    [(HMDCloudCache *)self setHomeDataInformation:0];
  }

  v5 = [(HMDCloudCache *)self legacyZone];

  if (v5)
  {
    v6 = [(HMDCloudCache *)self legacyZone];
    [v6 deleteZone];

    [(HMDCloudCache *)self setLegacyZone:0];
  }

  v7 = [(HMDCloudCache *)self metadataZone];

  if (v7)
  {
    v8 = [(HMDCloudCache *)self metadataZone];
    [v8 deleteZone];

    [(HMDCloudCache *)self setMetadataZone:0];
  }

  v9 = [(HMDCloudCache *)self homeManagerZone];

  if (v9)
  {
    v10 = [(HMDCloudCache *)self homeManagerZone];
    [v10 deleteZone];

    [(HMDCloudCache *)self setHomeManagerZone:0];
  }

  os_unfair_lock_lock_with_options();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(HMDCloudCache *)self homeZones];
  v12 = [v11 allValues];

  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v18 + 1) + 8 * v15++) deleteZone];
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
  [(HMDCloudCache *)self setHomeZones:v16];

  os_unfair_lock_unlock(&self->_lock);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)homeZoneWithName:(id)a3 owner:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  v11 = [(HMDCloudCache *)self homeZones];
  v12 = [v11 objectForKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    if (v10)
    {
      v10[2](v10, v12, 0);
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HMDCloudCache_homeZoneWithName_owner_completion___block_invoke;
    v13[3] = &unk_2797312B0;
    v13[4] = self;
    v14 = v8;
    v15 = v10;
    [HMDCloudHomeZone createHomeZoneWithName:v14 owner:v9 cacheZone:0 cloudCache:self completion:v13];
  }
}

void __51__HMDCloudCache_homeZoneWithName_owner_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (!v14 || v5)
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v5);
    }
  }

  else
  {
    v6 = v14;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (isKindOfClass)
    {
      v10 = *(a1 + 32);
      os_unfair_lock_lock_with_options();
      v11 = [*(a1 + 32) homeZones];
      [v11 setObject:v6 forKeyedSubscript:*(a1 + 40)];

      os_unfair_lock_unlock(v10 + 2);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v9, 0);
    }
  }
}

- (id)homeZoneWithName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudCache *)self homeZones];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)homeZoneExists:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudCache *)self homeZones];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v6 != 0;
}

- (id)allHomeZones
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDCloudCache *)self homeZones];
  v4 = [v3 allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)createAndFetchZonesFromBackingStore:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [HMDBackingStoreCacheFetchZonesOperation alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HMDCloudCache_createAndFetchZonesFromBackingStore___block_invoke;
  v14[3] = &unk_279731300;
  objc_copyWeak(&v16, &location);
  v6 = v4;
  v15 = v6;
  v7 = [(HMDBackingStoreCacheFetchZonesOperation *)v5 initWithFetchResult:v14];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud zones from disk", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCloudCache *)v9 backingStore];
  [v12 submit:v7];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __53__HMDCloudCache_createAndFetchZonesFromBackingStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to load zones from disk with error %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = *(a1 + 32);
      if (v13)
      {
        (*(v13 + 16))(v13, v6);
      }
    }

    else
    {
      [WeakRetained _createZones:v5 completion:*(a1 + 32)];
      v14 = objc_autoreleasePoolPush();
      v15 = v8;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = 0;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Completed fetching cloud zones from disk with error %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_createZones:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_homeDataInformation)
  {
    v12 = [(HMDCloudCache *)self _findStoreCacheZone:v6 byName:@"HomeDataInfo"];
    v14 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [v14 removeObject:v12];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__HMDCloudCache__createZones_completion___block_invoke;
    v31[3] = &unk_2797312B0;
    v31[4] = self;
    v32 = v14;
    v33 = v7;
    v11 = v14;
    [HMDCloudZone createZoneWithName:@"HomeDataInfo" rootRecordName:@"DONOTUPLOAD" subscriptionName:@"HomeDataInfo" owner:@"__HomeKit_Default_Owner__" cacheZone:v12 cloudCache:self completion:v31];

    v13 = v32;
    goto LABEL_11;
  }

  if (!self->_legacyZone)
  {
    v12 = [(HMDCloudCache *)self _findStoreCacheZone:v6 byName:@"HomeDataBlobZone"];
    v15 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [v15 removeObject:v12];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __41__HMDCloudCache__createZones_completion___block_invoke_2;
    v28[3] = &unk_2797312B0;
    v28[4] = self;
    v29 = v15;
    v30 = v7;
    v11 = v15;
    [HMDCloudLegacyZone createLegacyZoneWithName:@"HomeDataBlobZone" owner:@"__HomeKit_Default_Owner__" cacheZone:v12 cloudCache:self completion:v28];

    v13 = v29;
    goto LABEL_11;
  }

  if (!self->_metadataZone)
  {
    v12 = [(HMDCloudCache *)self _findStoreCacheZone:v6 byName:@"CCF7D3D1-0C20-4207-97D0-9E565EB5E323"];
    v16 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [v16 removeObject:v12];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__HMDCloudCache__createZones_completion___block_invoke_3;
    v25[3] = &unk_2797312B0;
    v25[4] = self;
    v26 = v16;
    v27 = v7;
    v11 = v16;
    [HMDCloudMetadataZone createMetadataZoneWithName:@"CCF7D3D1-0C20-4207-97D0-9E565EB5E323" owner:@"__HomeKit_Default_Owner__" cacheZone:v12 cloudCache:self completion:v25];

    v13 = v26;
    goto LABEL_11;
  }

  if (!self->_homeManagerZone)
  {
    v12 = [(HMDCloudCache *)self _findStoreCacheZone:v6 byName:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5"];
    v17 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [v17 removeObject:v12];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __41__HMDCloudCache__createZones_completion___block_invoke_4;
    v22[3] = &unk_2797312B0;
    v22[4] = self;
    v23 = v17;
    v24 = v7;
    v11 = v17;
    [HMDCloudHomeManagerZone createHomeManagerZoneWithName:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5" owner:@"__HomeKit_Default_Owner__" cacheZone:v12 cloudCache:self completion:v22];

    v13 = v23;
    goto LABEL_11;
  }

  if ([v6 count])
  {
    v8 = [v6 firstObject];
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [v9 removeObject:v8];
    v10 = [v8 zoneName];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__HMDCloudCache__createZones_completion___block_invoke_5;
    v18[3] = &unk_2797312D8;
    v18[4] = self;
    v19 = v8;
    v20 = v9;
    v21 = v7;
    v11 = v9;
    v12 = v8;
    [HMDCloudHomeZone createHomeZoneWithName:v10 owner:@"__HomeKit_Default_Owner__" cacheZone:v12 cloudCache:self completion:v18];

    v13 = v19;
LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

LABEL_12:
}

void __41__HMDCloudCache__createZones_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7 || v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v5);
    }
  }

  else
  {
    [*(a1 + 32) setHomeDataInformation:v7];
    [*(a1 + 32) _createZones:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void __41__HMDCloudCache__createZones_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && !v5 && ((objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) ? (v7 = 0) : (v7 = v10), v8 = v7, (isKindOfClass & 1) != 0))
  {
    [*(a1 + 32) setLegacyZone:v10];
    [*(a1 + 32) _createZones:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }
  }
}

void __41__HMDCloudCache__createZones_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && !v5 && ((objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) ? (v7 = 0) : (v7 = v10), v8 = v7, (isKindOfClass & 1) != 0))
  {
    [*(a1 + 32) setMetadataZone:v10];
    [*(a1 + 32) _createZones:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }
  }
}

void __41__HMDCloudCache__createZones_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && !v5 && ((objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) ? (v7 = 0) : (v7 = v10), v8 = v7, (isKindOfClass & 1) != 0))
  {
    [*(a1 + 32) setHomeManagerZone:v10];
    [*(a1 + 32) _createZones:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v5);
    }
  }
}

void __41__HMDCloudCache__createZones_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14 && !v5 && ((v6 = v14, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) ? (v8 = 0) : (v8 = v6), v9 = v8, v6, (isKindOfClass & 1) != 0))
  {
    v10 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v11 = [*(a1 + 32) homeZones];
    v12 = [*(a1 + 40) zoneName];
    [v11 setObject:v6 forKeyedSubscript:v12];

    os_unfair_lock_unlock(v10 + 2);
    [*(a1 + 32) _createZones:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, v5);
    }
  }
}

- (id)_findStoreCacheZone:(id)a3 byName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 zoneName];
          v13 = [v6 isEqualToString:v12];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDCloudHomeManagerZone)homeManagerZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeManagerZone;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHomeManagerZone:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  homeManagerZone = self->_homeManagerZone;
  self->_homeManagerZone = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDCloudMetadataZone)metadataZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_metadataZone;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMetadataZone:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  metadataZone = self->_metadataZone;
  self->_metadataZone = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDCloudLegacyZone)legacyZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_legacyZone;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLegacyZone:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  legacyZone = self->_legacyZone;
  self->_legacyZone = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDCloudZone)homeDataInformation
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeDataInformation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHomeDataInformation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  homeDataInformation = self->_homeDataInformation;
  self->_homeDataInformation = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDCloudCache)initWithBackingStore:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMDCloudCache;
  v8 = [(HMDCloudCache *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workQueue, a4);
    objc_storeWeak(&v9->_backingStore, v6);
    v10 = [MEMORY[0x277CBEB38] dictionary];
    homeZones = v9->_homeZones;
    v9->_homeZones = v10;
  }

  return v9;
}

- (HMDCloudCache)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end