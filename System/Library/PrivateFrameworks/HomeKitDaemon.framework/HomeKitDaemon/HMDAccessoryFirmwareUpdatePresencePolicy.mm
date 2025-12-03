@interface HMDAccessoryFirmwareUpdatePresencePolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryFirmwareUpdatePresencePolicy)initWithAccessory:(id)accessory presenceNeeded:(BOOL)needed workQueue:(id)queue;
- (HMDHome)home;
- (unint64_t)hash;
- (void)configure;
- (void)handlePresenceChange:(id)change;
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
  home = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  featuresDataSource = [home featuresDataSource];
  isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

  if (isHomeActivityStateReplacesPresenceMonitorFeatureEnabled)
  {
    homeActivityStateManager = [home homeActivityStateManager];
    [homeActivityStateManager userActivityStatesDetails];
  }

  else
  {
    homeActivityStateManager = [home presenceMonitor];
    [homeActivityStateManager currentHomePresence];
  }
  v7 = ;

  if ([(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded])
  {
    if ([home isCurrentDeviceAvailableResident])
    {
      if (v7)
      {
        LOBYTE(homeLocation) = [v7 isAnyUserAtHome];
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
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
      selfCopy2 = self;
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
      LOBYTE(homeLocation) = 0;
      goto LABEL_43;
    }

    homeLocation = [home homeLocation];
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    v11 = v17;
    if (homeLocation <= 1)
    {
      if (!homeLocation)
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

      if (homeLocation == 1)
      {
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_43;
        }

        v12 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v12;
        v18 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationAtHome) -> YES";
        LOBYTE(homeLocation) = 1;
LABEL_22:
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v18, &v28, 0xCu);
        goto LABEL_23;
      }

LABEL_32:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(home, "homeLocation")}];
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

    if (homeLocation == 2)
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

    if (homeLocation != 3)
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

  if (([home isResidentSupported] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v11 = HMFGetOSLogHandle();
    LOBYTE(homeLocation) = 1;
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

  if (([home isCurrentDeviceAvailableResident] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy5 = self;
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
    selfCopy6 = self;
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

  LOBYTE(homeLocation) = [v7 isNoUserAtHome];
  v9 = objc_autoreleasePoolPush();
  selfCopy7 = self;
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
  return homeLocation;
}

- (void)handlePresenceChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDAccessoryFirmwareUpdatePresencePolicy_handlePresenceChange___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
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
  home = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  if (![home isCurrentDeviceAvailableResident])
  {
    notificationCenter = [home notificationCenter];
    [notificationCenter addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomeDidArriveHomeNotificationKey" object:home];

    notificationCenter2 = [home notificationCenter];
    v6 = notificationCenter2;
    v7 = @"HMDHomeDidLeaveHomeNotificationKey";
    selfCopy2 = self;
    v9 = home;
    goto LABEL_5;
  }

  featuresDataSource = [home featuresDataSource];
  isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

  notificationCenter2 = [home notificationCenter];
  v6 = notificationCenter2;
  if (isHomeActivityStateReplacesPresenceMonitorFeatureEnabled)
  {
    v7 = @"HMDHomePresenceUpdateNotification";
    selfCopy2 = self;
    v9 = 0;
LABEL_5:
    [notificationCenter2 addObserver:selfCopy2 selector:sel_handlePresenceChange_ name:v7 object:v9];
    goto LABEL_7;
  }

  presenceMonitor = [home presenceMonitor];
  [v6 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomePresenceEvaluatedNotification" object:presenceMonitor];

LABEL_7:
}

- (void)configure
{
  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:[(HMDAccessoryFirmwareUpdatePresencePolicy *)self evaluate]];

  [(HMDAccessoryFirmwareUpdatePresencePolicy *)self registerForNotifications];
}

- (HMDAccessoryFirmwareUpdatePresencePolicy)initWithAccessory:(id)accessory presenceNeeded:(BOOL)needed workQueue:(id)queue
{
  accessoryCopy = accessory;
  v12.receiver = self;
  v12.super_class = HMDAccessoryFirmwareUpdatePresencePolicy;
  v9 = [(HMDAccessoryFirmwareUpdatePolicy *)&v12 initWithAccessory:accessoryCopy workQueue:queue];
  if (v9)
  {
    home = [accessoryCopy home];
    objc_storeWeak(&v9->_home, home);

    v9->_presenceNeeded = needed;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      home = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
      uuid = [home uuid];
      home2 = [(HMDAccessoryFirmwareUpdatePresencePolicy *)v6 home];
      uuid2 = [home2 uuid];
      if ([uuid isEqual:uuid2])
      {
        accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
        uuid3 = [accessory uuid];
        accessory2 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
        [accessory2 uuid];
        v14 = v19 = home;
        v18 = [uuid3 isEqual:v14];

        if (v18)
        {
          presenceNeeded = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded];
          v16 = presenceNeeded ^ [(HMDAccessoryFirmwareUpdatePresencePolicy *)v6 presenceNeeded]^ 1;
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
  home = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  uuid = [home uuid];
  v5 = [uuid hash];

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