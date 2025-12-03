@interface HMNetworkConfigurationProfile(HFAdditions)
+ (BOOL)hf_targetProtectionModeIsValid:()HFAdditions;
+ (id)_localizedStringForPurpose;
+ (id)_validCurrentModesForTargetModes;
+ (id)hf_detailedLocalizedDescriptionForTargetProtectionMode:()HFAdditions;
+ (id)hf_detailedLocalizedTitleForTargetProtectionMode:()HFAdditions;
+ (id)hf_localizedDescriptionForAllowedHostPurpose:()HFAdditions;
+ (id)hf_localizedDescriptionForCredentialType:()HFAdditions;
+ (id)hf_localizedTitleForTargetProtectionMode:()HFAdditions;
+ (uint64_t)hf_currentProtectionMode:()HFAdditions isValidForTargetProtectionMode:;
- (uint64_t)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;
- (uint64_t)hf_hasCurrentNetworkAccessViolation;
- (uint64_t)hf_requiresManualWiFiReconfiguration;
- (uint64_t)hf_targetProtectionModeDetailedLocalizedDescription;
- (uint64_t)hf_targetProtectionModeDetailedLocalizedTitle;
- (uint64_t)hf_targetProtectionModeIsValid;
- (uint64_t)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;
@end

@implementation HMNetworkConfigurationProfile(HFAdditions)

- (uint64_t)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
{
  v2 = objc_opt_class();
  targetProtectionMode = [self targetProtectionMode];

  return [v2 hf_localizedTitleForTargetProtectionMode:targetProtectionMode];
}

- (uint64_t)hf_targetProtectionModeDetailedLocalizedTitle
{
  v2 = objc_opt_class();
  targetProtectionMode = [self targetProtectionMode];

  return [v2 hf_detailedLocalizedTitleForTargetProtectionMode:targetProtectionMode];
}

- (uint64_t)hf_targetProtectionModeDetailedLocalizedDescription
{
  v2 = objc_opt_class();
  targetProtectionMode = [self targetProtectionMode];

  return [v2 hf_detailedLocalizedDescriptionForTargetProtectionMode:targetProtectionMode];
}

- (uint64_t)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
{
  v2 = objc_opt_class();
  credentialType = [self credentialType];

  return [v2 hf_localizedDescriptionForCredentialType:credentialType];
}

- (uint64_t)hf_targetProtectionModeIsValid
{
  v2 = objc_opt_class();
  targetProtectionMode = [self targetProtectionMode];

  return [v2 hf_targetProtectionModeIsValid:targetProtectionMode];
}

- (uint64_t)hf_hasCurrentNetworkAccessViolation
{
  accessViolation = [self accessViolation];
  if (accessViolation)
  {
    accessViolation2 = [self accessViolation];
    hasCurrentViolation = [accessViolation2 hasCurrentViolation];
  }

  else
  {
    hasCurrentViolation = 0;
  }

  return hasCurrentViolation;
}

- (uint64_t)hf_requiresManualWiFiReconfiguration
{
  if ([self supportsWiFiReconfiguration])
  {
    accessory = [self accessory];
    v3 = [accessory isReachable] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return [self hf_requiresWiFiReconfiguration] & v3;
}

+ (id)hf_localizedTitleForTargetProtectionMode:()HFAdditions
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 3)
    {
      v4 = @"HFNetworkProtectionLevelOpen";
    }

    else if (a3 == 1)
    {
      v4 = @"HFNetworkProtectionLevelHomeKit";
    }

    else
    {
      v5 = HFLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = a3;
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Invalid targetProtectionMode %li", &v9, 0xCu);
      }

      v4 = @"HFNetworkProtectionLevelUnknown";
    }
  }

  else
  {
    v4 = @"HFNetworkProtectionLevelAuto";
  }

  v6 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)hf_detailedLocalizedTitleForTargetProtectionMode:()HFAdditions
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 3)
    {
      v4 = @"HFNetworkProtectionLevelOpen_Detail";
    }

    else if (a3 == 1)
    {
      v4 = @"HFNetworkProtectionLevelHomeKit_Detail";
    }

    else
    {
      v5 = HFLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = a3;
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Invalid targetProtectionMode %li", &v9, 0xCu);
      }

      v4 = @"HFNetworkProtectionLevelUnknown_Detail";
    }
  }

  else
  {
    v4 = @"HFNetworkProtectionLevelAuto_Detail";
  }

  v6 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)hf_detailedLocalizedDescriptionForTargetProtectionMode:()HFAdditions
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 3)
    {
      v4 = @"HFNetworkProtectionLevelOpen_Description";
    }

    else if (a3 == 1)
    {
      v4 = @"HFNetworkProtectionLevelHomeKit_Description";
    }

    else
    {
      v5 = HFLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = a3;
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Invalid targetProtectionMode %li", &v9, 0xCu);
      }

      v4 = @"HFNetworkProtectionLevelUnknown_Description";
    }
  }

  else
  {
    v4 = @"HFNetworkProtectionLevelAuto_Description";
  }

  v6 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)hf_localizedDescriptionForAllowedHostPurpose:()HFAdditions
{
  _localizedStringForPurpose = [objc_opt_class() _localizedStringForPurpose];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__21;
  v30 = __Block_byref_object_dispose__21;
  v31 = [MEMORY[0x277CBEB58] set];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = a3;
  allKeys = [_localizedStringForPurpose allKeys];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __91__HMNetworkConfigurationProfile_HFAdditions__hf_localizedDescriptionForAllowedHostPurpose___block_invoke;
  v17 = &unk_277DFDDB0;
  v21 = a3;
  v19 = &v26;
  v6 = _localizedStringForPurpose;
  v18 = v6;
  v20 = &v22;
  [allKeys na_each:&v14];

  if (v23[3])
  {
    v7 = v27[5];
    v8 = [v6 objectForKeyedSubscript:{&unk_282524630, v14, v15, v16, v17}];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x277CCAAF0];
  allObjects = [v27[5] allObjects];
  v11 = [allObjects sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v12 = [v9 localizedStringByJoiningStrings:v11];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

+ (id)hf_localizedDescriptionForCredentialType:()HFAdditions
{
  if ((a3 - 1) > 2)
  {
    v4 = @"HFNetworkConfigurationCredential_Unknown";
  }

  else
  {
    v4 = off_277DFDDD0[a3 - 1];
  }

  v5 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);

  return v5;
}

+ (BOOL)hf_targetProtectionModeIsValid:()HFAdditions
{
  _validCurrentModesForTargetModes = [self _validCurrentModesForTargetModes];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [_validCurrentModesForTargetModes objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

+ (uint64_t)hf_currentProtectionMode:()HFAdditions isValidForTargetProtectionMode:
{
  _validCurrentModesForTargetModes = [self _validCurrentModesForTargetModes];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [_validCurrentModesForTargetModes objectForKeyedSubscript:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [v8 containsObject:v9];

  return v10;
}

+ (id)_validCurrentModesForTargetModes
{
  if (_MergedGlobals_286 != -1)
  {
    dispatch_once(&_MergedGlobals_286, &__block_literal_global_53_2);
  }

  v1 = qword_280E037B0;

  return v1;
}

+ (id)_localizedStringForPurpose
{
  if (qword_280E037B8 != -1)
  {
    dispatch_once(&qword_280E037B8, &__block_literal_global_75_2);
  }

  v1 = qword_280E037C0;

  return v1;
}

@end