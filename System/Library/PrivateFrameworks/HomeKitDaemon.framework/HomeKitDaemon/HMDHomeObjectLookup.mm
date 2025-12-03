@interface HMDHomeObjectLookup
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeObjectLookup)initWithHome:(id)home;
- (id)logIdentifier;
- (void)_scanAccessoriesAndServices;
- (void)_scanActionSets;
- (void)_scanMediaSystems;
- (void)_scanResidentDevices;
- (void)_scanRooms;
- (void)_scanServiceGroups;
- (void)_scanSettings:(id)settings;
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
  home = [(HMDHomeObjectLookup *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_scanUsers
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  home = [(HMDHomeObjectLookup *)self home];
  users = [home users];

  v5 = [users countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(users);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        assistantAccessControlModelUUID = [v9 assistantAccessControlModelUUID];

        if (assistantAccessControlModelUUID)
        {
          uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
          assistantAccessControlModelUUID2 = [v9 assistantAccessControlModelUUID];
          [uuidToObjectMapping2 setObject:v9 forKey:assistantAccessControlModelUUID2];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [users countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  home = [(HMDHomeObjectLookup *)self home];
  mediaSystems = [home mediaSystems];

  v5 = [mediaSystems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(mediaSystems);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        settingsController = [v9 settingsController];
        [(HMDHomeObjectLookup *)self _scanSettings:settingsController];

        ++v8;
      }

      while (v6 != v8);
      v6 = [mediaSystems countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  home = [(HMDHomeObjectLookup *)self home];
  residentDeviceManager = [home residentDeviceManager];
  residentDevices = [residentDeviceManager residentDevices];

  v6 = [residentDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(residentDevices);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        identifier = [v10 identifier];
        [uuidToObjectMapping setObject:v10 forKey:identifier];

        ++v9;
      }

      while (v7 != v9);
      v7 = [residentDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  home = [(HMDHomeObjectLookup *)self home];
  triggers = [home triggers];

  obj = triggers;
  v23 = [triggers countByEnumeratingWithState:&v28 objects:v33 count:16];
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
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v6 uuid];
        [uuidToObjectMapping setObject:v6 forKey:uuid];

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
        events = [v11 events];
        v13 = [events countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(events);
              }

              v17 = *(*(&v24 + 1) + 8 * v16);
              uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
              uuid2 = [v17 uuid];
              [uuidToObjectMapping2 setObject:v17 forKey:uuid2];

              ++v16;
            }

            while (v14 != v16);
            v14 = [events countByEnumeratingWithState:&v24 objects:v32 count:16];
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
  home = [(HMDHomeObjectLookup *)self home];
  serviceGroups = [home serviceGroups];

  v5 = [serviceGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(serviceGroups);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [serviceGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_scanActionSets
{
  v35 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeObjectLookup *)self home];
  actionSets = [home actionSets];
  v22 = home;
  triggerOwnedActionSets = [home triggerOwnedActionSets];
  v6 = [actionSets arrayByAddingObjectsFromArray:triggerOwnedActionSets];

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
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v10 uuid];
        [uuidToObjectMapping setObject:v10 forKey:uuid];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        actions = [v10 actions];
        v14 = [actions countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(actions);
              }

              v18 = *(*(&v25 + 1) + 8 * v17);
              uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
              uuid2 = [v18 uuid];
              [uuidToObjectMapping2 setObject:v18 forKey:uuid2];

              ++v17;
            }

            while (v15 != v17);
            v15 = [actions countByEnumeratingWithState:&v25 objects:v33 count:16];
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
  home = [(HMDHomeObjectLookup *)self home];
  zones = [home zones];

  v5 = [zones countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(zones);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [zones countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_scanRooms
{
  v22 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeObjectLookup *)self home];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  rooms = [home rooms];
  v5 = [rooms countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(rooms);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [rooms countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
  roomForEntireHome = [home roomForEntireHome];
  roomForEntireHome2 = [home roomForEntireHome];
  uuid2 = [roomForEntireHome2 uuid];
  [uuidToObjectMapping2 setObject:roomForEntireHome forKey:uuid2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_scanSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  childrenIdentifiers = [settingsCopy childrenIdentifiers];
  transactionReceiver = [settingsCopy transactionReceiver];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = childrenIdentifiers;
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
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        [uuidToObjectMapping setObject:transactionReceiver forKey:v12];

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
  home = [(HMDHomeObjectLookup *)self home];
  accessories = [home accessories];

  obj = accessories;
  v35 = [accessories countByEnumeratingWithState:&v41 objects:v46 count:16];
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
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v6 uuid];
        [uuidToObjectMapping setObject:v6 forKey:uuid];

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
        services = [v11 services];
        v13 = [services countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                objc_enumerationMutation(services);
              }

              v17 = *(*(&v37 + 1) + 8 * v16);
              uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
              uuid2 = [v17 uuid];
              [uuidToObjectMapping2 setObject:v17 forKey:uuid2];

              ++v16;
            }

            while (v14 != v16);
            v14 = [services countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          audioDestinationManager = [v22 audioDestinationManager];
          if (audioDestinationManager)
          {
            uuidToObjectMapping3 = [(HMDObjectLookup *)self uuidToObjectMapping];
            backingStoreHandler = [audioDestinationManager backingStoreHandler];
            identifier = [audioDestinationManager identifier];
            [uuidToObjectMapping3 setObject:backingStoreHandler forKey:identifier];
          }

          audioDestinationController = [v22 audioDestinationController];
          if (audioDestinationController)
          {
            uuidToObjectMapping4 = [(HMDObjectLookup *)self uuidToObjectMapping];
            backingStoreHandler2 = [audioDestinationController backingStoreHandler];
            identifier2 = [audioDestinationController identifier];
            [uuidToObjectMapping4 setObject:backingStoreHandler2 forKey:identifier2];
          }

          settingsController = [v22 settingsController];
          [(HMDHomeObjectLookup *)self _scanSettings:settingsController];
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
  home = [(HMDHomeObjectLookup *)self home];
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  uuid = [home uuid];
  [uuidToObjectMapping setObject:home forKey:uuid];

  uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
  homeConfigurationUUID = [home homeConfigurationUUID];
  [uuidToObjectMapping2 setObject:home forKey:homeConfigurationUUID];

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

- (HMDHomeObjectLookup)initWithHome:(id)home
{
  homeCopy = home;
  workQueue = [homeCopy workQueue];
  v8.receiver = self;
  v8.super_class = HMDHomeObjectLookup;
  v6 = [(HMDObjectLookup *)&v8 initWithWorkQueue:workQueue];

  if (v6)
  {
    objc_storeWeak(&v6->_home, homeCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_143549 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_143549, &__block_literal_global_143550);
  }

  v3 = logCategory__hmf_once_v4_143551;

  return v3;
}

void __34__HMDHomeObjectLookup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_143551;
  logCategory__hmf_once_v4_143551 = v1;
}

@end