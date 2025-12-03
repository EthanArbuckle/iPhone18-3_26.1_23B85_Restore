@interface MNRouteDistanceInfo
- (BOOL)isEqual:(id)equal;
- (MNRouteDistanceInfo)init;
- (MNRouteDistanceInfo)initWithCoder:(id)coder;
- (MNRouteDistanceInfo)initWithDistanceRemainingToEndOfLeg:(double)leg distanceRemainingToEndOfRoute:(double)route forLegIndex:(unint64_t)index forRouteID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNRouteDistanceInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_distanceRemainingToEndOfLeg == v5->_distanceRemainingToEndOfLeg && self->_distanceRemainingToEndOfRoute == v5->_distanceRemainingToEndOfRoute && self->_legIndex == v5->_legIndex)
      {
        routeID = self->_routeID;
        v8 = v5->_routeID;
        v9 = routeID;
        v10 = v9;
        if (v9 | v8)
        {
          v11 = [v9 isEqual:v8];
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  distanceRemainingToEndOfLeg = self->_distanceRemainingToEndOfLeg;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_distanceRemainingToEndOfLeg" forKey:distanceRemainingToEndOfLeg];
  [coderCopy encodeDouble:@"_distanceRemainingToEndOfRoute" forKey:self->_distanceRemainingToEndOfRoute];
  [coderCopy encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [coderCopy encodeObject:self->_routeID forKey:@"_routeID"];
}

- (MNRouteDistanceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MNRouteDistanceInfo *)self initWithDistanceRemainingToEndOfLeg:0 distanceRemainingToEndOfRoute:0 forLegIndex:0.0 forRouteID:0.0];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_distanceRemainingToEndOfLeg"];
    v5->_distanceRemainingToEndOfLeg = v6;
    [coderCopy decodeDoubleForKey:@"_distanceRemainingToEndOfRoute"];
    v5->_distanceRemainingToEndOfRoute = v7;
    v5->_legIndex = [coderCopy decodeIntegerForKey:@"_legIndex"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v8;
  }

  return v5;
}

- (MNRouteDistanceInfo)initWithDistanceRemainingToEndOfLeg:(double)leg distanceRemainingToEndOfRoute:(double)route forLegIndex:(unint64_t)index forRouteID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = MNRouteDistanceInfo;
  v12 = [(MNRouteDistanceInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_distanceRemainingToEndOfLeg = leg;
    v12->_distanceRemainingToEndOfRoute = route;
    v12->_legIndex = index;
    objc_storeStrong(&v12->_routeID, d);
  }

  return v13;
}

- (MNRouteDistanceInfo)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end