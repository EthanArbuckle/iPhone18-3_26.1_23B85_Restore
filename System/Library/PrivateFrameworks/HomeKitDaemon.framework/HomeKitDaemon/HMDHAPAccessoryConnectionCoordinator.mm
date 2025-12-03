@interface HMDHAPAccessoryConnectionCoordinator
+ (id)logCategory;
- (HMDHAPAccessoryConnectionCoordinator)initWithHome:(id)home notificationCenter:(id)center;
- (id)logIdentifier;
- (void)_disableDisconnectOnIdleWithAccessoriesAndConnect:(BOOL)connect;
- (void)_enableDisconnectOnIdleWithAccessories;
- (void)configureWithIsResidentCapable:(BOOL)capable;
- (void)evaluateAccessoryConnectionStatus;
- (void)handleCurrentResidentChanged:(id)changed;
- (void)handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification:(id)notification;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleResidentAddRemove:(id)remove;
- (void)handleResidentChangedOnNonResident;
- (void)handleResidentStatusChanged:(id)changed;
- (void)handleResidentUpdated:(id)updated;
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

  uuid = [WeakRetained uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
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
  hapAccessories = [WeakRetained hapAccessories];
  v5 = [hapAccessories countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ((shouldDisconnectOnIdleForAccessory(v8) & 1) != 0 && ([v8 shouldDisconnectOnIdle] & 1) == 0)
        {
          [v8 setShouldDisconnectOnIdle:1];
        }
      }

      v5 = [hapAccessories countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_disableDisconnectOnIdleWithAccessoriesAndConnect:(BOOL)connect
{
  connectCopy = connect;
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  selfCopy = self;
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
  hapAccessories = [WeakRetained hapAccessories];
  v7 = [hapAccessories countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(hapAccessories);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 shouldDisconnectOnIdle])
        {
          [v11 setShouldDisconnectOnIdle:0];
        }

        if (connectCopy)
        {
          bridge = [v11 bridge];
          v13 = bridge == 0;

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = selfCopy;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              *buf = v20;
              *&buf[4] = v17;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Triggering evaluation of HAP servers", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v14);
            *buf = 0;
            v18 = [v11 preferredHAPAccessoryForOperation:10 linkType:buf];
            [v21 retrieveHAPAccessoryForHMDAccessory:v11 linkType:*buf forceRetrieve:0 queue:0 completion:0];
          }
        }
      }

      v7 = [hapAccessories countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
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
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [WeakRetained isCurrentDevicePrimaryResident];
    v8 = HMFBooleanToString();
    [WeakRetained isCurrentDeviceAvailableResident];
    v9 = HMFBooleanToString();
    [WeakRetained hasAnyResident];
    v10 = HMFBooleanToString();
    *buf = 138544130;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Evaluating connection status for all accessories using - isCurrentDevicePrimaryResident = %{public}@, isCurrentDeviceAvailableResident = %{public}@, hasAnyResident = %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  hapAccessories = [WeakRetained hapAccessories];
  v12 = [hapAccessories countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(hapAccessories);
        }

        [*(*(&v17 + 1) + 8 * i) checkHAPSessionRestore];
      }

      v13 = [hapAccessories countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  if ([WeakRetained isCurrentDevicePrimaryResident])
  {
    -[HMDHAPAccessoryConnectionCoordinator _disableDisconnectOnIdleWithAccessoriesAndConnect:](selfCopy, "_disableDisconnectOnIdleWithAccessoriesAndConnect:", [WeakRetained isCurrentDevicePrimaryResident]);
  }

  else
  {
    [(HMDHAPAccessoryConnectionCoordinator *)selfCopy _enableDisconnectOnIdleWithAccessories];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed, evaluating connection status with accessories", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentChangedOnNonResident
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_home);
    }

    else
    {
      WeakRetained = 0;
    }

    name = [WeakRetained name];
    if (selfCopy)
    {
      v9 = objc_loadWeakRetained(&selfCopy->_home);
    }

    else
    {
      v9 = 0;
    }

    uuid = [v9 uuid];
    uUIDString = [uuid UUIDString];
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = uUIDString;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@A resident device was updated for home %@(%@), evaluating current non-resident device connection status with accessories", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentResidentChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [changedCopy isEnabled];
    v9 = HMFBooleanToString();
    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_home);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Current device resident enable = %@, isPrimary = %@, evaluate connection status with accessories", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Home changed resident first accessory communication enablement", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentUpdated:(id)updated
{
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    [(HMDHAPAccessoryConnectionCoordinator *)v8 handleResidentAddRemove:v9, v10];
  }
}

- (void)handleResidentAddRemove:(id)remove
{
  removeCopy = remove;
  userInfo = [removeCopy userInfo];
  v5 = [userInfo objectForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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
  isCurrentDeviceAvailableResident = [WeakRetained isCurrentDeviceAvailableResident];

  if ((isCurrentDeviceAvailableResident & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

LABEL_11:
}

- (void)handleResidentStatusChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
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
  isCurrentDeviceAvailableResident = [WeakRetained isCurrentDeviceAvailableResident];

  if ((isCurrentDeviceAvailableResident & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

LABEL_11:
}

- (void)configureWithIsResidentCapable:(BOOL)capable
{
  capableCopy = capable;
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    self = objc_getProperty(selfCopy, v5, 24, 1);
  }

  else
  {
    WeakRetained = 0;
  }

  [(HMDHAPAccessoryConnectionCoordinator *)self addObserver:selfCopy selector:sel_handleResidentStatusChanged_ name:@"HMDResidentDeviceEnabledStateChangedNotification" object:0];
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  [Property addObserver:selfCopy selector:sel_handleResidentAddRemove_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
  if (selfCopy)
  {
    [objc_getProperty(selfCopy v8];
    v10 = objc_getProperty(selfCopy, v9, 24, 1);
  }

  else
  {
    [0 addObserver:0 selector:sel_handleResidentAddRemove_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
    v10 = 0;
  }

  [v10 addObserver:selfCopy selector:sel_handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification_ name:@"HMDHomeIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification" object:WeakRetained];
  if (selfCopy)
  {
    v12 = objc_getProperty(selfCopy, v11, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = &selRef_handlePrimaryResidentChanged_;
  v14 = !capableCopy;
  if (!capableCopy)
  {
    v13 = &selRef_handleResidentUpdated_;
  }

  v15 = *v13;
  if (v14)
  {
    v16 = @"HMDResidentDeviceManagerUpdateResidentNotification";
  }

  else
  {
    v16 = @"HMDResidentDeviceManagerUpdatePrimaryResidentNotification";
  }

  v17 = v12;
  residentDeviceManager = [WeakRetained residentDeviceManager];
  [v17 addObserver:selfCopy selector:v15 name:v16 object:residentDeviceManager];

  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
}

- (HMDHAPAccessoryConnectionCoordinator)initWithHome:(id)home notificationCenter:(id)center
{
  homeCopy = home;
  centerCopy = center;
  v11.receiver = self;
  v11.super_class = HMDHAPAccessoryConnectionCoordinator;
  v8 = [(HMDHAPAccessoryConnectionCoordinator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v9->_notificationCenter, center);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_43536 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_43536, &__block_literal_global_43537);
  }

  v3 = logCategory__hmf_once_v12_43538;

  return v3;
}

void __51__HMDHAPAccessoryConnectionCoordinator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_43538;
  logCategory__hmf_once_v12_43538 = v1;
}

@end