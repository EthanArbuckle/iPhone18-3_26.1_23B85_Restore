@interface HMDCameraSnapshotIDSStream
+ (id)logCategory;
- (HMDCameraSnapshotIDSStream)initWithSessionID:(id)d workQueue:(id)queue proxyService:(id)service;
- (id)logIdentifier;
- (void)dealloc;
@end

@implementation HMDCameraSnapshotIDSStream

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSStream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idsProxyService = [(HMDCameraSnapshotIDSStream *)selfCopy idsProxyService];
  [idsProxyService removeDelegate:selfCopy];

  v9.receiver = selfCopy;
  v9.super_class = HMDCameraSnapshotIDSStream;
  [(HMDCameraSnapshotIDSStream *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSStream)initWithSessionID:(id)d workQueue:(id)queue proxyService:(id)service
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!queueCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = serviceCopy;
  if (!serviceCopy)
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
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeStrong(&v14->_sessionID, d);
    objc_storeStrong(&v14->_idsProxyService, service);
    v15 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-stream"];
    snapshotStreamTransaction = v14->_snapshotStreamTransaction;
    v14->_snapshotStreamTransaction = v15;

    idsProxyService = v14->_idsProxyService;
    workQueue = [(HMDCameraSnapshotIDSStream *)v14 workQueue];
    [(HMDIDSService *)idsProxyService addDelegate:v14 queue:workQueue];

    v19 = +[HMDIDSServiceManager sharedManager];
    [v19 addProxyServiceLinkPreferencesAssertionHolder:v14];
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_88990 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_88990, &__block_literal_global_88991);
  }

  v3 = logCategory__hmf_once_v2_88992;

  return v3;
}

uint64_t __41__HMDCameraSnapshotIDSStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_88992;
  logCategory__hmf_once_v2_88992 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end