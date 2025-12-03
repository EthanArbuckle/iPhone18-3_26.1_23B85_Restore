@interface HDKeyValueDomain(HKHeartRhythm)
+ (id)hdhr_aFibBurdenProtectedLocalDomainForProfile:()HKHeartRhythm;
+ (id)hdhr_aFibBurdenProtectedSyncedDomainForProfile:()HKHeartRhythm;
+ (id)hdhr_heartRhythmProtectedLocalDomainForProfile:()HKHeartRhythm;
+ (id)hdhr_heartRhythmProtectedSyncedDomainForProfile:()HKHeartRhythm;
- (id)hdhr_atrialFibrillationOnboardingCompletedDateWithError:()HKHeartRhythm;
- (id)hdhr_atrialFibrillationOnboardingCompletionVersionWithError:()HKHeartRhythm;
- (id)hdhr_atrialFibrillationOnboardingCountryCodeWithError:()HKHeartRhythm;
- (id)hdhr_irregularRhythmNotificationsOnboardingCompletionForFeatureIdentifier:()HKHeartRhythm error:;
- (uint64_t)hdhr_resetAtrialFibrillationDetectionOnboardingWithError:()HKHeartRhythm;
- (uint64_t)hdhr_setAtrialFibrillationDetectionCurrentOnboardingVersionCompletedInCountryCode:()HKHeartRhythm error:;
@end

@implementation HDKeyValueDomain(HKHeartRhythm)

+ (id)hdhr_heartRhythmProtectedSyncedDomainForProfile:()HKHeartRhythm
{
  v4 = a3;
  v5 = [self alloc];
  v6 = [v5 initWithCategory:105 domainName:*MEMORY[0x277CCE460] profile:v4];

  return v6;
}

+ (id)hdhr_heartRhythmProtectedLocalDomainForProfile:()HKHeartRhythm
{
  v4 = a3;
  v5 = [self alloc];
  v6 = [v5 initWithCategory:100 domainName:*MEMORY[0x277CCE460] profile:v4];

  return v6;
}

+ (id)hdhr_aFibBurdenProtectedLocalDomainForProfile:()HKHeartRhythm
{
  v4 = a3;
  v5 = [self alloc];
  v6 = [v5 initWithCategory:100 domainName:*MEMORY[0x277D12EA0] profile:v4];

  return v6;
}

+ (id)hdhr_aFibBurdenProtectedSyncedDomainForProfile:()HKHeartRhythm
{
  v4 = a3;
  v5 = [self alloc];
  v6 = [v5 initWithCategory:105 domainName:*MEMORY[0x277D12EA0] profile:v4];

  return v6;
}

- (id)hdhr_atrialFibrillationOnboardingCountryCodeWithError:()HKHeartRhythm
{
  v25 = *MEMORY[0x277D85DE8];
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(HKHeartRhythm) hdhr_atrialFibrillationOnboardingCountryCodeWithError:];
  }

  v7 = *MEMORY[0x277CCB838];
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
        _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't determine onboarding country code", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HDKeyValueDomain(HKHeartRhythm) hdhr_atrialFibrillationOnboardingCountryCodeWithError:v14];
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

- (id)hdhr_irregularRhythmNotificationsOnboardingCompletionForFeatureIdentifier:()HKHeartRhythm error:
{
  v6 = a3;
  v18 = 0;
  v7 = [self hdhr_atrialFibrillationOnboardingCompletionVersionWithError:&v18];
  v8 = v18;
  v9 = v8;
  if (v7)
  {
    if (![v7 integerValue])
    {
      v13 = 0;
      goto LABEL_19;
    }

    v17 = v9;
    v10 = [self hdhr_atrialFibrillationOnboardingCompletedDateWithError:&v17];
    v11 = v17;

    if (v10)
    {
      v12 = [self hdhr_atrialFibrillationOnboardingCountryCodeWithError:0];
      v13 = [objc_alloc(MEMORY[0x277CCD740]) initWithFeatureIdentifier:v6 version:objc_msgSend(v7 completionDate:"integerValue") countryCode:v10 countryCodeProvenance:{v12, 0}];
LABEL_17:

      goto LABEL_18;
    }

    v12 = v11;
    if (v12)
    {
      if (a4)
      {
        v15 = v12;
        v13 = 0;
        *a4 = v12;
        goto LABEL_17;
      }

      _HKLogDroppedError();
    }

    v13 = 0;
    goto LABEL_17;
  }

  v10 = v8;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v14 = v10;
  v13 = 0;
  *a4 = v10;
LABEL_14:
  v11 = v10;
LABEL_18:

  v9 = v11;
LABEL_19:

  return v13;
}

- (id)hdhr_atrialFibrillationOnboardingCompletionVersionWithError:()HKHeartRhythm
{
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(HKHeartRhythm) hdhr_atrialFibrillationOnboardingCompletionVersionWithError:];
  }

  v7 = [self numberForKey:*MEMORY[0x277CCB840] error:a3];
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

- (id)hdhr_atrialFibrillationOnboardingCompletedDateWithError:()HKHeartRhythm
{
  v30[1] = *MEMORY[0x277D85DE8];
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(HKHeartRhythm) hdhr_atrialFibrillationOnboardingCompletedDateWithError:];
  }

  v30[0] = *MEMORY[0x277CCB840];
  v7 = v30[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v27 = 0;
  v9 = [self modificationDatesForKeys:v8 error:&v27];
  v10 = v27;
  v11 = [v9 objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    if (v11)
    {
      v26 = v10;
      v13 = [self hdhr_atrialFibrillationOnboardingCompletionVersionWithError:&v26];
      v14 = v26;

      integerValue = [v13 integerValue];
      if (!integerValue)
      {
        v16 = 0;
        v10 = v14;
        goto LABEL_21;
      }

      v10 = v14;
    }

    v16 = v11;
    goto LABEL_21;
  }

  hk_isDatabaseAccessibilityError = [v10 hk_isDatabaseAccessibilityError];
  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2D8];
  v19 = *MEMORY[0x277CCC2D8];
  if (hk_isDatabaseAccessibilityError)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
      v21 = objc_opt_class();
      *buf = 138543362;
      v29 = v21;
      v22 = v21;
      _os_log_impl(&dword_229486000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Database is inaccessible; can't determine onboarding completion date", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [HDKeyValueDomain(HKHeartRhythm) hdhr_atrialFibrillationOnboardingCompletedDateWithError:v18];
  }

  if (a3)
  {
    v23 = v10;
    v16 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v16 = 0;
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (uint64_t)hdhr_setAtrialFibrillationDetectionCurrentOnboardingVersionCompletedInCountryCode:()HKHeartRhythm error:
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCE460]), v7, (v8 & 1) == 0))
  {
    [HDKeyValueDomain(HKHeartRhythm) hdhr_setAtrialFibrillationDetectionCurrentOnboardingVersionCompletedInCountryCode:error:];
  }

  v9 = *MEMORY[0x277CCB840];
  v14[0] = *MEMORY[0x277CCB838];
  v14[1] = v9;
  v15[0] = v6;
  v15[1] = &unk_283CD2650;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [self setValuesWithDictionary:v10 error:a4];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)hdhr_resetAtrialFibrillationDetectionOnboardingWithError:()HKHeartRhythm
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([self category] != 105 || (objc_msgSend(self, "domainName"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCE460]), v5, (v6 & 1) == 0))
  {
    [HDKeyValueDomain(HKHeartRhythm) hdhr_resetAtrialFibrillationDetectionOnboardingWithError:];
  }

  v7 = *MEMORY[0x277CCB840];
  v12[0] = *MEMORY[0x277CCB838];
  v12[1] = v7;
  v13[0] = &stru_283CC4740;
  v13[1] = &unk_283CD2668;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [self setValuesWithDictionary:v8 error:a3];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)hdhr_atrialFibrillationOnboardingCountryCodeWithError:()HKHeartRhythm .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_atrialFibrillationOnboardingCountryCodeWithError:()HKHeartRhythm .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Error reading onboarding country code: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdhr_atrialFibrillationOnboardingCompletionVersionWithError:()HKHeartRhythm .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_atrialFibrillationOnboardingCompletedDateWithError:()HKHeartRhythm .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_atrialFibrillationOnboardingCompletedDateWithError:()HKHeartRhythm .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Error reading onboarding completion date: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)hdhr_setAtrialFibrillationDetectionCurrentOnboardingVersionCompletedInCountryCode:()HKHeartRhythm error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdhr_resetAtrialFibrillationDetectionOnboardingWithError:()HKHeartRhythm .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults && [self.domainName isEqualToString:kHKHeartRhythmDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

@end