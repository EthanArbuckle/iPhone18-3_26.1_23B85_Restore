@interface MNVehicleParkingInfo
- (MNVehicleParkingInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setRemainingWalkingRoute:(id)a3;
@end

@implementation MNVehicleParkingInfo

- (id)description
{
  parkingType = self->_parkingType;
  v3 = @"None";
  if (parkingType == 1)
  {
    v3 = @"Parked";
  }

  if (parkingType == 2)
  {
    v4 = @"SearchingForParking";
  }

  else
  {
    v4 = v3;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Type: %@, remaining walking route: %@", v4, self->_walkingRouteDisplayETAInfo];
}

- (MNVehicleParkingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MNVehicleParkingInfo *)self init];
  if (v5)
  {
    v5->_parkingType = [v4 decodeIntegerForKey:@"_parkingType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_walkingRouteDisplayETAInfo"];
    walkingRouteDisplayETAInfo = v5->_walkingRouteDisplayETAInfo;
    v5->_walkingRouteDisplayETAInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v8;

    v10 = v5->_routeID;
    if (v10)
    {
      v11 = MNGetRouteFromSubpathWithID(v10, 0, 0);
      remainingWalkingRoute = v5->_remainingWalkingRoute;
      v5->_remainingWalkingRoute = v11;
    }

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_parkingType forKey:@"_parkingType"];
  remainingWalkingRoute = self->_remainingWalkingRoute;
  if (remainingWalkingRoute)
  {
    MNSaveRouteWithSubpath(remainingWalkingRoute, 0, 1, 0);
    [v5 encodeObject:self->_routeID forKey:@"_routeID"];
  }

  [v5 encodeObject:self->_walkingRouteDisplayETAInfo forKey:@"_walkingRouteDisplayETAInfo"];
}

- (void)setRemainingWalkingRoute:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueRouteID];
  routeID = self->_routeID;
  self->_routeID = v5;

  remainingWalkingRoute = self->_remainingWalkingRoute;
  self->_remainingWalkingRoute = v4;
}

@end