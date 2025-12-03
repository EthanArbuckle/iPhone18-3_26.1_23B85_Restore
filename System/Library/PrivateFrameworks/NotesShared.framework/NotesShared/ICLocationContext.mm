@interface ICLocationContext
+ (id)sharedContext;
- (BOOL)canGetLocation;
- (CLLocationManager)locationManager;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)lookupPlaceAtLatitude:(double)latitude longitude:(double)longitude handler:(id)handler;
- (void)requestAuthorizationIfNeeded;
@end

@implementation ICLocationContext

+ (id)sharedContext
{
  if (sharedContext_once != -1)
  {
    +[ICLocationContext sharedContext];
  }

  v3 = sharedContext_defaultContext;

  return v3;
}

void __34__ICLocationContext_sharedContext__block_invoke()
{
  v0 = objc_alloc_init(ICLocationContext);
  v1 = sharedContext_defaultContext;
  sharedContext_defaultContext = v0;
}

- (BOOL)canGetLocation
{
  locationServicesEnabled = [MEMORY[0x277CBFC10] locationServicesEnabled];
  if (locationServicesEnabled)
  {
    locationManager = [(ICLocationContext *)self locationManager];
    authorizationStatus = [locationManager authorizationStatus];

    [(ICLocationContext *)self requestAuthorizationIfNeeded];
    LOBYTE(locationServicesEnabled) = authorizationStatus > 2;
  }

  return locationServicesEnabled;
}

- (void)lookupPlaceAtLatitude:(double)latitude longitude:(double)longitude handler:(id)handler
{
  handlerCopy = handler;
  v9 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
  geocoder = [(ICLocationContext *)self geocoder];

  if (!geocoder)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    [(ICLocationContext *)self setGeocoder:v11];
  }

  geocoder2 = [(ICLocationContext *)self geocoder];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__ICLocationContext_lookupPlaceAtLatitude_longitude_handler___block_invoke;
  v14[3] = &unk_27819A430;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [geocoder2 reverseGeocodeLocation:v9 completionHandler:v14];
}

void __61__ICLocationContext_lookupPlaceAtLatitude_longitude_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__ICLocationContext_lookupPlaceAtLatitude_longitude_handler___block_invoke_cold_1(v6, v7);
    }
  }

  if (*(a1 + 32))
  {
    v8 = [v5 firstObject];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  [(ICLocationContext *)self setRequestedAuthorization:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICLocationContextAuthorizationStatusDidChange" object:0];
}

- (CLLocationManager)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBFC10]);
    v5 = self->_locationManager;
    self->_locationManager = v4;

    [(CLLocationManager *)self->_locationManager setDelegate:self];
    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)requestAuthorizationIfNeeded
{
  if (![(ICLocationContext *)self requestedAuthorization])
  {
    locationManager = [(ICLocationContext *)self locationManager];
    authorizationStatus = [locationManager authorizationStatus];

    if (!authorizationStatus)
    {
      locationManager2 = [(ICLocationContext *)self locationManager];
      [locationManager2 requestWhenInUseAuthorization];

      [(ICLocationContext *)self setRequestedAuthorization:1];
    }
  }
}

void __61__ICLocationContext_lookupPlaceAtLatitude_longitude_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error performing reverse geolocation %@", &v2, 0xCu);
}

@end