@interface MNVehicleParkingInfo
- (MNVehicleParkingInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setRemainingWalkingRoute:(id)route;
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

- (MNVehicleParkingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MNVehicleParkingInfo *)self init];
  if (v5)
  {
    v5->_parkingType = [coderCopy decodeIntegerForKey:@"_parkingType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_walkingRouteDisplayETAInfo"];
    walkingRouteDisplayETAInfo = v5->_walkingRouteDisplayETAInfo;
    v5->_walkingRouteDisplayETAInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_parkingType forKey:@"_parkingType"];
  remainingWalkingRoute = self->_remainingWalkingRoute;
  if (remainingWalkingRoute)
  {
    MNSaveRouteWithSubpath(remainingWalkingRoute, 0, 1, 0);
    [coderCopy encodeObject:self->_routeID forKey:@"_routeID"];
  }

  [coderCopy encodeObject:self->_walkingRouteDisplayETAInfo forKey:@"_walkingRouteDisplayETAInfo"];
}

- (void)setRemainingWalkingRoute:(id)route
{
  routeCopy = route;
  uniqueRouteID = [routeCopy uniqueRouteID];
  routeID = self->_routeID;
  self->_routeID = uniqueRouteID;

  remainingWalkingRoute = self->_remainingWalkingRoute;
  self->_remainingWalkingRoute = routeCopy;
}

@end