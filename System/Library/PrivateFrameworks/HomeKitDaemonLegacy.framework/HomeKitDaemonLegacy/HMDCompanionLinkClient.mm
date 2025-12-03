@interface HMDCompanionLinkClient
- (OS_dispatch_queue)dispatchQueue;
- (RPCompanionLinkClient)client;
- (id)deviceChangedHandler;
- (id)deviceFoundHandler;
- (id)deviceLostHandler;
- (void)dealloc;
- (void)setDeviceChangedHandler:(id)handler;
- (void)setDeviceFoundHandler:(id)handler;
- (void)setDeviceLostHandler:(id)handler;
- (void)setDispatchQueue:(id)queue;
- (void)start;
- (void)stop;
@end

@implementation HMDCompanionLinkClient

- (void)stop
{
  client = [(HMDCompanionLinkClient *)self client];
  [client invalidate];

  [(HMDCompanionLinkClient *)self setClient:0];
}

- (void)start
{
  client = [(HMDCompanionLinkClient *)self client];
  [client activateWithCompletion:&__block_literal_global_160272];
}

void __31__HMDCompanionLinkClient_start__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v2;
      v7 = "%{public}@Failed to activate RPCompanionLinkClient with error %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    v7 = "%{public}@Successfully activated RPCompanionLinkClient.";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceLostHandler:(id)handler
{
  handlerCopy = handler;
  client = [(HMDCompanionLinkClient *)self client];
  [client setDeviceLostHandler:handlerCopy];
}

- (id)deviceLostHandler
{
  client = [(HMDCompanionLinkClient *)self client];
  deviceLostHandler = [client deviceLostHandler];

  return deviceLostHandler;
}

- (void)setDeviceChangedHandler:(id)handler
{
  handlerCopy = handler;
  client = [(HMDCompanionLinkClient *)self client];
  [client setDeviceChangedHandler:handlerCopy];
}

- (id)deviceChangedHandler
{
  client = [(HMDCompanionLinkClient *)self client];
  deviceChangedHandler = [client deviceChangedHandler];

  return deviceChangedHandler;
}

- (void)setDeviceFoundHandler:(id)handler
{
  handlerCopy = handler;
  client = [(HMDCompanionLinkClient *)self client];
  [client setDeviceFoundHandler:handlerCopy];
}

- (id)deviceFoundHandler
{
  client = [(HMDCompanionLinkClient *)self client];
  deviceFoundHandler = [client deviceFoundHandler];

  return deviceFoundHandler;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  client = [(HMDCompanionLinkClient *)self client];
  [client setDispatchQueue:queueCopy];
}

- (OS_dispatch_queue)dispatchQueue
{
  client = [(HMDCompanionLinkClient *)self client];
  dispatchQueue = [client dispatchQueue];

  return dispatchQueue;
}

- (RPCompanionLinkClient)client
{
  client = self->_client;
  if (!client)
  {
    v4 = objc_alloc_init(MEMORY[0x277D44160]);
    v5 = self->_client;
    self->_client = v4;

    client = self->_client;
  }

  return client;
}

- (void)dealloc
{
  [(HMDCompanionLinkClient *)self stop];
  v3.receiver = self;
  v3.super_class = HMDCompanionLinkClient;
  [(HMDCompanionLinkClient *)&v3 dealloc];
}

@end