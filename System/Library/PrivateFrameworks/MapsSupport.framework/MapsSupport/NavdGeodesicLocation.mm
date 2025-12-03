@interface NavdGeodesicLocation
- ($F24F406B2B787EFB06265DBA3D28CBD5)location;
- (NavdGeodesicLocation)initWithLocation:(id)location timeInterval:(double)interval;
- (double)distanceTo:(id)to;
@end

@implementation NavdGeodesicLocation

- (NavdGeodesicLocation)initWithLocation:(id)location timeInterval:(double)interval
{
  var1 = location.var1;
  var0 = location.var0;
  v8.receiver = self;
  v8.super_class = NavdGeodesicLocation;
  result = [(NavdGeodesicLocation *)&v8 init];
  if (result)
  {
    result->_location.latitude = var0;
    result->_location.longitude = var1;
    result->_timeInterval = interval;
  }

  return result;
}

- (double)distanceTo:(id)to
{
  latitude = self->_location.latitude;
  longitude = self->_location.longitude;
  GEOCalculateDistance();
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)location
{
  objc_copyStruct(v4, &self->_location, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end