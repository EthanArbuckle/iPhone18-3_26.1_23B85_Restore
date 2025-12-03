@interface HMMediaSystem(HFMediaAccessoryProfileAdditions)
- (BOOL)hasValidSettings;
- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager;
- (HFHomeKitSettingsValueManager)hf_settingsValueManager;
- (HFMediaValueManager)hf_mediaValueSource;
- (HFSiriLanguageOptionsManager)hf_siriLanguageOptionsManager;
- (__CFString)hf_tileSize;
- (id)accessories;
- (id)hf_appleMusicCurrentLoggedInAccount;
- (id)hf_appleMusicCurrentLoggedInAccountDSID;
- (id)hf_categoryCapitalizedLocalizedDescription;
- (id)hf_categoryLowercaseLocalizedDescription;
- (id)hf_containedCharacteristics;
- (id)hf_containedServices;
- (id)hf_dependentHomeKitObjectsForDownstreamItems;
- (id)hf_deviceIdentifiers;
- (id)hf_displayName;
- (id)hf_fetchLog:()HFMediaAccessoryProfileAdditions timeout:;
- (id)hf_fetchLogListWithTimeout:()HFMediaAccessoryProfileAdditions;
- (id)hf_home;
- (id)hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount;
- (id)hf_homePodSupportsMultiUserLanguage;
- (id)hf_identify;
- (id)hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent;
- (id)hf_mediaRouteIdentifier;
- (id)hf_moveToRoom:()HFMediaAccessoryProfileAdditions;
- (id)hf_parentRoom;
- (id)hf_preferredMediaUser;
- (id)hf_safeRoom;
- (id)hf_setTileSize:()HFMediaAccessoryProfileAdditions;
- (id)hf_stateDumpBuilderWithContext:()HFMediaAccessoryProfileAdditions;
- (id)homekitObjectIdentifiers;
- (id)mediaProfiles;
- (id)symptoms;
- (id)symptomsHandler;
- (id)topSymptomsHandlerAccessory;
- (uint64_t)hf_homePodIsCapableOfShowingSplitAccountError;
- (uint64_t)hf_homePodSupportsMultiUser;
- (uint64_t)hf_idsDeviceIdentifierWithError:()HFMediaAccessoryProfileAdditions;
- (uint64_t)hf_isAccessorySettingsReachable;
- (uint64_t)hf_isAppleMusicReachable;
- (uint64_t)hf_isCurrentAccessory;
- (uint64_t)hf_isForcedVisibleInHomeStatus;
- (uint64_t)hf_isInRoom:()HFMediaAccessoryProfileAdditions;
- (uint64_t)hf_isReachable;
- (uint64_t)hf_isVisibleInHomeStatus;
- (uint64_t)hf_preferredUserSelectionType;
- (uint64_t)hf_supportsMediaActions;
- (uint64_t)hf_supportsMultiUser;
- (uint64_t)hf_supportsMusicAlarm;
- (uint64_t)hf_supportsPreferredMediaUser;
- (uint64_t)numberOfItemsContainedWithinGroup;
@end

@implementation HMMediaSystem(HFMediaAccessoryProfileAdditions)

- (id)accessories
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  components = [self components];
  v4 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(components);
        }

        mediaProfile = [*(*(&v12 + 1) + 8 * i) mediaProfile];
        accessory = [mediaProfile accessory];
        [v2 na_safeAddObject:accessory];
      }

      v5 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)mediaProfiles
{
  accessories = [self accessories];
  v2 = [accessories na_map:&__block_literal_global_172];

  return v2;
}

- (id)hf_home
{
  v16 = *MEMORY[0x277D85DE8];
  home = [self home];
  if (!home)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@:%@ nil home. Please file a radar against “Home App | New Bugs” with any info you have on what you were doing.", &v12, 0x16u);
    }

    if (+[HFUtilities isInternalInstall])
    {
      v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:-1];
      v7 = +[HFErrorHandler sharedHandler];
      [v7 handleError:v6 operationType:@"HFOperationRemoveHomePodAlarm" options:0 retryBlock:0 cancelBlock:0];
    }

    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    home = [v8 home];
  }

  v9 = *MEMORY[0x277D85DE8];

  return home;
}

- (id)hf_parentRoom
{
  components = [self components];
  firstObject = [components firstObject];
  mediaProfile = [firstObject mediaProfile];
  accessory = [mediaProfile accessory];
  room = [accessory room];

  return room;
}

- (id)symptomsHandler
{
  topSymptomsHandlerAccessory = [self topSymptomsHandlerAccessory];
  symptomsHandler = [topSymptomsHandlerAccessory symptomsHandler];

  return symptomsHandler;
}

- (id)topSymptomsHandlerAccessory
{
  accessories = [self accessories];
  allObjects = [accessories allObjects];
  v3 = [allObjects sortedArrayUsingComparator:&__block_literal_global_291];

  v17 = [v3 sortedArrayUsingComparator:&__block_literal_global_294_0];
  firstObject = [v3 firstObject];
  lastObject = [v3 lastObject];
  symptomsHandler = [firstObject symptomsHandler];
  hf_symptomsSortedByPriority = [symptomsHandler hf_symptomsSortedByPriority];
  firstObject2 = [hf_symptomsSortedByPriority firstObject];
  type = [firstObject2 type];
  symptomsHandler2 = [lastObject symptomsHandler];
  hf_symptomsSortedByPriority2 = [symptomsHandler2 hf_symptomsSortedByPriority];
  firstObject3 = [hf_symptomsSortedByPriority2 firstObject];
  type2 = [firstObject3 type];

  if (type == type2)
  {
    v13 = v17;
  }

  else
  {
    v13 = v3;
  }

  firstObject4 = [v13 firstObject];

  return firstObject4;
}

- (id)symptoms
{
  v16 = *MEMORY[0x277D85DE8];
  symptomsHandler = [self symptomsHandler];
  symptoms = [symptomsHandler symptoms];
  v4 = [symptoms count];

  if (v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      symptomsHandler2 = [self symptomsHandler];
      symptoms2 = [symptomsHandler2 symptoms];
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = symptoms2;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media system: %@, has symptoms: %@", &v12, 0x16u);
    }
  }

  symptomsHandler3 = [self symptomsHandler];
  symptoms3 = [symptomsHandler3 symptoms];

  v10 = *MEMORY[0x277D85DE8];

  return symptoms3;
}

- (uint64_t)hf_isCurrentAccessory
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_297_0];

  return v2;
}

- (uint64_t)hf_isReachable
{
  accessories = [self accessories];
  v2 = [accessories na_all:&__block_literal_global_299_1];

  return v2;
}

- (uint64_t)hf_supportsMusicAlarm
{
  v24 = *MEMORY[0x277D85DE8];
  accessories = [self accessories];
  v3 = [accessories count];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    accessories2 = [self accessories];
    v5 = [accessories2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(accessories2);
          }

          if (![*(*(&v15 + 1) + 8 * v8) supportsMusicAlarm])
          {
            v3 = 0;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [accessories2 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 1;
LABEL_12:

    v9 = HFLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = [self description];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Accessory Supports Music Alarm (%@) mediaprofilecontainer %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = HFLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [self description];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "No Accessories Found that Supports Music Alarm mediaprofilecontainer %@", buf, 0xCu);

      v3 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)hf_isAppleMusicReachable
{
  accessories = [self accessories];
  v2 = [accessories na_all:&__block_literal_global_307];

  return v2;
}

- (uint64_t)hf_isAccessorySettingsReachable
{
  accessories = [self accessories];
  v2 = [accessories na_all:&__block_literal_global_309_0];

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
      v9 = "[HMMediaSystem(HFMediaAccessoryProfileAdditions) hf_settingsAdapterManager]";
      v10 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "%s Creating new HFHomeKitSettingsAdapterManager for HMMediaSystem %@", &v8, 0x16u);
    }

    v4 = [[HFHomeKitSettingsAdapterManager alloc] initWithHomeKitSettingsVendor:self];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hf_categoryCapitalizedLocalizedDescription
{
  v1 = MEMORY[0x277CD1650];
  category = [self category];
  categoryType = [category categoryType];
  v4 = [v1 hf_userFriendlyLocalizedCapitalizedDescription:categoryType];

  return v4;
}

- (id)hf_categoryLowercaseLocalizedDescription
{
  v1 = MEMORY[0x277CD1650];
  category = [self category];
  categoryType = [category categoryType];
  v4 = [v1 hf_userFriendlyLocalizedLowercaseDescription:categoryType];

  return v4;
}

- (id)hf_dependentHomeKitObjectsForDownstreamItems
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 addObject:self];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessories = [self accessories];
  v4 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v2 addObject:v8];
        mediaProfile = [v8 mediaProfile];
        hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfile hf_dependentHomeKitObjectsForDownstreamItems];
        [v2 unionSet:hf_dependentHomeKitObjectsForDownstreamItems];
      }

      v5 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  settings = [self settings];
  [v2 na_safeAddObject:settings];

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hf_supportsMultiUser
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessories = [self accessories];
  v2 = [accessories countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        if (![*(*(&v9 + 1) + 8 * v5) supportsMultiUser])
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [accessories countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)hf_supportsMediaActions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessories = [self accessories];
  v2 = [accessories countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        if (![*(*(&v9 + 1) + 8 * v5) supportsMediaActions])
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [accessories countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)hf_homePodSupportsMultiUser
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accessories = [self accessories];
  v2 = [accessories countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (![v6 hf_isHomePod] || !objc_msgSend(v6, "supportsMultiUser"))
        {
          v7 = 0;
          goto LABEL_13;
        }
      }

      v3 = [accessories countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)hf_homePodIsCapableOfShowingSplitAccountError
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [self accessories];
  v2 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        mediaProfile = [*(*(&v11 + 1) + 8 * v5) mediaProfile];
        hf_homePodIsCapableOfShowingSplitAccountError = [mediaProfile hf_homePodIsCapableOfShowingSplitAccountError];

        if (!hf_homePodIsCapableOfShowingSplitAccountError)
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)hf_deviceIdentifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [self accessories];
  v4 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        deviceIdentifier = [*(*(&v11 + 1) + 8 * i) deviceIdentifier];
        [v2 na_safeAddObject:deviceIdentifier];
      }

      v5 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
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
  mediaProfiles = [self mediaProfiles];
  v2 = [mediaProfiles na_map:&__block_literal_global_315_0];

  return v2;
}

- (uint64_t)numberOfItemsContainedWithinGroup
{
  accessories = [self accessories];
  v2 = [accessories count];

  return v2;
}

- (id)hf_appleMusicCurrentLoggedInAccountDSID
{
  accessories = [self accessories];
  v2 = [accessories na_map:&__block_literal_global_317];

  if ([v2 count] == 1)
  {
    anyObject = [v2 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)hf_appleMusicCurrentLoggedInAccount
{
  hf_appleMusicCurrentLoggedInAccountDSID = [self hf_appleMusicCurrentLoggedInAccountDSID];
  if (hf_appleMusicCurrentLoggedInAccountDSID)
  {
    accessories = [self accessories];
    anyObject = [accessories anyObject];
    mediaProfile = [anyObject mediaProfile];
    hf_appleMusicCurrentLoggedInAccount = [mediaProfile hf_appleMusicCurrentLoggedInAccount];
  }

  else
  {
    hf_appleMusicCurrentLoggedInAccount = 0;
  }

  return hf_appleMusicCurrentLoggedInAccount;
}

- (id)hf_homePodSupportsMultiUserLanguage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke;
  v4[3] = &unk_277DF2770;
  v4[4] = self;
  v4[5] = a2;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

- (id)hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount
{
  accessories = [self accessories];
  anyObject = [accessories anyObject];
  mediaProfile = [anyObject mediaProfile];
  hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount = [mediaProfile hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount];

  return hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount;
}

- (id)hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent
{
  accessories = [self accessories];
  anyObject = [accessories anyObject];
  mediaProfile = [anyObject mediaProfile];
  hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent = [mediaProfile hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent];

  return hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent;
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
    accessories2 = [self accessories];
    anyObject = [accessories2 anyObject];
    uniqueIdentifier = [anyObject uniqueIdentifier];
    hf_home = [self hf_home];
    v8 = [(HFSiriLanguageOptionsManager *)v11 initWithSettingsController:hf_accessorySettingsController accessoryIdentifier:uniqueIdentifier home:hf_home];

    objc_setAssociatedObject(self, sel_hf_siriLanguageOptionsManager, v8, 1);
  }

LABEL_7:

  return v8;
}

- (id)hf_fetchLogListWithTimeout:()HFMediaAccessoryProfileAdditions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D2C900];
  v1 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"HMMediaSystem is a composite of several objects, and does not support fetching logs";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = [v1 hf_errorWithCode:19 operation:@"HFOperationHomePodDataAnalyticsRetrieveLogList" options:v2];
  v4 = [v0 futureWithError:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hf_fetchLog:()HFMediaAccessoryProfileAdditions timeout:
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D2C900];
  v1 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"HMMediaSystem is a composite of several objects, and does not support fetching logs";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v3 = [v1 hf_errorWithCode:19 operation:@"HFOperationHomePodDataAnalyticsRetrieveLog" options:v2];
  v4 = [v0 futureWithError:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (uint64_t)hf_idsDeviceIdentifierWithError:()HFMediaAccessoryProfileAdditions
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] hf_errorWithCode:20 operation:@"HFOperationFindIDSDeviceIdentifier" options:0];
  }

  return 0;
}

- (uint64_t)hf_isVisibleInHomeStatus
{
  if ([self hf_isForcedVisibleInHomeStatus])
  {
    return 1;
  }

  return [self hf_shouldBeOnForContextType:1];
}

- (uint64_t)hf_isForcedVisibleInHomeStatus
{
  accessories = [self accessories];
  v2 = [accessories na_any:&__block_literal_global_330_0];

  return v2;
}

- (__CFString)hf_tileSize
{
  v2 = [MEMORY[0x277CCA940] set];
  accessories = [self accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_tileSize__block_invoke;
  v10[3] = &unk_277DF5200;
  v11 = v2;
  v4 = v2;
  [accessories na_each:v10];

  na_mostCommonObject = [v4 na_mostCommonObject];
  v6 = na_mostCommonObject;
  if (na_mostCommonObject)
  {
    v7 = na_mostCommonObject;
  }

  else
  {
    v7 = @"HFTileResizableSizeSmall";
  }

  v8 = v7;

  return v7;
}

- (id)hf_setTileSize:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  accessories = [self accessories];
  allObjects = [accessories allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_setTileSize___block_invoke;
  v11[3] = &unk_277DFEA58;
  v11[4] = v4;
  v7 = [allObjects na_map:v11];

  v8 = [MEMORY[0x277D2C900] combineAllFutures:v7];
  v9 = [v8 flatMap:&__block_literal_global_337];

  return v9;
}

- (id)hf_containedServices
{
  accessories = [self accessories];
  v2 = [accessories na_flatMap:&__block_literal_global_341];

  return v2;
}

- (id)hf_containedCharacteristics
{
  hf_containedServices = [self hf_containedServices];
  v2 = [hf_containedServices na_flatMap:&__block_literal_global_345_0];

  return v2;
}

- (uint64_t)hf_isInRoom:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  hf_associatedAccessories = [self hf_associatedAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_isInRoom___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [hf_associatedAccessories na_any:v9];

  return v7;
}

- (id)hf_safeRoom
{
  accessories = [self accessories];
  v2 = [accessories na_map:&__block_literal_global_348];

  if ([v2 count] == 1)
  {
    anyObject = [v2 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)hf_moveToRoom:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  hf_associatedAccessories = [self hf_associatedAccessories];
  allObjects = [hf_associatedAccessories allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_moveToRoom___block_invoke;
  v12[3] = &unk_277DF4220;
  v13 = v4;
  v8 = v4;
  v9 = [allObjects na_map:v12];
  v10 = [v5 combineAllFutures:v9];

  return v10;
}

- (id)hf_stateDumpBuilderWithContext:()HFMediaAccessoryProfileAdditions
{
  v4 = _HFStateDumpBuilderForMediaProfileContainer(self, a3);
  components = [self components];
  [v4 appendObject:components withName:@"components"];

  return v4;
}

- (id)hf_displayName
{
  hf_serviceNameComponents = [self hf_serviceNameComponents];
  composedString = [hf_serviceNameComponents composedString];

  return composedString;
}

- (uint64_t)hf_supportsPreferredMediaUser
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accessories = [self accessories];
  v2 = [accessories countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (([v6 hf_isHomePod] & 1) == 0 && !objc_msgSend(v6, "hf_isSiriEndpoint") || !objc_msgSend(v6, "supportsPreferredMediaUser"))
        {
          v7 = 0;
          goto LABEL_13;
        }
      }

      v3 = [accessories countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)hf_preferredMediaUser
{
  if ([self hf_supportsPreferredMediaUser])
  {
    accessories = [self accessories];
    anyObject = [accessories anyObject];
    preferredMediaUser = [anyObject preferredMediaUser];
  }

  else
  {
    preferredMediaUser = 0;
  }

  return preferredMediaUser;
}

- (uint64_t)hf_preferredUserSelectionType
{
  accessories = [self accessories];
  anyObject = [accessories anyObject];
  preferredUserSelectionType = [anyObject preferredUserSelectionType];

  return preferredUserSelectionType;
}

- (id)hf_identify
{
  accessories = [self accessories];
  allObjects = [accessories allObjects];
  v3 = [allObjects na_map:&__block_literal_global_353];

  v4 = [MEMORY[0x277D2C900] combineAllFutures:v3];

  return v4;
}

@end