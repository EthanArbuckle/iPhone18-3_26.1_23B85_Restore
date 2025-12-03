@interface HMDPrimaryResidentDiscoveryManagerDefaultDataSource
- (HMDPrimaryResidentDiscoveryManagerDefaultDataSource)init;
- (id)createBackoffTimer;
- (id)createPrimaryResidentDiscoveryOperationWithContext:(id)context;
- (id)remoteDeviceMonitorFromContext:(id)context;
- (id)transportStartFutureFromContext:(id)context;
@end

@implementation HMDPrimaryResidentDiscoveryManagerDefaultDataSource

- (id)transportStartFutureFromContext:(id)context
{
  messageDispatcher = [context messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  startFuture = [secureRemoteTransport startFuture];

  return startFuture;
}

- (id)remoteDeviceMonitorFromContext:(id)context
{
  messageDispatcher = [context messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  deviceMonitor = [secureRemoteTransport deviceMonitor];

  return deviceMonitor;
}

- (id)createBackoffTimer
{
  v2 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:4 maximumTimeInterval:0 exponentialFactor:4.0 options:3600.0];

  return v2;
}

- (id)createPrimaryResidentDiscoveryOperationWithContext:(id)context
{
  contextCopy = context;
  v4 = [HMDPrimaryResidentDiscoveryOperation alloc];
  home = [contextCopy home];
  messageDispatcher = [contextCopy messageDispatcher];
  v7 = +[HMDFeaturesDataSource defaultDataSource];
  v8 = [(HMDPrimaryResidentDiscoveryOperation *)v4 initWithHome:home messageDispatcher:messageDispatcher featuresDataSource:v7 context:contextCopy];

  return v8;
}

- (HMDPrimaryResidentDiscoveryManagerDefaultDataSource)init
{
  v8.receiver = self;
  v8.super_class = HMDPrimaryResidentDiscoveryManagerDefaultDataSource;
  v2 = [(HMDPrimaryResidentDiscoveryManagerDefaultDataSource *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = defaultCenter;

    v5 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v2->_logEventSubmitter;
    v2->_logEventSubmitter = v5;
  }

  return v2;
}

@end