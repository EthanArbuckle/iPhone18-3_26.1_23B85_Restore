@interface HKHRCardioFitnessAnalyticsSignalSource
- (NSString)activeWatchProductType;
- (id)biologicalSexStringForBiologicalSex:(int64_t)sex;
- (id)biologicalSexStringWithError:(id *)error;
- (int64_t)bucketedAgeForDateOfBirthComponents:(id)components;
- (int64_t)bucketedAgeWithError:(id *)error;
@end

@implementation HKHRCardioFitnessAnalyticsSignalSource

- (int64_t)bucketedAgeWithError:(id *)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKHRCardioFitnessAnalyticsSignalSource.m" lineNumber:26 description:@"Subclass must implement"];

  return -1;
}

- (id)biologicalSexStringWithError:(id *)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKHRCardioFitnessAnalyticsSignalSource.m" lineNumber:31 description:@"Subclass must implement"];

  return &stru_283BD8508;
}

- (NSString)activeWatchProductType
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (getActivePairedDevice)
  {
    v5 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];
    v6 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v6;
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228942000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No watch product type retrieved, returning unavailable", &v11, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228942000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No active paired device, returning unavailable", &v11, 0xCu);
    }
  }

  v7 = @"unavailable";
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)bucketedAgeForDateOfBirthComponents:(id)components
{
  v3 = MEMORY[0x277CBEA80];
  componentsCopy = components;
  hk_gregorianCalendarWithLocalTimeZone = [v3 hk_gregorianCalendarWithLocalTimeZone];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [hk_gregorianCalendarWithLocalTimeZone hk_dateOfBirthDateComponentsWithDate:date];

  v8 = [hk_gregorianCalendarWithLocalTimeZone components:4 fromDateComponents:componentsCopy toDateComponents:v7 options:0];

  year = [v8 year];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:year];
  v11 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAgeAndMaximumAge();
  integerValue = [v11 integerValue];

  return integerValue;
}

- (id)biologicalSexStringForBiologicalSex:(int64_t)sex
{
  if (sex > 3)
  {
    return @"male";
  }

  else
  {
    return off_27860B580[sex];
  }
}

@end