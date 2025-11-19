@interface HMDAccessoryFirmwareUpdatePresencePolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryFirmwareUpdatePresencePolicy)initWithAccessory:(id)a3 presenceNeeded:(BOOL)a4 workQueue:(id)a5;
- (HMDHome)home;
- (unint64_t)hash;
- (void)configure;
- (void)handlePresenceChange:(id)a3;
- (void)registerForNotifications;
@end

@implementation HMDAccessoryFirmwareUpdatePresencePolicy

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)evaluate
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  v4 = [v3 featuresDataSource];
  v5 = [v4 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

  if (v5)
  {
    v6 = [v3 homeActivityStateManager];
    [v6 userActivityStatesDetails];
  }

  else
  {
    v6 = [v3 presenceMonitor];
    [v6 currentHomePresence];
  }
  v7 = ;

  if ([(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded])
  {
    if ([v3 isCurrentDeviceAvailableResident])
    {
      if (v7)
      {
        LOBYTE(v8) = [v7 isAnyUserAtHome];
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          [v7 isAnyUserAtHome];
          v13 = HMFBooleanToString();
          v28 = 138543618;
          v29 = v12;
          v30 = 2112;
          v31 = v13;
          v14 = "%{public}@final policy outcome: (presenceNeeded, resident, isAnyUserAtHome -> %@)";
LABEL_14:
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v14, &v28, 0x16u);

LABEL_23:
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      v9 = objc_autoreleasePoolPush();
      v23 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v21;
        v22 = "%{public}@(presenceNeeded, resident, currentHomePresence is nil) -> NO";
        goto LABEL_40;
      }

LABEL_42:
      LOBYTE(v8) = 0;
      goto LABEL_43;
    }

    v8 = [v3 homeLocation];
    v9 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v11 = v17;
    if (v8 <= 1)
    {
      if (!v8)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v21;
          v22 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationUnknown) -> NO";
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      if (v8 == 1)
      {
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        v12 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v12;
        v18 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationAtHome) -> YES";
        LOBYTE(v8) = 1;
LABEL_22:
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v18, &v28, 0xCu);
        goto LABEL_23;
      }

LABEL_32:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "homeLocation")}];
        v28 = 138543618;
        v29 = v21;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Bad configuration -- (presenceNeeded, non-resident, missing homeLocation %@", &v28, 0x16u);

LABEL_41:
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    if (v8 == 2)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v21;
        v22 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationAway) -> NO";
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    if (v8 != 3)
    {
      goto LABEL_32;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v21 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v21;
    v22 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationNearbyHome) -> NO";
LABEL_40:
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v22, &v28, 0xCu);
    goto LABEL_41;
  }

  if (([v3 isResidentSupported] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v19 = self;
    v11 = HMFGetOSLogHandle();
    LOBYTE(v8) = 1;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    v12 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v12;
    v18 = "%{public}@(presenceNotNeeded, !home.isResidentSupported) -> YES";
    goto LABEL_22;
  }

  if (([v3 isCurrentDeviceAvailableResident] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v20 = self;
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v21 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v21;
    v22 = "%{public}@(presenceNotNeeded, non-resident) -> NO";
    goto LABEL_40;
  }

  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v25 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v21;
      v22 = "%{public}@(presenceNotNeeded, resident, currentHomePresence is nil) -> NO";
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  LOBYTE(v8) = [v7 isNoUserAtHome];
  v9 = objc_autoreleasePoolPush();
  v15 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    [v7 isNoUserAtHome];
    v13 = HMFBooleanToString();
    v28 = 138543618;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v14 = "%{public}@final policy outcome: (presenceNotNeeded, resident, isNoUserAtHome -> %@)";
    goto LABEL_14;
  }

LABEL_43:

  objc_autoreleasePoolPop(v9);
  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)handlePresenceChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDAccessoryFirmwareUpdatePresencePolicy_handlePresenceChange___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __65__HMDAccessoryFirmwareUpdatePresencePolicy_handlePresenceChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@ -- presence has changed, updating policy status", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) evaluateAndNotify];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerForNotifications
{
  v12 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  if (![v12 isCurrentDeviceAvailableResident])
  {
    v10 = [v12 notificationCenter];
    [v10 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomeDidArriveHomeNotificationKey" object:v12];

    v5 = [v12 notificationCenter];
    v6 = v5;
    v7 = @"HMDHomeDidLeaveHomeNotificationKey";
    v8 = self;
    v9 = v12;
    goto LABEL_5;
  }

  v3 = [v12 featuresDataSource];
  v4 = [v3 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

  v5 = [v12 notificationCenter];
  v6 = v5;
  if (v4)
  {
    v7 = @"HMDHomePresenceUpdateNotification";
    v8 = self;
    v9 = 0;
LABEL_5:
    [v5 addObserver:v8 selector:sel_handlePresenceChange_ name:v7 object:v9];
    goto LABEL_7;
  }

  v11 = [v12 presenceMonitor];
  [v6 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomePresenceEvaluatedNotification" object:v11];

LABEL_7:
}

- (void)configure
{
  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:[(HMDAccessoryFirmwareUpdatePresencePolicy *)self evaluate]];

  [(HMDAccessoryFirmwareUpdatePresencePolicy *)self registerForNotifications];
}

- (HMDAccessoryFirmwareUpdatePresencePolicy)initWithAccessory:(id)a3 presenceNeeded:(BOOL)a4 workQueue:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HMDAccessoryFirmwareUpdatePresencePolicy;
  v9 = [(HMDAccessoryFirmwareUpdatePolicy *)&v12 initWithAccessory:v8 workQueue:a5];
  if (v9)
  {
    v10 = [v8 home];
    objc_storeWeak(&v9->_home, v10);

    v9->_presenceNeeded = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
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
      v7 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
      v8 = [v7 uuid];
      v9 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)v6 home];
      v10 = [v9 uuid];
      if ([v8 isEqual:v10])
      {
        v11 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
        v12 = [v11 uuid];
        v13 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
        [v13 uuid];
        v14 = v19 = v7;
        v18 = [v12 isEqual:v14];

        if (v18)
        {
          v15 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded];
          v16 = v15 ^ [(HMDAccessoryFirmwareUpdatePresencePolicy *)v6 presenceNeeded]^ 1;
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    LOBYTE(v16) = 0;
    goto LABEL_12;
  }

  LOBYTE(v16) = 1;
LABEL_13:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  v4 = [v3 uuid];
  v5 = [v4 hash];

  return v5 ^ [(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_161792 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_161792, &__block_literal_global_161793);
  }

  v3 = logCategory__hmf_once_v1_161794;

  return v3;
}

void __55__HMDAccessoryFirmwareUpdatePresencePolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_161794;
  logCategory__hmf_once_v1_161794 = v1;
}

@end