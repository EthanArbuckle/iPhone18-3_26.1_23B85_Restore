@interface MRDCreateHostedEndpointAnalytics
- (MRDCreateHostedEndpointAnalytics)init;
- (MRDTimingEvent)createHostedEndpoint;
- (MRDTimingEvent)createRemoteHostedEndpoint;
- (MRDTimingEvent)modifyOutputContext;
- (MRDTimingEvent)searchForBuddy;
- (MRDTimingEvent)searchForGroupUID;
- (void)setCreateHostedEndpoint:(id)a3;
- (void)setCreateRemoteHostedEndpoint:(id)a3;
- (void)setModifyOutputContext:(id)a3;
- (void)setSearchForBuddy:(id)a3;
- (void)setSearchForGroupUID:(id)a3;
@end

@implementation MRDCreateHostedEndpointAnalytics

- (MRDTimingEvent)searchForBuddy
{
  v2 = self;
  v3 = sub_10034F59C();

  return v3;
}

- (void)setSearchForBuddy:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createRemoteHostedEndpoint
{
  v2 = self;
  v3 = sub_10034F624();

  return v3;
}

- (void)setCreateRemoteHostedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createHostedEndpoint
{
  v2 = self;
  v3 = sub_10034F6AC();

  return v3;
}

- (void)setCreateHostedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)modifyOutputContext
{
  v2 = self;
  v3 = sub_10034F734();

  return v3;
}

- (void)setModifyOutputContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext) = a3;
  v3 = a3;
}

- (MRDTimingEvent)searchForGroupUID
{
  v2 = self;
  v3 = sub_10034F7BC();

  return v3;
}

- (void)setSearchForGroupUID:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = a3;
  v3 = a3;
}

- (MRDCreateHostedEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end