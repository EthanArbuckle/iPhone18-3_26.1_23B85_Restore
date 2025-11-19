@interface MapsSuggestionsNavdMapsAppLocationManager
+ (id)sharedLocationManager;
- (BOOL)hasLocationAccess;
- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)a3 queue:(id)a4;
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

- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsNavdMapsAppLocationManager;
  return [(MapsSuggestionsNavdLocationManager *)&v5 initWithName:a3 locationBundleID:MapsAppBundleId queue:a4];
}

- (BOOL)hasLocationAccess
{
  if ([CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 3 > 1)
  {
    return 0;
  }

  v3 = [(MapsSuggestionsNavdLocationManager *)self locationManager];
  v4 = [v3 accuracyAuthorization] == 0;

  return v4;
}

@end