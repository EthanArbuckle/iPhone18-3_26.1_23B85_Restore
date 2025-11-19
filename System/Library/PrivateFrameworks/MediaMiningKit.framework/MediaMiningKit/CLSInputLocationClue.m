@interface CLSInputLocationClue
+ (id)clueWithLocation:(id)a3 locationCache:(id)a4;
+ (id)cluesWithLocations:(id)a3 locationCache:(id)a4;
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
- (void)_prepareWithProgressBlock:(id)a3;
@end

@implementation CLSInputLocationClue

- (void)_prepareWithProgressBlock:(id)a3
{
  v4 = a3;
  if (!self->_locationCache)
  {
    __assert_rtn("[CLSInputLocationClue _prepareWithProgressBlock:]", "CLSClue.m", 870, "_locationCache != nil");
  }

  v22 = v4;
  v5 = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [CLSPlace alloc];
    v8 = [(CLSClue *)self value];
    v9 = [(CLSPlace *)v7 initWithPlacemark:v8];
    place = self->_place;
    self->_place = v9;
  }

  else
  {
    v11 = [(CLSClue *)self value];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      locationCache = self->_locationCache;
      v14 = [(CLSClue *)self value];
      v8 = [(CLSLocationCache *)locationCache placemarksForLocation:v14];

      place = [v8 firstObject];
      v15 = [[CLSPlace alloc] initWithPlacemark:place];
      v16 = self->_place;
      self->_place = v15;
    }

    else
    {
      v17 = [(CLSClue *)self value];
      v8 = [CLSCachedGeocoderOperation operationWithLocation:v17];

      v18 = [v8 performSynchronouslyWithLocationCache:self->_locationCache error:0];
      place = v18;
      if (v18)
      {
        v19 = [v18 firstObject];
        v20 = [[CLSPlace alloc] initWithPlacemark:v19];
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

  v6 = [(CLSClue *)self value];
  [v5 appendFormat:@"\n\tvalue:[%@]", v6];

  [v5 appendFormat:@"\n\tisDefinite:[%d]", -[CLSInputLocationClue isDefinite](self, "isDefinite")];
  v7 = [(CLSInputLocationClue *)self location];
  [v5 appendFormat:@"\n\tlocation:[%@]", v7];

  v8 = [(CLSInputLocationClue *)self region];
  [v5 appendFormat:@"\n\tregion:[%@]", v8];

  v9 = [(CLSInputLocationClue *)self regionInPlacemark];
  [v5 appendFormat:@"\n\tregionInPlacemark:[%@]", v9];

  v10 = [(CLSInputLocationClue *)self placemark];
  v11 = v10;
  if (v10)
  {
    v25 = [v10 location];
    v28 = [v11 region];
    v24 = [v11 thoroughfare];
    v27 = [v11 subThoroughfare];
    v23 = [v11 locality];
    v26 = [v11 subLocality];
    v21 = [v11 administrativeArea];
    v20 = [v11 subAdministrativeArea];
    v12 = [v11 ISOcountryCode];
    v19 = [v11 inlandWater];
    v13 = [v11 ocean];
    v22 = [v11 areasOfInterest];
    v14 = [v22 flattenWithSeparator:{@", "}];
    v15 = [v11 location];
    v16 = [(CLSInputLocationClue *)self location];
    [v15 distanceFromLocation:v16];
    [v5 appendFormat:@"\n\tplacemark:\n\t\tlocation:[%@]\n\t\tregion:[%@]\n\t\t thoroughfare:[%@] subThoroughfare:[%@] locality:[%@] subLocality:[%@]\n\t\tadministrativeArea:[%@] subAdministrativeArea:[%@] ISOcountryCode:[%@]\n\t\tinlandWater:[%@] ocean:[%@] areasOfInterest:[%@]\n\tdistanceDifference:[%lf]", v25, v28, v24, v27, v23, v26, v21, v20, v12, v19, v13, v14, v17];
  }

  return v5;
}

- (BOOL)isDefinite
{
  v3 = [(CLSInputLocationClue *)self region];
  [v3 radius];
  if (v4 <= 20.0)
  {
    v12 = 1;
  }

  else
  {
    v5 = [(CLSInputLocationClue *)self location];
    v6 = [(CLSInputLocationClue *)self placemark];
    v7 = [v6 location];
    [v5 distanceFromLocation:v7];
    if (v8 >= 0.01)
    {
      v12 = 0;
    }

    else
    {
      v9 = [(CLSInputLocationClue *)self placemark];
      v10 = [v9 region];
      [v10 radius];
      v12 = v11 <= 100.0;
    }
  }

  return v12;
}

- (CLLocationCoordinate2D)closestCoordinates
{
  v3 = [(CLSInputLocationClue *)self location];
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = [(CLSInputLocationClue *)self projectedLocation];
  v9 = [(CLSInputLocationClue *)self location];
  [v8 distanceFromLocation:v9];
  v11 = v10;

  if (v11 <= 15.0)
  {
    v12 = [(CLSInputLocationClue *)self projectedLocation];
    [v12 coordinate];
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
  v2 = [(CLSInputLocationClue *)self placemark];
  v3 = [v2 location];

  return v3;
}

- (double)gpsHorizontalAccuracy
{
  v3 = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(CLSClue *)self value];
  v6 = v5;
  if (isKindOfClass)
  {
    [v5 clsHorizontalAccuracy];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      v6 = [(CLSInputLocationClue *)self placemark];
      v10 = [v6 location];
      [v10 horizontalAccuracy];
      v9 = v11;

      goto LABEL_7;
    }

    v6 = [(CLSClue *)self value];
    [v6 horizontalAccuracy];
  }

  v9 = v7;
LABEL_7:

  return v9;
}

- (id)location
{
  v3 = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(CLSClue *)self value];
  if (isKindOfClass)
  {
    v6 = objc_alloc(MEMORY[0x277CE41F8]);
    [v5 center];
    v8 = v7;
    v10 = v9;
    [v5 clsHorizontalAccuracy];
    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [v6 initWithCoordinate:v13 altitude:v8 horizontalAccuracy:v10 verticalAccuracy:0.0 timestamp:{v12, 0.0}];
  }

  else
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      v14 = [(CLSClue *)self value];
      goto LABEL_7;
    }

    v5 = [(CLSInputLocationClue *)self placemark];
    v14 = [v5 location];
  }

LABEL_7:

  return v14;
}

- (id)regionInPlacemark
{
  v3 = objc_alloc(MEMORY[0x277CBFBC8]);
  v4 = [(CLSInputLocationClue *)self placemark];
  v5 = [v4 location];
  [v5 coordinate];
  v7 = v6;
  v9 = v8;
  v10 = [(CLSInputLocationClue *)self placemark];
  v11 = [v10 region];
  [v11 radius];
  v13 = v12;
  v14 = [MEMORY[0x277CCACA8] cls_generateUUID];
  v15 = [v3 initWithCenter:v14 radius:v7 identifier:{v9, v13}];

  return v15;
}

- (id)region
{
  v3 = [(CLSClue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CLSClue *)self value];
  }

  else
  {
    v6 = [(CLSInputLocationClue *)self placemark];
    v5 = [v6 region];
  }

  return v5;
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

+ (id)cluesWithLocations:(id)a3 locationCache:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
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

        v13 = [objc_opt_class() clueWithLocation:*(*(&v15 + 1) + 8 * i) locationCache:{v6, v15}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)clueWithLocation:(id)a3 locationCache:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(CLSClue *)CLSInputLocationClue _clueWithValue:v6 forKey:@"Global Location"];
  v8 = v7[14];
  v7[14] = v5;
  v9 = v5;

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