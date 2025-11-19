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
- (void)setCommand:(int64_t)a3;
- (void)setConnect:(id)a3;
- (void)setCreateEndpointWithCurrentTopology:(id)a3;
- (void)setCreateOptimizedEndpoint:(id)a3;
- (void)setCreatePartialEndpoint:(id)a3;
- (void)setDetails:(id)a3;
- (void)setDeviceInfo:(id)a3;
- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)a3;
- (void)setRequestContainsLocalDeviceUID:(BOOL)a3;
- (void)setRequestForCompanionOrigin:(BOOL)a3;
- (void)setRequestForCurrentConfiguration:(BOOL)a3;
- (void)setRequestForLocalOrigin:(BOOL)a3;
- (void)setSendCommand:(id)a3;
- (void)setTimeout:(double)a3;
@end

@implementation MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics

- (MRRequestDetails)details
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDetails:(id)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeviceInfo:(id)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (int64_t)command
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCommand:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestContainsLocalDeviceUID
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestContainsLocalDeviceUID:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestForCurrentConfiguration
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCurrentConfiguration:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestForLocalOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForLocalOrigin:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestForCompanionOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCompanionOrigin:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfRequestedOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)timeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimeout:(double)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRDTimingEvent)createOptimizedEndpoint
{
  v2 = self;
  v3 = sub_100352BA8();

  return v3;
}

- (void)setCreateOptimizedEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createOptimizedEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createEndpointWithCurrentTopology
{
  v2 = self;
  v3 = sub_100352C30();

  return v3;
}

- (void)setCreateEndpointWithCurrentTopology:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createEndpointWithCurrentTopology) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createPartialEndpoint
{
  v2 = self;
  v3 = sub_100352CB8();

  return v3;
}

- (void)setCreatePartialEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___createPartialEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)connect
{
  v2 = self;
  v3 = sub_100352D40();

  return v3;
}

- (void)setConnect:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___connect) = a3;
  v3 = a3;
}

- (MRDTimingEvent)sendCommand
{
  v2 = self;
  v3 = sub_100352DC8();

  return v3;
}

- (void)setSendCommand:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics____lazy_storage___sendCommand) = a3;
  v3 = a3;
}

- (MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end