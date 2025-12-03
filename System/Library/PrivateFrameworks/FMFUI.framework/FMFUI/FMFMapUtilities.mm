@interface FMFMapUtilities
+ ($5934897077F541E2EA57917B1DCA15E9)regionForAnnotations:(SEL)annotations;
+ ($7A2C3A43EE5A76686BB0A44688CCB5FC)mapRectForCoordinateRegion:(id *)region;
+ (BOOL)doNotAnimateToNewLocation:(CLLocationCoordinate2D)location forMapView:(id)view;
@end

@implementation FMFMapUtilities

+ ($5934897077F541E2EA57917B1DCA15E9)regionForAnnotations:(SEL)annotations
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = -90.0;
    v9 = 180.0;
    v10 = 90.0;
    v11 = -180.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 coordinate];
        v9 = fmin(v9, v14);
        [v13 coordinate];
        v8 = fmax(v8, v15);
        [v13 coordinate];
        v11 = fmax(v11, v16);
        [v13 coordinate];
        v10 = fmin(v10, v17);
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

+ ($7A2C3A43EE5A76686BB0A44688CCB5FC)mapRectForCoordinateRegion:(id *)region
{
  v7 = v4;
  v8 = v3;
  v9 = v5 * 0.5;
  v10 = v6 * 0.5;
  v17 = CLLocationCoordinate2DMake(v3 + v5 * 0.5, v4 - v6 * 0.5);
  v11 = MKMapPointForCoordinate(v17);
  v18 = CLLocationCoordinate2DMake(v8 - v9, v7 + v10);
  v12 = MKMapPointForCoordinate(v18);
  v13 = vabdd_f64(v12.x, v11.x);
  v14 = vabdd_f64(v12.y, v11.y);
  x = v11.x;
  y = v11.y;
  result.var1.var1 = v14;
  result.var1.var0 = v13;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

+ (BOOL)doNotAnimateToNewLocation:(CLLocationCoordinate2D)location forMapView:(id)view
{
  longitude = location.longitude;
  latitude = location.latitude;
  v6 = MEMORY[0x277CE41F8];
  viewCopy = view;
  v8 = [[v6 alloc] initWithLatitude:latitude longitude:longitude];
  v9 = objc_alloc(MEMORY[0x277CE41F8]);
  [viewCopy centerCoordinate];
  v11 = v10;
  [viewCopy centerCoordinate];
  v13 = v12;

  v14 = [v9 initWithLatitude:v11 longitude:v13];
  [v14 distanceFromLocation:v8];
  LOBYTE(v9) = v15 > 637300.0;

  return v9;
}

@end