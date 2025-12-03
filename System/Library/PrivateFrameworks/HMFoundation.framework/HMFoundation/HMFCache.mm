@interface HMFCache
+ (HMFCache)defaultCache;
- (HMFCache)init;
- (HMFCache)initWithName:(id)name;
@end

@implementation HMFCache

+ (HMFCache)defaultCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMFCache_defaultCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280AFC658 != -1)
  {
    dispatch_once(&qword_280AFC658, block);
  }

  v2 = _MergedGlobals_67;

  return v2;
}

void __24__HMFCache_defaultCache__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v5 bundleIdentifier];
  v3 = [v1 initWithName:v2];
  v4 = _MergedGlobals_67;
  _MergedGlobals_67 = v3;
}

- (HMFCache)init
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v5 = [(HMFCache *)self initWithName:processName];

  return v5;
}

- (HMFCache)initWithName:(id)name
{
  v43 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v35.receiver = self;
  v35.super_class = HMFCache;
  v5 = [(HMFCache *)&v35 init];
  if (v5)
  {
    v34 = nameCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager URLsForDirectory:13 inDomains:1];

    firstObject = [v7 firstObject];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v31 = firstObject;
      v32 = v5;
      v33 = nameCopy;
      v12 = *v37;
      while (2)
      {
        v13 = v9;
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          LOBYTE(buf) = 0;
          v16 = [v15 URLByAppendingPathComponent:{v34, v31}];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          path = [v16 path];
          v19 = [defaultManager2 fileExistsAtPath:path isDirectory:&buf];
          v20 = buf;

          if (v19 && (v20 & 1) != 0)
          {
            firstObject = v15;

            v5 = v32;
            nameCopy = v33;
            v9 = v13;
            goto LABEL_13;
          }
        }

        v9 = v13;
        v11 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v5 = v32;
      nameCopy = v33;
      firstObject = v31;
    }

LABEL_13:

    if (!firstObject)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier(0);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v23;
        _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to determine preferred cache directory", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v24 = MEMORY[0x277CBEBC0];
      v25 = NSHomeDirectory();
      *&buf = v25;
      *(&buf + 1) = @"Library";
      v41 = @"Caches";
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];
      firstObject = [v24 fileURLWithPathComponents:v26];
    }

    v27 = [firstObject URLByAppendingPathComponent:v34];

    URL = v5->_URL;
    v5->_URL = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

@end