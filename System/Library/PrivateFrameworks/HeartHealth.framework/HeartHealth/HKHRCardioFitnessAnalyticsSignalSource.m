@interface HKHRCardioFitnessAnalyticsSignalSource
- (NSString)activeWatchProductType;
- (id)biologicalSexStringForBiologicalSex:(int64_t)a3;
- (id)biologicalSexStringWithError:(id *)a3;
- (int64_t)bucketedAgeForDateOfBirthComponents:(id)a3;
- (int64_t)bucketedAgeWithError:(id *)a3;
@end

@implementation HKHRCardioFitnessAnalyticsSignalSource

- (int64_t)bucketedAgeWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HKHRCardioFitnessAnalyticsSignalSource.m" lineNumber:26 description:@"Subclass must implement"];

  return -1;
}

- (id)biologicalSexStringWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HKHRCardioFitnessAnalyticsSignalSource.m" lineNumber:31 description:@"Subclass must implement"];

  return &stru_283BD8508;
}

- (NSString)activeWatchProductType
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 getActivePairedDevice];

  if (v4)
  {
    v5 = [v4 valueForProperty:*MEMORY[0x277D2BBC0]];
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
      v12 = self;
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
      v12 = self;
      _os_log_impl(&dword_228942000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No active paired device, returning unavailable", &v11, 0xCu);
    }
  }

  v7 = @"unavailable";
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)bucketedAgeForDateOfBirthComponents:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendarWithLocalTimeZone];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 hk_dateOfBirthDateComponentsWithDate:v6];

  v8 = [v5 components:4 fromDateComponents:v4 toDateComponents:v7 options:0];

  v9 = [v8 year];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  v11 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAgeAndMaximumAge();
  v12 = [v11 integerValue];

  return v12;
}

- (id)biologicalSexStringForBiologicalSex:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"male";
  }

  else
  {
    return off_27860B580[a3];
  }
}

@end