@interface MRDCreateEndpointAnalytics
- (MRDCreateEndpointAnalytics)init;
- (MRDTimingEvent)createHostedEndpoint;
- (MRDTimingEvent)createRemoteHostedEndpoint;
- (MRDTimingEvent)modifyOutputContext;
- (MRDTimingEvent)removeFromParent;
- (MRDTimingEvent)searchForGroupUID;
- (int64_t)operationType;
- (void)setCreateHostedEndpoint:(id)a3;
- (void)setCreateRemoteHostedEndpoint:(id)a3;
- (void)setModifyOutputContext:(id)a3;
- (void)setOperationType:(int64_t)a3;
- (void)setRemoveFromParent:(id)a3;
- (void)setSearchForGroupUID:(id)a3;
@end

@implementation MRDCreateEndpointAnalytics

- (int64_t)operationType
{
  v3 = OBJC_IVAR___MRDCreateEndpointAnalytics_operationType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOperationType:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDCreateEndpointAnalytics_operationType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRDTimingEvent)createHostedEndpoint
{
  v2 = self;
  v3 = sub_100350078();

  return v3;
}

- (void)setCreateHostedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createRemoteHostedEndpoint
{
  v2 = self;
  v3 = sub_100350100();

  return v3;
}

- (void)setCreateRemoteHostedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)modifyOutputContext
{
  v2 = self;
  v3 = sub_100350188();

  return v3;
}

- (void)setModifyOutputContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext) = a3;
  v3 = a3;
}

- (MRDTimingEvent)removeFromParent
{
  v2 = self;
  v3 = sub_100350298();

  return v3;
}

- (void)setRemoveFromParent:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent) = a3;
  v3 = a3;
}

- (MRDTimingEvent)searchForGroupUID
{
  v2 = self;
  v3 = sub_100350210();

  return v3;
}

- (void)setSearchForGroupUID:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID) = a3;
  v3 = a3;
}

- (MRDCreateEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end