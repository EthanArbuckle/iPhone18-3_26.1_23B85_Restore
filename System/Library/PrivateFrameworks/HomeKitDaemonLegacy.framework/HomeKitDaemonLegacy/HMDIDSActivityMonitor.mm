@interface HMDIDSActivityMonitor
+ (id)logCategory;
- (HMDIDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4;
- (NSString)description;
- (id)logIdentifier;
- (void)listenWithDelegate:(id)a3;
@end

@implementation HMDIDSActivityMonitor

- (id)logIdentifier
{
  v2 = [(HMDIDSActivityMonitor *)self activityMonitor];
  v3 = [v2 activity];

  return v3;
}

- (NSString)description
{
  v2 = [(HMDIDSActivityMonitor *)self activityMonitor];
  v3 = [v2 description];

  return v3;
}

- (void)listenWithDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Enabling IDSActivityMonitor", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSActivityMonitor *)v6 activityMonitor];
  [v9 setDelegate:v4];

  v10 = [(HMDIDSActivityMonitor *)v6 activityMonitor];
  [v10 setListeningForUpdates:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDIDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDIDSActivityMonitor;
  v8 = [(HMDIDSActivityMonitor *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D186D0]) initWithActivity:v6 serviceIdentifier:v7];
    activityMonitor = v8->_activityMonitor;
    v8->_activityMonitor = v9;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_137469 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_137469, &__block_literal_global_137470);
  }

  v3 = logCategory__hmf_once_v2_137471;

  return v3;
}

uint64_t __36__HMDIDSActivityMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_137471;
  logCategory__hmf_once_v2_137471 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end