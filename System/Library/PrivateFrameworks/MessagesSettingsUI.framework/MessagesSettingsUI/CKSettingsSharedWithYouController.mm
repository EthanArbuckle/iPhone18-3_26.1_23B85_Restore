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
      [v9 setProperty:&unk_286A181E8 forKey:*MEMORY[0x277D3FF38]];
    }

    if (_os_feature_enabled_impl())
    {
      v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:@"com.apple.MobileSMS"];
      isLocked = [v11 isLocked];

      if (isLocked)
      {
        [v9 setProperty:&unk_286A181E8 forKey:*MEMORY[0x277D3FF38]];
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
    v3 = &unk_286A181E8;
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
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CKSettingsSharedWithYouController_updateAppPreferencesWith___block_invoke;
    v8[3] = &unk_2798C4840;
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
  v55 = *MEMORY[0x277D85DE8];
  getAppBundleIDsFromDefaults = [(CKSettingsSharedWithYouController *)self getAppBundleIDsFromDefaults];
  mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
  v5 = [objc_msgSend(mEMORY[0x277D1AC40] performSelector:{sel_defaultAppBundleIDs), "mutableCopy"}];

  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v7 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouEnabled"];

  if (![getAppBundleIDsFromDefaults count])
  {
    v8 = v5;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    onboardingAppBundleIDs = [MEMORY[0x277D1AC40] onboardingAppBundleIDs];
    v10 = [onboardingAppBundleIDs countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v49;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(onboardingAppBundleIDs);
          }

          [MEMORY[0x277D1AC40] setSharedWithYouEnabled:v7 forApplicationWithBundleID:*(*(&v48 + 1) + 8 * i)];
        }

        v11 = [onboardingAppBundleIDs countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v11);
    }

    v5 = v8;
  }

  getAppBundleIDsFromDefaults2 = [(CKSettingsSharedWithYouController *)self getAppBundleIDsFromDefaults];

  v15 = [MEMORY[0x277CBEB98] setWithArray:getAppBundleIDsFromDefaults2];
  v16 = [v15 count];
  v39 = v5;
  v17 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v18 = [v17 count];

  if (v16 < v18)
  {
    NSLog(&cfstr_MessagesSettin.isa);
    collaborationAppBundleIDs = [MEMORY[0x277D1AC40] collaborationAppBundleIDs];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = [collaborationAppBundleIDs countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(collaborationAppBundleIDs);
          }

          [MEMORY[0x277D1AC40] setSharedWithYouEnabled:v7 forApplicationWithBundleID:*(*(&v44 + 1) + 8 * j)];
        }

        v21 = [collaborationAppBundleIDs countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v21);
    }
  }

  getAppBundleIDsFromDefaults3 = [(CKSettingsSharedWithYouController *)self getAppBundleIDsFromDefaults];

  v25 = [getAppBundleIDsFromDefaults3 count];
  v26 = v39;
  if (v25 < [v39 count])
  {
    [v39 removeObjectsInArray:getAppBundleIDsFromDefaults3];
    if ([v39 count])
    {
      v38 = getAppBundleIDsFromDefaults3;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v27 = v39;
      v28 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v41;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v41 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v40 + 1) + 8 * k);
            if (v7)
            {
              mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
              v34 = [mEMORY[0x277D1A990]2 getValueFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouApps"];

              v35 = [v34 valueForKey:v32];
              bOOLValue = [v35 BOOLValue];

              [MEMORY[0x277D1AC40] setSharedWithYouEnabled:bOOLValue forApplicationWithBundleID:v32];
            }

            else
            {
              [MEMORY[0x277D1AC40] setSharedWithYouEnabled:0 forApplicationWithBundleID:*(*(&v40 + 1) + 8 * k)];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
        }

        while (v29);
      }

      getAppBundleIDsFromDefaults3 = v38;
      v26 = v39;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
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

  v18 = *MEMORY[0x277D3FF38];
  v19 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v20 = v19;
  if (!v19 || (v21 = [v19 BOOLValue], v21 != objc_msgSend(enabledCopy, "BOOLValue")))
  {
    [specifierCopy setProperty:enabledCopy forKey:v18];
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
    [enabledCopy setProperty:&unk_286A181E8 forKey:*MEMORY[0x277D3FF38]];
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