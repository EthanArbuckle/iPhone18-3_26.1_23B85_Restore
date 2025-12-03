@interface MRDCreateHostedEndpointAnalytics
- (MRDCreateHostedEndpointAnalytics)init;
- (MRDTimingEvent)createHostedEndpoint;
- (MRDTimingEvent)createRemoteHostedEndpoint;
- (MRDTimingEvent)modifyOutputContext;
- (MRDTimingEvent)searchForBuddy;
- (MRDTimingEvent)searchForGroupUID;
- (void)setCreateHostedEndpoint:(id)endpoint;
- (void)setCreateRemoteHostedEndpoint:(id)endpoint;
- (void)setModifyOutputContext:(id)context;
- (void)setSearchForBuddy:(id)buddy;
- (void)setSearchForGroupUID:(id)d;
@end

@implementation MRDCreateHostedEndpointAnalytics

- (MRDTimingEvent)searchForBuddy
{
  selfCopy = self;
  v3 = sub_10034F59C();

  return v3;
}

- (void)setSearchForBuddy:(id)buddy
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForBuddy) = buddy;
  buddyCopy = buddy;
}

- (MRDTimingEvent)createRemoteHostedEndpoint
{
  selfCopy = self;
  v3 = sub_10034F624();

  return v3;
}

- (void)setCreateRemoteHostedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)createHostedEndpoint
{
  selfCopy = self;
  v3 = sub_10034F6AC();

  return v3;
}

- (void)setCreateHostedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___createHostedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)modifyOutputContext
{
  selfCopy = self;
  v3 = sub_10034F734();

  return v3;
}

- (void)setModifyOutputContext:(id)context
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___modifyOutputContext) = context;
  contextCopy = context;
}

- (MRDTimingEvent)searchForGroupUID
{
  selfCopy = self;
  v3 = sub_10034F7BC();

  return v3;
}

- (void)setSearchForGroupUID:(id)d
{
  v4 = *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(self + OBJC_IVAR___MRDCreateHostedEndpointAnalytics____lazy_storage___searchForGroupUID) = d;
  dCopy = d;
}

- (MRDCreateHostedEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end