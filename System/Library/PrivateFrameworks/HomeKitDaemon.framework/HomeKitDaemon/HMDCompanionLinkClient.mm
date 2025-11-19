@interface HMDCompanionLinkClient
- (OS_dispatch_queue)dispatchQueue;
- (RPCompanionLinkClient)client;
- (id)deviceChangedHandler;
- (id)deviceFoundHandler;
- (id)deviceLostHandler;
- (void)dealloc;
- (void)setDeviceChangedHandler:(id)a3;
- (void)setDeviceFoundHandler:(id)a3;
- (void)setDeviceLostHandler:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDCompanionLinkClient

- (void)stop
{
  v3 = [(HMDCompanionLinkClient *)self client];
  [v3 invalidate];

  [(HMDCompanionLinkClient *)self setClient:0];
}

- (void)start
{
  v2 = [(HMDCompanionLinkClient *)self client];
  [v2 activateWithCompletion:&__block_literal_global_236907];
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
      _os_log_impl(&dword_229538000, v8, v9, v7, &v12, v10);
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

- (void)setDeviceLostHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDCompanionLinkClient *)self client];
  [v5 setDeviceLostHandler:v4];
}

- (id)deviceLostHandler
{
  v2 = [(HMDCompanionLinkClient *)self client];
  v3 = [v2 deviceLostHandler];

  return v3;
}

- (void)setDeviceChangedHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDCompanionLinkClient *)self client];
  [v5 setDeviceChangedHandler:v4];
}

- (id)deviceChangedHandler
{
  v2 = [(HMDCompanionLinkClient *)self client];
  v3 = [v2 deviceChangedHandler];

  return v3;
}

- (void)setDeviceFoundHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDCompanionLinkClient *)self client];
  [v5 setDeviceFoundHandler:v4];
}

- (id)deviceFoundHandler
{
  v2 = [(HMDCompanionLinkClient *)self client];
  v3 = [v2 deviceFoundHandler];

  return v3;
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  v5 = [(HMDCompanionLinkClient *)self client];
  [v5 setDispatchQueue:v4];
}

- (OS_dispatch_queue)dispatchQueue
{
  v2 = [(HMDCompanionLinkClient *)self client];
  v3 = [v2 dispatchQueue];

  return v3;
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