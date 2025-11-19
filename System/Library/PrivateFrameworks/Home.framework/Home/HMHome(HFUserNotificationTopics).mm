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
    v6 = [a1 accessories];
    v7 = [v6 na_any:&__block_literal_global_273];

    if (v7)
    {
      v8 = +[HFUserNotificationServiceTopic _cameraTopic];
      [v5 na_safeAddObject:v8];
    }

    v9 = [a1 hf_applianceAccessories];
    if ([v9 count])
    {
      v10 = HFLogForCategory(0x34uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218242;
        v32 = [v9 count];
        v33 = 2112;
        *v34 = v9;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Adding appliance HFUserNotificationServiceTopic. Found %lu accessories: %@", &v31, 0x16u);
      }

      v11 = +[HFUserNotificationServiceTopic _applianceTopic];
      [v5 na_safeAddObject:v11];
    }
  }

  if ([a1 hf_shouldShowAnnounceFeatureForThisHome])
  {
    v12 = +[HFUserNotificationServiceTopic _announceTopic];
    [v5 na_safeAddObject:v12];
  }

  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  v14 = [v13 homeManager];
  v15 = [v14 hasOptedToHH2];

  v16 = HFLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [a1 hf_canUpdateToHH2];
    v18 = [a1 hf_hasHomePods];
    v19 = [a1 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory];
    v20 = +[HFHomeKitDispatcher sharedDispatcher];
    v21 = [v20 homeManager];
    v22 = [v21 homeSafetySecurityEnabled];
    v31 = 138413570;
    v32 = a1;
    v33 = 1024;
    *v34 = v17;
    *&v34[4] = 1024;
    *&v34[6] = v15;
    v35 = 1024;
    v36 = v18;
    v37 = 1024;
    v38 = v19;
    v39 = 1024;
    v40 = v22;
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Home:%@ canUpdateToHH2:%{BOOL}d hasOptedToHH2:%{BOOL}d hasHomePods:%{BOOL}d hasAtleastOneSafetyAndSecuritySupportedAccessory = %{BOOL}d, homeSafetySecurityEnabled = %{BOOL}d ", &v31, 0x2Au);
  }

  if (![a1 hf_hasHomePods] || !objc_msgSend(a1, "hf_canUpdateToHH2"))
  {
    v23 = 0;
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v23 = [a1 hf_canEnableAudioAnalysisAfterHH2Upgrade];
  if (v15)
  {
LABEL_18:
    v15 = [a1 hf_hasAtleastOneAudioAnalysisSupportedAccessory];
  }

LABEL_19:
  if (_os_feature_enabled_impl())
  {
    v24 = 1;
    if (([a1 hf_shouldShowActivityLogSettingForTargetKind:1] & 1) == 0)
    {
      v24 = [a1 hf_shouldShowActivityLogSettingForTargetKind:0];
    }

    if ((v23 | v15))
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
    v27 = [a1 hf_shouldShowActivityLogSettingForTargetKind:0];
    if (((v23 | v15) & 1) != 0 || v27)
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
  v4 = [v3 homeManager];
  v5 = [v4 hasOptedToHH2];

  if (v5)
  {
    v6 = [a1 residentDevices];
    v7 = [v6 count] != 0;
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
    v33 = v5;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s hasOptedToHH2 = %{BOOL}d, shouldShowNotificationsItem = %{BOOL}d ", buf, 0x18u);
  }

  if (v7)
  {
    v9 = [a1 accessories];
    v10 = [v9 na_flatMap:&__block_literal_global_279];
    v11 = [v10 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_285];

    v12 = [objc_opt_class() _hf_groupedServiceTypeTopics];
    v13 = MEMORY[0x277CBEB98];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke_4;
    v27 = &unk_277DFDAE8;
    v28 = v12;
    v29 = a1;
    v14 = v12;
    v15 = [v11 na_dictionaryByMappingValues:&v24];
    v16 = [v15 allValues];
    v17 = [v13 setWithArray:v16];

    v18 = [v17 allObjects];
    [v2 addObjectsFromArray:v18];
  }

  v19 = [a1 _hf_accessoryTopics:v7];
  [v2 addObjectsFromArray:v19];

  v20 = [a1 hf_energyManager];
  LODWORD(v19) = [v20 effectiveGridForecastSupported];

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
  v5 = [v4 hf_userNotificationSettings];

  if (v5)
  {
    v6 = [a1 hf_userNotificationServiceTopics];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HMHome_HFUserNotificationTopics__hf_userNotificationTopicForService___block_invoke;
    v9[3] = &unk_277DFDAC0;
    v10 = v4;
    v7 = [v6 na_firstObjectPassingTest:v9];
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
  v5 = [v4 hf_userNotificationSettings];
  if (v5 && (v6 = v5, [v4 accessory], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hf_isNotificationSupportedCamera"), v7, v6, v8))
  {
    v9 = [v4 accessory];
    v10 = [v9 category];
    v11 = [v10 categoryType];

    v12 = [a1 hf_userNotificationServiceTopics];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__HMHome_HFUserNotificationTopics__hf_userNotificationTopicForCameraProfile___block_invoke;
    v16[3] = &unk_277DFDAC0;
    v17 = v11;
    v13 = v11;
    v14 = [v12 na_firstObjectPassingTest:v16];
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
    v8 = [a1 hf_userNotificationTopicForService:v7];
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
      v8 = [a1 hf_userNotificationTopicForCameraProfile:v11];
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
  v5 = [a1 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMHome_HFUserNotificationTopics__hf_servicesAffectedByServiceTopic___block_invoke;
  v9[3] = &unk_277DFADE8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_flatMap:v9];

  return v7;
}

- (id)hf_cameraProfilesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  v5 = [a1 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HMHome_HFUserNotificationTopics__hf_cameraProfilesAffectedByServiceTopic___block_invoke;
  v9[3] = &unk_277DFADE8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_flatMap:v9];

  return v7;
}

- (id)hf_safetyAndSecurityAccessoriesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  v5 = [a1 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__HMHome_HFUserNotificationTopics__hf_safetyAndSecurityAccessoriesAffectedByServiceTopic___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v9];

  return v7;
}

- (id)hf_vacuumAccessoriesAffectedByServiceTopic:()HFUserNotificationTopics
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 accessoryType];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 deviceType];
  v9 = [v8 unsignedIntegerValue];

  if (v9 == 116)
  {
    v10 = [a1 hf_applianceAccessories];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (id)hf_applianceAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_298];

  return v2;
}

- (id)hf_allObjectsAffectedByServiceTopic:()HFUserNotificationTopics
{
  v13[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 hf_servicesAffectedByServiceTopic:v4];
  v13[0] = v5;
  v6 = [a1 hf_cameraProfilesAffectedByServiceTopic:v4];
  v13[1] = v6;
  v7 = [a1 hf_safetyAndSecurityAccessoriesAffectedByServiceTopic:v4];
  v13[2] = v7;
  v8 = [a1 hf_vacuumAccessoriesAffectedByServiceTopic:v4];

  v13[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v10 = [v9 na_arrayByFlattening];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end