@interface MNArrivalInfo
- (BOOL)isEqual:(id)equal;
- (MNArrivalInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNArrivalInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      arrivalState = self->_arrivalState;
      if (arrivalState == [(MNArrivalInfo *)v5 arrivalState]&& (legIndex = self->_legIndex, legIndex == [(MNArrivalInfo *)v5 legIndex]))
      {
        uniqueID = [(GEOComposedWaypoint *)self->_destination uniqueID];
        destination = [(MNArrivalInfo *)v5 destination];
        uniqueID2 = [destination uniqueID];
        v11 = uniqueID;
        v12 = uniqueID2;
        if (v11 | v12 && (v13 = [v11 isEqual:v12], v12, v11, !v13))
        {
          v16 = 0;
        }

        else
        {
          vehicleParkingInfo = self->_vehicleParkingInfo;
          vehicleParkingInfo = [(MNArrivalInfo *)v5 vehicleParkingInfo];
          if (vehicleParkingInfo | vehicleParkingInfo)
          {
            v16 = [(MNVehicleParkingInfo *)vehicleParkingInfo isEqual:vehicleParkingInfo];
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

- (MNArrivalInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MNArrivalInfo;
  v5 = [(MNArrivalInfo *)&v12 init];
  if (v5)
  {
    v5->_arrivalState = [coderCopy decodeIntegerForKey:@"_arrivalState"];
    v5->_legIndex = [coderCopy decodeIntegerForKey:@"_legIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_vehicleParkingInfo"];
    vehicleParkingInfo = v5->_vehicleParkingInfo;
    v5->_vehicleParkingInfo = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  arrivalState = self->_arrivalState;
  coderCopy = coder;
  [coderCopy encodeInteger:arrivalState forKey:@"_arrivalState"];
  [coderCopy encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [coderCopy encodeObject:self->_destination forKey:@"_destination"];
  [coderCopy encodeObject:self->_vehicleParkingInfo forKey:@"_vehicleParkingInfo"];
}

- (id)description
{
  array = [MEMORY[0x1E695DF70] array];
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
  [array addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"legIndex: %d", self->_legIndex];
  [array addObject:v7];

  vehicleParkingInfo = self->_vehicleParkingInfo;
  if (vehicleParkingInfo)
  {
    v9 = [(MNVehicleParkingInfo *)vehicleParkingInfo description];
    [array addObject:v9];
  }

  v10 = [array componentsJoinedByString:{@", "}];

  return v10;
}

@end