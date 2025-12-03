@interface HMDCameraIDSSessionHandler
+ (id)logCategory;
- (HMDCameraIDSSessionHandler)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service;
- (id)logIdentifier;
- (void)dealloc;
@end

@implementation HMDCameraIDSSessionHandler

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSSessionHandler *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS session handler", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDIDSSession *)selfCopy->_idsSession endSession];
  [(HMDIDSService *)selfCopy->_idsStreamService removeDelegate:selfCopy];
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraIDSSessionHandler;
  [(HMDCameraIDSSessionHandler *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraIDSSessionHandler)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service
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
    v16 = _HMFPreconditionFailure();
    return +[(HMDCameraIDSSessionHandler *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMDCameraIDSSessionHandler;
  v13 = [(HMDCameraIDSSessionHandler *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeStrong(&v14->_sessionID, d);
    objc_storeStrong(&v14->_idsStreamService, service);
    [(HMDIDSService *)v14->_idsStreamService addDelegate:v14 queue:v14->_workQueue];
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_158376 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_158376, &__block_literal_global_158377);
  }

  v3 = logCategory__hmf_once_v2_158378;

  return v3;
}

void __41__HMDCameraIDSSessionHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_158378;
  logCategory__hmf_once_v2_158378 = v1;
}

@end