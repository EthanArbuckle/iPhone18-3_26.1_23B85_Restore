@interface HMDHomeObjectLookup
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeObjectLookup)initWithHome:(id)a3;
- (id)logIdentifier;
- (void)_scanAccessoriesAndServices;
- (void)_scanActionSets;
- (void)_scanMediaSystems;
- (void)_scanResidentDevices;
- (void)_scanRooms;
- (void)_scanServiceGroups;
- (void)_scanSettings:(id)a3;
- (void)_scanTriggers;
- (void)_scanUsers;
- (void)_scanZones;
- (void)scanObjects;
@end

@implementation HMDHomeObjectLookup

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeObjectLookup *)self home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)_scanUsers
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 users];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v11 = [v9 uuid];
        [v10 setObject:v9 forKey:v11];

        v12 = [v9 assistantAccessControlModelUUID];

        if (v12)
        {
          v13 = [(HMDObjectLookup *)self uuidToObjectMapping];
          v14 = [v9 assistantAccessControlModelUUID];
          [v13 setObject:v9 forKey:v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_scanMediaSystems
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 mediaSystems];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v11 = [v9 uuid];
        [v10 setObject:v9 forKey:v11];

        v12 = [v9 settingsController];
        [(HMDHomeObjectLookup *)self _scanSettings:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scanResidentDevices
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 residentDeviceManager];
  v5 = [v4 residentDevices];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v12 = [v10 identifier];
        [v11 setObject:v10 forKey:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scanTriggers
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 triggers];

  obj = v4;
  v23 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v8 = [v6 uuid];
        [v7 setObject:v6 forKey:v8];

        v9 = v6;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = [v11 events];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            v16 = 0;
            do
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v24 + 1) + 8 * v16);
              v18 = [(HMDObjectLookup *)self uuidToObjectMapping];
              v19 = [v17 uuid];
              [v18 setObject:v17 forKey:v19];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        ++v5;
      }

      while (v5 != v23);
      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_scanServiceGroups
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 serviceGroups];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v11 = [v9 uuid];
        [v10 setObject:v9 forKey:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_scanActionSets
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 actionSets];
  v22 = v3;
  v5 = [v3 triggerOwnedActionSets];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v12 = [v10 uuid];
        [v11 setObject:v10 forKey:v12];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = [v10 actions];
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            v17 = 0;
            do
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * v17);
              v19 = [(HMDObjectLookup *)self uuidToObjectMapping];
              v20 = [v18 uuid];
              [v19 setObject:v18 forKey:v20];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }

        ++v9;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_scanZones
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 zones];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v11 = [v9 uuid];
        [v10 setObject:v9 forKey:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_scanRooms
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeObjectLookup *)self home];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 rooms];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v11 = [v9 uuid];
        [v10 setObject:v9 forKey:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = [(HMDObjectLookup *)self uuidToObjectMapping];
  v13 = [v3 roomForEntireHome];
  v14 = [v3 roomForEntireHome];
  v15 = [v14 uuid];
  [v12 setObject:v13 forKey:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_scanSettings:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 childrenIdentifiers];
  v6 = [v4 transactionReceiver];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(HMDObjectLookup *)self uuidToObjectMapping];
        [v13 setObject:v6 forKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_scanAccessoriesAndServices
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [v3 accessories];

  obj = v4;
  v35 = [v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * v5);
        v7 = [(HMDObjectLookup *)self uuidToObjectMapping];
        v8 = [v6 uuid];
        [v7 setObject:v6 forKey:v8];

        v9 = v6;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = v11;
        v12 = [v11 services];
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v38;
          do
          {
            v16 = 0;
            do
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v37 + 1) + 8 * v16);
              v18 = [(HMDObjectLookup *)self uuidToObjectMapping];
              v19 = [v17 uuid];
              [v18 setObject:v17 forKey:v19];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v14);
        }

        v20 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v23 = [v22 audioDestinationManager];
          if (v23)
          {
            v24 = [(HMDObjectLookup *)self uuidToObjectMapping];
            v25 = [v23 backingStoreHandler];
            v26 = [v23 identifier];
            [v24 setObject:v25 forKey:v26];
          }

          v27 = [v22 audioDestinationController];
          if (v27)
          {
            v28 = [(HMDObjectLookup *)self uuidToObjectMapping];
            v29 = [v27 backingStoreHandler];
            v30 = [v27 identifier];
            [v28 setObject:v29 forKey:v30];
          }

          v31 = [v22 settingsController];
          [(HMDHomeObjectLookup *)self _scanSettings:v31];
        }

        ++v5;
      }

      while (v5 != v35);
      v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v35);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)scanObjects
{
  v8.receiver = self;
  v8.super_class = HMDHomeObjectLookup;
  [(HMDObjectLookup *)&v8 scanObjects];
  v3 = [(HMDHomeObjectLookup *)self home];
  v4 = [(HMDObjectLookup *)self uuidToObjectMapping];
  v5 = [v3 uuid];
  [v4 setObject:v3 forKey:v5];

  v6 = [(HMDObjectLookup *)self uuidToObjectMapping];
  v7 = [v3 homeConfigurationUUID];
  [v6 setObject:v3 forKey:v7];

  [(HMDHomeObjectLookup *)self _scanAccessoriesAndServices];
  [(HMDHomeObjectLookup *)self _scanRooms];
  [(HMDHomeObjectLookup *)self _scanZones];
  [(HMDHomeObjectLookup *)self _scanActionSets];
  [(HMDHomeObjectLookup *)self _scanServiceGroups];
  [(HMDHomeObjectLookup *)self _scanTriggers];
  [(HMDHomeObjectLookup *)self _scanResidentDevices];
  [(HMDHomeObjectLookup *)self _scanMediaSystems];
  [(HMDHomeObjectLookup *)self _scanUsers];
}

- (HMDHomeObjectLookup)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [v4 workQueue];
  v8.receiver = self;
  v8.super_class = HMDHomeObjectLookup;
  v6 = [(HMDObjectLookup *)&v8 initWithWorkQueue:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_home, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_95012 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_95012, &__block_literal_global_95013);
  }

  v3 = logCategory__hmf_once_v4_95014;

  return v3;
}

uint64_t __34__HMDHomeObjectLookup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_95014;
  logCategory__hmf_once_v4_95014 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end