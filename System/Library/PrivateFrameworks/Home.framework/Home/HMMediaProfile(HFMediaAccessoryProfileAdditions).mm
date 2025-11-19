@interface HMMediaProfile(HFMediaAccessoryProfileAdditions)
- (BOOL)hasValidSettings;
- (BOOL)hf_homePodIsCapableOfShowingSplitAccountError;
- (BOOL)isContainedWithinItemGroup;
- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager;
- (HFHomeKitSettingsValueManager)hf_settingsValueManager;
- (HFMediaAccessoryCommonSettingsManager)hf_mediaAccessoryCommonSettingsManager;
- (HFMediaValueManager)hf_mediaValueSource;
- (HFSiriLanguageOptionsManager)hf_siriLanguageOptionsManager;
- (id)accessories;
- (id)hf_analyticsClient;
- (id)hf_appleMusicCurrentLoggedInAccount;
- (id)hf_appleMusicCurrentLoggedInAccountDSID;
- (id)hf_categoryCapitalizedLocalizedDescription;
- (id)hf_categoryLowercaseLocalizedDescription;
- (id)hf_dateAdded;
- (id)hf_dependentHomeKitObjectsForDownstreamItems;
- (id)hf_deviceIdentifiers;
- (id)hf_displayName;
- (id)hf_fakeDebugSymptoms;
- (id)hf_fetchLog:()HFMediaAccessoryProfileAdditions timeout:;
- (id)hf_fetchLogListWithTimeout:()HFMediaAccessoryProfileAdditions;
- (id)hf_home;
- (id)hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount;
- (id)hf_homePodSupportsMultiUserLanguage;
- (id)hf_identify;
- (id)hf_idsDeviceIdentifierWithError:()HFMediaAccessoryProfileAdditions;
- (id)hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent;
- (id)hf_mediaRouteIdentifier;
- (id)hf_parentRoom;
- (id)hf_preferredMediaUser;
- (id)hf_updateDateAdded:()HFMediaAccessoryProfileAdditions;
- (id)homekitObjectIdentifiers;
- (id)mediaProfiles;
- (id)symptoms;
- (id)symptomsHandler;
- (uint64_t)hf_homePodSupportsMultiUser;
- (uint64_t)hf_isAccessorySettingsReachable;
- (uint64_t)hf_isAppleMusicReachable;
- (uint64_t)hf_isCurrentAccessory;
- (uint64_t)hf_isReachable;
- (uint64_t)hf_preferredUserSelectionType;
- (uint64_t)hf_supportsHomeTheater;
- (uint64_t)hf_supportsMediaActions;
- (uint64_t)hf_supportsMultiUser;
- (uint64_t)hf_supportsMusicAlarm;
- (uint64_t)hf_supportsPreferredMediaUser;
- (uint64_t)hf_supportsStereoPairing;
@end

@implementation HMMediaProfile(HFMediaAccessoryProfileAdditions)

- (id)accessories
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v1 na_setWithSafeObject:v2];

  return v3;
}

- (id)mediaProfiles
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v2 mediaProfile];
  v4 = [v1 na_setWithSafeObject:v3];

  return v4;
}

- (id)hf_home
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 accessory];
  v5 = [v4 home];

  if (!v5)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412546;
      v14 = a1;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@:%@ nil home. Please file a radar against “Home App | New Bugs” with any info you have on what you were doing.", &v13, 0x16u);
    }

    if (+[HFUtilities isInternalInstall])
    {
      v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:-1];
      v8 = +[HFErrorHandler sharedHandler];
      [v8 handleError:v7 operationType:@"HFOperationRemoveHomePodAlarm" options:0 retryBlock:0 cancelBlock:0];
    }

    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    v5 = [v9 home];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)hf_parentRoom
{
  v1 = [a1 accessory];
  v2 = [v1 room];

  return v2;
}

- (uint64_t)hf_isCurrentAccessory
{
  v1 = [a1 accessory];
  v2 = [v1 isCurrentAccessory];

  return v2;
}

- (id)symptomsHandler
{
  v1 = [a1 accessory];
  v2 = [v1 symptomsHandler];

  return v2;
}

- (id)symptoms
{
  v1 = [a1 symptomsHandler];
  v2 = [v1 symptoms];

  return v2;
}

- (id)hf_fakeDebugSymptoms
{
  v1 = [a1 accessory];
  v2 = [v1 hf_fakeDebugSymptoms];

  return v2;
}

- (uint64_t)hf_isReachable
{
  v1 = [a1 accessories];
  v2 = [v1 na_all:&__block_literal_global_397];

  return v2;
}

- (uint64_t)hf_supportsStereoPairing
{
  v2 = [a1 accessories];
  v3 = [v2 count] == 1;

  LODWORD(v2) = [a1 isItemGroup];
  v4 = [a1 hf_home];
  v5 = [a1 hf_backingAccessory];
  v6 = [v4 hf_mediaSystemForAccessory:v5];

  v7 = [a1 accessories];
  v8 = [v7 anyObject];
  v9 = [v8 hf_isHomePod];

  v10 = MEMORY[0x277CD1BF0];
  v11 = [a1 accessories];
  v12 = [v11 anyObject];
  v13 = [v10 supportsMediaSystem:v12];

  v14 = v3 & ~v2;
  if (v6)
  {
    v14 = 0;
  }

  return v14 & v9 & v13;
}

- (uint64_t)hf_supportsMusicAlarm
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 hf_backingAccessory];
  v3 = [v2 supportsMusicAlarm];

  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [a1 description];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Accessory Supports Music Alarm (%@) mediaProfileContainer (%@)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)hf_isAppleMusicReachable
{
  v1 = [a1 accessories];
  v2 = [v1 na_all:&__block_literal_global_400];

  return v2;
}

- (uint64_t)hf_isAccessorySettingsReachable
{
  v1 = [a1 accessories];
  v2 = [v1 na_all:&__block_literal_global_402];

  return v2;
}

- (HFMediaValueManager)hf_mediaValueSource
{
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v4 = [[HFMediaValueManager alloc] initWithMediaProfileContainer:a1];
    objc_setAssociatedObject(a1, a2, v4, 0x301);
  }

  return v4;
}

- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[HMMediaProfile(HFMediaAccessoryProfileAdditions) hf_settingsAdapterManager]";
      v10 = 2112;
      v11 = a1;
      _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "%s Creating new HFHomeKitSettingsAdapterManager for HMMediaProfile %@", &v8, 0x16u);
    }

    v4 = [[HFHomeKitSettingsAdapterManager alloc] initWithHomeKitSettingsVendor:a1];
    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hf_categoryCapitalizedLocalizedDescription
{
  v1 = [a1 accessory];
  v2 = [v1 hf_userFriendlyLocalizedCapitalizedDescription];

  return v2;
}

- (id)hf_categoryLowercaseLocalizedDescription
{
  v1 = [a1 accessory];
  v2 = [v1 hf_userFriendlyLocalizedLowercaseDescription];

  return v2;
}

- (id)hf_dependentHomeKitObjectsForDownstreamItems
{
  v2 = objc_opt_new();
  v3 = [a1 accessories];
  [v2 unionSet:v3];

  [v2 addObject:a1];
  v4 = [a1 settings];
  [v2 na_safeAddObject:v4];

  return v2;
}

- (uint64_t)hf_supportsMultiUser
{
  v1 = [a1 accessory];
  v2 = [v1 supportsMultiUser];

  return v2;
}

- (uint64_t)hf_supportsMediaActions
{
  v1 = [a1 accessory];
  v2 = [v1 supportsMediaActions];

  return v2;
}

- (uint64_t)hf_homePodSupportsMultiUser
{
  v2 = [a1 accessory];
  if ([v2 hf_isHomePod])
  {
    v3 = [a1 accessory];
    v4 = [v3 supportsMultiUser];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hf_homePodIsCapableOfShowingSplitAccountError
{
  v45 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isAMac])
  {
    goto LABEL_7;
  }

  v4 = [a1 hf_home];
  v5 = [v4 isMultiUserEnabled];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [a1 hf_backingAccessory];
  v7 = [v6 hf_isHomePod];

  if (!v7)
  {
    goto LABEL_7;
  }

  if ([a1 hf_homePodSupportsMultiUser] && (objc_msgSend(a1, "hf_home"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_currentUserIsOwner"), v8, v9))
  {
    v10 = [a1 hf_home];
    v11 = [v10 users];
    v12 = [v11 count] == 0;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  v13 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v25 = NSStringFromSelector(a2);
    v24 = +[HFUtilities isAMac];
    v26 = [a1 hf_home];
    v23 = [v26 isMultiUserEnabled];
    v16 = [a1 hf_backingAccessory];
    v17 = [v16 hf_isHomePod];
    v18 = [a1 hf_homePodSupportsMultiUser];
    v19 = [a1 hf_home];
    v20 = [v19 hf_currentUserIsOwner];
    v21 = [a1 hf_home];
    v22 = [v21 users];
    *buf = 138414338;
    v28 = a1;
    v29 = 2112;
    v30 = v25;
    v31 = 1024;
    v32 = v12;
    v33 = 1024;
    v34 = v24;
    v35 = 1024;
    v36 = v23;
    v37 = 1024;
    v38 = v17;
    v39 = 1024;
    v40 = v18;
    v41 = 1024;
    v42 = v20;
    v43 = 1024;
    v44 = [v22 count] == 0;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "%@:%@: %{BOOL}d (Mac = %{BOOL}d, MU enabled = %{BOOL}d, is HomePod = %{BOOL}d, MU HomePod = %{BOOL}d, is Owner = %{BOOL}d, Home has users = %{BOOL}d,)", buf, 0x40u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)hf_deviceIdentifiers
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v2 deviceIdentifier];
  v4 = [v1 na_setWithSafeObject:v3];

  return v4;
}

- (id)hf_mediaRouteIdentifier
{
  v1 = [a1 hf_deviceIdentifiers];
  v2 = [v1 anyObject];

  return v2;
}

- (BOOL)hasValidSettings
{
  v1 = [a1 settings];
  v2 = [v1 rootGroup];
  v3 = v2 != 0;

  return v3;
}

- (id)homekitObjectIdentifiers
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessory];
  v3 = [v2 uniqueIdentifier];
  v4 = [v1 setWithObject:v3];

  return v4;
}

- (BOOL)isContainedWithinItemGroup
{
  v2 = [a1 hf_home];
  v3 = [a1 accessory];
  v4 = [v2 hf_mediaSystemForAccessory:v3];
  v5 = v4 != 0;

  return v5;
}

- (id)hf_appleMusicCurrentLoggedInAccount
{
  v1 = [a1 accessory];
  v2 = [v1 remoteLoginHandler];

  v3 = [v2 loggedInAccount];

  return v3;
}

- (id)hf_appleMusicCurrentLoggedInAccountDSID
{
  v1 = [a1 hf_appleMusicCurrentLoggedInAccount];
  v2 = [v1 aa_altDSID];

  return v2;
}

- (id)hf_homePodSupportsMultiUserLanguage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke;
  v4[3] = &unk_277DF2770;
  v4[4] = a1;
  v4[5] = a2;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

- (id)hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount__block_invoke;
  v4[3] = &unk_277DF2770;
  v4[4] = a1;
  v4[5] = a2;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

- (id)hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __107__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent__block_invoke;
  v4[3] = &unk_277DF2770;
  v4[4] = a1;
  v4[5] = a2;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

- (HFHomeKitSettingsValueManager)hf_settingsValueManager
{
  v4 = [a1 settings];

  if (v4)
  {
    v4 = objc_getAssociatedObject(a1, a2);
    if (!v4)
    {
      v5 = [HFHomeKitSettingsValueManager alloc];
      v6 = [a1 settings];
      v7 = [a1 homekitObjectIdentifiers];
      v4 = [(HFHomeKitSettingsValueManager *)v5 initWithSettings:v6 homeKitObjectIdentifiers:v7];

      objc_setAssociatedObject(a1, a2, v4, 1);
    }
  }

  return v4;
}

- (HFMediaAccessoryCommonSettingsManager)hf_mediaAccessoryCommonSettingsManager
{
  v2 = [a1 accessories];
  v3 = [v2 allObjects];
  v4 = [v3 lastObject];
  if (([v4 hf_isSiriEndpoint] & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [a1 accessories];
  v6 = [v5 allObjects];
  v7 = [v6 lastObject];
  if (![v7 hf_isSiriEndpoint])
  {

    goto LABEL_8;
  }

  v15 = [a1 accessories];
  v8 = [v15 allObjects];
  v9 = [v8 lastObject];
  v10 = [v9 siriEndpointProfile];
  v16 = [v10 supportsOnboarding];

  if ((v16 & 1) == 0)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v11 = objc_getAssociatedObject(a1, sel_hf_mediaAccessoryCommonSettingsManager);
  if (!v11)
  {
    v12 = [HFMediaAccessoryCommonSettingsManager alloc];
    v13 = [a1 hf_home];
    v11 = [(HFMediaAccessoryCommonSettingsManager *)v12 initWithMediaProfileContainer:a1 home:v13];

    objc_setAssociatedObject(a1, sel_hf_mediaAccessoryCommonSettingsManager, v11, 1);
  }

LABEL_10:

  return v11;
}

- (HFSiriLanguageOptionsManager)hf_siriLanguageOptionsManager
{
  v2 = [a1 accessories];
  v3 = [v2 allObjects];
  v4 = [v3 lastObject];
  if ([v4 hf_isSiriEndpoint])
  {
  }

  else
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v6 = [v5 homeManager];
    v7 = [v6 hasOptedToHH2];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

  v8 = objc_getAssociatedObject(a1, sel_hf_siriLanguageOptionsManager);
  if (!v8)
  {
    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    v10 = [v9 homeManager];

    v11 = [HFSiriLanguageOptionsManager alloc];
    v12 = [v10 hf_accessorySettingsController];
    v13 = [a1 accessory];
    v14 = [v13 uniqueIdentifier];
    v15 = [a1 hf_home];
    v8 = [(HFSiriLanguageOptionsManager *)v11 initWithSettingsController:v12 accessoryIdentifier:v14 home:v15];

    objc_setAssociatedObject(a1, sel_hf_siriLanguageOptionsManager, v8, 1);
  }

LABEL_7:

  return v8;
}

- (id)hf_analyticsClient
{
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D36B58]) initWithErrorHandler:&__block_literal_global_412];
    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  return v4;
}

- (id)hf_idsDeviceIdentifierWithError:()HFMediaAccessoryProfileAdditions
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];
  v7 = [v6 hasOptedToHH2];

  if (v7)
  {
    v8 = @"com.apple.private.alloy.home";
  }

  else
  {
    v8 = @"com.apple.private.alloy.willow";
  }

  v9 = HFLogForCategory(0x2AuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v8;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Performing IDS device lookup with service name %@", &v25, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277D18778]) initWithService:v8];
  v11 = [a1 accessory];
  v12 = [v11 device];
  v13 = [v12 IDSDeviceForIDSService:v10];

  if (v13)
  {
    v14 = IDSCopyIDForDevice();
  }

  else
  {
    v15 = HFLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = [a1 accessory];
      v25 = 138412290;
      v26 = v24;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Unable to obtain IDS Identifier for accessory: %@", &v25, 0xCu);
    }

    v16 = objc_opt_new();
    [v16 na_safeSetObject:v10 forKey:@"idsService"];
    [v16 na_safeSetObject:0 forKey:@"IDSDevice"];
    v17 = [a1 accessory];
    [v16 na_safeSetObject:v17 forKey:@"accessory"];

    v18 = [MEMORY[0x277CCA9B8] hf_errorWithCode:19 operation:@"HFOperationFindIDSDeviceIdentifier" options:v16];
    v19 = v18;
    if (a3)
    {
      v20 = v18;
      *a3 = v19;
    }

    v21 = +[HFErrorHandler sharedHandler];
    [v21 logError:v19 operationDescription:@"HFOperationFindIDSDeviceIdentifier"];

    v14 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)hf_fetchLogListWithTimeout:()HFMediaAccessoryProfileAdditions
{
  v28 = 0;
  v4 = [a1 hf_idsDeviceIdentifierWithError:&v28];
  v5 = v28;
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 na_safeSetObject:v5 forKey:*MEMORY[0x277CCA7E8]];
    [v6 na_safeSetObject:v4 forKey:@"idsDeviceIdentifier"];
    v7 = MEMORY[0x277D2C900];
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:19 operation:@"HFOperationHomePodDataAnalyticsRetrieveLogList" options:v6];
    v9 = [v7 futureWithError:v8];
  }

  else
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.Home.dataAnalyticsLogListLoaderQueue", v10);

    v12 = MEMORY[0x277D2C900];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke;
    v24[3] = &unk_277DFEAA8;
    v6 = v11;
    v25 = v6;
    v26 = a1;
    v27 = v4;
    v13 = [v12 futureWithBlock:v24];
    v14 = 0;
    if (a2 > 0.0)
    {
      objc_initWeak(&location, v13);
      v15 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_4;
      v20[3] = &unk_277DFEAD0;
      v21 = v6;
      objc_copyWeak(&v22, &location);
      v14 = [v15 afterDelay:v20 performBlock:a2];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_6;
    v18[3] = &unk_277DFEAF8;
    v19 = v14;
    v16 = v14;
    v9 = [v13 addCompletionBlock:v18];

    v8 = v25;
  }

  return v9;
}

- (id)hf_fetchLog:()HFMediaAccessoryProfileAdditions timeout:
{
  v7 = a3;
  if (!v7)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"HFMediaProfileContainer.m" lineNumber:2420 description:{@"Invalid parameter not satisfying: %@", @"log"}];
  }

  v37 = 0;
  v8 = [a1 hf_idsDeviceIdentifierWithError:&v37];
  v9 = v37;
  if (v9)
  {
    v10 = objc_opt_new();
    [v10 na_safeSetObject:v9 forKey:*MEMORY[0x277CCA7E8]];
    [v10 na_safeSetObject:v7 forKey:@"logFileName"];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v10 na_safeSetObject:v11 forKey:@"timeOut"];

    [v10 na_safeSetObject:v8 forKey:@"idsDeviceIdentifier"];
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:19 operation:@"HFOperationHomePodDataAnalyticsRetrieveLogList" options:v10];
    v14 = [v12 futureWithError:v13];
  }

  else
  {
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("com.apple.Home.dataAnalyticsLogLoaderQueue", v15);

    v17 = MEMORY[0x277D2C900];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke;
    v32[3] = &unk_277DFD1F8;
    v10 = v16;
    v33 = v10;
    v34 = a1;
    v35 = v8;
    v36 = v7;
    v18 = [v17 futureWithBlock:v32];
    v19 = 0;
    if (a4 > 0.0)
    {
      objc_initWeak(&location, v18);
      objc_initWeak(&from, a1);
      v20 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_4;
      v26[3] = &unk_277DFEB20;
      v27 = v10;
      objc_copyWeak(&v28, &location);
      objc_copyWeak(&v29, &from);
      v19 = [v20 afterDelay:v26 performBlock:a4];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v28);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_446;
    v24[3] = &unk_277DFEB48;
    v25 = v19;
    v21 = v19;
    v14 = [v18 addCompletionBlock:v24];

    v13 = v33;
  }

  return v14;
}

- (id)hf_displayName
{
  v1 = [a1 hf_serviceNameComponents];
  v2 = [v1 composedString];

  return v2;
}

- (id)hf_dateAdded
{
  v1 = [a1 accessory];
  v2 = HFDateAddedForApplicationDataContainer(v1);

  return v2;
}

- (id)hf_updateDateAdded:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  v5 = [a1 accessory];
  v6 = HFUpdateDateAddedForApplicationDataContainer(v5, v4);

  return v6;
}

- (uint64_t)hf_supportsHomeTheater
{
  v2 = [a1 hf_backingAccessory];
  v3 = [v2 hf_isHomePod];

  v4 = [a1 hf_backingAccessory];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 supportsAudioDestination];
  }

  else
  {
    v7 = [v4 hf_isAppleTV];

    if (!v7)
    {
      return 0;
    }

    v5 = [a1 hf_backingAccessory];
    v8 = [v5 audioDestinationController];
    v6 = v8 != 0;
  }

  return v6;
}

- (uint64_t)hf_supportsPreferredMediaUser
{
  v3 = [a1 hf_backingAccessory];
  v4 = [v3 hf_isHomePod];
  if ((v4 & 1) != 0 || ([a1 hf_backingAccessory], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "hf_isSiriEndpoint")))
  {
    v5 = [a1 hf_backingAccessory];
    v6 = [v5 supportsPreferredMediaUser];

    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_7:
  return v6;
}

- (id)hf_preferredMediaUser
{
  if ([a1 hf_supportsPreferredMediaUser])
  {
    v2 = [a1 hf_backingAccessory];
    v3 = [v2 preferredMediaUser];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)hf_preferredUserSelectionType
{
  v1 = [a1 hf_backingAccessory];
  v2 = [v1 preferredUserSelectionType];

  return v2;
}

- (id)hf_identify
{
  v2 = [a1 hf_backingAccessory];
  v3 = [v2 hf_isHomePod];

  if (v3)
  {
    v4 = [a1 hf_backingAccessory];
    v5 = [v4 hf_identifyHomePod];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v5;
}

@end