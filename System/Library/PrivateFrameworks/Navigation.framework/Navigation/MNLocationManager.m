@interface MNLocationManager
+ (MNLocationManager)shared;
- (BOOL)isHeadingAvailable;
- (MNLocationRecorder)locationRecorder;
- (id)locationCorrector;
- (void)locationProvider:(id)a3 didReceiveError:(id)a4;
- (void)locationProviderDidChangeAuthorizationStatus:(id)a3;
- (void)pushLocation:(id)a3;
- (void)setLocationCorrector:(id)a3;
- (void)setLocationRecorder:(id)a3;
- (void)startMonitoringFor:(id)a3;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)stopAllUpdates;
- (void)stopMonitoringFor:(id)a3;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)useGPSLocationProviderWithCLParameters:(id)a3;
- (void)useHybridLocationProvider;
@end

@implementation MNLocationManager

+ (MNLocationManager)shared
{
  if (qword_1EC75BF68 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC75BF70;

  return v3;
}

- (void)useGPSLocationProviderWithCLParameters:(id)a3
{
  v4 = a3;
  v5 = self;
  NavigationLocationManager.useGPSLocationProvider(with:)(v4);
}

- (void)useHybridLocationProvider
{
  v2 = self;
  NavigationLocationManager.useHybridLocationProvider()();
}

- (void)stopAllUpdates
{
  v2 = self;
  NavigationLocationManager.stopAllUpdates()();
}

- (void)startUpdatingLocation
{
  v2 = self;
  NavigationLocationManager.startUpdatingLocation()();
}

- (void)stopUpdatingLocation
{
  v2 = self;
  NavigationLocationManager.stopUpdatingLocation()();
}

- (id)locationCorrector
{
  v2 = (self + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D316A89C;
    aBlock[3] = &block_descriptor_29;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLocationCorrector:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1D316F4A8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1D316EA24(v7);
}

- (MNLocationRecorder)locationRecorder
{
  v3 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setLocationRecorder:(id)a3
{
  v5 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)pushLocation:(id)a3
{
  v4 = a3;
  v5 = self;
  NavigationLocationManager.push(_:)(v4);
}

- (BOOL)isHeadingAvailable
{
  v2 = objc_opt_self();

  return [v2 headingAvailable];
}

- (void)startUpdatingHeading
{
  v2 = self;
  NavigationLocationManager.startUpdatingHeading()();
}

- (void)stopUpdatingHeading
{
  v2 = self;
  NavigationLocationManager.stopUpdatingHeading()();
}

- (void)startMonitoringFor:(id)a3
{
  v4 = a3;
  v5 = self;
  NavigationLocationManager.startMonitoring(for:)(v4);
}

- (void)stopMonitoringFor:(id)a3
{
  v4 = a3;
  v5 = self;
  NavigationLocationManager.stopMonitoring(for:)(v4);
}

- (void)locationProvider:(id)a3 didReceiveError:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v6 = self;
  sub_1D316F0B4(v7);
  swift_unknownObjectRelease();
}

- (void)locationProviderDidChangeAuthorizationStatus:(id)a3
{
  swift_unknownObjectRetain();
  v7 = self;
  if ([a3 isAuthorized])
  {
    swift_unknownObjectRelease();
    v5 = v7;
  }

  else
  {
    NavigationLocationManager.stopUpdatingLocation()();
    swift_unknownObjectRelease();
    v6 = *(v7 + OBJC_IVAR___MNLocationManager__lastLocation);
    *(v7 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;

    v5 = v6;
  }
}

@end