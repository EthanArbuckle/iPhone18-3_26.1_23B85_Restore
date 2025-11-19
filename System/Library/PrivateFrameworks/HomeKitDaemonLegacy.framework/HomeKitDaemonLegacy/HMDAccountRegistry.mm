@interface HMDAccountRegistry
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (HMDAccountRegistry)sharedRegistry;
+ (id)logCategory;
- (BOOL)accountExistsForHandle:(id)a3;
- (BOOL)deviceExistsForDevice:(id)a3;
- (BOOL)started;
- (HMDAccountRegistry)initWithAppleAccountManager:(id)a3 remoteAccountManager:(id)a4;
- (HMDAppleAccountManager)appleAccountManager;
- (HMDRemoteAccountManager)remoteAccountManager;
- (NSArray)accounts;
- (id)accountForHandle:(id)a3 exists:(BOOL *)a4;
- (id)attributeDescriptions;
- (id)deviceForAddress:(id)a3;
- (id)deviceForDevice:(id)a3 exists:(BOOL *)a4;
- (id)deviceForHandle:(id)a3 exists:(BOOL *)a4;
- (id)deviceForIDSIdentifier:(id)a3;
- (id)deviceForIdentifier:(id)a3;
- (id)deviceForPushToken:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__handleAddedRemoteAccount:(id)a3;
- (void)__handleAppleAccountDeviceAdded:(id)a3;
- (void)__handleAppleAccountHandlesUpdated:(id)a3;
- (void)__handleAppleAccountUpdate:(id)a3;
- (void)__handleRemovedRemoteAccount:(id)a3;
- (void)_resolveAccountForHandle:(id)a3 completionHandler:(id)a4;
- (void)reset;
- (void)start;
- (void)stop;
@end

@implementation HMDAccountRegistry

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_41505 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_41505, &__block_literal_global_41506);
  }

  v3 = logCategory__hmf_once_v25_41507;

  return v3;
}

uint64_t __33__HMDAccountRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_41507;
  logCategory__hmf_once_v25_41507 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDAccountRegistry)sharedRegistry
{
  v2 = +[HMDRegistry shared];
  v3 = [v2 accountRegistry];

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_started);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___HMDAccountRegistry;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v7;
}

- (HMDRemoteAccountManager)remoteAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteAccountManager);

  return WeakRetained;
}

- (HMDAppleAccountManager)appleAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appleAccountManager);

  return WeakRetained;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(HMDAccountRegistry *)self accounts];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)_resolveAccountForHandle:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDAccountRegistry *)self appleAccountManager];
    v9 = [v8 account];

    v10 = [v9 handles];
    v11 = [v10 containsObject:v6];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v6 shortDescription];
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not resolving handle, %@, on our account", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (v7)
      {
        v7[2](v7, v9, 0);
      }
    }

    else
    {

      v9 = [(HMDAccountRegistry *)self remoteAccountManager];
      [v9 _resolveAccountForHandle:v6 completionHandler:v7];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)__handleRemovedRemoteAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDAccountRegistry___handleRemovedRemoteAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__HMDAccountRegistry___handleRemovedRemoteAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [*(a1 + 40) appleAccountManager];
    v6 = [v5 account];
    v7 = [v8 isRelatedToAccount:v6];

    if ((v7 & 1) == 0)
    {
      __notifyDelegateAccountRemoved(*(a1 + 40), v8);
    }
  }
}

- (void)__handleAddedRemoteAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDAccountRegistry___handleAddedRemoteAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__HMDAccountRegistry___handleAddedRemoteAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [*(a1 + 40) appleAccountManager];
    v6 = [v5 account];
    v7 = [v8 isRelatedToAccount:v6];

    if ((v7 & 1) == 0)
    {
      __notifyDelegateAccountAdded(*(a1 + 40), v8);
    }
  }
}

- (void)__handleAppleAccountDeviceAdded:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDAccountRegistry___handleAppleAccountDeviceAdded___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDAccountRegistry___handleAppleAccountDeviceAdded___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) appleAccountManager];
  v6 = [v5 account];
  v7 = [v4 isEqualToAccount:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) userInfo];
    v9 = [v8 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

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

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v11 shortDescription];
        v22 = 138543618;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification that device was added to our account: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 40);
      v18 = MEMORY[0x277CBEB98];
      v19 = [v11 handles];
      v20 = [v18 setWithArray:v19];
      __cleanupRemoteDevicesWithHandles(v17, v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)__handleAppleAccountHandlesUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAccountRegistry___handleAppleAccountHandlesUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDAccountRegistry___handleAppleAccountHandlesUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;

  v4 = [*(a1 + 40) appleAccountManager];
  v5 = [v4 account];
  v6 = [v7 isEqualToAccount:v5];

  if (v6)
  {
    __cleanupRemoteAccountsRelatedToAccount(*(a1 + 40), v7);
  }
}

- (void)__handleAppleAccountUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDAccountRegistry___handleAppleAccountUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__HMDAccountRegistry___handleAppleAccountUpdate___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HMDPreviousAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification current account added", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    __registerForAccountUpdates(*(a1 + 40), v5);
    __cleanupRemoteAccountsRelatedToAccount(*(a1 + 40), v5);
    v14 = [v5 devices];
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v14, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v27 + 1) + 8 * v20) handles];
          [v15 addObjectsFromArray:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    __cleanupRemoteDevicesWithHandles(*(a1 + 40), v15);
    __notifyDelegateAccountAdded(*(a1 + 40), v5);
  }

  else if (v9)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 40);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Received notification current account removed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    __registerForAccountUpdates(*(a1 + 40), 0);
    __notifyDelegateAccountRemoved(*(a1 + 40), v9);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)deviceForIDSIdentifier:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self;
  v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v25 = v5;
    v23 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = [v10 devices];
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          v24 = v7;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              v17 = [v16 idsIdentifier];
              if ([v17 isEqual:v4])
              {

LABEL_20:
                v20 = v16;

                v5 = v25;
                goto LABEL_21;
              }

              v18 = [v16 sharedUserIDSIdentifier];
              v19 = [v18 isEqual:v4];

              if (v19)
              {
                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            v7 = v24;
            v5 = v25;
            v8 = v23;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v20 = 0;
    }

    while (v7);
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)deviceForPushToken:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self;
  v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = *v37;
    v27 = v5;
    v24 = *v37;
    do
    {
      v8 = 0;
      v25 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          v26 = *v33;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v16 = [v15 globalHandles];
              v17 = [v16 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v29;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v29 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    if ([*(*(&v28 + 1) + 8 * j) matchesPushToken:v4])
                    {
                      v21 = v15;

                      v5 = v27;
                      goto LABEL_26;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v28 objects:v40 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v13 = v26;
            }

            v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
            v5 = v27;
            v7 = v24;
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v25);
      v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
      v21 = 0;
    }

    while (v6);
  }

  else
  {
    v21 = 0;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)deviceForDevice:(id)a3 exists:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = __deviceForDevice(self, v6);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    if (v8 && a4)
    {
      *a4 = 1;
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)deviceExistsForDevice:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = __deviceForDevice(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (id)deviceForHandle:(id)a3 exists:(BOOL *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = __deviceForHandle(self, v6);
    v9 = v8;
    if (v8)
    {
      if (a4)
      {
        *a4 = 1;
      }

      v10 = v8;
    }

    else
    {
      v11 = [HMDDevice alloc];
      v12 = [v7 identifier];
      v16[0] = v7;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v10 = [(HMDDevice *)v11 initWithIdentifier:v12 handles:v13 name:0 productInfo:0 version:0 capabilities:0];
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)deviceForAddress:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 idsIdentifier];
    v7 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v6];

    v8 = __deviceForHandle(self, v7);
    if (v8)
    {
      v9 = v8;
      v10 = v9;
    }

    else
    {
      v11 = [v5 idsDestination];
      v12 = [HMDDeviceHandle deviceHandleForDestination:v11];

      v13 = __deviceForHandle(self, v12);
      v9 = v13;
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v18;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Synthesizing HMDDevice for %@", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v14 = [[HMDDevice alloc] initWithDeviceAddress:v5];
      }

      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)deviceForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self;
    v6 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) deviceForIdentifier:{v4, v14}];
          if (v10)
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(HMDAccountRegistry *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)accountForHandle:(id)a3 exists:(BOOL *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v8 = __accountForHandle(self, v6);
    v9 = v8;
    if (v8)
    {
      if (a4)
      {
        *a4 = 1;
      }

      v10 = v8;
    }

    else
    {
      v11 = [HMDAccount alloc];
      v12 = [HMDAccountIdentifier accountIdentifierForAccountHandle:v7];
      v16[0] = v7;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v10 = [(HMDAccount *)v11 initWithIdentifier:v12 handles:v13 devices:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)accountExistsForHandle:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = __accountForHandle(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (NSArray)accounts
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDAccountRegistry *)self appleAccountManager];
  v5 = [v4 account];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(HMDAccountRegistry *)self remoteAccountManager];
  v7 = [v6 accounts];
  [v3 addObjectsFromArray:v7];

  v8 = [v3 copy];

  return v8;
}

- (void)reset
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAccountRegistry *)v4 remoteAccountManager];
  [v7 reset];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  __registerForAccountUpdates(v4, 0);
  v7 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 willChangeValueForKey:v7];

  os_unfair_lock_lock_with_options();
  v4->_started = 0;
  os_unfair_lock_unlock(&v4->_lock);
  v8 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 didChangeValueForKey:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAccountRegistry *)v4 appleAccountManager];
  v8 = [v7 account];
  if (v8)
  {
    __registerForAccountUpdates(v4, v8);
    v9 = [(HMDAccountRegistry *)v4 clientQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __27__HMDAccountRegistry_start__block_invoke;
    v17 = &unk_2797359B0;
    v18 = v4;
    v19 = v8;
    dispatch_async(v9, &v14);
  }

  [v7 start];
  v10 = [(HMDAccountRegistry *)v4 remoteAccountManager];
  [v10 start];

  v11 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 willChangeValueForKey:v11];

  os_unfair_lock_lock_with_options();
  v4->_started = 1;
  os_unfair_lock_unlock(&v4->_lock);
  v12 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)v4 didChangeValueForKey:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __27__HMDAccountRegistry_start__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  __cleanupRemoteAccountsRelatedToAccount(*(a1 + 32), *(a1 + 40));
  v2 = [*(a1 + 40) devices];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) handles];
        [v3 addObjectsFromArray:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  __cleanupRemoteDevicesWithHandles(*(a1 + 32), v3);
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)started
{
  os_unfair_lock_lock_with_options();
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccountRegistry *)self accounts];
  v5 = [v3 initWithName:@"AC" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDAccountRegistry)initWithAppleAccountManager:(id)a3 remoteAccountManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HMDAccountRegistry;
  v8 = [(HMDAccountRegistry *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = HMDispatchQueueNameString();
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    clientQueue = v9->_clientQueue;
    v9->_clientQueue = v13;

    objc_storeWeak(&v9->_appleAccountManager, v6);
    objc_storeWeak(&v9->_remoteAccountManager, v7);
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v9 selector:sel___handleAppleAccountUpdate_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:v6];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v9 selector:sel___handleAddedRemoteAccount_ name:@"HMDRemoteAccountManagerAddedAccountNotification" object:v7];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v9 selector:sel___handleRemovedRemoteAccount_ name:@"HMDRemoteAccountManagerRemovedAccountNotification" object:v7];
  }

  return v9;
}

@end