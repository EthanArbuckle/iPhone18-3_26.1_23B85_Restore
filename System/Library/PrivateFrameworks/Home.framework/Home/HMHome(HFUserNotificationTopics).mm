@interface HMHome(HFUserNotificationTopics)
+ (id)_hf_groupedServiceTypeTopics;
+ (id)_hf_standaloneTopicNameLocalizationKeyForPrimaryServiceType:()HFUserNotificationTopics;
- (id)_hf_accessoryTopics:()HFUserNotificationTopics;
- (id)hf_allObjectsAffectedByServiceTopic:()HFUserNotificationTopics;
- (id)hf_applianceAccessories;
- (id)hf_cameraProfilesAffectedByServiceTopic:()HFUserNotificationTopics;
- (id)hf_safetyAndSecurityAccessoriesAffectedByServiceTopic:()HFUserNotificationTopics;
- (id)hf_servicesAffectedByServiceTopic:()HFUserNotificationTopics;
- (id)hf_userNotificationServiceTopics;
- (id)hf_userNotificationTopicForCameraProfile:()HFUserNotificationTopics;
- (id)hf_userNotificationTopicForObject:()HFUserNotificationTopics;
- (id)hf_userNotificationTopicForService:()HFUserNotificationTopics;
- (id)hf_vacuumAccessoriesAffectedByServiceTopic:()HFUserNotificationTopics;
@end

@implementation HMHome(HFUserNotificationTopics)

+ (id)_hf_groupedServiceTypeTopics
{
  if (qword_280E03410 != -1)
  {
    dispatch_once(&qword_280E03410, &__block_literal_global_222_0);
  }

  v1 = qword_280E03418;

  return v1;
}

+ (id)_hf_standaloneTopicNameLocalizationKeyForPrimaryServiceType:()HFUserNotificationTopics
{
  v3 = a3;
  if (qword_280E03460 != -1)
  {
    dispatch_once(&qword_280E03460, &__block_literal_global_263_0);
  }

  v4 = qword_280E03468;
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFUserNotificationServiceTopicName_%@", v5];

  return v6;
}

- (id)_hf_accessoryTopics:()HFUserNotificationTopics
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (a3)
  {
    accessories = [self accessories];
    v7 = [accessories na_any:&__block_literal_global_273];

    if (v7)
    {
      v8 = +[HFUserNotificationServiceTopic _cameraTopic];
      [v5 na_safeAddObject:v8];
    }

    hf_applianceAccessories = [self hf_applianceAccessories];
    if ([hf_applianceAccessories count])
    {
      v10 = HFLogForCategory(0x34uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218242;
        selfCopy = [hf_applianceAccessories count];
        v33 = 2112;
        *v34 = hf_applianceAccessories;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Adding appliance HFUserNotificationServiceTopic. Found %lu accessories: %@", &v31, 0x16u);
      }

      v11 = +[HFUserNotificationServiceTopic _applianceTopic];
      [v5 na_safeAddObject:v11];
    }
  }

  if ([self hf_shouldShowAnnounceFeatureForThisHome])
  {
    v12 = +[HFUserNotificationServiceTopic _announceTopic];
    [v5 na_safeAddObject:v12];
  }

  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v13 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  v16 = HFLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    hf_canUpdateToHH2 = [self hf_canUpdateToHH2];
    hf_hasHomePods = [self hf_hasHomePods];
    hf_hasAtleastOneSafetyAndSecuritySupportedAccessory = [self hf_hasAtleastOneSafetyAndSecuritySupportedAccessory];
    v20 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager2 = [v20 homeManager];
    homeSafetySecurityEnabled = [homeManager2 homeSafetySecurityEnabled];
    v31 = 138413570;
    selfCopy = self;
    v33 = 1024;
    *v34 = hf_canUpdateToHH2;
    *&v34[4] = 1024;
    *&v34[6] = hasOptedToHH2;
    v35 = 1024;
    v36 = hf_hasHomePods;
    v37 = 1024;
    v38 = hf_hasAtleastOneSafetyAndSecuritySupportedAccessory;
    v39 = 1024;
    v40 = homeSafetySecurityEnabled;
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Home:%@ canUpdateToHH2:%{BOOL}d hasOptedToHH2:%{BOOL}d hasHomePods:%{BOOL}d hasAtleastOneSafetyAndSecuritySupportedAccessory = %{BOOL}d, homeSafetySecurityEnabled = %{BOOL}d ", &v31, 0x2Au);
  }

  if (![self hf_hasHomePods] || !objc_msgSend(self, "hf_canUpdateToHH2"))
  {
    hf_canEnableAudioAnalysisAfterHH2Upgrade = 0;
    if (!hasOptedToHH2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  hf_canEnableAudioAnalysisAfterHH2Upgrade = [self hf_canEnableAudioAnalysisAfterHH2Upgrade];
  if (hasOptedToHH2)
  {
LABEL_18:
    hasOptedToHH2 = [self hf_hasAtleastOneAudioAnalysisSupportedAccessory];
  }

LABEL_19:
  if (_os_feature_enabled_impl())
  {
    v24 = 1;
    if (([self hf_shouldShowActivityLogSettingForTargetKind:1] & 1) == 0)
    {
      v24 = [self hf_shouldShowActivityLogSettingForTargetKind:0];
    }

    if ((hf_canEnableAudioAnalysisAfterHH2Upgrade | hasOptedToHH2))
    {
      v25 = +[HFUserNotificationServiceTopic _safetyAndSecurityTopic];
      [v5 na_safeAddObject:v25];
    }

    if (v24)
    {
      v26 = +[HFUserNotificationServiceTopic _activityHistoryTopic];
LABEL_29:
      v28 = v26;
      [v5 na_safeAddObject:v26];
    }
  }

  else
  {
    v27 = [self hf_shouldShowActivityLogSettingForTargetKind:0];
    if (((hf_canEnableAudioAnalysisAfterHH2Upgrade | hasOptedToHH2) & 1) != 0 || v27)
    {
      v26 = +[HFUserNotificationServiceTopic _safetyAndSecurityTopic];
      goto LABEL_29;
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)hf_userNotificationServiceTopics
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    residentDevices = [self residentDevices];
    v7 = [residentDevices count] != 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "[HMHome(HFUserNotificationTopics) hf_userNotificationServiceTopics]";
    v32 = 1024;
    v33 = hasOptedToHH2;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d, shouldShowNotificationsItem = %{BOOL}d ", buf, 0x18u);
  }

  if (v7)
  {
    accessories = [self accessories];
    v10 = [accessories na_flatMap:&__block_literal_global_279];
    v11 = [v10 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_285];

    _hf_groupedServiceTypeTopics = [objc_opt_class() _hf_groupedServiceTypeTopics];
    v13 = MEMORY[0x277CBEB98];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke_4;
    v27 = &unk_277DFDAE8;
    v28 = _hf_groupedServiceTypeTopics;
    selfCopy = self;
    v14 = _hf_groupedServiceTypeTopics;
    v15 = [v11 na_dictionaryByMappingValues:&v24];
    allValues = [v15 allValues];
    v17 = [v13 setWithArray:allValues];

    allObjects = [v17 allObjects];
    [v2 addObjectsFromArray:allObjects];
  }

  v19 = [self _hf_accessoryTopics:v7];
  [v2 addObjectsFromArray:v19];

  hf_energyManager = [self hf_energyManager];
  LODWORD(v19) = [hf_energyManager effectiveGridForecastSupported];

  if (v19)
  {
    v21 = +[HFUserNotificationServiceTopic _energyTopic];
    [v2 na_safeAddObject:v21];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_userNotificationTopicForService:()HFUserNotificationTopics
{
  v4 = a3;
  hf_userNotificationSettings = [v4 hf_userNotificationSettings];

  if (hf_userNotificationSettings)
  {
    hf_userNotificationServiceTopics = [self hf_userNotificationServiceTopics];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HMHome_HFUserNotificationTopics__hf_userNotificationTopicForService___block_invoke;
    v9[3] = &unk_277DFDAC0;
    v10 = v4;
    v7 = [hf_userNotificationServiceTopics na_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hf_userNotificationTopicForCameraProfile:()HFUserNotificationTopics
{
  v4 = a3;
  hf_userNotificationSettings = [v4 hf_userNotificationSettings];
  if (hf_userNotificationSettings && (v6 = hf_userNotificationSettings, [v4 accessory], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hf_isNotificationSupportedCamera"), v7, v6, v8))
  {
    accessory = [v4 accessory];
    category = [accessory category];
    categoryType = [category categoryType];

    hf_userNotificationServiceTopics = [self hf_userNotificationServiceTopics];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__HMHome_HFUserNotificationTopics__hf_userNotificationTopicForCameraProfile___block_invoke;
    v16[3] = &unk_277DFDAC0;
    v17 = categoryType;
    v13 = categoryType;
    v14 = [hf_userNotificationServiceTopics na_firstObjectPassingTest:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)hf_userNotificationTopicForObject:()HFUserNotificationTopics
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [self hf_userNotificationTopicForService:v7];
  }

  else
  {
    objc_opt_class();
    v9 = v5;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v8 = [self hf_userNotificationTopicForCameraProfile:v11];
    }

    else
    {
      NSLog(&cfstr_UnexpectedObje.isa, v9);
      v8 = 0;
    }
  }

  return v8;
}

- (id)hf_servicesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  accessories = [self accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMHome_HFUserNotificationTopics__hf_servicesAffectedByServiceTopic___block_invoke;
  v9[3] = &unk_277DFADE8;
  v10 = v4;
  v6 = v4;
  v7 = [accessories na_flatMap:v9];

  return v7;
}

- (id)hf_cameraProfilesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  accessories = [self accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HMHome_HFUserNotificationTopics__hf_cameraProfilesAffectedByServiceTopic___block_invoke;
  v9[3] = &unk_277DFADE8;
  v10 = v4;
  v6 = v4;
  v7 = [accessories na_flatMap:v9];

  return v7;
}

- (id)hf_safetyAndSecurityAccessoriesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  accessories = [self accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__HMHome_HFUserNotificationTopics__hf_safetyAndSecurityAccessoriesAffectedByServiceTopic___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [accessories na_filter:v9];

  return v7;
}

- (id)hf_vacuumAccessoriesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  objc_opt_class();
  accessoryType = [v4 accessoryType];

  if (objc_opt_isKindOfClass())
  {
    v6 = accessoryType;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  deviceType = [v7 deviceType];
  unsignedIntegerValue = [deviceType unsignedIntegerValue];

  if (unsignedIntegerValue == 116)
  {
    hf_applianceAccessories = [self hf_applianceAccessories];
  }

  else
  {
    hf_applianceAccessories = MEMORY[0x277CBEBF8];
  }

  return hf_applianceAccessories;
}

- (id)hf_applianceAccessories
{
  accessories = [self accessories];
  v2 = [accessories na_filter:&__block_literal_global_298];

  return v2;
}

- (id)hf_allObjectsAffectedByServiceTopic:()HFUserNotificationTopics
{
  v13[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self hf_servicesAffectedByServiceTopic:v4];
  v13[0] = v5;
  v6 = [self hf_cameraProfilesAffectedByServiceTopic:v4];
  v13[1] = v6;
  v7 = [self hf_safetyAndSecurityAccessoriesAffectedByServiceTopic:v4];
  v13[2] = v7;
  v8 = [self hf_vacuumAccessoriesAffectedByServiceTopic:v4];

  v13[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  na_arrayByFlattening = [v9 na_arrayByFlattening];

  v11 = *MEMORY[0x277D85DE8];

  return na_arrayByFlattening;
}

@end