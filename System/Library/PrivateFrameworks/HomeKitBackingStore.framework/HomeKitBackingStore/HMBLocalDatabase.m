@interface HMBLocalDatabase
+ (id)logCategory;
- (BOOL)removeLocalDataForZone:(id)a3 error:(id *)a4;
- (BOOL)reopenZone:(id)a3 error:(id *)a4;
- (HMBLocalDatabase)initWithDatastorePath:(id)a3 configuration:(id)a4 error:(id *)a5;
- (HMBLocalDatabase)initWithLocalSQLContext:(id)a3 configuration:(id)a4;
- (HMBLocalDatabaseDelegate)delegate;
- (id)_openZoneWithZoneID:(id)a3 mirror:(id)a4 configuration:(id)a5 existingLocalZone:(id)a6 error:(id *)a7;
- (id)fetchZonesWithError:(id *)a3;
- (id)logIdentifier;
- (id)openZoneWithMirror:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)openZoneWithZoneID:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)removeZone:(id)a3;
- (void)dealloc;
- (void)handleLocalZoneShutdown:(id)a3;
@end

@implementation HMBLocalDatabase

- (HMBLocalDatabaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMBLocalDatabase *)self local];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)handleLocalZoneShutdown:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMBLocalDatabase *)self openZonesByZoneID];
  v5 = [v7 zoneID];
  v6 = [v5 token];
  [v4 removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)removeLocalDataForZone:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v10;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing local data for zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMBLocalDatabase *)v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v6 zoneID];
    [v11 localDatabase:v8 willRemoveZoneWithID:v12];
  }

  os_unfair_lock_lock_with_options();
  v27 = 0;
  v13 = [v6 destroyWithError:&v27];
  v14 = v27;
  v15 = [(HMBLocalDatabase *)v8 openZonesByZoneID];
  v16 = [v6 zoneID];
  v17 = [v16 token];
  [v15 removeObjectForKey:v17];

  os_unfair_lock_unlock(&v8->_lock);
  v18 = objc_autoreleasePoolPush();
  v19 = v8;
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (v13)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@Successfully removed local data for zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove local data for zone %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    if (a4)
    {
      v24 = v14;
      *a4 = v14;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)removeZone:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing local zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 mirror];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing local zone mirror: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v9 destroy];
  }

  else
  {
    v19 = 0;
    v15 = [(HMBLocalDatabase *)v6 removeLocalDataForZone:v4 error:&v19];
    v16 = v19;
    if (v15)
    {
      [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      [MEMORY[0x277D2C900] futureWithError:v16];
    }
    v14 = ;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)reopenZone:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 configuration];
    v9 = [v8 mutableCopy];

    [v9 setCreateIfNeeded:1];
    v10 = [v7 zoneID];
    v11 = [v7 mirror];
    v12 = [(HMBLocalDatabase *)self _openZoneWithZoneID:v10 mirror:v11 configuration:v9 existingLocalZone:v7 error:a4];
    v13 = v12 != 0;

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMBLocalDatabase *)v15 openZoneWithMirror:v16 configuration:v17 error:v18, v19];
  }
}

- (id)openZoneWithMirror:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return [(HMBLocalDatabase *)v14 openZoneWithZoneID:v15 configuration:v16 error:v17, v18];
  }

  v11 = [v8 zoneID];
  v12 = [(HMBLocalDatabase *)self _openZoneWithZoneID:v11 mirror:v8 configuration:v10 existingLocalZone:0 error:a5];

  return v12;
}

- (id)openZoneWithZoneID:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(HMBLocalDatabase *)v13 _openZoneWithZoneID:v14 mirror:v15 configuration:v16 existingLocalZone:v17 error:v18, v19];
  }

  v11 = [(HMBLocalDatabase *)self _openZoneWithZoneID:v8 mirror:0 configuration:v9 existingLocalZone:0 error:a5];

  return v11;
}

- (id)_openZoneWithZoneID:(id)a3 mirror:(id)a4 configuration:(id)a5 existingLocalZone:(id)a6 error:(id *)a7
{
  v94 = *MEMORY[0x277D85DE8];
  v77 = a3;
  v73 = a4;
  v75 = a5;
  v74 = a6;
  os_unfair_lock_lock_with_options();
  v76 = self;
  v11 = [(HMBLocalDatabase *)self openZonesByZoneID];
  v12 = [v77 token];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = [v13 delegate];
    v15 = [v75 delegate];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    if (v14 && v15 && v14 != v15)
    {
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v77;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot set a new delegate on local zone with identifier %@ because that local zone has already been opened with a different delegate", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (a7)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:1];
        *a7 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_INFO, "%{public}@Returning existing HMBLocalZone instance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = v13;
    }

LABEL_41:
    goto LABEL_42;
  }

  v21 = self;
  v70 = v77;
  os_unfair_lock_assert_owner(&self->_lock);
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__3415;
  v88 = __Block_byref_object_dispose__3416;
  v89 = 0;
  v71 = v21;
  v22 = [(HMBLocalDatabase *)v21 local];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = ____fetchStoreInfo_block_invoke;
  v83[3] = &unk_2786E1A10;
  v83[4] = &v84;
  v23 = [v22 sqlBlockWithActivity:0 block:v83];

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v27 = [v70 token];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v28 = v85[5];
    v24 = [v28 countByEnumeratingWithState:&v79 objects:buf count:16];
    if (v24)
    {
      v29 = *v80;
      while (2)
      {
        for (i = 0; i != v24; i = (i + 1))
        {
          if (*v80 != v29)
          {
            objc_enumerationMutation(v28);
          }

          v31 = *(*(&v79 + 1) + 8 * i);
          v32 = [v31 identifier];
          v33 = [v32 token];
          v34 = [v33 isEqual:v27];

          if (v34)
          {
            v24 = v31;
            goto LABEL_26;
          }
        }

        v24 = [v28 countByEnumeratingWithState:&v79 objects:buf count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }

  _Block_object_dispose(&v84, 8);
  if (v24)
  {
LABEL_28:
    v35 = objc_autoreleasePoolPush();
    v36 = v71;
    if (v74)
    {
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = v74;
        _os_log_impl(&dword_22AD27000, v37, OS_LOG_TYPE_INFO, "%{public}@Using re-opened HMBLocalZone instance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = v74;
      [v39 setZoneRow:{-[HMBLocalSQLContextRowZone zoneRow](v24, "zoneRow")}];
    }

    else
    {
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v70;
        _os_log_impl(&dword_22AD27000, v50, OS_LOG_TYPE_INFO, "%{public}@Creating new HMBLocalZone instance with ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v52 = [(HMBLocalDatabase *)v36 localZoneFactory];
      v53 = [(HMBLocalSQLContextRowZone *)v24 identifier];
      v39 = (v52)[2](v52, v36, v53, [(HMBLocalSQLContextRowZone *)v24 zoneRow], v75, v73);
    }

    v54 = [(HMBLocalDatabase *)v36 openZonesByZoneID];
    v55 = [v39 zoneID];
    v56 = [v55 token];
    [v54 setObject:v39 forKey:v56];

    v13 = v39;
    v14 = v24;
    v20 = v13;
    goto LABEL_41;
  }

  if ([v75 createIfNeeded])
  {
    v40 = objc_autoreleasePoolPush();
    v41 = v71;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v43;
      *&buf[12] = 2112;
      *&buf[14] = v70;
      _os_log_impl(&dword_22AD27000, v42, OS_LOG_TYPE_INFO, "%{public}@Creating new state for local zone with ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v78 = 0;
    v44 = v70;
    v45 = v41;
    os_unfair_lock_assert_owner(&v76->_lock);
    v46 = objc_alloc_init(HMBLocalSQLContextRowZone);
    v47 = [(HMBLocalDatabase *)v45 local];

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____createZone_block_invoke;
    v91 = &unk_2786E1B00;
    v48 = v46;
    v92 = v48;
    v49 = v44;
    v93 = v49;
    [v47 sqlBlockWithActivity:0 error:&v78 block:buf];

    if ([(HMBLocalSQLContextRowZone *)v48 zoneRow])
    {
      [(HMBLocalSQLContextRowZone *)v48 setIdentifier:v49];
      v24 = v48;
    }

    else
    {
      v24 = 0;
    }

    v64 = v78;
    v14 = v64;
    if (!v24)
    {
      v65 = objc_autoreleasePoolPush();
      v66 = v45;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v68;
        *&buf[12] = 2112;
        *&buf[14] = v49;
        *&buf[22] = 2112;
        v91 = v14;
        _os_log_impl(&dword_22AD27000, v67, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new state for local zone with ID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v65);
      if (a7)
      {
        v69 = v14;
        v13 = 0;
        v20 = 0;
        *a7 = v14;
      }

      else
      {
        v13 = 0;
        v20 = 0;
      }

      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  }

  v59 = objc_autoreleasePoolPush();
  v60 = v71;
  v61 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = HMFGetLogIdentifier();
    v63 = [v70 name];
    *buf = 138543618;
    *&buf[4] = v62;
    *&buf[12] = 2112;
    *&buf[14] = v63;
    _os_log_impl(&dword_22AD27000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unable to open local zone that does not already exist and can't be created: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v59);
  v13 = 0;
  v20 = 0;
LABEL_42:

  os_unfair_lock_unlock(&v76->_lock);
  v57 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)fetchZonesWithError:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3415;
  v31 = __Block_byref_object_dispose__3416;
  v32 = 0;
  v4 = [(HMBLocalDatabase *)self local];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __40__HMBLocalDatabase_fetchZonesWithError___block_invoke;
  v26[3] = &unk_2786E1A10;
  v26[4] = &v27;
  v20 = [v4 sqlBlockWithActivity:0 block:v26];

  if (v20)
  {
    if (a3)
    {
      v5 = v20;
      v6 = 0;
      v7 = v20;
      *a3 = v20;
      goto LABEL_14;
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v28[5], "count")}];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v28[5];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [HMBLocalZoneIDRow alloc];
          v13 = [v11 identifier];
          v14 = [v13 name];
          v15 = [v11 identifier];
          v16 = [v15 token];
          v17 = [(HMBLocalZoneIDRow *)v12 initWithName:v14 token:v16];
          [v6 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
      }

      while (v8);
    }
  }

  v7 = v20;
LABEL_14:

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

id __40__HMBLocalDatabase_fetchZonesWithError___block_invoke(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 _fetchAllZones:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  return v4;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMBLocalDatabase", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMBLocalDatabase;
  [(HMBLocalDatabase *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMBLocalDatabase)initWithLocalSQLContext:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v21 = _HMFPreconditionFailure();
    return __58__HMBLocalDatabase_initWithLocalSQLContext_configuration___block_invoke(v21);
  }

  v22.receiver = self;
  v22.super_class = HMBLocalDatabase;
  v10 = [(HMBLocalDatabase *)&v22 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v10->_queue;
    v10->_queue = v11;

    [(NSOperationQueue *)v10->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_queue setQualityOfService:25];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.HomeKitBackingStore.LocalDatabase"];
    [(NSOperationQueue *)v10->_queue setName:v13];

    v14 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    openZonesByZoneID = v10->_openZonesByZoneID;
    v10->_openZonesByZoneID = v14;

    v16 = [v9 modelContainer];
    modelContainer = v10->_modelContainer;
    v10->_modelContainer = v16;

    objc_storeStrong(&v10->_local, a3);
    localZoneFactory = v10->_localZoneFactory;
    v10->_localZoneFactory = &__block_literal_global_3433;

    v19 = v10;
  }

  return v10;
}

HMBLocalZone *__58__HMBLocalDatabase_initWithLocalSQLContext_configuration___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = a2;
  v14 = [[HMBLocalZone alloc] initWithLocalDatabase:v13 zoneID:v12 zoneRow:a4 configuration:v11 mirror:v10];

  return v14;
}

- (HMBLocalDatabase)initWithDatastorePath:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  v21 = 0;
  v11 = [HMBLocalSQLContext openWithURL:v8 error:&v21];
  v12 = v21;
  if (v11)
  {
    v13 = [(HMBLocalDatabase *)self initWithLocalSQLContext:v11 configuration:v10];
    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v13 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to open SQL context for HMBLocalDatabase initialization: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    if (a5)
    {
      v18 = v12;
      v14 = 0;
      *a5 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_3449 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_3449, &__block_literal_global_35);
  }

  v3 = logCategory__hmf_once_v21_3450;

  return v3;
}

uint64_t __31__HMBLocalDatabase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_3450;
  logCategory__hmf_once_v21_3450 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end