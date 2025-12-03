@interface HKMCOnboardingCompletionInfo
- (HKMCOnboardingCompletionInfo)initWithUserEnteredCycleLength:(id)length userEnteredPeriodLength:(id)periodLength userEnteredLastPeriodStartDay:(id)day addedCycleFactors:(id)factors deletedCycleFactors:(id)cycleFactors menstruationProjectionsEnabled:(BOOL)enabled fertileWindowProjectionsEnabled:(BOOL)projectionsEnabled deviationDetectionEnabled:(BOOL)self0 fertilityTrackingDisplayTypesVisible:(BOOL)self1 sexualActivityDisplayTypeVisible:(BOOL)self2 heartRateInputSupportedCountryCode:(id)self3 deviationDetectionSupportedCountryCode:(id)self4 wristTemperatureInputSupportedCountryCode:(id)self5 heartRateInputEnabled:(id)self6 wristTemperatureInputEnabled:(id)self7;
@end

@implementation HKMCOnboardingCompletionInfo

- (HKMCOnboardingCompletionInfo)initWithUserEnteredCycleLength:(id)length userEnteredPeriodLength:(id)periodLength userEnteredLastPeriodStartDay:(id)day addedCycleFactors:(id)factors deletedCycleFactors:(id)cycleFactors menstruationProjectionsEnabled:(BOOL)enabled fertileWindowProjectionsEnabled:(BOOL)projectionsEnabled deviationDetectionEnabled:(BOOL)self0 fertilityTrackingDisplayTypesVisible:(BOOL)self1 sexualActivityDisplayTypeVisible:(BOOL)self2 heartRateInputSupportedCountryCode:(id)self3 deviationDetectionSupportedCountryCode:(id)self4 wristTemperatureInputSupportedCountryCode:(id)self5 heartRateInputEnabled:(id)self6 wristTemperatureInputEnabled:(id)self7
{
  lengthCopy = length;
  periodLengthCopy = periodLength;
  dayCopy = day;
  factorsCopy = factors;
  cycleFactorsCopy = cycleFactors;
  codeCopy = code;
  countryCodeCopy = countryCode;
  supportedCountryCodeCopy = supportedCountryCode;
  inputEnabledCopy = inputEnabled;
  temperatureInputEnabledCopy = temperatureInputEnabled;
  v49.receiver = self;
  v49.super_class = HKMCOnboardingCompletionInfo;
  v29 = [(HKMCOnboardingCompletionInfo *)&v49 init];
  if (v29)
  {
    v30 = [lengthCopy copy];
    userEnteredCycleLength = v29->_userEnteredCycleLength;
    v29->_userEnteredCycleLength = v30;

    v32 = [periodLengthCopy copy];
    userEnteredPeriodLength = v29->_userEnteredPeriodLength;
    v29->_userEnteredPeriodLength = v32;

    v34 = [dayCopy copy];
    userEnteredLastPeriodStartDay = v29->_userEnteredLastPeriodStartDay;
    v29->_userEnteredLastPeriodStartDay = v34;

    v36 = [factorsCopy copy];
    addedCycleFactors = v29->_addedCycleFactors;
    v29->_addedCycleFactors = v36;

    v38 = [cycleFactorsCopy copy];
    deletedCycleFactors = v29->_deletedCycleFactors;
    v29->_deletedCycleFactors = v38;

    v29->_menstruationProjectionsEnabled = enabled;
    v29->_fertileWindowProjectionsEnabled = projectionsEnabled;
    v29->_deviationDetectionEnabled = detectionEnabled;
    v29->_fertilityTrackingDisplayTypesVisible = visible;
    v29->_sexualActivityDisplayTypeVisible = typeVisible;
    objc_storeStrong(&v29->_heartRateInputSupportedCountryCode, code);
    objc_storeStrong(&v29->_deviationDetectionSupportedCountryCode, countryCode);
    objc_storeStrong(&v29->_wristTemperatureInputSupportedCountryCode, supportedCountryCode);
    v40 = [inputEnabledCopy copy];
    heartRateInputEnabled = v29->_heartRateInputEnabled;
    v29->_heartRateInputEnabled = v40;

    v42 = [temperatureInputEnabledCopy copy];
    wristTemperatureInputEnabled = v29->_wristTemperatureInputEnabled;
    v29->_wristTemperatureInputEnabled = v42;
  }

  return v29;
}

@end