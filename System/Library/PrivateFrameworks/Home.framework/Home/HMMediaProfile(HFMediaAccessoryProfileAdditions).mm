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
  accessory = [self accessory];
  v3 = [v1 na_setWithSafeObject:accessory];

  return v3;
}

- (id)mediaProfiles
{
  v1 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  mediaProfile = [accessory mediaProfile];
  v4 = [v1 na_setWithSafeObject:mediaProfile];

  return v4;
}

- (id)hf_home
{
  v17 = *MEMORY[0x277D85DE8];
  accessory = [self accessory];
  home = [accessory home];

  if (!home)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412546;
      selfCopy = self;
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
    home = [v9 home];
  }

  v10 = *MEMORY[0x277D85DE8];

  return home;
}

- (id)hf_parentRoom
{
  accessory = [self accessory];
  room = [accessory room];

  return room;
}

- (uint64_t)hf_isCurrentAccessory
{
  accessory = [self accessory];
  isCurrentAccessory = [accessory isCurrentAccessory];

  return isCurrentAccessory;
}

- (id)symptomsHandler
{
  accessory = [self accessory];
  symptomsHandler = [accessory symptomsHandler];

  return symptomsHandler;
}

- (id)symptoms
{
  symptomsHandler = [self symptomsHandler];
  symptoms = [symptomsHandler symptoms];

  return symptoms;
}

- (id)hf_fakeDebugSymptoms
{
  accessory = [self accessory];
  hf_fakeDebugSymptoms = [accessory hf_fakeDebugSymptoms];

  return hf_fakeDebugSymptoms;
}

- (uint64_t)hf_isReachable
{
  accessories = [self accessories];
  v2 = [accessories na_all:&__block_literal_global_397];

  return v2;
}

- (uint64_t)hf_supportsStereoPairing
{
  accessories = [self accessories];
  v3 = [accessories count] == 1;

  LODWORD(accessories) = [self isItemGroup];
  hf_home = [self hf_home];
  hf_backingAccessory = [self hf_backingAccessory];
  v6 = [hf_home hf_mediaSystemForAccessory:hf_backingAccessory];

  accessories2 = [self accessories];
  anyObject = [accessories2 anyObject];
  hf_isHomePod = [anyObject hf_isHomePod];

  v10 = MEMORY[0x277CD1BF0];
  accessories3 = [self accessories];
  anyObject2 = [accessories3 anyObject];
  v13 = [v10 supportsMediaSystem:anyObject2];

  v14 = v3 & ~accessories;
  if (v6)
  {
    v14 = 0;
  }

  return v14 & hf_isHomePod & v13;
}

- (uint64_t)hf_supportsMusicAlarm
{
  v13 = *MEMORY[0x277D85DE8];
  hf_backingAccessory = [self hf_backingAccessory];
  supportsMusicAlarm = [hf_backingAccessory supportsMusicAlarm];

  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (supportsMusicAlarm)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [self description];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Accessory Supports Music Alarm (%@) mediaProfileContainer (%@)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return supportsMusicAlarm;
}

- (uint64_t)hf_isAppleMusicReachable
{
  accessories = [self accessories];
  v2 = [accessories na_all:&__block_literal_global_400];

  return v2;
}

- (uint64_t)hf_isAccessorySettingsReachable
{
  accessories = [self accessories];
  v2 = [accessories na_all:&__block_literal_global_402];

  return v2;
}

- (HFMediaValueManager)hf_mediaValueSource
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[HFMediaValueManager alloc] initWithMediaProfileContainer:self];
    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[HMMediaProfile(HFMediaAccessoryProfileAdditions) hf_settingsAdapterManager]";
      v10 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "%s Creating new HFHomeKitSettingsAdapterManager for HMMediaProfile %@", &v8, 0x16u);
    }

    v4 = [[HFHomeKitSettingsAdapterManager alloc] initWithHomeKitSettingsVendor:self];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hf_categoryCapitalizedLocalizedDescription
{
  accessory = [self accessory];
  hf_userFriendlyLocalizedCapitalizedDescription = [accessory hf_userFriendlyLocalizedCapitalizedDescription];

  return hf_userFriendlyLocalizedCapitalizedDescription;
}

- (id)hf_categoryLowercaseLocalizedDescription
{
  accessory = [self accessory];
  hf_userFriendlyLocalizedLowercaseDescription = [accessory hf_userFriendlyLocalizedLowercaseDescription];

  return hf_userFriendlyLocalizedLowercaseDescription;
}

- (id)hf_dependentHomeKitObjectsForDownstreamItems
{
  v2 = objc_opt_new();
  accessories = [self accessories];
  [v2 unionSet:accessories];

  [v2 addObject:self];
  settings = [self settings];
  [v2 na_safeAddObject:settings];

  return v2;
}

- (uint64_t)hf_supportsMultiUser
{
  accessory = [self accessory];
  supportsMultiUser = [accessory supportsMultiUser];

  return supportsMultiUser;
}

- (uint64_t)hf_supportsMediaActions
{
  accessory = [self accessory];
  supportsMediaActions = [accessory supportsMediaActions];

  return supportsMediaActions;
}

- (uint64_t)hf_homePodSupportsMultiUser
{
  accessory = [self accessory];
  if ([accessory hf_isHomePod])
  {
    accessory2 = [self accessory];
    supportsMultiUser = [accessory2 supportsMultiUser];
  }

  else
  {
    supportsMultiUser = 0;
  }

  return supportsMultiUser;
}

- (BOOL)hf_homePodIsCapableOfShowingSplitAccountError
{
  v45 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isAMac])
  {
    goto LABEL_7;
  }

  hf_home = [self hf_home];
  isMultiUserEnabled = [hf_home isMultiUserEnabled];

  if (!isMultiUserEnabled)
  {
    goto LABEL_7;
  }

  hf_backingAccessory = [self hf_backingAccessory];
  hf_isHomePod = [hf_backingAccessory hf_isHomePod];

  if (!hf_isHomePod)
  {
    goto LABEL_7;
  }

  if ([self hf_homePodSupportsMultiUser] && (objc_msgSend(self, "hf_home"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hf_currentUserIsOwner"), v8, v9))
  {
    hf_home2 = [self hf_home];
    users = [hf_home2 users];
    v12 = [users count] == 0;
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
    hf_home3 = [self hf_home];
    isMultiUserEnabled2 = [hf_home3 isMultiUserEnabled];
    hf_backingAccessory2 = [self hf_backingAccessory];
    hf_isHomePod2 = [hf_backingAccessory2 hf_isHomePod];
    hf_homePodSupportsMultiUser = [self hf_homePodSupportsMultiUser];
    hf_home4 = [self hf_home];
    hf_currentUserIsOwner = [hf_home4 hf_currentUserIsOwner];
    hf_home5 = [self hf_home];
    users2 = [hf_home5 users];
    *buf = 138414338;
    selfCopy = self;
    v29 = 2112;
    v30 = v25;
    v31 = 1024;
    v32 = v12;
    v33 = 1024;
    v34 = v24;
    v35 = 1024;
    v36 = isMultiUserEnabled2;
    v37 = 1024;
    v38 = hf_isHomePod2;
    v39 = 1024;
    v40 = hf_homePodSupportsMultiUser;
    v41 = 1024;
    v42 = hf_currentUserIsOwner;
    v43 = 1024;
    v44 = [users2 count] == 0;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "%@:%@: %{BOOL}d (Mac = %{BOOL}d, MU enabled = %{BOOL}d, is HomePod = %{BOOL}d, MU HomePod = %{BOOL}d, is Owner = %{BOOL}d, Home has users = %{BOOL}d,)", buf, 0x40u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)hf_deviceIdentifiers
{
  v1 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  deviceIdentifier = [accessory deviceIdentifier];
  v4 = [v1 na_setWithSafeObject:deviceIdentifier];

  return v4;
}

- (id)hf_mediaRouteIdentifier
{
  hf_deviceIdentifiers = [self hf_deviceIdentifiers];
  anyObject = [hf_deviceIdentifiers anyObject];

  return anyObject;
}

- (BOOL)hasValidSettings
{
  settings = [self settings];
  rootGroup = [settings rootGroup];
  v3 = rootGroup != 0;

  return v3;
}

- (id)homekitObjectIdentifiers
{
  v1 = MEMORY[0x277CBEB98];
  accessory = [self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v4 = [v1 setWithObject:uniqueIdentifier];

  return v4;
}

- (BOOL)isContainedWithinItemGroup
{
  hf_home = [self hf_home];
  accessory = [self accessory];
  v4 = [hf_home hf_mediaSystemForAccessory:accessory];
  v5 = v4 != 0;

  return v5;
}

- (id)hf_appleMusicCurrentLoggedInAccount
{
  accessory = [self accessory];
  remoteLoginHandler = [accessory remoteLoginHandler];

  loggedInAccount = [remoteLoginHandler loggedInAccount];

  return loggedInAccount;
}

- (id)hf_appleMusicCurrentLoggedInAccountDSID
{
  hf_appleMusicCurrentLoggedInAccount = [self hf_appleMusicCurrentLoggedInAccount];
  aa_altDSID = [hf_appleMusicCurrentLoggedInAccount aa_altDSID];

  return aa_altDSID;
}

- (id)hf_homePodSupportsMultiUserLanguage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke;
  v4[3] = &unk_277DF2770;
  v4[4] = self;
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
  v4[4] = self;
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
  v4[4] = self;
  v4[5] = a2;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

- (HFHomeKitSettingsValueManager)hf_settingsValueManager
{
  settings = [self settings];

  if (settings)
  {
    settings = objc_getAssociatedObject(self, a2);
    if (!settings)
    {
      v5 = [HFHomeKitSettingsValueManager alloc];
      settings2 = [self settings];
      homekitObjectIdentifiers = [self homekitObjectIdentifiers];
      settings = [(HFHomeKitSettingsValueManager *)v5 initWithSettings:settings2 homeKitObjectIdentifiers:homekitObjectIdentifiers];

      objc_setAssociatedObject(self, a2, settings, 1);
    }
  }

  return settings;
}

- (HFMediaAccessoryCommonSettingsManager)hf_mediaAccessoryCommonSettingsManager
{
  accessories = [self accessories];
  allObjects = [accessories allObjects];
  lastObject = [allObjects lastObject];
  if (([lastObject hf_isSiriEndpoint] & 1) == 0)
  {

    goto LABEL_6;
  }

  accessories2 = [self accessories];
  allObjects2 = [accessories2 allObjects];
  lastObject2 = [allObjects2 lastObject];
  if (![lastObject2 hf_isSiriEndpoint])
  {

    goto LABEL_8;
  }

  accessories3 = [self accessories];
  allObjects3 = [accessories3 allObjects];
  lastObject3 = [allObjects3 lastObject];
  siriEndpointProfile = [lastObject3 siriEndpointProfile];
  supportsOnboarding = [siriEndpointProfile supportsOnboarding];

  if ((supportsOnboarding & 1) == 0)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v11 = objc_getAssociatedObject(self, sel_hf_mediaAccessoryCommonSettingsManager);
  if (!v11)
  {
    v12 = [HFMediaAccessoryCommonSettingsManager alloc];
    hf_home = [self hf_home];
    v11 = [(HFMediaAccessoryCommonSettingsManager *)v12 initWithMediaProfileContainer:self home:hf_home];

    objc_setAssociatedObject(self, sel_hf_mediaAccessoryCommonSettingsManager, v11, 1);
  }

LABEL_10:

  return v11;
}

- (HFSiriLanguageOptionsManager)hf_siriLanguageOptionsManager
{
  accessories = [self accessories];
  allObjects = [accessories allObjects];
  lastObject = [allObjects lastObject];
  if ([lastObject hf_isSiriEndpoint])
  {
  }

  else
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v5 homeManager];
    hasOptedToHH2 = [homeManager hasOptedToHH2];

    if (!hasOptedToHH2)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

  v8 = objc_getAssociatedObject(self, sel_hf_siriLanguageOptionsManager);
  if (!v8)
  {
    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager2 = [v9 homeManager];

    v11 = [HFSiriLanguageOptionsManager alloc];
    hf_accessorySettingsController = [homeManager2 hf_accessorySettingsController];
    accessory = [self accessory];
    uniqueIdentifier = [accessory uniqueIdentifier];
    hf_home = [self hf_home];
    v8 = [(HFSiriLanguageOptionsManager *)v11 initWithSettingsController:hf_accessorySettingsController accessoryIdentifier:uniqueIdentifier home:hf_home];

    objc_setAssociatedObject(self, sel_hf_siriLanguageOptionsManager, v8, 1);
  }

LABEL_7:

  return v8;
}

- (id)hf_analyticsClient
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D36B58]) initWithErrorHandler:&__block_literal_global_412];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

- (id)hf_idsDeviceIdentifierWithError:()HFMediaAccessoryProfileAdditions
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v5 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
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
  accessory = [self accessory];
  device = [accessory device];
  v13 = [device IDSDeviceForIDSService:v10];

  if (v13)
  {
    v14 = IDSCopyIDForDevice();
  }

  else
  {
    v15 = HFLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      accessory2 = [self accessory];
      v25 = 138412290;
      v26 = accessory2;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Unable to obtain IDS Identifier for accessory: %@", &v25, 0xCu);
    }

    v16 = objc_opt_new();
    [v16 na_safeSetObject:v10 forKey:@"idsService"];
    [v16 na_safeSetObject:0 forKey:@"IDSDevice"];
    accessory3 = [self accessory];
    [v16 na_safeSetObject:accessory3 forKey:@"accessory"];

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
  v4 = [self hf_idsDeviceIdentifierWithError:&v28];
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
    selfCopy = self;
    v27 = v4;
    v13 = [v12 futureWithBlock:v24];
    v14 = 0;
    if (a2 > 0.0)
    {
      objc_initWeak(&location, v13);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __79__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLogListWithTimeout___block_invoke_4;
      v20[3] = &unk_277DFEAD0;
      v21 = v6;
      objc_copyWeak(&v22, &location);
      v14 = [mainThreadScheduler afterDelay:v20 performBlock:a2];

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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaProfileContainer.m" lineNumber:2420 description:{@"Invalid parameter not satisfying: %@", @"log"}];
  }

  v37 = 0;
  v8 = [self hf_idsDeviceIdentifierWithError:&v37];
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
    selfCopy = self;
    v35 = v8;
    v36 = v7;
    v18 = [v17 futureWithBlock:v32];
    v19 = 0;
    if (a4 > 0.0)
    {
      objc_initWeak(&location, v18);
      objc_initWeak(&from, self);
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __72__HMMediaProfile_HFMediaAccessoryProfileAdditions__hf_fetchLog_timeout___block_invoke_4;
      v26[3] = &unk_277DFEB20;
      v27 = v10;
      objc_copyWeak(&v28, &location);
      objc_copyWeak(&v29, &from);
      v19 = [mainThreadScheduler afterDelay:v26 performBlock:a4];

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
  hf_serviceNameComponents = [self hf_serviceNameComponents];
  composedString = [hf_serviceNameComponents composedString];

  return composedString;
}

- (id)hf_dateAdded
{
  accessory = [self accessory];
  v2 = HFDateAddedForApplicationDataContainer(accessory);

  return v2;
}

- (id)hf_updateDateAdded:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  accessory = [self accessory];
  v6 = HFUpdateDateAddedForApplicationDataContainer(accessory, v4);

  return v6;
}

- (uint64_t)hf_supportsHomeTheater
{
  hf_backingAccessory = [self hf_backingAccessory];
  hf_isHomePod = [hf_backingAccessory hf_isHomePod];

  hf_backingAccessory2 = [self hf_backingAccessory];
  hf_backingAccessory3 = hf_backingAccessory2;
  if (hf_isHomePod)
  {
    supportsAudioDestination = [hf_backingAccessory2 supportsAudioDestination];
  }

  else
  {
    hf_isAppleTV = [hf_backingAccessory2 hf_isAppleTV];

    if (!hf_isAppleTV)
    {
      return 0;
    }

    hf_backingAccessory3 = [self hf_backingAccessory];
    audioDestinationController = [hf_backingAccessory3 audioDestinationController];
    supportsAudioDestination = audioDestinationController != 0;
  }

  return supportsAudioDestination;
}

- (uint64_t)hf_supportsPreferredMediaUser
{
  hf_backingAccessory = [self hf_backingAccessory];
  hf_isHomePod = [hf_backingAccessory hf_isHomePod];
  if ((hf_isHomePod & 1) != 0 || ([self hf_backingAccessory], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "hf_isSiriEndpoint")))
  {
    hf_backingAccessory2 = [self hf_backingAccessory];
    supportsPreferredMediaUser = [hf_backingAccessory2 supportsPreferredMediaUser];

    if (hf_isHomePod)
    {
      goto LABEL_7;
    }
  }

  else
  {
    supportsPreferredMediaUser = 0;
  }

LABEL_7:
  return supportsPreferredMediaUser;
}

- (id)hf_preferredMediaUser
{
  if ([self hf_supportsPreferredMediaUser])
  {
    hf_backingAccessory = [self hf_backingAccessory];
    preferredMediaUser = [hf_backingAccessory preferredMediaUser];
  }

  else
  {
    preferredMediaUser = 0;
  }

  return preferredMediaUser;
}

- (uint64_t)hf_preferredUserSelectionType
{
  hf_backingAccessory = [self hf_backingAccessory];
  preferredUserSelectionType = [hf_backingAccessory preferredUserSelectionType];

  return preferredUserSelectionType;
}

- (id)hf_identify
{
  hf_backingAccessory = [self hf_backingAccessory];
  hf_isHomePod = [hf_backingAccessory hf_isHomePod];

  if (hf_isHomePod)
  {
    hf_backingAccessory2 = [self hf_backingAccessory];
    hf_identifyHomePod = [hf_backingAccessory2 hf_identifyHomePod];
  }

  else
  {
    hf_identifyHomePod = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return hf_identifyHomePod;
}

@end