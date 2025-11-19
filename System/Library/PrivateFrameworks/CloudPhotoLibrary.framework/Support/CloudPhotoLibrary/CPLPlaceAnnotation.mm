@interface CPLPlaceAnnotation
+ (CPLPlaceAnnotation)placeAnnotationWithCPLPlaceAnnotationDictionary:(id)a3;
- (id)cplPlaceAnnotationDictionary;
@end

@implementation CPLPlaceAnnotation

+ (CPLPlaceAnnotation)placeAnnotationWithCPLPlaceAnnotationDictionary:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 cpl_validObjectForKey:@"level" class:objc_opt_class()];
    v5 = [v3 cpl_validObjectForKey:@"name" class:objc_opt_class()];

    if (v4 | v5)
    {
      v6 = objc_alloc_init(CPLPlaceAnnotation);
      [v6 setPlaceLevel:v4];
      [v6 setPlaceName:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cplPlaceAnnotationDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(CPLPlaceAnnotation *)self placeLevel];

  if (v4)
  {
    v5 = [(CPLPlaceAnnotation *)self placeLevel];
    [v3 setObject:v5 forKey:@"level"];
  }

  v6 = [(CPLPlaceAnnotation *)self placeName];

  if (v6)
  {
    v7 = [(CPLPlaceAnnotation *)self placeName];
    [v3 setObject:v7 forKey:@"name"];
  }

  return v3;
}

@end