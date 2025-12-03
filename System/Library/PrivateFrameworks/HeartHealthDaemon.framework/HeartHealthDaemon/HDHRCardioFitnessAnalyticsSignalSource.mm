@interface HDHRCardioFitnessAnalyticsSignalSource
- (HDHRCardioFitnessAnalyticsSignalSource)initWithProfile:(id)profile;
- (id)_birthDateComponentsWithError:(id *)error;
- (id)_classificationStringForCardioFitnessValue:(double)value age:(int64_t)age biologicalSex:(int64_t)sex;
- (id)_latestCardioFitnessValueWithError:(id *)error;
- (id)biologicalSexStringWithError:(id *)error;
- (id)latestClassificationWithIsOnboarded:(BOOL)onboarded error:(id *)error;
- (int64_t)_biologicalSexWithError:(id *)error;
- (int64_t)bucketedAgeWithError:(id *)error;
@end

@implementation HDHRCardioFitnessAnalyticsSignalSource

- (HDHRCardioFitnessAnalyticsSignalSource)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDHRCardioFitnessAnalyticsSignalSource;
  v5 = [(HDHRCardioFitnessAnalyticsSignalSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (int64_t)bucketedAgeWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(HDHRCardioFitnessAnalyticsSignalSource *)self _birthDateComponentsWithError:error];
  if (v4)
  {
    v5 = [(HKHRCardioFitnessAnalyticsSignalSource *)self bucketedAgeForDateOfBirthComponents:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No date of birth components, returning invalid value", &v9, 0xCu);
    }

    v5 = *MEMORY[0x277D12EF0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)biologicalSexStringWithError:(id *)error
{
  v4 = [(HDHRCardioFitnessAnalyticsSignalSource *)self _biologicalSexWithError:error];

  return [(HKHRCardioFitnessAnalyticsSignalSource *)self biologicalSexStringForBiologicalSex:v4];
}

- (id)latestClassificationWithIsOnboarded:(BOOL)onboarded error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (onboarded)
  {
    v27 = 0;
    v6 = [(HDHRCardioFitnessAnalyticsSignalSource *)self _birthDateComponentsWithError:&v27];
    v7 = v27;
    if (v7)
    {
      v8 = v7;
      _HKInitializeLogging();
      v9 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HDHRCardioFitnessAnalyticsSignalSource latestClassificationWithIsOnboarded:error:];
      }

      if (error)
      {
        v10 = v8;
        v11 = 0;
        *error = v8;
      }

      else
      {
        _HKLogDroppedError();
        v11 = 0;
      }
    }

    else if (v6)
    {
      v14 = [(HDHRCardioFitnessAnalyticsSignalSource *)self _biologicalSexWithError:error];
      v26 = 0;
      v15 = [(HDHRCardioFitnessAnalyticsSignalSource *)self _latestCardioFitnessValueWithError:&v26];
      v8 = v26;
      if (v8)
      {
        if (error)
        {
          v16 = v8;
          v11 = 0;
          *error = v8;
        }

        else
        {
          _HKLogDroppedError();
          v11 = 0;
        }
      }

      else if (v15)
      {
        startDate = [v15 startDate];
        v18 = [v6 hk_ageWithCurrentDate:startDate];

        quantity = [v15 quantity];
        v20 = [MEMORY[0x277CCDAB0] unitFromString:@"ml/kg*min"];
        [quantity doubleValueForUnit:v20];
        v22 = v21;

        v11 = [(HDHRCardioFitnessAnalyticsSignalSource *)self _classificationStringForCardioFitnessValue:v18 age:v14 biologicalSex:v22];
      }

      else
      {
        _HKInitializeLogging();
        v23 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [HDHRCardioFitnessAnalyticsSignalSource latestClassificationWithIsOnboarded:v23 error:?];
        }

        v11 = @"no classification";
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [HDHRCardioFitnessAnalyticsSignalSource latestClassificationWithIsOnboarded:v8 error:?];
      }

      v11 = @"no classification";
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHeartRateCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    if (!v13)
    {
      v11 = @"not onboarded";
      goto LABEL_29;
    }

    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_INFO, "[%{public}@] User is not onboarded, will not report classifciation", buf, 0xCu);
    }

    v11 = @"not onboarded";
  }

LABEL_29:
  v24 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_latestCardioFitnessValueWithError:(id *)error
{
  v5 = MEMORY[0x277D10848];
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC98]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = 0;
  v8 = [v5 mostRecentSampleWithType:v6 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v14];
  v9 = v14;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessAnalyticsSignalSource _latestCardioFitnessValueWithError:];
    }

    if (error)
    {
      v11 = v9;
      v12 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (id)_classificationStringForCardioFitnessValue:(double)value age:(int64_t)age biologicalSex:(int64_t)sex
{
  v5 = [MEMORY[0x277CCD0A8] cardioFitnessLevelForVO2Max:sex biologicalSex:age age:value];
  v6 = MEMORY[0x277CCD0A8];

  return [v6 analyticsStringForLevel:v5];
}

- (id)_birthDateComponentsWithError:(id *)error
{
  v5 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v14 = 0;
  v8 = [userCharacteristicsManager userCharacteristicForType:v5 error:&v14];
  v9 = v14;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessAnalyticsSignalSource _birthDateComponentsWithError:];
    }

    if (error)
    {
      v11 = v9;
      v12 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (int64_t)_biologicalSexWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v16 = 0;
  v8 = [userCharacteristicsManager userCharacteristicForType:v5 error:&v16];
  v9 = v16;

  if (!v9)
  {
    if (v8)
    {
      integerValue = [v8 integerValue];
      goto LABEL_13;
    }

    _HKInitializeLogging();
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No biological sex number, returning not set", buf, 0xCu);
    }

LABEL_12:
    integerValue = 0;
    goto LABEL_13;
  }

  _HKInitializeLogging();
  v10 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [HDHRCardioFitnessAnalyticsSignalSource _biologicalSexWithError:];
  }

  if (!error)
  {
    _HKLogDroppedError();
    goto LABEL_12;
  }

  v11 = v9;
  integerValue = 0;
  *error = v9;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (void)latestClassificationWithIsOnboarded:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error encountered when retrieving date of birth: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)latestClassificationWithIsOnboarded:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Date of birth missing, returning no classification", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_latestCardioFitnessValueWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error encountered when retrieving latest cardio fitness sample: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_birthDateComponentsWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error when retrieving date of birth components: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_biologicalSexWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@]: Error when retrieving biological sex, returning not set: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end