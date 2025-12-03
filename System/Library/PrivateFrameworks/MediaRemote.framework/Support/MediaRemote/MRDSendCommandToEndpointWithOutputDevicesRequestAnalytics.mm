@interface MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics
- (BOOL)requestContainsLocalDeviceUID;
- (BOOL)requestForCompanionOrigin;
- (BOOL)requestForCurrentConfiguration;
- (BOOL)requestForLocalOrigin;
- (MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics)init;
- (MRDTimingEvent)connect;
- (MRDTimingEvent)createEndpointWithCurrentTopology;
- (MRDTimingEvent)createOptimizedEndpoint;
- (MRDTimingEvent)createPartialEndpoint;
- (MRDTimingEvent)sendCommand;
- (MRDeviceInfo)deviceInfo;
- (MRRequestDetails)details;
- (double)timeout;
- (int64_t)command;
- (int64_t)numberOfRequestedOutputDeviceUIDs;
- (void)setCommand:(int64_t)command;
- (void)setConnect:(id)connect;
- (void)setCreateEndpointWithCurrentTopology:(id)topology;
- (void)setCreateOptimizedEndpoint:(id)endpoint;
- (void)setCreatePartialEndpoint:(id)endpoint;
- (void)setDetails:(id)details;
- (void)setDeviceInfo:(id)info;
- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)ds;
- (void)setRequestContainsLocalDeviceUID:(BOOL)d;
- (void)setRequestForCompanionOrigin:(BOOL)origin;
- (void)setRequestForCurrentConfiguration:(BOOL)configuration;
- (void)setRequestForLocalOrigin:(BOOL)origin;
- (void)setSendCommand:(id)command;
- (void)setTimeout:(double)timeout;
@end

@implementation MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics

- (MRRequestDetails)details
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDetails:(id)details
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = details;
  detailsCopy = details;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeviceInfo:(id)info
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = info;
  infoCopy = info;
}

- (int64_t)command
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCommand:(int64_t)command
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  *(self + v5) = command;
}

- (BOOL)requestContainsLocalDeviceUID
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestContainsLocalDeviceUID:(BOOL)d
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(self + v5) = d;
}

- (BOOL)requestForCurrentConfiguration
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCurrentConfiguration:(BOOL)configuration
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(self + v5) = configuration;
}

- (BOOL)requestForLocalOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForLocalOrigin:(BOOL)origin
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(self + v5) = origin;
}

- (BOOL)requestForCompanionOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCompanionOrigin:(BOOL)origin
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(self + v5) = origin;
}

- (int64_t)numberOfRequestedOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)ds
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = ds;
}

- (double)timeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimeout:(double)timeout
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  *(self + v5) = timeout;
}

- (MRDTimingEvent)createOptimizedEndpoint
{
  selfCopy = self;
  v3 = sub_100352BA8();

  return v3;
}

- (void)setCreateOptimizedEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)createEndpointWithCurrentTopology
{
  selfCopy = self;
  v3 = sub_100352C30();

  return v3;
}

- (void)setCreateEndpointWithCurrentTopology:(id)topology
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology) = topology;
  topologyCopy = topology;
}

- (MRDTimingEvent)createPartialEndpoint
{
  selfCopy = self;
  v3 = sub_100352CB8();

  return v3;
}

- (void)setCreatePartialEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)connect
{
  selfCopy = self;
  v3 = sub_100352D40();

  return v3;
}

- (void)setConnect:(id)connect
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect) = connect;
  connectCopy = connect;
}

- (MRDTimingEvent)sendCommand
{
  selfCopy = self;
  v3 = sub_100352DC8();

  return v3;
}

- (void)setSendCommand:(id)command
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand) = command;
  commandCopy = command;
}

- (MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end