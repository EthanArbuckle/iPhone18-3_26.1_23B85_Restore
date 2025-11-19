@interface MRDCreateRemoteHostedEndpointAnalytics
- (MRDCreateRemoteHostedEndpointAnalytics)init;
- (MRDTimingEvent)connectToTransientExternalDevice;
- (MRDTimingEvent)createHostedEndpoint;
- (MRDTimingEvent)createTransientExternalDevice;
- (MRDTimingEvent)searchForGroupUID;
- (void)setConnectToTransientExternalDevice:(id)a3;
- (void)setCreateHostedEndpoint:(id)a3;
- (void)setCreateTransientExternalDevice:(id)a3;
- (void)setSearchForGroupUID:(id)a3;
@end

@implementation MRDCreateRemoteHostedEndpointAnalytics

- (MRDTimingEvent)createTransientExternalDevice
{
  v2 = self;
  v3 = sub_10034ED14();

  return v3;
}

- (void)setCreateTransientExternalDevice:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice) = a3;
  v3 = a3;
}

- (MRDTimingEvent)connectToTransientExternalDevice
{
  v2 = self;
  v3 = sub_10034ED9C();

  return v3;
}

- (void)setConnectToTransientExternalDevice:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createHostedEndpoint
{
  v2 = self;
  v3 = sub_10034EE24();

  return v3;
}

- (void)setCreateHostedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)searchForGroupUID
{
  v2 = self;
  v3 = sub_10034EEAC();

  return v3;
}

- (void)setSearchForGroupUID:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = a3;
  v3 = a3;
}

- (MRDCreateRemoteHostedEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end