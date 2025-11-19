@interface MapsSuggestionsNavdLBALocationManager
+ (id)sharedLocationManager;
- (BOOL)hasLocationAccess;
- (MapsSuggestionsNavdLBALocationManager)initWithName:(id)a3 queue:(id)a4;
@end

@implementation MapsSuggestionsNavdLBALocationManager

+ (id)sharedLocationManager
{
  if (qword_1000759B0 != -1)
  {
    sub_10003EA64();
  }

  v3 = qword_1000759A8;

  return v3;
}

- (MapsSuggestionsNavdLBALocationManager)initWithName:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsNavdLBALocationManager;
  return [(MapsSuggestionsNavdLocationManager *)&v5 initWithName:a3 locationBundlePath:@"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle" queue:a4];
}

- (BOOL)hasLocationAccess
{
  v3 = [CLLocationManager authorizationStatusForBundlePath:@"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle"]- 5;
  v4 = [CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 5;
  if (v3 < 0xFFFFFFFE || v4 < 0xFFFFFFFE)
  {
    return 0;
  }

  v7 = [(MapsSuggestionsNavdLocationManager *)self locationManager];
  v6 = [v7 accuracyAuthorization] == 0;

  return v6;
}

@end