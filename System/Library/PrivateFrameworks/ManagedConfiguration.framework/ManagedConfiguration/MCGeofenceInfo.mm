@interface MCGeofenceInfo
+ (id)geofenceWithID:(id)a3 latitude:(id)a4 longitude:(id)a5 radius:(id)a6;
- (id)description;
@end

@implementation MCGeofenceInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  if (self->_longitude)
  {
    [v3 appendFormat:@"Longitude : %@\n", self->_longitude];
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

+ (id)geofenceWithID:(id)a3 latitude:(id)a4 longitude:(id)a5 radius:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setLatitude:v11];

  [v13 setLongitude:v10];
  [v13 setRadius:v9];

  [v13 setGeofenceId:v12];

  return v13;
}

@end