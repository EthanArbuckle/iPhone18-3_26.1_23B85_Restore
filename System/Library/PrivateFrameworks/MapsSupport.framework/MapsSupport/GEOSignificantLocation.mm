@interface GEOSignificantLocation
+ (id)signifcantLocationWithAddressFromRTLocationOfInterest:(id)a3;
+ (id)significantLocationFromRTLocationOfInterest:(id)a3 numberOfVisitsBucketSize:(unsigned int)a4;
@end

@implementation GEOSignificantLocation

+ (id)significantLocationFromRTLocationOfInterest:(id)a3 numberOfVisitsBucketSize:(unsigned int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(GEOSignificantLocation);
  v7 = [GEOLocation alloc];
  v8 = [v5 location];
  [v8 latitude];
  v10 = v9;
  v11 = [v5 location];
  [v11 longitude];
  v13 = [v7 initWithLatitude:v10 longitude:v12];

  v14 = [v5 location];
  [v14 horizontalUncertainty];
  [v13 setHorizontalAccuracy:?];

  [v6 setLocation:v13];
  v15 = [v5 identifier];
  v16 = [v15 UUIDString];
  [v6 setIdentifier:v16];

  [v5 confidence];
  [v6 setConfidence:?];
  if (a4)
  {
    v17 = [v5 visits];
    LODWORD(v18) = vcvtmd_u64_f64([v17 count] / a4);
    [v6 setNumberOfVisitsBucket:v18];
  }

  return v6;
}

+ (id)signifcantLocationWithAddressFromRTLocationOfInterest:(id)a3
{
  v4 = a3;
  v5 = [a1 significantLocationFromRTLocationOfInterest:v4 numberOfVisitsBucketSize:1];
  [v5 setHasNumberOfVisitsBucket:0];
  v6 = [GEOStructuredAddress alloc];
  v7 = [v4 mapItem];

  v8 = [v7 address];
  v9 = [v6 initWithRTAddress:v8];

  [v5 setAddress:v9];

  return v5;
}

@end