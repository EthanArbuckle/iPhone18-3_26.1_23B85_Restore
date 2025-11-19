@interface MRDCreateEndpointWithCurrentTopologyAnalytics
- (BOOL)airplayActive;
- (BOOL)containsLeaderInfo;
- (BOOL)undiscoverableGroupLeader;
- (MRDCreateEndpointWithCurrentTopologyAnalytics)init;
- (MRDTimingEvent)createEndpoint;
- (MRDTimingEvent)createOptimizedEndpoint;
- (MRDTimingEvent)discoverGroup;
- (MRDTimingEvent)findMyGroupLeader;
- (void)setAirplayActive:(BOOL)a3;
- (void)setContainsLeaderInfo:(BOOL)a3;
- (void)setCreateEndpoint:(id)a3;
- (void)setCreateOptimizedEndpoint:(id)a3;
- (void)setDiscoverGroup:(id)a3;
- (void)setFindMyGroupLeader:(id)a3;
- (void)setUndiscoverableGroupLeader:(BOOL)a3;
@end

@implementation MRDCreateEndpointWithCurrentTopologyAnalytics

- (BOOL)undiscoverableGroupLeader
{
  v3 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUndiscoverableGroupLeader:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_undiscoverableGroupLeader;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)containsLeaderInfo
{
  v3 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContainsLeaderInfo:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_containsLeaderInfo;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)airplayActive
{
  v3 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAirplayActive:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics_airplayActive;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRDTimingEvent)findMyGroupLeader
{
  v2 = self;
  v3 = sub_100351BE8();

  return v3;
}

- (void)setFindMyGroupLeader:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___findMyGroupLeader) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createOptimizedEndpoint
{
  v2 = self;
  v3 = sub_100351C70();

  return v3;
}

- (void)setCreateOptimizedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createOptimizedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createEndpoint
{
  v2 = self;
  v3 = sub_100351CF8();

  return v3;
}

- (void)setCreateEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___createEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)discoverGroup
{
  v2 = self;
  v3 = sub_100351D80();

  return v3;
}

- (void)setDiscoverGroup:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup);
  *(self + OBJC_IVAR___MRDCreateEndpointWithCurrentTopologyAnalytics____lazy_storage___discoverGroup) = a3;
  v3 = a3;
}

- (MRDCreateEndpointWithCurrentTopologyAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end