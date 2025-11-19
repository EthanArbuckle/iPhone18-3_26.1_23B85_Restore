@interface NavdOffRouteInfo
- (NavdOffRouteInfo)initWithCurrentDate:(id)a3 location:(id)a4 destination:(id)a5;
- (id)description;
- (void)updateWithCurrentDate:(id)a3 location:(id)a4 isMostRecentReroute:(BOOL)a5 throttledReroutesCount:(unint64_t)a6;
@end

@implementation NavdOffRouteInfo

- (id)description
{
  v3 = [NSMutableString alloc];
  destinationCoordinate = self->_destinationCoordinate;
  v5 = [v3 initWithFormat:@"Date: %@\r\nLast Update: %@\r\nCoordinates: <%.6f, %.6f>\r\nDistance To Destination: %f\r\n DistancePenalty: %f, Throttled reroutes Penalty: %f\r\nPenalty: %f", self->_date, self->_lastUpdate, *&self->_destinationCoordinate.latitude, *&self->_destinationCoordinate.longitude, *&self->_originalDistanceFromDestination, *&self->_distancePenalty, *&self->_throttledReroutesPenalty, *&self->_penalty];

  return v5;
}

- (NavdOffRouteInfo)initWithCurrentDate:(id)a3 location:(id)a4 destination:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = NavdOffRouteInfo;
  v10 = [(NavdOffRouteInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_date, a3);
    v11->_destinationCoordinate.latitude = var0;
    v11->_destinationCoordinate.longitude = var1;
    GEOCalculateDistance();
    v11->_originalDistanceFromDestination = v12;
  }

  return v11;
}

- (void)updateWithCurrentDate:(id)a3 location:(id)a4 isMostRecentReroute:(BOOL)a5 throttledReroutesCount:(unint64_t)a6
{
  v7 = a5;
  v32 = a3;
  objc_storeStrong(&self->_lastUpdate, a3);
  if (v7)
  {
    latitude = self->_destinationCoordinate.latitude;
    longitude = self->_destinationCoordinate.longitude;
    GEOCalculateDistance();
    v13 = v12;
    originalDistanceFromDestination = self->_originalDistanceFromDestination;
    self->_distancePenalty = 0.0;
    GEOConfigGetDouble();
    v15 = v13 - originalDistanceFromDestination;
    if (v15 > v16)
    {
      GEOConfigGetDouble();
      v18 = v17;
      GEOConfigGetDouble();
      self->_distancePenalty = v19 * (v15 - v18);
    }

    GEOConfigGetDouble();
    self->_throttledReroutesPenalty = v20 - pow((a6 + 1), -0.7) * v20;
  }

  [v32 timeIntervalSinceDate:self->_date];
  v22 = v21;
  GEOConfigGetDouble();
  v24 = v23;
  GEOConfigGetDouble();
  v26 = v25;
  GEOConfigGetDouble();
  v28 = v27;
  GEOConfigGetDouble();
  v29 = self->_distancePenalty + self->_throttledReroutesPenalty;
  v31 = fmin(fmax((v22 - v24) / (v26 - v28), 0.0), 1.0);
  self->_penalty = v29 + v30 - (v29 + v30) * v31;
}

@end