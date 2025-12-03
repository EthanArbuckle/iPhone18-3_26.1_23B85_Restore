@interface HMDCameraSnapshotIDSRelay
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelay)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service;
- (void)dealloc;
@end

@implementation HMDCameraSnapshotIDSRelay

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the SnapshotIDSRelay", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idsStreamService = [(HMDCameraSnapshotIDSRelay *)selfCopy idsStreamService];
  [idsStreamService removeDelegate:selfCopy];

  v9.receiver = selfCopy;
  v9.super_class = HMDCameraSnapshotIDSRelay;
  [(HMDCameraSnapshotIDSRelay *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSRelay)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service
{
  dCopy = d;
  identifierCopy = identifier;
  queueCopy = queue;
  serviceCopy = service;
  v22.receiver = self;
  v22.super_class = HMDCameraSnapshotIDSRelay;
  v15 = [(HMDCameraSnapshotIDSRelay *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v16->_sessionID, d);
    objc_storeStrong(&v16->_logIdentifier, identifier);
    objc_storeStrong(&v16->_idsStreamService, service);
    idsStreamService = v16->_idsStreamService;
    workQueue = [(HMDCameraSnapshotIDSRelay *)v16 workQueue];
    [(HMDIDSService *)idsStreamService addDelegate:v16 queue:workQueue];

    v19 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-relay"];
    snapshotRelayTransaction = v16->_snapshotRelayTransaction;
    v16->_snapshotRelayTransaction = v19;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_114236 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_114236, &__block_literal_global_114237);
  }

  v3 = logCategory__hmf_once_v1_114238;

  return v3;
}

uint64_t __40__HMDCameraSnapshotIDSRelay_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_114238;
  logCategory__hmf_once_v1_114238 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end