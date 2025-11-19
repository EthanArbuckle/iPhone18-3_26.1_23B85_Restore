@interface HMDCameraSnapshotIDSRelay
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelay)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 idsStreamService:(id)a6;
- (void)dealloc;
@end

@implementation HMDCameraSnapshotIDSRelay

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the SnapshotIDSRelay", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraSnapshotIDSRelay *)v4 idsStreamService];
  [v7 removeDelegate:v4];

  v9.receiver = v4;
  v9.super_class = HMDCameraSnapshotIDSRelay;
  [(HMDCameraSnapshotIDSRelay *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSRelay)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 idsStreamService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = HMDCameraSnapshotIDSRelay;
  v15 = [(HMDCameraSnapshotIDSRelay *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a5);
    objc_storeStrong(&v16->_sessionID, a3);
    objc_storeStrong(&v16->_logIdentifier, a4);
    objc_storeStrong(&v16->_idsStreamService, a6);
    idsStreamService = v16->_idsStreamService;
    v18 = [(HMDCameraSnapshotIDSRelay *)v16 workQueue];
    [(HMDIDSService *)idsStreamService addDelegate:v16 queue:v18];

    v19 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-relay"];
    snapshotRelayTransaction = v16->_snapshotRelayTransaction;
    v16->_snapshotRelayTransaction = v19;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_171861 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_171861, &__block_literal_global_171862);
  }

  v3 = logCategory__hmf_once_v1_171863;

  return v3;
}

void __40__HMDCameraSnapshotIDSRelay_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_171863;
  logCategory__hmf_once_v1_171863 = v1;
}

@end