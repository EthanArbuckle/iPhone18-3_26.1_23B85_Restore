@interface HKMobilityWalkingSteadinessOnboardingStatus
- (BOOL)isEqual:(id)equal;
- (HKMobilityWalkingSteadinessOnboardingStatus)initWithCoder:(id)coder;
- (HKMobilityWalkingSteadinessOnboardingStatus)initWithState:(int64_t)state unavailableReasons:(int64_t)reasons dateOnboarded:(id)onboarded shouldOnboardingTileBeAdvertised:(BOOL)advertised isLocaleValidOnLocalDevice:(BOOL)device isClassificationAvailable:(BOOL)available;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMobilityWalkingSteadinessOnboardingStatus

- (HKMobilityWalkingSteadinessOnboardingStatus)initWithState:(int64_t)state unavailableReasons:(int64_t)reasons dateOnboarded:(id)onboarded shouldOnboardingTileBeAdvertised:(BOOL)advertised isLocaleValidOnLocalDevice:(BOOL)device isClassificationAvailable:(BOOL)available
{
  onboardedCopy = onboarded;
  v20.receiver = self;
  v20.super_class = HKMobilityWalkingSteadinessOnboardingStatus;
  v16 = [(HKMobilityWalkingSteadinessOnboardingStatus *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_state = state;
    v16->_onboardingUnavailableReasons = reasons;
    objc_storeStrong(&v16->_dateOnboarded, onboarded);
    v17->_shouldAdvertiseOnboarding = advertised;
    v17->_isLocaleValidOnLocalDevice = device;
    v17->_isClassificationAvailable = available;
    v18 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      v7 = self->_state == v5->_state && self->_onboardingUnavailableReasons == v5->_onboardingUnavailableReasons && [(NSDate *)self->_dateOnboarded isEqual:v5->_dateOnboarded]&& self->_shouldAdvertiseOnboarding == v6[8] && self->_isLocaleValidOnLocalDevice == v6[9] && self->_isClassificationAvailable == v6[10];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = self->_onboardingUnavailableReasons ^ self->_state;
  v4 = v3 ^ [(NSDate *)self->_dateOnboarded hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldAdvertiseOnboarding];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLocaleValidOnLocalDevice];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isClassificationAvailable];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"State"];
  [coderCopy encodeInteger:self->_onboardingUnavailableReasons forKey:@"OnboardingUnavailableReasons"];
  [coderCopy encodeObject:self->_dateOnboarded forKey:@"DateOnboarded"];
  [coderCopy encodeBool:self->_shouldAdvertiseOnboarding forKey:@"ShouldAdvertiseOnboarding"];
  [coderCopy encodeBool:self->_isLocaleValidOnLocalDevice forKey:@"IsLocaleValidOnLocalDevice"];
  [coderCopy encodeBool:self->_isClassificationAvailable forKey:@"IsClassificationAvailableKey"];
}

- (HKMobilityWalkingSteadinessOnboardingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKMobilityWalkingSteadinessOnboardingStatus;
  v5 = [(HKMobilityWalkingSteadinessOnboardingStatus *)&v9 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v5->_onboardingUnavailableReasons = [coderCopy decodeIntegerForKey:@"OnboardingUnavailableReasons"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateOnboarded"];
    dateOnboarded = v5->_dateOnboarded;
    v5->_dateOnboarded = v6;

    v5->_shouldAdvertiseOnboarding = [coderCopy decodeBoolForKey:@"ShouldAdvertiseOnboarding"];
    v5->_isLocaleValidOnLocalDevice = [coderCopy decodeBoolForKey:@"IsLocaleValidOnLocalDevice"];
    v5->_isClassificationAvailable = [coderCopy decodeBoolForKey:@"IsClassificationAvailableKey"];
  }

  return v5;
}

@end