@interface MNBatteryChargeInfo
- (BOOL)isEqual:(id)a3;
- (MNBatteryChargeInfo)init;
- (MNBatteryChargeInfo)initWithBatteryChargeRemainingAtEndOfLeg:(double)a3 batteryChargeRemainingAtEndOfRoute:(double)a4 forLegIndex:(unint64_t)a5 forRouteID:(id)a6;
- (MNBatteryChargeInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNBatteryChargeInfo

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
      if (self->_batteryChargeRemainingAtEndOfLeg == v5->_batteryChargeRemainingAtEndOfLeg && self->_batteryChargeRemainingAtEndOfRoute == v5->_batteryChargeRemainingAtEndOfRoute && self->_legIndex == v5->_legIndex)
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
  batteryChargeRemainingAtEndOfLeg = self->_batteryChargeRemainingAtEndOfLeg;
  v5 = a3;
  [v5 encodeDouble:@"_batteryChargeRemainingAtEndOfLeg" forKey:batteryChargeRemainingAtEndOfLeg];
  [v5 encodeDouble:@"_batteryChargeRemainingAtEndOfRoute" forKey:self->_batteryChargeRemainingAtEndOfRoute];
  [v5 encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [v5 encodeObject:self->_routeID forKey:@"_routeID"];
}

- (MNBatteryChargeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"_batteryChargeRemainingAtEndOfLeg"];
  v6 = v5;
  self->_batteryChargeRemainingAtEndOfLeg = v5;
  [v4 decodeDoubleForKey:@"_batteryChargeRemainingAtEndOfRoute"];
  v8 = v7;
  self->_batteryChargeRemainingAtEndOfRoute = v7;
  v9 = [v4 decodeIntegerForKey:@"_legIndex"];
  self->_legIndex = v9;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];

  routeID = self->_routeID;
  self->_routeID = v10;

  return [(MNBatteryChargeInfo *)self initWithBatteryChargeRemainingAtEndOfLeg:v9 batteryChargeRemainingAtEndOfRoute:v10 forLegIndex:v6 forRouteID:v8];
}

- (MNBatteryChargeInfo)initWithBatteryChargeRemainingAtEndOfLeg:(double)a3 batteryChargeRemainingAtEndOfRoute:(double)a4 forLegIndex:(unint64_t)a5 forRouteID:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = MNBatteryChargeInfo;
  v12 = [(MNBatteryChargeInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_batteryChargeRemainingAtEndOfLeg = a3;
    v12->_batteryChargeRemainingAtEndOfRoute = a4;
    v12->_legIndex = a5;
    objc_storeStrong(&v12->_routeID, a6);
  }

  return v13;
}

- (MNBatteryChargeInfo)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end