@interface CPLPlaceAnnotation
+ (CPLPlaceAnnotation)placeAnnotationWithCPLPlaceAnnotationDictionary:(id)dictionary;
- (id)cplPlaceAnnotationDictionary;
@end

@implementation CPLPlaceAnnotation

+ (CPLPlaceAnnotation)placeAnnotationWithCPLPlaceAnnotationDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v4 = [dictionaryCopy cpl_validObjectForKey:@"level" class:objc_opt_class()];
    v5 = [dictionaryCopy cpl_validObjectForKey:@"name" class:objc_opt_class()];

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
  placeLevel = [(CPLPlaceAnnotation *)self placeLevel];

  if (placeLevel)
  {
    placeLevel2 = [(CPLPlaceAnnotation *)self placeLevel];
    [v3 setObject:placeLevel2 forKey:@"level"];
  }

  placeName = [(CPLPlaceAnnotation *)self placeName];

  if (placeName)
  {
    placeName2 = [(CPLPlaceAnnotation *)self placeName];
    [v3 setObject:placeName2 forKey:@"name"];
  }

  return v3;
}

@end