@interface HDAudioAnalyticsSettingsPreferences
- (BOOL)_hasPairedWatchWithNoiseApp;
- (id)headphonePreferences;
- (id)headphonePreferencesForActivePairedWatch;
- (id)headphonePreferencesForLocalDevice;
- (id)noisePreferences;
- (void)headphonePreferencesForActivePairedWatch;
@end

@implementation HDAudioAnalyticsSettingsPreferences

- (id)noisePreferences
{
  v2 = [(HDAudioAnalyticsSettingsPreferences *)self _hasPairedWatchWithNoiseApp];
  v3 = [MEMORY[0x277D12E30] sharedInstance];
  v4 = [v3 notificationsEnabled];
  if ([v3 noiseEnabled])
  {
    v5 = [v3 onboardingCompleted];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "notificationThreshold")}];
  v7 = [[HDAudioAnalyticsNoiseSettingsResult alloc] initWithWatchPairedWithNoiseApp:v2 hasNoiseEnabled:v5 hasNoiseNotificationsEnabled:v4 noiseThreshold:v6];

  return v7;
}

- (id)headphonePreferences
{
  v3 = [HDAudioAnalyticsHeadphoneSettingsResult alloc];
  v4 = [(HDAudioAnalyticsSettingsPreferences *)self headphonePreferencesForLocalDevice];
  v5 = [(HDAudioAnalyticsSettingsPreferences *)self headphonePreferencesForActivePairedWatch];
  v6 = [(HDAudioAnalyticsHeadphoneSettingsResult *)v3 initWithLocalDevice:v4 activePairedWatch:v5];

  return v6;
}

- (id)headphonePreferencesForLocalDevice
{
  if ([MEMORY[0x277D11268] areHeadphoneExposureNotificationsMandatory])
  {
    +[HDAudioAnalyticsHeadphoneSettingsDeviceResult requiredSettingsWithSaveForEightDays:](HDAudioAnalyticsHeadphoneSettingsDeviceResult, "requiredSettingsWithSaveForEightDays:", [MEMORY[0x277D11268] _isHeadphoneExposureDataTransient]);
  }

  else
  {
    v3 = [MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled];
    v4 = [MEMORY[0x277D11268] isHeadphoneExposureMeasureLevelsEnabled];
    +[HDAudioAnalyticsHeadphoneSettingsDeviceResult optInSettingsWithHasHAENEnabled:hasMeasureLevelsEnabled:hasIncludeOtherHeadphonesEnabled:](HDAudioAnalyticsHeadphoneSettingsDeviceResult, "optInSettingsWithHasHAENEnabled:hasMeasureLevelsEnabled:hasIncludeOtherHeadphonesEnabled:", v3, v4, [MEMORY[0x277D11268] _isMeasureOtherHeadphonesEnabled]);
  }
  v2 = ;

  return v2;
}

- (id)headphonePreferencesForActivePairedWatch
{
  if (![MEMORY[0x277D11268] isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    v4 = 0;
    goto LABEL_34;
  }

  v18 = 0;
  v2 = [MEMORY[0x277D11268] areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError:&v18];
  v3 = v18;
  if (v3)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HDAudioAnalyticsSettingsPreferences headphonePreferencesForActivePairedWatch];
    }

    v4 = 0;
    goto LABEL_33;
  }

  if (v2)
  {
    v17 = 0;
    v5 = [MEMORY[0x277D11268] _isHeadphoneExposureDataTransientOnActiveWatchWithError:&v17];
    v6 = v17;
    if (!v6)
    {
      v4 = [HDAudioAnalyticsHeadphoneSettingsDeviceResult requiredSettingsWithSaveForEightDays:v5];
      goto LABEL_32;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HDAudioAnalyticsSettingsPreferences headphonePreferencesForActivePairedWatch];
    }
  }

  else
  {
    v16 = 0;
    v7 = [MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError:&v16];
    v6 = v16;
    if (!v6)
    {
      v15 = 0;
      v8 = [MEMORY[0x277D11268] isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError:&v15];
      v9 = v15;
      if (v9)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
        {
          [HDAudioAnalyticsSettingsPreferences headphonePreferencesForActivePairedWatch];
        }

        v4 = 0;
      }

      else
      {
        v14 = 0;
        v10 = [MEMORY[0x277D11268] _isMeasureOtherHeadphonesEnabledOnActiveWatchWithError:&v14];
        v11 = v14;
        if ((v11 != 0) | (v10 ^ 1) & 1)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (!((v11 != 0) | (v10 ^ 1) & 1 | v8 & 1))
        {
          v12 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"includeOtherHeadphonesEnabled should not be enabled if measureLevelsEnabled is disabled"];
        }

        if (v12)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
          {
            [HDAudioAnalyticsSettingsPreferences headphonePreferencesForActivePairedWatch];
          }

          v4 = 0;
        }

        else
        {
          v4 = [HDAudioAnalyticsHeadphoneSettingsDeviceResult optInSettingsWithHasHAENEnabled:v7 hasMeasureLevelsEnabled:v8 hasIncludeOtherHeadphonesEnabled:v10 & 1];
        }
      }

      goto LABEL_32;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HDAudioAnalyticsSettingsPreferences headphonePreferencesForActivePairedWatch];
    }
  }

  v4 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

  return v4;
}

- (BOOL)_hasPairedWatchWithNoiseApp
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 getPairedDevices];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F5C2DAD0-38FB-4B3B-86D3-B264F4F8CBDA"];
        LOBYTE(v8) = [v8 supportsCapability:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)headphonePreferencesForActivePairedWatch
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_251764000, v0, v1, "Unable to compute headphone preferences for active paired watch (haeIsTransient): %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end