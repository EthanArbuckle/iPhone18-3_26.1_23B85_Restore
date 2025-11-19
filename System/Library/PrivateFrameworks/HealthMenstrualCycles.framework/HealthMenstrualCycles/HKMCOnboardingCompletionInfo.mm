@interface HKMCOnboardingCompletionInfo
- (HKMCOnboardingCompletionInfo)initWithUserEnteredCycleLength:(id)a3 userEnteredPeriodLength:(id)a4 userEnteredLastPeriodStartDay:(id)a5 addedCycleFactors:(id)a6 deletedCycleFactors:(id)a7 menstruationProjectionsEnabled:(BOOL)a8 fertileWindowProjectionsEnabled:(BOOL)a9 deviationDetectionEnabled:(BOOL)a10 fertilityTrackingDisplayTypesVisible:(BOOL)a11 sexualActivityDisplayTypeVisible:(BOOL)a12 heartRateInputSupportedCountryCode:(id)a13 deviationDetectionSupportedCountryCode:(id)a14 wristTemperatureInputSupportedCountryCode:(id)a15 heartRateInputEnabled:(id)a16 wristTemperatureInputEnabled:(id)a17;
@end

@implementation HKMCOnboardingCompletionInfo

- (HKMCOnboardingCompletionInfo)initWithUserEnteredCycleLength:(id)a3 userEnteredPeriodLength:(id)a4 userEnteredLastPeriodStartDay:(id)a5 addedCycleFactors:(id)a6 deletedCycleFactors:(id)a7 menstruationProjectionsEnabled:(BOOL)a8 fertileWindowProjectionsEnabled:(BOOL)a9 deviationDetectionEnabled:(BOOL)a10 fertilityTrackingDisplayTypesVisible:(BOOL)a11 sexualActivityDisplayTypeVisible:(BOOL)a12 heartRateInputSupportedCountryCode:(id)a13 deviationDetectionSupportedCountryCode:(id)a14 wristTemperatureInputSupportedCountryCode:(id)a15 heartRateInputEnabled:(id)a16 wristTemperatureInputEnabled:(id)a17
{
  v48 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a13;
  v47 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a17;
  v49.receiver = self;
  v49.super_class = HKMCOnboardingCompletionInfo;
  v29 = [(HKMCOnboardingCompletionInfo *)&v49 init];
  if (v29)
  {
    v30 = [v48 copy];
    userEnteredCycleLength = v29->_userEnteredCycleLength;
    v29->_userEnteredCycleLength = v30;

    v32 = [v21 copy];
    userEnteredPeriodLength = v29->_userEnteredPeriodLength;
    v29->_userEnteredPeriodLength = v32;

    v34 = [v22 copy];
    userEnteredLastPeriodStartDay = v29->_userEnteredLastPeriodStartDay;
    v29->_userEnteredLastPeriodStartDay = v34;

    v36 = [v23 copy];
    addedCycleFactors = v29->_addedCycleFactors;
    v29->_addedCycleFactors = v36;

    v38 = [v24 copy];
    deletedCycleFactors = v29->_deletedCycleFactors;
    v29->_deletedCycleFactors = v38;

    v29->_menstruationProjectionsEnabled = a8;
    v29->_fertileWindowProjectionsEnabled = a9;
    v29->_deviationDetectionEnabled = a10;
    v29->_fertilityTrackingDisplayTypesVisible = a11;
    v29->_sexualActivityDisplayTypeVisible = a12;
    objc_storeStrong(&v29->_heartRateInputSupportedCountryCode, a13);
    objc_storeStrong(&v29->_deviationDetectionSupportedCountryCode, a14);
    objc_storeStrong(&v29->_wristTemperatureInputSupportedCountryCode, a15);
    v40 = [v27 copy];
    heartRateInputEnabled = v29->_heartRateInputEnabled;
    v29->_heartRateInputEnabled = v40;

    v42 = [v28 copy];
    wristTemperatureInputEnabled = v29->_wristTemperatureInputEnabled;
    v29->_wristTemperatureInputEnabled = v42;
  }

  return v29;
}

@end