@interface MRDCreateRemoteHostedEndpointAnalytics
- (MRDCreateRemoteHostedEndpointAnalytics)init;
- (MRDTimingEvent)connectToTransientExternalDevice;
- (MRDTimingEvent)createHostedEndpoint;
- (MRDTimingEvent)createTransientExternalDevice;
- (MRDTimingEvent)searchForGroupUID;
- (void)setConnectToTransientExternalDevice:(id)device;
- (void)setCreateHostedEndpoint:(id)endpoint;
- (void)setCreateTransientExternalDevice:(id)device;
- (void)setSearchForGroupUID:(id)d;
@end

@implementation MRDCreateRemoteHostedEndpointAnalytics

- (MRDTimingEvent)createTransientExternalDevice
{
  selfCopy = self;
  v3 = sub_10034ED14();

  return v3;
}

- (void)setCreateTransientExternalDevice:(id)device
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createTransientExternalDevice) = device;
  deviceCopy = device;
}

- (MRDTimingEvent)connectToTransientExternalDevice
{
  selfCopy = self;
  v3 = sub_10034ED9C();

  return v3;
}

- (void)setConnectToTransientExternalDevice:(id)device
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___connectToTransientExternalDevice) = device;
  deviceCopy = device;
}

- (MRDTimingEvent)createHostedEndpoint
{
  selfCopy = self;
  v3 = sub_10034EE24();

  return v3;
}

- (void)setCreateHostedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)searchForGroupUID
{
  selfCopy = self;
  v3 = sub_10034EEAC();

  return v3;
}

- (void)setSearchForGroupUID:(id)d
{
  v4 = *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(self + OBJC_IVAR___MRDCreateRemoteHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = d;
  dCopy = d;
}

- (MRDCreateRemoteHostedEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end