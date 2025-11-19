@interface MNRouteDivergenceResult
- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate;
- (MNRouteDivergenceResult)init;
- (id)description;
@end

@implementation MNRouteDivergenceResult

- ($1AB5FA073B851C12C2339EC22442E995)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  altitude = self->_locationCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  routeCoordinate = self->_routeCoordinate;
  v5 = GEOPolylineCoordinateAsString();
  v6 = v5;
  routeID = self->_routeID;
  resultType = self->_resultType;
  v9 = @"None";
  if (resultType == 1)
  {
    v9 = @"Divergence";
  }

  if (resultType == 2)
  {
    v10 = @"Convergence";
  }

  else
  {
    v10 = v9;
  }

  v11 = [v3 stringWithFormat:@"%@ (%f, %f) | %@ | %@", v5, *&self->_locationCoordinate.latitude, *&self->_locationCoordinate.longitude, self->_routeID, v10];

  return v11;
}

- (MNRouteDivergenceResult)init
{
  v3.receiver = self;
  v3.super_class = MNRouteDivergenceResult;
  result = [(MNRouteDivergenceResult *)&v3 init];
  if (result)
  {
    result->_routeCoordinate = *MEMORY[0x1E69A1918];
  }

  return result;
}

@end