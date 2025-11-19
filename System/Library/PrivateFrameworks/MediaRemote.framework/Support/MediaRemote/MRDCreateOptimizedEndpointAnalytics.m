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
- (void)setCreateEndpoint:(id)a3;
- (void)setDiscoverOutputDevices:(id)a3;
- (void)setFollowupOutputContextModification:(id)a3;
- (void)setNumberOfDevicesOnLocal:(int64_t)a3;
- (void)setNumberOfUndesiredDevices:(int64_t)a3;
- (void)setRemoveUndesiredDevicesOutputContextModification:(id)a3;
- (void)setRequestContainsLocal:(BOOL)a3;
- (void)setSearchEndpointsForLocalDevice:(id)a3;
- (void)setWaitForCompletion:(id)a3;
@end

@implementation MRDCreateOptimizedEndpointAnalytics

- (BOOL)requestContainsLocal
{
  v3 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestContainsLocal:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_requestContainsLocal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfUndesiredDevices
{
  v3 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfUndesiredDevices:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfUndesiredDevices;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)numberOfDevicesOnLocal
{
  v3 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfDevicesOnLocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfDevicesOnLocal:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics_numberOfDevicesOnLocal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRDTimingEvent)discoverOutputDevices
{
  v2 = self;
  v3 = sub_100350D94();

  return v3;
}

- (void)setDiscoverOutputDevices:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___discoverOutputDevices) = a3;
  v3 = a3;
}

- (MRDTimingEvent)searchEndpointsForLocalDevice
{
  v2 = self;
  v3 = sub_100350E1C();

  return v3;
}

- (void)setSearchEndpointsForLocalDevice:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___searchEndpointsForLocalDevice) = a3;
  v3 = a3;
}

- (MRDTimingEvent)createEndpoint
{
  v2 = self;
  v3 = sub_100350EA4();

  return v3;
}

- (void)setCreateEndpoint:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___createEndpoint) = a3;
  v3 = a3;
}

- (MRDTimingEvent)waitForCompletion
{
  v2 = self;
  v3 = sub_100350F2C();

  return v3;
}

- (void)setWaitForCompletion:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___waitForCompletion) = a3;
  v3 = a3;
}

- (MRDTimingEvent)removeUndesiredDevicesOutputContextModification
{
  v2 = self;
  v3 = sub_100350FB4();

  return v3;
}

- (void)setRemoveUndesiredDevicesOutputContextModification:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___removeUndesiredDevicesOutputContextModification) = a3;
  v3 = a3;
}

- (MRDTimingEvent)followupOutputContextModification
{
  v2 = self;
  v3 = sub_10035103C();

  return v3;
}

- (void)setFollowupOutputContextModification:(id)a3
{
  v4 = *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification);
  *(self + OBJC_IVAR___MRDCreateOptimizedEndpointAnalytics____lazy_storage___followupOutputContextModification) = a3;
  v3 = a3;
}

- (MRDCreateOptimizedEndpointAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end