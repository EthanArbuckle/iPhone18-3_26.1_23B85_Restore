@interface HKHRCardioFitnessOnboardingStatus
- (BOOL)isEqual:(id)a3;
- (HKHRCardioFitnessOnboardingStatus)initWithCoder:(id)a3;
- (HKHRCardioFitnessOnboardingStatus)initWithState:(int64_t)a3 unavailableReasons:(int64_t)a4 dateOnboarded:(id)a5 shouldOnboardingTileBeAdvertised:(BOOL)a6 isLocaleValidOnLocalDevice:(BOOL)a7 isClassificationAvailable:(BOOL)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRCardioFitnessOnboardingStatus

- (HKHRCardioFitnessOnboardingStatus)initWithState:(int64_t)a3 unavailableReasons:(int64_t)a4 dateOnboarded:(id)a5 shouldOnboardingTileBeAdvertised:(BOOL)a6 isLocaleValidOnLocalDevice:(BOOL)a7 isClassificationAvailable:(BOOL)a8
{
  v15 = a5;
  v19.receiver = self;
  v19.super_class = HKHRCardioFitnessOnboardingStatus;
  v16 = [(HKHRCardioFitnessOnboardingStatus *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_state = a3;
    v16->_onboardingUnavailableReasons = a4;
    objc_storeStrong(&v16->_dateOnboarded, a5);
    v17->_shouldAdvertiseOnboarding = a6;
    v17->_isLocaleValidOnLocalDevice = a7;
    v17->_isClassificationAvailable = a8;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"State"];
  [v5 encodeInteger:self->_onboardingUnavailableReasons forKey:@"OnboardingUnavailableReasons"];
  [v5 encodeObject:self->_dateOnboarded forKey:@"DateOnboarded"];
  [v5 encodeBool:self->_shouldAdvertiseOnboarding forKey:@"ShouldAdvertiseOnboarding"];
  [v5 encodeBool:self->_isLocaleValidOnLocalDevice forKey:@"IsLocaleValidOnLocalDevice"];
  [v5 encodeBool:self->_isClassificationAvailable forKey:@"IsClassificationAvailableKey"];
}

- (HKHRCardioFitnessOnboardingStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHRCardioFitnessOnboardingStatus;
  v5 = [(HKHRCardioFitnessOnboardingStatus *)&v9 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v5->_onboardingUnavailableReasons = [v4 decodeIntegerForKey:@"OnboardingUnavailableReasons"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateOnboarded"];
    dateOnboarded = v5->_dateOnboarded;
    v5->_dateOnboarded = v6;

    v5->_shouldAdvertiseOnboarding = [v4 decodeBoolForKey:@"ShouldAdvertiseOnboarding"];
    v5->_isLocaleValidOnLocalDevice = [v4 decodeBoolForKey:@"IsLocaleValidOnLocalDevice"];
    v5->_isClassificationAvailable = [v4 decodeBoolForKey:@"IsClassificationAvailableKey"];
  }

  return v5;
}

@end