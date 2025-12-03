@interface HMDPrimaryResidentChangeMonitor
+ (id)logCategory;
- (BOOL)dataSourceHasResidentDevices;
- (HMDPrimaryResidentChangeMonitor)initWithIdentifier:(id)identifier notificationCenter:(id)center;
- (HMDPrimaryResidentChangeMonitorDataSource)dataSource;
- (id)confirmedPrimaryResidentDevice;
- (id)logIdentifier;
- (void)configureWithHome:(id)home;
- (void)notifyChangeToConfirmedPrimaryResidentDeviceIdentifier;
- (void)notifyChangeToHasResidentDevices;
- (void)notifyChangeToIsCurrentPrimaryResident;
- (void)refreshConfirmedPrimaryResidentDeviceIdentifierWithDevice:(id)device;
- (void)refreshCurrentDevicePrimaryResidentWithDevice:(id)device;
- (void)refreshHasResidentDevices;
- (void)refreshMonitor;
- (void)registerForNotificationsWithHome:(id)home;
@end

@implementation HMDPrimaryResidentChangeMonitor

- (HMDPrimaryResidentChangeMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDPrimaryResidentChangeMonitor *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)notifyChangeToHasResidentDevices
{
  notificationCenter = [(HMDPrimaryResidentChangeMonitor *)self notificationCenter];
  [notificationCenter postNotificationName:@"HMDPrimaryResidentChangeMonitorHasResidentDevicesChangeNotification" object:self];
}

- (void)notifyChangeToConfirmedPrimaryResidentDeviceIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Posting HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChangeNotification notification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  notificationCenter = [(HMDPrimaryResidentChangeMonitor *)selfCopy notificationCenter];
  [notificationCenter postNotificationName:@"HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChangeNotification" object:selfCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyChangeToIsCurrentPrimaryResident
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Posting HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification notification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  notificationCenter = [(HMDPrimaryResidentChangeMonitor *)selfCopy notificationCenter];
  [notificationCenter postNotificationName:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:selfCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)dataSourceHasResidentDevices
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDPrimaryResidentChangeMonitor *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource hasResidentDevicesForPrimaryResidentChangeMonitor:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to source has resident devices due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)confirmedPrimaryResidentDevice
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDPrimaryResidentChangeMonitor *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource confirmedPrimaryResidentDeviceForPrimaryResidentChangeMonitor:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get confirmed primary resident device due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)refreshHasResidentDevices
{
  v14 = *MEMORY[0x277D85DE8];
  dataSourceHasResidentDevices = [(HMDPrimaryResidentChangeMonitor *)self dataSourceHasResidentDevices];
  if (dataSourceHasResidentDevices != [(HMDPrimaryResidentChangeMonitor *)self hasResidentDevices])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating has resident devices: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDPrimaryResidentChangeMonitor *)selfCopy setHasResidentDevices:dataSourceHasResidentDevices];
    [(HMDPrimaryResidentChangeMonitor *)selfCopy notifyChangeToHasResidentDevices];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshConfirmedPrimaryResidentDeviceIdentifierWithDevice:(id)device
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    identifier = [deviceCopy identifier];
  }

  else
  {
    identifier = 0;
  }

  confirmedPrimaryResidentDeviceIdentifier = [(HMDPrimaryResidentChangeMonitor *)self confirmedPrimaryResidentDeviceIdentifier];
  v8 = HMFEqualObjects();

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = identifier;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating confirmed primary resident device identifier: %@ using device: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDPrimaryResidentChangeMonitor *)selfCopy setConfirmedPrimaryResidentDeviceIdentifier:identifier];
    [(HMDPrimaryResidentChangeMonitor *)selfCopy notifyChangeToConfirmedPrimaryResidentDeviceIdentifier];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)refreshCurrentDevicePrimaryResidentWithDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    isCurrentDevice = [deviceCopy isCurrentDevice];
    if (isCurrentDevice == [(HMDPrimaryResidentChangeMonitor *)self isCurrentDevicePrimaryResident])
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (![(HMDPrimaryResidentChangeMonitor *)self isCurrentDevicePrimaryResident])
    {
      goto LABEL_9;
    }

    isCurrentDevice = 0;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating is current device primary resident: %@ using device: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDPrimaryResidentChangeMonitor *)selfCopy setIsCurrentDevicePrimaryResident:isCurrentDevice];
  [(HMDPrimaryResidentChangeMonitor *)selfCopy notifyChangeToIsCurrentPrimaryResident];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)refreshMonitor
{
  confirmedPrimaryResidentDevice = [(HMDPrimaryResidentChangeMonitor *)self confirmedPrimaryResidentDevice];
  [(HMDPrimaryResidentChangeMonitor *)self refreshCurrentDevicePrimaryResidentWithDevice:confirmedPrimaryResidentDevice];
  [(HMDPrimaryResidentChangeMonitor *)self refreshConfirmedPrimaryResidentDeviceIdentifierWithDevice:confirmedPrimaryResidentDevice];
  [(HMDPrimaryResidentChangeMonitor *)self refreshHasResidentDevices];
}

- (void)registerForNotificationsWithHome:(id)home
{
  homeCopy = home;
  notificationCenter = [(HMDPrimaryResidentChangeMonitor *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];
  residentDeviceManager = [homeCopy residentDeviceManager];

  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];
}

- (void)configureWithHome:(id)home
{
  [(HMDPrimaryResidentChangeMonitor *)self registerForNotificationsWithHome:home];

  [(HMDPrimaryResidentChangeMonitor *)self refreshMonitor];
}

- (HMDPrimaryResidentChangeMonitor)initWithIdentifier:(id)identifier notificationCenter:(id)center
{
  identifierCopy = identifier;
  centerCopy = center;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = centerCopy;
  if (!centerCopy)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return +[(HMDPrimaryResidentChangeMonitor *)v14];
  }

  v16.receiver = self;
  v16.super_class = HMDPrimaryResidentChangeMonitor;
  v10 = [(HMDPrimaryResidentChangeMonitor *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v11->_notificationCenter, center);
    confirmedPrimaryResidentDeviceIdentifier = v11->_confirmedPrimaryResidentDeviceIdentifier;
    v11->_confirmedPrimaryResidentDeviceIdentifier = 0;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_79994 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_79994, &__block_literal_global_79995);
  }

  v3 = logCategory__hmf_once_v8_79996;

  return v3;
}

uint64_t __46__HMDPrimaryResidentChangeMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_79996;
  logCategory__hmf_once_v8_79996 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end