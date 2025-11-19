@interface MNTransitAlert
- (MNTransitAlert)initWithCoder:(id)a3;
- (MNTransitAlert)initWithTransitBanner:(id)a3 transitStep:(id)a4 activeRoute:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNTransitAlert

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MNTransitAlert *)self command];
  v5 = [v4 formatStrings];
  v6 = [v5 firstObject];
  stopIndex = self->_stopIndex;
  stepIndex = self->_stepIndex;
  maneuverType = self->_maneuverType;
  if (maneuverType >= 0xB)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_maneuverType];
  }

  else
  {
    v10 = *(&off_1E842EE48 + maneuverType);
  }

  v11 = [v3 stringWithFormat:@"%@ | stepIndex: %lu | stopIndex: %lu | maneuverType: %@", v6, stepIndex, stopIndex, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  banner = self->_banner;
  v5 = a3;
  [v5 encodeObject:banner forKey:@"_banner"];
  [v5 encodeObject:self->_primaryString forKey:@"_primaryString"];
  [v5 encodeObject:self->_secondaryString forKey:@"_secondaryString"];
  [v5 encodeInteger:self->_stopIndex forKey:@"_stopIndex"];
  [v5 encodeInteger:self->_stepIndex forKey:@"_stepIndex"];
  [v5 encodeObject:self->_currentRouteInfo forKey:@"_currentRouteInfo"];
  [v5 encodeInteger:self->_maneuverType forKey:@"_maneuverType"];
}

- (MNTransitAlert)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MNTransitAlert;
  v5 = [(MNTransitAlert *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_banner"];
    banner = v5->_banner;
    v5->_banner = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentRouteInfo"];
    currentRouteInfo = v5->_currentRouteInfo;
    v5->_currentRouteInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primaryString"];
    primaryString = v5->_primaryString;
    v5->_primaryString = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryString"];
    secondaryString = v5->_secondaryString;
    v5->_secondaryString = v12;

    v5->_stepIndex = [v4 decodeIntegerForKey:@"_stepIndex"];
    v5->_stopIndex = [v4 decodeIntegerForKey:@"_stopIndex"];
    v5->_maneuverType = [v4 decodeIntegerForKey:@"_maneuverType"];
  }

  return v5;
}

- (MNTransitAlert)initWithTransitBanner:(id)a3 transitStep:(id)a4 activeRoute:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = MNTransitAlert;
  v12 = [(MNTransitAlert *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_banner, a3);
    v14 = objc_alloc(MEMORY[0x1E69A1CA8]);
    v15 = [v9 primaryText];
    v16 = [v14 initWithGeoFormattedString:v15];
    primaryString = v13->_primaryString;
    v13->_primaryString = v16;

    v18 = objc_alloc(MEMORY[0x1E69A1CA8]);
    v19 = [v9 secondaryText];
    v20 = [v18 initWithGeoFormattedString:v19];
    secondaryString = v13->_secondaryString;
    v13->_secondaryString = v20;

    v13->_stepIndex = [v10 stepIndex];
    v22 = [v10 originStop];
    v13->_stopIndex = [v22 stopIndex];

    v13->_maneuverType = [v10 maneuver];
    objc_storeStrong(&v13->_currentRouteInfo, a5);
  }

  return v13;
}

@end