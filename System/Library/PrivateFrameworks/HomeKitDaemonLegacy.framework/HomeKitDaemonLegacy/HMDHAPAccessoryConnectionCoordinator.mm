@interface HMDHAPAccessoryConnectionCoordinator
+ (id)logCategory;
- (HMDHAPAccessoryConnectionCoordinator)initWithHome:(id)a3 notificationCenter:(id)a4;
- (id)logIdentifier;
- (void)_disableDisconnectOnIdleWithAccessoriesAndConnect:(BOOL)a3;
- (void)_enableDisconnectOnIdleWithAccessories;
- (void)configureWithIsResidentCapable:(BOOL)a3;
- (void)evaluateAccessoryConnectionStatus;
- (void)handleCurrentResidentChanged:(id)a3;
- (void)handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification:(id)a3;
- (void)handlePrimaryResidentChanged:(id)a3;
- (void)handleResidentAddRemove:(id)a3;
- (void)handleResidentChangedOnNonResident;
- (void)handleResidentStatusChanged:(id)a3;
- (void)handleResidentUpdated:(id)a3;
@end

@implementation HMDHAPAccessoryConnectionCoordinator

- (id)logIdentifier
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = [WeakRetained uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)_enableDisconnectOnIdleWithAccessories
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [WeakRetained hapAccessories];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ((shouldDisconnectOnIdleForAccessory(v8) & 1) != 0 && ([v8 shouldDisconnectOnIdle] & 1) == 0)
        {
          [v8 setShouldDisconnectOnIdle:1];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_disableDisconnectOnIdleWithAccessoriesAndConnect:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v22 = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = WeakRetained;
  v6 = [WeakRetained hapAccessories];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v9 = *v24;
    *&v8 = 138543362;
    v20 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 shouldDisconnectOnIdle])
        {
          [v11 setShouldDisconnectOnIdle:0];
        }

        if (v3)
        {
          v12 = [v11 bridge];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = v22;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              *buf = v20;
              *&buf[4] = v17;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Triggering evaluation of HAP servers", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v14);
            *buf = 0;
            v18 = [v11 preferredHAPAccessoryForOperation:10 linkType:buf];
            [v21 retrieveHAPAccessoryForHMDAccessory:v11 linkType:*buf forceRetrieve:0 queue:0 completion:0];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&v22->_lock);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)evaluateAccessoryConnectionStatus
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [WeakRetained isCurrentDevicePrimaryResident];
    v8 = HMFBooleanToString();
    [WeakRetained isCurrentDeviceAvailableResident];
    v9 = HMFBooleanToString();
    [WeakRetained areAllResidentsUnreachable];
    v10 = HMFBooleanToString();
    *buf = 138544130;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Evaluating connection status for all accessories using - isCurrentDevicePrimaryResident = %{public}@, isCurrentDeviceAvailableResident = %{public}@, areAllResidentsUnreachable = %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [WeakRetained hapAccessories];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * i) checkHAPSessionRestore];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  if (defaultAccessoryShouldDisconnectOnIdleForHome(WeakRetained))
  {
    [(HMDHAPAccessoryConnectionCoordinator *)v5 _enableDisconnectOnIdleWithAccessories];
  }

  else
  {
    -[HMDHAPAccessoryConnectionCoordinator _disableDisconnectOnIdleWithAccessoriesAndConnect:](v5, "_disableDisconnectOnIdleWithAccessoriesAndConnect:", [WeakRetained isCurrentDevicePrimaryResident]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentChanged:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained isCurrentDeviceAvailableResident];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed, evaluating connection status with accessories", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDHAPAccessoryConnectionCoordinator *)v8 evaluateAccessoryConnectionStatus];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentChangedOnNonResident
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&v4->_home);
    }

    else
    {
      WeakRetained = 0;
    }

    v8 = [WeakRetained name];
    if (v4)
    {
      v9 = objc_loadWeakRetained(&v4->_home);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 uuid];
    v11 = [v10 UUIDString];
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@A resident device was updated for home %@(%@), evaluating current non-resident device connection status with accessories", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHAPAccessoryConnectionCoordinator *)v4 evaluateAccessoryConnectionStatus];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentResidentChanged:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [v4 isEnabled];
    v9 = HMFBooleanToString();
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&v6->_home);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained isCurrentDevicePrimaryResident];
    v11 = HMFBooleanToString();
    v13 = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Current device resident enable = %@, isPrimary = %@, evaluate connection status with accessories", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)v6 evaluateAccessoryConnectionStatus];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Home changed resident first accessory communication enablement", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)v6 evaluateAccessoryConnectionStatus];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentUpdated:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_home);
      goto LABEL_7;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  WeakRetained = 0;
LABEL_7:
  v9 = [WeakRetained isCurrentDeviceAvailableResident];

  if ((v9 & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }
}

- (void)handleResidentAddRemove:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 isCurrentDevice])
    {
      [(HMDHAPAccessoryConnectionCoordinator *)self handleCurrentResidentChanged:v7];
      goto LABEL_11;
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_home);
      goto LABEL_9;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  WeakRetained = 0;
LABEL_9:
  v9 = [WeakRetained isCurrentDeviceAvailableResident];

  if ((v9 & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

LABEL_11:
}

- (void)handleResidentStatusChanged:(id)a3
{
  v9 = a3;
  v4 = [v9 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    if ([v6 isCurrentDevice])
    {
      [(HMDHAPAccessoryConnectionCoordinator *)self handleCurrentResidentChanged:v6];
      goto LABEL_11;
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_home);
      goto LABEL_9;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  WeakRetained = 0;
LABEL_9:
  v8 = [WeakRetained isCurrentDeviceAvailableResident];

  if ((v8 & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

LABEL_11:
}

- (void)configureWithIsResidentCapable:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    self = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    WeakRetained = 0;
  }

  [(HMDHAPAccessoryConnectionCoordinator *)self addObserver:v4 selector:sel_handleResidentStatusChanged_ name:@"HMDResidentDeviceEnabledStateChangedNotification" object:0];
  if (v4)
  {
    Property = objc_getProperty(v4, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  [Property addObserver:v4 selector:sel_handleResidentAddRemove_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
  if (v4)
  {
    [objc_getProperty(v4 v8];
    v10 = objc_getProperty(v4, v9, 24, 1);
  }

  else
  {
    [0 addObserver:0 selector:sel_handleResidentAddRemove_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
    v10 = 0;
  }

  [v10 addObserver:v4 selector:sel_handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification_ name:@"HMDHomeIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification" object:WeakRetained];
  if (v4)
  {
    v12 = objc_getProperty(v4, v11, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = !v3;
  if (v3)
  {
    v14 = sel_handlePrimaryResidentChanged_;
  }

  else
  {
    v14 = sel_handleResidentUpdated_;
  }

  if (v13)
  {
    v15 = @"HMDResidentDeviceManagerUpdateResidentNotification";
  }

  else
  {
    v15 = @"HMDResidentDeviceManagerUpdatePrimaryResidentNotification";
  }

  v16 = v12;
  v17 = [WeakRetained residentDeviceManager];
  [v16 addObserver:v4 selector:v14 name:v15 object:v17];

  if (isiPadDevice())
  {
    if (v4)
    {
      v19 = objc_getProperty(v4, v18, 24, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = [WeakRetained residentDeviceManager];
    [v20 addObserver:v4 selector:sel_handleResidentUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v21];
  }

  [(HMDHAPAccessoryConnectionCoordinator *)v4 evaluateAccessoryConnectionStatus];
}

- (HMDHAPAccessoryConnectionCoordinator)initWithHome:(id)a3 notificationCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDHAPAccessoryConnectionCoordinator;
  v8 = [(HMDHAPAccessoryConnectionCoordinator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, v6);
    objc_storeStrong(&v9->_notificationCenter, a4);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_29095 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_29095, &__block_literal_global_29096);
  }

  v3 = logCategory__hmf_once_v12_29097;

  return v3;
}

uint64_t __51__HMDHAPAccessoryConnectionCoordinator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_29097;
  logCategory__hmf_once_v12_29097 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end