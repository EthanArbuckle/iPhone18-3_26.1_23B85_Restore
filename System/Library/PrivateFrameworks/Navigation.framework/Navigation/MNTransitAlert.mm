@interface MNTransitAlert
- (MNTransitAlert)initWithCoder:(id)coder;
- (MNTransitAlert)initWithTransitBanner:(id)banner transitStep:(id)step activeRoute:(id)route;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNTransitAlert

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  command = [(MNTransitAlert *)self command];
  formatStrings = [command formatStrings];
  firstObject = [formatStrings firstObject];
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

  v11 = [v3 stringWithFormat:@"%@ | stepIndex: %lu | stopIndex: %lu | maneuverType: %@", firstObject, stepIndex, stopIndex, v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  banner = self->_banner;
  coderCopy = coder;
  [coderCopy encodeObject:banner forKey:@"_banner"];
  [coderCopy encodeObject:self->_primaryString forKey:@"_primaryString"];
  [coderCopy encodeObject:self->_secondaryString forKey:@"_secondaryString"];
  [coderCopy encodeInteger:self->_stopIndex forKey:@"_stopIndex"];
  [coderCopy encodeInteger:self->_stepIndex forKey:@"_stepIndex"];
  [coderCopy encodeObject:self->_currentRouteInfo forKey:@"_currentRouteInfo"];
  [coderCopy encodeInteger:self->_maneuverType forKey:@"_maneuverType"];
}

- (MNTransitAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MNTransitAlert;
  v5 = [(MNTransitAlert *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_banner"];
    banner = v5->_banner;
    v5->_banner = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentRouteInfo"];
    currentRouteInfo = v5->_currentRouteInfo;
    v5->_currentRouteInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_primaryString"];
    primaryString = v5->_primaryString;
    v5->_primaryString = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryString"];
    secondaryString = v5->_secondaryString;
    v5->_secondaryString = v12;

    v5->_stepIndex = [coderCopy decodeIntegerForKey:@"_stepIndex"];
    v5->_stopIndex = [coderCopy decodeIntegerForKey:@"_stopIndex"];
    v5->_maneuverType = [coderCopy decodeIntegerForKey:@"_maneuverType"];
  }

  return v5;
}

- (MNTransitAlert)initWithTransitBanner:(id)banner transitStep:(id)step activeRoute:(id)route
{
  bannerCopy = banner;
  stepCopy = step;
  routeCopy = route;
  v24.receiver = self;
  v24.super_class = MNTransitAlert;
  v12 = [(MNTransitAlert *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_banner, banner);
    v14 = objc_alloc(MEMORY[0x1E69A1CA8]);
    primaryText = [bannerCopy primaryText];
    v16 = [v14 initWithGeoFormattedString:primaryText];
    primaryString = v13->_primaryString;
    v13->_primaryString = v16;

    v18 = objc_alloc(MEMORY[0x1E69A1CA8]);
    secondaryText = [bannerCopy secondaryText];
    v20 = [v18 initWithGeoFormattedString:secondaryText];
    secondaryString = v13->_secondaryString;
    v13->_secondaryString = v20;

    v13->_stepIndex = [stepCopy stepIndex];
    originStop = [stepCopy originStop];
    v13->_stopIndex = [originStop stopIndex];

    v13->_maneuverType = [stepCopy maneuver];
    objc_storeStrong(&v13->_currentRouteInfo, route);
  }

  return v13;
}

@end