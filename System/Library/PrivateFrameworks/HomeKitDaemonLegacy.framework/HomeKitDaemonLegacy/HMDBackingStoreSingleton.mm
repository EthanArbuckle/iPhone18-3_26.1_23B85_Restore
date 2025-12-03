@interface HMDBackingStoreSingleton
+ (id)logCategory;
+ (void)resetClassMappings;
+ (void)resetSchemaHash;
+ (void)setClass:(Class)class forClassName:(id)name;
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
  v13 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  if (WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  objc_storeWeak(&self->_homeManager, managerCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)resetBackingStore
{
  local = [(HMDBackingStoreSingleton *)self local];
  v3 = [local flush:1];

  return v3;
}

- (id)flushBackingStore
{
  local = [(HMDBackingStoreSingleton *)self local];
  v3 = [local flush:0];

  return v3;
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
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HMDBackingStoreSingleton;
  v2 = [(HMDBackingStoreSingleton *)&v25 init];
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
  objectPropertyHashLookup = [v3 objectPropertyHashLookup];
  [objectPropertyHashLookup removeAllObjects];
}

+ (void)resetClassMappings
{
  v4 = +[HMDBackingStoreSingleton sharedInstance];
  nameToClassTransform = [v4 nameToClassTransform];
  [nameToClassTransform removeAllObjects];

  classToNameTransform = [v4 classToNameTransform];
  [classToNameTransform removeAllObjects];
}

+ (void)setClass:(Class)class forClassName:(id)name
{
  nameCopy = name;
  v5 = +[HMDBackingStoreSingleton sharedInstance];
  nameToClassTransform = [v5 nameToClassTransform];
  v7 = [nameToClassTransform objectForKey:nameCopy];

  if (v7)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Only one class name transformation for %@ may be specified in the BackingStore", nameCopy];
    v13 = [v10 exceptionWithName:v11 reason:nameCopy userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  nameToClassTransform2 = [v5 nameToClassTransform];
  [nameToClassTransform2 setObject:class forKey:nameCopy];

  classToNameTransform = [v5 classToNameTransform];
  [classToNameTransform setObject:nameCopy forKey:class];
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