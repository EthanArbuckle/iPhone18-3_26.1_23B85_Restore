@interface HMDSoftwareUpdateDocumentationManager
+ (HMDSoftwareUpdateDocumentationManager)sharedManager;
+ (id)logCategory;
- (HMDSoftwareUpdateDocumentationManager)init;
- (HMDSoftwareUpdateDocumentationManager)initWithFileManager:(id)manager;
- (NSArray)assets;
- (id)assetForDocumentationMetadata:(id)metadata;
- (void)addAsset:(id)asset;
- (void)auditAsset:(id)asset;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)parseCachedAssets;
- (void)registerDocumentationMetadata:(id)metadata;
- (void)removeAsset:(id)asset;
- (void)unregisterDocumentationMetadata:(id)metadata;
@end

@implementation HMDSoftwareUpdateDocumentationManager

- (void)networkMonitorIsReachable:(id)reachable
{
  v29 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Network is reachable, starting automatic caching", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  assets = [(HMDSoftwareUpdateDocumentationManager *)selfCopy assets];
  v9 = [assets countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(assets);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 shouldAutomaticallyCache] && objc_msgSend(v13, "state") <= 3)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = selfCopy;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v25 = v17;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting automatic caching for asset: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          [v13 startCaching];
        }
      }

      v10 = [assets countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)auditAsset:(id)asset
{
  v35 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dispatch_assert_queue_V2(self->_queue);
  if (assetCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v8;
      v33 = 2112;
      v34 = assetCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Auditing asset: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    registeredMetadata = [(HMDSoftwareUpdateDocumentationManager *)selfCopy registeredMetadata];
    v10 = [registeredMetadata countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(registeredMetadata);
          }

          observedObject = [*(*(&v26 + 1) + 8 * v13) observedObject];
          metadata = [assetCopy metadata];
          v16 = [observedObject isEqual:metadata];

          if (v16)
          {

            v21 = objc_autoreleasePoolPush();
            v22 = selfCopy;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543618;
              v32 = v24;
              v33 = 2112;
              v34 = assetCopy;
              _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Asset still in use: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            goto LABEL_18;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [registeredMetadata countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = assetCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Asset no longer in use, removing: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [assetCopy purgeWithError:0];
    [(HMDSoftwareUpdateDocumentationManager *)v18 removeAsset:assetCopy];
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)assetForDocumentationMetadata:(id)metadata
{
  v19 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  assets = [(HMDSoftwareUpdateDocumentationManager *)self assets];
  v6 = [assets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(assets);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        metadata = [v9 metadata];
        v11 = [metadata isEqual:metadataCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [assets countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)removeAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    v9 = assetCopy;
    os_unfair_recursive_lock_lock_with_options();
    v5 = [(NSMutableOrderedSet *)self->_assets indexOfObject:v9];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
      v7 = NSStringFromSelector(sel_assets);
      [(HMDSoftwareUpdateDocumentationManager *)self willChange:3 valuesAtIndexes:v6 forKey:v7];

      [(NSMutableOrderedSet *)self->_assets removeObject:v9];
      v8 = NSStringFromSelector(sel_assets);
      [(HMDSoftwareUpdateDocumentationManager *)self didChange:3 valuesAtIndexes:v6 forKey:v8];
    }

    os_unfair_recursive_lock_unlock();
    assetCopy = v9;
  }
}

- (void)addAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    v8 = assetCopy;
    os_unfair_recursive_lock_lock_with_options();
    if (([(NSMutableOrderedSet *)self->_assets containsObject:v8]& 1) == 0)
    {
      v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[NSMutableOrderedSet count](self->_assets, "count")}];
      v6 = NSStringFromSelector(sel_assets);
      [(HMDSoftwareUpdateDocumentationManager *)self willChange:2 valuesAtIndexes:v5 forKey:v6];

      [(NSMutableOrderedSet *)self->_assets addObject:v8];
      v7 = NSStringFromSelector(sel_assets);
      [(HMDSoftwareUpdateDocumentationManager *)self didChange:2 valuesAtIndexes:v5 forKey:v7];
    }

    os_unfair_recursive_lock_unlock();
    assetCopy = v8;
  }
}

- (NSArray)assets
{
  os_unfair_recursive_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)self->_assets array];
  v4 = [array copy];

  os_unfair_recursive_lock_unlock();

  return v4;
}

- (void)unregisterDocumentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__HMDSoftwareUpdateDocumentationManager_unregisterDocumentationMetadata___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = metadataCopy;
    dispatch_async(queue, v7);
  }
}

void __73__HMDSoftwareUpdateDocumentationManager_unregisterDocumentationMetadata___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) registeredMetadata];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 observedObject];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 32);
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v15 = *(a1 + 40);
            *buf = 138543618;
            v23 = v14;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Unregistering metadata: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          v16 = [*(a1 + 32) registeredMetadata];
          [v16 removeObject:v8];

          v3 = [*(a1 + 32) assetForDocumentationMetadata:*(a1 + 40)];
          if (v3)
          {
            [*(a1 + 32) auditAsset:v3];
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerDocumentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__HMDSoftwareUpdateDocumentationManager_registerDocumentationMetadata___block_invoke;
    v7[3] = &unk_2797359B0;
    v8 = metadataCopy;
    selfCopy = self;
    dispatch_async(queue, v7);
  }
}

void __71__HMDSoftwareUpdateDocumentationManager_registerDocumentationMetadata___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D0F898]) initWithObservedObject:*(a1 + 32)];
  v3 = [*(a1 + 40) registeredMetadata];
  v4 = [v3 containsObject:v2];

  if ((v4 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      *buf = 138543618;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 40) registeredMetadata];
    [v10 addObject:v2];

    v11 = [*(a1 + 40) assetForDocumentationMetadata:*(a1 + 32)];
    if (!v11)
    {
      v11 = [[HMDSoftwareUpdateDocumentationAsset alloc] initWithDocumentationMetadata:*(a1 + 32)];
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v15;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new documentation asset: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 40) addAsset:v11];
    }

    objc_initWeak(buf, *(a1 + 40));
    objc_initWeak(&location, v11);
    objc_initWeak(&from, v2);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__HMDSoftwareUpdateDocumentationManager_registerDocumentationMetadata___block_invoke_12;
    v17[3] = &unk_27972D160;
    objc_copyWeak(&v18, buf);
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, &from);
    [v2 setDeallocationBlock:v17];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDSoftwareUpdateDocumentationManager_registerDocumentationMetadata___block_invoke_12(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = v4;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDSoftwareUpdateDocumentationManager_registerDocumentationMetadata___block_invoke_2;
      block[3] = &unk_279734960;
      v8 = v4;
      v9 = WeakRetained;
      v10 = v3;
      dispatch_async(v6, block);
    }
  }
}

uint64_t __71__HMDSoftwareUpdateDocumentationManager_registerDocumentationMetadata___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) registeredMetadata];
    [v2 removeObject:*(a1 + 32)];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 auditAsset:v4];
}

- (void)parseCachedAssets
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDSoftwareUpdateDocumentationManager_parseCachedAssets__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __58__HMDSoftwareUpdateDocumentationManager_parseCachedAssets__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Parsing cached assets", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) fileManager];
  v7 = +[HMDSoftwareUpdateDocumentationAsset assetDirectoryURL];
  v50 = 0;
  v8 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:0 error:&v50];
  v9 = v50;

  if (v8)
  {
    v40 = v9;
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v41 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    p_vtable = &OBJC_METACLASS___HMDAccessoryFirmwareUpdateTimeWindowPolicy.vtable;
    if (v11)
    {
      v13 = v11;
      v14 = *v47;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          v17 = [*(a1 + 32) fileManager];
          v18 = [p_vtable + 507 assetWithURL:v16 fileManager:v17];

          if (v18)
          {
            [*(a1 + 32) addAsset:v18];
            [v10 addObject:v18];
            if ([v18 shouldAutomaticallyCache])
            {
              if ([v18 state] <= 3)
              {
                v19 = objc_autoreleasePoolPush();
                v20 = *(a1 + 32);
                v21 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  HMFGetLogIdentifier();
                  v23 = v22 = v10;
                  *buf = 138543618;
                  v53 = v23;
                  v54 = 2112;
                  v55 = v18;
                  _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Starting automatic caching of asset: %@", buf, 0x16u);

                  v10 = v22;
                  p_vtable = (&OBJC_METACLASS___HMDAccessoryFirmwareUpdateTimeWindowPolicy + 24);
                }

                objc_autoreleasePoolPop(v19);
                [v18 startCaching];
              }
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v13);
    }

    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v27;
      v54 = 2112;
      v55 = v10;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Found cached assets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Will purge unregistered assets in 60s", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    objc_initWeak(buf, *(a1 + 32));
    v32 = dispatch_time(0, 60000000000);
    v33 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDSoftwareUpdateDocumentationManager_parseCachedAssets__block_invoke_10;
    block[3] = &unk_279732E78;
    objc_copyWeak(&v45, buf);
    v44 = v10;
    v34 = v10;
    dispatch_after(v32, v33, block);

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
    v9 = v40;
    v8 = v41;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v38;
      v54 = 2112;
      v55 = v9;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get cached assets with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __58__HMDSoftwareUpdateDocumentationManager_parseCachedAssets__block_invoke_10(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    *buf = 138543618;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Auditing cached assets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v4 auditAsset:{*(*(&v14 + 1) + 8 * v12++), v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDSoftwareUpdateDocumentationManager)initWithFileManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = HMDSoftwareUpdateDocumentationManager;
  v6 = [(HMDSoftwareUpdateDocumentationManager *)&v19 init];
  if (v6)
  {
    v7 = HMDispatchQueueNameString();
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_fileManager, manager);
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    assets = v6->_assets;
    v6->_assets = orderedSet;

    v14 = [MEMORY[0x277CBEB58] set];
    registeredMetadata = v6->_registeredMetadata;
    v6->_registeredMetadata = v14;

    v16 = objc_alloc_init(MEMORY[0x277D0F868]);
    netMonitor = v6->_netMonitor;
    v6->_netMonitor = v16;

    [(HMFNetMonitor *)v6->_netMonitor setDelegate:v6];
    [(HMDSoftwareUpdateDocumentationManager *)v6 parseCachedAssets];
  }

  return v6;
}

- (HMDSoftwareUpdateDocumentationManager)init
{
  v3 = objc_alloc_init(HMDFileManager);
  v4 = [(HMDSoftwareUpdateDocumentationManager *)self initWithFileManager:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_133858 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_133858, &__block_literal_global_133859);
  }

  v3 = logCategory__hmf_once_v16_133860;

  return v3;
}

uint64_t __52__HMDSoftwareUpdateDocumentationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_133860;
  logCategory__hmf_once_v16_133860 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDSoftwareUpdateDocumentationManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDSoftwareUpdateDocumentationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_133865 != -1)
  {
    dispatch_once(&sharedManager_onceToken_133865, block);
  }

  v2 = sharedManager_sharedManager_133866;

  return v2;
}

uint64_t __54__HMDSoftwareUpdateDocumentationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedManager_133866;
  sharedManager_sharedManager_133866 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end