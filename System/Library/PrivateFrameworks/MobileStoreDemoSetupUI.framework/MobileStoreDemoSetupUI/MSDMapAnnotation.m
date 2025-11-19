@interface MSDMapAnnotation
- (BOOL)isSameLocation:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (MSDMapAnnotation)initWithStoreInfo:(id)a3;
@end

@implementation MSDMapAnnotation

- (MSDMapAnnotation)initWithStoreInfo:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MSDMapAnnotation;
  v6 = [(MSDMapAnnotation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeInfo, a3);
    v8 = [v5 storeName];
    title = v7->_title;
    v7->_title = v8;

    v10 = [v5 storeLocation];
    [v10 coordinate];
    v7->_coordinate.latitude = v11;
    v7->_coordinate.longitude = v12;
  }

  return v7;
}

- (BOOL)isSameLocation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MSDMapAnnotation *)self storeInfo];
    v7 = [v6 storeLocation];
    [v7 coordinate];
    v9 = v8;
    v10 = [v5 storeInfo];
    v11 = [v10 storeLocation];
    [v11 coordinate];
    if (v9 == v12)
    {
      v23 = [(MSDMapAnnotation *)self storeInfo];
      v13 = [v23 storeLocation];
      [v13 coordinate];
      v15 = v14;
      v16 = [v5 storeInfo];
      [v16 storeLocation];
      v17 = v7;
      v19 = v18 = v6;
      [v19 coordinate];
      v21 = v15 == v20;

      v6 = v18;
      v7 = v17;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end