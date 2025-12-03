@interface HMIHomeKitClient
- (BOOL)isCurrentDevicePrimaryResident;
- (HMIHomeKitClient)initWithCachePolicy:(unint64_t)policy;
- (NSArray)homes;
- (id)cameraProfileWithUUID:(id)d;
- (id)homeForHMPersonManagerUUID:(id)d;
- (id)homePersonManagerForHomeUUID:(id)d;
- (id)homePersonManagersForCurrentDevice;
- (id)homeWithCameraProfileUUID:(id)d;
- (id)photosPersonManagerForHomeUUID:(id)d sourceUUID:(id)iD;
- (void)setup;
@end

@implementation HMIHomeKitClient

- (HMIHomeKitClient)initWithCachePolicy:(unint64_t)policy
{
  v10.receiver = self;
  v10.super_class = HMIHomeKitClient;
  v4 = [(HMIHomeKitClient *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_cachePolicy = policy;
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    homeKitOperationQueue = v5->_homeKitOperationQueue;
    v5->_homeKitOperationQueue = v6;

    [(NSOperationQueue *)v5->_homeKitOperationQueue setName:@"HMIHomeKitClient HomeKit Delegate Queue"];
    [(NSOperationQueue *)v5->_homeKitOperationQueue setMaxConcurrentOperationCount:1];
    v5->_setup = 0;
    homeManager = v5->_homeManager;
    v5->_homeManager = 0;
  }

  return v5;
}

- (NSArray)homes
{
  [(HMIHomeKitClient *)self setup];
  homes = self->_homes;

  return homes;
}

- (id)homePersonManagerForHomeUUID:(id)d
{
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v6 = [homes hmf_firstObjectWithUUID:dCopy];

  if (v6)
  {
    personManager = [v6 personManager];
  }

  else
  {
    personManager = 0;
  }

  return personManager;
}

- (id)homeForHMPersonManagerUUID:(id)d
{
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__HMIHomeKitClient_homeForHMPersonManagerUUID___block_invoke;
  v9[3] = &unk_278752D18;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [homes na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __47__HMIHomeKitClient_homeForHMPersonManagerUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 personManager];
  v4 = [v3 UUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (id)homePersonManagersForCurrentDevice
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  homes = [(HMIHomeKitClient *)self homes];
  v5 = [homes countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138543618;
    v21 = v6;
    v22 = v3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(homes);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        residentDevices = [v10 residentDevices];
        v12 = [residentDevices na_any:&__block_literal_global_4];

        if (v12)
        {
          personManager = [v10 personManager];
          if (personManager)
          {
            [v3 addObject:personManager];
          }

          else
          {
            v14 = homes;
            v15 = objc_autoreleasePoolPush();
            v16 = selfCopy;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              uuid = [v10 uuid];
              *buf = v21;
              v29 = v18;
              v30 = 2112;
              v31 = uuid;
              _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@personManager is nil for homeUUID: %@", buf, 0x16u);

              v3 = v22;
            }

            objc_autoreleasePoolPop(v15);
            homes = v14;
          }
        }
      }

      v7 = [homes countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)photosPersonManagerForHomeUUID:(id)d sourceUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v9 = [homes hmf_firstObjectWithUUID:dCopy];

  if (v9)
  {
    v10 = [v9 photosPersonManagerWithUUID:iDCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  homes = [(HMIHomeKitClient *)self homes];
  v3 = [homes countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(homes);
        }

        residentDevices = [*(*(&v20 + 1) + 8 * i) residentDevices];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = residentDevices;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              if ([v13 isCurrentDevice] && (objc_msgSend(v13, "status") & 2) != 0)
              {

                v14 = 1;
                goto LABEL_20;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [homes countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v4);
  }

  else
  {
    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (id)cameraProfileWithUUID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  homes = [(HMIHomeKitClient *)self homes];
  v18 = [homes countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v18)
  {
    v6 = *v28;
    v20 = homes;
    v17 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(homes);
        }

        v19 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        accessories = [v8 accessories];
        v10 = [accessories countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(accessories);
              }

              cameraProfiles = [*(*(&v23 + 1) + 8 * i) cameraProfiles];
              v21[0] = MEMORY[0x277D85DD0];
              v21[1] = 3221225472;
              v21[2] = __42__HMIHomeKitClient_cameraProfileWithUUID___block_invoke;
              v21[3] = &unk_278752D60;
              v22 = dCopy;
              v15 = [cameraProfiles na_firstObjectPassingTest:v21];

              if (v15)
              {

                homes = v20;
                goto LABEL_19;
              }
            }

            v11 = [accessories countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19 + 1;
        homes = v20;
        v6 = v17;
      }

      while (v19 + 1 != v18);
      v15 = 0;
      v18 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v18);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

uint64_t __42__HMIHomeKitClient_cameraProfileWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)homeWithCameraProfileUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  homes = [(HMIHomeKitClient *)self homes];
  v19 = [homes countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v19)
  {
    v6 = *v30;
    v22 = homes;
    v18 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(homes);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v20 = v7;
        v21 = v8;
        accessories = [v8 accessories];
        v10 = [accessories countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(accessories);
              }

              cameraProfiles = [*(*(&v25 + 1) + 8 * i) cameraProfiles];
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __46__HMIHomeKitClient_homeWithCameraProfileUUID___block_invoke;
              v23[3] = &unk_278752D60;
              v24 = dCopy;
              v15 = [cameraProfiles na_firstObjectPassingTest:v23];

              if (v15)
              {
                v16 = v21;

                homes = v22;
                goto LABEL_19;
              }
            }

            v11 = [accessories countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v20 + 1;
        homes = v22;
        v6 = v18;
      }

      while (v20 + 1 != v19);
      v16 = 0;
      v19 = [v22 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v19);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

uint64_t __46__HMIHomeKitClient_homeWithCameraProfileUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)setup
{
  selfCopy = self;
  v60 = *MEMORY[0x277D85DE8];
  if (![(HMIHomeKitClient *)self isSetup])
  {
    defaultPrivateConfiguration = [MEMORY[0x277CD1C60] defaultPrivateConfiguration];
    [defaultPrivateConfiguration setOptions:1];
    [defaultPrivateConfiguration setCachePolicy:{-[HMIHomeKitClient cachePolicy](selfCopy, "cachePolicy")}];
    [defaultPrivateConfiguration setDiscretionary:1];
    homeKitOperationQueue = [(HMIHomeKitClient *)selfCopy homeKitOperationQueue];
    [defaultPrivateConfiguration setDelegateQueue:homeKitOperationQueue];

    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = objc_opt_new();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __25__HMIHomeKitClient_setup__block_invoke;
    v49[3] = &unk_278752D88;
    v7 = v5;
    v50 = v7;
    [v6 setDidUpdateHomes:v49];
    v8 = [objc_alloc(MEMORY[0x277CD1A90]) initWithHomeMangerConfiguration:defaultPrivateConfiguration];
    [(HMIHomeKitClient *)selfCopy setHomeManager:v8];

    homeManager = [(HMIHomeKitClient *)selfCopy homeManager];
    [homeManager setDelegate:v6];

    dispatch_group_enter(v7);
    homeManager2 = [(HMIHomeKitClient *)selfCopy homeManager];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0e10];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __25__HMIHomeKitClient_setup__block_invoke_2;
    v47[3] = &unk_2787529D0;
    v12 = v7;
    v48 = v12;
    v13 = [homeManager2 _refreshBeforeDate:v11 completionHandler:v47];

    v14 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v12, v14);
    homeManager3 = [(HMIHomeKitClient *)selfCopy homeManager];
    homes = [homeManager3 homes];

    if (homes)
    {
      objc_storeStrong(&selfCopy->_homes, homes);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = homes;
      v17 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v17)
      {
        v18 = v17;
        v37 = homes;
        v38 = v12;
        v39 = v6;
        v40 = defaultPrivateConfiguration;
        v19 = *v44;
        v20 = obj;
        v41 = selfCopy;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v44 != v19)
            {
              objc_enumerationMutation(v20);
            }

            v22 = *(*(&v43 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            v24 = selfCopy;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v26 = HMFGetLogIdentifier();
              [v22 name];
              v27 = v18;
              v29 = v28 = v19;
              if ([v22 isPrimary])
              {
                v30 = "Yes";
              }

              else
              {
                v30 = "No";
              }

              uuid = [v22 uuid];
              *buf = 138544130;
              v52 = v26;
              v53 = 2112;
              v54 = v29;
              v55 = 2080;
              v56 = v30;
              v20 = obj;
              v57 = 2112;
              v58 = uuid;
              _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Found home: name: %@, primary: %s, UUID: %@", buf, 0x2Au);

              v19 = v28;
              v18 = v27;

              selfCopy = v41;
            }

            objc_autoreleasePoolPop(v23);
          }

          v18 = [(NSArray *)v20 countByEnumeratingWithState:&v43 objects:v59 count:16];
        }

        while (v18);
        homes = v20;
        v6 = v39;
        defaultPrivateConfiguration = v40;
        homes = v37;
        v12 = v38;
      }

      else
      {
        homes = obj;
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v36;
        _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_ERROR, "%{public}@No homes were located", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      homes = v34->_homes;
      v34->_homes = MEMORY[0x277CBEBF8];
    }

    selfCopy->_setup = 1;
  }
}

void __25__HMIHomeKitClient_setup__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_ERROR, "%{public}@Error refreshing home data: %@", &v7, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end