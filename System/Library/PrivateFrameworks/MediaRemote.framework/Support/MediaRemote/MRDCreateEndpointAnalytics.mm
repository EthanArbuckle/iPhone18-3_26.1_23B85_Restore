@interface MRDCreateEndpointAnalytics
- (MRDCreateEndpointAnalytics)init;
- (MRDTimingEvent)createHostedEndpoint;
- (MRDTimingEvent)createRemoteHostedEndpoint;
- (MRDTimingEvent)modifyOutputContext;
- (MRDTimingEvent)removeFromParent;
- (MRDTimingEvent)searchForGroupUID;
- (int64_t)operationType;
- (void)setCreateHostedEndpoint:(id)endpoint;
- (void)setCreateRemoteHostedEndpoint:(id)endpoint;
- (void)setModifyOutputContext:(id)context;
- (void)setOperationType:(int64_t)type;
- (void)setRemoveFromParent:(id)parent;
- (void)setSearchForGroupUID:(id)d;
@end

@implementation MRDCreateEndpointAnalytics

- (int64_t)operationType
{
  v3 = OBJC_IVAR___MRDCreateEndpointAnalytics_operationType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOperationType:(int64_t)type
{
  v5 = OBJC_IVAR___MRDCreateEndpointAnalytics_operationType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (MRDTimingEvent)createHostedEndpoint
{
  selfCopy = self;
  v3 = sub_100350078();

  return v3;
}

- (void)setCreateHostedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createHostedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)createRemoteHostedEndpoint
{
  selfCopy = self;
  v3 = sub_100350100();

  return v3;
}

- (void)setCreateRemoteHostedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___createRemoteHostedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)modifyOutputContext
{
  selfCopy = self;
  v3 = sub_100350188();

  return v3;
}

- (void)setModifyOutputContext:(id)context
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___modifyOutputContext) = context;
  contextCopy = context;
}

- (MRDTimingEvent)removeFromParent
{
  selfCopy = self;
  v3 = sub_100350298();

  return v3;
}

- (void)setRemoveFromParent:(id)parent
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___removeFromParent) = parent;
  parentCopy = parent;
}

- (MRDTimingEvent)searchForGroupUID
{
  selfCopy = self;
  v3 = sub_100350210();

  return v3;
}

- (void)setSearchForGroupUID:(id)d
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID);
  *(self + OBJC_IVAR___MRDCreateEndpointAnalytics____lazy_storage___searchForGroupUID) = d;
  dCopy = d;
}

- (MRDCreateEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end