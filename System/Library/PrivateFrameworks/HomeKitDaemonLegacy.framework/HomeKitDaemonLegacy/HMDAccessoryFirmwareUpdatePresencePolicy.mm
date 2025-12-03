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
  v30 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  presenceMonitor = [home presenceMonitor];
  currentHomePresence = [presenceMonitor currentHomePresence];

  if ([(HMDAccessoryFirmwareUpdatePresencePolicy *)self presenceNeeded])
  {
    if ([home isCurrentDeviceAvailableResident])
    {
      if (currentHomePresence)
      {
        LOBYTE(homeLocation) = [currentHomePresence isAnyUserAtHome];
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          [currentHomePresence isAnyUserAtHome];
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
      selfCopy2 = self;
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
      LOBYTE(homeLocation) = 0;
      goto LABEL_40;
    }

    homeLocation = [home homeLocation];
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    v9 = v15;
    if (homeLocation <= 1)
    {
      if (!homeLocation)
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

      if (homeLocation == 1)
      {
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        v10 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v10;
        v16 = "%{public}@(presenceNeeded, non-resident, HMHomeLocationAtHome) -> YES";
        LOBYTE(homeLocation) = 1;
LABEL_19:
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v16, &v26, 0xCu);
        goto LABEL_20;
      }

LABEL_29:
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(home, "homeLocation")}];
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

    if (homeLocation == 2)
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

    if (homeLocation != 3)
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

  if (([home isResidentSupported] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v9 = HMFGetOSLogHandle();
    LOBYTE(homeLocation) = 1;
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

  if (([home isCurrentDeviceAvailableResident] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy5 = self;
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

  if (!currentHomePresence)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy6 = self;
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

  LOBYTE(homeLocation) = [currentHomePresence isNoUserAtHome];
  v7 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    [currentHomePresence isNoUserAtHome];
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
  return homeLocation;
}

- (void)handlePresenceChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDAccessoryFirmwareUpdatePresencePolicy_handlePresenceChange___block_invoke;
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@ -- presence has changed, updating policy status", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) evaluateAndNotify];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerForNotifications
{
  home = [(HMDAccessoryFirmwareUpdatePresencePolicy *)self home];
  isCurrentDeviceAvailableResident = [home isCurrentDeviceAvailableResident];
  notificationCenter = [home notificationCenter];
  notificationCenter2 = notificationCenter;
  if (isCurrentDeviceAvailableResident)
  {
    presenceMonitor = [home presenceMonitor];
    [notificationCenter2 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomePresenceEvaluatedNotification" object:presenceMonitor];
  }

  else
  {
    [notificationCenter addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomeDidArriveHomeNotificationKey" object:home];

    notificationCenter2 = [home notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handlePresenceChange_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:home];
  }
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