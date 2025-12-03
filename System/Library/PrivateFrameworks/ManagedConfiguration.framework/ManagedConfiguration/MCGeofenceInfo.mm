@interface MCGeofenceInfo
+ (id)geofenceWithID:(id)d latitude:(id)latitude longitude:(id)longitude radius:(id)radius;
- (id)description;
@end

@implementation MCGeofenceInfo

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = string;
  if (self->_longitude)
  {
    [string appendFormat:@"Longitude : %@\n", self->_longitude];
  }

  if (self->_latitude)
  {
    [v4 appendFormat:@"Latitude  : %@\n", self->_latitude];
  }

  if (self->_radius)
  {
    [v4 appendFormat:@"Radius    : %@\n", self->_radius];
  }

  if (self->_geofenceId)
  {
    [v4 appendFormat:@"Id        : %@\n", self->_geofenceId];
  }

  return v4;
}

+ (id)geofenceWithID:(id)d latitude:(id)latitude longitude:(id)longitude radius:(id)radius
{
  radiusCopy = radius;
  longitudeCopy = longitude;
  latitudeCopy = latitude;
  dCopy = d;
  v13 = objc_opt_new();
  [v13 setLatitude:latitudeCopy];

  [v13 setLongitude:longitudeCopy];
  [v13 setRadius:radiusCopy];

  [v13 setGeofenceId:dCopy];

  return v13;
}

@end