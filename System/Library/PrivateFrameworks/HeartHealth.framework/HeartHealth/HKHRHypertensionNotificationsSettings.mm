@interface HKHRHypertensionNotificationsSettings
- (BOOL)_featureOnboardedWithFeatureStatus:(id)a3;
- (BOOL)_isWatchSettingsVisibleWithFeatureStatus:(id)a3;
- (BOOL)_notificationsEnabledWithFeatureStatus:(id)a3;
- (HKHRHypertensionNotificationsSettings)initWithFeatureStatus:(id)a3;
- (id)_footerDefaultSupportingLink:(BOOL)a3;
- (id)_footerPostPregnancyModeEnabled:(BOOL)a3;
- (id)_footerPregnancyModeEnabled:(BOOL)a3;
- (id)_footerRegionNotSupported:(BOOL)a3;
- (id)_footerRemoteDisabled:(BOOL)a3;
- (id)_footerSeedExpired:(BOOL)a3;
- (id)_footerWristDetectionNotEnabled;
- (id)bridgeSettings;
- (id)watchSettings;
@end

@implementation HKHRHypertensionNotificationsSettings

- (HKHRHypertensionNotificationsSettings)initWithFeatureStatus:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHRHypertensionNotificationsSettings;
  v6 = [(HKHRHypertensionNotificationsSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureStatus, a3);
  }

  return v7;
}

- (id)bridgeSettings
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBF98]];
  v5 = [v4 BOOLValue];

  v6 = MEMORY[0x277CCBE70];
  if (!v5)
  {
    v6 = &HKFeatureAvailabilityContextNotOnboardedSettingsVisibility;
  }

  v7 = *v6;
  v8 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:v7];
  v9 = [v8 areAllRequirementsSatisfied];
  v10 = [(HKHRHypertensionNotificationsSettings *)self _notificationsEnabledWithFeatureStatus:self->_featureStatus];
  v11 = [(HKHRHypertensionNotificationsSettings *)self _showOnboardingWithFeatureStatus:self->_featureStatus];
  v12 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
  v13 = [v12 areAllRequirementsSatisfied];
  v14 = [(HKHRHypertensionNotificationsSettings *)self _footerWithRequirementsEvaluation:v3 supportsLink:1];
  _HKInitializeLogging();
  v15 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [v8 unsatisfiedRequirementIdentifiersDescription];
    v16 = v25 = v7;
    [v12 unsatisfiedRequirementIdentifiersDescription];
    v24 = v3;
    v17 = v11;
    v18 = v10;
    v20 = v19 = v9;
    *buf = 136447746;
    v27 = "[HKHRHypertensionNotificationsSettings bridgeSettings]";
    v28 = 1024;
    v29 = v19;
    v30 = 1024;
    v31 = v18;
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v13;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    v39 = v20;
    _os_log_impl(&dword_228942000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}s]: settingsVisible: %i enabled: %i showOnboarding: %i userInteractionEnabled: %i visibilityUnsatisfiedRequirements: %@ interactionUnsatisfiedRequirements: %@", buf, 0x38u);

    v9 = v19;
    v10 = v18;
    v11 = v17;
    v3 = v24;

    v7 = v25;
  }

  v21 = [[HKHRHypertensionNotificationsBridgeSettings alloc] initWithSettingsVisible:v9 settingsEnabled:v10 showOnboarding:v11 userInteractionEnabled:v13 footer:v14];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)watchSettings
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HKHRHypertensionNotificationsSettings *)self _isWatchSettingsVisibleWithFeatureStatus:self->_featureStatus];
  v4 = [(HKHRHypertensionNotificationsSettings *)self _notificationsEnabledWithFeatureStatus:self->_featureStatus];
  v5 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBE68]];
  v6 = [v5 areAllRequirementsSatisfied];
  v7 = [(HKFeatureStatus *)self->_featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v8 = [(HKHRHypertensionNotificationsSettings *)self _footerWithRequirementsEvaluation:v7 supportsLink:0];

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 unsatisfiedRequirementIdentifiersDescription];
    v14 = 136447234;
    v15 = "[HKHRHypertensionNotificationsSettings watchSettings]";
    v16 = 1024;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    v20 = 1024;
    v21 = v6;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_228942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}s]: settingsVisible: %i enabled: %i userInteractionEnabled: %i interactionUnsatisfiedRequirements: %@", &v14, 0x28u);
  }

  v11 = [[HKHRHypertensionNotificationsWatchSettings alloc] initWithSettingsVisible:v3 settingsEnabled:v4 userInteractionEnabled:v6 footer:v8];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_isWatchSettingsVisibleWithFeatureStatus:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKHRHypertensionNotificationsSettings *)self _featureOnboardedWithFeatureStatus:v4];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBE70]];

  v7 = [v6 areAllRequirementsSatisfied];
  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 unsatisfiedRequirementIdentifiersDescription];
    v12 = 136446978;
    v13 = "[HKHRHypertensionNotificationsSettings _isWatchSettingsVisibleWithFeatureStatus:]";
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_228942000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}s]: onboarded: %i settingsVisible: %i visibilityUnsatisfiedRequirements: %@", &v12, 0x22u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 & v7;
}

- (BOOL)_notificationsEnabledWithFeatureStatus:(id)a3
{
  v4 = [a3 onboardingRecord];
  v5 = [v4 featureSettings];

  v6 = [v5 numberForKey:*MEMORY[0x277CCC120]];
  v7 = [v6 BOOLValue];
  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(HKHRHypertensionNotificationsSettings *)self _notificationsEnabledWithFeatureStatus:v7, v10];
    }
  }

  return v7;
}

- (BOOL)_featureOnboardedWithFeatureStatus:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBF98]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)_footerDefaultSupportingLink:(BOOL)a3
{
  if (a3)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_NANO_FOOTER";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_GENERIC_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerWristDetectionNotEnabled
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_WRIST_DETECTION_%@" value:&stru_283BD8508 table:@"HeartRateSettings-HypertensionNotifications"];

  v4 = HKHRHeartHealthBundle();
  v5 = [v4 localizedStringForKey:@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_PASSCODE_SETTINGS_FOOTER_LINK" value:&stru_283BD8508 table:@"HeartRateSettings-HypertensionNotifications"];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v3, v5];
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v6 link:v5 url:@"bridge:root=PASSCODE_ID#WRIST_DETECTION_CELL_ID"];

  return v7;
}

- (id)_footerRegionNotSupported:(BOOL)a3
{
  if (a3)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REGION_NOT_SUPPORTED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REGION_NOT_SUPPORTED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_REGION_GATED_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerRemoteDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REMOTE_DISABLED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_REMOTE_DISABLED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = +[_HKHeartSettingsUtilities remoteDisabledLinkURL];
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerSeedExpired:(BOOL)a3
{
  if (a3)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_SEED_EXPIRED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_SEED_EXPIRED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = +[_HKHeartSettingsUtilities seedExpiredLinkURL];
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerPregnancyModeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_PREGNANCY_MODE_ENABLED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_PREGNANCY_MODE_ENABLED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_GENERIC_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (id)_footerPostPregnancyModeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_POST_PREGNANCY_MODE_ENABLED";
  }

  else
  {
    v3 = @"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_POST_PREGNANCY_MODE_ENABLED_NANO";
  }

  v4 = HKHRHypertensionNotificationsSettingsLocstr(v3);
  v5 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_FOOTER_LINK");
  v6 = HKHRHypertensionNotificationsSettingsLocstr(@"HEART_NOTIFICATION_HYPERTENSION_NOTIFICATIONS_GENERIC_LEARN_MORE_URL");
  v7 = [[HKHRHypertensionNotificationsFooter alloc] initWithText:v4 link:v5 url:v6];

  return v7;
}

- (void)_notificationsEnabledWithFeatureStatus:(NSObject *)a3 .cold.1(uint64_t a1, char a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2 & 1];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_228942000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Hypertension notifications enabled in settings: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end