@interface HMDIDSActivityMonitorHomeManagerDataSource
+ (id)logCategory;
- (BOOL)homeHasCamera:(id)camera;
- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate;
- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)manager appleAccountManager:(id)accountManager;
- (id)currentDevice;
- (void)handleDeviceAdded:(id)added;
- (void)handleDeviceRemoved:(id)removed;
- (void)handleRegistrationUpdated:(id)updated;
- (void)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity queue:(id)queue completionHandler:(id)handler;
- (void)start;
- (void)startObservingDevice:(id)device subActivity:(id)activity;
- (void)startWithNotificationCenter:(id)center;
- (void)stopObservingDevice:(id)device subActivity:(id)activity;
@end

@implementation HMDIDSActivityMonitorHomeManagerDataSource

- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)handleRegistrationUpdated:(id)updated
{
  v13 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registration information changed, calling delegate", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy delegate];
  [delegate dataSourceDidUpdate:selfCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceRemoved:(id)removed
{
  v32 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  userInfo = [removedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    name = [v8 name];
    *buf = 138543618;
    v29 = v12;
    v30 = 2112;
    v31 = name;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ was removed from account, reregistering IDS Activity and notifying delegate", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
  homes = [homeManager homes];

  v16 = [homes countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(homes);
        }

        currentUser = [*(*(&v23 + 1) + 8 * v19) currentUser];
        identifier = [v8 identifier];
        [currentUser deregisterIDSActivityObserver:identifier];

        ++v19;
      }

      while (v17 != v19);
      v17 = [homes countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceAdded:(id)added
{
  v34 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device was added/updated on account, notifying delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [addedCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy currentDevice];
  if (currentDevice)
  {
    if (HMFEqualObjects())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
      homes = [homeManager homes];

      v16 = [homes countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(homes);
            }

            currentUser = [*(*(&v27 + 1) + 8 * i) currentUser];
            [currentUser updateIDSActivityObserver:v12];
          }

          v17 = [homes countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v17);
      }

      delegate = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy delegate];
      [delegate dataSourceDidUpdate:selfCopy];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to update IDS activity observer, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingDevice:(id)device subActivity:(id)activity
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    name = [deviceCopy name];
    *buf = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = name;
    v35 = 2112;
    v36 = activityCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Deregistering for IDS Activity on %@ for subActivity %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy currentDevice];
  if (currentDevice)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
    homes = [homeManager homes];

    v16 = [homes countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(homes);
          }

          currentUser = [*(*(&v26 + 1) + 8 * i) currentUser];
          [currentUser deregisterIDSActivityObserver:currentDevice subActivity:activityCopy subjectDevice:deviceCopy];
        }

        v17 = [homes countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to deregister for IDS Activity, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)startObservingDevice:(id)device subActivity:(id)activity
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    identifier = [deviceCopy identifier];
    *buf = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = identifier;
    v35 = 2112;
    v36 = activityCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for IDS Activity on %@ for subActivity %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy currentDevice];
  if (currentDevice)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
    homes = [homeManager homes];

    v16 = [homes countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(homes);
          }

          currentUser = [*(*(&v26 + 1) + 8 * i) currentUser];
          [currentUser registerIDSActivityObserver:currentDevice subActivity:activityCopy subjectDevice:deviceCopy];
        }

        v17 = [homes countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to registering for IDS Activity, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)homeHasCamera:(id)camera
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  accessories = [camera accessories];
  v4 = [accessories countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v19 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        accessoryProfiles = [v8 accessoryProfiles];
        v10 = [accessoryProfiles countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(accessoryProfiles);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) != 0 && v14)
              {

                v16 = 1;
                goto LABEL_20;
              }
            }

            v11 = [accessoryProfiles countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v5 = [accessories countByEnumeratingWithState:&v24 objects:v29 count:16];
      v16 = 0;
    }

    while (v5);
  }

  else
  {
    v16 = 0;
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity queue:(id)queue completionHandler:(id)handler
{
  v82 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  queueCopy = queue;
  handlerCopy = handler;
  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)self currentDevice];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (currentDevice)
  {
    v55 = queueCopy;
    v62 = deviceCopy;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      name = [deviceCopy name];
      *buf = 138543874;
      v77 = v18;
      v78 = 2112;
      v79 = name;
      v80 = 2112;
      v81 = activityCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetching tokens for observers of %@ on subActivity %@", buf, 0x20u);

      deviceCopy = v62;
    }

    objc_autoreleasePoolPop(v15);
    array = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
    homes = [homeManager homes];

    v23 = array;
    obj = homes;
    v60 = [homes countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v60)
    {
      v59 = *v71;
      v63 = activityCopy;
      v56 = currentDevice;
      v57 = handlerCopy;
      v65 = array;
      do
      {
        v24 = 0;
        do
        {
          if (*v71 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = v24;
          v25 = *(*(&v70 + 1) + 8 * v24);
          residentEnabledDevices = [v25 residentEnabledDevices];
          v27 = [residentEnabledDevices containsObject:currentDevice];

          if ((v27 & 1) == 0)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = selfCopy;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = HMFGetLogIdentifier();
              shortDescription = [currentDevice shortDescription];
              name2 = [v25 name];
              *buf = 138543874;
              v77 = v43;
              v78 = 2112;
              v79 = shortDescription;
              v80 = 2112;
              v81 = name2;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Current device %@ is not a resident in home %@, filtering out", buf, 0x20u);

              deviceCopy = v62;
            }

            objc_autoreleasePoolPop(v40);
            activityCopy = v63;
            goto LABEL_29;
          }

          v23 = v65;
          if (([v25 isResidentFirstAccessoryCommunicationEnabled] & 1) == 0 && !-[HMDIDSActivityMonitorHomeManagerDataSource homeHasCamera:](selfCopy, "homeHasCamera:", v25))
          {
            v46 = objc_autoreleasePoolPush();
            v47 = selfCopy;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              name3 = [v25 name];
              *buf = 138543618;
              v77 = v49;
              v78 = 2112;
              v79 = name3;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Home %@ did not contain a camera capable of recording, filtering out", buf, 0x16u);

              deviceCopy = v62;
            }

            objc_autoreleasePoolPop(v46);
LABEL_29:
            v23 = v65;
            goto LABEL_30;
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          users = [v25 users];
          v29 = [users countByEnumeratingWithState:&v66 objects:v74 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v67;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v67 != v31)
                {
                  objc_enumerationMutation(users);
                }

                v33 = *(*(&v66 + 1) + 8 * i);
                if ([v25 isResidentFirstAccessoryCommunicationEnabled] & 1) != 0 || (objc_msgSend(v33, "isRemoteAccessAllowed"))
                {
                  v34 = [v33 pushTokensForDevicesObservingSubjectDevice:deviceCopy subActivity:activityCopy];
                  [v23 addObjectsFromArray:v34];
                }

                else
                {
                  v35 = objc_autoreleasePoolPush();
                  v36 = selfCopy;
                  v37 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    v38 = HMFGetLogIdentifier();
                    displayName = [v33 displayName];
                    *buf = 138543618;
                    v77 = v38;
                    v78 = 2112;
                    v79 = displayName;
                    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@User %@ does not have remote access, filtering out", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v35);
                  deviceCopy = v62;
                  activityCopy = v63;
                  v23 = v65;
                }
              }

              v30 = [users countByEnumeratingWithState:&v66 objects:v74 count:16];
            }

            while (v30);
          }

          currentDevice = v56;
          handlerCopy = v57;
LABEL_30:
          v24 = v61 + 1;
        }

        while (v61 + 1 != v60);
        v51 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
        v60 = v51;
      }

      while (v51);
    }

    v52 = [v23 copy];
    handlerCopy[2](handlerCopy, v52);

    queueCopy = v55;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v53;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch tokens, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8]);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (id)currentDevice
{
  appleAccountManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)self appleAccountManager];
  account = [appleAccountManager account];
  currentDevice = [account currentDevice];

  return currentDevice;
}

- (void)startWithNotificationCenter:(id)center
{
  v16 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  appleAccountManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)self appleAccountManager];
  account = [appleAccountManager account];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = account;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Starting to monitor devices for account %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [centerCopy addObserver:selfCopy selector:sel_handleDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:account];
  [centerCopy addObserver:selfCopy selector:sel_handleDeviceAdded_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:account];
  [centerCopy addObserver:selfCopy selector:sel_handleDeviceRemoved_ name:@"HMDAccountRemovedDeviceNotification" object:account];
  [centerCopy addObserver:selfCopy selector:sel_handleRegistrationUpdated_ name:@"HMDUserDidUpdateIDSActivityRegistration" object:0];
  [centerCopy addObserver:selfCopy selector:sel_handleRegistrationUpdated_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];
  [centerCopy addObserver:selfCopy selector:sel_handleRegistrationUpdated_ name:@"HMDNotificationHomeAddedAccessory" object:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [(HMDIDSActivityMonitorHomeManagerDataSource *)self startWithNotificationCenter:defaultCenter];
}

- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)manager appleAccountManager:(id)accountManager
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  if (managerCopy)
  {
    v9 = accountManagerCopy;
    v15.receiver = self;
    v15.super_class = HMDIDSActivityMonitorHomeManagerDataSource;
    v10 = [(HMDIDSActivityMonitorHomeManagerDataSource *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_homeManager, manager);
      objc_storeStrong(&v11->_appleAccountManager, accountManager);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDIDSActivityMonitorHomeManagerDataSource *)v13];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_165948 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_165948, &__block_literal_global_165949);
  }

  v3 = logCategory__hmf_once_v18_165950;

  return v3;
}

uint64_t __57__HMDIDSActivityMonitorHomeManagerDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_165950;
  logCategory__hmf_once_v18_165950 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end