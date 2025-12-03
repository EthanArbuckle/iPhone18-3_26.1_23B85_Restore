@interface MNLocationManager
+ (MNLocationManager)shared;
- (BOOL)isHeadingAvailable;
- (MNLocationRecorder)locationRecorder;
- (id)locationCorrector;
- (void)locationProvider:(id)provider didReceiveError:(id)error;
- (void)locationProviderDidChangeAuthorizationStatus:(id)status;
- (void)pushLocation:(id)location;
- (void)setLocationCorrector:(id)corrector;
- (void)setLocationRecorder:(id)recorder;
- (void)startMonitoringFor:(id)for;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)stopAllUpdates;
- (void)stopMonitoringFor:(id)for;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)useGPSLocationProviderWithCLParameters:(id)parameters;
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

- (void)useGPSLocationProviderWithCLParameters:(id)parameters
{
  parametersCopy = parameters;
  selfCopy = self;
  NavigationLocationManager.useGPSLocationProvider(with:)(parametersCopy);
}

- (void)useHybridLocationProvider
{
  selfCopy = self;
  NavigationLocationManager.useHybridLocationProvider()();
}

- (void)stopAllUpdates
{
  selfCopy = self;
  NavigationLocationManager.stopAllUpdates()();
}

- (void)startUpdatingLocation
{
  selfCopy = self;
  NavigationLocationManager.startUpdatingLocation()();
}

- (void)stopUpdatingLocation
{
  selfCopy = self;
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

- (void)setLocationCorrector:(id)corrector
{
  v4 = _Block_copy(corrector);
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
  selfCopy = self;
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

- (void)setLocationRecorder:(id)recorder
{
  v5 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = recorder;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)pushLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  NavigationLocationManager.push(_:)(locationCopy);
}

- (BOOL)isHeadingAvailable
{
  v2 = objc_opt_self();

  return [v2 headingAvailable];
}

- (void)startUpdatingHeading
{
  selfCopy = self;
  NavigationLocationManager.startUpdatingHeading()();
}

- (void)stopUpdatingHeading
{
  selfCopy = self;
  NavigationLocationManager.stopUpdatingHeading()();
}

- (void)startMonitoringFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  NavigationLocationManager.startMonitoring(for:)(forCopy);
}

- (void)stopMonitoringFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  NavigationLocationManager.stopMonitoring(for:)(forCopy);
}

- (void)locationProvider:(id)provider didReceiveError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_1D316F0B4(errorCopy);
  swift_unknownObjectRelease();
}

- (void)locationProviderDidChangeAuthorizationStatus:(id)status
{
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([status isAuthorized])
  {
    swift_unknownObjectRelease();
    v5 = selfCopy;
  }

  else
  {
    NavigationLocationManager.stopUpdatingLocation()();
    swift_unknownObjectRelease();
    v6 = *(selfCopy + OBJC_IVAR___MNLocationManager__lastLocation);
    *(selfCopy + OBJC_IVAR___MNLocationManager__lastLocation) = 0;

    v5 = v6;
  }
}

@end