@interface HMDCompositeSettingControllerManagerStateManager
+ (id)logCategory;
- (HMDCompositeSettingControllerManagerStateManager)initWithDataSource:(id)source notificationRegistrationProvider:(id)provider subscribeWithOptions:(unint64_t)options delegate:(id)delegate uuid:(id)uuid;
- (HMDCompositeSettingControllerManagerStateManagerDataSource)dataSource;
- (HMDCompositeSettingControllerManagerStateTransitionDelegate)delegate;
- (id)logIdentifier;
- (int64_t)stateForHomeUUID:(id)d;
- (void)_computeResidentStateChangeForHome:(id)home;
- (void)_createStateForHomeUUIDIfNotExist:(id)exist;
- (void)_handleAccessoryLanguagesChangedNotification:(id)notification;
- (void)_handleAccessoryRemovedNotification:(id)notification;
- (void)_handleCompositeSettingsControllerConfiguredNotification:(id)notification;
- (void)_handleHomeAdded:(id)added;
- (void)_handleResidentDeviceUpdated:(id)updated;
- (void)_handleSiriEndpointProfileCreation:(id)creation;
- (void)_handleSiriEndpointProfileSettingsUpdate:(id)update;
- (void)_registerForNotifications;
- (void)_unregisterForNotifications;
@end

@implementation HMDCompositeSettingControllerManagerStateManager

- (HMDCompositeSettingControllerManagerStateManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDCompositeSettingControllerManagerStateTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)stateForHomeUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_homeUUIDToState objectForKeyedSubscript:dCopy];
  v6 = v5;
  v7 = &unk_283E73DD8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if ([v8 integerValue] <= 3)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  os_unfair_lock_unlock(&self->_lock);
  return integerValue;
}

- (id)logIdentifier
{
  uuid = [(HMDCompositeSettingControllerManagerStateManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_handleAccessoryRemovedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDAccessoryNotificationKey"];

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

  if (v8 && [v8 isHomePod])
  {
    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = object;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      delegate = [(HMDCompositeSettingControllerManagerStateManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        uuid = [v11 uuid];
        [delegate languagesDidChangeForHome:uuid];
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find home for removed accessory, will not process language change", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccessoryLanguagesChangedNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification for language list change: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDHomeNotificationKey"];
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

  if (v12)
  {
    delegate = [(HMDCompositeSettingControllerManagerStateManager *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      uuid = [v12 uuid];
      [delegate languagesDidChangeForHome:uuid];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find home to work with, will not process language change", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_computeResidentStateChangeForHome:(id)home
{
  v30 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  uuid = [homeCopy uuid];
  if ([homeCopy isCurrentDeviceAvailableResident])
  {
    os_unfair_lock_lock_with_options();
    [(HMDCompositeSettingControllerManagerStateManager *)self _createStateForHomeUUIDIfNotExist:uuid];
    v6 = [(NSMutableDictionary *)self->_homeUUIDToState objectForKeyedSubscript:uuid];
    integerValue = [v6 integerValue];
    isCurrentDeviceConfirmedPrimaryResident = [homeCopy isCurrentDeviceConfirmedPrimaryResident];
    if (isCurrentDeviceConfirmedPrimaryResident)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [(NSMutableDictionary *)self->_homeUUIDToState setObject:v10 forKeyedSubscript:uuid];

    os_unfair_lock_unlock(&self->_lock);
    if ((integerValue - 1) > 3)
    {
      v11 = @"HMDCompositeSettingControllerManagerRunStatePrimaryResidentUnknown";
    }

    else
    {
      v11 = off_27867FBA0[integerValue - 1];
    }

    v16 = @"HMDCompositeSettingControllerManagerRunStateResident";
    if (isCurrentDeviceConfirmedPrimaryResident)
    {
      v16 = @"HMDCompositeSettingControllerManagerRunStatePrimaryResident";
    }

    v17 = v16;
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@updated device is a resident and is the current device, state: %@ -> %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    delegate = [(HMDCompositeSettingControllerManagerStateManager *)selfCopy delegate];
    [delegate didUpdateCurrentRunState:integerValue updatedState:v9 forHome:uuid];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = @"HMDCompositeSettingControllerManagerRunStateRegular";
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Current device is not a resident, will update current state to %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    os_unfair_lock_lock_with_options();
    [(HMDCompositeSettingControllerManagerStateManager *)selfCopy2 _createStateForHomeUUIDIfNotExist:uuid];
    [(NSMutableDictionary *)selfCopy2->_homeUUIDToState setObject:&unk_283E73DC0 forKeyedSubscript:uuid];
    os_unfair_lock_unlock(&selfCopy2->_lock);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleResidentDeviceUpdated:(id)updated
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [updatedCopy name];
    v24 = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification for resident update: %{public}@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [updatedCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  if (v11)
  {
    v12 = @"HMDResidentDeviceManagerResidentDeviceNotificationKey";
  }

  else
  {
    v12 = @"HMDResidentDeviceResidentNotificationKey";
  }

  v13 = [userInfo objectForKeyedSubscript:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  home = [v15 home];
  v17 = home;
  if (!v15)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      v22 = "%{public}@Couldn't find resident, will not process resident update";
LABEL_16:
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v22, &v24, 0xCu);
    }

LABEL_17:

    objc_autoreleasePoolPop(v18);
    goto LABEL_18;
  }

  if (!home)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      v22 = "%{public}@Couldn't find home to work with, will not process resident update";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  [(HMDCompositeSettingControllerManagerStateManager *)selfCopy _computeResidentStateChangeForHome:home];
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriEndpointProfileCreation:(id)creation
{
  v26 = *MEMORY[0x277D85DE8];
  creationCopy = creation;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = creationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling HMDSiriEndpointProfileAddedNotification:%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  object = [creationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = object;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    home = [v11 home];
    if (home)
    {
      [(HMDCompositeSettingControllerManagerStateManager *)selfCopy _computeResidentStateChangeForHome:home];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@HomeUUID or home are null, will not update state after siri endpoint profile creation", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = 0;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ is not a HAPAccessory", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriEndpointProfileSettingsUpdate:(id)update
{
  v31 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = updateCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@received notification:%@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  object = [updateCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = object;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  accessory = [v11 accessory];
  home = [accessory home];
  uuid = [home uuid];
  if (!uuid || (v15 = uuid, [accessory uuid], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = accessory;
      v29 = 2112;
      v30 = home;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@nil home:%@ or accessory:%@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  delegate = [(HMDCompositeSettingControllerManagerStateManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    uuid2 = [home uuid];
    uuid3 = [accessory uuid];
    [delegate didUpdateSiriEndpointSettingForHomeUUID:uuid2 accessoryUUID:uuid3];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomeAdded:(id)added
{
  v17 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = addedCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@received notification:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  dataSource = [(HMDCompositeSettingControllerManagerStateManager *)selfCopy dataSource];
  homes = [dataSource homes];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HMDCompositeSettingControllerManagerStateManager__handleHomeAdded___block_invoke;
  v12[3] = &unk_278682980;
  v12[4] = selfCopy;
  [homes na_each:v12];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

void __69__HMDCompositeSettingControllerManagerStateManager__handleHomeAdded___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 _createStateForHomeUUIDIfNotExist:v3];
}

- (void)_handleCompositeSettingsControllerConfiguredNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did handle CompositeSettingsControllerDidConfigure notification", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDHomeUUIDOwnerUUIDKey"];

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

  v13 = [v12 hmf_UUIDForKey:@"HMDCompositeSettingControllerHomeUUIDNotificationKey"];
  v14 = [v12 hmf_UUIDForKey:@"HMDCompositeSettingControllerOwnerUUIDNotificationKey"];
  if (v14 && v13)
  {
    delegate = [(HMDCompositeSettingControllerManagerStateManager *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate didConfigureCompositeSettingsControllerForHomeUUID:v13 accessoryUUID:v14];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil hapAccessoryUUID:%@ or homeUUID:%@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_createStateForHomeUUIDIfNotExist:(id)exist
{
  v17 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_homeUUIDToState objectForKeyedSubscript:existCopy];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543874;
      v12 = v9;
      v13 = 2112;
      v14 = existCopy;
      v15 = 2112;
      v16 = @"HMDCompositeSettingControllerManagerRunStateRegular";
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Initializing state for home %@ as %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(NSMutableDictionary *)self->_homeUUIDToState setObject:&unk_283E73DC0 forKeyedSubscript:existCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForNotifications
{
  notificationRegistrationProvider = [(HMDCompositeSettingControllerManagerStateManager *)self notificationRegistrationProvider];
  [notificationRegistrationProvider removeObserver:self];
}

- (void)_registerForNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    notificationOptions = [(HMDCompositeSettingControllerManagerStateManager *)selfCopy notificationOptions];
    if (notificationOptions <= 3)
    {
      if (notificationOptions == 1)
      {
        v8 = @"HMDCompositeSettingControllerRunStateResidentNotification";
        goto LABEL_14;
      }

      if (notificationOptions == 2)
      {
        v8 = @"HMDCompositeSettingControllerRunStateHomeNotification";
        goto LABEL_14;
      }
    }

    else
    {
      switch(notificationOptions)
      {
        case 4:
          v8 = @"HMDCompositeSettingControllerRunStateSidekickNotification";
          goto LABEL_14;
        case 8:
          v8 = @"HMDCompositeSettingControllerRunStateAccessoryNotification";
          goto LABEL_14;
        case 15:
          v8 = @"HMDCompositeSettingControllerRunStateAllNotification";
LABEL_14:
          v10 = 138543618;
          v11 = v6;
          v12 = 2112;
          v13 = v8;
          _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Register for notification with option: %@", &v10, 0x16u);

          goto LABEL_15;
      }
    }

    v8 = @"HMDCompositeSettingControllerRunStateUnkownNotification";
    goto LABEL_14;
  }

LABEL_15:

  objc_autoreleasePoolPop(v3);
  if (([(HMDCompositeSettingControllerManagerStateManager *)selfCopy notificationOptions]& 1) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];
  }

  if (([(HMDCompositeSettingControllerManagerStateManager *)selfCopy notificationOptions]& 2) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleHomeAdded_ name:@"HMDHomeAddedNotification" object:0];
  }

  if (([(HMDCompositeSettingControllerManagerStateManager *)selfCopy notificationOptions]& 4) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleSiriEndpointProfileCreation_ name:@"HMDSiriEndpointProfileAddedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleSiriEndpointProfileSettingsUpdate_ name:@"HMDSiriEndpointProfileSettingsUpdatedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleCompositeSettingsControllerConfiguredNotification_ name:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0];
  }

  if (([(HMDCompositeSettingControllerManagerStateManager *)selfCopy notificationOptions]& 8) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleAccessoryLanguagesChangedNotification_ name:@"HMDAppleMediaAccessoryLanguagesChangedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)selfCopy->_notificationRegistrationProvider addObserver:selfCopy selector:sel__handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDCompositeSettingControllerManagerStateManager)initWithDataSource:(id)source notificationRegistrationProvider:(id)provider subscribeWithOptions:(unint64_t)options delegate:(id)delegate uuid:(id)uuid
{
  sourceCopy = source;
  providerCopy = provider;
  delegateCopy = delegate;
  uuidCopy = uuid;
  v21.receiver = self;
  v21.super_class = HMDCompositeSettingControllerManagerStateManager;
  v16 = [(HMDCompositeSettingControllerManagerStateManager *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v17->_notificationRegistrationProvider, provider);
    v17->_notificationOptions = options;
    objc_storeStrong(&v17->_uuid, uuid);
    v17->_lock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    homeUUIDToState = v17->_homeUUIDToState;
    v17->_homeUUIDToState = v18;

    objc_storeWeak(&v17->_dataSource, sourceCopy);
    [(HMDCompositeSettingControllerManagerStateManager *)v17 _unregisterForNotifications];
    [(HMDCompositeSettingControllerManagerStateManager *)v17 _registerForNotifications];
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29_203961 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29_203961, &__block_literal_global_203962);
  }

  v3 = logCategory__hmf_once_v30_203963;

  return v3;
}

void __63__HMDCompositeSettingControllerManagerStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v30_203963;
  logCategory__hmf_once_v30_203963 = v1;
}

@end