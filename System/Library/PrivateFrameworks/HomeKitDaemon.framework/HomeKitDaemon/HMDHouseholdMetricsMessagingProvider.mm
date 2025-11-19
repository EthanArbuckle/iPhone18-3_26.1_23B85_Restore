@interface HMDHouseholdMetricsMessagingProvider
+ (id)logCategory;
- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)a3;
- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)a3 messageDispatcher:(id)a4;
- (void)deregisterForMessage:(id)a3;
- (void)registerForMessage:(id)a3 selector:(SEL)a4;
- (void)sendMessage:(id)a3 toDevice:(id)a4 withPayload:(id)a5 responseHandler:(id)a6;
@end

@implementation HMDHouseholdMetricsMessagingProvider

- (void)deregisterForMessage:(id)a3
{
  v4 = a3;
  v6 = [(HMDHouseholdMetricsMessagingProvider *)self messageDispatcher];
  v5 = [(HMDHouseholdMetricsMessagingProvider *)self receiver];
  [v6 deregisterForMessage:v4 receiver:v5];
}

- (void)registerForMessage:(id)a3 selector:(SEL)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHouseholdMetricsMessagingProvider *)self messageDispatcher];
  v8 = [(HMDHouseholdMetricsMessagingProvider *)self receiver];
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v7 registerForMessage:v6 receiver:v8 policies:v10 selector:a4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 toDevice:(id)a4 withPayload:(id)a5 responseHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [HMDRemoteDeviceMessageDestination alloc];
  v15 = [(HMDHouseholdMetricsMessagingProvider *)self receiver];
  v16 = [v15 messageTargetUUID];
  v19 = [(HMDRemoteDeviceMessageDestination *)v14 initWithTarget:v16 device:v12];

  v17 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:v13 destination:v19 payload:v11];
  [v17 setTimeout:0.0];
  [v17 setSecureRemote:1];
  [v17 setResponseHandler:v10];

  [v17 setRemoteRestriction:9];
  v18 = [(HMDHouseholdMetricsMessagingProvider *)self messageDispatcher];
  [v18 sendMessage:v17 completionHandler:0];
}

- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)a3 messageDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHouseholdMetricsMessagingProvider;
  v9 = [(HMDHouseholdMetricsMessagingProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_receiver, a3);
    objc_storeStrong(&v10->_messageDispatcher, a4);
  }

  return v10;
}

- (HMDHouseholdMetricsMessagingProvider)initWithReceiver:(id)a3
{
  v4 = a3;
  v5 = +[HMDMessageDispatcher defaultDispatcher];
  v6 = [(HMDHouseholdMetricsMessagingProvider *)self initWithReceiver:v4 messageDispatcher:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_65100 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_65100, &__block_literal_global_65101);
  }

  v3 = logCategory__hmf_once_v1_65102;

  return v3;
}

void __51__HMDHouseholdMetricsMessagingProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_65102;
  logCategory__hmf_once_v1_65102 = v1;
}

@end