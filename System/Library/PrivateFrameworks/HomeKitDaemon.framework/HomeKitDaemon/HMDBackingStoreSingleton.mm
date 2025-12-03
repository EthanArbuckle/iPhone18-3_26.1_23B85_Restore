@interface HMDBackingStoreSingleton
+ (id)logCategory;
+ (void)start;
- (HMDBackingStoreSingleton)init;
- (HMDHomeManager)homeManager;
- (id)flushBackingStore;
- (id)resetBackingStore;
- (id)schemaHashForObject:(id)object;
- (void)setHomeManager:(id)manager;
@end

@implementation HMDBackingStoreSingleton

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)setHomeManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[%@ %@] no-op because CoreData storage is enabled", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)resetBackingStore
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@+[%@ %@] no-op because CoreData storage is enabled", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)flushBackingStore
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@+[%@ %@] no-op because CoreData storage is enabled", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)schemaHashForObject:(id)object
{
  objectCopy = object;
  objectPropertyHashLookup = [(HMDBackingStoreSingleton *)self objectPropertyHashLookup];
  bsoType = [objectCopy bsoType];
  bsoSchemaHash = [objectPropertyHashLookup objectForKey:bsoType];

  if (!bsoSchemaHash)
  {
    bsoSchemaHash = [objc_opt_class() bsoSchemaHash];
    objectPropertyHashLookup2 = [(HMDBackingStoreSingleton *)self objectPropertyHashLookup];
    bsoType2 = [objectCopy bsoType];
    [objectPropertyHashLookup2 setObject:bsoSchemaHash forKey:bsoType2];
  }

  v10 = bsoSchemaHash;

  return v10;
}

- (HMDBackingStoreSingleton)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HMDBackingStoreSingleton;
  v2 = [(HMDBackingStoreSingleton *)&v24 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    objectLookup = v2->_objectLookup;
    v2->_objectLookup = strongToWeakObjectsMapTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classToNameTransform = v2->_classToNameTransform;
    v2->_classToNameTransform = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    nameToClassTransform = v2->_nameToClassTransform;
    v2->_nameToClassTransform = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objectPropertyHashLookup = v2->_objectPropertyHashLookup;
    v2->_objectPropertyHashLookup = strongToStrongObjectsMapTable3;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v2->_queue;
    v2->_queue = v11;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    isWatch();
    v13 = [HMDBackingStoreLocal alloc];
    v14 = sqlitePath;
    v15 = [(HMDBackingStoreLocal *)v13 initWithDatastore:v14];
    local = v2->_local;
    v2->_local = v15;

    if (!v2->_local)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v2;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to create our local storage.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }

    v21 = v2;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25_241846 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25_241846, &__block_literal_global_270_241847);
  }

  v3 = logCategory__hmf_once_v26_241848;

  return v3;
}

void __39__HMDBackingStoreSingleton_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v26_241848;
  logCategory__hmf_once_v26_241848 = v1;
}

+ (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@+[%@ %@] no-op because CoreData storage is enabled", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

@end