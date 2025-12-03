@interface MapsSuggestionsNavdMapsAppLocationManager
+ (id)sharedLocationManager;
- (BOOL)hasLocationAccess;
- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)name queue:(id)queue;
@end

@implementation MapsSuggestionsNavdMapsAppLocationManager

+ (id)sharedLocationManager
{
  if (qword_100075900 != -1)
  {
    sub_10003D978();
  }

  v3 = qword_1000758F8;

  return v3;
}

- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)name queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsNavdMapsAppLocationManager;
  return [(MapsSuggestionsNavdLocationManager *)&v5 initWithName:name locationBundleID:MapsAppBundleId queue:queue];
}

- (BOOL)hasLocationAccess
{
  if ([CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 3 > 1)
  {
    return 0;
  }

  locationManager = [(MapsSuggestionsNavdLocationManager *)self locationManager];
  v4 = [locationManager accuracyAuthorization] == 0;

  return v4;
}

@end