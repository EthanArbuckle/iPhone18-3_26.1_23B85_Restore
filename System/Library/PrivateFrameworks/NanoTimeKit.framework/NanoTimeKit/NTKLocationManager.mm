@interface NTKLocationManager
+ (id)fallbackLocation;
+ (id)sharedLocationManager;
- (id)anyLocation;
- (id)currentLocation;
- (id)previousLocation;
- (id)startLocationUpdatesWithIdentifier:(id)identifier handler:(id)handler;
- (id)startLocationUpdatesWithIdentifier:(id)identifier wantsGroundElevation:(BOOL)elevation handler:(id)handler;
- (void)stopLocationUpdatesForToken:(id)token;
@end

@implementation NTKLocationManager

+ (id)sharedLocationManager
{
  if (sharedLocationManager_onceToken != -1)
  {
    +[NTKLocationManager sharedLocationManager];
  }

  v3 = sharedLocationManager_locationManager;

  return v3;
}

void __43__NTKLocationManager_sharedLocationManager__block_invoke()
{
  v0 = objc_alloc_init(NTKSimulatedLocationManager);
  v1 = sharedLocationManager_locationManager;
  sharedLocationManager_locationManager = v0;
}

+ (id)fallbackLocation
{
  v2 = CLLocationCoordinate2DMake(37.3353672, -122.011737);
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  v4 = *MEMORY[0x277CE4208];
  v5 = *MEMORY[0x277CE4250];
  v6 = +[(CLKDate *)NTKDate];
  v7 = [v3 initWithCoordinate:v6 altitude:v2.latitude horizontalAccuracy:v2.longitude verticalAccuracy:48.768 timestamp:{v4, v5}];

  return v7;
}

- (id)anyLocation
{
  v2 = objc_opt_class();

  return [v2 fallbackLocation];
}

- (id)startLocationUpdatesWithIdentifier:(id)identifier handler:(id)handler
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return &stru_284110E98;
}

- (id)startLocationUpdatesWithIdentifier:(id)identifier wantsGroundElevation:(BOOL)elevation handler:(id)handler
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return &stru_284110E98;
}

- (void)stopLocationUpdatesForToken:(id)token
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();

  NSRequestConcreteImplementation();
}

- (id)currentLocation
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v2 = objc_opt_class();

  return [v2 fallbackLocation];
}

- (id)previousLocation
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v2 = objc_opt_class();

  return [v2 fallbackLocation];
}

@end