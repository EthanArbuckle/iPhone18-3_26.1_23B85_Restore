@interface HDKeyValueDomain(ElectrocardiogramRecording)
- (id)hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:()ElectrocardiogramRecording;
- (id)hdhr_electrocardiogramRecordingOnboardingCompletionVersionWithError:()ElectrocardiogramRecording;
- (id)hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:()ElectrocardiogramRecording;
- (id)hdhr_electrocardiogramRecordingOnboardingHistoryWithError:()ElectrocardiogramRecording;
- (uint64_t)hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:()ElectrocardiogramRecording;
- (uint64_t)hdhr_resetElectrocardiogramRecordingFirstOnboardingCompletedDateWithError:()ElectrocardiogramRecording;
- (uint64_t)hdhr_setElectrocardiogramRecordingFirstOnboardingCompletedDate:()ElectrocardiogramRecording error:;
@end

@implementation HDKeyValueDomain(ElectrocardiogramRecording)

- (id)hdhr_electrocardiogramRecordingOnboardingHistoryWithError:()ElectrocardiogramRecording
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCBCE8];
  v19 = 0;
  v5 = [self propertyListValueForKey:v4 error:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v6 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2D8];
    v12 = *MEMORY[0x277CCC2D8];
    if (hk_isDatabaseAccessibilityError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
        v14 = objc_opt_class();
        *buf = 138543362;
        v21 = v14;
        v15 = v14;
        _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't determine ECG onboarding history", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingOnboardingHistoryWithError:v11];
    }

    if (a3)
    {
      v16 = v7;
      v9 = 0;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:()ElectrocardiogramRecording
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCBCD0];
  v19 = 0;
  v5 = [self dateForKey:v4 error:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v6 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2D8];
    v12 = *MEMORY[0x277CCC2D8];
    if (hk_isDatabaseAccessibilityError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
        v14 = objc_opt_class();
        *buf = 138543362;
        v21 = v14;
        v15 = v14;
        _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't determine first ECG onboarding completion date", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:v11];
    }

    if (a3)
    {
      v16 = v7;
      v9 = 0;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (uint64_t)hdhr_setElectrocardiogramRecordingFirstOnboardingCompletedDate:()ElectrocardiogramRecording error:
{
  v6 = a3;
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCE460]), v7, (v8 & 1) == 0))
  {
    [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_setElectrocardiogramRecordingFirstOnboardingCompletedDate:error:];
  }

  v9 = [self setDate:v6 forKey:*MEMORY[0x277CCBCD0] error:a4];

  return v9;
}

- (id)hdhr_electrocardiogramRecordingOnboardingCompletionVersionWithError:()ElectrocardiogramRecording
{
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingOnboardingCompletionVersionWithError:];
  }

  v7 = [self numberForKey:*MEMORY[0x277CCBCF0] error:a3];
  if ([v7 integerValue])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:()ElectrocardiogramRecording
{
  v25 = *MEMORY[0x277D85DE8];
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:];
  }

  v7 = *MEMORY[0x277CCBCE0];
  v22 = 0;
  v8 = [self stringForKey:v7 error:&v22];
  v9 = v22;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    hk_copyNonEmptyString = [v8 hk_copyNonEmptyString];
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v9 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2D8];
    v15 = *MEMORY[0x277CCC2D8];
    if (hk_isDatabaseAccessibilityError)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
        v17 = objc_opt_class();
        *buf = 138543362;
        v24 = v17;
        v18 = v17;
        _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't determine ECG onboarding country code", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:v14];
    }

    if (a3)
    {
      v19 = v10;
      hk_copyNonEmptyString = 0;
      *a3 = v10;
    }

    else
    {
      _HKLogDroppedError();
      hk_copyNonEmptyString = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return hk_copyNonEmptyString;
}

- (uint64_t)hdhr_resetElectrocardiogramRecordingFirstOnboardingCompletedDateWithError:()ElectrocardiogramRecording
{
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_resetElectrocardiogramRecordingFirstOnboardingCompletedDateWithError:];
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCBCD0]];
  v8 = [self removeValuesForKeys:v7 error:a3];

  return v8;
}

- (uint64_t)hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:()ElectrocardiogramRecording
{
  if ([self category] != 105)
  {
    [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:];
  }

  domainName = [self domainName];
  v6 = [domainName isEqualToString:*MEMORY[0x277CCE460]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(ElectrocardiogramRecording) hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:];
  }

  return [self numberForKey:@"HKElectrocardiogramOnboardingCountryCodeProvenance" error:a3];
}

- (void)hdhr_electrocardiogramRecordingOnboardingHistoryWithError:()ElectrocardiogramRecording .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Error reading ECG onboarding history: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:()ElectrocardiogramRecording .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Error reading first ECG onboarding completion date: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdhr_setElectrocardiogramRecordingFirstOnboardingCompletedDate:()ElectrocardiogramRecording error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_electrocardiogramRecordingOnboardingCompletionVersionWithError:()ElectrocardiogramRecording .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:()ElectrocardiogramRecording .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_electrocardiogramRecordingOnboardingCountryCodeWithError:()ElectrocardiogramRecording .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Error reading ECG onboarding country code: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdhr_resetElectrocardiogramRecordingFirstOnboardingCompletedDateWithError:()ElectrocardiogramRecording .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:()ElectrocardiogramRecording .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_electrocardiogramRecordingCountryCodeProvenanceWithError:()ElectrocardiogramRecording .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

@end