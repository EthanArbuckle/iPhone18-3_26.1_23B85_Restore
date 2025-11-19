@interface HMDIDSActivityMonitorHomeManagerDataSource
+ (id)logCategory;
- (BOOL)homeHasCamera:(id)a3;
- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate;
- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)a3 appleAccountManager:(id)a4;
- (id)currentDevice;
- (void)handleDeviceAdded:(id)a3;
- (void)handleDeviceRemoved:(id)a3;
- (void)handleRegistrationUpdated:(id)a3;
- (void)pushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)start;
- (void)startObservingDevice:(id)a3 subActivity:(id)a4;
- (void)startWithNotificationCenter:(id)a3;
- (void)stopObservingDevice:(id)a3 subActivity:(id)a4;
@end

@implementation HMDIDSActivityMonitorHomeManagerDataSource

- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)handleRegistrationUpdated:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registration information changed, calling delegate", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v6 delegate];
  [v9 dataSourceDidUpdate:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceRemoved:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

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
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 name];
    *buf = 138543618;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ was removed from account, reregistering IDS Activity and notifying delegate", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v10 homeManager];
  v15 = [v14 homes];

  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * v19) currentUser];
        v21 = [v8 identifier];
        [v20 deregisterIDSActivityObserver:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceAdded:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device was added/updated on account, notifying delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

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

  v13 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v6 currentDevice];
  if (v13)
  {
    if (HMFEqualObjects())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v6 homeManager];
      v15 = [v14 homes];

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v27 + 1) + 8 * i) currentUser];
            [v20 updateIDSActivityObserver:v12];
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v17);
      }

      v21 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v6 delegate];
      [v21 dataSourceDidUpdate:v6];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
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

- (void)stopObservingDevice:(id)a3 subActivity:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 name];
    *buf = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Deregistering for IDS Activity on %@ for subActivity %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v9 currentDevice];
  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v9 homeManager];
    v15 = [v14 homes];

    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v26 + 1) + 8 * i) currentUser];
          [v20 deregisterIDSActivityObserver:v13 subActivity:v7 subjectDevice:v6];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v9;
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

- (void)startObservingDevice:(id)a3 subActivity:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 identifier];
    *buf = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for IDS Activity on %@ for subActivity %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v9 currentDevice];
  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v9 homeManager];
    v15 = [v14 homes];

    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v26 + 1) + 8 * i) currentUser];
          [v20 registerIDSActivityObserver:v13 subActivity:v7 subjectDevice:v6];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v9;
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

- (BOOL)homeHasCamera:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [a3 accessories];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v8 accessoryProfiles];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v9);
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

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
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

- (void)pushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDIDSActivityMonitorHomeManagerDataSource *)self currentDevice];
  v15 = objc_autoreleasePoolPush();
  v64 = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v14)
  {
    v55 = v12;
    v62 = v10;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v10 name];
      *buf = 138543874;
      v77 = v18;
      v78 = 2112;
      v79 = v19;
      v80 = 2112;
      v81 = v11;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetching tokens for observers of %@ on subActivity %@", buf, 0x20u);

      v10 = v62;
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277CBEB18] array];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v21 = [(HMDIDSActivityMonitorHomeManagerDataSource *)v64 homeManager];
    v22 = [v21 homes];

    v23 = v20;
    obj = v22;
    v60 = [v22 countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v60)
    {
      v59 = *v71;
      v63 = v11;
      v56 = v14;
      v57 = v13;
      v65 = v20;
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
          v26 = [v25 residentEnabledDevices];
          v27 = [v26 containsObject:v14];

          if ((v27 & 1) == 0)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = v64;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = HMFGetLogIdentifier();
              v44 = [v14 shortDescription];
              v45 = [v25 name];
              *buf = 138543874;
              v77 = v43;
              v78 = 2112;
              v79 = v44;
              v80 = 2112;
              v81 = v45;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Current device %@ is not a resident in home %@, filtering out", buf, 0x20u);

              v10 = v62;
            }

            objc_autoreleasePoolPop(v40);
            v11 = v63;
            goto LABEL_29;
          }

          v23 = v65;
          if (([v25 isResidentFirstAccessoryCommunicationEnabled] & 1) == 0 && !-[HMDIDSActivityMonitorHomeManagerDataSource homeHasCamera:](v64, "homeHasCamera:", v25))
          {
            v46 = objc_autoreleasePoolPush();
            v47 = v64;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              v50 = [v25 name];
              *buf = 138543618;
              v77 = v49;
              v78 = 2112;
              v79 = v50;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Home %@ did not contain a camera capable of recording, filtering out", buf, 0x16u);

              v10 = v62;
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
          v28 = [v25 users];
          v29 = [v28 countByEnumeratingWithState:&v66 objects:v74 count:16];
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
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v66 + 1) + 8 * i);
                if ([v25 isResidentFirstAccessoryCommunicationEnabled] & 1) != 0 || (objc_msgSend(v33, "isRemoteAccessAllowed"))
                {
                  v34 = [v33 pushTokensForDevicesObservingSubjectDevice:v10 subActivity:v11];
                  [v23 addObjectsFromArray:v34];
                }

                else
                {
                  v35 = objc_autoreleasePoolPush();
                  v36 = v64;
                  v37 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    v38 = HMFGetLogIdentifier();
                    v39 = [v33 displayName];
                    *buf = 138543618;
                    v77 = v38;
                    v78 = 2112;
                    v79 = v39;
                    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@User %@ does not have remote access, filtering out", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v35);
                  v10 = v62;
                  v11 = v63;
                  v23 = v65;
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v66 objects:v74 count:16];
            }

            while (v30);
          }

          v14 = v56;
          v13 = v57;
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
    v13[2](v13, v52);

    v12 = v55;
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
    v13[2](v13, MEMORY[0x277CBEBF8]);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (id)currentDevice
{
  v2 = [(HMDIDSActivityMonitorHomeManagerDataSource *)self appleAccountManager];
  v3 = [v2 account];
  v4 = [v3 currentDevice];

  return v4;
}

- (void)startWithNotificationCenter:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSActivityMonitorHomeManagerDataSource *)self appleAccountManager];
  v6 = [v5 account];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Starting to monitor devices for account %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [v4 addObserver:v8 selector:sel_handleDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:v6];
  [v4 addObserver:v8 selector:sel_handleDeviceAdded_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v6];
  [v4 addObserver:v8 selector:sel_handleDeviceRemoved_ name:@"HMDAccountRemovedDeviceNotification" object:v6];
  [v4 addObserver:v8 selector:sel_handleRegistrationUpdated_ name:@"HMDUserDidUpdateIDSActivityRegistration" object:0];
  [v4 addObserver:v8 selector:sel_handleRegistrationUpdated_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];
  [v4 addObserver:v8 selector:sel_handleRegistrationUpdated_ name:@"HMDNotificationHomeAddedAccessory" object:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [(HMDIDSActivityMonitorHomeManagerDataSource *)self startWithNotificationCenter:v3];
}

- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)a3 appleAccountManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v8;
    v15.receiver = self;
    v15.super_class = HMDIDSActivityMonitorHomeManagerDataSource;
    v10 = [(HMDIDSActivityMonitorHomeManagerDataSource *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_homeManager, a3);
      objc_storeStrong(&v11->_appleAccountManager, a4);
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