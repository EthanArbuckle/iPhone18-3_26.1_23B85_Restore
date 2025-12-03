@interface HMDHomeManagerObjectLookup
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDHomeManagerObjectLookup)initWithHomeManager:(id)manager;
- (void)_scanAccounts;
- (void)_scanCloudZones;
- (void)_scanHomes;
- (void)scanObjects;
@end

@implementation HMDHomeManagerObjectLookup

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_scanAccounts
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = +[HMDAppleAccountManager sharedManager];
  account = [v3 account];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = account;
  modelBackedObjects = [account modelBackedObjects];
  v6 = [modelBackedObjects countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(modelBackedObjects);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
          modelIdentifier = [v10 modelIdentifier];
          [uuidToObjectMapping setObject:v10 forKey:modelIdentifier];
        }
      }

      v7 = [modelBackedObjects countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = +[HMDRemoteAccountManager sharedManager];
  v13 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    v28 = *v36;
    do
    {
      v16 = 0;
      v29 = v14;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        if ([v17 isAuthenticated])
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          modelBackedObjects2 = [v17 modelBackedObjects];
          v19 = [modelBackedObjects2 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v32;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(modelBackedObjects2);
                }

                v23 = *(*(&v31 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
                  modelIdentifier2 = [v23 modelIdentifier];
                  [uuidToObjectMapping2 setObject:v23 forKey:modelIdentifier2];
                }
              }

              v20 = [modelBackedObjects2 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v20);
          }

          v15 = v28;
          v14 = v29;
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_scanCloudZones
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  homeManager = [(HMDHomeManagerObjectLookup *)self homeManager];
  cloudZones = [homeManager cloudZones];

  v5 = [cloudZones countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(cloudZones);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [cloudZones countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_scanHomes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  homeManager = [(HMDHomeManagerObjectLookup *)self homeManager];
  homes = [homeManager homes];

  v5 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scanObjects
{
  v6.receiver = self;
  v6.super_class = HMDHomeManagerObjectLookup;
  [(HMDObjectLookup *)&v6 scanObjects];
  [(HMDHomeManagerObjectLookup *)self _scanHomes];
  [(HMDHomeManagerObjectLookup *)self _scanCloudZones];
  [(HMDHomeManagerObjectLookup *)self _scanAccounts];
  homeManager = [(HMDHomeManagerObjectLookup *)self homeManager];
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  uuid = [homeManager uuid];
  [uuidToObjectMapping setObject:homeManager forKey:uuid];
}

- (HMDHomeManagerObjectLookup)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  workQueue = [managerCopy workQueue];
  v8.receiver = self;
  v8.super_class = HMDHomeManagerObjectLookup;
  v6 = [(HMDObjectLookup *)&v8 initWithWorkQueue:workQueue];

  if (v6)
  {
    objc_storeWeak(&v6->_homeManager, managerCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_47441 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_47441, &__block_literal_global_47442);
  }

  v3 = logCategory__hmf_once_v1_47443;

  return v3;
}

uint64_t __41__HMDHomeManagerObjectLookup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_47443;
  logCategory__hmf_once_v1_47443 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end