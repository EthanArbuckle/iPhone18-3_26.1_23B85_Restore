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
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  v4 = [v3 presenceMonitor];
  v5 = [v4 currentHomePresence];

  if ([(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded])
  {
    if ([v3 isCurrentDeviceAvailableResident])
    {
      if (v5)
      {
        LOBYTE(v6) = [v5 isAnyUserAtHome];
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          [v5 isAnyUserAtHome];
          v11 = HMFBooleanToString();
          v26 = 138543618;
          v27 = v10;
          v28 = 2112;
          v29 = v11;
          v12 = "%{public}@final policy outcome: (presenceNeeded, resident, isAnyUserAtHome -> %@)";
LABEL_11:
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v12, &v26, 0x16u);

LABEL_20:
          goto LABEL_40;
        }

        goto LABEL_40;
      }

      v7 = objc_autoreleasePoolPush();
      v21 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v19;
        v20 = "%{public}@(presenceNeeded, resident, currentHomePresence is nil) -> NO";
        goto LABEL_37;
      }

LABEL_39:
      LOBYTE(v6) = 0;
      goto LABEL_40;
    }

    v6 = [v3 homeLocation];
    v7 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    v9 = v15;
    if (v6 <= 1)
    {
      if (!v6)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v19;
          v20 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationUnknown) -> NO";
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      if (v6 == 1)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v10 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v10;
        v16 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationAtHome) -> YES";
        LOBYTE(v6) = 1;
LABEL_19:
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v16, &v26, 0xCu);
        goto LABEL_20;
      }

LABEL_29:
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "homeLocation")}];
        v26 = 138543618;
        v27 = v19;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Bad configuration -- (presenceNeeded, non-resident, missing homeLocation %@", &v26, 0x16u);

LABEL_38:
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    if (v6 == 2)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v19;
        v20 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationAway) -> NO";
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    if (v6 != 3)
    {
      goto LABEL_29;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    v19 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v19;
    v20 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationNearbyHome) -> NO";
LABEL_37:
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v20, &v26, 0xCu);
    goto LABEL_38;
  }

  if (([v3 isResidentSupported] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v17 = self;
    v9 = HMFGetOSLogHandle();
    LOBYTE(v6) = 1;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_40;
    }

    v10 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v10;
    v16 = "%{public}@(presenceNotNeeded, !home.isResidentSupported) -> YES";
    goto LABEL_19;
  }

  if (([v3 isCurrentDeviceAvailableResident] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v18 = self;
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    v19 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v19;
    v20 = "%{public}@(presenceNotNeeded, non-resident) -> NO";
    goto LABEL_37;
  }

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v23 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v19;
      v20 = "%{public}@(presenceNotNeeded, resident, currentHomePresence is nil) -> NO";
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  LOBYTE(v6) = [v5 isNoUserAtHome];
  v7 = objc_autoreleasePoolPush();
  v13 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    [v5 isNoUserAtHome];
    v11 = HMFBooleanToString();
    v26 = 138543618;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v12 = "%{public}@final policy outcome: (presenceNotNeeded, resident, isNoUserAtHome -> %@)";
    goto LABEL_11;
  }

LABEL_40:

  objc_autoreleasePoolPop(v7);
  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)handlePresenceChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDAccessoryFirmwareUpdatePresencePolicy_handlePresenceChange___block_invoke;
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@ -- presence has changed, updating policy status", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) evaluateAndNotify];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerForNotifications
{
  v7 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  v3 = [v7 isCurrentDeviceAvailableResident];
  v4 = [v7 notificationCenter];
  v5 = v4;
  if (v3)
  {
    v6 = [v7 presenceMonitor];
    [v5 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomePresenceEvaluatedNotification" object:v6];
  }

  else
  {
    [v4 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomeDidArriveHomeNotificationKey" object:v7];

    v5 = [v7 notificationCenter];
    [v5 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:v7];
  }
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
  if (logCategory__hmf_once_t0_108263 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_108263, &__block_literal_global_108264);
  }

  v3 = logCategory__hmf_once_v1_108265;

  return v3;
}

uint64_t __55__HMDAccessoryFirmwareUpdatePresencePolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_108265;
  logCategory__hmf_once_v1_108265 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end