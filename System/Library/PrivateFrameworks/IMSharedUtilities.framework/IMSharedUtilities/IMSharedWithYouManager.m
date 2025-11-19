@interface IMSharedWithYouManager
+ (BOOL)_isBundleIDAllowed:(id)a3;
+ (BOOL)defaultCollaborationAppsEnabled;
+ (BOOL)isSharedWithYouEnabled;
+ (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)a3;
+ (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)a3;
+ (BOOL)sharedWithYouKeyExists;
+ (id)_hiddenBundleIDs;
+ (id)appBundleIDsFromDefaults;
+ (id)cachedSharedWithYouEnabledValue;
+ (id)collaborationAppBundleIDs;
+ (id)onboardingAppBundleIDs;
+ (id)sharedManager;
+ (id)sharedWithYouApplicationBundleIDs;
+ (void)setSharedWithYouEnabled:(BOOL)a3;
+ (void)setSharedWithYouEnabled:(BOOL)a3 forApplicationWithBundleID:(id)a4;
+ (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)a3;
- (BOOL)defaultCollaborationAppsEnabled;
- (BOOL)isDataDetectedLinkAllowedForSWY:(id)a3;
- (BOOL)isSharedWithYouEnabled;
- (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)a3;
- (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)a3;
- (BOOL)sharedWithYouKeyExists;
- (BOOL)showPinningStatusTextForBundleID:(id)a3;
- (IMSharedWithYouManager)init;
- (id)_installedLSAppRecordFromBundleIDs:(id)a3;
- (id)appNameFromSharingURL:(id)a3;
- (id)appStoreIDFromSharingURL:(id)a3;
- (id)appStoreURLFromSharingURL:(id)a3;
- (id)defaultAppBundleIDs;
- (id)enabledApps;
- (id)lsAppRecordForAppStoreShareURL:(id)a3;
- (id)lsAppRecordForShareBearURL:(id)a3;
- (id)lsAppRecordForURL:(id)a3 checkInstalledAppsOnly:(BOOL)a4;
- (id)sharedWithYouApplicationBundleIDs;
- (id)sharedWithYouApps;
- (id)swyPublicEntitlementAppBundleIDs;
- (id)urlMinusFragment:(id)a3 onlyCKURL:(BOOL)a4;
- (int64_t)getPinCountForBundleID:(id)a3;
- (void)appNameAndBundleIDFoURL:(id)a3 outAppName:(id *)a4 outBundleID:(id *)a5;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)decrementPinCountForBundleID:(id)a3;
- (void)deleteSharedWithYouPreferences;
- (void)incrementPinCountForBundleID:(id)a3;
- (void)setSharedWithYouEnabled:(BOOL)a3;
- (void)setSharedWithYouEnabled:(BOOL)a3 forApplicationWithBundleID:(id)a4;
- (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)a3;
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
    v3 = [MEMORY[0x1E695E000] messagesAppDomain];
    v4 = [v3 objectForKey:@"SharedWithYouPinsCache"];
    v5 = [v4 mutableCopy];
    swyPinsPerBundleID = v2->_swyPinsPerBundleID;
    v2->_swyPinsPerBundleID = v5;

    if (!v2->_swyPinsPerBundleID)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v2->_swyPinsPerBundleID;
      v2->_swyPinsPerBundleID = v7;
    }

    v9 = [(IMSharedWithYouManager *)v2 _applicationWorkspace];
    [v9 addObserver:v2];

    [(IMSharedWithYouManager *)v2 updateEnabledApps];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(IMSharedWithYouManager *)self _applicationWorkspace];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E695E000] messagesAppDomain];
  v5 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
  [v4 setObject:v5 forKey:@"SharedWithYouPinsCache"];

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
      v4 = [a1 cachedSharedWithYouEnabledValue];
      v5 = [v4 BOOLValue];

      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

+ (void)setSharedWithYouEnabled:(BOOL)a3
{
  v3 = a3;
  CFPreferencesSetAppValue(@"SharedWithYouEnabled", [MEMORY[0x1E696AD98] numberWithBool:?], @"com.apple.SocialLayer");
  CFPreferencesAppSynchronize(@"com.apple.SocialLayer");
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v5 = qword_1EB3095F0;
  qword_1EB3095F0 = v4;

  v6 = [@"SLSharedWithYouSettingHasChanged" UTF8String];

  notify_post(v6);
}

- (BOOL)isSharedWithYouEnabled
{
  v2 = objc_opt_class();

  return [v2 isSharedWithYouEnabled];
}

- (void)setSharedWithYouEnabled:(BOOL)a3
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

+ (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 isSharedWithYouEnabled])
  {
    if (![v4 length] && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Invalid bundleID:%@", &v12, 0xCu);
      }
    }

    v6 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKey:v4];

      if (v8)
      {
        v9 = [v7 objectForKey:v4];
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
          v13 = v4;
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

- (BOOL)isSharedWithYouEnabledForApplicationWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isSharedWithYouEnabledForApplicationWithBundleID:v3];

  return v4;
}

+ (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 isSharedWithYouEnabled])
  {
    if (![v4 length] && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Invalid bundleID: %@", &v10, 0xCu);
      }
    }

    v6 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
    v7 = [v6 objectForKey:v4];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSharedWithYouSetUpForApplicationWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isSharedWithYouSetUpForApplicationWithBundleID:v3];

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
  v2 = [MEMORY[0x1E695DF70] array];
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
          [v2 addObject:v7];
        }
      }

      v4 = [&unk_1F1BFAD48 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)defaultAppBundleIDs
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [objc_opt_class() onboardingAppBundleIDs];
  [v3 addObjectsFromArray:v4];

  v5 = [objc_opt_class() collaborationAppBundleIDs];
  [v3 addObjectsFromArray:v5];

  v6 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  v7 = MEMORY[0x1E695DFA8];
  v8 = +[IMSharedWithYouManager sharedWithYouApplicationBundleIDs];
  v9 = [v7 setWithArray:v8];

  [v9 minusSet:v6];
  v10 = [(IMSharedWithYouManager *)self swyPublicEntitlementAppBundleIDs];
  if ([v10 count])
  {
    [v3 addObjectsFromArray:v10];
  }

  v11 = [v9 allObjects];
  [v3 addObjectsFromArray:v11];

  v12 = +[IMSharedWithYouManager _hiddenBundleIDs];
  [v3 removeObjectsInArray:v12];

  return v3;
}

+ (id)collaborationAppBundleIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF70] array];
  [v2 addObjectsFromArray:&unk_1F1BFAD60];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2;
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
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
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
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(IMSharedWithYouManager *)self enabledBundleIDs];
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

        v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:*(*(&v11 + 1) + 8 * i) allowPlaceholder:0 error:0];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
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

        v10 = [*(*(&v13 + 1) + 8 * v9) bundleIdentifier];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(IMSharedWithYouManager *)self enabledBundleIDs];
  v12 = [v4 isEqualToSet:v11];

  if ((v12 & 1) == 0)
  {
    [(IMSharedWithYouManager *)self setEnabledBundleIDs:v4];
  }
}

- (id)swyPublicEntitlementAppBundleIDs
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E695DF70] array];
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
        v9 = [v8 applicationState];
        v10 = [v9 isRestricted];

        if (v10)
        {
          if (!IMOSLoggingEnabled())
          {
            continue;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v8 bundleIdentifier];
            v13 = [v8 applicationState];
            v14 = [v13 isRestricted];
            *buf = 138412546;
            v15 = @"NO";
            if (v14)
            {
              v15 = @"YES";
            }

            v32 = v12;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Not including bundleID %@ since isAppRestricted %@", buf, 0x16u);
          }

          goto LABEL_12;
        }

        v16 = +[IMSharedWithYouManager _hiddenBundleIDs];
        v17 = [v8 bundleIdentifier];
        if ([v16 containsObject:v17])
        {
        }

        else
        {
          v18 = +[IMSharedWithYouManager collaborationAppBundleIDs];
          v19 = [v8 bundleIdentifier];
          v20 = [v18 containsObject:v19];

          if ((v20 & 1) == 0)
          {
            v22 = [v8 bundleIdentifier];
            [v26 addObject:v22];

            continue;
          }
        }

        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v21 = [v8 bundleIdentifier];
            *buf = v25;
            v32 = v21;
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

  v23 = [v26 copy];

  return v23;
}

+ (id)appBundleIDsFromDefaults
{
  v2 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
  v3 = [v2 allKeys];

  return v3;
}

- (id)sharedWithYouApps
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(IMSharedWithYouManager *)self defaultAppBundleIDs];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
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
              v12 = [v10 localizedDescription];
              *buf = 138412546;
              v23 = v7;
              v24 = 2112;
              v25 = v12;
              _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Failed to create an Application record for bundle: %@. Error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v13 = [v9 localizedName];
          [v16 setValue:v7 forKey:v13];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  v14 = [v16 copy];

  return v14;
}

+ (BOOL)_isBundleIDAllowed:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v22 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v22];
    v5 = v22;
    v6 = [v4 applicationState];
    v7 = [v6 isRestricted];

    v8 = [objc_opt_class() tvAppBundleID];
    LODWORD(v6) = [v3 isEqualToString:v8];

    if (v6)
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

      v10 = [qword_1ED8CA4A0 isFullTVAppEnabledCachedValue];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "isFullTVAppEnabledCachedValue %@", buf, 0xCu);
        }
      }

      if (v10)
      {
        v12 = [v10 BOOLValue];
      }

      else
      {
        v12 = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = @"NO";
          if (v7)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          *buf = 138412802;
          v24 = v3;
          v26 = v18;
          v25 = 2112;
          if (v12)
          {
            v17 = @"YES";
          }

          v27 = 2112;
          v28 = v17;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "BundleID Allowed check for bundle ID %@ isAppRestricted %@ isFullTVAppEnabled %@", buf, 0x20u);
        }
      }

      v13 = (v7 ^ 1) & v12;
    }

    else
    {
      v13 = v7 ^ 1;
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (v7)
          {
            v15 = @"YES";
          }

          *buf = 138412546;
          v24 = v3;
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
          v20 = [v5 localizedDescription];
          *buf = 138412546;
          v24 = v3;
          v25 = 2112;
          v26 = v20;
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
    v4 = [v2 allKeys];
    v5 = [v4 mutableCopy];
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

+ (void)setSharedWithYouEnabled:(BOOL)a3 forApplicationWithBundleID:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (![v5 length] && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Invalid bundleID:%@", &v14, 0xCu);
    }
  }

  v7 = CFPreferencesCopyAppValue(@"SharedWithYouApps", @"com.apple.SocialLayer");
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v5;
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
      if (v4)
      {
        v12 = @"Yes";
      }

      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Setting bundleID:%@ to enabled:%@ in SharedWithYouApp Preferences", &v14, 0x16u);
    }
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v9 setObject:v13 forKey:v5];

  CFPreferencesSetAppValue(@"SharedWithYouApps", v9, @"com.apple.SocialLayer");
  CFPreferencesAppSynchronize(@"com.apple.SocialLayer");
  notify_post([@"SLSharedWithYouAppSettingHasChanged" UTF8String]);
}

- (void)setSharedWithYouEnabled:(BOOL)a3 forApplicationWithBundleID:(id)a4
{
  v4 = a3;
  v5 = a4;
  [objc_opt_class() setSharedWithYouEnabled:v4 forApplicationWithBundleID:v5];
}

+ (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a1 sharedWithYouApplicationBundleIDs];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [a1 setSharedWithYouEnabled:v3 forApplicationWithBundleID:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setSharedWithYouEnabledForAllApplicationsIndividually:(BOOL)a3
{
  v3 = objc_opt_class();

  MEMORY[0x1EEE66B58](v3, sel_setSharedWithYouEnabledForAllApplicationsIndividually_);
}

- (BOOL)showPinningStatusTextForBundleID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 length])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "nil bundleID passed in. bundleID:%@", &v10, 0xCu);
      }
    }

    goto LABEL_8;
  }

  v5 = [(IMSharedWithYouManager *)self swyPublicEntitlementAppBundleIDs];
  v6 = [v5 containsObject:v4];

  if (!v6)
  {
LABEL_8:
    LOBYTE(v7) = 0;
    goto LABEL_9;
  }

  v7 = ![IMSharedWithYouManager isSharedWithYouEnabledForApplicationWithBundleID:v4];
LABEL_9:

  return v7;
}

- (void)appNameAndBundleIDFoURL:(id)a3 outAppName:(id *)a4 outBundleID:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [(IMSharedWithYouManager *)self lsAppRecordForURL:v8 checkInstalledAppsOnly:1];
    v10 = [v9 bundleIdentifier];

    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = [v9 bundleIdentifier];
    v12 = [(IMSharedWithYouManager *)self showPinningStatusTextForBundleID:v11];

    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = [v9 localizedName];
    v14 = [v9 bundleIdentifier];
    if (a4 && v13)
    {
      v15 = v13;
      *a4 = v13;
      if (!a5)
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

      if (!a5)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v17 = v14;
      *a5 = v14;
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

- (id)lsAppRecordForURL:(id)a3 checkInstalledAppsOnly:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v25 = 0;
  v7 = [MEMORY[0x1E69635C0] appLinksWithURL:v6 limit:1 includeLinksForCurrentApplication:1 error:&v25];
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
        v16 = [v15 targetApplicationRecord];

        v12 = v16;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v11);

  if (v4)
  {
    if (v12)
    {
      v17 = [v12 bundleIdentifier];
      v18 = [v17 isEqualToString:@"com.apple.CloudKit.ShareBear"];

      if (v18)
      {
        v19 = [(IMSharedWithYouManager *)self lsAppRecordForShareBearURL:v6];
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

- (id)_installedLSAppRecordFromBundleIDs:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v3;
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
          v12 = [v11 applicationState];
          if ([v12 isInstalled])
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

- (id)lsAppRecordForShareBearURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IMSyndicationUtilities);
  v6 = [(IMSyndicationUtilities *)v5 bundleIDsForShareBearURL:v4];

  v7 = [(IMSharedWithYouManager *)self _installedLSAppRecordFromBundleIDs:v6];

  return v7;
}

- (void)incrementPinCountForBundleID:(id)a3
{
  v12 = a3;
  if ([v12 length])
  {
    v4 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v5 = [v4 objectForKey:v12];
    v6 = [v5 integerValue];

    v7 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6 + 1];
    [v7 setObject:v8 forKey:v12];

    v9 = [MEMORY[0x1E695E000] messagesAppDomain];
    v10 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    [v9 setObject:v10 forKey:@"SharedWithYouPinsCache"];

    v11 = [MEMORY[0x1E695E000] messagesAppDomain];
    [v11 synchronize];
  }
}

- (void)decrementPinCountForBundleID:(id)a3
{
  v14 = a3;
  if ([v14 length])
  {
    v4 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v5 = [v4 objectForKey:v14];
    v6 = [v5 integerValue];

    v7 = v6 - (v6 > 0);
    v8 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v9 = v8;
    if (v7 <= 0)
    {
      [v8 removeObjectForKey:v14];
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      [v9 setObject:v10 forKey:v14];
    }

    v11 = [MEMORY[0x1E695E000] messagesAppDomain];
    v12 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    [v11 setObject:v12 forKey:@"SharedWithYouPinsCache"];

    v13 = [MEMORY[0x1E695E000] messagesAppDomain];
    [v13 synchronize];
  }
}

- (int64_t)getPinCountForBundleID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMSharedWithYouManager *)self swyPinsPerBundleID];
    v6 = [v5 objectForKey:v4];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteSharedWithYouPreferences
{
  CFPreferencesSetAppValue(@"SharedWithYouApps", 0, @"com.apple.SocialLayer");
  CFPreferencesSetAppValue(@"SharedWithYouEnabled", 0, @"com.apple.SocialLayer");
  CFPreferencesAppSynchronize(@"com.apple.SocialLayer");
  v2 = [@"SLSharedWithYouAppSettingHasChanged" UTF8String];

  notify_post(v2);
}

- (void)applicationsDidInstall:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "[IMSharedWithYouManager applicationInstallsDidInstall:%@]", &v6, 0xCu);
    }
  }

  [(IMSharedWithYouManager *)self updateEnabledApps];
}

- (void)applicationsDidUninstall:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "[IMSharedWithYouManager applicationsDidUninstall:%@]", &v6, 0xCu);
    }
  }

  [(IMSharedWithYouManager *)self updateEnabledApps];
}

- (id)lsAppRecordForAppStoreShareURL:(id)a3
{
  v4 = a3;
  v5 = [(IMSharedWithYouManager *)self lsAppRecordForURL:v4 checkInstalledAppsOnly:0];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 bundleIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.CloudKit.ShareBear"];

    if (v8)
    {
      v9 = +[IMSharedWithYouManager sharedManager];
      v10 = [v9 lsAppRecordForShareBearURL:v4];

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

- (id)appStoreIDFromSharingURL:(id)a3
{
  if (a3)
  {
    v3 = [(IMSharedWithYouManager *)self lsAppRecordForAppStoreShareURL:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 iTunesMetadata];
      v6 = v5;
      if (v5)
      {
        if ([v5 storeItemIdentifier])
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

- (id)appNameFromSharingURL:(id)a3
{
  if (a3)
  {
    v3 = [(IMSharedWithYouManager *)self lsAppRecordForAppStoreShareURL:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 localizedName];
      if (v5)
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

      v5 = 0;
    }
  }

  else
  {
    v4 = IMLogHandleForCategory("IMSharedWithYouManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2E30();
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (id)appStoreURLFromSharingURL:(id)a3
{
  v4 = a3;
  v5 = [(IMSharedWithYouManager *)self appNameFromSharingURL:v4];
  v6 = [(IMSharedWithYouManager *)self appStoreIDFromSharingURL:v4];

  if (v5 && v6)
  {
    v7 = [v5 lowercaseString];

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://apps.apple.com/us/app/%@/%@", v7, v6];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];

    v5 = v7;
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

- (id)urlMinusFragment:(id)a3 onlyCKURL:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (v4)
  {
    v6 = +[IMSharedWithYouManager sharedManager];
    v7 = [v6 lsAppRecordForURL:v5 checkInstalledAppsOnly:0];
    if (!v7)
    {
      v11 = v5;
      goto LABEL_8;
    }

    v8 = v7;
    v9 = [v7 applicationIdentifier];
    v10 = [v9 isEqualToString:@"com.apple.CloudKit.ShareBear"];

    v11 = v5;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v6 = [v5 absoluteString];
  v12 = [v6 componentsSeparatedByString:@"#"];
  v13 = MEMORY[0x1E695DFF8];
  v14 = [v12 firstObject];
  v11 = [v13 URLWithString:v14];

LABEL_8:
LABEL_9:

  return v11;
}

- (BOOL)isDataDetectedLinkAllowedForSWY:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(IMSharedWithYouManager *)self _supportedDataDetectedURLSchemes];
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v4 scheme];
          LOBYTE(v10) = [v11 isEqualToString:v10];

          v6 |= v10;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
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