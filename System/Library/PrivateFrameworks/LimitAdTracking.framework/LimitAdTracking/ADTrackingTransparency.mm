@interface ADTrackingTransparency
- (BOOL)_isUserEDURestricted;
- (BOOL)_isUserManagedRestricted;
- (BOOL)_isUserProtoTeenState;
- (BOOL)_userAllowedToChangeSettings;
- (BOOL)crossAppTrackingAllowed;
- (BOOL)crossAppTrackingAllowedSwitchEnabled;
- (BOOL)isPersonalizedAdsScreenTimeRestricted;
- (BOOL)personalizedAds;
- (BOOL)personalizedAdsAvailable;
- (BOOL)personalizedAdsAvailableForAdPlatforms;
- (BOOL)personalizedAdsSwitchEnabled;
- (BOOL)shouldDisplayPAUI;
- (BOOL)shouldPresentPersonalizedAdsOnboarding;
- (BOOL)shouldShowPersonalizedAdsToggle;
- (NSArray)adSwitchDisabledReasons;
- (id)appTrackingXPCConnection:(id)connection withInvalidation:(id)invalidation;
- (int64_t)accountLevelSwitchDisabledReason;
- (int64_t)accountRestrictionReason;
- (int64_t)acknowledgedVersionForPersonalizedAds;
- (int64_t)crossAppTrackingAllowedSwitchDisabledReason;
- (int64_t)latestVersionForPersonalizedAdsConsent;
- (int64_t)personalizedAdsSwitchDisabledReason;
- (void)personalizedAdsAvailable:(id)available;
- (void)setAcknowledgedVersionForPersonalizedAds:(int64_t)ads;
- (void)setCrossAppTrackingAllowed:(BOOL)allowed;
@end

@implementation ADTrackingTransparency

- (BOOL)personalizedAds
{
  if (![(ADTrackingTransparency *)self personalizedAdsSwitchEnabled])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D28]] == 1;

  return v3;
}

- (BOOL)personalizedAdsSwitchEnabled
{
  if ([(ADTrackingTransparency *)self isPersonalizedAdsScreenTimeRestricted])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = *MEMORY[0x277D25D28];
  v6 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D28]];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The device has a profile installed that has a restriction on Personalized Advertising. Personalized Ads switch will be disabled and locked.", buf, 2u);
    }

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:v5];

    if (v8 != 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "There is a profile installed that has a restriction on Limit Ad Tracking Forced AND tracking is still enabled. Correcting config value.", v10, 2u);
      }

      mEMORY[0x277D262A0]3 = [MEMORY[0x277D262A0] sharedConnection];
      [mEMORY[0x277D262A0]3 setBoolValue:0 forSetting:v5];
    }

    return 0;
  }

  return [(ADTrackingTransparency *)self _userAllowedToChangeSettings];
}

- (BOOL)isPersonalizedAdsScreenTimeRestricted
{
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v3 = [v2 containsObject:@"advertising"];
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The device has a screen time restriction on Personalized Advertising. Personalized Ads switch will be disabled and locked.", v5, 2u);
  }

  return v3;
}

- (BOOL)_userAllowedToChangeSettings
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(ADTrackingTransparency *)self _isUserEDURestricted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v3 = v11;
      v4 = MEMORY[0x277D86220];
      v5 = "[%@] The device is in Education Mode.";
LABEL_13:
      _os_log_impl(&dword_255F62000, v4, OS_LOG_TYPE_DEFAULT, v5, &v10, 0xCu);
    }
  }

  else if ([(ADTrackingTransparency *)self _isUserManagedRestricted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v3 = v11;
      v4 = MEMORY[0x277D86220];
      v5 = "[%@] The device is in Managed Mode.";
      goto LABEL_13;
    }
  }

  else if ([(ADTrackingTransparency *)self _isUserProtoU13State])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v3 = v11;
      v4 = MEMORY[0x277D86220];
      v5 = "[%@] The device is in Proto U13 Mode.";
      goto LABEL_13;
    }
  }

  else
  {
    if (![(ADTrackingTransparency *)self _isUserProtoTeenState])
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      v6 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F28]] == 1;

      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v3 = v11;
      v4 = MEMORY[0x277D86220];
      v5 = "[%@] The device is in Proto Teen Mode.";
      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isUserEDURestricted
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

  if (isSharedIPad)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0] setBoolValue:0 forSetting:*MEMORY[0x277D25F28]];
  }

  return isSharedIPad;
}

- (BOOL)_isUserManagedRestricted
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  ams_sharedAccountStore2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiCloudAccount = [ams_sharedAccountStore2 ams_activeiCloudAccount];

  if ([ams_activeiTunesAccount ams_isManagedAppleID])
  {
    ams_isManagedAppleID = 1;
  }

  else
  {
    ams_isManagedAppleID = [ams_activeiCloudAccount ams_isManagedAppleID];
  }

  return ams_isManagedAppleID;
}

- (int64_t)acknowledgedVersionForPersonalizedAds
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  v3 = [v2 objectForKey:@"acknowledgedPersonalizedAdsVersion"];

  if (v3)
  {
    v3 = [v2 integerForKey:@"acknowledgedPersonalizedAdsVersion"];
  }

  return v3;
}

- (BOOL)crossAppTrackingAllowedSwitchEnabled
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = *MEMORY[0x277D25F40];
  v5 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F40]];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The device has a profile installed that has a restriction on Limit Ad Tracking Forced  Cross App Tracking switch will be disabled and locked.", buf, 2u);
    }

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:v4];

    if (v7 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "There is a profile installed that has a restriction on Limit Ad Tracking Forced AND tracking is still enabled. Correcting config value.", v10, 2u);
      }

      mEMORY[0x277D262A0]3 = [MEMORY[0x277D262A0] sharedConnection];
      [mEMORY[0x277D262A0]3 setBoolValue:1 forSetting:v4];
    }

    return 0;
  }

  else
  {

    return [(ADTrackingTransparency *)self _userAllowedToChangeSettings];
  }
}

- (BOOL)_isUserProtoTeenState
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  v3 = [v2 BOOLForKey:@"ProtoAccount"];

  return v3;
}

- (int64_t)accountLevelSwitchDisabledReason
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(ADTrackingTransparency *)self appTrackingXPCConnection:&__block_literal_global withInvalidation:&__block_literal_global_22];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for accountLevelSwitchDisabledReason()", buf, 2u);
  }

  v4 = [(ADTrackingTransparency *)self appTrackingServiceProxy:v3];
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get accountLevelSwitchDisabledReason", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting synchronous remote call to getAccountLevelSwitchDisabledReason()", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ADTrackingTransparency_accountLevelSwitchDisabledReason__block_invoke_23;
  v7[3] = &unk_2798176B8;
  v7[4] = self;
  v7[5] = &v9;
  [v4 getAccountLevelSwitchDisabledReasonWithHandler:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from synchronous remote call to getAccountLevelSwitchDisabledReason()", buf, 2u);
  }

  [v3 invalidate];
  v5 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __58__ADTrackingTransparency_accountLevelSwitchDisabledReason__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __58__ADTrackingTransparency_accountLevelSwitchDisabledReason__block_invoke_20()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated before completing", v0, 2u);
  }
}

void __58__ADTrackingTransparency_accountLevelSwitchDisabledReason__block_invoke_23(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2050;
    v10 = a2;
    v5 = v8;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The disabled reason is %{public}ld.", &v7, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDisplayPAUI
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v3 = [(ADTrackingTransparency *)self appTrackingXPCConnection:&__block_literal_global_26 withInvalidation:&__block_literal_global_29];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for DisplayPersonalizedAdsUI()", buf, 2u);
  }

  v4 = [(ADTrackingTransparency *)self appTrackingServiceProxy:v3];
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get DisplayPersonalizedAdsUI", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting synchronous remote call to DisplayPersonalizedAdsUI()", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ADTrackingTransparency_shouldDisplayPAUI__block_invoke_30;
  v7[3] = &unk_2798176E0;
  v7[4] = &v9;
  [v4 shouldDisplayPersonalizedAdsUI:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from synchronous remote call to DisplayPersonalizedAdsUI()", buf, 2u);
  }

  [v3 invalidate];
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __43__ADTrackingTransparency_shouldDisplayPAUI__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __43__ADTrackingTransparency_shouldDisplayPAUI__block_invoke_27()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated before completing", v0, 2u);
  }
}

- (int64_t)accountRestrictionReason
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(ADTrackingTransparency *)self _isUserEDURestricted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v3 = v11;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device is in Education Mode.", &v10, 0xCu);
    }

    result = 3;
LABEL_17:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  if ([(ADTrackingTransparency *)self _isUserManagedRestricted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v5 = v11;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device has a Managed account.", &v10, 0xCu);
    }

    result = 4;
    goto LABEL_17;
  }

  if ([(ADTrackingTransparency *)self _isUserProtoU13State])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device is in Proto U13 state.", &v10, 0xCu);
    }

    result = 9;
    goto LABEL_17;
  }

  if ([(ADTrackingTransparency *)self _isUserProtoTeenState])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device is in Proto Teen state.", &v10, 0xCu);
    }

    result = 10;
    goto LABEL_17;
  }

  v9 = *MEMORY[0x277D85DE8];

  return [(ADTrackingTransparency *)self accountLevelSwitchDisabledReason];
}

- (NSArray)adSwitchDisabledReasons
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(ADTrackingTransparency *)self isPersonalizedAdsScreenTimeRestricted])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:8];
    [array addObject:v4];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D28]];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:7];
    [array addObject:v7];
  }

  if ([(ADTrackingTransparency *)self _isUserEDURestricted])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    [array addObject:v8];
  }

  if ([(ADTrackingTransparency *)self _isUserManagedRestricted])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    [array addObject:v9];
  }

  if ([(ADTrackingTransparency *)self _isUserProtoU13State])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:9];
    [array addObject:v10];
  }

  if ([(ADTrackingTransparency *)self _isUserProtoTeenState])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:10];
    [array addObject:v11];
  }

  accountLevelSwitchDisabledReason = [(ADTrackingTransparency *)self accountLevelSwitchDisabledReason];
  if (accountLevelSwitchDisabledReason)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:accountLevelSwitchDisabledReason];
    [array addObject:v13];
  }

  if (![array count])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [array addObject:v14];
  }

  v15 = [array copy];

  return v15;
}

- (int64_t)crossAppTrackingAllowedSwitchDisabledReason
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25F40]];

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v5 = v10;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device has a profile installed that has a restriction on Allow Apps to Request to Track.", &v9, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
    return 6;
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    return [(ADTrackingTransparency *)self accountRestrictionReason];
  }
}

- (BOOL)crossAppTrackingAllowed
{
  if (![(ADTrackingTransparency *)self crossAppTrackingAllowedSwitchEnabled])
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F40]] != 1;

  return v3;
}

- (void)setCrossAppTrackingAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setBoolValue:!allowedCopy forSetting:*MEMORY[0x277D25F40]];
}

- (int64_t)personalizedAdsSwitchDisabledReason
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(ADTrackingTransparency *)self isPersonalizedAdsScreenTimeRestricted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v3 = v11;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device has a screen time restriction on Personalized Ads.", &v10, 0xCu);
    }

    result = 8;
LABEL_9:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D28]];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The device has a profile installed that has a restriction on Personalized Ads.", &v10, 0xCu);
    }

    result = 7;
    goto LABEL_9;
  }

  v9 = *MEMORY[0x277D85DE8];

  return [(ADTrackingTransparency *)self accountRestrictionReason];
}

- (BOOL)personalizedAdsAvailable
{
  v8 = *MEMORY[0x277D85DE8];
  shouldDisplayPAUI = [(ADTrackingTransparency *)self shouldDisplayPAUI];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"will NOT";
    if (shouldDisplayPAUI)
    {
      v3 = @"will";
    }

    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The Personalized Ads UI %{public}@ render.", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return shouldDisplayPAUI;
}

- (void)personalizedAdsAvailable:(id)available
{
  availableCopy = available;
  v5 = [(ADTrackingTransparency *)self appTrackingXPCConnection:&__block_literal_global_50 withInvalidation:&__block_literal_global_53];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for DisplayPersonalizedAdsUI()", buf, 2u);
  }

  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_57];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Started asynchronous remote call to DisplayPersonalizedAdsUI()", buf, 2u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__ADTrackingTransparency_personalizedAdsAvailable___block_invoke_58;
    v8[3] = &unk_279817728;
    v10 = availableCopy;
    v9 = v5;
    [v6 shouldDisplayPersonalizedAdsUI:v8];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get DisplayPersonalizedAdsUI", buf, 2u);
    }

    if (availableCopy)
    {
      (*(availableCopy + 2))(availableCopy, 1);
    }

    [v5 invalidate];
  }
}

void __51__ADTrackingTransparency_personalizedAdsAvailable___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __51__ADTrackingTransparency_personalizedAdsAvailable___block_invoke_51()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated", v0, 2u);
  }
}

void __51__ADTrackingTransparency_personalizedAdsAvailable___block_invoke_54(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a2;
    v4 = [v3 code];
    v5 = [v3 localizedDescription];

    v7 = 134218242;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received error code %ld from remote call: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __51__ADTrackingTransparency_personalizedAdsAvailable___block_invoke_58(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"will NOT";
    if (a2)
    {
      v4 = @"will";
    }

    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The Personalized Ads UI %{public}@ render.", &v8, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  result = [*(a1 + 32) invalidate];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)personalizedAdsAvailableForAdPlatforms
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  v3 = [v2 objectForKey:@"AdPlatformsPAAvailable"];

  if (v3)
  {
    v4 = [v2 BOOLForKey:@"AdPlatformsPAAvailable"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAcknowledgedVersionForPersonalizedAds:(int64_t)ads
{
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  [v5 setInteger:ads forKey:@"acknowledgedPersonalizedAdsVersion"];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"PersonalizedAdsPreferenceDidChange" object:0];
}

- (int64_t)latestVersionForPersonalizedAdsConsent
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  v3 = [v2 objectForKey:@"LatestPAVersion"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"LatestPAVersion"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldShowPersonalizedAdsToggle
{
  if ([(ADTrackingTransparency *)self personalizedAdsSwitchEnabled])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
    v4 = [v3 BOOLForKey:@"personalizedAdsDefaulted"];
    acknowledgedVersionForPersonalizedAds = [(ADTrackingTransparency *)self acknowledgedVersionForPersonalizedAds];
    v6 = (acknowledgedVersionForPersonalizedAds >= [(ADTrackingTransparency *)self latestVersionForPersonalizedAdsConsent]) | v4 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (BOOL)shouldPresentPersonalizedAdsOnboarding
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(ADTrackingTransparency *)self personalizedAdsSwitchEnabled])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = 138412290;
    v16 = objc_opt_class();
    v9 = v16;
    v10 = MEMORY[0x277D86220];
    v11 = "[%@] personalizedAdsSwitchEnabled is NO.";
LABEL_16:
    _os_log_impl(&dword_255F62000, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xCu);

    goto LABEL_17;
  }

  if (![(ADTrackingTransparency *)self personalizedAdsAvailableForAdPlatforms])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = 138412290;
    v16 = objc_opt_class();
    v9 = v16;
    v10 = MEMORY[0x277D86220];
    v11 = "[%@] personalizedAdsAvailableForAdPlatforms is NO.";
    goto LABEL_16;
  }

  acknowledgedVersionForPersonalizedAds = [(ADTrackingTransparency *)self acknowledgedVersionForPersonalizedAds];
  if (acknowledgedVersionForPersonalizedAds >= [(ADTrackingTransparency *)self latestVersionForPersonalizedAdsConsent])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v9 = v16;
      v10 = MEMORY[0x277D86220];
      v11 = "[%@] acknowledgedVersionForPersonalizedAds is already set.";
      goto LABEL_16;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
  v5 = [v4 BOOLForKey:@"personalizedAdsDefaulted"];
  acknowledgedVersionForPersonalizedAds2 = [(ADTrackingTransparency *)self acknowledgedVersionForPersonalizedAds];
  if (acknowledgedVersionForPersonalizedAds2 >= [(ADTrackingTransparency *)self latestVersionForPersonalizedAdsConsent]|| (([(ADTrackingTransparency *)self personalizedAds]| v5) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v7 = v16;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] shouldPresentPersonalizedAdsOnboarding is TRUE.", &v15, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v14 = v16;
      _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Previous selection for PA was made.", &v15, 0xCu);

      v8 = 0;
    }
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void __45__ADTrackingTransparency_setPersonalizedAds___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __45__ADTrackingTransparency_setPersonalizedAds___block_invoke_65()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated", v0, 2u);
  }
}

void __45__ADTrackingTransparency_setPersonalizedAds___block_invoke_68(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a2;
    v4 = [v3 code];
    v5 = [v3 localizedDescription];

    v7 = 134218242;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received error code %ld from remote call: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __45__ADTrackingTransparency_setPersonalizedAds___block_invoke_71(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"was NOT";
    if (a2)
    {
      v4 = @"was";
    }

    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The Personalized Ads value %@ set.", &v7, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from asynchronous remote call to setPersonalizedAds()", &v7, 2u);
  }

  result = [*(a1 + 32) invalidate];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)appTrackingXPCConnection:(id)connection withInvalidation:(id)invalidation
{
  connectionCopy = connection;
  invalidationCopy = invalidation;
  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ap.adprivacyd.opt-out" options:4096];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868090D0];
    [v7 setRemoteObjectInterface:v8];

    [v7 setInvalidationHandler:invalidationCopy];
    [v7 setInterruptionHandler:connectionCopy];
    [v7 resume];
    v9 = v7;
  }

  return v7;
}

void __50__ADTrackingTransparency_appTrackingServiceProxy___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a2;
    v4 = [v3 code];
    v5 = [v3 localizedDescription];

    v7 = 134218242;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received error code %ld from remote call: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end