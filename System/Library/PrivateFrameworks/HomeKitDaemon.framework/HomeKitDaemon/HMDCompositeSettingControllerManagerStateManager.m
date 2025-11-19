@interface HMDCompositeSettingControllerManagerStateManager
+ (id)logCategory;
- (HMDCompositeSettingControllerManagerStateManager)initWithDataSource:(id)a3 notificationRegistrationProvider:(id)a4 subscribeWithOptions:(unint64_t)a5 delegate:(id)a6 uuid:(id)a7;
- (HMDCompositeSettingControllerManagerStateManagerDataSource)dataSource;
- (HMDCompositeSettingControllerManagerStateTransitionDelegate)delegate;
- (id)logIdentifier;
- (int64_t)stateForHomeUUID:(id)a3;
- (void)_computeResidentStateChangeForHome:(id)a3;
- (void)_createStateForHomeUUIDIfNotExist:(id)a3;
- (void)_handleAccessoryLanguagesChangedNotification:(id)a3;
- (void)_handleAccessoryRemovedNotification:(id)a3;
- (void)_handleCompositeSettingsControllerConfiguredNotification:(id)a3;
- (void)_handleHomeAdded:(id)a3;
- (void)_handleResidentDeviceUpdated:(id)a3;
- (void)_handleSiriEndpointProfileCreation:(id)a3;
- (void)_handleSiriEndpointProfileSettingsUpdate:(id)a3;
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

- (int64_t)stateForHomeUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_homeUUIDToState objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = &unk_283E73DD8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if ([v8 integerValue] <= 3)
  {
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = 4;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (id)logIdentifier
{
  v2 = [(HMDCompositeSettingControllerManagerStateManager *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleAccessoryRemovedNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDAccessoryNotificationKey"];

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
    v9 = [v4 object];
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
      v12 = [(HMDCompositeSettingControllerManagerStateManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v13 = [v11 uuid];
        [v12 languagesDidChangeForHome:v13];
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
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

- (void)_handleAccessoryLanguagesChangedNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification for language list change: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDHomeNotificationKey"];
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
    v13 = [(HMDCompositeSettingControllerManagerStateManager *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v12 uuid];
      [v13 languagesDidChangeForHome:v14];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
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

- (void)_computeResidentStateChangeForHome:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  if ([v4 isCurrentDeviceAvailableResident])
  {
    os_unfair_lock_lock_with_options();
    [(HMDCompositeSettingControllerManagerStateManager *)self _createStateForHomeUUIDIfNotExist:v5];
    v6 = [(NSMutableDictionary *)self->_homeUUIDToState objectForKeyedSubscript:v5];
    v7 = [v6 integerValue];
    v8 = [v4 isCurrentDeviceConfirmedPrimaryResident];
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [(NSMutableDictionary *)self->_homeUUIDToState setObject:v10 forKeyedSubscript:v5];

    os_unfair_lock_unlock(&self->_lock);
    if ((v7 - 1) > 3)
    {
      v11 = @"HMDCompositeSettingControllerManagerRunStatePrimaryResidentUnknown";
    }

    else
    {
      v11 = off_27867FBA0[v7 - 1];
    }

    v16 = @"HMDCompositeSettingControllerManagerRunStateResident";
    if (v8)
    {
      v16 = @"HMDCompositeSettingControllerManagerRunStatePrimaryResident";
    }

    v17 = v16;
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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
    v22 = [(HMDCompositeSettingControllerManagerStateManager *)v19 delegate];
    [v22 didUpdateCurrentRunState:v7 updatedState:v9 forHome:v5];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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
    [(HMDCompositeSettingControllerManagerStateManager *)v13 _createStateForHomeUUIDIfNotExist:v5];
    [(NSMutableDictionary *)v13->_homeUUIDToState setObject:&unk_283E73DC0 forKeyedSubscript:v5];
    os_unfair_lock_unlock(&v13->_lock);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleResidentDeviceUpdated:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v24 = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification for resident update: %{public}@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  if (v11)
  {
    v12 = @"HMDResidentDeviceManagerResidentDeviceNotificationKey";
  }

  else
  {
    v12 = @"HMDResidentDeviceResidentNotificationKey";
  }

  v13 = [v10 objectForKeyedSubscript:v12];
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

  v16 = [v15 home];
  v17 = v16;
  if (!v15)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
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

  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
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

  [(HMDCompositeSettingControllerManagerStateManager *)v6 _computeResidentStateChangeForHome:v16];
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriEndpointProfileCreation:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling HMDSiriEndpointProfileAddedNotification:%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 object];
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
    v12 = [v11 home];
    if (v12)
    {
      [(HMDCompositeSettingControllerManagerStateManager *)v6 _computeResidentStateChangeForHome:v12];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
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
    v14 = v6;
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

- (void)_handleSiriEndpointProfileSettingsUpdate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@received notification:%@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 object];
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

  v12 = [v11 accessory];
  v13 = [v12 home];
  v14 = [v13 uuid];
  if (!v14 || (v15 = v14, [v12 uuid], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@nil home:%@ or accessory:%@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = [(HMDCompositeSettingControllerManagerStateManager *)v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = [v13 uuid];
    v23 = [v12 uuid];
    [v21 didUpdateSiriEndpointSettingForHomeUUID:v22 accessoryUUID:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomeAdded:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@received notification:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(HMDCompositeSettingControllerManagerStateManager *)v6 dataSource];
  v10 = [v9 homes];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HMDCompositeSettingControllerManagerStateManager__handleHomeAdded___block_invoke;
  v12[3] = &unk_278682980;
  v12[4] = v6;
  [v10 na_each:v12];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

void __69__HMDCompositeSettingControllerManagerStateManager__handleHomeAdded___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 _createStateForHomeUUIDIfNotExist:v3];
}

- (void)_handleCompositeSettingsControllerConfiguredNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Did handle CompositeSettingsControllerDidConfigure notification", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDHomeUUIDOwnerUUIDKey"];

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
    v15 = [(HMDCompositeSettingControllerManagerStateManager *)v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v15 didConfigureCompositeSettingsControllerForHomeUUID:v13 accessoryUUID:v14];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
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

- (void)_createStateForHomeUUIDIfNotExist:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_homeUUIDToState objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543874;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = @"HMDCompositeSettingControllerManagerRunStateRegular";
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Initializing state for home %@ as %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(NSMutableDictionary *)self->_homeUUIDToState setObject:&unk_283E73DC0 forKeyedSubscript:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForNotifications
{
  v3 = [(HMDCompositeSettingControllerManagerStateManager *)self notificationRegistrationProvider];
  [v3 removeObserver:self];
}

- (void)_registerForNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDCompositeSettingControllerManagerStateManager *)v4 notificationOptions];
    if (v7 <= 3)
    {
      if (v7 == 1)
      {
        v8 = @"HMDCompositeSettingControllerRunStateResidentNotification";
        goto LABEL_14;
      }

      if (v7 == 2)
      {
        v8 = @"HMDCompositeSettingControllerRunStateHomeNotification";
        goto LABEL_14;
      }
    }

    else
    {
      switch(v7)
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
  if (([(HMDCompositeSettingControllerManagerStateManager *)v4 notificationOptions]& 1) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];
  }

  if (([(HMDCompositeSettingControllerManagerStateManager *)v4 notificationOptions]& 2) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleHomeAdded_ name:@"HMDHomeAddedNotification" object:0];
  }

  if (([(HMDCompositeSettingControllerManagerStateManager *)v4 notificationOptions]& 4) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleSiriEndpointProfileCreation_ name:@"HMDSiriEndpointProfileAddedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleSiriEndpointProfileSettingsUpdate_ name:@"HMDSiriEndpointProfileSettingsUpdatedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleCompositeSettingsControllerConfiguredNotification_ name:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0];
  }

  if (([(HMDCompositeSettingControllerManagerStateManager *)v4 notificationOptions]& 8) != 0)
  {
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleAccessoryLanguagesChangedNotification_ name:@"HMDAppleMediaAccessoryLanguagesChangedNotification" object:0];
    [(HMDCompositeSettingNotificationRegistrationProviding *)v4->_notificationRegistrationProvider addObserver:v4 selector:sel__handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDCompositeSettingControllerManagerStateManager)initWithDataSource:(id)a3 notificationRegistrationProvider:(id)a4 subscribeWithOptions:(unint64_t)a5 delegate:(id)a6 uuid:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = HMDCompositeSettingControllerManagerStateManager;
  v16 = [(HMDCompositeSettingControllerManagerStateManager *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, v14);
    objc_storeStrong(&v17->_notificationRegistrationProvider, a4);
    v17->_notificationOptions = a5;
    objc_storeStrong(&v17->_uuid, a7);
    v17->_lock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    homeUUIDToState = v17->_homeUUIDToState;
    v17->_homeUUIDToState = v18;

    objc_storeWeak(&v17->_dataSource, v12);
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