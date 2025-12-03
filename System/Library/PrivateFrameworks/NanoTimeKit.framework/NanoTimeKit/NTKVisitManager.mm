@interface NTKVisitManager
+ (id)fallbackVisit;
+ (id)sharedVisitManager;
- (id)anyVisit;
- (id)currentVisit;
- (id)previousVisit;
- (id)startVisitUpdatesWithIdentifier:(id)identifier handler:(id)handler;
- (void)stopVisitUpdatesForToken:(id)token;
@end

@implementation NTKVisitManager

+ (id)sharedVisitManager
{
  if (sharedVisitManager_onceToken != -1)
  {
    +[NTKVisitManager sharedVisitManager];
  }

  v3 = sharedVisitManager_visitManager;

  return v3;
}

void __37__NTKVisitManager_sharedVisitManager__block_invoke()
{
  v0 = objc_alloc_init(NTKSimulatedVisitManager);
  v1 = sharedVisitManager_visitManager;
  sharedVisitManager_visitManager = v0;
}

+ (id)fallbackVisit
{
  v2 = objc_alloc(MEMORY[0x277CBFCC0]);
  v3 = CLLocationCoordinate2DMake(37.3353672, -122.011737);
  v4 = *MEMORY[0x277CE4208];
  v5 = +[(CLKDate *)NTKDate];
  v6 = +[(CLKDate *)NTKDate];
  v7 = +[(CLKDate *)NTKDate];
  v8 = [v2 initWithCoordinate:v5 horizontalAccuracy:v6 arrivalDate:v7 departureDate:v3.latitude detectionDate:{v3.longitude, v4}];

  return v8;
}

- (id)anyVisit
{
  v2 = objc_opt_class();

  return [v2 fallbackVisit];
}

- (id)startVisitUpdatesWithIdentifier:(id)identifier handler:(id)handler
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return &stru_284110E98;
}

- (void)stopVisitUpdatesForToken:(id)token
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();

  NSRequestConcreteImplementation();
}

- (id)currentVisit
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v2 = objc_opt_class();

  return [v2 fallbackVisit];
}

- (id)previousVisit
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v2 = objc_opt_class();

  return [v2 fallbackVisit];
}

@end