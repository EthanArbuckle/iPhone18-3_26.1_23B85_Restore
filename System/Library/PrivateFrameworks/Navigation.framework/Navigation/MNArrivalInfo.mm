@interface MNArrivalInfo
- (BOOL)isEqual:(id)a3;
- (MNArrivalInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNArrivalInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      arrivalState = self->_arrivalState;
      if (arrivalState == [(MNArrivalInfo *)v5 arrivalState]&& (legIndex = self->_legIndex, legIndex == [(MNArrivalInfo *)v5 legIndex]))
      {
        v8 = [(GEOComposedWaypoint *)self->_destination uniqueID];
        v9 = [(MNArrivalInfo *)v5 destination];
        v10 = [v9 uniqueID];
        v11 = v8;
        v12 = v10;
        if (v11 | v12 && (v13 = [v11 isEqual:v12], v12, v11, !v13))
        {
          v16 = 0;
        }

        else
        {
          vehicleParkingInfo = self->_vehicleParkingInfo;
          v15 = [(MNArrivalInfo *)v5 vehicleParkingInfo];
          if (vehicleParkingInfo | v15)
          {
            v16 = [(MNVehicleParkingInfo *)vehicleParkingInfo isEqual:v15];
          }

          else
          {
            v16 = 1;
          }
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (MNArrivalInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MNArrivalInfo;
  v5 = [(MNArrivalInfo *)&v12 init];
  if (v5)
  {
    v5->_arrivalState = [v4 decodeIntegerForKey:@"_arrivalState"];
    v5->_legIndex = [v4 decodeIntegerForKey:@"_legIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_vehicleParkingInfo"];
    vehicleParkingInfo = v5->_vehicleParkingInfo;
    v5->_vehicleParkingInfo = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  arrivalState = self->_arrivalState;
  v5 = a3;
  [v5 encodeInteger:arrivalState forKey:@"_arrivalState"];
  [v5 encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [v5 encodeObject:self->_destination forKey:@"_destination"];
  [v5 encodeObject:self->_vehicleParkingInfo forKey:@"_vehicleParkingInfo"];
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  arrivalState = self->_arrivalState;
  if (arrivalState > 6)
  {
    v5 = @"MNArrivalState_Unknown";
  }

  else
  {
    v5 = off_1E842BE70[arrivalState];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MNArrivalInfo: %@", v5];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legIndex: %d", self->_legIndex];
  [v3 addObject:v7];

  vehicleParkingInfo = self->_vehicleParkingInfo;
  if (vehicleParkingInfo)
  {
    v9 = [(MNVehicleParkingInfo *)vehicleParkingInfo description];
    [v3 addObject:v9];
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

@end