@interface CKSettingsSharedWithYouController
- (CKSettingsSharedWithYouController)init;
- (id)appIsEnabled:(id)enabled;
- (id)getAppBundleIDsFromDefaults;
- (id)getAppSpecifiers;
- (id)sharedWithYouEnabled:(id)enabled;
- (id)specifiers;
- (void)postNotificationForAppEnablementChanges;
- (void)setAppIsEnabled:(id)enabled specifier:(id)specifier shouldPostNotification:(id)notification;
- (void)setSharedWithYouEnabled:(id)enabled specifier:(id)specifier;
- (void)setupDefaultAppsIfRequired;
- (void)updateAppPreferencesWith:(id)with;
@end

@implementation CKSettingsSharedWithYouController

- (CKSettingsSharedWithYouController)init
{
  v5.receiver = self;
  v5.super_class = CKSettingsSharedWithYouController;
  v2 = [(CKSettingsSharedWithYouController *)&v5 init];
  if (v2)
  {
    v3 = MessagesSettingsLocalizedString(@"SHARED_WITH_YOU");
    [(CKSettingsSharedWithYouController *)v2 setTitle:v3];
  }

  return v2;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SHARED_WITH_YOU_GLOBAL_GROUP"];
    [v5 addObject:v6];
    v7 = MEMORY[0x277D3FAD8];
    v8 = MessagesSettingsLocalizedString(@"AUTOMATIC_SHARING");
    v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setSharedWithYouEnabled_specifier_ get:sel_sharedWithYouEnabled_ detail:0 cell:6 edit:0];

    v10 = MessagesSettingsLocalizedString(@"AUTOMATIC_SHARING_FOOTER_DESCRIPTION");
    [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];

    if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
    {
      [v9 setProperty:&unk_2856EB9B8 forKey:*MEMORY[0x277D3FF38]];
    }

    if (_os_feature_enabled_impl())
    {
      v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:@"com.apple.MobileSMS"];
      isLocked = [v11 isLocked];

      if (isLocked)
      {
        [v9 setProperty:&unk_2856EB9B8 forKey:*MEMORY[0x277D3FF38]];
      }
    }

    [v5 addObject:v9];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:emptyGroupSpecifier];

    [(CKSettingsSharedWithYouController *)self setupDefaultAppsIfRequired];
    getAppSpecifiers = [(CKSettingsSharedWithYouController *)self getAppSpecifiers];
    if (getAppSpecifiers)
    {
      [v5 addObjectsFromArray:getAppSpecifiers];
    }

    v15 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)setSharedWithYouEnabled:(id)enabled specifier:(id)specifier
{
  v5 = MEMORY[0x277D1A990];
  enabledCopy = enabled;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance setBool:objc_msgSend(enabledCopy forDomain:"BOOLValue") forKey:{@"com.apple.SocialLayer", @"SharedWithYouEnabled"}];

  [(CKSettingsSharedWithYouController *)self updateAppPreferencesWith:enabledCopy];
  uTF8String = [@"SLSharedWithYouSettingHasChanged" UTF8String];

  notify_post(uTF8String);
}

- (id)sharedWithYouEnabled:(id)enabled
{
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown] & 1) != 0 || _os_feature_enabled_impl() && (objc_msgSend(MEMORY[0x277CEBE80], "applicationWithBundleIdentifier:", @"com.apple.MobileSMS"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isLocked"), v4, (v5))
  {
    v3 = &unk_2856EB9B8;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v7 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouEnabled"];

    v3 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  }

  return v3;
}

- (void)updateAppPreferencesWith:(id)with
{
  withCopy = with;
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v6 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];
  v7 = [v6 mutableCopy];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CKSettingsSharedWithYouController_updateAppPreferencesWith___block_invoke;
    v8[3] = &unk_278DE89F0;
    v8[4] = self;
    v9 = withCopy;
    v10 = &v11;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }

  if ([v12[5] count])
  {
    [(CKSettingsSharedWithYouController *)self postNotificationForAppEnablementChanges];
    [(CKSettingsSharedWithYouController *)self reload];
  }

  _Block_object_dispose(&v11, 8);
}

void __62__CKSettingsSharedWithYouController_updateAppPreferencesWith___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 specifiers];
  v8 = [v7 specifierForID:v12];

  v9 = a1[5];
  if (v9 != v6)
  {
    v10 = a1[4];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v10 setAppIsEnabled:v9 specifier:v8 shouldPostNotification:v11];

    [*(*(a1[6] + 8) + 40) addObject:v12];
    v9 = a1[5];
  }

  [v8 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];
}

- (void)setupDefaultAppsIfRequired
{
  v59 = *MEMORY[0x277D85DE8];
  getAppBundleIDsFromDefaults = [(CKSettingsSharedWithYouController *)self getAppBundleIDsFromDefaults];
  mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
  v5 = [objc_msgSend(mEMORY[0x277D1AC40] performSelector:{sel_defaultAppBundleIDs), "mutableCopy"}];

  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v7 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouEnabled"];

  v43 = v5;
  if (![getAppBundleIDsFromDefaults count])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    onboardingAppBundleIDs = [MEMORY[0x277D1AC40] onboardingAppBundleIDs];
    v9 = [onboardingAppBundleIDs countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v53;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(onboardingAppBundleIDs);
          }

          v13 = *(*(&v52 + 1) + 8 * i);
          mEMORY[0x277D1AC40]2 = [MEMORY[0x277D1AC40] sharedManager];
          [mEMORY[0x277D1AC40]2 setSharedWithYouEnabled:v7 forApplicationWithBundleID:v13];
        }

        v10 = [onboardingAppBundleIDs countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v10);
    }

    v5 = v43;
  }

  getAppBundleIDsFromDefaults2 = [(CKSettingsSharedWithYouController *)self getAppBundleIDsFromDefaults];

  v16 = [MEMORY[0x277CBEB98] setWithArray:getAppBundleIDsFromDefaults2];
  v17 = [v16 count];
  v18 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v19 = [v18 count];

  if (v17 < v19)
  {
    NSLog(&cfstr_MessagesSettin.isa);
    collaborationAppBundleIDs = [MEMORY[0x277D1AC40] collaborationAppBundleIDs];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = [collaborationAppBundleIDs countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(collaborationAppBundleIDs);
          }

          v25 = *(*(&v48 + 1) + 8 * j);
          mEMORY[0x277D1AC40]3 = [MEMORY[0x277D1AC40] sharedManager];
          [mEMORY[0x277D1AC40]3 setSharedWithYouEnabled:v7 forApplicationWithBundleID:v25];
        }

        v22 = [collaborationAppBundleIDs countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v22);
    }
  }

  getAppBundleIDsFromDefaults3 = [(CKSettingsSharedWithYouController *)self getAppBundleIDsFromDefaults];

  v28 = [getAppBundleIDsFromDefaults3 count];
  v29 = v43;
  if (v28 < [v43 count])
  {
    [v43 removeObjectsInArray:getAppBundleIDsFromDefaults3];
    if ([v43 count])
    {
      v42 = getAppBundleIDsFromDefaults3;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v30 = v43;
      v31 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v45;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v45 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v44 + 1) + 8 * k);
            if (v7)
            {
              mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
              mEMORY[0x277D1AC40]5 = [mEMORY[0x277D1A990]2 getValueFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];

              v38 = [mEMORY[0x277D1AC40]5 valueForKey:v35];
              bOOLValue = [v38 BOOLValue];

              mEMORY[0x277D1AC40]4 = [MEMORY[0x277D1AC40] sharedManager];
              [mEMORY[0x277D1AC40]4 setSharedWithYouEnabled:bOOLValue forApplicationWithBundleID:v35];
            }

            else
            {
              mEMORY[0x277D1AC40]5 = [MEMORY[0x277D1AC40] sharedManager];
              [mEMORY[0x277D1AC40]5 setSharedWithYouEnabled:0 forApplicationWithBundleID:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
        }

        while (v32);
      }

      getAppBundleIDsFromDefaults3 = v42;
      v29 = v43;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)getAppSpecifiers
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = MEMORY[0x277D3FAD8];
  v4 = MessagesSettingsLocalizedString(@"APPS_HEADER");
  v5 = [v3 groupSpecifierWithID:@"SHARED_WITH_YOU_APPS_GROUP" name:v4];

  v26 = v2;
  [v2 addObject:v5];
  mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
  v7 = [mEMORY[0x277D1AC40] performSelector:sel_sharedWithYouApps];

  v25 = v7;
  allKeys = [v7 allKeys];
  v9 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  if ([v9 count])
  {
    v22 = v9;
    v23 = v5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      v14 = *MEMORY[0x277D40008];
      v15 = *MEMORY[0x277D40020];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          if ([v17 length])
          {
            v18 = [v25 objectForKey:v17];
            v19 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:v17 target:self set:sel_setAppIsEnabled_specifier_shouldPostNotification_ get:sel_appIsEnabled_ detail:0 cell:6 edit:0];
            [v19 setIdentifier:v18];
            [v19 setProperty:v18 forKey:v14];
            [v19 setProperty:@"YES" forKey:v15];
            [v26 addObject:v19];
          }

          else
          {
            NSLog(&cfstr_MessagesSettin_0.isa, v17);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    v9 = v22;
    v5 = v23;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)getAppBundleIDsFromDefaults
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];
  v4 = [v3 mutableCopy];

  allKeys = [v4 allKeys];

  return allKeys;
}

- (void)setAppIsEnabled:(id)enabled specifier:(id)specifier shouldPostNotification:(id)notification
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  notificationCopy = notification;
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v11 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];
  dictionary = [v11 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  identifier = [specifierCopy identifier];
  v14 = [identifier length];

  if (v14)
  {
    identifier2 = [specifierCopy identifier];
    [dictionary setValue:enabledCopy forKey:identifier2];
  }

  mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
  v17 = [dictionary copy];
  [mEMORY[0x277D1A990]2 setValue:v17 forDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];

  if ([enabledCopy BOOLValue])
  {
    [specifierCopy setProperty:enabledCopy forKey:*MEMORY[0x277D3FF38]];
  }

  if (!notificationCopy || [notificationCopy BOOLValue])
  {
    [(CKSettingsSharedWithYouController *)self postNotificationForAppEnablementChanges];
  }
}

- (id)appIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown] || _os_feature_enabled_impl() && (objc_msgSend(MEMORY[0x277CEBE80], "applicationWithBundleIdentifier:", @"com.apple.MobileSMS"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isLocked"), v5, v6))
  {
    [enabledCopy setProperty:&unk_2856EB9B8 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v8 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouEnabled"];

    if (v8)
    {
      identifier = [enabledCopy identifier];
      mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
      v11 = [mEMORY[0x277D1A990]2 getValueFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];

      v12 = [v11 valueForKey:identifier];

      v4 = v12;
    }

    else
    {
      identifier = [MEMORY[0x277CCABB0] numberWithBool:0];
      [enabledCopy setProperty:identifier forKey:*MEMORY[0x277D3FF38]];
    }
  }

  v13 = v4;

  return v4;
}

- (void)postNotificationForAppEnablementChanges
{
  uTF8String = [@"SLSharedWithYouAppSettingHasChanged" UTF8String];

  notify_post(uTF8String);
}

@end