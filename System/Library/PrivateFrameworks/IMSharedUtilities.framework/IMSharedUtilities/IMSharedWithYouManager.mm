@interface IMSharedWithYouManager
+ (BOOL)_isBundleIDAllowed:(id)allowed;
+ (BOOL)defaultCollaborationAppsEnabled;
+ (BOOL)isSharedWithYouEnabled;
+ (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)d;
+ (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)d;
+ (BOOL)sharedWithYouKeyExists;
+ (id)_hiddenBundleIDs;
+ (id)appBundleIDsFromDefaults;
+ (id)cachedSharedWithYouEnabledValue;
+ (id)collaborationAppBundleIDs;
+ (id)onboardingAppBundleIDs;
+ (id)sharedManager;
+ (id)sharedWithYouApplicationBundleIDs;
+ (void)setSharedWithYouEnabled:(BOOL)enabled;
+ (void)setSharedWithYouEnabled:(BOOL)enabled forApplicationWithBundleID:(id)d;
+ (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)individually;
- (BOOL)defaultCollaborationAppsEnabled;
- (BOOL)isDataDetectedLinkAllowedForSWY:(id)y;
- (BOOL)isSharedWithYouEnabled;
- (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)d;
- (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)d;
- (BOOL)sharedWithYouKeyExists;
- (BOOL)showPinningStatusTextForBundleID:(id)d;
- (IMSharedWithYouManager)init;
- (id)_installedLSAppRecordFromBundleIDs:(id)ds;
- (id)appNameFromSharingURL:(id)l;
- (id)appStoreIDFromSharingURL:(id)l;
- (id)appStoreURLFromSharingURL:(id)l;
- (id)defaultAppBundleIDs;
- (id)enabledApps;
- (id)lsAppRecordForAppStoreShareURL:(id)l;
- (id)lsAppRecordForShareBearURL:(id)l;
- (id)lsAppRecordForURL:(id)l checkInstalledAppsOnly:(BOOL)only;
- (id)sharedWithYouApplicationBundleIDs;
- (id)sharedWithYouApps;
- (id)swyPublicEntitlementAppBundleIDs;
- (id)urlMinusFragment:(id)fragment onlyCKURL:(BOOL)l;
- (int64_t)getPinCountForBundleID:(id)d;
- (void)appNameAndBundleIDFoURL:(id)l outAppName:(id *)name outBundleID:(id *)d;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)decrementPinCountForBundleID:(id)d;
- (void)deleteSharedWithYouPreferences;
- (void)incrementPinCountForBundleID:(id)d;
- (void)setSharedWithYouEnabled:(BOOL)enabled;
- (void)setSharedWithYouEnabled:(BOOL)enabled forApplicationWithBundleID:(id)d;
- (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)individually;
- (void)updateEnabledApps;
@end

@implementation IMSharedWithYouManager

+ (id)sharedManager
{
  if (qword_1ED8CA110 != -1)
  {
    sub_1A88C2CA8();
  }

  v3 = qword_1ED8C9900;

  return v3;
}

- (IMSharedWithYouManager)init
{
  v11.receiver = self;
  v11.super_class = IMSharedWithYouManager;
  v2 = [(IMSharedWithYouManager *)&v11 init];
  if (v2)
  {
    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    v4 = [messagesAppDomain objectForKey:@"SharedWithYouPinsCache"];
    v5 = [v4 mutableCopy];
    swyPinsPerBundleID = v2->_swyPinsPerBundleID;
    v2->_swyPinsPerBundleID = v5;

    if (!v2->_swyPinsPerBundleID)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v2->_swyPinsPerBundleID;
      v2->_swyPinsPerBundleID = v7;
    }

    _applicationWorkspace = [(IMSharedWithYouManager *)v2 _applicationWorkspace];
    [_applicationWorkspace addObserver:v2];

    [(IMSharedWithYouManager *)v2 updateEnabledApps];
  }

  return v2;
}

- (void)dealloc
{
  _applicationWorkspace = [(IMSharedWithYouManager *)self _applicationWorkspace];
  [_applicationWorkspace removeObserver:self];

  messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
  swyPinsPerBundleID = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
  [messagesAppDomain setObject:swyPinsPerBundleID forKey:@"SharedWithYouPinsCache"];

  v6.receiver = self;
  v6.super_class = IMSharedWithYouManager;
  [(IMSharedWithYouManager *)&v6 dealloc];
}

+ (id)cachedSharedWithYouEnabledValue
{
  if (qword_1EB309590 != -1)
  {
    sub_1A88C2CBC();
  }

  v2 = qword_1EB3095F0;
  if (!qword_1EB3095F0)
  {
    v3 = CFPreferencesCopyAppValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer");
    v4 = [v3 copy];
    v5 = qword_1EB3095F0;
    qword_1EB3095F0 = v4;

    v2 = qword_1EB3095F0;
  }

  return v2;
}

+ (BOOL)isSharedWithYouEnabled
{
  v3 = +[IMDeviceUtilities supportsSharedWithYou];
  if (v3)
  {
    if (IMIsRunningInUnitTesting())
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      cachedSharedWithYouEnabledValue = [self cachedSharedWithYouEnabledValue];
      bOOLValue = [cachedSharedWithYouEnabledValue BOOLValue];

      LOBYTE(v3) = bOOLValue;
    }
  }

  return v3;
}

+ (void)setSharedWithYouEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  CFPreferencesSetAppValue(@"SharedWithYouEnabled", [MEMORY[0x1E696AD98] numberWithBool:?], @"com.apple.SocialLayer");
  CFPreferencesAppSynchronize(@"com.apple.SocialLayer");
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v5 = qword_1EB3095F0;
  qword_1EB3095F0 = v4;

  uTF8String = [@"SLSharedWithYouSettingHasChanged" UTF8String];

  notify_post(uTF8String);
}

- (BOOL)isSharedWithYouEnabled
{
  v2 = objc_opt_class();

  return [v2 isSharedWithYouEnabled];
}

- (void)setSharedWithYouEnabled:(BOOL)enabled
{
  v3 = objc_opt_class();

  MEMORY[0x1EEE66B58](v3, sel_setSharedWithYouEnabled_);
}

+ (BOOL)sharedWithYouKeyExists
{
  v8 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"SharedWithYouEnabled", @"com.apple.SocialLayer", &keyExistsAndHasValidFormat);
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (keyExistsAndHasValidFormat)
      {
        v3 = @"Yes";
      }

      else
      {
        v3 = @"No";
      }

      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "SharedWithYouKeyExists = %@ for", buf, 0xCu);
    }
  }

  return keyExistsAndHasValidFormat != 0;
}

- (BOOL)sharedWithYouKeyExists
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_sharedWithYouKeyExists);
}

+ (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([self isSharedWithYouEnabled])
  {
    if (![dCopy length] && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Invalid bundleID:%@", &v12, 0xCu);
      }
    }

    v6 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKey:dCopy];

      if (v8)
      {
        v9 = [v7 objectForKey:dCopy];
        LOBYTE(v8) = [v9 BOOLValue];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = dCopy;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Failed to find bundleID:%@ in the SharedWithYouApp's", &v12, 0xCu);
        }
      }

      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() isSharedWithYouEnabledForApplicationWithBundleID:dCopy];

  return v4;
}

+ (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([self isSharedWithYouEnabled])
  {
    if (![dCopy length] && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = dCopy;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Invalid bundleID: %@", &v10, 0xCu);
      }
    }

    v6 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
    v7 = [v6 objectForKey:dCopy];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() isSharedWithYouSetUpForApplicationWithBundleID:dCopy];

  return v4;
}

+ (BOOL)defaultCollaborationAppsEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[IMSharedWithYouManager collaborationAppBundleIDs];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 = v6 && [IMSharedWithYouManager isSharedWithYouEnabledForApplicationWithBundleID:*(*(&v9 + 1) + 8 * i)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)defaultCollaborationAppsEnabled
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_defaultCollaborationAppsEnabled);
}

+ (id)onboardingAppBundleIDs
{
  v14 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_1F1BFAD48 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_1F1BFAD48);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([objc_opt_class() _isBundleIDAllowed:v7])
        {
          [array addObject:v7];
        }
      }

      v4 = [&unk_1F1BFAD48 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return array;
}

- (id)defaultAppBundleIDs
{
  array = [MEMORY[0x1E695DF70] array];
  onboardingAppBundleIDs = [objc_opt_class() onboardingAppBundleIDs];
  [array addObjectsFromArray:onboardingAppBundleIDs];

  collaborationAppBundleIDs = [objc_opt_class() collaborationAppBundleIDs];
  [array addObjectsFromArray:collaborationAppBundleIDs];

  v6 = [MEMORY[0x1E695DFA8] setWithArray:array];
  v7 = MEMORY[0x1E695DFA8];
  v8 = +[IMSharedWithYouManager sharedWithYouApplicationBundleIDs];
  v9 = [v7 setWithArray:v8];

  [v9 minusSet:v6];
  swyPublicEntitlementAppBundleIDs = [(IMSharedWithYouManager *)self swyPublicEntitlementAppBundleIDs];
  if ([swyPublicEntitlementAppBundleIDs count])
  {
    [array addObjectsFromArray:swyPublicEntitlementAppBundleIDs];
  }

  allObjects = [v9 allObjects];
  [array addObjectsFromArray:allObjects];

  v12 = +[IMSharedWithYouManager _hiddenBundleIDs];
  [array removeObjectsInArray:v12];

  return array;
}

+ (id)collaborationAppBundleIDs
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:&unk_1F1BFAD60];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = array;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([objc_opt_class() _isBundleIDAllowed:{v9, v11}])
        {
          [array2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array2;
}

+ (id)_hiddenBundleIDs
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1F1BFAD78];
  [v2 addObjectsFromArray:&unk_1F1BFAD90];
  v3 = [v2 copy];

  return v3;
}

- (id)enabledApps
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  enabledBundleIDs = [(IMSharedWithYouManager *)self enabledBundleIDs];
  v5 = [enabledBundleIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(enabledBundleIDs);
        }

        v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v11 + 1) + 8 * i) allowPlaceholder:0 error:0];
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [enabledBundleIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)updateEnabledApps
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  [v3 setFilter:&unk_1F1BA6628];
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * v9) bundleIdentifier];
        if (bundleIdentifier)
        {
          [v4 addObject:bundleIdentifier];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  enabledBundleIDs = [(IMSharedWithYouManager *)self enabledBundleIDs];
  v12 = [v4 isEqualToSet:enabledBundleIDs];

  if ((v12 & 1) == 0)
  {
    [(IMSharedWithYouManager *)self setEnabledBundleIDs:v4];
  }
}

- (id)swyPublicEntitlementAppBundleIDs
{
  v36 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(IMSharedWithYouManager *)self enabledApps];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v3 = v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v6 = *v28;
    *&v5 = 138412290;
    v25 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        applicationState = [v8 applicationState];
        isRestricted = [applicationState isRestricted];

        if (isRestricted)
        {
          if (!IMOSLoggingEnabled())
          {
            continue;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier = [v8 bundleIdentifier];
            applicationState2 = [v8 applicationState];
            isRestricted2 = [applicationState2 isRestricted];
            *buf = 138412546;
            v15 = @"NO";
            if (isRestricted2)
            {
              v15 = @"YES";
            }

            v32 = bundleIdentifier;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Not including bundleID %@ since isAppRestricted %@", buf, 0x16u);
          }

          goto LABEL_12;
        }

        v16 = +[IMSharedWithYouManager _hiddenBundleIDs];
        bundleIdentifier2 = [v8 bundleIdentifier];
        if ([v16 containsObject:bundleIdentifier2])
        {
        }

        else
        {
          v18 = +[IMSharedWithYouManager collaborationAppBundleIDs];
          bundleIdentifier3 = [v8 bundleIdentifier];
          v20 = [v18 containsObject:bundleIdentifier3];

          if ((v20 & 1) == 0)
          {
            bundleIdentifier4 = [v8 bundleIdentifier];
            [array addObject:bundleIdentifier4];

            continue;
          }
        }

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier5 = [v8 bundleIdentifier];
            *buf = v25;
            v32 = bundleIdentifier5;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Not including bundleID %@ since its to be hidden or is a default collaboration app", buf, 0xCu);
          }

LABEL_12:

          continue;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v4);
  }

  v23 = [array copy];

  return v23;
}

+ (id)appBundleIDsFromDefaults
{
  v2 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
  allKeys = [v2 allKeys];

  return allKeys;
}

- (id)sharedWithYouApps
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  defaultAppBundleIDs = [(IMSharedWithYouManager *)self defaultAppBundleIDs];
  v4 = [defaultAppBundleIDs countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(defaultAppBundleIDs);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = objc_alloc(MEMORY[0x1E69635F8]);
        v17 = 0;
        v9 = [v8 initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v17];
        v10 = v17;
        if (v10)
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              localizedDescription = [v10 localizedDescription];
              *buf = 138412546;
              v23 = v7;
              v24 = 2112;
              v25 = localizedDescription;
              _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Failed to create an Application record for bundle: %@. Error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          localizedName = [v9 localizedName];
          [dictionary setValue:v7 forKey:localizedName];
        }
      }

      v4 = [defaultAppBundleIDs countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  v14 = [dictionary copy];

  return v14;
}

+ (BOOL)_isBundleIDAllowed:(id)allowed
{
  v29 = *MEMORY[0x1E69E9840];
  allowedCopy = allowed;
  if ([allowedCopy length])
  {
    v22 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:allowedCopy allowPlaceholder:0 error:&v22];
    v5 = v22;
    applicationState = [v4 applicationState];
    isRestricted = [applicationState isRestricted];

    tvAppBundleID = [objc_opt_class() tvAppBundleID];
    LODWORD(applicationState) = [allowedCopy isEqualToString:tvAppBundleID];

    if (applicationState)
    {
      if (qword_1ED8CA4A8 != -1)
      {
        sub_1A88C2CD0();
      }

      if (!qword_1ED8CA4A0 && IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Unable to weaklink WLKURLBagUtilities", buf, 2u);
        }
      }

      isFullTVAppEnabledCachedValue = [qword_1ED8CA4A0 isFullTVAppEnabledCachedValue];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = isFullTVAppEnabledCachedValue;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "isFullTVAppEnabledCachedValue %@", buf, 0xCu);
        }
      }

      if (isFullTVAppEnabledCachedValue)
      {
        bOOLValue = [isFullTVAppEnabledCachedValue BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = @"NO";
          if (isRestricted)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          *buf = 138412802;
          v24 = allowedCopy;
          v26 = v18;
          v25 = 2112;
          if (bOOLValue)
          {
            v17 = @"YES";
          }

          v27 = 2112;
          v28 = v17;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "BundleID Allowed check for bundle ID %@ isAppRestricted %@ isFullTVAppEnabled %@", buf, 0x20u);
        }
      }

      v13 = (isRestricted ^ 1) & bOOLValue;
    }

    else
    {
      v13 = isRestricted ^ 1;
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (isRestricted)
          {
            v15 = @"YES";
          }

          *buf = 138412546;
          v24 = allowedCopy;
          v25 = 2112;
          v26 = v15;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "BundleID Allowed check for bundle ID %@ isAppRestricted %@", buf, 0x16u);
        }
      }
    }

    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v5 localizedDescription];
          *buf = 138412546;
          v24 = allowedCopy;
          v25 = 2112;
          v26 = localizedDescription;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Failed to create the Application record for bundle: %@. Error: %@", buf, 0x16u);
        }
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)sharedWithYouApplicationBundleIDs
{
  v2 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
  v3 = v2;
  if (v2)
  {
    allKeys = [v2 allKeys];
    v5 = [allKeys mutableCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "No apps found in SharedWithYouApp's", v13, 2u);
      }
    }

    v5 = 0;
  }

  v7 = +[IMSharedWithYouManager _hiddenBundleIDs];
  [v5 removeObjectsInArray:v7];

  v8 = [v5 copy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  return v10;
}

- (id)sharedWithYouApplicationBundleIDs
{
  v2 = objc_opt_class();

  return [v2 sharedWithYouApplicationBundleIDs];
}

+ (void)setSharedWithYouEnabled:(BOOL)enabled forApplicationWithBundleID:(id)d
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length] && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Invalid bundleID:%@", &v14, 0xCu);
    }
  }

  v7 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
  v8 = v7;
  if (v7)
  {
    dictionary = [v7 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = dCopy;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Adding bundleID:%@ to the Shared With You Preferences", &v14, 0xCu);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"No";
      if (enabledCopy)
      {
        v12 = @"Yes";
      }

      v14 = 138412546;
      v15 = dCopy;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Setting bundleID:%@ to enabled:%@ in SharedWithYouApp Preferences", &v14, 0x16u);
    }
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [dictionary setObject:v13 forKey:dCopy];

  CFPreferencesSetAppValue(@"SharedWithYouApps", dictionary, @"com.apple.SocialLayer");
  CFPreferencesAppSynchronize(@"com.apple.SocialLayer");
  notify_post([@"SLSharedWithYouAppSettingHasChanged" UTF8String]);
}

- (void)setSharedWithYouEnabled:(BOOL)enabled forApplicationWithBundleID:(id)d
{
  enabledCopy = enabled;
  dCopy = d;
  [objc_opt_class() setSharedWithYouEnabled:enabledCopy forApplicationWithBundleID:dCopy];
}

+ (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)individually
{
  individuallyCopy = individually;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sharedWithYouApplicationBundleIDs = [self sharedWithYouApplicationBundleIDs];
  v6 = [sharedWithYouApplicationBundleIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(sharedWithYouApplicationBundleIDs);
        }

        [self setSharedWithYouEnabled:individuallyCopy forApplicationWithBundleID:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [sharedWithYouApplicationBundleIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)individually
{
  v3 = objc_opt_class();

  MEMORY[0x1EEE66B58](v3, sel_setSharedWithYouEnabledForAllApplicationsIndividually_);
}

- (BOOL)showPinningStatusTextForBundleID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = dCopy;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "nil bundleID passed in. bundleID:%@", &v10, 0xCu);
      }
    }

    goto LABEL_8;
  }

  swyPublicEntitlementAppBundleIDs = [(IMSharedWithYouManager *)self swyPublicEntitlementAppBundleIDs];
  v6 = [swyPublicEntitlementAppBundleIDs containsObject:dCopy];

  if (!v6)
  {
LABEL_8:
    LOBYTE(v7) = 0;
    goto LABEL_9;
  }

  v7 = ![IMSharedWithYouManager isSharedWithYouEnabledForApplicationWithBundleID:dCopy];
LABEL_9:

  return v7;
}

- (void)appNameAndBundleIDFoURL:(id)l outAppName:(id *)name outBundleID:(id *)d
{
  lCopy = l;
  if (lCopy)
  {
    v9 = [(IMSharedWithYouManager *)self lsAppRecordForURL:lCopy checkInstalledAppsOnly:1];
    bundleIdentifier = [v9 bundleIdentifier];

    if (!bundleIdentifier)
    {
      goto LABEL_23;
    }

    bundleIdentifier2 = [v9 bundleIdentifier];
    v12 = [(IMSharedWithYouManager *)self showPinningStatusTextForBundleID:bundleIdentifier2];

    if (!v12)
    {
      goto LABEL_23;
    }

    localizedName = [v9 localizedName];
    bundleIdentifier3 = [v9 bundleIdentifier];
    if (name && localizedName)
    {
      v15 = localizedName;
      *name = localizedName;
      if (!d)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Failed to get App Name for URL", v20, 2u);
        }
      }

      if (!d)
      {
        goto LABEL_18;
      }
    }

    if (bundleIdentifier3)
    {
      v17 = bundleIdentifier3;
      *d = bundleIdentifier3;
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

LABEL_18:
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Failed to get Bundle ID for URL", v19, 2u);
      }
    }

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Invalid URL passed in to add lookup name and bundleID", buf, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (id)lsAppRecordForURL:(id)l checkInstalledAppsOnly:(BOOL)only
{
  onlyCopy = only;
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v25 = 0;
  v7 = [MEMORY[0x1E69635C0] appLinksWithURL:lCopy limit:1 includeLinksForCurrentApplication:1 error:&v25];
  v8 = v25;
  if (!v7 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "LSAppLink URL query error: %@", buf, 0xCu);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v11)
  {
    v19 = 0;
    v12 = v10;
    goto LABEL_23;
  }

  v12 = 0;
  v13 = *v22;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      if ([v15 isEnabled])
      {
        targetApplicationRecord = [v15 targetApplicationRecord];

        v12 = targetApplicationRecord;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v11);

  if (onlyCopy)
  {
    if (v12)
    {
      bundleIdentifier = [v12 bundleIdentifier];
      v18 = [bundleIdentifier isEqualToString:@"com.apple.CloudKit.ShareBear"];

      if (v18)
      {
        v19 = [(IMSharedWithYouManager *)self lsAppRecordForShareBearURL:lCopy];
LABEL_23:

        goto LABEL_24;
      }
    }
  }

  v19 = v12;
LABEL_24:

LABEL_25:

  return v19;
}

- (id)_installedLSAppRecordFromBundleIDs:(id)ds
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = dsCopy;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = objc_alloc(MEMORY[0x1E69635F8]);
          v11 = [v10 initWithBundleIdentifier:v9 allowPlaceholder:0 error:{0, v19}];

          v5 = v11;
          applicationState = [v11 applicationState];
          if ([applicationState isInstalled])
          {
            v13 = [v5 URL];
            v14 = v13 == 0;

            if (!v14)
            {
              if (IMOSLoggingEnabled())
              {
                v17 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v24 = v9;
                  _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Found LSAppRecord for bundleID: %@", buf, 0xCu);
                }
              }

              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "no bundleIDs passed in", buf, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (id)lsAppRecordForShareBearURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(IMSyndicationUtilities);
  v6 = [(IMSyndicationUtilities *)v5 bundleIDsForShareBearURL:lCopy];

  v7 = [(IMSharedWithYouManager *)self _installedLSAppRecordFromBundleIDs:v6];

  return v7;
}

- (void)incrementPinCountForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    swyPinsPerBundleID = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v5 = [swyPinsPerBundleID objectForKey:dCopy];
    integerValue = [v5 integerValue];

    swyPinsPerBundleID2 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [swyPinsPerBundleID2 setObject:v8 forKey:dCopy];

    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    swyPinsPerBundleID3 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    [messagesAppDomain setObject:swyPinsPerBundleID3 forKey:@"SharedWithYouPinsCache"];

    messagesAppDomain2 = [MEMORY[0x1E695E000] messagesAppDomain];
    [messagesAppDomain2 synchronize];
  }
}

- (void)decrementPinCountForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    swyPinsPerBundleID = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v5 = [swyPinsPerBundleID objectForKey:dCopy];
    integerValue = [v5 integerValue];

    v7 = integerValue - (integerValue > 0);
    swyPinsPerBundleID2 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v9 = swyPinsPerBundleID2;
    if (v7 <= 0)
    {
      [swyPinsPerBundleID2 removeObjectForKey:dCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      [v9 setObject:v10 forKey:dCopy];
    }

    messagesAppDomain = [MEMORY[0x1E695E000] messagesAppDomain];
    swyPinsPerBundleID3 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    [messagesAppDomain setObject:swyPinsPerBundleID3 forKey:@"SharedWithYouPinsCache"];

    messagesAppDomain2 = [MEMORY[0x1E695E000] messagesAppDomain];
    [messagesAppDomain2 synchronize];
  }
}

- (int64_t)getPinCountForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    swyPinsPerBundleID = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v6 = [swyPinsPerBundleID objectForKey:dCopy];
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)deleteSharedWithYouPreferences
{
  CFPreferencesSetAppValue(@"SharedWithYouApps", 0, @"com.apple.SocialLayer");
  CFPreferencesSetAppValue(@"SharedWithYouEnabled", 0, @"com.apple.SocialLayer");
  CFPreferencesAppSynchronize(@"com.apple.SocialLayer");
  uTF8String = [@"SLSharedWithYouAppSettingHasChanged" UTF8String];

  notify_post(uTF8String);
}

- (void)applicationsDidInstall:(id)install
{
  v8 = *MEMORY[0x1E69E9840];
  installCopy = install;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = installCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "[IMSharedWithYouManager applicationInstallsDidInstall:%@]", &v6, 0xCu);
    }
  }

  [(IMSharedWithYouManager *)self updateEnabledApps];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v8 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = uninstallCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "[IMSharedWithYouManager applicationsDidUninstall:%@]", &v6, 0xCu);
    }
  }

  [(IMSharedWithYouManager *)self updateEnabledApps];
}

- (id)lsAppRecordForAppStoreShareURL:(id)l
{
  lCopy = l;
  v5 = [(IMSharedWithYouManager *)self lsAppRecordForURL:lCopy checkInstalledAppsOnly:0];
  if (v5)
  {
    v6 = v5;
    bundleIdentifier = [v5 bundleIdentifier];
    v8 = [bundleIdentifier isEqualToString:@"com.apple.CloudKit.ShareBear"];

    if (v8)
    {
      v9 = +[IMSharedWithYouManager sharedManager];
      v10 = [v9 lsAppRecordForShareBearURL:lCopy];

      v6 = v10;
    }
  }

  else
  {
    v11 = IMLogHandleForCategory("IMSharedWithYouManager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2CF8();
    }

    v6 = 0;
  }

  return v6;
}

- (id)appStoreIDFromSharingURL:(id)l
{
  if (l)
  {
    v3 = [(IMSharedWithYouManager *)self lsAppRecordForAppStoreShareURL:?];
    v4 = v3;
    if (v3)
    {
      iTunesMetadata = [v3 iTunesMetadata];
      v6 = iTunesMetadata;
      if (iTunesMetadata)
      {
        if ([iTunesMetadata storeItemIdentifier])
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"id%ld", -[NSObject storeItemIdentifier](v6, "storeItemIdentifier")];
LABEL_17:

          goto LABEL_18;
        }

        v8 = IMLogHandleForCategory("IMSharedWithYouManager");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C2D2C();
        }
      }

      else
      {
        v8 = IMLogHandleForCategory("IMSharedWithYouManager");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C2D60();
        }
      }
    }

    else
    {
      v6 = IMLogHandleForCategory("IMSharedWithYouManager");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2D94();
      }
    }

    v7 = 0;
    goto LABEL_17;
  }

  v4 = IMLogHandleForCategory("IMSharedWithYouManager");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C2DC8();
  }

  v7 = 0;
LABEL_18:

  return v7;
}

- (id)appNameFromSharingURL:(id)l
{
  if (l)
  {
    v3 = [(IMSharedWithYouManager *)self lsAppRecordForAppStoreShareURL:?];
    v4 = v3;
    if (v3)
    {
      localizedName = [v3 localizedName];
      if (localizedName)
      {
        goto LABEL_13;
      }

      v6 = IMLogHandleForCategory("IMSharedWithYouManager");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2DFC();
      }
    }

    else
    {
      v6 = IMLogHandleForCategory("IMSharedWithYouManager");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2D94();
      }

      localizedName = 0;
    }
  }

  else
  {
    v4 = IMLogHandleForCategory("IMSharedWithYouManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2E30();
    }

    localizedName = 0;
  }

LABEL_13:

  return localizedName;
}

- (id)appStoreURLFromSharingURL:(id)l
{
  lCopy = l;
  v5 = [(IMSharedWithYouManager *)self appNameFromSharingURL:lCopy];
  v6 = [(IMSharedWithYouManager *)self appStoreIDFromSharingURL:lCopy];

  if (v5 && v6)
  {
    lowercaseString = [v5 lowercaseString];

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://apps.apple.com/us/app/%@/%@", lowercaseString, v6];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];

    v5 = lowercaseString;
  }

  else
  {
    v10 = IMLogHandleForCategory("IMSharedWithYouManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2E64();
    }

    v9 = 0;
  }

  return v9;
}

- (id)urlMinusFragment:(id)fragment onlyCKURL:(BOOL)l
{
  lCopy = l;
  fragmentCopy = fragment;
  if (!fragmentCopy)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (lCopy)
  {
    absoluteString = +[IMSharedWithYouManager sharedManager];
    v7 = [absoluteString lsAppRecordForURL:fragmentCopy checkInstalledAppsOnly:0];
    if (!v7)
    {
      v11 = fragmentCopy;
      goto LABEL_8;
    }

    v8 = v7;
    applicationIdentifier = [v7 applicationIdentifier];
    v10 = [applicationIdentifier isEqualToString:@"com.apple.CloudKit.ShareBear"];

    v11 = fragmentCopy;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  absoluteString = [fragmentCopy absoluteString];
  v12 = [absoluteString componentsSeparatedByString:@"#"];
  v13 = MEMORY[0x1E695DFF8];
  firstObject = [v12 firstObject];
  v11 = [v13 URLWithString:firstObject];

LABEL_8:
LABEL_9:

  return v11;
}

- (BOOL)isDataDetectedLinkAllowedForSWY:(id)y
{
  v22 = *MEMORY[0x1E69E9840];
  yCopy = y;
  if (yCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    _supportedDataDetectedURLSchemes = [(IMSharedWithYouManager *)self _supportedDataDetectedURLSchemes];
    v6 = 0;
    v7 = [_supportedDataDetectedURLSchemes countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(_supportedDataDetectedURLSchemes);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          scheme = [yCopy scheme];
          LOBYTE(v10) = [scheme isEqualToString:v10];

          v6 |= v10;
        }

        v7 = [_supportedDataDetectedURLSchemes countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (v6)
        {
          v13 = @"YES";
        }

        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "shouldDonate: %@ URL", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

@end