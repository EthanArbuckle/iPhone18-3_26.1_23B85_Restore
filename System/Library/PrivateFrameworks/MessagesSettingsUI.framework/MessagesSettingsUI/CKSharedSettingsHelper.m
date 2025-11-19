@interface CKSharedSettingsHelper
+ (BOOL)currentMessageAutoKeepForType;
+ (id)sharedInstance;
+ (int)currentMessageAutoKeepOptionForType;
- (BOOL)_sharedWithYouEnabled;
- (BOOL)areReadReceiptsEnabled;
- (BOOL)getRaiseToListenEnabled;
- (BOOL)hasPhoneNumber;
- (BOOL)isCheckInAllowedInRegion;
- (BOOL)isRaiseGestureSupported;
- (BOOL)isSMSDevice;
- (BOOL)shouldShowCheckInLocationHistorySettings;
- (BOOL)shouldShowContactPhotoSettings;
- (BOOL)shouldShowMMS;
- (BOOL)shouldShowSMSRelaySettings;
- (BOOL)shouldShowSatelliteDemoModeButton;
- (BOOL)shouldShowSharedWithYouSettings;
- (PSSystemPolicyForApp)systemPolicy;
- (id)_syncManager;
- (id)getAudioMessageAutoKeep;
- (id)getSMSRelayDevicesSummary;
- (id)getSharedWithYouForSpecifier:(id)a3;
- (id)iMessageAppsViewController;
- (id)sharedWithYouSettingsSpecifierIdentifiers;
- (id)sharedWithYouViewController;
- (id)smsRelayDevicesController;
- (id)systemPolicySpecifiers;
- (void)satelliteDemoModeTapped;
- (void)setAudioMessageAutoKeep:(id)a3;
@end

@implementation CKSharedSettingsHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CKSharedSettingsHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __40__CKSharedSettingsHelper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(CKSharedSettingsHelper);

  return MEMORY[0x2821F96F8]();
}

- (PSSystemPolicyForApp)systemPolicy
{
  systemPolicy = self->_systemPolicy;
  if (!systemPolicy)
  {
    v4 = [objc_alloc(MEMORY[0x277D3FB30]) initWithBundleIdentifier:@"com.apple.MobileSMS"];
    v5 = self->_systemPolicy;
    self->_systemPolicy = v4;

    systemPolicy = self->_systemPolicy;
  }

  return systemPolicy;
}

- (BOOL)isSMSDevice
{
  v2 = [MEMORY[0x277D07DB0] sharedInstance];
  v3 = [v2 supportsSMS];

  return v3;
}

- (BOOL)areReadReceiptsEnabled
{
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ReadReceiptsEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)getRaiseToListenEnabled
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"RaiseToListenEnabled", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    return [(CKSharedSettingsHelper *)self isRaiseGestureSupported];
  }

  return result;
}

- (BOOL)isRaiseGestureSupported
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CKSharedSettingsHelper_isRaiseGestureSupported__block_invoke;
  block[3] = &unk_2798C48B8;
  block[4] = self;
  if (isRaiseGestureSupported_once[0] != -1)
  {
    dispatch_once(isRaiseGestureSupported_once, block);
  }

  return isRaiseGestureSupported_isRaiseGestureSupported;
}

uint64_t __49__CKSharedSettingsHelper_isRaiseGestureSupported__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277CC1CA8] isGestureServiceAvailable];
  if (result)
  {
    result = [*(a1 + 32) _isProximityMonitoringSupported];
  }

  isRaiseGestureSupported_isRaiseGestureSupported = result;
  return result;
}

+ (BOOL)currentMessageAutoKeepForType
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"AutomaticallySaveAudioMessagesEnabled", @"com.apple.imessage", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (int)currentMessageAutoKeepOptionForType
{
  if (![objc_opt_class() currentMessageAutoKeepForType])
  {
    return 0;
  }

  v2 = [objc_opt_class() currentKeepMessages];
  if ([v2 integerValue] == 30)
  {
    v3 = 1;
  }

  else if ([v2 integerValue] == 365)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (id)getAudioMessageAutoKeep
{
  CFPreferencesSynchronize(@"com.apple.imessage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v2 = MEMORY[0x277CCABB0];
  v3 = [objc_opt_class() currentMessageAutoKeepOptionForType];

  return [v2 numberWithUnsignedInt:v3];
}

- (void)setAudioMessageAutoKeep:(id)a3
{
  if ([a3 integerValue])
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  CFPreferencesSetAppValue(@"AutomaticallySaveAudioMessagesEnabled", v4, @"com.apple.imessage");
  CFPreferencesSynchronize(@"com.apple.imessage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v6 = [(CKSharedSettingsHelper *)self _syncManager];
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"AutomaticallySaveAudioMessagesEnabled"];
  [v6 synchronizeUserDefaultsDomain:@"com.apple.imessage" keys:v5];
}

- (BOOL)shouldShowMMS
{
  v2 = [MEMORY[0x277D1A908] sharedInstance];
  v3 = [v2 ctSubscriptionInfo];
  v4 = [v3 __im_subscriptionsWithMMSSupport];

  LOBYTE(v2) = [v4 count] != 0;
  return v2;
}

- (BOOL)shouldShowCheckInLocationHistorySettings
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    if (!CFEqual(v3, @"iPhone"))
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_258D24000, v8, OS_LOG_TYPE_INFO, "Check In not supported for device type: %@", &v10, 0xCu);
        }
      }

      CFRelease(v4);
      goto LABEL_22;
    }

    CFRelease(v4);
  }

  if (![(CKSharedSettingsHelper *)self isCheckInAllowedInRegion])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_258D24000, v7, OS_LOG_TYPE_INFO, "Check In not supported in region", &v10, 2u);
      }

      goto LABEL_21;
    }

LABEL_22:
    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (([MEMORY[0x277D4AB40] hasUserCompletedOnboarding] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_258D24000, v7, OS_LOG_TYPE_INFO, "Check In onboarding not completed", &v10, 2u);
      }

LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v5 = *MEMORY[0x277D85DE8];

  return _os_feature_enabled_impl();
}

- (BOOL)isCheckInAllowedInRegion
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D443A8] currentEstimates];
  if ([v2 count] || (objc_msgSend(MEMORY[0x277D443A8], "lastKnownEstimates"), v3 = objc_claimAutoreleasedReturnValue(), v2, v2 = v3, objc_msgSend(v3, "count")))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v2;
        _os_log_impl(&dword_258D24000, v4, OS_LOG_TYPE_INFO, "Current regulatory domain: %@", buf, 0xCu);
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = v2;
    v5 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v10 = [v8 countryCode];
            v11 = [v10 isEqualToString:@"KR"];

            if (v11)
            {
              if (IMOSLoggingEnabled())
              {
                v13 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v23 = v8;
                  _os_log_impl(&dword_258D24000, v13, OS_LOG_TYPE_INFO, "Check In not available in regulatory domain: %@", buf, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v9);
              v12 = 0;
              goto LABEL_22;
            }
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_22:
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258D24000, v16, OS_LOG_TYPE_INFO, "Unable to determine Check In availability", buf, 2u);
    }

    v12 = 1;
    v2 = v3;
  }

  else
  {
    v12 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_syncManager
{
  v2 = MEMORY[0x259C9B3E0](@"NPSManager", @"NanoPreferencesSync");
  if (v2)
  {
    v2 = objc_alloc_init(v2);
  }

  return v2;
}

- (void)satelliteDemoModeTapped
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_258D24000, v2, OS_LOG_TYPE_INFO, "Pressed satellite demo mode", v6, 2u);
    }
  }

  v3 = objc_alloc_init(MEMORY[0x277CC3750]);
  [v3 setReason:8];
  [v3 setMetadata:&unk_286A18278];
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v5 = [v4 initWithQueue:MEMORY[0x277D85CD0]];
  [v5 requestStewieWithContext:v3 completion:&__block_literal_global_175];
}

void __49__CKSharedSettingsHelper_satelliteDemoModeTapped__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __49__CKSharedSettingsHelper_satelliteDemoModeTapped__block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_5;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_258D24000, v3, OS_LOG_TYPE_INFO, "Presenting Satellite Demo app", v4, 2u);
    }
  }

LABEL_5:
}

- (BOOL)shouldShowSatelliteDemoModeButton
{
  v2 = [MEMORY[0x277D18D48] sharedInstance];
  [v2 startMonitorIfNeededForReason:3];

  v3 = [MEMORY[0x277D18D48] sharedInstance];
  v4 = [v3 getState];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CKSharedSettingsHelper *)v6 shouldShowSatelliteDemoModeButton];
    }

    goto LABEL_12;
  }

  if (([v4 isDemoAllowedForService:16] & 1) == 0 && (objc_msgSend(v4, "isDemoAllowedForService:", 32) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CKSharedSettingsHelper *)v6 shouldShowSatelliteDemoModeButton];
    }

LABEL_12:

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  if (([v4 isPermittedAtCurrentLocation:16] & 1) == 0 && (objc_msgSend(v4, "isPermittedAtCurrentLocation:", 32) & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (BOOL)shouldShowSMSRelaySettings
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D07DB0] sharedInstance];
  v4 = [v3 supportsSMS];

  v5 = [(CKSharedSettingsHelper *)self hasPhoneNumber];
  v6 = +[CKSettingSMSRelayController shouldShowSMSRelaySettings];
  v7 = [MEMORY[0x277D18D28] sharedInstance];
  v8 = [MEMORY[0x277D18DE0] iMessageService];
  v9 = [v7 activeAccountsForService:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v18 + 1) + 8 * i) accountType] == 1)
        {
          v15 = v5 & v4 & v6;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)hasPhoneNumber
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC37B0]);
  v3 = [v2 initWithQueue:MEMORY[0x277D85CD0]];
  v21 = 0;
  v4 = [v3 getSubscriptionInfoWithError:&v21];
  v5 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 subscriptions];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 labelID];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 phoneNumber];
          v14 = [v13 length];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)getSMSRelayDevicesSummary
{
  v2 = +[CKSettingSMSRelayController numberOfActiveDevices];
  v3 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = @"SMS_RELAY_SINGLE_DEVICE_LABEL";
    }

    else
    {
      v4 = @"SMS_RELAY_MULTIPLE_DEVICES_LABEL";
    }

    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:&stru_286A13F00 table:0];

    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", v6, v3];
  }

  return v3;
}

- (id)smsRelayDevicesController
{
  v2 = objc_alloc_init(CKSettingSMSRelayController);

  return v2;
}

- (id)iMessageAppsViewController
{
  v2 = objc_alloc_init(CKSettingsiMessageAppManager);
  v3 = [[CKSettingsiMessageAppsViewController alloc] initWithAppManager:v2];

  return v3;
}

- (id)sharedWithYouSettingsSpecifierIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"SHARED_WITH_YOU_GROUP";
  v5[1] = @"SHARED_WITH_YOU_BUTTON";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldShowSharedWithYouSettings
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (id)getSharedWithYouForSpecifier:(id)a3
{
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"GENERAL_ON" value:&stru_286A13F00 table:0];

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"GENERAL_OFF" value:&stru_286A13F00 table:0];

  if ([(CKSharedSettingsHelper *)self _sharedWithYouEnabled])
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

- (BOOL)_sharedWithYouEnabled
{
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
  {
    return 0;
  }

  v3 = [MEMORY[0x277D1A990] sharedInstance];
  v4 = [v3 getBoolFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouEnabled"];

  return v4;
}

- (id)sharedWithYouViewController
{
  v2 = objc_alloc_init(CKSettingsSharedWithYouController);

  return v2;
}

- (id)systemPolicySpecifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(CKSharedSettingsHelper *)self systemPolicy];
  v3 = [v2 specifiersForPolicyOptions:0x400800001 force:0];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 cellType])
        {
          v11 = [[_TtC18MessagesSettingsUI29CKWrappedPreferencesSpecifier alloc] initWithSpecifier:v10];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)shouldShowContactPhotoSettings
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _referenceBounds];
  v7 = v6;

  return v7 > 320.0;
}

void __49__CKSharedSettingsHelper_satelliteDemoModeTapped__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_258D24000, a2, OS_LOG_TYPE_ERROR, "Request Satellite Demo error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end