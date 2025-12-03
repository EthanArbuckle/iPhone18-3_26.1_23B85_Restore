@interface NSBundle(GKAdditions)
+ (id)_gkPreferredSystemLanguage;
+ (id)_gkPreferredUserLanguage;
+ (uint64_t)_gkBundleIdentifierIsAnyOverlayUI:()GKAdditions;
+ (uint64_t)_gkBundleIdentifierIsRelatedToContactsUI:()GKAdditions;
+ (uint64_t)_gkMainBundleIsGameCenterSystemProcess;
- (BOOL)_gkIsEligibleForNearbyAdvertising;
- (id)_gkBundleShortVersion;
- (id)_gkBundleVersion;
- (id)_gkLocalizedName;
- (id)_gkLocalizedStringForKey:()GKAdditions defaultValue:arguments:;
- (id)_gkPathForSoundWithName:()GKAdditions;
- (id)_gkSystemLocalizedStringForKey:()GKAdditions value:table:;
- (uint64_t)_gkIsAnyOverlayUI;
- (uint64_t)_gkIsContacts;
- (uint64_t)_gkIsEligibleForOnboardingUI;
- (uint64_t)_gkIsGameCenter;
- (uint64_t)_gkIsGameCenterExtension;
- (uint64_t)_gkIsGameDaemon;
- (uint64_t)_gkIsKnownFirstParty;
- (uint64_t)_gkIsPreferences;
- (uint64_t)_gkIsPurpleBuddy;
- (void)_gkIsEligibleForNearbyAdvertising;
@end

@implementation NSBundle(GKAdditions)

+ (id)_gkPreferredSystemLanguage
{
  v0 = GKGameCenterUIFrameworkBundle();
  v1 = MEMORY[0x277CCA8D8];
  localizations = [v0 localizations];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [v1 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  firstObject = [v4 firstObject];
  v6 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:firstObject];

  return v6;
}

- (uint64_t)_gkIsPreferences
{
  bundleIdentifier = [self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.Preferences"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.preferences.internetaccounts.remoteservice") & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.Game-Center-Settings.extension") & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.GameCenterUI.GameCenterHostingContainer") & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.TVSettings"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [bundleIdentifier isEqualToString:@"com.apple.gamecenterctl"];
  }

  return v2;
}

- (uint64_t)_gkIsGameCenter
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier isEqualToString:@"com.apple.gamecenter"];

  return v2;
}

- (BOOL)_gkIsEligibleForNearbyAdvertising
{
  if ([self _gkIsKnownFirstParty])
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKMatch;
    result = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      [(NSBundle(GKAdditions) *)v3 _gkIsEligibleForNearbyAdvertising];
      return 0;
    }
  }

  else if ([self _gkIsPreferences])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    result = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      [(NSBundle(GKAdditions) *)v6 _gkIsEligibleForNearbyAdvertising];
      return 0;
    }
  }

  else if ([self _gkIsGameCenter])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    result = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      [(NSBundle(GKAdditions) *)v8 _gkIsEligibleForNearbyAdvertising];
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

- (uint64_t)_gkIsKnownFirstParty
{
  if (_gkIsKnownFirstParty_onceToken != -1)
  {
    [NSBundle(GKAdditions) _gkIsKnownFirstParty];
  }

  if ([self _gkIsContacts] & 1) != 0 || (objc_msgSend(self, "_gkIsAnyOverlayUI"))
  {
    return 1;
  }

  v3 = _gkIsKnownFirstParty_firstPartySetIdentifiers;
  bundleIdentifier = [self bundleIdentifier];
  v5 = [v3 containsObject:bundleIdentifier];

  return v5;
}

- (uint64_t)_gkIsContacts
{
  v1 = MEMORY[0x277CCA8D8];
  bundleIdentifier = [self bundleIdentifier];
  v3 = [v1 _gkBundleIdentifierIsRelatedToContactsUI:bundleIdentifier];

  return v3;
}

- (uint64_t)_gkIsGameCenterExtension
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v9[0] = @"com.apple.GameCenterUI.GameCenterDashboardExtension";
  v9[1] = @"com.apple.GameCenterUI.GameCenterMatchmakerExtension";
  v9[2] = @"com.apple.GameCenterUI.GameCenterTurnBasedMatchmakerExtension";
  v9[3] = @"com.apple.GameCenterUI.GameCenterChallengeIssueExtension";
  v9[4] = @"com.apple.GameCenterUI.GameCenterFriendRequestExtension";
  v9[5] = @"com.apple.GameCenterUI.GameCenterAuthenticateExtension";
  v9[6] = @"com.apple.gamecenter.GameCenterUIService";
  v9[7] = @"com.apple.gamecenter.GameCenterUIService.GameCenterMessageExtension";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v4 = [v2 setWithArray:v3];

  bundleIdentifier = [self bundleIdentifier];
  v6 = [v4 containsObject:bundleIdentifier];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)_gkIsGameDaemon
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier isEqualToString:@"com.apple.gamed"];

  return v2;
}

- (uint64_t)_gkIsAnyOverlayUI
{
  v1 = MEMORY[0x277CCA8D8];
  bundleIdentifier = [self bundleIdentifier];
  v3 = [v1 _gkBundleIdentifierIsAnyOverlayUI:bundleIdentifier];

  return v3;
}

+ (uint64_t)_gkMainBundleIsGameCenterSystemProcess
{
  if (_gkMainBundleIsGameCenterSystemProcess_onceToken != -1)
  {
    +[NSBundle(GKAdditions) _gkMainBundleIsGameCenterSystemProcess];
  }

  return _gkMainBundleIsGameCenterSystemProcess_isGameCenterSystemProcess;
}

- (id)_gkPathForSoundWithName:()GKAdditions
{
  v4 = a3;
  v5 = [self pathForResource:v4 ofType:@"caf"];
  if (!v5)
  {
    v5 = [self pathForResource:v4 ofType:@"aif"];
    if (!v5)
    {
      v5 = [self pathForResource:v4 ofType:@"wav"];
    }
  }

  v6 = v5;

  return v6;
}

- (id)_gkBundleVersion
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKey:*MEMORY[0x277CBED58]];

  return v2;
}

- (id)_gkBundleShortVersion
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

  return v2;
}

- (id)_gkLocalizedName
{
  infoDictionary = [self infoDictionary];
  v3 = [infoDictionary objectForKey:*MEMORY[0x277CBEC40]];
  if (!v3)
  {
    v3 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];
  }

  v4 = GKGetLocalizedStringFromTableInBundle(v3, @"InfoPlist", self);

  return v4;
}

+ (id)_gkPreferredUserLanguage
{
  v26 = *MEMORY[0x277D85DE8];
  _gkPreferredSystemLanguage = [self _gkPreferredSystemLanguage];
  v2 = 0x277CBE000uLL;
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:_gkPreferredSystemLanguage];
  countryCode = [v3 countryCode];

  if (!countryCode)
  {
    v19 = _gkPreferredSystemLanguage;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [MEMORY[0x277CBEAF8] preferredLanguages];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [objc_alloc(*(v2 + 2808)) initWithLocaleIdentifier:*(*(&v21 + 1) + 8 * i)];
          countryCode2 = [v10 countryCode];
          if (countryCode2)
          {
            v12 = countryCode2;
            [v3 languageCode];
            v14 = v13 = v2;
            languageCode = [v10 languageCode];
            v16 = [v14 isEqualToString:languageCode];

            v2 = v13;
            if (v16)
            {
              localeIdentifier = [v10 localeIdentifier];

              _gkPreferredSystemLanguage = v19;
              goto LABEL_14;
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    _gkPreferredSystemLanguage = v19;
  }

  localeIdentifier = _gkPreferredSystemLanguage;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return localeIdentifier;
}

- (id)_gkSystemLocalizedStringForKey:()GKAdditions value:table:
{
  v64[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v48 = a4;
  v8 = a5;
  v9 = GKGameCenterUIFrameworkBundle();
  v64[0] = v9;
  v10 = GKGameCenterFoundationBundle();
  v64[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];

  if (!_gkSystemLocalizedStringForKey_value_table____localizationLookup)
  {
    obj = v7;
    v12 = GKGameCenterUIFrameworkBundle();
    localizations = [v12 localizations];

    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(localizations, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = localizations;
    v16 = [v15 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v58;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v58 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v57 + 1) + 8 * i);
          v21 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:{v20, obj, v48}];
          if (v21)
          {
            [v14 setObject:v20 forKey:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v17);
    }

    v22 = _gkSystemLocalizedStringForKey_value_table____localizationLookup;
    _gkSystemLocalizedStringForKey_value_table____localizationLookup = v14;

    v7 = obj;
  }

  v23 = v7;
  _gkPreferredSystemLanguage = [MEMORY[0x277CCA8D8] _gkPreferredSystemLanguage];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
  v27 = v23;
  obja = v25;
  if (v26)
  {
    v28 = v26;
    v29 = *v54;
    v27 = v23;
    while (2)
    {
      v30 = 0;
      do
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v53 + 1) + 8 * v30);
        v32 = __68__NSBundle_GKAdditions___gkSystemLocalizedStringForKey_value_table___block_invoke_2(v26, v31, v23, v48, v8, _gkPreferredSystemLanguage);

        if ([v32 isEqualToString:v23])
        {
          v33 = [_gkSystemLocalizedStringForKey_value_table____localizationLookup objectForKey:_gkPreferredSystemLanguage];
          v34 = v33;
          if (v33)
          {
            v35 = __68__NSBundle_GKAdditions___gkSystemLocalizedStringForKey_value_table___block_invoke_2(v33, v31, v23, v48, v8, v33);

            v32 = v35;
          }
        }

        if ([v32 isEqualToString:{v23, obja}] && (v36 = objc_msgSend(_gkPreferredSystemLanguage, "rangeOfString:options:", @"-", 4), v36 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v37 = [_gkPreferredSystemLanguage substringToIndex:v36];
          v27 = __68__NSBundle_GKAdditions___gkSystemLocalizedStringForKey_value_table___block_invoke_2(v37, v31, v23, v48, v8, v37);
        }

        else
        {
          v27 = v32;
        }

        v26 = [v27 isEqualToString:v23];
        if (!v26)
        {
          v25 = obja;
          goto LABEL_30;
        }

        ++v30;
      }

      while (v28 != v30);
      v25 = obja;
      v26 = [obja countByEnumeratingWithState:&v53 objects:v62 count:16];
      v28 = v26;
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  if ([v27 isEqualToString:v23])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v38 = v25;
    v39 = [v38 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v50;
LABEL_33:
      v42 = 0;
      v43 = v27;
      while (1)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v27 = __68__NSBundle_GKAdditions___gkSystemLocalizedStringForKey_value_table___block_invoke_2(v39, *(*(&v49 + 1) + 8 * v42), v23, v48, v8, @"en");

        v39 = [v27 isEqualToString:v23];
        if (!v39)
        {
          break;
        }

        ++v42;
        v43 = v27;
        if (v40 == v42)
        {
          v39 = [v38 countByEnumeratingWithState:&v49 objects:v61 count:16];
          v40 = v39;
          if (v39)
          {
            goto LABEL_33;
          }

          break;
        }
      }
    }

    v25 = obja;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_gkLocalizedStringForKey:()GKAdditions defaultValue:arguments:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = 0;
  }

  v11 = [self _gkSystemLocalizedStringForKey:v8 value:v8 table:0];
  v12 = v11;
  if (v11 && [v11 length])
  {
    v13 = GKFormatNetworkStringWithArguments(v12, v10);
LABEL_16:
    v14 = v13;
    goto LABEL_18;
  }

  if (v9 && [v9 length])
  {
    v13 = v9;
    goto LABEL_16;
  }

  if (v8 && [v8 length])
  {
    v13 = v8;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

+ (uint64_t)_gkBundleIdentifierIsRelatedToContactsUI:()GKAdditions
{
  v3 = _gkBundleIdentifierIsRelatedToContactsUI__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NSBundle(GKAdditions) _gkBundleIdentifierIsRelatedToContactsUI:];
  }

  v5 = [_gkBundleIdentifierIsRelatedToContactsUI__contactsUIBundleIdentifiers containsObject:v4];

  return v5;
}

- (uint64_t)_gkIsPurpleBuddy
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  return v2;
}

- (uint64_t)_gkIsEligibleForOnboardingUI
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NSBundle_GKAdditions___gkIsEligibleForOnboardingUI__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  if (_gkIsEligibleForOnboardingUI_onceToken != -1)
  {
    dispatch_once(&_gkIsEligibleForOnboardingUI_onceToken, block);
  }

  return _gkIsEligibleForOnboardingUI_isEligible;
}

+ (uint64_t)_gkBundleIdentifierIsAnyOverlayUI:()GKAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.GameOverlayUI"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.GameOverlayViewService"];
  }

  return v4;
}

- (void)_gkIsEligibleForNearbyAdvertising
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  bundleIdentifier = [a2 bundleIdentifier];
  OUTLINED_FUNCTION_1_6(&dword_227904000, v5, v6, "[%@]Current game is a known first party process and not eligible for nearby.", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end