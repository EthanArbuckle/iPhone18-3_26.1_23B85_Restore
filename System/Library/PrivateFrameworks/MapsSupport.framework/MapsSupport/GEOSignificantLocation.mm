@interface GEOSignificantLocation
+ (id)signifcantLocationWithAddressFromRTLocationOfInterest:(id)interest;
+ (id)significantLocationFromRTLocationOfInterest:(id)interest numberOfVisitsBucketSize:(unsigned int)size;
@end

@implementation GEOSignificantLocation

+ (id)significantLocationFromRTLocationOfInterest:(id)interest numberOfVisitsBucketSize:(unsigned int)size
{
  interestCopy = interest;
  v6 = objc_alloc_init(GEOSignificantLocation);
  v7 = [GEOLocation alloc];
  location = [interestCopy location];
  [location latitude];
  v10 = v9;
  location2 = [interestCopy location];
  [location2 longitude];
  v13 = [v7 initWithLatitude:v10 longitude:v12];

  location3 = [interestCopy location];
  [location3 horizontalUncertainty];
  [v13 setHorizontalAccuracy:?];

  [v6 setLocation:v13];
  identifier = [interestCopy identifier];
  uUIDString = [identifier UUIDString];
  [v6 setIdentifier:uUIDString];

  [interestCopy confidence];
  [v6 setConfidence:?];
  if (size)
  {
    visits = [interestCopy visits];
    LODWORD(v18) = vcvtmd_u64_f64([visits count] / size);
    [v6 setNumberOfVisitsBucket:v18];
  }

  return v6;
}

+ (id)signifcantLocationWithAddressFromRTLocationOfInterest:(id)interest
{
  interestCopy = interest;
  v5 = [self significantLocationFromRTLocationOfInterest:interestCopy numberOfVisitsBucketSize:1];
  [v5 setHasNumberOfVisitsBucket:0];
  v6 = [GEOStructuredAddress alloc];
  mapItem = [interestCopy mapItem];

  address = [mapItem address];
  v9 = [v6 initWithRTAddress:address];

  [v5 setAddress:v9];

  return v5;
}

@end