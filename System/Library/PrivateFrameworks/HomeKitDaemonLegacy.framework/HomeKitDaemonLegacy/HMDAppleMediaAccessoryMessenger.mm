@interface HMDAppleMediaAccessoryMessenger
+ (id)logCategory;
- (HMDAppleMediaAccessoryMessenger)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)home;
- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)message;
- (void)sendDeleteSiriHistoryRequestForAccessoryWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMDAppleMediaAccessoryMessenger

- (id)logIdentifier
{
  identifier = [(HMDAppleMediaAccessoryMessenger *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing siri endpoint delete siri history message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  router = [(HMDAppleMediaAccessoryMessenger *)selfCopy router];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAppleMediaAccessoryMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke;
  v11[3] = &unk_279733FD8;
  v11[4] = selfCopy;
  [router routeMessage:messageCopy localHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __77__HMDAppleMediaAccessoryMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localHandler];
  [v4 handleSiriEndpointDeleteSiriHistoryMessage:v3];
}

- (void)sendDeleteSiriHistoryRequestForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request message for accessory uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277CD1E18]) initWithAccessoryUUID:dCopy];
  v13 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAppleMediaAccessoryMessenger *)selfCopy messageTargetUUID];
  v15 = [v13 initWithTarget:messageTargetUUID];

  v16 = objc_alloc(MEMORY[0x277D0F848]);
  messageName = [MEMORY[0x277CD1E18] messageName];
  payloadCopy = [v12 payloadCopy];
  v19 = [v16 initWithName:messageName destination:v15 payload:payloadCopy];

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __102__HMDAppleMediaAccessoryMessenger_sendDeleteSiriHistoryRequestForAccessoryWithUUID_completionHandler___block_invoke;
  v25 = &unk_279732CF0;
  v26 = selfCopy;
  v27 = handlerCopy;
  v20 = handlerCopy;
  [v19 setResponseHandler:&v22];
  [(HMDAppleMediaAccessoryMessenger *)selfCopy routeSiriEndpointDeleteSiriHistoryMessage:v19, v22, v23, v24, v25, v26];

  v21 = *MEMORY[0x277D85DE8];
}

void __102__HMDAppleMediaAccessoryMessenger_sendDeleteSiriHistoryRequestForAccessoryWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)home
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:3 remoteAccessRequired:0];
  messageDispatcher = [(HMDAppleMediaAccessoryMessenger *)selfCopy messageDispatcher];
  messageName = [MEMORY[0x277CD1E18] messageName];
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [messageDispatcher registerForMessage:messageName receiver:selfCopy policies:v14 selector:sel_routeSiriEndpointDeleteSiriHistoryMessage_];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoryMessenger)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler
{
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  routerCopy = router;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!routerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = handlerCopy;
  if (!handlerCopy)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryMessenger *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDAppleMediaAccessoryMessenger;
  v16 = [(HMDAppleMediaAccessoryMessenger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    objc_storeStrong(&v17->_router, router);
    objc_storeStrong(&v17->_localHandler, handler);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_60702 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_60702, &__block_literal_global_60703);
  }

  v3 = logCategory__hmf_once_v5_60704;

  return v3;
}

uint64_t __46__HMDAppleMediaAccessoryMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_60704;
  logCategory__hmf_once_v5_60704 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end