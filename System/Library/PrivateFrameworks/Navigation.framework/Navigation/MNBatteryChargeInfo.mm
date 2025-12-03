@interface MNBatteryChargeInfo
- (BOOL)isEqual:(id)equal;
- (MNBatteryChargeInfo)init;
- (MNBatteryChargeInfo)initWithBatteryChargeRemainingAtEndOfLeg:(double)leg batteryChargeRemainingAtEndOfRoute:(double)route forLegIndex:(unint64_t)index forRouteID:(id)d;
- (MNBatteryChargeInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNBatteryChargeInfo

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

- (void)encodeWithCoder:(id)coder
{
  batteryChargeRemainingAtEndOfLeg = self->_batteryChargeRemainingAtEndOfLeg;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_batteryChargeRemainingAtEndOfLeg" forKey:batteryChargeRemainingAtEndOfLeg];
  [coderCopy encodeDouble:@"_batteryChargeRemainingAtEndOfRoute" forKey:self->_batteryChargeRemainingAtEndOfRoute];
  [coderCopy encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [coderCopy encodeObject:self->_routeID forKey:@"_routeID"];
}

- (MNBatteryChargeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"_batteryChargeRemainingAtEndOfLeg"];
  v6 = v5;
  self->_batteryChargeRemainingAtEndOfLeg = v5;
  [coderCopy decodeDoubleForKey:@"_batteryChargeRemainingAtEndOfRoute"];
  v8 = v7;
  self->_batteryChargeRemainingAtEndOfRoute = v7;
  v9 = [coderCopy decodeIntegerForKey:@"_legIndex"];
  self->_legIndex = v9;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeID"];

  routeID = self->_routeID;
  self->_routeID = v10;

  return [(MNBatteryChargeInfo *)self initWithBatteryChargeRemainingAtEndOfLeg:v9 batteryChargeRemainingAtEndOfRoute:v10 forLegIndex:v6 forRouteID:v8];
}

- (MNBatteryChargeInfo)initWithBatteryChargeRemainingAtEndOfLeg:(double)leg batteryChargeRemainingAtEndOfRoute:(double)route forLegIndex:(unint64_t)index forRouteID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = MNBatteryChargeInfo;
  v12 = [(MNBatteryChargeInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_batteryChargeRemainingAtEndOfLeg = leg;
    v12->_batteryChargeRemainingAtEndOfRoute = route;
    v12->_legIndex = index;
    objc_storeStrong(&v12->_routeID, d);
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