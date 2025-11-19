@interface HMDPrimaryResidentDiscoveryManagerDefaultDataSource
- (HMDPrimaryResidentDiscoveryManagerDefaultDataSource)init;
- (id)createBackoffTimer;
- (id)createPrimaryResidentDiscoveryOperationWithContext:(id)a3;
- (id)remoteDeviceMonitorFromContext:(id)a3;
- (id)transportStartFutureFromContext:(id)a3;
@end

@implementation HMDPrimaryResidentDiscoveryManagerDefaultDataSource

- (id)transportStartFutureFromContext:(id)a3
{
  v3 = [a3 messageDispatcher];
  v4 = [v3 secureRemoteTransport];
  v5 = [v4 startFuture];

  return v5;
}

- (id)remoteDeviceMonitorFromContext:(id)a3
{
  v3 = [a3 messageDispatcher];
  v4 = [v3 secureRemoteTransport];
  v5 = [v4 deviceMonitor];

  return v5;
}

- (id)createBackoffTimer
{
  v2 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:4 maximumTimeInterval:0 exponentialFactor:4.0 options:3600.0];

  return v2;
}

- (id)createPrimaryResidentDiscoveryOperationWithContext:(id)a3
{
  v3 = a3;
  v4 = [HMDPrimaryResidentDiscoveryOperation alloc];
  v5 = [v3 home];
  v6 = [v3 messageDispatcher];
  v7 = +[HMDFeaturesDataSource defaultDataSource];
  v8 = [(HMDPrimaryResidentDiscoveryOperation *)v4 initWithHome:v5 messageDispatcher:v6 featuresDataSource:v7 context:v3];

  return v8;
}

- (HMDPrimaryResidentDiscoveryManagerDefaultDataSource)init
{
  v8.receiver = self;
  v8.super_class = HMDPrimaryResidentDiscoveryManagerDefaultDataSource;
  v2 = [(HMDPrimaryResidentDiscoveryManagerDefaultDataSource *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v2->_logEventSubmitter;
    v2->_logEventSubmitter = v5;
  }

  return v2;
}

@end