@interface HUHomeFeatureOnboarder
- (HUHomeFeatureOnboarder)initWithFeatures:(id)features home:(id)home devices:(id)devices usageOptions:(id)options;
- (HUHomeFeatureOnboarder)initWithFeatures:(id)features home:(id)home usageOptions:(id)options;
- (HUHomeFeatureOnboarder)initWithGroupedFeatures:(id)features home:(id)home usageOptions:(id)options;
- (id)_subclass_buildAllFlowGroupsFromFeatureGroups:(id)groups usageOptions:(id)options;
- (id)getPostProcessingFlowsForResults:(id)results;
@end

@implementation HUHomeFeatureOnboarder

- (HUHomeFeatureOnboarder)initWithFeatures:(id)features home:(id)home devices:(id)devices usageOptions:(id)options
{
  objc_storeStrong(&self->_devices, devices);
  devicesCopy = devices;
  optionsCopy = options;
  homeCopy = home;
  featuresCopy = features;
  v15 = [MEMORY[0x277CBEA60] arrayWithObject:featuresCopy];

  v16 = [(HUHomeFeatureOnboarder *)self initWithGroupedFeatures:v15 home:homeCopy usageOptions:optionsCopy];
  return v16;
}

- (HUHomeFeatureOnboarder)initWithFeatures:(id)features home:(id)home usageOptions:(id)options
{
  v8 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  homeCopy = home;
  v11 = [v8 arrayWithObject:features];
  v12 = [(HUHomeFeatureOnboarder *)self initWithGroupedFeatures:v11 home:homeCopy usageOptions:optionsCopy];

  return v12;
}

- (HUHomeFeatureOnboarder)initWithGroupedFeatures:(id)features home:(id)home usageOptions:(id)options
{
  objc_storeStrong(&self->_home, home);
  homeCopy = home;
  optionsCopy = options;
  featuresCopy = features;
  v14.receiver = self;
  v14.super_class = HUHomeFeatureOnboarder;
  v12 = [(HUFeatureOnboarder *)&v14 initWithGroupedFeatures:featuresCopy usageOptions:optionsCopy];

  return v12;
}

- (id)_subclass_buildAllFlowGroupsFromFeatureGroups:(id)groups usageOptions:(id)options
{
  optionsCopy = options;
  groupsCopy = groups;
  if (![groupsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeFeatureOnboarder.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"featureGroups.count != 0"}];
  }

  array = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HUHomeFeatureOnboarder__subclass_buildAllFlowGroupsFromFeatureGroups_usageOptions___block_invoke;
  v16[3] = &unk_277DBECE8;
  v19 = a2;
  v16[4] = self;
  v17 = optionsCopy;
  v10 = array;
  v18 = v10;
  v11 = optionsCopy;
  [groupsCopy na_each:v16];

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

- (id)getPostProcessingFlowsForResults:(id)results
{
  v47 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  home = [(HUHomeFeatureOnboarder *)self home];
  v7 = [HUHomeFeatureOnboardingUtilities home:home checkForOwnerUpgradeRequirementsFromResults:resultsCopy];

  if (HFForceOwnerMustUpgradeOnboarding())
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v39 = 138412802;
      selfCopy6 = self;
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
    array = 0;
    goto LABEL_9;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v39 = 138412802;
    selfCopy6 = self;
    v41 = 2112;
    v42 = v11;
    v43 = 2048;
    v44 = v7;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Owner Upgrade requirements %lu", &v39, 0x20u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v13 = [HUOwnerMustUpgradeOnboardingFlow alloc];
  home2 = [(HUHomeFeatureOnboarder *)self home];
  v15 = [(HUOwnerMustUpgradeOnboardingFlow *)v13 initWithUpgradeRequirements:v7 home:home2];
  [array na_safeAddObject:v15];

LABEL_9:
  home3 = [(HUHomeFeatureOnboarder *)self home];
  v17 = [HUHomeFeatureOnboardingUtilities home:home3 checkForMultiUserDeviceUpgradeRequirements:resultsCopy];

  if (HKForceDevicesNeedUpgrade())
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v39 = 138412802;
      selfCopy6 = self;
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
    selfCopy6 = self;
    v41 = 2112;
    v42 = v21;
    v43 = 2048;
    v44 = v17;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@ Upgrade Multi User Devices requirements %lu", &v39, 0x20u);
  }

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v22 = [HUUpgradeMultiUserDevicesOnboardingFlow alloc];
  home4 = [(HUHomeFeatureOnboarder *)self home];
  v24 = [(HUUpgradeMultiUserDevicesOnboardingFlow *)v22 initWithUpgradeRequirements:v17 home:home4];
  [array na_safeAddObject:v24];

LABEL_19:
  v25 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (v25)
  {
    if (![HUHomeFeatureOnboardingUtilities hasUserSaidYesToVoiceIdentificationInResults:resultsCopy])
    {
      goto LABEL_30;
    }

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    home5 = [(HUHomeFeatureOnboarder *)self home];
    v27 = [HUHomeFeatureOnboardingUtilities analyzeHomeAssistantDevicesForSupportedVoiceRecognitionLanguages:v25 home:home5];

    v28 = [v27 objectForKeyedSubscript:@"languageMismatch"];
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(a2);
      v31 = [(HUHomeFeatureOnboarder *)v28 count];
      v39 = 138412802;
      selfCopy6 = self;
      v41 = 2112;
      v42 = v30;
      v43 = 2048;
      v44 = v31;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@ Found %lu HomePods with unsupported languages", &v39, 0x20u);
    }

    if ([(HUHomeFeatureOnboarder *)v28 count])
    {
      v32 = [HUHomeAssistantDevicesUnsupportedLanguageFlow alloc];
      home6 = [(HUHomeFeatureOnboarder *)self home];
      v34 = [(HUHomeAssistantDevicesUnsupportedLanguageFlow *)v32 initWithHomeAssistantDevicesHavingLanguageMismatch:v28 home:home6];
      [array na_safeAddObject:v34];
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
    selfCopy6 = v28;
    _os_log_error_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", &v39, 0xCu);
  }

LABEL_29:
LABEL_30:
  v35 = HFLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = NSStringFromSelector(a2);
    v37 = [array count];
    v39 = 138413058;
    selfCopy6 = self;
    v41 = 2112;
    v42 = v36;
    v43 = 2048;
    v44 = v37;
    v45 = 2112;
    v46 = array;
    _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@ postProcessingFlowGroup has %lu flows: %@", &v39, 0x2Au);
  }

  return array;
}

@end