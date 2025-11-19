@interface HMDPrimaryResidentChangeMonitor
+ (id)logCategory;
- (BOOL)dataSourceHasResidentDevices;
- (HMDPrimaryResidentChangeMonitor)initWithIdentifier:(id)a3 notificationCenter:(id)a4;
- (HMDPrimaryResidentChangeMonitorDataSource)dataSource;
- (id)confirmedPrimaryResidentDevice;
- (id)logIdentifier;
- (void)configureWithHome:(id)a3;
- (void)notifyChangeToConfirmedPrimaryResidentDeviceIdentifier;
- (void)notifyChangeToHasResidentDevices;
- (void)notifyChangeToIsCurrentPrimaryResident;
- (void)refreshConfirmedPrimaryResidentDeviceIdentifierWithDevice:(id)a3;
- (void)refreshCurrentDevicePrimaryResidentWithDevice:(id)a3;
- (void)refreshHasResidentDevices;
- (void)refreshMonitor;
- (void)registerForNotificationsWithHome:(id)a3;
@end

@implementation HMDPrimaryResidentChangeMonitor

- (HMDPrimaryResidentChangeMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDPrimaryResidentChangeMonitor *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)notifyChangeToHasResidentDevices
{
  v3 = [(HMDPrimaryResidentChangeMonitor *)self notificationCenter];
  [v3 postNotificationName:@"HMDPrimaryResidentChangeMonitorHasResidentDevicesChangeNotification" object:self];
}

- (void)notifyChangeToConfirmedPrimaryResidentDeviceIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Posting HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChangeNotification notification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDPrimaryResidentChangeMonitor *)v4 notificationCenter];
  [v7 postNotificationName:@"HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChangeNotification" object:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyChangeToIsCurrentPrimaryResident
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Posting HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification notification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDPrimaryResidentChangeMonitor *)v4 notificationCenter];
  [v7 postNotificationName:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)dataSourceHasResidentDevices
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPrimaryResidentChangeMonitor *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasResidentDevicesForPrimaryResidentChangeMonitor:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to source has resident devices due to no data source", &v12, 0xCu);
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
  v3 = [(HMDPrimaryResidentChangeMonitor *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 confirmedPrimaryResidentDeviceForPrimaryResidentChangeMonitor:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get confirmed primary resident device due to no data source", &v12, 0xCu);
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
  v3 = [(HMDPrimaryResidentChangeMonitor *)self dataSourceHasResidentDevices];
  if (v3 != [(HMDPrimaryResidentChangeMonitor *)self hasResidentDevices])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating has resident devices: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDPrimaryResidentChangeMonitor *)v5 setHasResidentDevices:v3];
    [(HMDPrimaryResidentChangeMonitor *)v5 notifyChangeToHasResidentDevices];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshConfirmedPrimaryResidentDeviceIdentifierWithDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMDPrimaryResidentChangeMonitor *)self confirmedPrimaryResidentDeviceIdentifier];
  v8 = HMFEqualObjects();

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating confirmed primary resident device identifier: %@ using device: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDPrimaryResidentChangeMonitor *)v10 setConfirmedPrimaryResidentDeviceIdentifier:v6];
    [(HMDPrimaryResidentChangeMonitor *)v10 notifyChangeToConfirmedPrimaryResidentDeviceIdentifier];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)refreshCurrentDevicePrimaryResidentWithDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isCurrentDevice];
    if (v6 == [(HMDPrimaryResidentChangeMonitor *)self isCurrentDevicePrimaryResident])
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

    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating is current device primary resident: %@ using device: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDPrimaryResidentChangeMonitor *)v8 setIsCurrentDevicePrimaryResident:v6];
  [(HMDPrimaryResidentChangeMonitor *)v8 notifyChangeToIsCurrentPrimaryResident];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)refreshMonitor
{
  v3 = [(HMDPrimaryResidentChangeMonitor *)self confirmedPrimaryResidentDevice];
  [(HMDPrimaryResidentChangeMonitor *)self refreshCurrentDevicePrimaryResidentWithDevice:v3];
  [(HMDPrimaryResidentChangeMonitor *)self refreshConfirmedPrimaryResidentDeviceIdentifierWithDevice:v3];
  [(HMDPrimaryResidentChangeMonitor *)self refreshHasResidentDevices];
}

- (void)registerForNotificationsWithHome:(id)a3
{
  v4 = a3;
  v6 = [(HMDPrimaryResidentChangeMonitor *)self notificationCenter];
  [v6 addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
  [v6 addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
  [v6 addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];
  [v6 addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];
  v5 = [v4 residentDeviceManager];

  [v6 addObserver:self selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v5];
}

- (void)configureWithHome:(id)a3
{
  [(HMDPrimaryResidentChangeMonitor *)self registerForNotificationsWithHome:a3];

  [(HMDPrimaryResidentChangeMonitor *)self refreshMonitor];
}

- (HMDPrimaryResidentChangeMonitor)initWithIdentifier:(id)a3 notificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_identifier, a3);
    objc_storeStrong(&v11->_notificationCenter, a4);
    confirmedPrimaryResidentDeviceIdentifier = v11->_confirmedPrimaryResidentDeviceIdentifier;
    v11->_confirmedPrimaryResidentDeviceIdentifier = 0;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_85911 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_85911, &__block_literal_global_85912);
  }

  v3 = logCategory__hmf_once_v8_85913;

  return v3;
}

void __46__HMDPrimaryResidentChangeMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_85913;
  logCategory__hmf_once_v8_85913 = v1;
}

@end