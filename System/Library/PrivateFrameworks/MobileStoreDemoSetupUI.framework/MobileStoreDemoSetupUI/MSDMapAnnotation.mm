@interface MSDMapAnnotation
- (BOOL)isSameLocation:(id)location;
- (CLLocationCoordinate2D)coordinate;
- (MSDMapAnnotation)initWithStoreInfo:(id)info;
@end

@implementation MSDMapAnnotation

- (MSDMapAnnotation)initWithStoreInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = MSDMapAnnotation;
  v6 = [(MSDMapAnnotation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeInfo, info);
    storeName = [infoCopy storeName];
    title = v7->_title;
    v7->_title = storeName;

    storeLocation = [infoCopy storeLocation];
    [storeLocation coordinate];
    v7->_coordinate.latitude = v11;
    v7->_coordinate.longitude = v12;
  }

  return v7;
}

- (BOOL)isSameLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = locationCopy;
    storeInfo = [(MSDMapAnnotation *)self storeInfo];
    storeLocation = [storeInfo storeLocation];
    [storeLocation coordinate];
    v9 = v8;
    storeInfo2 = [v5 storeInfo];
    storeLocation2 = [storeInfo2 storeLocation];
    [storeLocation2 coordinate];
    if (v9 == v12)
    {
      storeInfo3 = [(MSDMapAnnotation *)self storeInfo];
      storeLocation3 = [storeInfo3 storeLocation];
      [storeLocation3 coordinate];
      v15 = v14;
      storeInfo4 = [v5 storeInfo];
      [storeInfo4 storeLocation];
      v17 = storeLocation;
      v19 = v18 = storeInfo;
      [v19 coordinate];
      v21 = v15 == v20;

      storeInfo = v18;
      storeLocation = v17;
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