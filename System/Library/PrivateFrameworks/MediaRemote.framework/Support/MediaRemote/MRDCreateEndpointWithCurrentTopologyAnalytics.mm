@interface MRDCreateEndpointWithCurrentTopologyAnalytics
- (BOOL)airplayActive;
- (BOOL)containsLeaderInfo;
- (BOOL)undiscoverableGroupLeader;
- (MRDCreateEndpointWithCurrentTopologyAnalytics)init;
- (MRDTimingEvent)createEndpoint;
- (MRDTimingEvent)createOptimizedEndpoint;
- (MRDTimingEvent)discoverGroup;
- (MRDTimingEvent)findMyGroupLeader;
- (void)setAirplayActive:(BOOL)active;
- (void)setContainsLeaderInfo:(BOOL)info;
- (void)setCreateEndpoint:(id)endpoint;
- (void)setCreateOptimizedEndpoint:(id)endpoint;
- (void)setDiscoverGroup:(id)group;
- (void)setFindMyGroupLeader:(id)leader;
- (void)setUndiscoverableGroupLeader:(BOOL)leader;
@end

@implementation MRDCreateEndpointWithCurrentTopologyAnalytics

- (BOOL)undiscoverableGroupLeader
{
  v3 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUndiscoverableGroupLeader:(BOOL)leader
{
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader;
  swift_beginAccess();
  *(self + v5) = leader;
}

- (BOOL)containsLeaderInfo
{
  v3 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContainsLeaderInfo:(BOOL)info
{
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo;
  swift_beginAccess();
  *(self + v5) = info;
}

- (BOOL)airplayActive
{
  v3 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAirplayActive:(BOOL)active
{
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive;
  swift_beginAccess();
  *(self + v5) = active;
}

- (MRDTimingEvent)findMyGroupLeader
{
  selfCopy = self;
  v3 = sub_100351BE8();

  return v3;
}

- (void)setFindMyGroupLeader:(id)leader
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader) = leader;
  leaderCopy = leader;
}

- (MRDTimingEvent)createOptimizedEndpoint
{
  selfCopy = self;
  v3 = sub_100351C70();

  return v3;
}

- (void)setCreateOptimizedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)createEndpoint
{
  selfCopy = self;
  v3 = sub_100351CF8();

  return v3;
}

- (void)setCreateEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)discoverGroup
{
  selfCopy = self;
  v3 = sub_100351D80();

  return v3;
}

- (void)setDiscoverGroup:(id)group
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup) = group;
  groupCopy = group;
}

- (MRDCreateEndpointWithCurrentTopologyAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end