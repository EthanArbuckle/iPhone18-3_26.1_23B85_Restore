@interface CLSInputLocationClue
+ (id)clueWithLocation:(id)location locationCache:(id)cache;
+ (id)cluesWithLocations:(id)locations locationCache:(id)cache;
- (BOOL)isDefinite;
- (CLLocationCoordinate2D)closestCoordinates;
- (double)gpsHorizontalAccuracy;
- (id)description;
- (id)location;
- (id)place;
- (id)placemark;
- (id)projectedLocation;
- (id)region;
- (id)regionInPlacemark;
- (void)_prepareWithProgressBlock:(id)block;
@end

@implementation CLSInputLocationClue

- (void)_prepareWithProgressBlock:(id)block
{
  blockCopy = block;
  if (!self->_locationCache)
  {
    __assert_rtn("[CLSInputLocationClue _prepareWithProgressBlock:]", "CLSClue.m", 870, "_locationCache != nil");
  }

  v22 = blockCopy;
  value = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [CLSPlace alloc];
    value2 = [(CLSClue *)self value];
    v9 = [(CLSPlace *)v7 initWithPlacemark:value2];
    place = self->_place;
    self->_place = v9;
  }

  else
  {
    value3 = [(CLSClue *)self value];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      locationCache = self->_locationCache;
      value4 = [(CLSClue *)self value];
      value2 = [(CLSLocationCache *)locationCache placemarksForLocation:value4];

      place = [value2 firstObject];
      v15 = [[CLSPlace alloc] initWithPlacemark:place];
      v16 = self->_place;
      self->_place = v15;
    }

    else
    {
      value5 = [(CLSClue *)self value];
      value2 = [CLSCachedGeocoderOperation operationWithLocation:value5];

      v18 = [value2 performSynchronouslyWithLocationCache:self->_locationCache error:0];
      place = v18;
      if (v18)
      {
        firstObject = [v18 firstObject];
        v20 = [[CLSPlace alloc] initWithPlacemark:firstObject];
        v21 = self->_place;
        self->_place = v20;
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v29.receiver = self;
  v29.super_class = CLSInputLocationClue;
  v4 = [(CLSClue *)&v29 description];
  v5 = [v3 stringWithString:v4];

  value = [(CLSClue *)self value];
  [v5 appendFormat:@"\n\tvalue:[%@]", value];

  [v5 appendFormat:@"\n\tisDefinite:[%d]", -[CLSInputLocationClue isDefinite](self, "isDefinite")];
  location = [(CLSInputLocationClue *)self location];
  [v5 appendFormat:@"\n\tlocation:[%@]", location];

  region = [(CLSInputLocationClue *)self region];
  [v5 appendFormat:@"\n\tregion:[%@]", region];

  regionInPlacemark = [(CLSInputLocationClue *)self regionInPlacemark];
  [v5 appendFormat:@"\n\tregionInPlacemark:[%@]", regionInPlacemark];

  placemark = [(CLSInputLocationClue *)self placemark];
  v11 = placemark;
  if (placemark)
  {
    location2 = [placemark location];
    region2 = [v11 region];
    thoroughfare = [v11 thoroughfare];
    subThoroughfare = [v11 subThoroughfare];
    locality = [v11 locality];
    subLocality = [v11 subLocality];
    administrativeArea = [v11 administrativeArea];
    subAdministrativeArea = [v11 subAdministrativeArea];
    iSOcountryCode = [v11 ISOcountryCode];
    inlandWater = [v11 inlandWater];
    ocean = [v11 ocean];
    areasOfInterest = [v11 areasOfInterest];
    v14 = [areasOfInterest flattenWithSeparator:{@", "}];
    location3 = [v11 location];
    location4 = [(CLSInputLocationClue *)self location];
    [location3 distanceFromLocation:location4];
    [v5 appendFormat:@"\n\tplacemark:\n\t\tlocation:[%@]\n\t\tregion:[%@]\n\t\t thoroughfare:[%@] subThoroughfare:[%@] locality:[%@] subLocality:[%@]\n\t\tadministrativeArea:[%@] subAdministrativeArea:[%@] ISOcountryCode:[%@]\n\t\tinlandWater:[%@] ocean:[%@] areasOfInterest:[%@]\n\tdistanceDifference:[%lf]", location2, region2, thoroughfare, subThoroughfare, locality, subLocality, administrativeArea, subAdministrativeArea, iSOcountryCode, inlandWater, ocean, v14, v17];
  }

  return v5;
}

- (BOOL)isDefinite
{
  region = [(CLSInputLocationClue *)self region];
  [region radius];
  if (v4 <= 20.0)
  {
    v12 = 1;
  }

  else
  {
    location = [(CLSInputLocationClue *)self location];
    placemark = [(CLSInputLocationClue *)self placemark];
    location2 = [placemark location];
    [location distanceFromLocation:location2];
    if (v8 >= 0.01)
    {
      v12 = 0;
    }

    else
    {
      placemark2 = [(CLSInputLocationClue *)self placemark];
      region2 = [placemark2 region];
      [region2 radius];
      v12 = v11 <= 100.0;
    }
  }

  return v12;
}

- (CLLocationCoordinate2D)closestCoordinates
{
  location = [(CLSInputLocationClue *)self location];
  [location coordinate];
  v5 = v4;
  v7 = v6;

  projectedLocation = [(CLSInputLocationClue *)self projectedLocation];
  location2 = [(CLSInputLocationClue *)self location];
  [projectedLocation distanceFromLocation:location2];
  v11 = v10;

  if (v11 <= 15.0)
  {
    projectedLocation2 = [(CLSInputLocationClue *)self projectedLocation];
    [projectedLocation2 coordinate];
    v5 = v13;
    v7 = v14;
  }

  v15 = v5;
  v16 = v7;
  result.longitude = v16;
  result.latitude = v15;
  return result;
}

- (id)projectedLocation
{
  placemark = [(CLSInputLocationClue *)self placemark];
  location = [placemark location];

  return location;
}

- (double)gpsHorizontalAccuracy
{
  value = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(CLSClue *)self value];
  placemark = value2;
  if (isKindOfClass)
  {
    [value2 clsHorizontalAccuracy];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      placemark = [(CLSInputLocationClue *)self placemark];
      location = [placemark location];
      [location horizontalAccuracy];
      v9 = v11;

      goto LABEL_7;
    }

    placemark = [(CLSClue *)self value];
    [placemark horizontalAccuracy];
  }

  v9 = v7;
LABEL_7:

  return v9;
}

- (id)location
{
  value = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(CLSClue *)self value];
  if (isKindOfClass)
  {
    v6 = objc_alloc(MEMORY[0x277CE41F8]);
    [value2 center];
    v8 = v7;
    v10 = v9;
    [value2 clsHorizontalAccuracy];
    v12 = v11;
    date = [MEMORY[0x277CBEAA8] date];
    value3 = [v6 initWithCoordinate:date altitude:v8 horizontalAccuracy:v10 verticalAccuracy:0.0 timestamp:{v12, 0.0}];
  }

  else
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      value3 = [(CLSClue *)self value];
      goto LABEL_7;
    }

    value2 = [(CLSInputLocationClue *)self placemark];
    value3 = [value2 location];
  }

LABEL_7:

  return value3;
}

- (id)regionInPlacemark
{
  v3 = objc_alloc(MEMORY[0x277CBFBC8]);
  placemark = [(CLSInputLocationClue *)self placemark];
  location = [placemark location];
  [location coordinate];
  v7 = v6;
  v9 = v8;
  placemark2 = [(CLSInputLocationClue *)self placemark];
  region = [placemark2 region];
  [region radius];
  v13 = v12;
  cls_generateUUID = [MEMORY[0x277CCACA8] cls_generateUUID];
  v15 = [v3 initWithCenter:cls_generateUUID radius:v7 identifier:{v9, v13}];

  return v15;
}

- (id)region
{
  value = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    value2 = [(CLSClue *)self value];
  }

  else
  {
    placemark = [(CLSInputLocationClue *)self placemark];
    value2 = [placemark region];
  }

  return value2;
}

- (id)placemark
{
  [(CLSInputClue *)self prepareIfNeeded];
  place = self->_place;

  return [(CLSPlace *)place placemark];
}

- (id)place
{
  [(CLSInputClue *)self prepareIfNeeded];
  place = self->_place;

  return place;
}

+ (id)cluesWithLocations:(id)locations locationCache:(id)cache
{
  v20 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  cacheCopy = cache;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = locationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [objc_opt_class() clueWithLocation:*(*(&v15 + 1) + 8 * i) locationCache:{cacheCopy, v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)clueWithLocation:(id)location locationCache:(id)cache
{
  cacheCopy = cache;
  locationCopy = location;
  v7 = [(CLSClue *)CLSInputLocationClue _clueWithValue:locationCopy forKey:@"Global Location"];
  v8 = v7[14];
  v7[14] = cacheCopy;
  v9 = cacheCopy;

  objc_opt_class();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  v10 = 0.9;
  if ((v9 & 1) == 0)
  {
    v10 = 1.0;
  }

  [v7 setConfidence:v10];

  return v7;
}

@end