@interface MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics
- (BOOL)requestContainsLocalDeviceUID;
- (BOOL)requestForCompanionOrigin;
- (BOOL)requestForCurrentConfiguration;
- (BOOL)requestForLocalOrigin;
- (BOOL)tracked;
- (MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics)init;
- (MRDTimingEvent)discoverOutputDevices;
- (MRDTimingEvent)sendCommands;
- (MRDeviceInfo)deviceInfo;
- (MRRequestDetails)details;
- (double)timeout;
- (int64_t)command;
- (int64_t)numberOfDiscoveredOutputDeviceUIDs;
- (int64_t)numberOfEndpoints;
- (int64_t)numberOfErrorsAtCompletion;
- (int64_t)numberOfErrorsAtTimeout;
- (int64_t)numberOfMissingOutputDeviceUIDs;
- (int64_t)numberOfPendingAtTimeout;
- (int64_t)numberOfRequestedOutputDeviceUIDs;
- (int64_t)numberOfSuccessAtCompletion;
- (int64_t)numberOfSuccessAtTimeout;
- (void)setCommand:(int64_t)a3;
- (void)setDetails:(id)a3;
- (void)setDeviceInfo:(id)a3;
- (void)setDiscoverOutputDevices:(id)a3;
- (void)setNumberOfDiscoveredOutputDeviceUIDs:(int64_t)a3;
- (void)setNumberOfEndpoints:(int64_t)a3;
- (void)setNumberOfErrorsAtCompletion:(int64_t)a3;
- (void)setNumberOfErrorsAtTimeout:(int64_t)a3;
- (void)setNumberOfMissingOutputDeviceUIDs:(int64_t)a3;
- (void)setNumberOfPendingAtTimeout:(int64_t)a3;
- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)a3;
- (void)setNumberOfSuccessAtCompletion:(int64_t)a3;
- (void)setNumberOfSuccessAtTimeout:(int64_t)a3;
- (void)setRequestContainsLocalDeviceUID:(BOOL)a3;
- (void)setRequestForCompanionOrigin:(BOOL)a3;
- (void)setRequestForCurrentConfiguration:(BOOL)a3;
- (void)setRequestForLocalOrigin:(BOOL)a3;
- (void)setSendCommands:(id)a3;
- (void)setTimeout:(double)a3;
- (void)setTracked:(BOOL)a3;
@end

@implementation MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics

- (MRRequestDetails)details
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDetails:(id)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeviceInfo:(id)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (int64_t)command
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCommand:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestContainsLocalDeviceUID
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestContainsLocalDeviceUID:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestForCurrentConfiguration
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCurrentConfiguration:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestForLocalOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForLocalOrigin:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestForCompanionOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCompanionOrigin:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfRequestedOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfDiscoveredOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfDiscoveredOutputDeviceUIDs:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfMissingOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfMissingOutputDeviceUIDs:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfEndpoints
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfEndpoints:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfPendingAtTimeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfPendingAtTimeout:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfErrorsAtTimeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfErrorsAtTimeout:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfErrorsAtCompletion
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfErrorsAtCompletion:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfSuccessAtTimeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfSuccessAtTimeout:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfSuccessAtCompletion
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfSuccessAtCompletion:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)timeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimeout:(double)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRDTimingEvent)discoverOutputDevices
{
  v2 = self;
  v3 = sub_100354B1C();

  return v3;
}

- (void)setDiscoverOutputDevices:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices) = a3;
  v3 = a3;
}

- (MRDTimingEvent)sendCommands
{
  v2 = self;
  v3 = sub_100354BA4();

  return v3;
}

- (void)setSendCommands:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands) = a3;
  v3 = a3;
}

- (BOOL)tracked
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTracked:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end