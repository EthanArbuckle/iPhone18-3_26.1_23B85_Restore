@interface MRDNowPlayingAirPlaySessionEvents
- (BOOL)discoverableGroupLeader;
- (MRDNowPlayingAirPlaySessionEvents)init;
- (MRDTimingEvent)addLocalDevice;
- (MRDTimingEvent)findEndpoint;
- (MRDTimingEvent)interruptions;
- (MRDTimingEvent)originForward;
- (MRDTimingEvent)reloadDeviceInfo;
- (MRDTimingEvent)removeLocalDevice;
- (MRDTimingEvent)sourceOutputContext;
- (NSString)modelID;
- (unsigned)clusterType;
- (void)setAddLocalDevice:(id)a3;
- (void)setClusterType:(unsigned int)a3;
- (void)setDiscoverableGroupLeader:(BOOL)a3;
- (void)setFindEndpoint:(id)a3;
- (void)setInterruptions:(id)a3;
- (void)setModelID:(id)a3;
- (void)setOriginForward:(id)a3;
- (void)setReloadDeviceInfo:(id)a3;
- (void)setRemoveLocalDevice:(id)a3;
- (void)setSourceOutputContext:(id)a3;
@end

@implementation MRDNowPlayingAirPlaySessionEvents

- (BOOL)discoverableGroupLeader
{
  v3 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDiscoverableGroupLeader:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)clusterType
{
  v3 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setClusterType:(unsigned int)a3
{
  v5 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)modelID
{
  v2 = (self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_modelID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setModelID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_modelID);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (MRDTimingEvent)sourceOutputContext
{
  v2 = self;
  v3 = sub_10022EDC8();

  return v3;
}

- (void)setSourceOutputContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext) = a3;
  v3 = a3;
}

- (MRDTimingEvent)removeLocalDevice
{
  v2 = self;
  v3 = sub_10022EE50();

  return v3;
}

- (void)setRemoveLocalDevice:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice) = a3;
  v3 = a3;
}

- (MRDTimingEvent)addLocalDevice
{
  v2 = self;
  v3 = sub_10022EED8();

  return v3;
}

- (void)setAddLocalDevice:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice) = a3;
  v3 = a3;
}

- (MRDTimingEvent)reloadDeviceInfo
{
  v2 = self;
  v3 = sub_10022EF60();

  return v3;
}

- (void)setReloadDeviceInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo) = a3;
  v3 = a3;
}

- (MRDTimingEvent)originForward
{
  v2 = self;
  v3 = sub_10022EFE8();

  return v3;
}

- (void)setOriginForward:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward) = a3;
  v3 = a3;
}

- (MRDTimingEvent)findEndpoint
{
  v2 = self;
  v3 = sub_10022F070();

  return v3;
}

- (void)setFindEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)interruptions
{
  v2 = self;
  v3 = sub_10022F0F8();

  return v3;
}

- (void)setInterruptions:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions) = a3;
  v3 = a3;
}

- (MRDNowPlayingAirPlaySessionEvents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end