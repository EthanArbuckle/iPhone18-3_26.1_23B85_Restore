@interface HMDMTSDeviceSetupServer
+ (id)logCategory;
- (HMDMTSDeviceSetupServer)initWithAccessorySetupManager:(id)manager;
- (void)clientProxy:(id)proxy performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler;
@end

@implementation HMDMTSDeviceSetupServer

- (void)clientProxy:(id)proxy performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  requestCopy = request;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = requestCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Performing Matter ecosystem device setup using request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  accessorySetupManager = [(HMDMTSDeviceSetupServer *)selfCopy accessorySetupManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HMDMTSDeviceSetupServer_clientProxy_performDeviceSetupUsingRequest_completionHandler___block_invoke;
  v18[3] = &unk_278689A68;
  v18[4] = selfCopy;
  v19 = handlerCopy;
  v16 = handlerCopy;
  [accessorySetupManager launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest:requestCopy clientProxy:proxyCopy completionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __88__HMDMTSDeviceSetupServer_clientProxy_performDeviceSetupUsingRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      v9 = "%{public}@Matter ecosystem device setup failed with error %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v16, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v8;
    v9 = "%{public}@Matter ecosystem device setup completed successfully!";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDMTSDeviceSetupServer)initWithAccessorySetupManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v6 = managerCopy;
    v12.receiver = self;
    v12.super_class = HMDMTSDeviceSetupServer;
    v7 = [(HMDMTSDeviceSetupServer *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_accessorySetupManager, manager);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMDMTSDeviceSetupServer *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_75469 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_75469, &__block_literal_global_75470);
  }

  v3 = logCategory__hmf_once_v4_75471;

  return v3;
}

void __38__HMDMTSDeviceSetupServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_75471;
  logCategory__hmf_once_v4_75471 = v1;
}

@end