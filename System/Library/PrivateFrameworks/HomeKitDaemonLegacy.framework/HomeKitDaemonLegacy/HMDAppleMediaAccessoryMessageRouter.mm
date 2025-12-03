@interface HMDAppleMediaAccessoryMessageRouter
+ (id)logCategory;
- (HMDAppleMediaAccessoryMessageRouter)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher;
- (HMDAppleMediaAccessoryMessageRouterDataSource)dataSource;
- (id)dataSourceDeviceForMessage:(id)message;
- (id)logIdentifier;
- (void)relayMessage:(id)message device:(id)device allowRemoteRelayFromPrimary:(BOOL)primary;
@end

@implementation HMDAppleMediaAccessoryMessageRouter

- (HMDAppleMediaAccessoryMessageRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDAppleMediaAccessoryMessageRouter *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)dataSourceDeviceForMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDAppleMediaAccessoryMessageRouter *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource deviceForAppleMediaAccessoryMessageRouter:self message:messageCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source device due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)relayMessage:(id)message device:(id)device allowRemoteRelayFromPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  dataSource = [(HMDAppleMediaAccessoryMessageRouter *)self dataSource];
  if (![messageCopy isRemote])
  {
LABEL_7:
    v16 = [messageCopy copy];
    v17 = [v16 mutableCopy];

    [v17 setRemote:1];
    [v17 setSecureRemote:1];
    [v17 setRemoteRestriction:-1];
    v18 = [HMDRemoteDeviceMessageDestination alloc];
    destination = [messageCopy destination];
    target = [destination target];
    v21 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:target device:deviceCopy];
    [v17 setDestination:v21];

    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      v32 = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Relaying remote message: %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    messageDispatcher = [(HMDAppleMediaAccessoryMessageRouter *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v17];

    goto LABEL_13;
  }

  if (primaryCopy && [dataSource isCurrentDevicePrimaryResident])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      identifier = [messageCopy identifier];
      v32 = 138543618;
      v33 = v14;
      v34 = 2112;
      v35 = identifier;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Allowing relay for message: %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_7;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v30;
    v34 = 2112;
    v35 = messageCopy;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to relay message due to being a remote message: %@", &v32, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  [messageCopy respondWithError:v17];
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoryMessageRouter)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher
{
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryMessageRouter *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoryMessageRouter;
  v10 = [(HMDAppleMediaAccessoryMessageRouter *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v11->_messageDispatcher, dispatcher);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_103014 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_103014, &__block_literal_global_103015);
  }

  v3 = logCategory__hmf_once_v7_103016;

  return v3;
}

uint64_t __50__HMDAppleMediaAccessoryMessageRouter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_103016;
  logCategory__hmf_once_v7_103016 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end