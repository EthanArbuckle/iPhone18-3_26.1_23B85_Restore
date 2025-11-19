@interface BBSectionInfo
+ (id)defaultSectionInfoForSection:(id)a3;
+ (id)defaultSectionInfoForType:(int64_t)a3;
- (BBMuteAssertion)muteAssertion;
- (BBSectionInfo)initWithCoder:(id)a3;
- (BBSectionInfo)initWithDefaultsForSectionType:(int64_t)a3;
- (BBSectionInfo)parentSection;
- (BBSectionInfoSettings)readableSettings;
- (BBSectionInfoSettings)writableSettings;
- (BOOL)_isDeliveredQuietly;
- (BOOL)allowsNotifications;
- (BOOL)hasEnabledSettings;
- (BOOL)hasUserConfiguredDirectMessagesSetting;
- (BOOL)hasUserConfiguredTimeSensitiveSetting;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)a3;
- (BOOL)isDeliveredQuietly;
- (BOOL)isEqual:(id)a3;
- (BOOL)showsCustomSettingsLink;
- (BOOL)showsInLockScreen;
- (BOOL)showsInNotificationCenter;
- (BOOL)showsMessagePreview;
- (BOOL)showsOnExternalDevices;
- (NSData)iconData;
- (NSDate)authorizationExpirationDate;
- (NSDate)lastUserGrantedAuthorizationDate;
- (NSDictionary)stateCapture;
- (id)_subsectionForID:(id)a3;
- (id)_suppressedSettingsList:(unint64_t)a3;
- (id)copyFromManagedSettings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)effectiveSectionInfoWithDefaultContentPreviewSetting:(int64_t)a3 globalAnnounceSetting:(int64_t)a4 globalScheduledDeliverySetting:(int64_t)a5 globalSummarizationSetting:(int64_t)a6 globalPrioritizationSetting:(int64_t)a7 hasPairedVehiclesForCarPlay:(BOOL)a8 hasDestinationForRemoteNotifications:(BOOL)a9;
- (id)effectiveSectionInfoWithFactoryInfo:(id)a3 defaultContentPreviewSetting:(int64_t)a4 globalAnnounceSetting:(int64_t)a5 globalScheduledDeliverySetting:(int64_t)a6 globalSummarizationSetting:(int64_t)a7 globalPrioritizationSetting:(int64_t)a8 hasPairedVehiclesForCarPlay:(BOOL)a9 hasDestinationForRemoteNotifications:(BOOL)a10;
- (int64_t)announceSetting;
- (int64_t)authorizationStatus;
- (int64_t)bulletinGroupingSetting;
- (int64_t)carPlaySetting;
- (int64_t)contentPreviewSetting;
- (int64_t)criticalAlertSetting;
- (int64_t)directMessagesSetting;
- (int64_t)lockScreenSetting;
- (int64_t)notificationCenterSetting;
- (int64_t)prioritizationSetting;
- (int64_t)remoteNotificationsSetting;
- (int64_t)scheduledDeliverySetting;
- (int64_t)spokenNotificationSetting;
- (int64_t)summarizationSetting;
- (int64_t)timeSensitiveSetting;
- (unint64_t)alertType;
- (unint64_t)hash;
- (unint64_t)pushSettings;
- (void)_addSubsection:(id)a3;
- (void)_associateDataProviderSectionInfo:(id)a3;
- (void)_configureWithDefaultsForSectionType:(int64_t)a3;
- (void)_deliverQuietly:(BOOL)a3;
- (void)_dissociateDataProviderSectionInfo:(id)a3;
- (void)_replaceSubsection:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)makeAuthorizationPermanent;
- (void)muteSectionUntilDate:(id)a3;
- (void)muteThreadIdentifier:(id)a3 untilDate:(id)a4;
- (void)queryAndUseManagedSettings;
- (void)queryAndUseManagedSettingsForSectionID:(id)a3;
- (void)setAlertType:(unint64_t)a3;
- (void)setAnnounceSetting:(int64_t)a3;
- (void)setAuthorizationExpirationDate:(id)a3;
- (void)setAuthorizationStatus:(int64_t)a3;
- (void)setBulletinGroupingSetting:(int64_t)a3;
- (void)setCarPlaySetting:(int64_t)a3;
- (void)setContentPreviewSetting:(int64_t)a3;
- (void)setCriticalAlertSetting:(int64_t)a3;
- (void)setDirectMessagesSetting:(int64_t)a3;
- (void)setLastUserGrantedAuthorizationDate:(id)a3;
- (void)setLockScreenSetting:(int64_t)a3;
- (void)setManagedSectionInfoSettings:(id)a3;
- (void)setMuteAssertion:(id)a3;
- (void)setNotificationCenterSetting:(int64_t)a3;
- (void)setParentSection:(id)a3;
- (void)setPrioritizationSetting:(int64_t)a3;
- (void)setPushSettings:(unint64_t)a3;
- (void)setRemoteNotificationsSetting:(int64_t)a3;
- (void)setScheduledDeliverySetting:(int64_t)a3;
- (void)setSpokenNotificationSetting:(int64_t)a3;
- (void)setSummarizationSetting:(int64_t)a3;
- (void)setTimeSensitiveSetting:(int64_t)a3;
- (void)unmuteSection;
- (void)unmuteThreadIdentifier:(id)a3;
- (void)updateWithDefaultSectionInfo:(id)a3;
@end

@implementation BBSectionInfo

- (id)copyFromManagedSettings
{
  v2 = [(BBSectionInfo *)self copy];
  if ([v2 usesManagedSettings])
  {
    v3 = [v2 managedSectionInfoSettings];
    [v2 setSectionInfoSettings:v3];

    [v2 setManagedSectionInfoSettings:0];
  }

  return v2;
}

- (BBSectionInfoSettings)readableSettings
{
  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (!managedSectionInfoSettings)
  {
    managedSectionInfoSettings = self->_sectionInfoSettings;
  }

  return managedSectionInfoSettings;
}

- (BOOL)allowsNotifications
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 allowsNotifications];

  return v3;
}

- (BBSectionInfo)parentSection
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSection);

  return WeakRetained;
}

- (BBSectionInfoSettings)writableSettings
{
  if (self->_managedSectionInfoSettings)
  {
    return 0;
  }

  else
  {
    return self->_sectionInfoSettings;
  }
}

- (BOOL)showsOnExternalDevices
{
  v2 = [(BBSectionInfo *)self sectionInfoSettings];
  v3 = [v2 showsOnExternalDevices];

  return v3;
}

- (unint64_t)alertType
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 alertType];

  return v3;
}

- (unint64_t)pushSettings
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 pushSettings];

  return v3;
}

- (int64_t)authorizationStatus
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 authorizationStatus];

  return v3;
}

- (int64_t)contentPreviewSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 contentPreviewSetting];

  return v3;
}

- (int64_t)bulletinGroupingSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 bulletinGroupingSetting];

  return v3;
}

- (int64_t)notificationCenterSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 notificationCenterSetting];

  return v3;
}

- (int64_t)lockScreenSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 lockScreenSetting];

  return v3;
}

- (int64_t)carPlaySetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 carPlaySetting];

  return v3;
}

- (int64_t)remoteNotificationsSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 remoteNotificationsSetting];

  return v3;
}

- (int64_t)announceSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 announceSetting];

  return v3;
}

- (int64_t)criticalAlertSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 criticalAlertSetting];

  return v3;
}

- (int64_t)timeSensitiveSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 timeSensitiveSetting];

  return v3;
}

- (int64_t)scheduledDeliverySetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 scheduledDeliverySetting];

  return v3;
}

- (int64_t)directMessagesSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 directMessagesSetting];

  return v3;
}

- (int64_t)summarizationSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 summarizationSetting];

  return v3;
}

- (int64_t)prioritizationSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 prioritizationSetting];

  return v3;
}

- (BOOL)showsCustomSettingsLink
{
  v2 = [(BBSectionInfo *)self sectionInfoSettings];
  v3 = [v2 showsCustomSettingsLink];

  return v3;
}

- (BOOL)hasEnabledSettings
{
  if ([(BBSectionInfo *)self allowsNotifications])
  {
    v3 = [(BBSectionInfo *)self pushSettings];
    if ((v3 & 0x18) != 0 || (v3 & 0x20) != 0 && [(BBSectionInfo *)self alertType]|| [(BBSectionInfo *)self lockScreenSetting]== 2 || [(BBSectionInfo *)self notificationCenterSetting]== 2 || [(BBSectionInfo *)self carPlaySetting]== 2 || [(BBSectionInfo *)self remoteNotificationsSetting]== 2 || [(BBSectionInfo *)self criticalAlertSetting]== 2)
    {
      return 1;
    }

    v4 = [(BBSectionInfo *)self scheduledDeliverySetting];
  }

  else
  {
    v4 = [(BBSectionInfo *)self criticalAlertSetting];
  }

  return v4 == 2;
}

- (int64_t)spokenNotificationSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 spokenNotificationSetting];

  return v3;
}

- (BBMuteAssertion)muteAssertion
{
  v2 = [(BBSectionInfo *)self sectionInfoSettings];
  v3 = [v2 muteAssertion];

  return v3;
}

+ (id)defaultSectionInfoForType:(int64_t)a3
{
  v3 = [[BBSectionInfo alloc] initWithDefaultsForSectionType:a3];

  return v3;
}

- (BBSectionInfo)initWithDefaultsForSectionType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = BBSectionInfo;
  v4 = [(BBSectionInfo *)&v8 init];
  if (v4)
  {
    v5 = [[BBSectionInfoSettings alloc] initWithDefaultsForSectionType:a3];
    sectionInfoSettings = v4->_sectionInfoSettings;
    v4->_sectionInfoSettings = v5;

    [(BBSectionInfo *)v4 _configureWithDefaultsForSectionType:a3];
  }

  return v4;
}

- (void)_configureWithDefaultsForSectionType:(int64_t)a3
{
  [(BBSectionInfo *)self setSectionType:?];
  [(BBSectionInfo *)self setSuppressedSettings:0];
  if ((a3 | 2) == 2)
  {
    [(BBSectionInfo *)self setBulletinCount:5];
    if (a3 == 2)
    {

      [(BBSectionInfo *)self setSuppressedSettings:8];
    }
  }
}

- (void)_addSubsection:(id)a3
{
  v10 = a3;
  v5 = [(BBSectionInfo *)self parentSection];
  if (v5)
  {
  }

  else if ([(BBSectionInfo *)self sectionType]!= 2)
  {
    goto LABEL_3;
  }

  [(BBSectionInfo *)a2 _addSubsection:?];
LABEL_3:
  v6 = v10;
  if (v10)
  {
    [v10 setParentSection:self];
    v7 = MEMORY[0x277CBEB18];
    v8 = [(BBSectionInfo *)self subsections];
    v9 = [v7 arrayWithArray:v8];

    [v9 addObject:v10];
    [(BBSectionInfo *)self setSubsections:v9];

    v6 = v10;
  }
}

- (void)_replaceSubsection:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = self;
  v5 = [(BBSectionInfo *)self subsections];
  v6 = [v4 subsectionID];
  if ([v5 count] && v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 subsectionID];
          v15 = [v14 isEqualToString:v6];

          if (v15)
          {
            [v13 setParentSection:0];
            [v4 setParentSection:v18];
            v13 = v4;
          }

          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(BBSectionInfo *)v18 setSubsections:v7];
    v5 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_subsectionForID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(BBSectionInfo *)self subsections];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 subsectionID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_associateDataProviderSectionInfo:(id)a3
{
  v4 = a3;
  v8 = [v4 sectionID];
  v5 = [(BBSectionInfo *)self dataProviderIDs];
  if (v8 && ([v5 containsObject:v8] & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [v6 addObject:v8];
    [(BBSectionInfo *)self setDataProviderIDs:v6];
  }

  v7 = [(BBSectionInfo *)self sectionID];
  [v4 setFactorySectionID:v7];
}

- (void)_dissociateDataProviderSectionInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [v4 factorySectionID];
    v6 = [(BBSectionInfo *)self sectionID];
    v7 = [v5 isEqualToString:v6];

    v4 = v12;
    if (v7)
    {
      v8 = MEMORY[0x277CBEB18];
      v9 = [(BBSectionInfo *)self dataProviderIDs];
      v10 = [v8 arrayWithArray:v9];

      v11 = [v12 sectionID];
      [v10 removeObject:v11];

      [(BBSectionInfo *)self setDataProviderIDs:v10];
      [v12 setFactorySectionID:0];

      v4 = v12;
    }
  }
}

- (void)setParentSection:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_parentSection, v6);
  v5 = [v6 managedSectionInfoSettings];

  [(BBSectionInfo *)self setManagedSectionInfoSettings:v5];
}

- (BOOL)_isDeliveredQuietly
{
  if (![(BBSectionInfo *)self allowsNotifications])
  {
    return 0;
  }

  if ([(BBSectionInfo *)self notificationCenterSetting]!= 2)
  {
    return 0;
  }

  v3 = [(BBSectionInfo *)self pushSettings];
  if ((v3 & 0x18) != 0 || (v3 & 0x20) != 0 && [(BBSectionInfo *)self alertType])
  {
    return 0;
  }

  if ([(BBSectionInfo *)self lockScreenSetting]== 2)
  {
    return 0;
  }

  v6 = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [v6 bb_isToneEnabledForSectionInfo:self];

  if (v7)
  {
    return 0;
  }

  v8 = [MEMORY[0x277D71F88] sharedVibrationManager];
  v9 = [v8 bb_isVibrationEnabledForSectionInfo:self];

  if (v9)
  {
    return 0;
  }

  if ([(BBSectionInfo *)self carPlaySetting]!= 2)
  {
    goto LABEL_13;
  }

  v10 = objc_alloc_init(getCRPairedVehicleManagerClass());
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__BBSectionInfo__isDeliveredQuietly__block_invoke;
  v13[3] = &unk_278D2B0F0;
  v13[4] = &v14;
  [v10 syncFetchAllVehiclesWithCompletion:v13];
  v11 = [v15[5] count];
  _Block_object_dispose(&v14, 8);

  if (v11)
  {
    return 0;
  }

LABEL_13:
  [(BBSectionInfo *)self remoteNotificationsSetting];
  if ([(BBSectionInfo *)self announceSetting]!= 2 && [(BBSectionInfo *)self announceSetting]!= 3)
  {
    return 1;
  }

  v12 = +[BBBulletinBoardDefaults standardDefaults];
  v4 = ([v12 isAnnounceSupportedForHeadphones] & 1) == 0 && (!objc_msgSend(v12, "isAnnounceSupportedForCarPlay") || !objc_msgSend(v12, "hasPairedVehiclesForCarPlay"));

  return v4;
}

- (BOOL)isDeliveredQuietly
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(BBSectionInfo *)self subsections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(BBSectionInfo *)self allowsNotifications];
    if (v5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [(BBSectionInfo *)self subsections];
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_18:

LABEL_19:
        LOBYTE(v5) = 0;
        goto LABEL_20;
      }

      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 allowsNotifications] && objc_msgSend(v12, "notificationCenterSetting") == 2)
          {
            if (![v12 _isDeliveredQuietly])
            {
              goto LABEL_18;
            }

            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v5 = [(BBSectionInfo *)self _isDeliveredQuietly];
    if (v5)
    {
LABEL_17:
      LOBYTE(v5) = 1;
    }
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_deliverQuietly:(BOOL)a3
{
  v3 = a3;
  v5 = [(BBSectionInfo *)self pushSettings];
  if (v3)
  {
    [(BBSectionInfo *)self setPushSettings:v5 & 0xFFFFFFFFFFFFFFC7];
    [(BBSectionInfo *)self setAlertType:0];
    if ([(BBSectionInfo *)self lockScreenSetting])
    {
      [(BBSectionInfo *)self setLockScreenSetting:1];
    }

    if ([(BBSectionInfo *)self carPlaySetting])
    {
      [(BBSectionInfo *)self setCarPlaySetting:1];
    }

    if ([(BBSectionInfo *)self remoteNotificationsSetting])
    {
      [(BBSectionInfo *)self setRemoteNotificationsSetting:1];
    }

    if ([(BBSectionInfo *)self announceSetting])
    {
      v6 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    [(BBSectionInfo *)self setPushSettings:(8 * (v5 & 7)) | v5];
    [(BBSectionInfo *)self setAlertType:1];
    if ([(BBSectionInfo *)self lockScreenSetting])
    {
      [(BBSectionInfo *)self setLockScreenSetting:2];
    }

    if ([(BBSectionInfo *)self carPlaySetting])
    {
      [(BBSectionInfo *)self setCarPlaySetting:2];
    }

    if ([(BBSectionInfo *)self remoteNotificationsSetting])
    {
      [(BBSectionInfo *)self setRemoteNotificationsSetting:2];
    }

    if ([(BBSectionInfo *)self announceSetting])
    {
      if ([(BBSectionInfo *)self timeSensitiveSetting]== 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

LABEL_20:

      [(BBSectionInfo *)self setAnnounceSetting:v6];
    }
  }
}

- (void)makeAuthorizationPermanent
{
  if ([(BBSectionInfo *)self authorizationStatus]== 4 || [(BBSectionInfo *)self authorizationStatus]== 3)
  {

    [(BBSectionInfo *)self setAuthorizationStatus:2];
  }
}

- (void)muteSectionUntilDate:(id)a3
{
  v5 = a3;
  if (![(BBSectionInfo *)self _isDeliveredQuietly])
  {
    v4 = [(BBSectionInfo *)self sectionInfoSettings];
    [v4 muteSectionUntilDate:v5];
  }
}

- (void)unmuteSection
{
  v2 = [(BBSectionInfo *)self sectionInfoSettings];
  [v2 unmuteSection];
}

- (void)muteThreadIdentifier:(id)a3 untilDate:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(BBSectionInfo *)self _isDeliveredQuietly])
  {
    v7 = [(BBSectionInfo *)self sectionInfoSettings];
    [v7 muteThreadIdentifier:v8 untilDate:v6];
  }
}

- (void)unmuteThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self sectionInfoSettings];
  [v5 unmuteThreadIdentifier:v4];
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self sectionInfoSettings];
  v6 = [v5 isBulletinMutedForThreadIdentifier:v4];

  return v6;
}

- (id)_suppressedSettingsList:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (a3 == -1)
  {
    v6 = @"All";
LABEL_38:
    [v5 addObject:v6];
    goto LABEL_39;
  }

  if (a3)
  {
    [v4 addObject:@"ShowsInNotificationCenter"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"ShowsInLockScreen"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"ShowsOnExternalDevices"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"NotificationCenterLimit"];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"PushSettings"];
  if ((a3 & 0x20) == 0)
  {
LABEL_8:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"AlertType"];
  if ((a3 & 0x40) == 0)
  {
LABEL_9:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"ShowsMessagePreview"];
  if ((a3 & 0x80) == 0)
  {
LABEL_10:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"ShowsInCarPlay"];
  if ((a3 & 0x10000) == 0)
  {
LABEL_11:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"RemoteNotifications"];
  if ((a3 & 0x100) == 0)
  {
LABEL_12:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"CriticalAlert"];
  if ((a3 & 0x200) == 0)
  {
LABEL_13:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"BulletinGrouping"];
  if ((a3 & 0x400) == 0)
  {
LABEL_14:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"SpokenNotifications"];
  [v5 addObject:@"SpokenNotifications"];
  if ((a3 & 0x800) == 0)
  {
LABEL_15:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 addObject:@"TimeSensitive"];
  if ((a3 & 0x1000) == 0)
  {
LABEL_16:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"ScheduledDelivery"];
  if ((a3 & 0x2000) == 0)
  {
LABEL_17:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    [v5 addObject:@"Sound"];
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_35:
  [v5 addObject:@"Badge"];
  if ((a3 & 0x4000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((a3 & 0x8000) != 0)
  {
LABEL_37:
    v6 = @"DirectMessages";
    goto LABEL_38;
  }

LABEL_39:

  return v5;
}

- (NSDictionary)stateCapture
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(BBSectionInfoSettings *)self->_sectionInfoSettings stateCapture];
  [v3 setValue:v4 forKey:@"SectionInfoSettings"];

  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (managedSectionInfoSettings)
  {
    v6 = [(BBSectionInfoSettings *)managedSectionInfoSettings stateCapture];
    [v3 setValue:v6 forKey:@"ManagedSettings"];
  }

  else
  {
    [v3 setValue:@"Unmanaged" forKey:@"ManagedSettings"];
  }

  v7 = [(BBSectionInfo *)self appName];

  if (v7)
  {
    v8 = [(BBSectionInfo *)self appName];
    [v3 setValue:v8 forKey:@"AppName"];
  }

  v9 = [(BBSectionInfo *)self displayName];

  if (v9)
  {
    v10 = [(BBSectionInfo *)self displayName];
    [v3 setValue:v10 forKey:@"DisplayName"];
  }

  v11 = [(BBSectionInfo *)self subsectionID];

  if (v11)
  {
    v12 = [(BBSectionInfo *)self subsectionID];
    [v3 setValue:v12 forKey:@"SubSectionID"];
  }

  v13 = [(BBSectionInfo *)self factorySectionID];

  if (v13)
  {
    v14 = [(BBSectionInfo *)self factorySectionID];
    [v3 setValue:v14 forKey:@"FactorySectionID"];
  }

  if ([(BBSectionInfo *)self version])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BBSectionInfo version](self, "version")}];
    [v3 setValue:v15 forKey:@"Version"];
  }

  v16 = BBStringFromBool(self->_suppressFromSettings);
  [v3 setValue:v16 forKey:@"HiddenFromSettings"];

  v17 = BBStringFromBool([(BBSectionInfo *)self hideWeeApp]);
  [v3 setValue:v17 forKey:@"HiddenWeeApp"];

  v18 = [(BBSectionInfo *)self suppressedSettings];
  if (v18)
  {
    v19 = [(BBSectionInfo *)self _suppressedSettingsList:v18];
    [v3 setValue:v19 forKey:@"SuppressedSettings"];
  }

  v20 = [(BBSectionInfo *)self subsections];
  if ([v20 count])
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          v28 = [v27 stateCapture];
          v29 = [v27 subsectionID];
          [v21 setValue:v28 forKey:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    [v3 setValue:v21 forKey:@"SubSections"];
    goto LABEL_25;
  }

  v32 = [(BBSectionInfo *)self parentSection];
  if (v32)
  {
    v33 = v32;
    v34 = [(BBSectionInfo *)self parentSection];
    v35 = [v34 sectionID];
    v36 = [(BBSectionInfo *)self sectionID];
    v37 = [v35 isEqualToString:v36];

    if ((v37 & 1) == 0)
    {
      v21 = [(BBSectionInfo *)self parentSection];
      v38 = [v21 sectionID];
      [v3 setValue:v38 forKey:@"ParentSectionID"];

LABEL_25:
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSData)iconData
{
  v2 = [(BBSectionInfo *)self icon];
  v3 = [v2 _bestVariantForFormat:1];
  v4 = [v3 imageData];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@" Section %@", self->_sectionID];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_sectionInfoSettings];

  if (self->_isRestricted)
  {
    v5 = [v4 stringByAppendingFormat:@" (restricted)"];

    v4 = v5;
  }

  if (self->_managedSectionInfoSettings)
  {
    [v4 stringByAppendingFormat:@" %@ (managed)", self->_managedSectionInfoSettings];
  }

  else
  {
    [v4 stringByAppendingString:@" (unmanaged)"];
  }
  v6 = ;

  v7 = [(BBSectionInfo *)self appName];

  if (v7)
  {
    v8 = [(BBSectionInfo *)self appName];
    v9 = [v6 stringByAppendingFormat:@" '%@'", v8];

    v6 = v9;
  }

  v10 = [(BBSectionInfo *)self displayName];

  if (v10)
  {
    v11 = [(BBSectionInfo *)self displayName];
    v12 = [v6 stringByAppendingFormat:@" '%@'", v11];

    v6 = v12;
  }

  v13 = [(BBSectionInfo *)self subsectionID];

  if (v13)
  {
    v14 = [(BBSectionInfo *)self subsectionID];
    v15 = [v6 stringByAppendingFormat:@" (%@)", v14];

    v6 = v15;
  }

  v16 = [(BBSectionInfo *)self factorySectionID];

  if (v16)
  {
    v17 = [(BBSectionInfo *)self factorySectionID];
    v18 = [v6 stringByAppendingFormat:@" (factory: %@)", v17];

    v6 = v18;
  }

  if ([(BBSectionInfo *)self version])
  {
    v19 = [v6 stringByAppendingFormat:@" [v%ld]", -[BBSectionInfo version](self, "version")];

    v6 = v19;
  }

  if (self->_suppressFromSettings)
  {
    v20 = [v6 stringByAppendingString:{@", hidden from settings"}];

    v6 = v20;
  }

  if ([(BBSectionInfo *)self hideWeeApp])
  {
    v21 = [v6 stringByAppendingString:{@", hidden wee app"}];

    v6 = v21;
  }

  v22 = [(BBSectionInfo *)self suppressedSettings];
  if (v22)
  {
    v23 = [v6 stringByAppendingFormat:@", suppressed settings = %lX", v22];

    v6 = v23;
  }

  v24 = [(BBSectionInfo *)self subsections];
  if ([v24 count])
  {
    v25 = [v6 stringByAppendingFormat:@", subsections = %@", v24];
LABEL_24:

    v6 = v25;
    goto LABEL_25;
  }

  v29 = [(BBSectionInfo *)self parentSection];
  if (v29)
  {
    v30 = v29;
    v31 = [(BBSectionInfo *)self parentSection];
    v32 = [v31 sectionID];
    v33 = [(BBSectionInfo *)self sectionID];
    v34 = [v32 isEqualToString:v33];

    if ((v34 & 1) == 0)
    {
      v35 = [(BBSectionInfo *)self parentSection];
      v36 = [v35 sectionID];
      v25 = [v6 stringByAppendingFormat:@", parent section = %@", v36];

      v6 = v35;
      goto LABEL_24;
    }
  }

LABEL_25:
  v37.receiver = self;
  v37.super_class = BBSectionInfo;
  v26 = [(BBSectionInfo *)&v37 description];
  v27 = [v26 stringByAppendingString:v6];

  return v27;
}

- (unint64_t)hash
{
  v42 = [(BBSectionInfo *)self sectionID];
  v3 = [v42 hash];
  v41 = [(BBSectionInfo *)self subsectionID];
  v4 = [v41 hash] ^ v3;
  v5 = v4 ^ [(BBSectionInfo *)self sectionType];
  v6 = [(BBSectionInfo *)self isAppClip];
  v7 = v5 ^ v6 ^ [(BBSectionInfo *)self isModificationAllowed];
  v8 = [(BBSectionInfo *)self isRestricted];
  v9 = v8 ^ [(BBSectionInfo *)self sectionCategory];
  v10 = v7 ^ v9 ^ [(BBSectionInfo *)self suppressFromSettings];
  v40 = [(BBSectionInfo *)self sectionInfoSettings];
  v11 = [v40 hash];
  v39 = [(BBSectionInfo *)self managedSectionInfoSettings];
  v12 = v11 ^ [v39 hash];
  v13 = v12 ^ [(BBSectionInfo *)self suppressedSettings];
  v38 = [(BBSectionInfo *)self subsections];
  v14 = v13 ^ [v38 hash];
  v37 = [(BBSectionInfo *)self parentSection];
  v36 = [v37 sectionID];
  v15 = v10 ^ v14 ^ [v36 hash];
  v16 = [(BBSectionInfo *)self subsectionPriority];
  v17 = v16 ^ [(BBSectionInfo *)self version];
  v18 = [(BBSectionInfo *)self appName];
  v19 = v17 ^ [v18 hash];
  v20 = [(BBSectionInfo *)self displayName];
  v21 = v19 ^ [v20 hash];
  v22 = [(BBSectionInfo *)self icon];
  v23 = v21 ^ [v22 hash];
  v24 = [(BBSectionInfo *)self factorySectionID];
  v25 = v23 ^ [v24 hash];
  v26 = [(BBSectionInfo *)self dataProviderIDs];
  v35 = v15 ^ v25 ^ [v26 hash];
  v27 = [(BBSectionInfo *)self customSettingsBundle];
  v28 = [v27 hash];
  v29 = [(BBSectionInfo *)self customSettingsDetailControllerClass];
  v30 = v28 ^ [v29 hash];
  v31 = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
  v32 = v30 ^ [v31 hash];
  v33 = v32 ^ [(BBSectionInfo *)self hideWeeApp];

  return v35 ^ v33;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBSectionInfo *)self sectionID];
      v7 = [(BBSectionInfo *)v5 sectionID];
      if (BSEqualStrings())
      {
        v8 = [(BBSectionInfo *)self subsectionID];
        v9 = [(BBSectionInfo *)v5 subsectionID];
        if (BSEqualStrings() && (v10 = [(BBSectionInfo *)self sectionType], v10 == [(BBSectionInfo *)v5 sectionType]) && (v11 = [(BBSectionInfo *)self isAppClip], v11 == [(BBSectionInfo *)v5 isAppClip]) && (v12 = [(BBSectionInfo *)self isModificationAllowed], v12 == [(BBSectionInfo *)v5 isModificationAllowed]) && (v13 = [(BBSectionInfo *)self isRestricted], v13 == [(BBSectionInfo *)v5 isRestricted]) && (v14 = [(BBSectionInfo *)self sectionCategory], v14 == [(BBSectionInfo *)v5 sectionCategory]) && (v15 = [(BBSectionInfo *)self suppressFromSettings], v15 == [(BBSectionInfo *)v5 suppressFromSettings]))
        {
          v18 = [(BBSectionInfo *)self sectionInfoSettings];
          v19 = [(BBSectionInfo *)v5 sectionInfoSettings];
          if (BSEqualObjects())
          {
            v20 = [(BBSectionInfo *)self managedSectionInfoSettings];
            v58 = [(BBSectionInfo *)v5 managedSectionInfoSettings];
            if (BSEqualObjects())
            {
              v57 = v20;
              v21 = [(BBSectionInfo *)self suppressedSettings];
              if (v21 == [(BBSectionInfo *)v5 suppressedSettings])
              {
                v22 = [(BBSectionInfo *)self subsections];
                v55 = [(BBSectionInfo *)v5 subsections];
                v56 = v22;
                if (BSEqualObjects())
                {
                  v54 = [(BBSectionInfo *)self parentSection];
                  v23 = [v54 sectionID];
                  v52 = [(BBSectionInfo *)v5 parentSection];
                  [v52 sectionID];
                  v51 = v53 = v23;
                  if (BSEqualStrings() && (v24 = [(BBSectionInfo *)self subsectionPriority], v24 == [(BBSectionInfo *)v5 subsectionPriority]) && (v25 = [(BBSectionInfo *)self version], v25 == [(BBSectionInfo *)v5 version]))
                  {
                    v26 = [(BBSectionInfo *)self appName];
                    [(BBSectionInfo *)v5 appName];
                    v50 = v49 = v26;
                    if (BSEqualStrings())
                    {
                      v27 = [(BBSectionInfo *)self displayName];
                      v47 = [(BBSectionInfo *)v5 displayName];
                      v48 = v27;
                      if (BSEqualStrings())
                      {
                        v28 = [(BBSectionInfo *)self icon];
                        v45 = [(BBSectionInfo *)v5 icon];
                        v46 = v28;
                        if (BSEqualObjects())
                        {
                          v29 = [(BBSectionInfo *)self factorySectionID];
                          v43 = [(BBSectionInfo *)v5 factorySectionID];
                          v44 = v29;
                          if (BSEqualStrings())
                          {
                            v30 = [(BBSectionInfo *)self dataProviderIDs];
                            v41 = [(BBSectionInfo *)v5 dataProviderIDs];
                            v42 = v30;
                            if (BSEqualObjects())
                            {
                              v31 = [(BBSectionInfo *)self customSettingsBundle];
                              v39 = [(BBSectionInfo *)v5 customSettingsBundle];
                              v40 = v31;
                              if (BSEqualStrings())
                              {
                                v32 = [(BBSectionInfo *)self customSettingsDetailControllerClass];
                                v37 = [(BBSectionInfo *)v5 customSettingsDetailControllerClass];
                                v38 = v32;
                                if (BSEqualStrings())
                                {
                                  v33 = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
                                  [(BBSectionInfo *)v5 pathToWeeAppPluginBundle];
                                  v34 = v36 = v33;
                                  if (BSEqualStrings())
                                  {
                                    v35 = [(BBSectionInfo *)self hideWeeApp:v36];
                                    v16 = v35 ^ [(BBSectionInfo *)v5 hideWeeApp]^ 1;
                                  }

                                  else
                                  {
                                    LOBYTE(v16) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v16) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v16) = 0;
                              }
                            }

                            else
                            {
                              LOBYTE(v16) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v16) = 0;
                          }
                        }

                        else
                        {
                          LOBYTE(v16) = 0;
                        }
                      }

                      else
                      {
                        LOBYTE(v16) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v16) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v16) = 0;
                  }
                }

                else
                {
                  LOBYTE(v16) = 0;
                }
              }

              else
              {
                LOBYTE(v16) = 0;
              }

              v20 = v57;
            }

            else
            {
              LOBYTE(v16) = 0;
            }
          }

          else
          {
            LOBYTE(v16) = 0;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BBSectionInfo *)self parentSection];
  [v5 setParentSection:v6];

  v7 = [(BBSectionInfo *)self sectionID];
  [v5 setSectionID:v7];

  v8 = [(BBSectionInfo *)self subsectionID];
  [v5 setSubsectionID:v8];

  [v5 setSectionType:{-[BBSectionInfo sectionType](self, "sectionType")}];
  [v5 setIsAppClip:{-[BBSectionInfo isAppClip](self, "isAppClip")}];
  [v5 setIsModificationAllowed:{-[BBSectionInfo isModificationAllowed](self, "isModificationAllowed")}];
  [v5 setIsRestricted:{-[BBSectionInfo isRestricted](self, "isRestricted")}];
  [v5 setSectionCategory:{-[BBSectionInfo sectionCategory](self, "sectionCategory")}];
  [v5 setSuppressFromSettings:{-[BBSectionInfo suppressFromSettings](self, "suppressFromSettings")}];
  v9 = [(BBSectionInfoSettings *)self->_sectionInfoSettings copyWithZone:a3];
  [v5 setSectionInfoSettings:v9];

  v10 = [(BBSectionInfoSettings *)self->_managedSectionInfoSettings copyWithZone:a3];
  [v5 setManagedSectionInfoSettings:v10];

  v11 = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
  [v5 setPathToWeeAppPluginBundle:v11];

  v12 = [(BBSectionInfo *)self appName];
  [v5 setAppName:v12];

  v13 = [(BBSectionInfo *)self displayName];
  [v5 setDisplayName:v13];

  v14 = [(BBSectionInfo *)self icon];
  [v5 setIcon:v14];

  v15 = [(BBSectionInfo *)self customSettingsBundle];
  [v5 setCustomSettingsBundle:v15];

  v16 = [(BBSectionInfo *)self customSettingsDetailControllerClass];
  [v5 setCustomSettingsDetailControllerClass:v16];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [(BBSectionInfo *)self subsections];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v27 + 1) + 8 * v21) copyWithZone:a3];
        [v5 _addSubsection:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  [v5 setSubsectionPriority:{-[BBSectionInfo subsectionPriority](self, "subsectionPriority")}];
  [v5 setSuppressedSettings:{-[BBSectionInfo suppressedSettings](self, "suppressedSettings")}];
  [v5 setHideWeeApp:{-[BBSectionInfo hideWeeApp](self, "hideWeeApp")}];
  v23 = [(BBSectionInfo *)self factorySectionID];
  [v5 setFactorySectionID:v23];

  v24 = [(BBSectionInfo *)self dataProviderIDs];
  [v5 setDataProviderIDs:v24];

  [v5 setVersion:{-[BBSectionInfo version](self, "version")}];
  [v5 setIsRestricted:{-[BBSectionInfo isRestricted](self, "isRestricted")}];
  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BBSectionInfo)initWithCoder:(id)a3
{
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BBSectionInfo;
  v5 = [(BBSectionInfo *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    [(BBSectionInfo *)v5 setSectionID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subsectionID"];
    [(BBSectionInfo *)v5 setSubsectionID:v7];

    -[BBSectionInfo setSectionType:](v5, "setSectionType:", [v4 decodeIntegerForKey:@"sectionType"]);
    -[BBSectionInfo setIsAppClip:](v5, "setIsAppClip:", [v4 decodeBoolForKey:@"isAppClip"]);
    -[BBSectionInfo setIsModificationAllowed:](v5, "setIsModificationAllowed:", [v4 decodeBoolForKey:@"isModificationAllowed"]);
    -[BBSectionInfo setIsRestricted:](v5, "setIsRestricted:", [v4 decodeBoolForKey:@"isRestricted"]);
    -[BBSectionInfo setSectionCategory:](v5, "setSectionCategory:", [v4 decodeIntegerForKey:@"sectionCategory"]);
    -[BBSectionInfo setSuppressFromSettings:](v5, "setSuppressFromSettings:", [v4 decodeBoolForKey:@"suppressFromSettings"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathToWeeAppPluginBundle"];
    [(BBSectionInfo *)v5 setPathToWeeAppPluginBundle:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    [(BBSectionInfo *)v5 setAppName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(BBSectionInfo *)v5 setDisplayName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    [(BBSectionInfo *)v5 setIcon:v11];

    v12 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"subsections"];

    [(BBSectionInfo *)v5 setSubsections:v15];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v37 + 1) + 8 * v20++) setParentSection:{v5, v37}];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v18);
    }

    -[BBSectionInfo setSubsectionPriority:](v5, "setSubsectionPriority:", [v4 decodeIntegerForKey:@"subsectionPriority"]);
    -[BBSectionInfo setSuppressedSettings:](v5, "setSuppressedSettings:", [v4 decodeInt64ForKey:@"suppressedSettings"]);
    -[BBSectionInfo setHideWeeApp:](v5, "setHideWeeApp:", [v4 decodeBoolForKey:@"hideWeeApp"]);
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"factorySectionID"];
    [(BBSectionInfo *)v5 setFactorySectionID:v21];

    v22 = MEMORY[0x277CBEB98];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"dataProviderIDs"];
    [(BBSectionInfo *)v5 setDataProviderIDs:v25];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsBundle"];
    [(BBSectionInfo *)v5 setCustomSettingsBundle:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsDetailControllerClass"];
    [(BBSectionInfo *)v5 setCustomSettingsDetailControllerClass:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    -[BBSectionInfo setVersion:](v5, "setVersion:", [v28 unsignedIntegerValue]);
    if ([v4 containsValueForKey:@"sectionInfoSettings"])
    {
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionInfoSettings"];
      sectionInfoSettings = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v29;
    }

    else
    {
      v31 = [[BBSectionInfoSettings alloc] initWithDefaultsForSectionType:[(BBSectionInfo *)v5 sectionType]];
      v32 = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v31;

      if ([v4 containsValueForKey:@"allowsNotifications"])
      {
        v33 = [v4 decodeBoolForKey:@"allowsNotifications"];
      }

      else
      {
        v33 = 1;
      }

      [(BBSectionInfoSettings *)v5->_sectionInfoSettings setAllowsNotifications:v33, v37];
      -[BBSectionInfoSettings setShowsInNotificationCenter:](v5->_sectionInfoSettings, "setShowsInNotificationCenter:", [v4 decodeBoolForKey:@"showsInNotificationCenter"]);
      -[BBSectionInfoSettings setShowsInLockScreen:](v5->_sectionInfoSettings, "setShowsInLockScreen:", [v4 decodeBoolForKey:@"showsInLockScreen"]);
      -[BBSectionInfoSettings setShowsCustomSettingsLink:](v5->_sectionInfoSettings, "setShowsCustomSettingsLink:", [v4 decodeBoolForKey:@"showsCustomSettingsLink"]);
      -[BBSectionInfoSettings setAlertType:](v5->_sectionInfoSettings, "setAlertType:", [v4 decodeIntegerForKey:@"alertType"]);
      -[BBSectionInfoSettings setPushSettings:](v5->_sectionInfoSettings, "setPushSettings:", [v4 decodeInt64ForKey:@"pushSettings"]);
      if ([v4 containsValueForKey:@"showsOnExternalDevices"])
      {
        -[BBSectionInfoSettings setShowsOnExternalDevices:](v5->_sectionInfoSettings, "setShowsOnExternalDevices:", [v4 decodeBoolForKey:@"showsOnExternalDevices"]);
      }

      if ([v4 containsValueForKey:@"showsMessagePreview"])
      {
        -[BBSectionInfoSettings setShowsMessagePreview:](v5->_sectionInfoSettings, "setShowsMessagePreview:", [v4 decodeBoolForKey:@"showsMessagePreview"]);
      }
    }

    if ([v4 containsValueForKey:{@"bulletinGroupingSetting", v37}])
    {
      -[BBSectionInfo setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [v4 decodeIntegerForKey:@"bulletinGroupingSetting"]);
    }

    if ([v4 containsValueForKey:@"managedSectionInfoSettings"])
    {
      v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedSectionInfoSettings"];
      [(BBSectionInfo *)v5 setManagedSectionInfoSettings:v34];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self sectionID];
  [v4 encodeObject:v5 forKey:@"sectionID"];

  v6 = [(BBSectionInfo *)self subsectionID];
  [v4 encodeObject:v6 forKey:@"subsectionID"];

  [v4 encodeInteger:-[BBSectionInfo sectionType](self forKey:{"sectionType"), @"sectionType"}];
  [v4 encodeBool:-[BBSectionInfo isAppClip](self forKey:{"isAppClip"), @"isAppClip"}];
  [v4 encodeBool:-[BBSectionInfo isModificationAllowed](self forKey:{"isModificationAllowed"), @"isModificationAllowed"}];
  [v4 encodeBool:-[BBSectionInfo isRestricted](self forKey:{"isRestricted"), @"isRestricted"}];
  [v4 encodeInteger:-[BBSectionInfo sectionCategory](self forKey:{"sectionCategory"), @"sectionCategory"}];
  [v4 encodeBool:-[BBSectionInfo suppressFromSettings](self forKey:{"suppressFromSettings"), @"suppressFromSettings"}];
  [v4 encodeObject:self->_sectionInfoSettings forKey:@"sectionInfoSettings"];
  [v4 encodeObject:self->_managedSectionInfoSettings forKey:@"managedSectionInfoSettings"];
  v7 = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
  [v4 encodeObject:v7 forKey:@"pathToWeeAppPluginBundle"];

  v8 = [(BBSectionInfo *)self appName];
  [v4 encodeObject:v8 forKey:@"appName"];

  v9 = [(BBSectionInfo *)self displayName];
  [v4 encodeObject:v9 forKey:@"displayName"];

  v10 = [(BBSectionInfo *)self icon];
  [v4 encodeObject:v10 forKey:@"icon"];

  v11 = [(BBSectionInfo *)self subsections];
  [v4 encodeObject:v11 forKey:@"subsections"];

  [v4 encodeInteger:-[BBSectionInfo subsectionPriority](self forKey:{"subsectionPriority"), @"subsectionPriority"}];
  [v4 encodeInteger:-[BBSectionInfo suppressedSettings](self forKey:{"suppressedSettings"), @"suppressedSettings"}];
  [v4 encodeBool:-[BBSectionInfo hideWeeApp](self forKey:{"hideWeeApp"), @"hideWeeApp"}];
  v12 = [(BBSectionInfo *)self factorySectionID];
  [v4 encodeObject:v12 forKey:@"factorySectionID"];

  v13 = [(BBSectionInfo *)self dataProviderIDs];
  [v4 encodeObject:v13 forKey:@"dataProviderIDs"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BBSectionInfo version](self, "version")}];
  [v4 encodeObject:v14 forKey:@"version"];

  v15 = [(BBSectionInfo *)self customSettingsBundle];
  [v4 encodeObject:v15 forKey:@"customSettingsBundle"];

  v16 = [(BBSectionInfo *)self customSettingsDetailControllerClass];
  [v4 encodeObject:v16 forKey:@"customSettingsDetailControllerClass"];
}

- (id)effectiveSectionInfoWithDefaultContentPreviewSetting:(int64_t)a3 globalAnnounceSetting:(int64_t)a4 globalScheduledDeliverySetting:(int64_t)a5 globalSummarizationSetting:(int64_t)a6 globalPrioritizationSetting:(int64_t)a7 hasPairedVehiclesForCarPlay:(BOOL)a8 hasDestinationForRemoteNotifications:(BOOL)a9
{
  v70 = a8;
  v13 = self;
  v81 = *MEMORY[0x277D85DE8];
  v14 = [(BBSectionInfo *)self parentSection];
  if (!v14)
  {
    v18 = [(BBSectionInfo *)v13 subsections];
    v19 = [v18 count];

    if (!v19)
    {
      goto LABEL_42;
    }

    v52 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v55 = v13;
    v21 = [(BBSectionInfo *)v13 subsections];
    v22 = [v21 countByEnumeratingWithState:&v75 objects:v80 count:16];
    v23 = a4;
    if (v22)
    {
      v24 = v22;
      v25 = *v76;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v76 != v25)
          {
            objc_enumerationMutation(v21);
          }

          LOBYTE(v51) = a9;
          v27 = [*(*(&v75 + 1) + 8 * i) effectiveSectionInfoWithDefaultContentPreviewSetting:a3 globalAnnounceSetting:a4 globalScheduledDeliverySetting:a5 globalSummarizationSetting:a6 globalPrioritizationSetting:a7 hasPairedVehiclesForCarPlay:v70 hasDestinationForRemoteNotifications:v51];
          [v20 addObject:v27];

          a4 = v23;
        }

        v24 = [v21 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v24);
    }

    v28 = [(BBSectionInfo *)v52 suppressedSettings];
    v29 = v28;
    if ((v28 & 2) != 0)
    {
      v68 = 0;
      if ((v28 & 4) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v68 = [(BBSectionInfo *)v52 lockScreenSetting];
      if ((v29 & 4) != 0)
      {
LABEL_37:
        v57 = 0;
        if ((v29 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_61;
      }
    }

    v57 = [(BBSectionInfo *)v52 showsOnExternalDevices];
    if ((v29 & 1) == 0)
    {
LABEL_38:
      v67 = [(BBSectionInfo *)v52 notificationCenterSetting];
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_62;
    }

LABEL_61:
    v67 = 0;
    if ((v29 & 0x40) == 0)
    {
LABEL_39:
      v66 = [(BBSectionInfo *)v52 contentPreviewSetting];
      if ((v29 & 0x2000) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_63;
    }

LABEL_62:
    v66 = 0;
    if ((v29 & 0x2000) != 0)
    {
LABEL_40:
      v30 = 0;
      if ((v29 & 0x4000) != 0)
      {
LABEL_41:
        v31 = 0;
        goto LABEL_65;
      }

LABEL_64:
      v31 = [(BBSectionInfo *)v52 pushSettings]& 0x12;
LABEL_65:
      v54 = a3;
      if ((v29 & 0x20) != 0)
      {
        v56 = 0;
        v32 = v31 | v30;
        if ((v29 & 0x80) == 0)
        {
LABEL_67:
          v65 = [(BBSectionInfo *)v52 carPlaySetting];
          if ((v29 & 0x10000) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_77;
        }
      }

      else
      {
        v32 = v30 | v31 | [(BBSectionInfo *)v52 pushSettings]& 0x24;
        v56 = [(BBSectionInfo *)v52 alertType];
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_67;
        }
      }

      v65 = 0;
      if ((v29 & 0x10000) == 0)
      {
LABEL_68:
        v64 = [(BBSectionInfo *)v52 remoteNotificationsSetting];
        if ((v29 & 0x100) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_78;
      }

LABEL_77:
      v64 = 0;
      if ((v29 & 0x100) == 0)
      {
LABEL_69:
        v63 = [(BBSectionInfo *)v52 criticalAlertSetting];
        if ((v29 & 0x400) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }

LABEL_78:
      v63 = 0;
      if ((v29 & 0x400) == 0)
      {
LABEL_70:
        v61 = [(BBSectionInfo *)v52 announceSetting];
        if ((v29 & 0x800) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_80;
      }

LABEL_79:
      v61 = 0;
      if ((v29 & 0x800) == 0)
      {
LABEL_71:
        v62 = [(BBSectionInfo *)v52 timeSensitiveSetting];
        if ((v29 & 0x1000) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_81;
      }

LABEL_80:
      v62 = 0;
      if ((v29 & 0x1000) == 0)
      {
LABEL_72:
        v60 = [(BBSectionInfo *)v52 scheduledDeliverySetting];
        if ((v29 & 0x8000) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_82;
      }

LABEL_81:
      v60 = 0;
      if ((v29 & 0x8000) == 0)
      {
LABEL_73:
        v59 = [(BBSectionInfo *)v52 directMessagesSetting];
        if ((v29 & 0x20000) == 0)
        {
LABEL_74:
          v58 = [(BBSectionInfo *)v52 summarizationSetting];
          goto LABEL_84;
        }

LABEL_83:
        v58 = 0;
LABEL_84:
        v53 = a7;
        if ((v29 & 0x40000) != 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = [(BBSectionInfo *)v52 prioritizationSetting];
        }

        [(BBSectionInfo *)v52 setSubsections:0];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v34 = v20;
        v35 = [v34 countByEnumeratingWithState:&v71 objects:v79 count:16];
        if (!v35)
        {
LABEL_141:

          v15 = v52;
          [(BBSectionInfo *)v52 setLockScreenSetting:v68];
          [(BBSectionInfo *)v52 setShowsOnExternalDevices:v57 & 1];
          [(BBSectionInfo *)v52 setNotificationCenterSetting:v67];
          [(BBSectionInfo *)v52 setPushSettings:v32];
          [(BBSectionInfo *)v52 setAlertType:v56];
          [(BBSectionInfo *)v52 setContentPreviewSetting:v66];
          [(BBSectionInfo *)v52 setAnnounceSetting:v61];
          [(BBSectionInfo *)v52 setCarPlaySetting:v65];
          [(BBSectionInfo *)v52 setRemoteNotificationsSetting:v64];
          [(BBSectionInfo *)v52 setCriticalAlertSetting:v63];
          [(BBSectionInfo *)v52 setTimeSensitiveSetting:v62];
          [(BBSectionInfo *)v52 setScheduledDeliverySetting:v60];
          [(BBSectionInfo *)v52 setDirectMessagesSetting:v59];
          [(BBSectionInfo *)v52 setSummarizationSetting:v58];
          [(BBSectionInfo *)v52 setPrioritizationSetting:v33];

          v13 = v55;
          v14 = 0;
          a7 = v53;
          a3 = v54;
          a4 = v23;
          goto LABEL_142;
        }

        v36 = v35;
        v37 = *v72;
LABEL_89:
        v38 = 0;
        while (1)
        {
          if (*v72 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v71 + 1) + 8 * v38);
          [(BBSectionInfo *)v52 _addSubsection:v39];
          if ([v39 sectionType] != 2)
          {
            goto LABEL_139;
          }

          if ((v29 & 0x2000) != 0)
          {
            v32 |= [v39 pushSettings] & 9;
            if ((v29 & 0x4000) == 0)
            {
LABEL_95:
              if ((v29 & 0x20) != 0)
              {
                goto LABEL_99;
              }

              goto LABEL_101;
            }
          }

          else if ((v29 & 0x4000) == 0)
          {
            goto LABEL_95;
          }

          v32 |= [v39 pushSettings] & 0x12;
          if ((v29 & 0x20) != 0)
          {
LABEL_99:
            v32 |= [v39 pushSettings] & 0x24;
            if ([v39 alertType] > v56)
            {
              v56 = [v39 alertType];
            }
          }

LABEL_101:
          if ((v29 & 2) != 0 && v68 != 2)
          {
            v68 = [v39 lockScreenSetting];
          }

          if ((v29 & 4) != 0)
          {
            v57 |= [v39 showsOnExternalDevices];
          }

          if ((v29 & 1) != 0 && v67 != 2)
          {
            v67 = [v39 notificationCenterSetting];
          }

          if ((v29 & 0x40) != 0 && v66 != 1)
          {
            v66 = [v39 contentPreviewSetting];
          }

          if ((v29 & 0x80) != 0 && v65 != 2)
          {
            v65 = [v39 carPlaySetting];
          }

          if ((v29 & 0x10000) != 0 && v64 != 2)
          {
            v64 = [v39 remoteNotificationsSetting];
          }

          if ((v29 & 0x400) != 0 && (v61 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v61 = [v39 announceSetting];
          }

          if ((v29 & 0x100) != 0 && v63 != 2)
          {
            v63 = [v39 criticalAlertSetting];
          }

          if ((v29 & 0x800) != 0 && v62 != 2)
          {
            v62 = [v39 timeSensitiveSetting];
          }

          if ((v29 & 0x1000) != 0 && v60 != 2)
          {
            v60 = [v39 scheduledDeliverySetting];
          }

          if ((v29 & 0x8000) != 0 && v59 != 2)
          {
            v59 = [v39 directMessagesSetting];
          }

          if ((v29 & 0x20000) != 0 && v58 != 2)
          {
            v58 = [v39 summarizationSetting];
          }

          if ((v29 & 0x40000) != 0 && v33 != 2)
          {
            v33 = [v39 prioritizationSetting];
          }

LABEL_139:
          if (v36 == ++v38)
          {
            v36 = [v34 countByEnumeratingWithState:&v71 objects:v79 count:16];
            if (!v36)
            {
              goto LABEL_141;
            }

            goto LABEL_89;
          }
        }
      }

LABEL_82:
      v59 = 0;
      if ((v29 & 0x20000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_83;
    }

LABEL_63:
    v30 = [(BBSectionInfo *)v52 pushSettings]& 9;
    if ((v29 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  if ([(BBSectionInfo *)v13 sectionType]!= 2)
  {
LABEL_42:
    v15 = 0;
    goto LABEL_142;
  }

  v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
  if (([v14 allowsNotifications] & 1) == 0)
  {
    -[BBSectionInfo setAuthorizationStatus:](v15, "setAuthorizationStatus:", [v14 authorizationStatus]);
  }

  if ([v14 suppressedSettings] & 0x2000) == 0 && (objc_msgSend(v14, "pushSettings") & 1) != 0 && (objc_msgSend(v14, "pushSettings") & 8) == 0 && (-[BBSectionInfo pushSettings](v15, "pushSettings"))
  {
    [(BBSectionInfo *)v15 setPushSettings:[(BBSectionInfo *)v15 pushSettings]& 0xFFFFFFFFFFFFFFF7];
  }

  v16 = [(BBSectionInfo *)v15 suppressedSettings];
  v17 = v16;
  if (v16)
  {
    -[BBSectionInfo setNotificationCenterSetting:](v15, "setNotificationCenterSetting:", [v14 notificationCenterSetting]);
    if ((v17 & 2) == 0)
    {
LABEL_12:
      if ((v17 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_45;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_12;
  }

  -[BBSectionInfo setLockScreenSetting:](v15, "setLockScreenSetting:", [v14 lockScreenSetting]);
  if ((v17 & 4) == 0)
  {
LABEL_13:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  -[BBSectionInfo setShowsOnExternalDevices:](v15, "setShowsOnExternalDevices:", [v14 showsOnExternalDevices]);
  if ((v17 & 0x2000) == 0)
  {
LABEL_14:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  -[BBSectionInfo setPushSettings:](v15, "setPushSettings:", [v14 pushSettings] & 9 | -[BBSectionInfo pushSettings](v15, "pushSettings") & 0xFFFFFFFFFFFFFFF6);
  if ((v17 & 0x4000) == 0)
  {
LABEL_15:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  -[BBSectionInfo setPushSettings:](v15, "setPushSettings:", [v14 pushSettings] & 0x12 | -[BBSectionInfo pushSettings](v15, "pushSettings") & 0xFFFFFFFFFFFFFFEDLL);
  if ((v17 & 0x20) == 0)
  {
LABEL_16:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  -[BBSectionInfo setPushSettings:](v15, "setPushSettings:", [v14 pushSettings] & 0x24 | -[BBSectionInfo pushSettings](v15, "pushSettings") & 0xFFFFFFFFFFFFFFDBLL);
  -[BBSectionInfo setAlertType:](v15, "setAlertType:", [v14 alertType]);
  if ((v17 & 0x40) == 0)
  {
LABEL_17:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  -[BBSectionInfo setContentPreviewSetting:](v15, "setContentPreviewSetting:", [v14 contentPreviewSetting]);
  if ((v17 & 0x400) == 0)
  {
LABEL_18:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  -[BBSectionInfo setAnnounceSetting:](v15, "setAnnounceSetting:", [v14 announceSetting]);
  if ((v17 & 0x80) == 0)
  {
LABEL_19:
    if ((v17 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  -[BBSectionInfo setCarPlaySetting:](v15, "setCarPlaySetting:", [v14 carPlaySetting]);
  if ((v17 & 0x10000) == 0)
  {
LABEL_20:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  -[BBSectionInfo setRemoteNotificationsSetting:](v15, "setRemoteNotificationsSetting:", [v14 remoteNotificationsSetting]);
  if ((v17 & 0x100) == 0)
  {
LABEL_21:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  -[BBSectionInfo setCriticalAlertSetting:](v15, "setCriticalAlertSetting:", [v14 criticalAlertSetting]);
  if ((v17 & 0x800) == 0)
  {
LABEL_22:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  -[BBSectionInfo setTimeSensitiveSetting:](v15, "setTimeSensitiveSetting:", [v14 timeSensitiveSetting]);
  if ((v17 & 0x1000) == 0)
  {
LABEL_23:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  -[BBSectionInfo setScheduledDeliverySetting:](v15, "setScheduledDeliverySetting:", [v14 scheduledDeliverySetting]);
  if ((v17 & 0x8000) == 0)
  {
LABEL_24:
    if ((v17 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

LABEL_57:
    -[BBSectionInfo setSummarizationSetting:](v15, "setSummarizationSetting:", [v14 summarizationSetting]);
    if ((v17 & 0x40000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_58;
  }

LABEL_56:
  -[BBSectionInfo setDirectMessagesSetting:](v15, "setDirectMessagesSetting:", [v14 directMessagesSetting]);
  if ((v17 & 0x20000) != 0)
  {
    goto LABEL_57;
  }

LABEL_25:
  if ((v17 & 0x40000) != 0)
  {
LABEL_58:
    -[BBSectionInfo setPrioritizationSetting:](v15, "setPrioritizationSetting:", [v14 prioritizationSetting]);
  }

LABEL_142:
  if ([(BBSectionInfo *)v13 isRestricted])
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    [(BBSectionInfo *)v15 setAuthorizationStatus:1];
  }

  if (![(BBSectionInfo *)v13 allowsNotifications])
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

LABEL_152:
    if (![v14 allowsNotifications] || (objc_msgSend(v14, "pushSettings") & 1) == 0 || (objc_msgSend(v14, "suppressedSettings") & 0x2000) != 0 || (-[BBSectionInfo suppressedSettings](v13, "suppressedSettings") & 0x2000) != 0)
    {
      v40 = -57;
    }

    else
    {
      v40 = -49;
    }

    [(BBSectionInfo *)v15 setPushSettings:[(BBSectionInfo *)v13 pushSettings]& v40];
    [(BBSectionInfo *)v15 setAlertType:0];
    [(BBSectionInfo *)v15 setNotificationCenterSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 notificationCenterSetting]]];
    [(BBSectionInfo *)v15 setLockScreenSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 lockScreenSetting]]];
    [(BBSectionInfo *)v15 setShowsOnExternalDevices:0];
    [(BBSectionInfo *)v15 setShowsCustomSettingsLink:0];
    [(BBSectionInfo *)v15 setContentPreviewSetting:0];
    [(BBSectionInfo *)v15 setAnnounceSetting:1];
    [(BBSectionInfo *)v15 setCarPlaySetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 carPlaySetting]]];
    [(BBSectionInfo *)v15 setRemoteNotificationsSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 remoteNotificationsSetting]]];
    [(BBSectionInfo *)v15 setDirectMessagesSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 directMessagesSetting]]];
    [(BBSectionInfo *)v15 setScheduledDeliverySetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 scheduledDeliverySetting]]];
    [(BBSectionInfo *)v15 setTimeSensitiveSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 timeSensitiveSetting]]];
    [(BBSectionInfo *)v15 setSummarizationSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 summarizationSetting]]];
    [(BBSectionInfo *)v15 setPrioritizationSetting:[(BBSectionInfo *)v13 disabledSettingForSetting:[(BBSectionInfo *)v13 prioritizationSetting]]];
LABEL_159:
    if (a4 != -1)
    {
      if (a4 >= 2)
      {
        goto LABEL_172;
      }

      if (v15)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }

    if (v15)
    {
LABEL_170:
      v41 = v15;
      v42 = 0;
      goto LABEL_171;
    }

LABEL_169:
    v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    goto LABEL_170;
  }

  if (v15)
  {
    if ([(BBSectionInfo *)v15 allowsNotifications])
    {
      goto LABEL_159;
    }

    goto LABEL_152;
  }

  if (a4 == -1)
  {
    goto LABEL_169;
  }

  if (a4 >= 2)
  {
    if ((a5 + 1) < 3)
    {
      goto LABEL_174;
    }

LABEL_177:
    v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    goto LABEL_178;
  }

LABEL_167:
  v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
LABEL_168:
  v41 = v15;
  v42 = 1;
LABEL_171:
  [(BBSectionInfo *)v41 setAnnounceSetting:v42];
LABEL_172:
  if ((a5 + 1) < 3)
  {
    if (v15)
    {
LABEL_175:
      [(BBSectionInfo *)v15 setScheduledDeliverySetting:1];
      goto LABEL_178;
    }

LABEL_174:
    v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    goto LABEL_175;
  }

  if (!v15)
  {
    goto LABEL_177;
  }

LABEL_178:
  if (!v70)
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    [(BBSectionInfo *)v15 setCarPlaySetting:0];
  }

  if (!a9)
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    [(BBSectionInfo *)v15 setRemoteNotificationsSetting:0];
  }

  if (a6 != 2)
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    [(BBSectionInfo *)v15 setSummarizationSetting:a6 != -1];
  }

  if (a7 != 2)
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    [(BBSectionInfo *)v15 setPrioritizationSetting:a7 != -1];
  }

  if (v15)
  {
    v43 = v15;
  }

  else
  {
    v43 = v13;
  }

  v44 = v43;
  if (![(BBSectionInfo *)v44 contentPreviewSetting])
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    [(BBSectionInfo *)v15 setContentPreviewSetting:a3];
  }

  if ([(BBSectionInfo *)v44 authorizationStatus]== 4)
  {
    if (!v15)
    {
      v15 = [(BBSectionInfo *)v13 copyFromManagedSettings];
    }

    v45 = [(BBSectionInfo *)v13 sectionInfoSettings];
    if ([v45 isAuthorizedTemporarily])
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

    [(BBSectionInfo *)v15 setAuthorizationStatus:v46];
  }

  if (v15)
  {
    v47 = v15;
  }

  else
  {
    v47 = v13;
  }

  v48 = v47;

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)effectiveSectionInfoWithFactoryInfo:(id)a3 defaultContentPreviewSetting:(int64_t)a4 globalAnnounceSetting:(int64_t)a5 globalScheduledDeliverySetting:(int64_t)a6 globalSummarizationSetting:(int64_t)a7 globalPrioritizationSetting:(int64_t)a8 hasPairedVehiclesForCarPlay:(BOOL)a9 hasDestinationForRemoteNotifications:(BOOL)a10
{
  v16 = a3;
  if (!v16)
  {
    goto LABEL_9;
  }

  v30 = a4;
  v17 = [(BBSectionInfo *)self factorySectionID];
  v18 = [v16 sectionID];
  if (([v17 isEqualToString:v18] & 1) == 0)
  {

    goto LABEL_9;
  }

  [v16 dataProviderIDs];
  v29 = a6;
  v20 = v19 = a8;
  [(BBSectionInfo *)self sectionID];
  v22 = v21 = a7;
  v23 = [v20 containsObject:v22];

  if ((v23 & 1) == 0)
  {
LABEL_9:
    v26 = self;
    goto LABEL_10;
  }

  v24 = [(BBSectionInfo *)self copy];
  if ([v24 suppressFromSettings] && (objc_msgSend(v16, "suppressFromSettings") & 1) == 0)
  {
    [v24 setNotificationCenterSetting:{objc_msgSend(v16, "notificationCenterSetting")}];
    [v24 setLockScreenSetting:{objc_msgSend(v16, "lockScreenSetting")}];
    if ([v24 showsOnExternalDevices])
    {
      v25 = [v16 showsOnExternalDevices];
    }

    else
    {
      v25 = 0;
    }

    [v24 setShowsOnExternalDevices:v25];
    [v24 setContentPreviewSetting:{objc_msgSend(v16, "contentPreviewSetting")}];
    [v24 setPushSettings:{objc_msgSend(v16, "pushSettings")}];
    [v24 setAlertType:{objc_msgSend(v16, "alertType")}];
    [v24 setAuthorizationStatus:{objc_msgSend(v16, "authorizationStatus")}];
    [v24 setCarPlaySetting:{objc_msgSend(v16, "carPlaySetting")}];
    [v24 setRemoteNotificationsSetting:{objc_msgSend(v16, "remoteNotificationsSetting")}];
    [v24 setAnnounceSetting:{objc_msgSend(v16, "announceSetting")}];
    [v24 setCriticalAlertSetting:{objc_msgSend(v16, "criticalAlertSetting")}];
    [v24 setTimeSensitiveSetting:{objc_msgSend(v16, "timeSensitiveSetting")}];
    [v24 setScheduledDeliverySetting:{objc_msgSend(v16, "scheduledDeliverySetting")}];
    [v24 setDirectMessagesSetting:{objc_msgSend(v16, "directMessagesSetting")}];
    [v24 setSummarizationSetting:{objc_msgSend(v16, "summarizationSetting")}];
    [v24 setPrioritizationSetting:{objc_msgSend(v16, "prioritizationSetting")}];
  }

  LOBYTE(v28) = a10;
  v26 = [v24 effectiveSectionInfoWithDefaultContentPreviewSetting:v30 globalAnnounceSetting:a5 globalScheduledDeliverySetting:v29 globalSummarizationSetting:v21 globalPrioritizationSetting:v19 hasPairedVehiclesForCarPlay:a9 hasDestinationForRemoteNotifications:v28];

LABEL_10:

  return v26;
}

+ (id)defaultSectionInfoForSection:(id)a3
{
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 defaultSectionInfo], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [BBSectionInfo defaultSectionInfoForType:0];
  }

  v7 = [v5 sectionIdentifier];
  [v6 setSectionID:v7];
  v14 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:1 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [v8 localizedName];
    [v6 setAppName:v10];

    v11 = [v8 applicationState];
    [v6 setIsRestricted:{objc_msgSend(v11, "isRestricted")}];

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_ERROR))
    {
      [(BBSectionInfo(DataProviders) *)v7 defaultSectionInfoForSection:v12, v9];
      if (v6)
      {
        goto LABEL_9;
      }
    }

    else if (v6)
    {
      goto LABEL_9;
    }
  }

  [(BBSectionInfo(DataProviders) *)a2 defaultSectionInfoForSection:a1];
LABEL_9:

  return v6;
}

- (void)updateWithDefaultSectionInfo:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BBSectionInfo *)self alertType];
  v6 = [(BBSectionInfo *)self pushSettings];
  v7 = [v4 pushSettings];
  v8 = v7;
  if ((v6 & 4) == 0 && (v7 & 4) != 0)
  {
    v5 = [v4 alertType];
    v6 |= 0x24uLL;
  }

  if (v6 & 1 | ((v8 & 1) == 0))
  {
    v9 = v6;
  }

  else
  {
    v9 = v6 | 9;
  }

  v10 = (v9 >> 1) & 1;
  if ((v8 & 2) == 0)
  {
    LODWORD(v10) = 1;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 | 0x12;
  }

  v12 = [(BBSectionInfo *)self suppressedSettings];
  v13 = [v4 suppressedSettings];
  v14 = v13;
  if ((v12 & 0x2000) == 0 || (v13 & 0x2000) != 0)
  {
LABEL_26:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v8)
  {
    v11 |= 9uLL;
    goto LABEL_26;
  }

  v15 = [(BBSectionInfo *)self subsections];
  v16 = [v15 count];

  if (!v16)
  {
    goto LABEL_26;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = [(BBSectionInfo *)self subsections];
  v18 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v64;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (([*(*(&v63 + 1) + 8 * i) pushSettings] & 8) != 0)
        {
          v11 |= 9uLL;
          goto LABEL_87;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_87:

  if ((v12 & 0x20) != 0)
  {
LABEL_27:
    if ((v14 & 0x20) == 0)
    {
      v5 = [v4 alertType];
      v11 |= 0x24uLL;
    }
  }

LABEL_29:
  [(BBSectionInfo *)self setAlertType:v5];
  [(BBSectionInfo *)self setPushSettings:v11];
  v22 = [(BBSectionInfo *)self lockScreenSetting];
  v23 = [v4 lockScreenSetting];
  if (v22)
  {
    v25 = ((v14 & 2) == 0) & (v12 >> 1);
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
    v24 = v23;
    if (v23)
    {
      [(BBSectionInfo *)self setLockScreenSetting:v23];
    }
  }

  v26 = [(BBSectionInfo *)self notificationCenterSetting];
  v27 = [v4 notificationCenterSetting];
  if (v26)
  {
    v29 = v12 & ((v14 & 1) == 0);
  }

  else
  {
    v29 = 1;
  }

  if (v29 == 1)
  {
    v28 = v27;
    if (v27)
    {
      [(BBSectionInfo *)self setNotificationCenterSetting:v27];
    }
  }

  v30 = [(BBSectionInfo *)self carPlaySetting];
  v31 = [v4 carPlaySetting];
  if (v30)
  {
    v33 = ((v14 & 0x80) == 0) & (v12 >> 7);
  }

  else
  {
    v33 = 1;
  }

  if (v33 == 1)
  {
    v32 = v31;
    if (v31)
    {
      [(BBSectionInfo *)self setCarPlaySetting:v31];
    }
  }

  v34 = [(BBSectionInfo *)self remoteNotificationsSetting];
  v35 = [v4 remoteNotificationsSetting];
  if (v34)
  {
    v37 = ((*&v14 & 0x10000) == 0) & HIWORD(v12);
  }

  else
  {
    v37 = 1;
  }

  if (v37 == 1)
  {
    v36 = v35;
    if (v35)
    {
      [(BBSectionInfo *)self setRemoteNotificationsSetting:v35];
    }
  }

  v38 = [(BBSectionInfo *)self announceSetting];
  v39 = [v4 announceSetting];
  if (!v38)
  {
    v40 = v39;
    if (v39)
    {
      [(BBSectionInfo *)self setAnnounceSetting:v39];
    }
  }

  v41 = [(BBSectionInfo *)self criticalAlertSetting];
  v42 = [v4 criticalAlertSetting];
  if (!v41)
  {
    v43 = v42;
    if (v42)
    {
      [(BBSectionInfo *)self setCriticalAlertSetting:v42];
    }
  }

  v44 = [(BBSectionInfo *)self timeSensitiveSetting];
  v45 = [v4 timeSensitiveSetting];
  if (!v44)
  {
    v46 = v45;
    if (v45)
    {
      [(BBSectionInfo *)self setTimeSensitiveSetting:v45];
    }
  }

  v47 = [(BBSectionInfo *)self directMessagesSetting];
  v48 = [v4 directMessagesSetting];
  if (!v47)
  {
    v49 = v48;
    if (v48)
    {
      [(BBSectionInfo *)self setDirectMessagesSetting:v48];
    }
  }

  v50 = [(BBSectionInfo *)self summarizationSetting];
  v51 = [v4 summarizationSetting];
  if (!v50)
  {
    v52 = v51;
    if (v51)
    {
      [(BBSectionInfo *)self setSummarizationSetting:v51];
    }
  }

  v53 = [(BBSectionInfo *)self prioritizationSetting];
  v54 = [v4 prioritizationSetting];
  if (!v53)
  {
    v55 = v54;
    if (v54)
    {
      [(BBSectionInfo *)self setPrioritizationSetting:v54];
    }
  }

  if (![(BBSectionInfo *)self showsCustomSettingsLink])
  {
    -[BBSectionInfo setShowsCustomSettingsLink:](self, "setShowsCustomSettingsLink:", [v4 showsCustomSettingsLink]);
  }

  v56 = [(BBSectionInfo *)self parentSection];
  if (!v56 || (v12 & 0x23) != 0)
  {
  }

  else
  {

    if ((v14 & 0x23) != 0)
    {
      if ([(BBSectionInfo *)self allowsNotifications])
      {
        if ([(BBSectionInfo *)self lockScreenSetting]!= 2 && [(BBSectionInfo *)self notificationCenterSetting]!= 2 && ![(BBSectionInfo *)self alertType])
        {
          [(BBSectionInfo *)self setAllowsNotifications:0];
        }
      }

      else if (([(BBSectionInfo *)self suppressedSettings]& 0x2000) == 0 && ([(BBSectionInfo *)self pushSettings]& 1) != 0)
      {
        [(BBSectionInfo *)self setPushSettings:[(BBSectionInfo *)self pushSettings]& 0xFFFFFFFFFFFFFFF7];
      }
    }
  }

  -[BBSectionInfo setSuppressFromSettings:](self, "setSuppressFromSettings:", [v4 suppressFromSettings]);
  -[BBSectionInfo setSuppressedSettings:](self, "setSuppressedSettings:", [v4 suppressedSettings]);
  -[BBSectionInfo setSectionType:](self, "setSectionType:", [v4 sectionType]);
  -[BBSectionInfo setIsAppClip:](self, "setIsAppClip:", [v4 isAppClip]);
  -[BBSectionInfo setSectionCategory:](self, "setSectionCategory:", [v4 sectionCategory]);
  -[BBSectionInfo setSubsectionPriority:](self, "setSubsectionPriority:", [v4 subsectionPriority]);
  -[BBSectionInfo setVersion:](self, "setVersion:", [v4 version]);
  v57 = [v4 appName];
  [(BBSectionInfo *)self setAppName:v57];

  v58 = [v4 displayName];
  [(BBSectionInfo *)self setDisplayName:v58];

  v59 = [v4 icon];
  [(BBSectionInfo *)self setIcon:v59];

  -[BBSectionInfo setIsRestricted:](self, "setIsRestricted:", [v4 isRestricted]);
  v60 = [v4 customSettingsBundle];
  [(BBSectionInfo *)self setCustomSettingsBundle:v60];

  v61 = [v4 customSettingsDetailControllerClass];
  [(BBSectionInfo *)self setCustomSettingsDetailControllerClass:v61];

  v62 = *MEMORY[0x277D85DE8];
}

- (void)queryAndUseManagedSettings
{
  v3 = [(BBSectionInfo *)self sectionID];
  [(BBSectionInfo *)self queryAndUseManagedSettingsForSectionID:v3];
}

- (void)queryAndUseManagedSettingsForSectionID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [BBSectionInfoSettings sectionInfoSettingsForManagedBundleID:v4];
  if (v5)
  {
    v6 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Managed settings found for section %{public}@", &v11, 0xCu);
    }
  }

  [(BBSectionInfo *)self setManagedSectionInfoSettings:v5];
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [v7 isNotificationsModificationAllowedForBundleID:v4];

  if ((v8 & 1) == 0)
  {
    v9 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "Modification not allowed for section %{public}@", &v11, 0xCu);
    }
  }

  [(BBSectionInfo *)self setIsModificationAllowed:v8 ^ 1u];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setManagedSectionInfoSettings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  self->_managedSectionInfoSettings = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_subsections;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setManagedSectionInfoSettings:{v4, v13}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSDate)authorizationExpirationDate
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 authorizationExpirationDate];

  return v3;
}

- (void)setAuthorizationExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self writableSettings];
  [v5 setAuthorizationExpirationDate:v4];
}

- (void)setAuthorizationStatus:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setAuthorizationStatus:a3];
}

- (NSDate)lastUserGrantedAuthorizationDate
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 lastUserGrantedAuthorizationDate];

  return v3;
}

- (void)setLastUserGrantedAuthorizationDate:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self writableSettings];
  [v5 setLastUserGrantedAuthorizationDate:v4];
}

- (void)setMuteAssertion:(id)a3
{
  v4 = a3;
  v5 = [(BBSectionInfo *)self sectionInfoSettings];
  [v5 setMuteAssertion:v4];
}

- (void)setNotificationCenterSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setNotificationCenterSetting:a3];
}

- (BOOL)showsInNotificationCenter
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 showsInNotificationCenter];

  return v3;
}

- (void)setLockScreenSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setLockScreenSetting:a3];
}

- (BOOL)showsInLockScreen
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 showsInLockScreen];

  return v3;
}

- (void)setAlertType:(unint64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setAlertType:a3];
}

- (void)setPushSettings:(unint64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setPushSettings:a3];
}

- (void)setCarPlaySetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setCarPlaySetting:a3];
}

- (void)setRemoteNotificationsSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setRemoteNotificationsSetting:a3];
}

- (void)setSpokenNotificationSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setSpokenNotificationSetting:a3];
}

- (void)setCriticalAlertSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setCriticalAlertSetting:a3];
}

- (void)setTimeSensitiveSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setTimeSensitiveSetting:a3];
}

- (BOOL)hasUserConfiguredTimeSensitiveSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 hasUserConfiguredTimeSensitiveSetting];

  return v3;
}

- (void)setBulletinGroupingSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setBulletinGroupingSetting:a3];
}

- (void)setAnnounceSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setAnnounceSetting:a3];
}

- (void)setScheduledDeliverySetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setScheduledDeliverySetting:a3];
}

- (void)setDirectMessagesSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setDirectMessagesSetting:a3];
}

- (BOOL)hasUserConfiguredDirectMessagesSetting
{
  v2 = [(BBSectionInfo *)self readableSettings];
  v3 = [v2 hasUserConfiguredDirectMessagesSetting];

  return v3;
}

- (void)setContentPreviewSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setContentPreviewSetting:a3];
}

- (void)setSummarizationSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setSummarizationSetting:a3];
}

- (void)setPrioritizationSetting:(int64_t)a3
{
  v4 = [(BBSectionInfo *)self writableSettings];
  [v4 setPrioritizationSetting:a3];
}

- (BOOL)showsMessagePreview
{
  v2 = [(BBSectionInfo *)self sectionInfoSettings];
  v3 = [v2 showsMessagePreview];

  return v3;
}

- (void)_addSubsection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBSectionInfo.m" lineNumber:101 description:@"a subsection cannot have a subsection"];
}

@end