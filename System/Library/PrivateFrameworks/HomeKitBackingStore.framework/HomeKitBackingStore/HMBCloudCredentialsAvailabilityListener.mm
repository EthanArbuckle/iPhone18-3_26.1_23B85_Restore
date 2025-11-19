@interface HMBCloudCredentialsAvailabilityListener
+ (id)logCategory;
- (HMBCloudCredentialsAvailabilityListener)initWithContainer:(id)a3;
- (HMBCloudCredentialsAvailabilityListener)initWithContainer:(id)a3 notificationCenter:(id)a4;
- (id)_waitForAccountAvailabilityAndRecheckIfAlreadyAvailable:(os_unfair_lock_s *)a1;
- (id)logIdentifier;
- (id)waitForKeychainAvailability;
- (void)_checkAccountAvailability;
- (void)_handleKeychainAvailabilityChanged;
- (void)handleAccountChangedNotification:(id)a3;
- (void)handleIdentityUpdateNotification:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMBCloudCredentialsAvailabilityListener

- (void)timerDidFire:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling keychain availability timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMBCloudCredentialsAvailabilityListener *)v8 _handleKeychainAvailabilityChanged];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleKeychainAvailabilityChanged
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v7 = objc_getProperty(a1, v2, 40, 1);
    objc_setProperty_atomic(a1, v3, 0, 40);
    objc_setProperty_atomic(a1, v4, 0, 48);
    v6 = objc_getProperty(a1, v5, 24, 1);
    [v6 removeObserver:a1 name:*MEMORY[0x277CBBF90] object:0];

    os_unfair_lock_unlock(a1 + 2);
    [v7 finishWithNoResult];
  }
}

- (id)logIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  v2 = [(HMBCloudCredentialsAvailabilityListener *)self containerID];
  v3 = [v2 containerIdentifier];

  return v3;
}

- (void)handleIdentityUpdateNotification:(id)a3
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
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling CKIdentityUpdateNotification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBCloudCredentialsAvailabilityListener *)v6 _handleKeychainAvailabilityChanged];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccountChangedNotification:(id)a3
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
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling CKAccountChangedNotification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBCloudCredentialsAvailabilityListener *)v6 _checkAccountAvailability];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_checkAccountAvailability
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v13 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Check account availability"];
    v2 = objc_autoreleasePoolPush();
    v3 = a1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [v13 identifier];
      v7 = [v6 shortDescription];
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching account info", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = objc_getProperty(v3, v8, 16, 1);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__HMBCloudCredentialsAvailabilityListener__checkAccountAvailability__block_invoke;
    v11[3] = &unk_2786E03A0;
    v11[4] = v3;
    v12 = v13;
    [v9 accountInfoWithCompletionHandler:v11];

    __HMFActivityScopeLeave();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __68__HMBCloudCredentialsAvailabilityListener__checkAccountAvailability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) identifier];
      v20 = [v19 shortDescription];
      v36 = 138543874;
      v37 = v18;
      v38 = 2114;
      v39 = v20;
      v40 = 2112;
      v41 = v6;
      v21 = "%{public}@[%{public}@] Failed to fetch account info: %@";
      v22 = v10;
      v23 = 32;
LABEL_19:
      _os_log_impl(&dword_22AD27000, v22, OS_LOG_TYPE_ERROR, v21, &v36, v23);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v36 = 138543874;
    v37 = v11;
    v38 = 2114;
    v39 = v13;
    v40 = 2112;
    v41 = v5;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetched account info: %@", &v36, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if ([v5 accountStatus] != 1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) identifier];
      v20 = [v19 shortDescription];
      v36 = 138543618;
      v37 = v18;
      v38 = 2114;
      v39 = v20;
      v21 = "%{public}@[%{public}@] CloudKit account is not currently available; waiting for CKAccountChangedNotification to check again";
      goto LABEL_18;
    }

LABEL_20:

    objc_autoreleasePoolPop(v7);
    goto LABEL_21;
  }

  if (([v5 hasValidCredentials] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) identifier];
      v20 = [v19 shortDescription];
      v36 = 138543618;
      v37 = v18;
      v38 = 2114;
      v39 = v20;
      v21 = "%{public}@[%{public}@] Account does not have valid credentials; waiting for CKAccountChangedNotification to check again";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v14, 16, 1);
  }

  v16 = [Property options];
  if ([v16 useZoneWidePCS])
  {
    v17 = [v5 supportsDeviceToDeviceEncryption];

    if ((v17 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 40) identifier];
        v20 = [v19 shortDescription];
        v36 = 138543618;
        v37 = v18;
        v38 = 2114;
        v39 = v20;
        v21 = "%{public}@[%{public}@] Manatee is not currently available; waiting for CKAccountChangedNotification to check again";
LABEL_18:
        v22 = v10;
        v23 = 22;
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = objc_autoreleasePoolPush();
  v26 = *(a1 + 32);
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = [*(a1 + 40) identifier];
    v30 = [v29 shortDescription];
    v36 = 138543618;
    v37 = v28;
    v38 = 2114;
    v39 = v30;
    _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Account is available", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v32 = *(a1 + 32);
  if (v32)
  {
    v32 = objc_getProperty(v32, v31, 24, 1);
    v33 = *(a1 + 32);
  }

  else
  {
    v33 = 0;
  }

  [v32 removeObserver:v33 name:*MEMORY[0x277CBBF00] object:0];
  v35 = *(a1 + 32);
  if (v35)
  {
    v35 = objc_getProperty(v35, v34, 32, 1);
  }

  [v35 finishWithNoResult];
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)waitForKeychainAvailability
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self && objc_getProperty(self, v3, 40, 1))
  {
    v5 = 0;
LABEL_10:
    Property = objc_getProperty(self, v4, 40, 1);
    goto LABEL_11;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v9;
    _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Will wait for keychain availability", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  if (self)
  {
    objc_setProperty_atomic(v7, v10, v11, 40);
  }

  v12 = [(HMBCloudCredentialsAvailabilityListener *)v7 keychainAvailabilityTimerFactory];
  v13 = v12[2](v12, 0, 600.0);
  v15 = v13;
  if (self)
  {
    objc_setProperty_atomic(v7, v14, v13, 48);

    v5 = 1;
    goto LABEL_10;
  }

  Property = 0;
  v5 = 1;
LABEL_11:
  v17 = Property;
  os_unfair_lock_unlock(&self->_lock.lock);
  if (v5)
  {
    if (self)
    {
      [objc_getProperty(self v18];
      [objc_getProperty(self v19];
      v21 = objc_getProperty(self, v20, 48, 1);
    }

    else
    {
      [0 addObserver:0 selector:sel_handleIdentityUpdateNotification_ name:*MEMORY[0x277CBBF90] object:0];
      [0 setDelegate:0];
      v21 = 0;
    }

    [v21 resume];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_waitForAccountAvailabilityAndRecheckIfAlreadyAvailable:(os_unfair_lock_s *)a1
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v23 = 0;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  if (objc_getProperty(a1, v4, 32, 1))
  {
    if (!a2 || (v6 = objc_getProperty(a1, v5, 32, 1), v7 = [v6 isFinished], v6, !v7))
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMFBooleanToString();
        v27 = 138543874;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        Property = objc_getProperty(v13, v17, 32, 1);
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_INFO, "%{public}@Skipping re-check with should check: %@ account available future: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v19 = 1;
      goto LABEL_14;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v11;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Will reset and re-check account availability", &v27, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v20;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Will wait for account availability", &v27, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v21 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_setProperty_atomic(v9, v22, v21, 32);

  v19 = 0;
LABEL_14:
  v23 = objc_getProperty(a1, v18, 32, 1);
  os_unfair_lock_unlock(a1 + 2);
  if ((v19 & 1) == 0)
  {
    [objc_getProperty(a1 v24];
    [(HMBCloudCredentialsAvailabilityListener *)a1 _checkAccountAvailability];
  }

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (HMBCloudCredentialsAvailabilityListener)initWithContainer:(id)a3 notificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMBCloudCredentialsAvailabilityListener;
  v9 = [(HMBCloudCredentialsAvailabilityListener *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, a3);
    objc_storeStrong(&v10->_notificationCenter, a4);
    keychainAvailabilityTimerFactory = v10->_keychainAvailabilityTimerFactory;
    v10->_keychainAvailabilityTimerFactory = &__block_literal_global_432;
  }

  return v10;
}

id __80__HMBCloudCredentialsAvailabilityListener_initWithContainer_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

- (HMBCloudCredentialsAvailabilityListener)initWithContainer:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [(HMBCloudCredentialsAvailabilityListener *)self initWithContainer:v5 notificationCenter:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_12);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

uint64_t __54__HMBCloudCredentialsAvailabilityListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17;
  logCategory__hmf_once_v17 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end