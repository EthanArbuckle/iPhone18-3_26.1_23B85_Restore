@interface HMDPrimaryResidentMessageRouter
+ (id)logCategory;
- (HMDPrimaryResidentMessageRouter)initWithHomeUUID:(id)a3 messageDispatcher:(id)a4 metricsDispatcher:(id)a5;
- (HMDPrimaryResidentMessageRouterDataSource)dataSource;
- (id)dataSourcePrimaryResidentDeviceWithMessage:(id)a3;
- (id)logIdentifier;
- (void)relayMessage:(id)a3 device:(id)a4;
- (void)routeMessage:(id)a3 allowRemoteRelayFromPrimary:(BOOL)a4 localHandler:(id)a5;
@end

@implementation HMDPrimaryResidentMessageRouter

- (HMDPrimaryResidentMessageRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDPrimaryResidentMessageRouter *)self homeUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)relayMessage:(id)a3 device:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isRemote])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay message that is already remote: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [v6 respondWithError:v12];

    v13 = [(HMDPrimaryResidentMessageRouter *)v9 metricsDispatcher];
    v14 = [v6 name];
    [v13 submitFailureEventWithMessageName:v14 failureType:1];
  }

  else
  {
    v15 = [v6 copy];
    v13 = [v15 mutableCopy];

    [v13 setRemote:1];
    [v13 setSecureRemote:1];
    v16 = [HMDRemoteDeviceMessageDestination alloc];
    v17 = [v6 destination];
    v18 = [v17 target];
    v19 = [(HMDRemoteDeviceMessageDestination *)v16 initWithTarget:v18 device:v7];
    [v13 setDestination:v19];

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Relaying remote message: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v14 = [(HMDPrimaryResidentMessageRouter *)v21 messageDispatcher];
    [v14 sendMessage:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)routeMessage:(id)a3 allowRemoteRelayFromPrimary:(BOOL)a4 localHandler:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 shortDescription];
    v39 = 138543618;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Routing message: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDPrimaryResidentMessageRouter *)v10 dataSourcePrimaryResidentDeviceWithMessage:v7];
  v15 = v14;
  if (!v14)
  {
    v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2032];
    v18 = objc_autoreleasePoolPush();
    v19 = v10;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v21;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source primary resident with error: %@", &v39, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [v7 respondWithError:v17];
    v22 = [(HMDPrimaryResidentMessageRouter *)v19 metricsDispatcher];
    v23 = [v7 name];
    v24 = v22;
    v25 = v23;
    v26 = 3;
    goto LABEL_14;
  }

  if (([v14 isConfirmed] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2033];
    v27 = objc_autoreleasePoolPush();
    v28 = v10;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v30;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get confirmed primary resident device with error: %@", &v39, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    [v7 respondWithError:v17];
    v22 = [(HMDPrimaryResidentMessageRouter *)v28 metricsDispatcher];
    v23 = [v7 name];
    v24 = v22;
    v25 = v23;
    v26 = 4;
LABEL_14:
    [v24 submitFailureEventWithMessageName:v25 failureType:v26];

    goto LABEL_15;
  }

  v16 = [v15 device];
  if (v16)
  {
    v17 = v16;
    if ([v16 isCurrentDevice])
    {
      v8[2](v8, v7);
    }

    else
    {
      [(HMDPrimaryResidentMessageRouter *)v10 relayMessage:v7 device:v17];
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2034];
    v33 = objc_autoreleasePoolPush();
    v34 = v10;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v36;
      v41 = 2112;
      v42 = v32;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination device from primary resident device with error: %@", &v39, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    [v7 respondWithError:v32];
    v37 = [(HMDPrimaryResidentMessageRouter *)v34 metricsDispatcher];
    v38 = [v7 name];
    [v37 submitFailureEventWithMessageName:v38 failureType:5];

    v17 = 0;
  }

LABEL_15:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)dataSourcePrimaryResidentDeviceWithMessage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryResidentMessageRouter *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 primaryResidentDeviceForPrimaryResidentMessageRouter:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source primary resident device due to no data source", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDPrimaryResidentMessageRouter *)v9 metricsDispatcher];
    v13 = [v4 name];
    [v12 submitFailureEventWithMessageName:v13 failureType:2];

    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDPrimaryResidentMessageRouter)initWithHomeUUID:(id)a3 messageDispatcher:(id)a4 metricsDispatcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMDPrimaryResidentMessageRouter *)v16];
  }

  v12 = v11;
  v18.receiver = self;
  v18.super_class = HMDPrimaryResidentMessageRouter;
  v13 = [(HMDPrimaryResidentMessageRouter *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homeUUID, a3);
    objc_storeStrong(&v14->_messageDispatcher, a4);
    objc_storeStrong(&v14->_metricsDispatcher, a5);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_11853 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_11853, &__block_literal_global_11854);
  }

  v3 = logCategory__hmf_once_v8_11855;

  return v3;
}

uint64_t __46__HMDPrimaryResidentMessageRouter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v8_11855 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end