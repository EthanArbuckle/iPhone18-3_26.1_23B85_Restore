@interface MRDCreateOptimizedEndpointAnalytics
- (BOOL)requestContainsLocal;
- (MRDCreateOptimizedEndpointAnalytics)init;
- (MRDTimingEvent)createEndpoint;
- (MRDTimingEvent)discoverOutputDevices;
- (MRDTimingEvent)followupOutputContextModification;
- (MRDTimingEvent)removeUndesiredDevicesOutputContextModification;
- (MRDTimingEvent)searchEndpointsForLocalDevice;
- (MRDTimingEvent)waitForCompletion;
- (int64_t)numberOfDevicesOnLocal;
- (int64_t)numberOfUndesiredDevices;
- (void)setCreateEndpoint:(id)endpoint;
- (void)setDiscoverOutputDevices:(id)devices;
- (void)setFollowupOutputContextModification:(id)modification;
- (void)setNumberOfDevicesOnLocal:(int64_t)local;
- (void)setNumberOfUndesiredDevices:(int64_t)devices;
- (void)setRemoveUndesiredDevicesOutputContextModification:(id)modification;
- (void)setRequestContainsLocal:(BOOL)local;
- (void)setSearchEndpointsForLocalDevice:(id)device;
- (void)setWaitForCompletion:(id)completion;
@end

@implementation MRDCreateOptimizedEndpointAnalytics

- (BOOL)requestContainsLocal
{
  v3 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestContainsLocal:(BOOL)local
{
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal;
  swift_beginAccess();
  *(self + v5) = local;
}

- (int64_t)numberOfUndesiredDevices
{
  v3 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfUndesiredDevices:(int64_t)devices
{
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices;
  swift_beginAccess();
  *(self + v5) = devices;
}

- (int64_t)numberOfDevicesOnLocal
{
  v3 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfDevicesOnLocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfDevicesOnLocal:(int64_t)local
{
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfDevicesOnLocal;
  swift_beginAccess();
  *(self + v5) = local;
}

- (MRDTimingEvent)discoverOutputDevices
{
  selfCopy = self;
  v3 = sub_100350D94();

  return v3;
}

- (void)setDiscoverOutputDevices:(id)devices
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices) = devices;
  devicesCopy = devices;
}

- (MRDTimingEvent)searchEndpointsForLocalDevice
{
  selfCopy = self;
  v3 = sub_100350E1C();

  return v3;
}

- (void)setSearchEndpointsForLocalDevice:(id)device
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice) = device;
  deviceCopy = device;
}

- (MRDTimingEvent)createEndpoint
{
  selfCopy = self;
  v3 = sub_100350EA4();

  return v3;
}

- (void)setCreateEndpoint:(id)endpoint
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint) = endpoint;
  endpointCopy = endpoint;
}

- (MRDTimingEvent)waitForCompletion
{
  selfCopy = self;
  v3 = sub_100350F2C();

  return v3;
}

- (void)setWaitForCompletion:(id)completion
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion) = completion;
  completionCopy = completion;
}

- (MRDTimingEvent)removeUndesiredDevicesOutputContextModification
{
  selfCopy = self;
  v3 = sub_100350FB4();

  return v3;
}

- (void)setRemoveUndesiredDevicesOutputContextModification:(id)modification
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification) = modification;
  modificationCopy = modification;
}

- (MRDTimingEvent)followupOutputContextModification
{
  selfCopy = self;
  v3 = sub_10035103C();

  return v3;
}

- (void)setFollowupOutputContextModification:(id)modification
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification) = modification;
  modificationCopy = modification;
}

- (MRDCreateOptimizedEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end