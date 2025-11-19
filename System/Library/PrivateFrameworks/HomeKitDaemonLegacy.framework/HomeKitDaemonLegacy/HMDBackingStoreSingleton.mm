@interface HMDBackingStoreSingleton
+ (id)logCategory;
+ (void)resetClassMappings;
+ (void)resetSchemaHash;
+ (void)setClass:(Class)a3 forClassName:(id)a4;
+ (void)start;
- (HMDBackingStoreSingleton)init;
- (HMDHomeManager)homeManager;
- (id)flushBackingStore;
- (id)resetBackingStore;
- (id)schemaHashForObject:(id)a3;
- (void)setHomeManager:(id)a3;
@end

@implementation HMDBackingStoreSingleton

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)setHomeManager:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  if (WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_FAULT, "%{public}@HMDBackingStoreSingleton's homeManager is being set more than once per process lifecycle", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  objc_storeWeak(&self->_homeManager, v4);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)resetBackingStore
{
  v2 = [(HMDBackingStoreSingleton *)self local];
  v3 = [v2 flush:1];

  return v3;
}

- (id)flushBackingStore
{
  v2 = [(HMDBackingStoreSingleton *)self local];
  v3 = [v2 flush:0];

  return v3;
}

- (id)schemaHashForObject:(id)a3
{
  v4 = a3;
  v5 = [(HMDBackingStoreSingleton *)self objectPropertyHashLookup];
  v6 = [v4 bsoType];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = [objc_opt_class() bsoSchemaHash];
    v8 = [(HMDBackingStoreSingleton *)self objectPropertyHashLookup];
    v9 = [v4 bsoType];
    [v8 setObject:v7 forKey:v9];
  }

  v10 = v7;

  return v10;
}

- (HMDBackingStoreSingleton)init
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HMDBackingStoreSingleton;
  v2 = [(HMDBackingStoreSingleton *)&v25 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    objectLookup = v2->_objectLookup;
    v2->_objectLookup = v3;

    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    classToNameTransform = v2->_classToNameTransform;
    v2->_classToNameTransform = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    nameToClassTransform = v2->_nameToClassTransform;
    v2->_nameToClassTransform = v7;

    v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objectPropertyHashLookup = v2->_objectPropertyHashLookup;
    v2->_objectPropertyHashLookup = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v2->_queue;
    v2->_queue = v11;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    if (isWatch())
    {
      v13 = sqlitePath;
      [HMDBackingStoreLocal cleanDatastoreFilesAt:v13 everything:1];
    }

    else
    {
      v14 = [HMDBackingStoreLocal alloc];
      v15 = sqlitePath;
      v16 = [(HMDBackingStoreLocal *)v14 initWithDatastore:v15];
      local = v2->_local;
      v2->_local = v16;

      if (!v2->_local)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v2;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v27 = v21;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to create our local storage.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
      }
    }

    v22 = v2;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_164206 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_164206, &__block_literal_global_275_164207);
  }

  v3 = logCategory__hmf_once_v51_164208;

  return v3;
}

uint64_t __39__HMDBackingStoreSingleton_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51_164208;
  logCategory__hmf_once_v51_164208 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)resetSchemaHash
{
  v3 = +[HMDBackingStoreSingleton sharedInstance];
  v2 = [v3 objectPropertyHashLookup];
  [v2 removeAllObjects];
}

+ (void)resetClassMappings
{
  v4 = +[HMDBackingStoreSingleton sharedInstance];
  v2 = [v4 nameToClassTransform];
  [v2 removeAllObjects];

  v3 = [v4 classToNameTransform];
  [v3 removeAllObjects];
}

+ (void)setClass:(Class)a3 forClassName:(id)a4
{
  v15 = a4;
  v5 = +[HMDBackingStoreSingleton sharedInstance];
  v6 = [v5 nameToClassTransform];
  v7 = [v6 objectForKey:v15];

  if (v7)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only one class name transformation for %@ may be specified in the BackingStore", v15];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v8 = [v5 nameToClassTransform];
  [v8 setObject:a3 forKey:v15];

  v9 = [v5 classToNameTransform];
  [v9 setObject:v15 forKey:a3];
}

+ (void)start
{
  if (start_onceToken != -1)
  {
    dispatch_once(&start_onceToken, &__block_literal_global_261);
  }
}

void __33__HMDBackingStoreSingleton_start__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.sqlite3-init."];
  v2 = objc_alloc_init(HMDBackingStoreSingleton);
  v3 = _sharedInstance;
  _sharedInstance = v2;

  objc_autoreleasePoolPop(v0);
}

@end