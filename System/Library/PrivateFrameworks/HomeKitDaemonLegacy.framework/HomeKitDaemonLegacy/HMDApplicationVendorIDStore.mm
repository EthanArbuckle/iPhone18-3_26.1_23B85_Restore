@interface HMDApplicationVendorIDStore
+ (HMDApplicationVendorIDStore)sharedStore;
- (HMDApplicationVendorIDStore)init;
- (HMDApplicationVendorIDStore)initWithCoder:(id)a3;
- (id)_machOUUIDsForApplicationBundleID:(id)a3;
- (id)_vendorIDForApplicationBundleID:(id)a3;
- (id)machOUUIDForApplicationBundleID:(id)a3;
- (id)vendorIDForApplicationBundleID:(id)a3;
- (void)_extractVendorIDForApplicationBundleID:(id)a3;
- (void)_handleApplicationUninstalledNotification:(id)a3;
- (void)_save;
- (void)addVendorID:(id)a3 applicationBundleID:(id)a4;
- (void)addVendorID:(id)a3 applicationBundleID:(id)a4 companionAppBundleID:(id)a5;
- (void)addVendorID:(id)a3 applicationBundleID:(id)a4 isSPIClient:(BOOL)a5;
- (void)checkCorrectness;
- (void)encodeWithCoder:(id)a3;
- (void)removeVendorIDForApplicationBundleID:(id)a3;
@end

@implementation HMDApplicationVendorIDStore

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
  v5 = [v6 copy];
  [v4 encodeObject:v5 forKey:@"HM.vendorIDStore"];
}

- (HMDApplicationVendorIDStore)initWithCoder:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDApplicationVendorIDStore *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HM.vendorIDStore"];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved application vendor ID store: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v9 mutableCopy];
      applicationVendorIDMapping = v11->_applicationVendorIDMapping;
      v11->_applicationVendorIDMapping = v14;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_handleApplicationUninstalledNotification:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDApplicationVendorIDStore__handleApplicationUninstalledNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(clientQueue, v7);
}

void __73__HMDApplicationVendorIDStore__handleApplicationUninstalledNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v6 = [v4 bundleIdentifier];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) removeVendorIDForApplicationBundleID:v6];
    v5 = v6;
  }
}

- (id)_machOUUIDsForApplicationBundleID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDApplicationVendorIDStore *)self applicationMachUUIDMapping];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 machOUUIDs];
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v16 = 138543874;
        v17 = v12;
        v18 = 2112;
        v19 = v4;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating Mach UUID mapping with application bundle ID %@ and %@", &v16, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [(HMDApplicationVendorIDStore *)v10 applicationMachUUIDMapping];
      [v13 setObject:v6 forKeyedSubscript:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)machOUUIDForApplicationBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__92400;
  v16 = __Block_byref_object_dispose__92401;
  v17 = 0;
  v5 = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDApplicationVendorIDStore_machOUUIDForApplicationBundleID___block_invoke;
  block[3] = &unk_279735BC0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__HMDApplicationVendorIDStore_machOUUIDForApplicationBundleID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _machOUUIDsForApplicationBundleID:*(a1 + 40)];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_save
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDApplicationVendorIDStore *)v4 applicationVendorIDMapping];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Archiving vendor id store %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [HMDPersistentStore archiveVendorStore:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeVendorIDForApplicationBundleID:(id)a3
{
  v4 = a3;
  v5 = [(HMDApplicationVendorIDStore *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDApplicationVendorIDStore_removeVendorIDForApplicationBundleID___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__HMDApplicationVendorIDStore_removeVendorIDForApplicationBundleID___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) applicationVendorIDMapping];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v24 = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unknown application %@, cannot remove", &v24, 0x16u);
    }

    goto LABEL_7;
  }

  v4 = [v3 isSPIClient];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@This is an internal client, do not remove it.", &v24, 0xCu);
    }

LABEL_7:

    objc_autoreleasePoolPop(v5);
    goto LABEL_17;
  }

  if (v8)
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v24 = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing mapping for application bundle id %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v14 = [*(a1 + 32) applicationVendorIDMapping];
  [v14 removeObjectForKey:*(a1 + 40)];

  if (isWatch())
  {
    v15 = [v3 companionAppBundleID];

    if (v15)
    {
      v16 = [*(a1 + 32) applicationVendorIDMapping];
      v17 = [v3 companionAppBundleID];
      [v16 removeObjectForKey:v17];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@WatchOS : Companion app does not exist for %@. Hence not removing the mapping.", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  [*(a1 + 32) _save];
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addVendorID:(id)a3 applicationBundleID:(id)a4 companionAppBundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDApplicationVendorIDStore *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HMDApplicationVendorIDStore_addVendorID_applicationBundleID_companionAppBundleID___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)addVendorID:(id)a3 applicationBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDApplicationVendorIDStore_addVendorID_applicationBundleID___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)addVendorID:(id)a3 applicationBundleID:(id)a4 isSPIClient:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HMDApplicationVendorIDStore *)self clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HMDApplicationVendorIDStore_addVendorID_applicationBundleID_isSPIClient___block_invoke;
  v13[3] = &unk_279731C38;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_extractVendorIDForApplicationBundleID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v15];
  v6 = v15;
  if (v5)
  {
    v7 = [v5 deviceIdentifierForVendor];
    v8 = [v7 UUIDString];
    v9 = [v8 hm_generateSHA1];

    [(HMDApplicationVendorIDStore *)self _setAndSaveVendorID:v9 applicationBundleID:v4 companionAppBundleID:0 isSPIClient:0];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Bundle ID: %@ cannot be extracted (or cannot determine): %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_vendorIDForApplicationBundleID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    if (isWatch())
    {
      v6 = 0;
    }

    else
    {
      [(HMDApplicationVendorIDStore *)self _extractVendorIDForApplicationBundleID:v4];
      v7 = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
      v6 = [v7 objectForKey:v4];

      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v6 vendorIDSHA1];
        v16 = 138543874;
        v17 = v11;
        v18 = 2112;
        v19 = v4;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@There is no vendor id for %@, newly extracted vendor id is %@", &v16, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v13 = [v6 vendorIDSHA1];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)vendorIDForApplicationBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__92400;
  v16 = __Block_byref_object_dispose__92401;
  v17 = 0;
  v5 = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDApplicationVendorIDStore_vendorIDForApplicationBundleID___block_invoke;
  block[3] = &unk_279735BC0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __62__HMDApplicationVendorIDStore_vendorIDForApplicationBundleID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _vendorIDForApplicationBundleID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)checkCorrectness
{
  v3 = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDApplicationVendorIDStore_checkCorrectness__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__HMDApplicationVendorIDStore_checkCorrectness__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [*(a1 + 32) applicationVendorIDMapping];
  v3 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  v36 = a1;
  if (v3)
  {
    v5 = v3;
    v6 = *v44;
    *&v4 = 138544130;
    v35 = v4;
    v37 = v2;
    v39 = *v44;
    do
    {
      v7 = 0;
      v40 = v5;
      do
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * v7);
        v9 = [*(a1 + 32) applicationVendorIDMapping];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (([v10 isSPIClient] & 1) == 0)
        {
          if (!isWatch() || ([v10 companionAppBundleID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
          {
            v12 = objc_alloc(MEMORY[0x277CC1E70]);
            v42 = 0;
            v13 = [v12 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v42];
            v14 = v42;
            if (v13)
            {
              v15 = [v13 deviceIdentifierForVendor];
              v16 = [v15 UUIDString];
              v17 = [v16 hm_generateSHA1];

              v18 = [v10 vendorIDSHA1];
              LOBYTE(v16) = [v17 isEqualToData:v18];

              if ((v16 & 1) == 0)
              {
                context = objc_autoreleasePoolPush();
                v19 = *(a1 + 32);
                v20 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v21 = HMFGetLogIdentifier();
                  v22 = [v10 vendorIDSHA1];
                  *buf = v35;
                  v48 = v21;
                  v49 = 2112;
                  v50 = v22;
                  v51 = 2112;
                  v52 = v17;
                  v53 = 2112;
                  v54 = v8;
                  _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Vendor IDs are mismatching (Known: %@, Now: %@) for bundle ID: %@", buf, 0x2Au);

                  v2 = v37;
                  a1 = v36;
                }

                objc_autoreleasePoolPop(context);
                [v2 addObject:v8];
                if (isWatch())
                {
                  v23 = [v10 companionAppBundleID];
                  [v2 addObject:v23];

                  a1 = v36;
                }
              }

              v6 = v39;
LABEL_20:

              v5 = v40;
            }

            else
            {
              v24 = objc_autoreleasePoolPush();
              v25 = *(a1 + 32);
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543874;
                v48 = v27;
                v49 = 2112;
                v50 = v8;
                v51 = 2112;
                v52 = v14;
                _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Bundle ID: %@ does not exist (or cannot determine) anymore, removing it from the store: %@", buf, 0x20u);

                v5 = v40;
              }

              objc_autoreleasePoolPop(v24);
              v2 = v37;
              [v37 addObject:v8];
              v6 = v39;
              if (isWatch())
              {
                v17 = [v10 companionAppBundleID];
                [v37 addObject:v17];
                goto LABEL_20;
              }
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v31;
      v49 = 2112;
      v50 = v2;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Removing the entries for bundle IDs: %@ from the store", buf, 0x16u);

      a1 = v36;
    }

    objc_autoreleasePoolPop(v28);
    [*(a1 + 32) applicationVendorIDMapping];
    v33 = v32 = a1;
    [v33 removeObjectsForKeys:v2];

    [*(v32 + 32) _save];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (HMDApplicationVendorIDStore)init
{
  v14.receiver = self;
  v14.super_class = HMDApplicationVendorIDStore;
  v2 = [(HMDApplicationVendorIDStore *)&v14 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    applicationVendorIDMapping = v2->_applicationVendorIDMapping;
    v2->_applicationVendorIDMapping = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    applicationMachUUIDMapping = v2->_applicationMachUUIDMapping;
    v2->_applicationMachUUIDMapping = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel__handleApplicationUninstalledNotification_ name:@"HMDApplicationUninstalledNotification" object:0];
  }

  return v2;
}

+ (HMDApplicationVendorIDStore)sharedStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDApplicationVendorIDStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedStore_onceToken != -1)
  {
    dispatch_once(&sharedStore_onceToken, block);
  }

  v2 = sharedStore_sharedStore;

  return v2;
}

uint64_t __42__HMDApplicationVendorIDStore_sharedStore__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[HMDPersistentStore unarchiveVendorStore];
  v3 = sharedStore_sharedStore;
  sharedStore_sharedStore = v2;

  v4 = sharedStore_sharedStore;
  if (!sharedStore_sharedStore)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@No archived vendor ID store, creating a new one", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_alloc_init(HMDApplicationVendorIDStore);
    v10 = sharedStore_sharedStore;
    sharedStore_sharedStore = v9;

    v4 = sharedStore_sharedStore;
  }

  result = [v4 checkCorrectness];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end