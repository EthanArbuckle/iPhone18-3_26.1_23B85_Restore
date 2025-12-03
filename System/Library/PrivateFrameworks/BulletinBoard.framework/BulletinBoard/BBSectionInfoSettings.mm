@interface BBSectionInfoSettings
+ (id)sectionInfoSettingsForManagedBundleID:(id)d;
- (BBSectionInfoSettings)initWithCoder:(id)coder;
- (BBSectionInfoSettings)initWithDefaultsForSectionType:(int64_t)type;
- (BOOL)allowsNotifications;
- (BOOL)isAuthorizedTemporarily;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)stateCapture;
- (id)_alertTypeDescription;
- (id)_announceSettingDescription;
- (id)_authorizationStatusDescription;
- (id)_bulletinGroupingSettingDescription;
- (id)_contentPreviewSettingDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)spokenNotificationSetting;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)muteSectionUntilDate:(id)date;
- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date;
- (void)setAllowsNotifications:(BOOL)notifications;
- (void)setShowsInLockScreen:(BOOL)screen;
- (void)setShowsInNotificationCenter:(BOOL)center;
- (void)setSpokenNotificationSetting:(int64_t)setting;
- (void)unmuteThreadIdentifier:(id)identifier;
@end

@implementation BBSectionInfoSettings

- (BOOL)allowsNotifications
{
  if ([(BBSectionInfoSettings *)self authorizationStatus]== 2 || [(BBSectionInfoSettings *)self authorizationStatus]== 3)
  {
    return 1;
  }

  return [(BBSectionInfoSettings *)self isAuthorizedTemporarily];
}

- (BOOL)isAuthorizedTemporarily
{
  authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
  if (authorizationExpirationDate)
  {
    authorizationExpirationDate2 = [(BBSectionInfoSettings *)self authorizationExpirationDate];
    [authorizationExpirationDate2 timeIntervalSinceNow];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)spokenNotificationSetting
{
  announceSetting = [(BBSectionInfoSettings *)self announceSetting];
  if ((announceSetting - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_241F7FDC0[announceSetting - 1];
  }
}

+ (id)sectionInfoSettingsForManagedBundleID:(id)d
{
  v3 = MEMORY[0x277D262A0];
  dCopy = d;
  sharedConnection = [v3 sharedConnection];
  v6 = [sharedConnection restrictionEnforcedNotificationSettingsForBundleID:dCopy];

  if (v6)
  {
    v7 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26488]];
    v55 = v7;
    if (v7)
    {
      bOOLValue = [v7 BOOLValue];
      v9 = 1;
      if (bOOLValue)
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 2;
    }

    v51 = v9;
    v11 = [v6 bs_safeNumberForKey:*MEMORY[0x277D264A8]];
    v54 = v11;
    if (v11)
    {
      bOOLValue2 = [v11 BOOLValue];
      v13 = 1;
      if (bOOLValue2)
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 2;
    }

    v50 = v13;
    v14 = [v6 bs_safeNumberForKey:*MEMORY[0x277D264A0]];
    v53 = v14;
    if (v14)
    {
      bOOLValue3 = [v14 BOOLValue];
      v16 = 1;
      if (bOOLValue3)
      {
        v16 = 2;
      }
    }

    else
    {
      v16 = 2;
    }

    v48 = v16;
    v17 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26498]];
    v52 = v17;
    if (v17)
    {
      bOOLValue4 = [v17 BOOLValue];
      v19 = 1;
      if (bOOLValue4)
      {
        v19 = 2;
      }
    }

    else
    {
      v19 = 2;
    }

    v47 = v19;
    v20 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26478]];
    v49 = v20;
    if (v20)
    {
      bOOLValue5 = [v20 BOOLValue];
      v22 = 1;
      if (bOOLValue5)
      {
        v22 = 2;
      }
    }

    else
    {
      v22 = 2;
    }

    v46 = v22;
    v23 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26460]];
    v24 = v23;
    if (v23)
    {
      unsignedIntegerValue = [v23 unsignedIntegerValue];
      v26 = 1;
      if (unsignedIntegerValue == 2)
      {
        v26 = 2;
      }

      if (unsignedIntegerValue)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 1;
    }

    v28 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26480]];
    v29 = v28;
    if (v28)
    {
      unsignedIntegerValue2 = [v28 unsignedIntegerValue];
      v31 = unsignedIntegerValue2 == 1;
      if (unsignedIntegerValue2 == 2)
      {
        v31 = 2;
      }

      v45 = v31;
    }

    else
    {
      v45 = 0;
    }

    v32 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26468]];
    v33 = v32;
    if (v32)
    {
      bOOLValue6 = [v32 BOOLValue];
    }

    else
    {
      bOOLValue6 = 1;
    }

    v35 = [v6 bs_safeNumberForKey:*MEMORY[0x277D264B0]];
    v36 = v35;
    if (v35)
    {
      bOOLValue7 = [v35 BOOLValue];
    }

    else
    {
      bOOLValue7 = 1;
    }

    v38 = [v6 bs_safeNumberForKey:*MEMORY[0x277D26490]];
    v39 = v38;
    if (v38)
    {
      unsignedIntegerValue3 = [v38 unsignedIntegerValue];
      if (unsignedIntegerValue3 <= 2)
      {
        v41 = (unsignedIntegerValue3 & 3) + 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = 7;
    if (v27 == 2)
    {
      v42 = 39;
    }

    if (bOOLValue6)
    {
      v42 |= 8uLL;
    }

    if (bOOLValue7)
    {
      v43 = v42 | 0x10;
    }

    else
    {
      v43 = v42;
    }

    v10 = [[BBSectionInfoSettings alloc] initWithDefaultsForSectionType:0];
    [(BBSectionInfoSettings *)v10 setAuthorizationStatus:v51];
    [(BBSectionInfoSettings *)v10 setNotificationCenterSetting:v50];
    [(BBSectionInfoSettings *)v10 setLockScreenSetting:v48];
    [(BBSectionInfoSettings *)v10 setCarPlaySetting:v47];
    [(BBSectionInfoSettings *)v10 setCriticalAlertSetting:v46];
    [(BBSectionInfoSettings *)v10 setTimeSensitiveSetting:2];
    [(BBSectionInfoSettings *)v10 setAlertType:v27];
    [(BBSectionInfoSettings *)v10 setBulletinGroupingSetting:v45];
    [(BBSectionInfoSettings *)v10 setContentPreviewSetting:v41];
    [(BBSectionInfoSettings *)v10 setPushSettings:v43];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BBSectionInfoSettings)initWithDefaultsForSectionType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = BBSectionInfoSettings;
  v4 = [(BBSectionInfoSettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(BBSectionInfoSettings *)v4 setAuthorizationStatus:2];
    [(BBSectionInfoSettings *)v5 setNotificationCenterSetting:2];
    if ((type | 2) == 2)
    {
      [(BBSectionInfoSettings *)v5 setLockScreenSetting:2];
      [(BBSectionInfoSettings *)v5 setShowsOnExternalDevices:1];
      [(BBSectionInfoSettings *)v5 setContentPreviewSetting:0];
      [(BBSectionInfoSettings *)v5 setAlertType:1];
      [(BBSectionInfoSettings *)v5 setPushSettings:0];
      [(BBSectionInfoSettings *)v5 setCarPlaySetting:0];
      [(BBSectionInfoSettings *)v5 setRemoteNotificationsSetting:2];
      [(BBSectionInfoSettings *)v5 setCriticalAlertSetting:0];
      [(BBSectionInfoSettings *)v5 setTimeSensitiveSetting:0];
      [(BBSectionInfoSettings *)v5 setUserConfiguredTimeSensitiveSetting:0];
      [(BBSectionInfoSettings *)v5 setScheduledDeliverySetting:1];
      [(BBSectionInfoSettings *)v5 setAnnounceSetting:1];
      [(BBSectionInfoSettings *)v5 setDirectMessagesSetting:0];
      [(BBSectionInfoSettings *)v5 setUserConfiguredDirectMessagesSetting:0];
      [(BBSectionInfoSettings *)v5 setSummarizationSetting:2];
      [(BBSectionInfoSettings *)v5 setPrioritizationSetting:2];
    }

    v5->_sectionType = type;
  }

  return v5;
}

- (void)muteSectionUntilDate:(id)date
{
  v4 = [BBSectionMuteAssertion sectionMuteAssertionUntilDate:date];
  [(BBSectionInfoSettings *)self setMuteAssertion:v4];
}

- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  if (muteAssertion && (v9 = muteAssertion, [(BBSectionInfoSettings *)self muteAssertion], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [BBSectionInfoSettings muteThreadIdentifier:untilDate:];
    }
  }

  else if (identifierCopy && [identifierCopy length])
  {
    muteAssertion2 = [(BBSectionInfoSettings *)self muteAssertion];

    if (!muteAssertion2)
    {
      v13 = +[BBThreadsMuteAssertion threadsMuteAssertion];
      [(BBSectionInfoSettings *)self setMuteAssertion:v13];
    }

    muteAssertion3 = [(BBSectionInfoSettings *)self muteAssertion];
    [muteAssertion3 setMutedUntilDate:dateCopy forThreadIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [BBSectionInfoSettings muteThreadIdentifier:untilDate:];
  }
}

- (void)unmuteThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  if (muteAssertion && (v6 = muteAssertion, [(BBSectionInfoSettings *)self muteAssertion], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [BBSectionInfoSettings unmuteThreadIdentifier:];
    }
  }

  else if (identifierCopy && [identifierCopy length])
  {
    muteAssertion2 = [(BBSectionInfoSettings *)self muteAssertion];
    [muteAssertion2 setUnmutedForThreadIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [BBSectionInfoSettings unmuteThreadIdentifier:];
  }
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [muteAssertion isActiveForThreadIdentifier:identifierCopy currentDate:v6];

  return v7;
}

- (NSDictionary)stateCapture
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  _authorizationStatusDescription = [(BBSectionInfoSettings *)self _authorizationStatusDescription];
  [v3 setValue:_authorizationStatusDescription forKey:@"Authorized"];

  authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
  v6 = [authorizationExpirationDate description];
  [v3 setValue:v6 forKey:@"Authorization Expiration Date"];

  lastUserGrantedAuthorizationDate = [(BBSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v8 = [lastUserGrantedAuthorizationDate description];
  [v3 setValue:v8 forKey:@"Last User Granted Authorizated"];

  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  v10 = [muteAssertion description];
  [v3 setValue:v10 forKey:@"Mute Configuration"];

  if ([(BBSectionInfoSettings *)self notificationCenterSetting])
  {
    v11 = BBStringFromBool([(BBSectionInfoSettings *)self notificationCenterSetting]== 2);
    [v3 setValue:v11 forKey:@"NotificationCenter"];
  }

  if ([(BBSectionInfoSettings *)self lockScreenSetting])
  {
    v12 = BBStringFromBool([(BBSectionInfoSettings *)self lockScreenSetting]== 2);
    [v3 setValue:v12 forKey:@"LockScreen"];
  }

  if ([(BBSectionInfoSettings *)self carPlaySetting])
  {
    v13 = BBStringFromBool([(BBSectionInfoSettings *)self carPlaySetting]== 2);
    [v3 setValue:v13 forKey:@"CarPlay"];
  }

  if ([(BBSectionInfoSettings *)self remoteNotificationsSetting])
  {
    v14 = BBStringFromBool([(BBSectionInfoSettings *)self remoteNotificationsSetting]== 2);
    [v3 setValue:v14 forKey:@"RemoteNotifications"];
  }

  if ([(BBSectionInfoSettings *)self criticalAlertSetting])
  {
    v15 = BBStringFromBool([(BBSectionInfoSettings *)self criticalAlertSetting]== 2);
    [v3 setValue:v15 forKey:@"CriticalAlerts"];
  }

  if ([(BBSectionInfoSettings *)self timeSensitiveSetting])
  {
    v16 = BBStringFromBool([(BBSectionInfoSettings *)self timeSensitiveSetting]== 2);
    [v3 setValue:v16 forKey:@"TimeSensitive"];

    v17 = BBStringFromBool([(BBSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting]);
    [v3 setValue:v17 forKey:@"UserConfiguredTimeSensitive"];
  }

  if ([(BBSectionInfoSettings *)self announceSetting])
  {
    _announceSettingDescription = [(BBSectionInfoSettings *)self _announceSettingDescription];
    [v3 setValue:_announceSettingDescription forKey:@"AnnounceNotifications"];
  }

  if ([(BBSectionInfoSettings *)self scheduledDeliverySetting])
  {
    v19 = BBStringFromBool([(BBSectionInfoSettings *)self scheduledDeliverySetting]== 2);
    [v3 setValue:v19 forKey:@"ScheduledDelivery"];
  }

  if ([(BBSectionInfoSettings *)self directMessagesSetting])
  {
    v20 = BBStringFromBool([(BBSectionInfoSettings *)self directMessagesSetting]== 2);
    [v3 setValue:v20 forKey:@"DirectMessages"];

    v21 = BBStringFromBool([(BBSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting]);
    [v3 setValue:v21 forKey:@"UserConfiguredDirectMessages"];
  }

  if ([(BBSectionInfoSettings *)self summarizationSetting])
  {
    v22 = BBStringFromBool([(BBSectionInfoSettings *)self summarizationSetting]== 2);
    [v3 setValue:v22 forKey:@"Summarization"];
  }

  if ([(BBSectionInfoSettings *)self prioritizationSetting])
  {
    v23 = BBStringFromBool([(BBSectionInfoSettings *)self prioritizationSetting]== 2);
    [v3 setValue:v23 forKey:@"Prioritization"];
  }

  v24 = BBStringFromBool([(BBSectionInfoSettings *)self showsOnExternalDevices]);
  [v3 setValue:v24 forKey:@"ShowsOnExternalDevices"];

  v25 = BBStringFromBool([(BBSectionInfoSettings *)self showsCustomSettingsLink]);
  [v3 setValue:v25 forKey:@"CustomSettingsLink"];

  _contentPreviewSettingDescription = [(BBSectionInfoSettings *)self _contentPreviewSettingDescription];
  [v3 setValue:_contentPreviewSettingDescription forKey:@"ContentPreviewSetting"];

  _alertTypeDescription = [(BBSectionInfoSettings *)self _alertTypeDescription];
  [v3 setValue:_alertTypeDescription forKey:@"AlertType"];

  v28 = BBStringFromBool([(BBSectionInfoSettings *)self pushSettings]& 1);
  [v3 setValue:v28 forKey:@"PushSettingsBadgeSupported"];

  v29 = BBStringFromBool(([(BBSectionInfoSettings *)self pushSettings]>> 3) & 1);
  [v3 setValue:v29 forKey:@"PushSettingsBadgeEnabled"];

  v30 = BBStringFromBool(([(BBSectionInfoSettings *)self pushSettings]>> 1) & 1);
  [v3 setValue:v30 forKey:@"PushSettingsSoundSupported"];

  v31 = BBStringFromBool(([(BBSectionInfoSettings *)self pushSettings]>> 4) & 1);
  [v3 setValue:v31 forKey:@"PushSettingsSoundEnabled"];

  v32 = BBStringFromBool(([(BBSectionInfoSettings *)self pushSettings]>> 2) & 1);
  [v3 setValue:v32 forKey:@"PushSettingsAlertSupported"];

  v33 = BBStringFromBool(([(BBSectionInfoSettings *)self pushSettings]>> 5) & 1);
  [v3 setValue:v33 forKey:@"PushSettingsAlertEnabled"];

  _bulletinGroupingSettingDescription = [(BBSectionInfoSettings *)self _bulletinGroupingSettingDescription];
  [v3 setValue:_bulletinGroupingSettingDescription forKey:@"GroupingSetting"];

  return v3;
}

- (id)description
{
  _authorizationStatusDescription = [(BBSectionInfoSettings *)self _authorizationStatusDescription];
  v4 = [@" Section settings" stringByAppendingFormat:@": authorized = %@", _authorizationStatusDescription];

  authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
  v6 = [v4 stringByAppendingFormat:@", authorization expiration date = %@", authorizationExpirationDate];

  lastUserGrantedAuthorizationDate = [(BBSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v8 = [v6 stringByAppendingFormat:@", last user granted authorization date = %@", lastUserGrantedAuthorizationDate];

  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  v10 = [v8 stringByAppendingFormat:@", mute configuration = %@", muteAssertion];

  if ([(BBSectionInfoSettings *)self notificationCenterSetting])
  {
    if ([(BBSectionInfoSettings *)self notificationCenterSetting]== 2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v10 stringByAppendingFormat:@", notification center = %@", v11];

    v10 = v12;
  }

  if ([(BBSectionInfoSettings *)self lockScreenSetting])
  {
    if ([(BBSectionInfoSettings *)self lockScreenSetting]== 2)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = [v10 stringByAppendingFormat:@", lock screen = %@", v13];

    v10 = v14;
  }

  if ([(BBSectionInfoSettings *)self scheduledDeliverySetting])
  {
    if ([(BBSectionInfoSettings *)self scheduledDeliverySetting]== 2)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [v10 stringByAppendingFormat:@", scheduled delivery = %@", v15];

    v10 = v16;
  }

  if ([(BBSectionInfoSettings *)self carPlaySetting])
  {
    if ([(BBSectionInfoSettings *)self carPlaySetting]== 2)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [v10 stringByAppendingFormat:@", CarPlay = %@", v17];

    v10 = v18;
  }

  if ([(BBSectionInfoSettings *)self remoteNotificationsSetting])
  {
    if ([(BBSectionInfoSettings *)self remoteNotificationsSetting]== 2)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v20 = [v10 stringByAppendingFormat:@", remote notifications = %@", v19];

    v10 = v20;
  }

  if ([(BBSectionInfoSettings *)self criticalAlertSetting])
  {
    if ([(BBSectionInfoSettings *)self criticalAlertSetting]== 2)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [v10 stringByAppendingFormat:@", critical alert = %@", v21];

    v10 = v22;
  }

  if ([(BBSectionInfoSettings *)self timeSensitiveSetting])
  {
    if ([(BBSectionInfoSettings *)self timeSensitiveSetting]== 2)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [v10 stringByAppendingFormat:@", time sensitive = %@", v23];

    if ([(BBSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting])
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v10 = [v24 stringByAppendingFormat:@", user configured time sensitive = %@", v25];
  }

  if ([(BBSectionInfoSettings *)self announceSetting])
  {
    _announceSettingDescription = [(BBSectionInfoSettings *)self _announceSettingDescription];
    v27 = [v10 stringByAppendingFormat:@", announce setting = %@", _announceSettingDescription];

    v10 = v27;
  }

  if ([(BBSectionInfoSettings *)self directMessagesSetting])
  {
    if ([(BBSectionInfoSettings *)self directMessagesSetting]== 2)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = [v10 stringByAppendingFormat:@", direct messages = %@", v28];

    if ([(BBSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v10 = [v29 stringByAppendingFormat:@", user configured direct messages = %@", v30];
  }

  if ([(BBSectionInfoSettings *)self summarizationSetting])
  {
    if ([(BBSectionInfoSettings *)self summarizationSetting]== 2)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v32 = [v10 stringByAppendingFormat:@", summarization = %@", v31];

    v10 = v32;
  }

  if ([(BBSectionInfoSettings *)self prioritizationSetting])
  {
    if ([(BBSectionInfoSettings *)self prioritizationSetting]== 2)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v34 = [v10 stringByAppendingFormat:@", prioritization = %@", v33];

    v10 = v34;
  }

  if ([(BBSectionInfoSettings *)self showsOnExternalDevices])
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v36 = [v10 stringByAppendingFormat:@", shows on external devices = %@", v35];

  if ([(BBSectionInfoSettings *)self showsCustomSettingsLink])
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  v38 = [v36 stringByAppendingFormat:@", shows custom settings = %@", v37];

  _contentPreviewSettingDescription = [(BBSectionInfoSettings *)self _contentPreviewSettingDescription];
  v40 = [v38 stringByAppendingFormat:@", content preview setting = %@", _contentPreviewSettingDescription];

  _alertTypeDescription = [(BBSectionInfoSettings *)self _alertTypeDescription];
  v42 = [v40 stringByAppendingFormat:@", Alert style = %@", _alertTypeDescription];

  v43 = BBPushSettingsDescription([(BBSectionInfoSettings *)self pushSettings]);
  v44 = [v42 stringByAppendingFormat:@", Push settings = %@", v43];

  _bulletinGroupingSettingDescription = [(BBSectionInfoSettings *)self _bulletinGroupingSettingDescription];
  v46 = [v44 stringByAppendingFormat:@", grouping = %@", _bulletinGroupingSettingDescription];

  v50.receiver = self;
  v50.super_class = BBSectionInfoSettings;
  v47 = [(BBSectionInfoSettings *)&v50 description];
  v48 = [v47 stringByAppendingString:v46];

  return v48;
}

- (id)_authorizationStatusDescription
{
  authorizationStatus = [(BBSectionInfoSettings *)self authorizationStatus];
  if (authorizationStatus > 4)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278D2B720[authorizationStatus];
  }
}

- (id)_alertTypeDescription
{
  alertType = [(BBSectionInfoSettings *)self alertType];
  if (alertType > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278D2B748[alertType];
  }
}

- (id)_contentPreviewSettingDescription
{
  contentPreviewSetting = [(BBSectionInfoSettings *)self contentPreviewSetting];
  if (contentPreviewSetting > 3)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278D2B760[contentPreviewSetting];
  }
}

- (id)_bulletinGroupingSettingDescription
{
  bulletinGroupingSetting = [(BBSectionInfoSettings *)self bulletinGroupingSetting];
  if (bulletinGroupingSetting > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278D2B780[bulletinGroupingSetting];
  }
}

- (id)_announceSettingDescription
{
  announceSetting = [(BBSectionInfoSettings *)self announceSetting];
  if (announceSetting > 3)
  {
    return 0;
  }

  else
  {
    return off_278D2B798[announceSetting];
  }
}

- (unint64_t)hash
{
  authorizationStatus = [(BBSectionInfoSettings *)self authorizationStatus];
  authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
  v5 = [authorizationExpirationDate hash] ^ authorizationStatus;
  lastUserGrantedAuthorizationDate = [(BBSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  v7 = [lastUserGrantedAuthorizationDate hash];
  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  v9 = v5 ^ v7 ^ [muteAssertion hash];
  notificationCenterSetting = [(BBSectionInfoSettings *)self notificationCenterSetting];
  v11 = notificationCenterSetting ^ [(BBSectionInfoSettings *)self lockScreenSetting];
  v12 = v9 ^ v11 ^ [(BBSectionInfoSettings *)self showsOnExternalDevices];
  showsCustomSettingsLink = [(BBSectionInfoSettings *)self showsCustomSettingsLink];
  v14 = showsCustomSettingsLink ^ [(BBSectionInfoSettings *)self contentPreviewSetting];
  v15 = v12 ^ v14 ^ [(BBSectionInfoSettings *)self alertType];
  pushSettings = [(BBSectionInfoSettings *)self pushSettings];
  v17 = pushSettings ^ [(BBSectionInfoSettings *)self carPlaySetting];
  v18 = v17 ^ [(BBSectionInfoSettings *)self remoteNotificationsSetting];
  v19 = v18 ^ [(BBSectionInfoSettings *)self criticalAlertSetting];
  v20 = v19 ^ [(BBSectionInfoSettings *)self timeSensitiveSetting];
  v21 = v15 ^ v20 ^ [(BBSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting];
  bulletinGroupingSetting = [(BBSectionInfoSettings *)self bulletinGroupingSetting];
  v23 = bulletinGroupingSetting ^ [(BBSectionInfoSettings *)self announceSetting];
  v24 = v23 ^ [(BBSectionInfoSettings *)self scheduledDeliverySetting];
  v25 = v24 ^ [(BBSectionInfoSettings *)self directMessagesSetting];
  v26 = v25 ^ [(BBSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting];
  v27 = v26 ^ [(BBSectionInfoSettings *)self summarizationSetting];
  v28 = v21 ^ v27 ^ [(BBSectionInfoSettings *)self prioritizationSetting];
  announcePriorityNotificationsSetting = [(BBSectionInfoSettings *)self announcePriorityNotificationsSetting];

  return v28 ^ announcePriorityNotificationsSetting;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      authorizationStatus = [(BBSectionInfoSettings *)self authorizationStatus];
      if (authorizationStatus == [(BBSectionInfoSettings *)v5 authorizationStatus])
      {
        authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
        authorizationExpirationDate2 = [(BBSectionInfoSettings *)v5 authorizationExpirationDate];
        if (authorizationExpirationDate == authorizationExpirationDate2)
        {
          lastUserGrantedAuthorizationDate = [(BBSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
          lastUserGrantedAuthorizationDate2 = [(BBSectionInfoSettings *)v5 lastUserGrantedAuthorizationDate];
          if (lastUserGrantedAuthorizationDate == lastUserGrantedAuthorizationDate2)
          {
            muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
            muteAssertion2 = [(BBSectionInfoSettings *)v5 muteAssertion];
            if (!BSEqualObjects())
            {
              goto LABEL_33;
            }

            notificationCenterSetting = [(BBSectionInfoSettings *)self notificationCenterSetting];
            if (notificationCenterSetting != [(BBSectionInfoSettings *)v5 notificationCenterSetting])
            {
              goto LABEL_33;
            }

            lockScreenSetting = [(BBSectionInfoSettings *)self lockScreenSetting];
            if (lockScreenSetting != [(BBSectionInfoSettings *)v5 lockScreenSetting])
            {
              goto LABEL_33;
            }

            showsOnExternalDevices = [(BBSectionInfoSettings *)self showsOnExternalDevices];
            if (showsOnExternalDevices != [(BBSectionInfoSettings *)v5 showsOnExternalDevices])
            {
              goto LABEL_33;
            }

            showsCustomSettingsLink = [(BBSectionInfoSettings *)self showsCustomSettingsLink];
            if (showsCustomSettingsLink != [(BBSectionInfoSettings *)v5 showsCustomSettingsLink])
            {
              goto LABEL_33;
            }

            contentPreviewSetting = [(BBSectionInfoSettings *)self contentPreviewSetting];
            if (contentPreviewSetting != [(BBSectionInfoSettings *)v5 contentPreviewSetting])
            {
              goto LABEL_33;
            }

            alertType = [(BBSectionInfoSettings *)self alertType];
            if (alertType != [(BBSectionInfoSettings *)v5 alertType])
            {
              goto LABEL_33;
            }

            pushSettings = [(BBSectionInfoSettings *)self pushSettings];
            if (pushSettings != [(BBSectionInfoSettings *)v5 pushSettings])
            {
              goto LABEL_33;
            }

            carPlaySetting = [(BBSectionInfoSettings *)self carPlaySetting];
            if (carPlaySetting != [(BBSectionInfoSettings *)v5 carPlaySetting])
            {
              goto LABEL_33;
            }

            remoteNotificationsSetting = [(BBSectionInfoSettings *)self remoteNotificationsSetting];
            if (remoteNotificationsSetting != [(BBSectionInfoSettings *)v5 remoteNotificationsSetting])
            {
              goto LABEL_33;
            }

            criticalAlertSetting = [(BBSectionInfoSettings *)self criticalAlertSetting];
            if (criticalAlertSetting != [(BBSectionInfoSettings *)v5 criticalAlertSetting])
            {
              goto LABEL_33;
            }

            timeSensitiveSetting = [(BBSectionInfoSettings *)self timeSensitiveSetting];
            if (timeSensitiveSetting != [(BBSectionInfoSettings *)v5 timeSensitiveSetting])
            {
              goto LABEL_33;
            }

            hasUserConfiguredTimeSensitiveSetting = [(BBSectionInfoSettings *)self hasUserConfiguredTimeSensitiveSetting];
            if (hasUserConfiguredTimeSensitiveSetting != [(BBSectionInfoSettings *)v5 hasUserConfiguredTimeSensitiveSetting])
            {
              goto LABEL_33;
            }

            bulletinGroupingSetting = [(BBSectionInfoSettings *)self bulletinGroupingSetting];
            if (bulletinGroupingSetting == [(BBSectionInfoSettings *)v5 bulletinGroupingSetting]&& (v27 = [(BBSectionInfoSettings *)self announceSetting], v27 == [(BBSectionInfoSettings *)v5 announceSetting]) && (v28 = [(BBSectionInfoSettings *)self scheduledDeliverySetting], v28 == [(BBSectionInfoSettings *)v5 scheduledDeliverySetting]) && (v29 = [(BBSectionInfoSettings *)self directMessagesSetting], v29 == [(BBSectionInfoSettings *)v5 directMessagesSetting]) && (v30 = [(BBSectionInfoSettings *)self hasUserConfiguredDirectMessagesSetting], v30 == [(BBSectionInfoSettings *)v5 hasUserConfiguredDirectMessagesSetting]) && (v31 = [(BBSectionInfoSettings *)self summarizationSetting], v31 == [(BBSectionInfoSettings *)v5 summarizationSetting]) && (v32 = [(BBSectionInfoSettings *)self prioritizationSetting], v32 == [(BBSectionInfoSettings *)v5 prioritizationSetting]))
            {
              announcePriorityNotificationsSetting = [(BBSectionInfoSettings *)self announcePriorityNotificationsSetting];
              v9 = announcePriorityNotificationsSetting == [(BBSectionInfoSettings *)v5 announcePriorityNotificationsSetting];
            }

            else
            {
LABEL_33:
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAuthorizationStatus:{-[BBSectionInfoSettings authorizationStatus](self, "authorizationStatus")}];
  authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
  [v5 setAuthorizationExpirationDate:authorizationExpirationDate];

  lastUserGrantedAuthorizationDate = [(BBSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  [v5 setLastUserGrantedAuthorizationDate:lastUserGrantedAuthorizationDate];

  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  v9 = [muteAssertion copyWithZone:zone];
  [v5 setMuteAssertion:v9];

  [v5 setNotificationCenterSetting:{-[BBSectionInfoSettings notificationCenterSetting](self, "notificationCenterSetting")}];
  [v5 setLockScreenSetting:{-[BBSectionInfoSettings lockScreenSetting](self, "lockScreenSetting")}];
  [v5 setShowsOnExternalDevices:{-[BBSectionInfoSettings showsOnExternalDevices](self, "showsOnExternalDevices")}];
  [v5 setShowsCustomSettingsLink:{-[BBSectionInfoSettings showsCustomSettingsLink](self, "showsCustomSettingsLink")}];
  [v5 setContentPreviewSetting:{-[BBSectionInfoSettings contentPreviewSetting](self, "contentPreviewSetting")}];
  [v5 setAlertType:{-[BBSectionInfoSettings alertType](self, "alertType")}];
  [v5 setPushSettings:{-[BBSectionInfoSettings pushSettings](self, "pushSettings")}];
  [v5 setCarPlaySetting:{-[BBSectionInfoSettings carPlaySetting](self, "carPlaySetting")}];
  [v5 setRemoteNotificationsSetting:{-[BBSectionInfoSettings remoteNotificationsSetting](self, "remoteNotificationsSetting")}];
  [v5 setCriticalAlertSetting:{-[BBSectionInfoSettings criticalAlertSetting](self, "criticalAlertSetting")}];
  [v5 setTimeSensitiveSetting:{-[BBSectionInfoSettings timeSensitiveSetting](self, "timeSensitiveSetting")}];
  [v5 setUserConfiguredTimeSensitiveSetting:{-[BBSectionInfoSettings hasUserConfiguredTimeSensitiveSetting](self, "hasUserConfiguredTimeSensitiveSetting")}];
  [v5 setBulletinGroupingSetting:{-[BBSectionInfoSettings bulletinGroupingSetting](self, "bulletinGroupingSetting")}];
  [v5 setAnnounceSetting:{-[BBSectionInfoSettings announceSetting](self, "announceSetting")}];
  [v5 setScheduledDeliverySetting:{-[BBSectionInfoSettings scheduledDeliverySetting](self, "scheduledDeliverySetting")}];
  [v5 setDirectMessagesSetting:{-[BBSectionInfoSettings directMessagesSetting](self, "directMessagesSetting")}];
  [v5 setUserConfiguredDirectMessagesSetting:{-[BBSectionInfoSettings hasUserConfiguredDirectMessagesSetting](self, "hasUserConfiguredDirectMessagesSetting")}];
  [v5 setSummarizationSetting:{-[BBSectionInfoSettings summarizationSetting](self, "summarizationSetting")}];
  [v5 setPrioritizationSetting:{-[BBSectionInfoSettings prioritizationSetting](self, "prioritizationSetting")}];
  [v5 setAnnouncePriorityNotificationsSetting:{-[BBSectionInfoSettings announcePriorityNotificationsSetting](self, "announcePriorityNotificationsSetting")}];
  return v5;
}

- (BBSectionInfoSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = BBSectionInfoSettings;
  v5 = [(BBSectionInfoSettings *)&v24 init];
  if (v5)
  {
    -[BBSectionInfoSettings setAuthorizationStatus:](v5, "setAuthorizationStatus:", [coderCopy decodeIntegerForKey:@"authorizationStatus"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationExpirationDate"];
    [(BBSectionInfoSettings *)v5 setAuthorizationExpirationDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUserGrantedAuthorizationDate"];
    [(BBSectionInfoSettings *)v5 setLastUserGrantedAuthorizationDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muteAssertion"];
    [(BBSectionInfoSettings *)v5 setMuteAssertion:v8];

    -[BBSectionInfoSettings setNotificationCenterSetting:](v5, "setNotificationCenterSetting:", [coderCopy decodeIntegerForKey:@"notificationCenterSetting"]);
    -[BBSectionInfoSettings setLockScreenSetting:](v5, "setLockScreenSetting:", [coderCopy decodeIntegerForKey:@"lockScreenSetting"]);
    -[BBSectionInfoSettings setShowsOnExternalDevices:](v5, "setShowsOnExternalDevices:", [coderCopy decodeBoolForKey:@"showsOnExternalDevices"]);
    -[BBSectionInfoSettings setShowsCustomSettingsLink:](v5, "setShowsCustomSettingsLink:", [coderCopy decodeBoolForKey:@"showsCustomSettingsLink"]);
    -[BBSectionInfoSettings setContentPreviewSetting:](v5, "setContentPreviewSetting:", [coderCopy decodeIntegerForKey:@"contentPreviewSetting"]);
    -[BBSectionInfoSettings setAlertType:](v5, "setAlertType:", [coderCopy decodeIntegerForKey:@"alertType"]);
    -[BBSectionInfoSettings setPushSettings:](v5, "setPushSettings:", [coderCopy decodeInt32ForKey:@"pushSettings"]);
    -[BBSectionInfoSettings setCarPlaySetting:](v5, "setCarPlaySetting:", [coderCopy decodeIntegerForKey:@"carPlaySetting"]);
    -[BBSectionInfoSettings setRemoteNotificationsSetting:](v5, "setRemoteNotificationsSetting:", [coderCopy decodeIntegerForKey:@"remoteNotificationsSetting"]);
    -[BBSectionInfoSettings setCriticalAlertSetting:](v5, "setCriticalAlertSetting:", [coderCopy decodeIntegerForKey:@"criticalAlertSetting"]);
    -[BBSectionInfoSettings setTimeSensitiveSetting:](v5, "setTimeSensitiveSetting:", [coderCopy decodeIntegerForKey:@"timeSensitiveSetting"]);
    -[BBSectionInfoSettings setUserConfiguredTimeSensitiveSetting:](v5, "setUserConfiguredTimeSensitiveSetting:", [coderCopy decodeBoolForKey:@"userConfiguredTimeSensitiveSetting"]);
    -[BBSectionInfoSettings setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [coderCopy decodeIntegerForKey:@"bulletinGroupingSetting"]);
    if ([coderCopy containsValueForKey:@"summarizationSetting"])
    {
      v9 = [coderCopy decodeIntegerForKey:@"summarizationSetting"];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 2;
    }

    [(BBSectionInfoSettings *)v5 setSummarizationSetting:v10];
    if ([coderCopy containsValueForKey:@"prioritizationSetting"])
    {
      v11 = [coderCopy decodeIntegerForKey:@"prioritizationSetting"];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 2;
    }

    [(BBSectionInfoSettings *)v5 setPrioritizationSetting:v12];
    if ([coderCopy containsValueForKey:@"announceSetting"])
    {
      v13 = [coderCopy decodeIntegerForKey:@"announceSetting"];
    }

    else
    {
      v13 = 1;
    }

    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    [(BBSectionInfoSettings *)v5 setAnnounceSetting:v14];
    if ([coderCopy containsValueForKey:@"announcePriority"])
    {
      v15 = [coderCopy decodeIntegerForKey:@"announcePriority"];
    }

    else
    {
      v15 = 1;
    }

    [(BBSectionInfoSettings *)v5 setAnnouncePriorityNotificationsSetting:v15];
    if ([coderCopy containsValueForKey:@"scheduledDeliverySetting"])
    {
      v16 = [coderCopy decodeIntegerForKey:@"scheduledDeliverySetting"];
    }

    else
    {
      v16 = 1;
    }

    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    [(BBSectionInfoSettings *)v5 setScheduledDeliverySetting:v17];
    if ([coderCopy containsValueForKey:@"directMessagesSettingKey"])
    {
      v18 = [coderCopy decodeIntegerForKey:@"directMessagesSettingKey"];
    }

    else
    {
      v18 = 0;
    }

    [(BBSectionInfoSettings *)v5 setDirectMessagesSetting:v18];
    -[BBSectionInfoSettings setUserConfiguredDirectMessagesSetting:](v5, "setUserConfiguredDirectMessagesSetting:", [coderCopy decodeBoolForKey:@"userConfiguredDirectMessagesSetting"]);
    if ([coderCopy containsValueForKey:@"allowsNotifications"])
    {
      -[BBSectionInfoSettings setAllowsNotifications:](v5, "setAllowsNotifications:", [coderCopy decodeBoolForKey:@"allowsNotifications"]);
    }

    if ([coderCopy containsValueForKey:@"showsMessagePreview"])
    {
      -[BBSectionInfoSettings setShowsMessagePreview:](v5, "setShowsMessagePreview:", [coderCopy decodeBoolForKey:@"showsMessagePreview"]);
    }

    if (([coderCopy containsValueForKey:@"notificationCenterSetting"] & 1) == 0 && objc_msgSend(coderCopy, "containsValueForKey:", @"showsInNotificationCenter"))
    {
      -[BBSectionInfoSettings setShowsInNotificationCenter:](v5, "setShowsInNotificationCenter:", [coderCopy decodeBoolForKey:@"showsInNotificationCenter"]);
    }

    if (([coderCopy containsValueForKey:@"lockScreenSetting"] & 1) == 0 && objc_msgSend(coderCopy, "containsValueForKey:", @"showsInLockScreen"))
    {
      -[BBSectionInfoSettings setShowsInLockScreen:](v5, "setShowsInLockScreen:", [coderCopy decodeBoolForKey:@"showsInLockScreen"]);
    }

    if (([coderCopy containsValueForKey:@"announceSetting"] & 1) == 0 && objc_msgSend(coderCopy, "containsValueForKey:", @"spokenNotificationSetting"))
    {
      v19 = [coderCopy decodeIntegerForKey:@"spokenNotificationSetting"];
      if (v19)
      {
        if (v19 != 2)
        {
          v20 = v19 == 1;
LABEL_50:
          [(BBSectionInfoSettings *)v5 setAnnounceSetting:v20];
          goto LABEL_51;
        }

        v21 = [(BBSectionInfoSettings *)v5 timeSensitiveSetting]== 0;
        v22 = 2;
      }

      else
      {
        v21 = [(BBSectionInfoSettings *)v5 timeSensitiveSetting]== 2;
        v22 = 1;
      }

      if (v21)
      {
        v20 = v22 + 1;
      }

      else
      {
        v20 = v22;
      }

      goto LABEL_50;
    }
  }

LABEL_51:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BBSectionInfoSettings authorizationStatus](self forKey:{"authorizationStatus"), @"authorizationStatus"}];
  authorizationExpirationDate = [(BBSectionInfoSettings *)self authorizationExpirationDate];
  [coderCopy encodeObject:authorizationExpirationDate forKey:@"authorizationExpirationDate"];

  lastUserGrantedAuthorizationDate = [(BBSectionInfoSettings *)self lastUserGrantedAuthorizationDate];
  [coderCopy encodeObject:lastUserGrantedAuthorizationDate forKey:@"lastUserGrantedAuthorizationDate"];

  muteAssertion = [(BBSectionInfoSettings *)self muteAssertion];
  [coderCopy encodeObject:muteAssertion forKey:@"muteAssertion"];

  [coderCopy encodeInteger:-[BBSectionInfoSettings notificationCenterSetting](self forKey:{"notificationCenterSetting"), @"notificationCenterSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings lockScreenSetting](self forKey:{"lockScreenSetting"), @"lockScreenSetting"}];
  [coderCopy encodeBool:-[BBSectionInfoSettings showsOnExternalDevices](self forKey:{"showsOnExternalDevices"), @"showsOnExternalDevices"}];
  [coderCopy encodeBool:-[BBSectionInfoSettings showsCustomSettingsLink](self forKey:{"showsCustomSettingsLink"), @"showsCustomSettingsLink"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings contentPreviewSetting](self forKey:{"contentPreviewSetting"), @"contentPreviewSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings alertType](self forKey:{"alertType"), @"alertType"}];
  [coderCopy encodeInt32:-[BBSectionInfoSettings pushSettings](self forKey:{"pushSettings"), @"pushSettings"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings carPlaySetting](self forKey:{"carPlaySetting"), @"carPlaySetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings remoteNotificationsSetting](self forKey:{"remoteNotificationsSetting"), @"remoteNotificationsSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings criticalAlertSetting](self forKey:{"criticalAlertSetting"), @"criticalAlertSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings timeSensitiveSetting](self forKey:{"timeSensitiveSetting"), @"timeSensitiveSetting"}];
  [coderCopy encodeBool:-[BBSectionInfoSettings hasUserConfiguredTimeSensitiveSetting](self forKey:{"hasUserConfiguredTimeSensitiveSetting"), @"userConfiguredTimeSensitiveSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings bulletinGroupingSetting](self forKey:{"bulletinGroupingSetting"), @"bulletinGroupingSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings announceSetting](self forKey:{"announceSetting"), @"announceSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings announcePriorityNotificationsSetting](self forKey:{"announcePriorityNotificationsSetting"), @"announcePriority"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings scheduledDeliverySetting](self forKey:{"scheduledDeliverySetting"), @"scheduledDeliverySetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings directMessagesSetting](self forKey:{"directMessagesSetting"), @"directMessagesSettingKey"}];
  [coderCopy encodeBool:-[BBSectionInfoSettings hasUserConfiguredDirectMessagesSetting](self forKey:{"hasUserConfiguredDirectMessagesSetting"), @"userConfiguredDirectMessagesSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings summarizationSetting](self forKey:{"summarizationSetting"), @"summarizationSetting"}];
  [coderCopy encodeInteger:-[BBSectionInfoSettings prioritizationSetting](self forKey:{"prioritizationSetting"), @"prioritizationSetting"}];
  [coderCopy encodeBool:-[BBSectionInfoSettings showsInLockScreen](self forKey:{"showsInLockScreen"), @"showsInLockScreen"}];
  [coderCopy encodeBool:-[BBSectionInfoSettings showsInNotificationCenter](self forKey:{"showsInNotificationCenter"), @"showsInNotificationCenter"}];
}

- (void)setAllowsNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(BBSectionInfoSettings *)self setAuthorizationStatus:v3];
}

- (void)setShowsInNotificationCenter:(BOOL)center
{
  if (center)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(BBSectionInfoSettings *)self setNotificationCenterSetting:v3];
}

- (void)setShowsInLockScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(BBSectionInfoSettings *)self setLockScreenSetting:v3];
}

- (void)setSpokenNotificationSetting:(int64_t)setting
{
  if (setting == 2)
  {
    if ([(BBSectionInfoSettings *)self timeSensitiveSetting]== 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = setting == 1;
  }

  [(BBSectionInfoSettings *)self setAnnounceSetting:v4];
}

- (void)muteThreadIdentifier:untilDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unmuteThreadIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end