@interface MNDisplayETALegInfo
- (BOOL)isEqual:(id)a3;
- (MNDisplayETALegInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNDisplayETALegInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  legIndex = self->_legIndex;
  v5 = +[MNDisplayETAInfo dateFormatter];
  v6 = [v5 stringFromDate:self->_eta];
  remainingMinutes = self->_remainingMinutes;
  v8 = [v3 stringWithFormat:@"[%d]: %@ / %d min | %@", legIndex, v6, remainingMinutes, self->_waypointID];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSUUID *)self->_waypointID isEqual:v5[1]]&& self->_legIndex == v5[2] && self->_remainingMinutes == v5[3] && [MNDisplayETAInfo isDisplayDate:self->_eta equalTo:v5[4]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  waypointID = self->_waypointID;
  v5 = a3;
  [v5 encodeObject:waypointID forKey:@"_waypointID"];
  [v5 encodeInteger:self->_legIndex forKey:@"_legIndex"];
  [v5 encodeInteger:self->_remainingMinutes forKey:@"_remainingMinutes"];
  [v5 encodeObject:self->_eta forKey:@"_eta"];
  [v5 encodeObject:self->_timeZone forKey:@"_timeZone"];
}

- (MNDisplayETALegInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MNDisplayETALegInfo;
  v5 = [(MNDisplayETALegInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_waypointID"];
    waypointID = v5->_waypointID;
    v5->_waypointID = v6;

    v5->_legIndex = [v4 decodeIntegerForKey:@"_legIndex"];
    v5->_remainingMinutes = [v4 decodeIntegerForKey:@"_remainingMinutes"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eta"];
    eta = v5->_eta;
    v5->_eta = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v10;

    v12 = v5;
  }

  return v5;
}

@end