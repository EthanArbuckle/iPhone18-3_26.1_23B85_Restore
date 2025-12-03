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
- (void)setAddLocalDevice:(id)device;
- (void)setClusterType:(unsigned int)type;
- (void)setDiscoverableGroupLeader:(BOOL)leader;
- (void)setFindEndpoint:(id)endpoint;
- (void)setInterruptions:(id)interruptions;
- (void)setModelID:(id)d;
- (void)setOriginForward:(id)forward;
- (void)setReloadDeviceInfo:(id)info;
- (void)setRemoveLocalDevice:(id)device;
- (void)setSourceOutputContext:(id)context;
@end

@implementation MRDNowPlayingAirPlaySessionEvents

- (BOOL)discoverableGroupLeader
{
  v3 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDiscoverableGroupLeader:(BOOL)leader
{
  v5 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader;
  swift_beginAccess();
  *(self + v5) = leader;
}

- (unsigned)clusterType
{
  v3 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setClusterType:(unsigned int)type
{
  v5 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  swift_beginAccess();
  *(self + v5) = type;
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

- (void)setModelID:(id)d
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
  selfCopy = self;
  v3 = sub_10022EDC8();

  return v3;
}

- (void)setSourceOutputContext:(id)context
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext) = context;
  contextCopy = context;
}

- (MRDTimingEvent)removeLocalDevice
{
  selfCopy = self;
  v3 = sub_10022EE50();

  return v3;
}

- (void)setRemoveLocalDevice:(id)device
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice) = device;
  deviceCopy = device;
}

- (MRDTimingEvent)addLocalDevice
{
  selfCopy = self;
  v3 = sub_10022EED8();

  return v3;
}

- (void)setAddLocalDevice:(id)device
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice) = device;
  deviceCopy = device;
}

- (MRDTimingEvent)reloadDeviceInfo
{
  selfCopy = self;
  v3 = sub_10022EF60();

  return v3;
}

- (void)setReloadDeviceInfo:(id)info
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo) = info;
  infoCopy = info;
}

- (MRDTimingEvent)originForward
{
  selfCopy = self;
  v3 = sub_10022EFE8();

  return v3;
}

- (void)setOriginForward:(id)forward
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward) = forward;
  forwardCopy = forward;
}

- (MRDTimingEvent)findEndpoint
{
  selfCopy = self;
  v3 = sub_10022F070();

  return v3;
}

- (void)setFindEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)interruptions
{
  selfCopy = self;
  v3 = sub_10022F0F8();

  return v3;
}

- (void)setInterruptions:(id)interruptions
{
  v4 = *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions);
  *(self + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions) = interruptions;
  interruptionsCopy = interruptions;
}

- (MRDNowPlayingAirPlaySessionEvents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end