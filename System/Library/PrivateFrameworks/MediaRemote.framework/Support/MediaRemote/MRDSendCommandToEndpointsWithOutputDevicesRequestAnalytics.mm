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
- (void)setCommand:(int64_t)command;
- (void)setDetails:(id)details;
- (void)setDeviceInfo:(id)info;
- (void)setDiscoverOutputDevices:(id)devices;
- (void)setNumberOfDiscoveredOutputDeviceUIDs:(int64_t)ds;
- (void)setNumberOfEndpoints:(int64_t)endpoints;
- (void)setNumberOfErrorsAtCompletion:(int64_t)completion;
- (void)setNumberOfErrorsAtTimeout:(int64_t)timeout;
- (void)setNumberOfMissingOutputDeviceUIDs:(int64_t)ds;
- (void)setNumberOfPendingAtTimeout:(int64_t)timeout;
- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)ds;
- (void)setNumberOfSuccessAtCompletion:(int64_t)completion;
- (void)setNumberOfSuccessAtTimeout:(int64_t)timeout;
- (void)setRequestContainsLocalDeviceUID:(BOOL)d;
- (void)setRequestForCompanionOrigin:(BOOL)origin;
- (void)setRequestForCurrentConfiguration:(BOOL)configuration;
- (void)setRequestForLocalOrigin:(BOOL)origin;
- (void)setSendCommands:(id)commands;
- (void)setTimeout:(double)timeout;
- (void)setTracked:(BOOL)tracked;
@end

@implementation MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics

- (MRRequestDetails)details
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDetails:(id)details
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_details;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = details;
  detailsCopy = details;
}

- (MRDeviceInfo)deviceInfo
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDeviceInfo:(id)info
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_deviceInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = info;
  infoCopy = info;
}

- (int64_t)command
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCommand:(int64_t)command
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_command;
  swift_beginAccess();
  *(self + v5) = command;
}

- (BOOL)requestContainsLocalDeviceUID
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestContainsLocalDeviceUID:(BOOL)d
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestContainsLocalDeviceUID;
  swift_beginAccess();
  *(self + v5) = d;
}

- (BOOL)requestForCurrentConfiguration
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCurrentConfiguration:(BOOL)configuration
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCurrentConfiguration;
  swift_beginAccess();
  *(self + v5) = configuration;
}

- (BOOL)requestForLocalOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForLocalOrigin:(BOOL)origin
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForLocalOrigin;
  swift_beginAccess();
  *(self + v5) = origin;
}

- (BOOL)requestForCompanionOrigin
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestForCompanionOrigin:(BOOL)origin
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_requestForCompanionOrigin;
  swift_beginAccess();
  *(self + v5) = origin;
}

- (int64_t)numberOfRequestedOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfRequestedOutputDeviceUIDs:(int64_t)ds
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfRequestedOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = ds;
}

- (int64_t)numberOfDiscoveredOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfDiscoveredOutputDeviceUIDs:(int64_t)ds
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfDiscoveredOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = ds;
}

- (int64_t)numberOfMissingOutputDeviceUIDs
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfMissingOutputDeviceUIDs:(int64_t)ds
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfMissingOutputDeviceUIDs;
  swift_beginAccess();
  *(self + v5) = ds;
}

- (int64_t)numberOfEndpoints
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfEndpoints:(int64_t)endpoints
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfEndpoints;
  swift_beginAccess();
  *(self + v5) = endpoints;
}

- (int64_t)numberOfPendingAtTimeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfPendingAtTimeout:(int64_t)timeout
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfPendingAtTimeout;
  swift_beginAccess();
  *(self + v5) = timeout;
}

- (int64_t)numberOfErrorsAtTimeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfErrorsAtTimeout:(int64_t)timeout
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtTimeout;
  swift_beginAccess();
  *(self + v5) = timeout;
}

- (int64_t)numberOfErrorsAtCompletion
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfErrorsAtCompletion:(int64_t)completion
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfErrorsAtCompletion;
  swift_beginAccess();
  *(self + v5) = completion;
}

- (int64_t)numberOfSuccessAtTimeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfSuccessAtTimeout:(int64_t)timeout
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtTimeout;
  swift_beginAccess();
  *(self + v5) = timeout;
}

- (int64_t)numberOfSuccessAtCompletion
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfSuccessAtCompletion:(int64_t)completion
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_numberOfSuccessAtCompletion;
  swift_beginAccess();
  *(self + v5) = completion;
}

- (double)timeout
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTimeout:(double)timeout
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_timeout;
  swift_beginAccess();
  *(self + v5) = timeout;
}

- (MRDTimingEvent)discoverOutputDevices
{
  selfCopy = self;
  v3 = sub_100354B1C();

  return v3;
}

- (void)setDiscoverOutputDevices:(id)devices
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___discoverOutputDevices) = devices;
  devicesCopy = devices;
}

- (MRDTimingEvent)sendCommands
{
  selfCopy = self;
  v3 = sub_100354BA4();

  return v3;
}

- (void)setSendCommands:(id)commands
{
  v4 = *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands);
  *(self + OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics____lazy_storage___sendCommands) = commands;
  commandsCopy = commands;
}

- (BOOL)tracked
{
  v3 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTracked:(BOOL)tracked
{
  v5 = OBJC_IVAR___MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics_tracked;
  swift_beginAccess();
  *(self + v5) = tracked;
}

- (MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end