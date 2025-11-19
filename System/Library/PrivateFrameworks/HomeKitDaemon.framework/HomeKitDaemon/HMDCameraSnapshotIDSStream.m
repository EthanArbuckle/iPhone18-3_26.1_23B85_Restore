@interface HMDCameraSnapshotIDSStream
+ (id)logCategory;
- (HMDCameraSnapshotIDSStream)initWithSessionID:(id)a3 workQueue:(id)a4 proxyService:(id)a5;
- (id)logIdentifier;
- (void)dealloc;
@end

@implementation HMDCameraSnapshotIDSStream

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v3 = [v2 description];

  return v3;
}

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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSStream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraSnapshotIDSStream *)v4 idsProxyService];
  [v7 removeDelegate:v4];

  v9.receiver = v4;
  v9.super_class = HMDCameraSnapshotIDSStream;
  [(HMDCameraSnapshotIDSStream *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSStream)initWithSessionID:(id)a3 workQueue:(id)a4 proxyService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v21 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotIDSStream *)v21];
  }

  v23.receiver = self;
  v23.super_class = HMDCameraSnapshotIDSStream;
  v13 = [(HMDCameraSnapshotIDSStream *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_workQueue, a4);
    objc_storeStrong(&v14->_sessionID, a3);
    objc_storeStrong(&v14->_idsProxyService, a5);
    v15 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-stream"];
    snapshotStreamTransaction = v14->_snapshotStreamTransaction;
    v14->_snapshotStreamTransaction = v15;

    idsProxyService = v14->_idsProxyService;
    v18 = [(HMDCameraSnapshotIDSStream *)v14 workQueue];
    [(HMDIDSService *)idsProxyService addDelegate:v14 queue:v18];

    v19 = +[HMDIDSServiceManager sharedManager];
    [v19 addProxyServiceLinkPreferencesAssertionHolder:v14];
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_135062 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_135062, &__block_literal_global_135063);
  }

  v3 = logCategory__hmf_once_v2_135064;

  return v3;
}

void __41__HMDCameraSnapshotIDSStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_135064;
  logCategory__hmf_once_v2_135064 = v1;
}

@end