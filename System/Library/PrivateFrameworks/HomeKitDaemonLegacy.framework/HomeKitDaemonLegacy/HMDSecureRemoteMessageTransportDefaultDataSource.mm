@interface HMDSecureRemoteMessageTransportDefaultDataSource
- (HMDSecureRemoteMessageTransportDefaultDataSource)init;
- (id)secureSessionWithDevice:(id)a3;
@end

@implementation HMDSecureRemoteMessageTransportDefaultDataSource

- (id)secureSessionWithDevice:(id)a3
{
  v4 = a3;
  v5 = [HMDSecureRemoteSession alloc];
  v6 = [(HMDSecureRemoteMessageTransportDefaultDataSource *)self deviceMonitor];
  v7 = [(HMDSecureRemoteMessageTransportDefaultDataSource *)self accountRegistry];
  v8 = [(HMDSecureRemoteSession *)v5 initWithDevice:v4 deviceMonitor:v6 accountRegistry:v7];

  return v8;
}

- (HMDSecureRemoteMessageTransportDefaultDataSource)init
{
  v19.receiver = self;
  v19.super_class = HMDSecureRemoteMessageTransportDefaultDataSource;
  v2 = [(HMDSecureRemoteMessageTransportDefaultDataSource *)&v19 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [HMDRemoteMessageTransport remoteMessageTransportsForProductInfo:v3];
    transports = v2->_transports;
    v2->_transports = v4;

    v6 = +[HMDAccountRegistry sharedRegistry];
    accountRegistry = v2->_accountRegistry;
    v2->_accountRegistry = v6;

    v8 = [HMDRemoteDeviceMonitor alloc];
    v9 = v2->_accountRegistry;
    v10 = +[HMDIDSServiceManager sharedManager];
    v11 = [v10 activityObserver];
    v12 = +[HMDAppleAccountManager sharedManager];
    v13 = [(HMDRemoteDeviceMonitor *)v8 initWithAccountRegistry:v9 activityObserver:v11 accountManager:v12];
    deviceMonitor = v2->_deviceMonitor;
    v2->_deviceMonitor = v13;

    v15 = [MEMORY[0x277D0F8E8] productInfo];
    if ([v15 productPlatform] == 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_alloc_init(HMDModernTransportDeviceReachabilityObserver);
    }

    reachabilityObserver = v2->_reachabilityObserver;
    v2->_reachabilityObserver = v16;
  }

  return v2;
}

@end