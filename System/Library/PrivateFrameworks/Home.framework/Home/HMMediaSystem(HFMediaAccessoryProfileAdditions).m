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
  v3 = [a1 components];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) mediaProfile];
        v9 = [v8 accessory];
        [v2 na_safeAddObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)mediaProfiles
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_172];

  return v2;
}

- (id)hf_home
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a1 home];
  if (!v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138412546;
      v13 = a1;
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
    v4 = [v8 home];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hf_parentRoom
{
  v1 = [a1 components];
  v2 = [v1 firstObject];
  v3 = [v2 mediaProfile];
  v4 = [v3 accessory];
  v5 = [v4 room];

  return v5;
}

- (id)symptomsHandler
{
  v1 = [a1 topSymptomsHandlerAccessory];
  v2 = [v1 symptomsHandler];

  return v2;
}

- (id)topSymptomsHandlerAccessory
{
  v1 = [a1 accessories];
  v2 = [v1 allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_291];

  v17 = [v3 sortedArrayUsingComparator:&__block_literal_global_294_0];
  v16 = [v3 firstObject];
  v4 = [v3 lastObject];
  v5 = [v16 symptomsHandler];
  v6 = [v5 hf_symptomsSortedByPriority];
  v7 = [v6 firstObject];
  v8 = [v7 type];
  v9 = [v4 symptomsHandler];
  v10 = [v9 hf_symptomsSortedByPriority];
  v11 = [v10 firstObject];
  v12 = [v11 type];

  if (v8 == v12)
  {
    v13 = v17;
  }

  else
  {
    v13 = v3;
  }

  v14 = [v13 firstObject];

  return v14;
}

- (id)symptoms
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1 symptomsHandler];
  v3 = [v2 symptoms];
  v4 = [v3 count];

  if (v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1 symptomsHandler];
      v7 = [v6 symptoms];
      v12 = 138412546;
      v13 = a1;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Media system: %@, has symptoms: %@", &v12, 0x16u);
    }
  }

  v8 = [a1 symptomsHandler];
  v9 = [v8 symptoms];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (uint64_t)hf_isCurrentAccessory
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_297_0];

  return v2;
}

- (uint64_t)hf_isReachable
{
  v1 = [a1 accessories];
  v2 = [v1 na_all:&__block_literal_global_299_1];

  return v2;
}

- (uint64_t)hf_supportsMusicAlarm
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1 accessories];
  v3 = [v2 count];

  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [a1 accessories];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v15 + 1) + 8 * v8) supportsMusicAlarm])
          {
            v3 = 0;
            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
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

      v11 = [a1 description];
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
      v12 = [a1 description];
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
  v1 = [a1 accessories];
  v2 = [v1 na_all:&__block_literal_global_307];

  return v2;
}

- (uint64_t)hf_isAccessorySettingsReachable
{
  v1 = [a1 accessories];
  v2 = [v1 na_all:&__block_literal_global_309_0];

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
      v9 = "[HMMediaSystem(HFMediaAccessoryProfileAdditions) hf_settingsAdapterManager]";
      v10 = 2112;
      v11 = a1;
      _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "%s Creating new HFHomeKitSettingsAdapterManager for HMMediaSystem %@", &v8, 0x16u);
    }

    v4 = [[HFHomeKitSettingsAdapterManager alloc] initWithHomeKitSettingsVendor:a1];
    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hf_categoryCapitalizedLocalizedDescription
{
  v1 = MEMORY[0x277CD1650];
  v2 = [a1 category];
  v3 = [v2 categoryType];
  v4 = [v1 hf_userFriendlyLocalizedCapitalizedDescription:v3];

  return v4;
}

- (id)hf_categoryLowercaseLocalizedDescription
{
  v1 = MEMORY[0x277CD1650];
  v2 = [a1 category];
  v3 = [v2 categoryType];
  v4 = [v1 hf_userFriendlyLocalizedLowercaseDescription:v3];

  return v4;
}

- (id)hf_dependentHomeKitObjectsForDownstreamItems
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 addObject:a1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 accessories];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v2 addObject:v8];
        v9 = [v8 mediaProfile];
        v10 = [v9 hf_dependentHomeKitObjectsForDownstreamItems];
        [v2 unionSet:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [a1 settings];
  [v2 na_safeAddObject:v11];

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
  v1 = [a1 accessories];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v9 + 1) + 8 * v5) supportsMultiUser])
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v1 = [a1 accessories];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v9 + 1) + 8 * v5) supportsMediaActions])
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v1 = [a1 accessories];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (![v6 hf_isHomePod] || !objc_msgSend(v6, "supportsMultiUser"))
        {
          v7 = 0;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v1 = [a1 accessories];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v11 + 1) + 8 * v5) mediaProfile];
        v7 = [v6 hf_homePodIsCapableOfShowingSplitAccountError];

        if (!v7)
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [a1 accessories];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) deviceIdentifier];
        [v2 na_safeAddObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
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
  v1 = [a1 mediaProfiles];
  v2 = [v1 na_map:&__block_literal_global_315_0];

  return v2;
}

- (uint64_t)numberOfItemsContainedWithinGroup
{
  v1 = [a1 accessories];
  v2 = [v1 count];

  return v2;
}

- (id)hf_appleMusicCurrentLoggedInAccountDSID
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_317];

  if ([v2 count] == 1)
  {
    v3 = [v2 anyObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hf_appleMusicCurrentLoggedInAccount
{
  v2 = [a1 hf_appleMusicCurrentLoggedInAccountDSID];
  if (v2)
  {
    v3 = [a1 accessories];
    v4 = [v3 anyObject];
    v5 = [v4 mediaProfile];
    v6 = [v5 hf_appleMusicCurrentLoggedInAccount];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hf_homePodSupportsMultiUserLanguage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_homePodSupportsMultiUserLanguage__block_invoke;
  v4[3] = &unk_277DF2770;
  v4[4] = a1;
  v4[5] = a2;
  v2 = [MEMORY[0x277D2C900] futureWithBlock:v4];

  return v2;
}

- (id)hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount
{
  v1 = [a1 accessories];
  v2 = [v1 anyObject];
  v3 = [v2 mediaProfile];
  v4 = [v3 hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount];

  return v4;
}

- (id)hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent
{
  v1 = [a1 accessories];
  v2 = [v1 anyObject];
  v3 = [v2 mediaProfile];
  v4 = [v3 hf_isEitherHomePodMediaAccountOrHomeMediaAccountPresent];

  return v4;
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
    v13 = [a1 accessories];
    v14 = [v13 anyObject];
    v15 = [v14 uniqueIdentifier];
    v16 = [a1 hf_home];
    v8 = [(HFSiriLanguageOptionsManager *)v11 initWithSettingsController:v12 accessoryIdentifier:v15 home:v16];

    objc_setAssociatedObject(a1, sel_hf_siriLanguageOptionsManager, v8, 1);
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
  if ([a1 hf_isForcedVisibleInHomeStatus])
  {
    return 1;
  }

  return [a1 hf_shouldBeOnForContextType:1];
}

- (uint64_t)hf_isForcedVisibleInHomeStatus
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_330_0];

  return v2;
}

- (__CFString)hf_tileSize
{
  v2 = [MEMORY[0x277CCA940] set];
  v3 = [a1 accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_tileSize__block_invoke;
  v10[3] = &unk_277DF5200;
  v11 = v2;
  v4 = v2;
  [v3 na_each:v10];

  v5 = [v4 na_mostCommonObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
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
  v5 = [a1 accessories];
  v6 = [v5 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_setTileSize___block_invoke;
  v11[3] = &unk_277DFEA58;
  v11[4] = v4;
  v7 = [v6 na_map:v11];

  v8 = [MEMORY[0x277D2C900] combineAllFutures:v7];
  v9 = [v8 flatMap:&__block_literal_global_337];

  return v9;
}

- (id)hf_containedServices
{
  v1 = [a1 accessories];
  v2 = [v1 na_flatMap:&__block_literal_global_341];

  return v2;
}

- (id)hf_containedCharacteristics
{
  v1 = [a1 hf_containedServices];
  v2 = [v1 na_flatMap:&__block_literal_global_345_0];

  return v2;
}

- (uint64_t)hf_isInRoom:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  v5 = [a1 hf_associatedAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_isInRoom___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

- (id)hf_safeRoom
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_348];

  if ([v2 count] == 1)
  {
    v3 = [v2 anyObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hf_moveToRoom:()HFMediaAccessoryProfileAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v6 = [a1 hf_associatedAccessories];
  v7 = [v6 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMMediaSystem_HFMediaAccessoryProfileAdditions__hf_moveToRoom___block_invoke;
  v12[3] = &unk_277DF4220;
  v13 = v4;
  v8 = v4;
  v9 = [v7 na_map:v12];
  v10 = [v5 combineAllFutures:v9];

  return v10;
}

- (id)hf_stateDumpBuilderWithContext:()HFMediaAccessoryProfileAdditions
{
  v4 = _HFStateDumpBuilderForMediaProfileContainer(a1, a3);
  v5 = [a1 components];
  [v4 appendObject:v5 withName:@"components"];

  return v4;
}

- (id)hf_displayName
{
  v1 = [a1 hf_serviceNameComponents];
  v2 = [v1 composedString];

  return v2;
}

- (uint64_t)hf_supportsPreferredMediaUser
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 accessories];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (([v6 hf_isHomePod] & 1) == 0 && !objc_msgSend(v6, "hf_isSiriEndpoint") || !objc_msgSend(v6, "supportsPreferredMediaUser"))
        {
          v7 = 0;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  if ([a1 hf_supportsPreferredMediaUser])
  {
    v2 = [a1 accessories];
    v3 = [v2 anyObject];
    v4 = [v3 preferredMediaUser];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)hf_preferredUserSelectionType
{
  v1 = [a1 accessories];
  v2 = [v1 anyObject];
  v3 = [v2 preferredUserSelectionType];

  return v3;
}

- (id)hf_identify
{
  v1 = [a1 accessories];
  v2 = [v1 allObjects];
  v3 = [v2 na_map:&__block_literal_global_353];

  v4 = [MEMORY[0x277D2C900] combineAllFutures:v3];

  return v4;
}

@end