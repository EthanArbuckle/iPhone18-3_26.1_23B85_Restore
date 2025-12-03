@interface HMDSecureRemoteMessageTransportDefaultDataSource
- (HMDSecureRemoteMessageTransportDefaultDataSource)init;
- (id)secureSessionWithDevice:(id)device;
@end

@implementation HMDSecureRemoteMessageTransportDefaultDataSource

- (id)secureSessionWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [HMDSecureRemoteSession alloc];
  accountRegistry = [(HMDSecureRemoteMessageTransportDefaultDataSource *)self accountRegistry];
  v7 = [(HMDSecureRemoteSession *)v5 initWithDevice:deviceCopy accountRegistry:accountRegistry];

  return v7;
}

- (HMDSecureRemoteMessageTransportDefaultDataSource)init
{
  v21.receiver = self;
  v21.super_class = HMDSecureRemoteMessageTransportDefaultDataSource;
  v2 = [(HMDSecureRemoteMessageTransportDefaultDataSource *)&v21 init];
  if (v2)
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [HMDRemoteMessageTransport remoteMessageTransportsForProductInfo:productInfo];
    transports = v2->_transports;
    v2->_transports = v4;

    v6 = +[HMDAccountRegistry sharedRegistry];
    accountRegistry = v2->_accountRegistry;
    v2->_accountRegistry = v6;

    v8 = [HMDRemoteDeviceMonitor alloc];
    v9 = v2->_accountRegistry;
    v10 = +[HMDIDSServiceManager sharedManager];
    activityObserver = [v10 activityObserver];
    v12 = +[HMDAppleAccountManager sharedManager];
    v13 = [(HMDRemoteDeviceMonitor *)v8 initWithAccountRegistry:v9 activityObserver:activityObserver accountManager:v12];
    deviceMonitor = v2->_deviceMonitor;
    v2->_deviceMonitor = v13;

    productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
    if ([productInfo2 productPlatform] == 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_alloc_init(HMDModernTransportDeviceReachabilityObserver);
    }

    reachabilityObserver = v2->_reachabilityObserver;
    v2->_reachabilityObserver = v16;

    v18 = objc_alloc_init(HMDRemoteHomeMessagingManager);
    homeMessagingManager = v2->_homeMessagingManager;
    v2->_homeMessagingManager = v18;
  }

  return v2;
}

@end