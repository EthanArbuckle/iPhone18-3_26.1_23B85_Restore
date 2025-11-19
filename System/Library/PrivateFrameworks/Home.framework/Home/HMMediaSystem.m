@interface HMMediaSystem
@end

@implementation HMMediaSystem

void __50__HMMediaSystem_HFAdditions__hf_fakeDebugSymptoms__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 hf_fakeDebugSymptoms];
  v3 = [v4 allObjects];
  [v2 addObjectsFromArray:v3];
}

BOOL __61__HMMediaSystem_HFHomeKitObjectConformance__hf_isValidObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 accessory];
  v4 = [v3 home];
  v5 = v4 != 0;

  return v5;
}

uint64_t __61__HMMediaSystem_HFHomeKitObjectConformance__hf_isValidObject__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __78__HMMediaSystem_HFMediaAccessoryProfileAdditions__topSymptomsHandlerAccessory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 symptomsHandler];
  v6 = [v5 hf_symptomsSortedByPriority];
  v7 = [v6 firstObject];

  v8 = [v4 symptomsHandler];

  v9 = [v8 hf_symptomsSortedByPriority];
  v10 = [v9 firstObject];

  v11 = [MEMORY[0x277CD1E88] hf_symptomArraySortComparator];
  v12 = (v11)[2](v11, v7, v10);

  return v12;
}

uint64_t __78__HMMediaSystem_HFMediaAccessoryProfileAdditions__topSymptomsHandlerAccessory__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __65__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_isReachable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isReachable];
  v4 = [v2 hf_fakeUnreachableError];

  return (v4 ^ 1) & v3;
}

uint64_t __75__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_isAppleMusicReachable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteLoginHandler];
  v3 = [v2 isControllable];

  return v3;
}

uint64_t __82__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_isAccessorySettingsReachable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [v2 isControllable];

  return v3;
}

id __75__HMMediaSystem_HFMediaAccessoryProfileAdditions__homekitObjectIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

id __90__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_appleMusicCurrentLoggedInAccountDSID__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 hf_appleMusicCurrentLoggedInAccountDSID];

  return v3;
}

void __86__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke_2;
  v6[3] = &unk_277DFEA30;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 fetchSupportedMultiUserLanguageCodes:v6];
}

void __86__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(*(a1 + 48));
      v28 = 138412546;
      v29 = v27;
      v30 = 2112;
      v31 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages [%@]", &v28, 0x16u);
    }

    [*(a1 + 32) finishWithNoResult];
    goto LABEL_20;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = NSStringFromSelector(*(a1 + 48));
    v28 = 138412802;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Supported voice recognition languages %@", &v28, 0x20u);
  }

  v11 = [*(a1 + 40) accessories];
  v12 = [v11 anyObject];
  if ([v12 hf_isSiriEndpoint])
  {

LABEL_10:
    v16 = [*(a1 + 40) hf_siriLanguageOptionsManager];
    v17 = [v16 selectedLanguageOption];
    goto LABEL_15;
  }

  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  v14 = [v13 homeManager];
  v15 = [v14 hasOptedToHH2];

  if (v15)
  {
    goto LABEL_10;
  }

  v16 = [*(a1 + 40) hf_settingsAdapterManager];
  v18 = [v16 adapterForIdentifier:@"SiriLanguageAdapter"];
  objc_opt_class();
  v19 = v18;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v17 = [v21 selectedLanguageOption];

LABEL_15:
  if (v17 && ([v17 recognitionLanguage], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v5, "containsObject:", v22), v22, (v23 & 1) != 0))
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v24 = *(a1 + 32);
    v25 = [MEMORY[0x277CCA9B8] hf_errorWithCode:45];
    [v24 finishWithError:v25];
  }

LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
}

void __62__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_tileSize__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HFHomeKitObjectSettingsStore tileSizeForObject:a2];
  [v2 na_safeAddObject:v3];
}

id __71__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_containedServices__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 services];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __63__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_isInRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

@end