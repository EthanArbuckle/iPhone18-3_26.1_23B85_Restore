@interface HDMobilityAnalyticsUtilities
+ (id)ageWithProfile:(id)profile date:(id)date error:(id *)error;
+ (id)biologicalSexWithProfile:(id)profile error:(id *)error;
@end

@implementation HDMobilityAnalyticsUtilities

+ (id)ageWithProfile:(id)profile date:(id)date error:(id *)error
{
  dateCopy = date;
  v9 = MEMORY[0x277CCD720];
  v10 = *MEMORY[0x277CCBB18];
  profileCopy = profile;
  v12 = [v9 characteristicTypeForIdentifier:v10];
  userCharacteristicsManager = [profileCopy userCharacteristicsManager];

  v22 = 0;
  v14 = [userCharacteristicsManager userCharacteristicForType:v12 error:&v22];
  v15 = v22;

  if (v14)
  {
    v16 = [MEMORY[0x277D11AA0] yearsBetweenStartDateComponents:v14 endDate:dateCopy];
    if (!v16)
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2F8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
      {
        [HDMobilityAnalyticsUtilities ageWithProfile:self date:v17 error:?];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityAnalyticsUtilities ageWithProfile:self date:v15 error:v18];
    }

    v19 = v15;
    if (v19)
    {
      if (error)
      {
        v20 = v19;
        *error = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = 0;
  }

  return v16;
}

+ (id)biologicalSexWithProfile:(id)profile error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCD0D0];
  v7 = *MEMORY[0x277CCBB08];
  profileCopy = profile;
  v9 = [v6 characteristicTypeForIdentifier:v7];
  userCharacteristicsManager = [profileCopy userCharacteristicsManager];

  v19 = 0;
  v11 = [userCharacteristicsManager userCharacteristicForType:v9 error:&v19];
  v12 = v19;

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_251962000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Unable to retrieve biological sex, returning not set: %{public}@", buf, 0x16u);
    }

    v15 = v12;
    if (v15)
    {
      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v13 = &unk_2863D8360;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)ageWithProfile:(uint64_t)a1 date:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251962000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to convert date of birth to a date", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)ageWithProfile:(uint64_t)a1 date:(uint64_t)a2 error:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_251962000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to read date of birth with error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end