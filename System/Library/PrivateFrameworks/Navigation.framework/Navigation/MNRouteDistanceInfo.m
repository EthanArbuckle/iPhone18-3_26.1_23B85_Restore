@interface MNRouteDistanceInfo
- (BOOL)isEqual:(id)a3;
- (MNRouteDistanceInfo)init;
- (MNRouteDistanceInfo)initWithCoder:(id)a3;
- (MNRouteDistanceInfo)initWithDistanceRemainingToEndOfLeg:(double)a3 distanceRemainingToEndOfRoute:(double)a4 forLegIndex:(unint64_t)a5 forRouteID:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNRouteDistanceInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  distanceRemainingToEndOfLeg = self->_distanceRemainingToEndOfLeg;
  v5 = a3;
  [v5 encodeDouble:@"_distanceRemainingToEndOfLeg" forKey:distanceRemainingToEndOfLeg];
  [v5 encodeDouble:@"_distanceRemainingToEndOfRoute" forKey:self->_distanceRemainingToEndOfRoute];
  [v5 encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [v5 encodeObject:self->_routeID forKey:@"_routeID"];
}

- (MNRouteDistanceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MNRouteDistanceInfo *)self initWithDistanceRemainingToEndOfLeg:0 distanceRemainingToEndOfRoute:0 forLegIndex:0.0 forRouteID:0.0];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_distanceRemainingToEndOfLeg"];
    v5->_distanceRemainingToEndOfLeg = v6;
    [v4 decodeDoubleForKey:@"_distanceRemainingToEndOfRoute"];
    v5->_distanceRemainingToEndOfRoute = v7;
    v5->_legIndex = [v4 decodeIntegerForKey:@"_legIndex"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];
    routeID = v5->_routeID;
    v5->_routeID = v8;
  }

  return v5;
}

- (MNRouteDistanceInfo)initWithDistanceRemainingToEndOfLeg:(double)a3 distanceRemainingToEndOfRoute:(double)a4 forLegIndex:(unint64_t)a5 forRouteID:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = MNRouteDistanceInfo;
  v12 = [(MNRouteDistanceInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_distanceRemainingToEndOfLeg = a3;
    v12->_distanceRemainingToEndOfRoute = a4;
    v12->_legIndex = a5;
    objc_storeStrong(&v12->_routeID, a6);
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