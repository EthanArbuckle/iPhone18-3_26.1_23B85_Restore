@interface HMDHouseholdMetricsMessagingProvider
+ (id)logCategory;
- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)receiver;
- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)receiver messageDispatcher:(id)dispatcher;
- (void)deregisterForMessage:(id)message;
- (void)registerForMessage:(id)message selector:(SEL)selector;
- (void)sendMessage:(id)message toDevice:(id)device withPayload:(id)payload responseHandler:(id)handler;
@end

@implementation HMDHouseholdMetricsMessagingProvider

- (void)deregisterForMessage:(id)message
{
  messageCopy = message;
  messageDispatcher = [(HMDHouseholdMetricsMessagingProvider *)self messageDispatcher];
  receiver = [(HMDHouseholdMetricsMessagingProvider *)self receiver];
  [messageDispatcher deregisterForMessage:messageCopy receiver:receiver];
}

- (void)registerForMessage:(id)message selector:(SEL)selector
{
  v12[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messageDispatcher = [(HMDHouseholdMetricsMessagingProvider *)self messageDispatcher];
  receiver = [(HMDHouseholdMetricsMessagingProvider *)self receiver];
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [messageDispatcher registerForMessage:messageCopy receiver:receiver policies:v10 selector:selector];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message toDevice:(id)device withPayload:(id)payload responseHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  deviceCopy = device;
  messageCopy = message;
  v14 = [HMDRemoteDeviceMessageDestination alloc];
  receiver = [(HMDHouseholdMetricsMessagingProvider *)self receiver];
  messageTargetUUID = [receiver messageTargetUUID];
  v19 = [(HMDRemoteDeviceMessageDestination *)v14 initWithTarget:messageTargetUUID device:deviceCopy];

  v17 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:messageCopy destination:v19 payload:payloadCopy];
  [v17 setTimeout:0.0];
  [v17 setSecureRemote:1];
  [v17 setResponseHandler:handlerCopy];

  messageDispatcher = [(HMDHouseholdMetricsMessagingProvider *)self messageDispatcher];
  [messageDispatcher sendMessage:v17 completionHandler:0];
}

- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)receiver messageDispatcher:(id)dispatcher
{
  receiverCopy = receiver;
  dispatcherCopy = dispatcher;
  v12.receiver = self;
  v12.super_class = HMDHouseholdMetricsMessagingProvider;
  v9 = [(HMDHouseholdMetricsMessagingProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_receiver, receiver);
    objc_storeStrong(&v10->_messageDispatcher, dispatcher);
  }

  return v10;
}

- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)receiver
{
  receiverCopy = receiver;
  v5 = +[HMDMessageDispatcher defaultDispatcher];
  v6 = [(HMDHouseholdMetricsMessagingProvider *)self initWithReceiver:receiverCopy messageDispatcher:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_192674 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_192674, &__block_literal_global_192675);
  }

  v3 = logCategory__hmf_once_v1_192676;

  return v3;
}

uint64_t __51__HMDHouseholdMetricsMessagingProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_192676;
  logCategory__hmf_once_v1_192676 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end