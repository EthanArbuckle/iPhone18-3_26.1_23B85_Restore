@interface HMDPrimaryResidentMessageRouter
+ (id)logCategory;
- (HMDPrimaryResidentMessageRouter)initWithHomeUUID:(id)d messageDispatcher:(id)dispatcher metricsDispatcher:(id)metricsDispatcher;
- (HMDPrimaryResidentMessageRouterDataSource)dataSource;
- (id)dataSourcePrimaryResidentDeviceWithMessage:(id)message;
- (id)logIdentifier;
- (void)relayMessage:(id)message device:(id)device;
- (void)routeMessage:(id)message allowRemoteRelayFromPrimary:(BOOL)primary localHandler:(id)handler;
@end

@implementation HMDPrimaryResidentMessageRouter

- (HMDPrimaryResidentMessageRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDPrimaryResidentMessageRouter *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (void)relayMessage:(id)message device:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  if ([messageCopy isRemote])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = messageCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay message that is already remote: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [messageCopy respondWithError:v12];

    metricsDispatcher = [(HMDPrimaryResidentMessageRouter *)selfCopy metricsDispatcher];
    name = [messageCopy name];
    [metricsDispatcher submitFailureEventWithMessageName:name failureType:1];
  }

  else
  {
    v15 = [messageCopy copy];
    metricsDispatcher = [v15 mutableCopy];

    [metricsDispatcher setRemote:1];
    [metricsDispatcher setSecureRemote:1];
    v16 = [HMDRemoteDeviceMessageDestination alloc];
    destination = [messageCopy destination];
    target = [destination target];
    v19 = [(HMDRemoteDeviceMessageDestination *)v16 initWithTarget:target device:deviceCopy];
    [metricsDispatcher setDestination:v19];

    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = metricsDispatcher;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Relaying remote message: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    name = [(HMDPrimaryResidentMessageRouter *)selfCopy2 messageDispatcher];
    [name sendMessage:metricsDispatcher];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)routeMessage:(id)message allowRemoteRelayFromPrimary:(BOOL)primary localHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v39 = 138543618;
    v40 = v12;
    v41 = 2112;
    v42 = shortDescription;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Routing message: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDPrimaryResidentMessageRouter *)selfCopy dataSourcePrimaryResidentDeviceWithMessage:messageCopy];
  v15 = v14;
  if (!v14)
  {
    v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2032];
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
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
    [messageCopy respondWithError:v17];
    metricsDispatcher = [(HMDPrimaryResidentMessageRouter *)v19 metricsDispatcher];
    name = [messageCopy name];
    v24 = metricsDispatcher;
    v25 = name;
    v26 = 3;
    goto LABEL_14;
  }

  if (([v14 isConfirmed] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2033];
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
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
    [messageCopy respondWithError:v17];
    metricsDispatcher = [(HMDPrimaryResidentMessageRouter *)v28 metricsDispatcher];
    name = [messageCopy name];
    v24 = metricsDispatcher;
    v25 = name;
    v26 = 4;
LABEL_14:
    [v24 submitFailureEventWithMessageName:v25 failureType:v26];

    goto LABEL_15;
  }

  device = [v15 device];
  if (device)
  {
    v17 = device;
    if ([device isCurrentDevice])
    {
      handlerCopy[2](handlerCopy, messageCopy);
    }

    else
    {
      [(HMDPrimaryResidentMessageRouter *)selfCopy relayMessage:messageCopy device:v17];
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2034];
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
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
    [messageCopy respondWithError:v32];
    metricsDispatcher2 = [(HMDPrimaryResidentMessageRouter *)v34 metricsDispatcher];
    name2 = [messageCopy name];
    [metricsDispatcher2 submitFailureEventWithMessageName:name2 failureType:5];

    v17 = 0;
  }

LABEL_15:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)dataSourcePrimaryResidentDeviceWithMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDPrimaryResidentMessageRouter *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource primaryResidentDeviceForPrimaryResidentMessageRouter:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source primary resident device due to no data source", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    metricsDispatcher = [(HMDPrimaryResidentMessageRouter *)selfCopy metricsDispatcher];
    name = [messageCopy name];
    [metricsDispatcher submitFailureEventWithMessageName:name failureType:2];

    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDPrimaryResidentMessageRouter)initWithHomeUUID:(id)d messageDispatcher:(id)dispatcher metricsDispatcher:(id)metricsDispatcher
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  metricsDispatcherCopy = metricsDispatcher;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!dispatcherCopy)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMDPrimaryResidentMessageRouter *)v16];
  }

  v12 = metricsDispatcherCopy;
  v18.receiver = self;
  v18.super_class = HMDPrimaryResidentMessageRouter;
  v13 = [(HMDPrimaryResidentMessageRouter *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homeUUID, d);
    objc_storeStrong(&v14->_messageDispatcher, dispatcher);
    objc_storeStrong(&v14->_metricsDispatcher, metricsDispatcher);
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