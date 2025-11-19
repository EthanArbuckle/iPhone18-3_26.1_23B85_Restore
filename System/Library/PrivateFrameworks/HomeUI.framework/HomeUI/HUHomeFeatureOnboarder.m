@interface HUHomeFeatureOnboarder
- (HUHomeFeatureOnboarder)initWithFeatures:(id)a3 home:(id)a4 devices:(id)a5 usageOptions:(id)a6;
- (HUHomeFeatureOnboarder)initWithFeatures:(id)a3 home:(id)a4 usageOptions:(id)a5;
- (HUHomeFeatureOnboarder)initWithGroupedFeatures:(id)a3 home:(id)a4 usageOptions:(id)a5;
- (id)_subclass_buildAllFlowGroupsFromFeatureGroups:(id)a3 usageOptions:(id)a4;
- (id)getPostProcessingFlowsForResults:(id)a3;
@end

@implementation HUHomeFeatureOnboarder

- (HUHomeFeatureOnboarder)initWithFeatures:(id)a3 home:(id)a4 devices:(id)a5 usageOptions:(id)a6
{
  objc_storeStrong(&self->_devices, a5);
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObject:v14];

  v16 = [(HUHomeFeatureOnboarder *)self initWithGroupedFeatures:v15 home:v13 usageOptions:v12];
  return v16;
}

- (HUHomeFeatureOnboarder)initWithFeatures:(id)a3 home:(id)a4 usageOptions:(id)a5
{
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = [v8 arrayWithObject:a3];
  v12 = [(HUHomeFeatureOnboarder *)self initWithGroupedFeatures:v11 home:v10 usageOptions:v9];

  return v12;
}

- (HUHomeFeatureOnboarder)initWithGroupedFeatures:(id)a3 home:(id)a4 usageOptions:(id)a5
{
  objc_storeStrong(&self->_home, a4);
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v14.receiver = self;
  v14.super_class = HUHomeFeatureOnboarder;
  v12 = [(HUFeatureOnboarder *)&v14 initWithGroupedFeatures:v11 usageOptions:v10];

  return v12;
}

- (id)_subclass_buildAllFlowGroupsFromFeatureGroups:(id)a3 usageOptions:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (![v8 count])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUHomeFeatureOnboarder.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"featureGroups.count != 0"}];
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HUHomeFeatureOnboarder__subclass_buildAllFlowGroupsFromFeatureGroups_usageOptions___block_invoke;
  v16[3] = &unk_277DBECE8;
  v19 = a2;
  v16[4] = self;
  v17 = v7;
  v10 = v9;
  v18 = v10;
  v11 = v7;
  [v8 na_each:v16];

  v12 = v18;
  v13 = v10;

  return v10;
}

void __85__HUHomeFeatureOnboarder__subclass_buildAllFlowGroupsFromFeatureGroups_usageOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HUHomeFeatureOnboarder.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"currentFeatureGroup.count != 0"}];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HUHomeFeatureOnboarder__subclass_buildAllFlowGroupsFromFeatureGroups_usageOptions___block_invoke_2;
  v9[3] = &unk_277DBECC0;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  v7 = [v3 na_map:v9];
  [*(a1 + 48) addObject:v7];
}

HUHomeHubMigrationOnboardingFlow *__85__HUHomeFeatureOnboarder__subclass_buildAllFlowGroupsFromFeatureGroups_usageOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  switch([v3 unsignedIntegerValue])
  {
    case 0:
      v4 = [HUSwitchHomesWelcomeOnboardingFlow alloc];
      v5 = [*(a1 + 32) home];
      v6 = [(HUSwitchHomesWelcomeOnboardingFlow *)v4 initWithHome:v5];
      goto LABEL_17;
    case 1:
      v11 = HULanguageSetupOnboardingFlow;
      goto LABEL_16;
    case 2:
      v11 = HUVoiceProfileOnboardingFlow;
      goto LABEL_16;
    case 3:
      v11 = HUPersonalRequestsOnboardingFlow;
      goto LABEL_16;
    case 4:
      v11 = HUAnnounceOnboardingFlow;
      goto LABEL_16;
    case 5:
      v11 = HUHomeTheaterOnboardingFlow;
      goto LABEL_16;
    case 6:
      v11 = HUTVViewingProfilesOnboardingFlow;
      goto LABEL_16;
    case 7:
      v11 = HUNaturalLightingOnboardingFlow;
      goto LABEL_16;
    case 8:
      v11 = HUCameraRecordingOnboardingFlow;
      goto LABEL_16;
    case 9:
      v11 = HUAccessoryFirmwareUpdateOnboardingFlow;
      goto LABEL_16;
    case 10:
      v11 = HULocationServicesOnboardingFlow;
      goto LABEL_16;
    case 11:
      v7 = [HUHomeHubMigrationOnboardingFlow alloc];
      v8 = *(a1 + 40);
      v5 = [*(a1 + 32) home];
      v9 = [*(a1 + 32) devices];
      v10 = [(HUHomeHubMigrationOnboardingFlow *)v7 initWithUsageOptions:v8 home:v5 devices:v9];

      break;
    case 12:
      v11 = HUUtilityOnboardingFlow;
LABEL_16:
      v12 = [v11 alloc];
      v13 = *(a1 + 40);
      v5 = [*(a1 + 32) home];
      v6 = [v12 initWithUsageOptions:v13 home:v5];
LABEL_17:
      v10 = v6;
      break;
    default:
      v5 = [MEMORY[0x277CCA890] currentHandler];
      [v5 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HUHomeFeatureOnboarder.m" lineNumber:194 description:{@"Couldn't find a feature flow for %@", v3}];
      v10 = 0;
      break;
  }

  return v10;
}

- (id)getPostProcessingFlowsForResults:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUHomeFeatureOnboarder *)self home];
  v7 = [HUHomeFeatureOnboardingUtilities home:v6 checkForOwnerUpgradeRequirementsFromResults:v5];

  if (HFForceOwnerMustUpgradeOnboarding())
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v39 = 138412802;
      v40 = self;
      v41 = 2112;
      v42 = v9;
      v43 = 2048;
      v44 = v7;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Forcing Owner Upgrade requirements %lu", &v39, 0x20u);
    }

    v7 = 3;
  }

  else if (!v7)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v39 = 138412802;
    v40 = self;
    v41 = 2112;
    v42 = v11;
    v43 = 2048;
    v44 = v7;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Owner Upgrade requirements %lu", &v39, 0x20u);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [HUOwnerMustUpgradeOnboardingFlow alloc];
  v14 = [(HUHomeFeatureOnboarder *)self home];
  v15 = [(HUOwnerMustUpgradeOnboardingFlow *)v13 initWithUpgradeRequirements:v7 home:v14];
  [v12 na_safeAddObject:v15];

LABEL_9:
  v16 = [(HUHomeFeatureOnboarder *)self home];
  v17 = [HUHomeFeatureOnboardingUtilities home:v16 checkForMultiUserDeviceUpgradeRequirements:v5];

  if (HKForceDevicesNeedUpgrade())
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v39 = 138412802;
      v40 = self;
      v41 = 2112;
      v42 = v19;
      v43 = 2048;
      v44 = v17;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Forcing Multi User Device Upgrade requirements %lu", &v39, 0x20u);
    }

    v17 = 3;
  }

  else if (!v17)
  {
    goto LABEL_19;
  }

  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    v39 = 138412802;
    v40 = self;
    v41 = 2112;
    v42 = v21;
    v43 = 2048;
    v44 = v17;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@ Upgrade Multi User Devices requirements %lu", &v39, 0x20u);
  }

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB18] array];
  }

  v22 = [HUUpgradeMultiUserDevicesOnboardingFlow alloc];
  v23 = [(HUHomeFeatureOnboarder *)self home];
  v24 = [(HUUpgradeMultiUserDevicesOnboardingFlow *)v22 initWithUpgradeRequirements:v17 home:v23];
  [v12 na_safeAddObject:v24];

LABEL_19:
  v25 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (v25)
  {
    if (![HUHomeFeatureOnboardingUtilities hasUserSaidYesToVoiceIdentificationInResults:v5])
    {
      goto LABEL_30;
    }

    if (!v12)
    {
      v12 = [MEMORY[0x277CBEB18] array];
    }

    v26 = [(HUHomeFeatureOnboarder *)self home];
    v27 = [HUHomeFeatureOnboardingUtilities analyzeHomeAssistantDevicesForSupportedVoiceRecognitionLanguages:v25 home:v26];

    v28 = [v27 objectForKeyedSubscript:@"languageMismatch"];
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [(HUHomeFeatureOnboarder *)v28 count];
      v39 = 138412802;
      v40 = self;
      v41 = 2112;
      v42 = v30;
      v43 = 2048;
      v44 = v31;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@ Found %lu HomePods with unsupported languages", &v39, 0x20u);
    }

    if ([(HUHomeFeatureOnboarder *)v28 count])
    {
      v32 = [HUHomeAssistantDevicesUnsupportedLanguageFlow alloc];
      v33 = [(HUHomeFeatureOnboarder *)self home];
      v34 = [(HUHomeAssistantDevicesUnsupportedLanguageFlow *)v32 initWithHomeAssistantDevicesHavingLanguageMismatch:v28 home:v33];
      [v12 na_safeAddObject:v34];
    }
  }

  else
  {
    v27 = HFLogForCategory();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v28 = NSStringFromSelector(a2);
    v39 = 138412290;
    v40 = v28;
    _os_log_error_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", &v39, 0xCu);
  }

LABEL_29:
LABEL_30:
  v35 = HFLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = NSStringFromSelector(a2);
    v37 = [v12 count];
    v39 = 138413058;
    v40 = self;
    v41 = 2112;
    v42 = v36;
    v43 = 2048;
    v44 = v37;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@ postProcessingFlowGroup has %lu flows: %@", &v39, 0x2Au);
  }

  return v12;
}

@end