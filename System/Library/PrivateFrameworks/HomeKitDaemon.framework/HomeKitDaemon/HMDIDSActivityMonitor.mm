@interface HMDIDSActivityMonitor
+ (id)logCategory;
- (HMDIDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier;
- (NSString)description;
- (id)logIdentifier;
- (void)listenWithDelegate:(id)delegate;
@end

@implementation HMDIDSActivityMonitor

- (id)logIdentifier
{
  activityMonitor = [(HMDIDSActivityMonitor *)self activityMonitor];
  activity = [activityMonitor activity];

  return activity;
}

- (NSString)description
{
  activityMonitor = [(HMDIDSActivityMonitor *)self activityMonitor];
  v3 = [activityMonitor description];

  return v3;
}

- (void)listenWithDelegate:(id)delegate
{
  v14 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Enabling IDSActivityMonitor", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  activityMonitor = [(HMDIDSActivityMonitor *)selfCopy activityMonitor];
  [activityMonitor setDelegate:delegateCopy];

  activityMonitor2 = [(HMDIDSActivityMonitor *)selfCopy activityMonitor];
  [activityMonitor2 setListeningForUpdates:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDIDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier
{
  activityCopy = activity;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HMDIDSActivityMonitor;
  v8 = [(HMDIDSActivityMonitor *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D186D0]) initWithActivity:activityCopy serviceIdentifier:identifierCopy];
    activityMonitor = v8->_activityMonitor;
    v8->_activityMonitor = v9;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_206148 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_206148, &__block_literal_global_206149);
  }

  v3 = logCategory__hmf_once_v2_206150;

  return v3;
}

void __36__HMDIDSActivityMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_206150;
  logCategory__hmf_once_v2_206150 = v1;
}

@end