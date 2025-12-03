@interface BBSectionInfo
+ (id)defaultSectionInfoForSection:(id)section;
+ (id)defaultSectionInfoForType:(int64_t)type;
- (BBMuteAssertion)muteAssertion;
- (BBSectionInfo)initWithCoder:(id)coder;
- (BBSectionInfo)initWithDefaultsForSectionType:(int64_t)type;
- (BBSectionInfo)parentSection;
- (BBSectionInfoSettings)readableSettings;
- (BBSectionInfoSettings)writableSettings;
- (BOOL)_isDeliveredQuietly;
- (BOOL)allowsNotifications;
- (BOOL)hasEnabledSettings;
- (BOOL)hasUserConfiguredDirectMessagesSetting;
- (BOOL)hasUserConfiguredTimeSensitiveSetting;
- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier;
- (BOOL)isDeliveredQuietly;
- (BOOL)isEqual:(id)equal;
- (BOOL)showsCustomSettingsLink;
- (BOOL)showsInLockScreen;
- (BOOL)showsInNotificationCenter;
- (BOOL)showsMessagePreview;
- (BOOL)showsOnExternalDevices;
- (NSData)iconData;
- (NSDate)authorizationExpirationDate;
- (NSDate)lastUserGrantedAuthorizationDate;
- (NSDictionary)stateCapture;
- (id)_subsectionForID:(id)d;
- (id)_suppressedSettingsList:(unint64_t)list;
- (id)copyFromManagedSettings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectiveSectionInfoWithDefaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting globalSummarizationSetting:(int64_t)summarizationSetting globalPrioritizationSetting:(int64_t)prioritizationSetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)notifications;
- (id)effectiveSectionInfoWithFactoryInfo:(id)info defaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting globalSummarizationSetting:(int64_t)summarizationSetting globalPrioritizationSetting:(int64_t)prioritizationSetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)self0;
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
- (void)_addSubsection:(id)subsection;
- (void)_associateDataProviderSectionInfo:(id)info;
- (void)_configureWithDefaultsForSectionType:(int64_t)type;
- (void)_deliverQuietly:(BOOL)quietly;
- (void)_dissociateDataProviderSectionInfo:(id)info;
- (void)_replaceSubsection:(id)subsection;
- (void)encodeWithCoder:(id)coder;
- (void)makeAuthorizationPermanent;
- (void)muteSectionUntilDate:(id)date;
- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date;
- (void)queryAndUseManagedSettings;
- (void)queryAndUseManagedSettingsForSectionID:(id)d;
- (void)setAlertType:(unint64_t)type;
- (void)setAnnounceSetting:(int64_t)setting;
- (void)setAuthorizationExpirationDate:(id)date;
- (void)setAuthorizationStatus:(int64_t)status;
- (void)setBulletinGroupingSetting:(int64_t)setting;
- (void)setCarPlaySetting:(int64_t)setting;
- (void)setContentPreviewSetting:(int64_t)setting;
- (void)setCriticalAlertSetting:(int64_t)setting;
- (void)setDirectMessagesSetting:(int64_t)setting;
- (void)setLastUserGrantedAuthorizationDate:(id)date;
- (void)setLockScreenSetting:(int64_t)setting;
- (void)setManagedSectionInfoSettings:(id)settings;
- (void)setMuteAssertion:(id)assertion;
- (void)setNotificationCenterSetting:(int64_t)setting;
- (void)setParentSection:(id)section;
- (void)setPrioritizationSetting:(int64_t)setting;
- (void)setPushSettings:(unint64_t)settings;
- (void)setRemoteNotificationsSetting:(int64_t)setting;
- (void)setScheduledDeliverySetting:(int64_t)setting;
- (void)setSpokenNotificationSetting:(int64_t)setting;
- (void)setSummarizationSetting:(int64_t)setting;
- (void)setTimeSensitiveSetting:(int64_t)setting;
- (void)unmuteSection;
- (void)unmuteThreadIdentifier:(id)identifier;
- (void)updateWithDefaultSectionInfo:(id)info;
@end

@implementation BBSectionInfo

- (id)copyFromManagedSettings
{
  v2 = [(BBSectionInfo *)self copy];
  if ([v2 usesManagedSettings])
  {
    managedSectionInfoSettings = [v2 managedSectionInfoSettings];
    [v2 setSectionInfoSettings:managedSectionInfoSettings];

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
  readableSettings = [(BBSectionInfo *)self readableSettings];
  allowsNotifications = [readableSettings allowsNotifications];

  return allowsNotifications;
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
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  showsOnExternalDevices = [sectionInfoSettings showsOnExternalDevices];

  return showsOnExternalDevices;
}

- (unint64_t)alertType
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  alertType = [readableSettings alertType];

  return alertType;
}

- (unint64_t)pushSettings
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  pushSettings = [readableSettings pushSettings];

  return pushSettings;
}

- (int64_t)authorizationStatus
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  authorizationStatus = [readableSettings authorizationStatus];

  return authorizationStatus;
}

- (int64_t)contentPreviewSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  contentPreviewSetting = [readableSettings contentPreviewSetting];

  return contentPreviewSetting;
}

- (int64_t)bulletinGroupingSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  bulletinGroupingSetting = [readableSettings bulletinGroupingSetting];

  return bulletinGroupingSetting;
}

- (int64_t)notificationCenterSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  notificationCenterSetting = [readableSettings notificationCenterSetting];

  return notificationCenterSetting;
}

- (int64_t)lockScreenSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  lockScreenSetting = [readableSettings lockScreenSetting];

  return lockScreenSetting;
}

- (int64_t)carPlaySetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  carPlaySetting = [readableSettings carPlaySetting];

  return carPlaySetting;
}

- (int64_t)remoteNotificationsSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  remoteNotificationsSetting = [readableSettings remoteNotificationsSetting];

  return remoteNotificationsSetting;
}

- (int64_t)announceSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  announceSetting = [readableSettings announceSetting];

  return announceSetting;
}

- (int64_t)criticalAlertSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  criticalAlertSetting = [readableSettings criticalAlertSetting];

  return criticalAlertSetting;
}

- (int64_t)timeSensitiveSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  timeSensitiveSetting = [readableSettings timeSensitiveSetting];

  return timeSensitiveSetting;
}

- (int64_t)scheduledDeliverySetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  scheduledDeliverySetting = [readableSettings scheduledDeliverySetting];

  return scheduledDeliverySetting;
}

- (int64_t)directMessagesSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  directMessagesSetting = [readableSettings directMessagesSetting];

  return directMessagesSetting;
}

- (int64_t)summarizationSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  summarizationSetting = [readableSettings summarizationSetting];

  return summarizationSetting;
}

- (int64_t)prioritizationSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  prioritizationSetting = [readableSettings prioritizationSetting];

  return prioritizationSetting;
}

- (BOOL)showsCustomSettingsLink
{
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  showsCustomSettingsLink = [sectionInfoSettings showsCustomSettingsLink];

  return showsCustomSettingsLink;
}

- (BOOL)hasEnabledSettings
{
  if ([(BBSectionInfo *)self allowsNotifications])
  {
    pushSettings = [(BBSectionInfo *)self pushSettings];
    if ((pushSettings & 0x18) != 0 || (pushSettings & 0x20) != 0 && [(BBSectionInfo *)self alertType]|| [(BBSectionInfo *)self lockScreenSetting]== 2 || [(BBSectionInfo *)self notificationCenterSetting]== 2 || [(BBSectionInfo *)self carPlaySetting]== 2 || [(BBSectionInfo *)self remoteNotificationsSetting]== 2 || [(BBSectionInfo *)self criticalAlertSetting]== 2)
    {
      return 1;
    }

    scheduledDeliverySetting = [(BBSectionInfo *)self scheduledDeliverySetting];
  }

  else
  {
    scheduledDeliverySetting = [(BBSectionInfo *)self criticalAlertSetting];
  }

  return scheduledDeliverySetting == 2;
}

- (int64_t)spokenNotificationSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  spokenNotificationSetting = [readableSettings spokenNotificationSetting];

  return spokenNotificationSetting;
}

- (BBMuteAssertion)muteAssertion
{
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  muteAssertion = [sectionInfoSettings muteAssertion];

  return muteAssertion;
}

+ (id)defaultSectionInfoForType:(int64_t)type
{
  v3 = [[BBSectionInfo alloc] initWithDefaultsForSectionType:type];

  return v3;
}

- (BBSectionInfo)initWithDefaultsForSectionType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = BBSectionInfo;
  v4 = [(BBSectionInfo *)&v8 init];
  if (v4)
  {
    v5 = [[BBSectionInfoSettings alloc] initWithDefaultsForSectionType:type];
    sectionInfoSettings = v4->_sectionInfoSettings;
    v4->_sectionInfoSettings = v5;

    [(BBSectionInfo *)v4 _configureWithDefaultsForSectionType:type];
  }

  return v4;
}

- (void)_configureWithDefaultsForSectionType:(int64_t)type
{
  [(BBSectionInfo *)self setSectionType:?];
  [(BBSectionInfo *)self setSuppressedSettings:0];
  if ((type | 2) == 2)
  {
    [(BBSectionInfo *)self setBulletinCount:5];
    if (type == 2)
    {

      [(BBSectionInfo *)self setSuppressedSettings:8];
    }
  }
}

- (void)_addSubsection:(id)subsection
{
  subsectionCopy = subsection;
  parentSection = [(BBSectionInfo *)self parentSection];
  if (parentSection)
  {
  }

  else if ([(BBSectionInfo *)self sectionType]!= 2)
  {
    goto LABEL_3;
  }

  [(BBSectionInfo *)a2 _addSubsection:?];
LABEL_3:
  v6 = subsectionCopy;
  if (subsectionCopy)
  {
    [subsectionCopy setParentSection:self];
    v7 = MEMORY[0x277CBEB18];
    subsections = [(BBSectionInfo *)self subsections];
    v9 = [v7 arrayWithArray:subsections];

    [v9 addObject:subsectionCopy];
    [(BBSectionInfo *)self setSubsections:v9];

    v6 = subsectionCopy;
  }
}

- (void)_replaceSubsection:(id)subsection
{
  v24 = *MEMORY[0x277D85DE8];
  subsectionCopy = subsection;
  selfCopy = self;
  subsections = [(BBSectionInfo *)self subsections];
  subsectionID = [subsectionCopy subsectionID];
  if ([subsections count] && subsectionID)
  {
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = subsections;
    v8 = subsections;
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
          subsectionID2 = [v13 subsectionID];
          v15 = [subsectionID2 isEqualToString:subsectionID];

          if (v15)
          {
            [v13 setParentSection:0];
            [subsectionCopy setParentSection:selfCopy];
            v13 = subsectionCopy;
          }

          [array addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(BBSectionInfo *)selfCopy setSubsections:array];
    subsections = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_subsectionForID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subsections = [(BBSectionInfo *)self subsections];
  v6 = [subsections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(subsections);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        subsectionID = [v9 subsectionID];
        v11 = [subsectionID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subsections countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_associateDataProviderSectionInfo:(id)info
{
  infoCopy = info;
  sectionID = [infoCopy sectionID];
  dataProviderIDs = [(BBSectionInfo *)self dataProviderIDs];
  if (sectionID && ([dataProviderIDs containsObject:sectionID] & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:dataProviderIDs];
    [v6 addObject:sectionID];
    [(BBSectionInfo *)self setDataProviderIDs:v6];
  }

  sectionID2 = [(BBSectionInfo *)self sectionID];
  [infoCopy setFactorySectionID:sectionID2];
}

- (void)_dissociateDataProviderSectionInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v12 = infoCopy;
    factorySectionID = [infoCopy factorySectionID];
    sectionID = [(BBSectionInfo *)self sectionID];
    v7 = [factorySectionID isEqualToString:sectionID];

    infoCopy = v12;
    if (v7)
    {
      v8 = MEMORY[0x277CBEB18];
      dataProviderIDs = [(BBSectionInfo *)self dataProviderIDs];
      v10 = [v8 arrayWithArray:dataProviderIDs];

      sectionID2 = [v12 sectionID];
      [v10 removeObject:sectionID2];

      [(BBSectionInfo *)self setDataProviderIDs:v10];
      [v12 setFactorySectionID:0];

      infoCopy = v12;
    }
  }
}

- (void)setParentSection:(id)section
{
  sectionCopy = section;
  v4 = objc_storeWeak(&self->_parentSection, sectionCopy);
  managedSectionInfoSettings = [sectionCopy managedSectionInfoSettings];

  [(BBSectionInfo *)self setManagedSectionInfoSettings:managedSectionInfoSettings];
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

  pushSettings = [(BBSectionInfo *)self pushSettings];
  if ((pushSettings & 0x18) != 0 || (pushSettings & 0x20) != 0 && [(BBSectionInfo *)self alertType])
  {
    return 0;
  }

  if ([(BBSectionInfo *)self lockScreenSetting]== 2)
  {
    return 0;
  }

  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v7 = [mEMORY[0x277D71F78] bb_isToneEnabledForSectionInfo:self];

  if (v7)
  {
    return 0;
  }

  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  v9 = [mEMORY[0x277D71F88] bb_isVibrationEnabledForSectionInfo:self];

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
  subsections = [(BBSectionInfo *)self subsections];
  v4 = [subsections count];

  if (v4)
  {
    allowsNotifications = [(BBSectionInfo *)self allowsNotifications];
    if (allowsNotifications)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      subsections2 = [(BBSectionInfo *)self subsections];
      v7 = [subsections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_18:

LABEL_19:
        LOBYTE(allowsNotifications) = 0;
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
            objc_enumerationMutation(subsections2);
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

        v8 = [subsections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    allowsNotifications = [(BBSectionInfo *)self _isDeliveredQuietly];
    if (allowsNotifications)
    {
LABEL_17:
      LOBYTE(allowsNotifications) = 1;
    }
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return allowsNotifications;
}

- (void)_deliverQuietly:(BOOL)quietly
{
  quietlyCopy = quietly;
  pushSettings = [(BBSectionInfo *)self pushSettings];
  if (quietlyCopy)
  {
    [(BBSectionInfo *)self setPushSettings:pushSettings & 0xFFFFFFFFFFFFFFC7];
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
    [(BBSectionInfo *)self setPushSettings:(8 * (pushSettings & 7)) | pushSettings];
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

- (void)muteSectionUntilDate:(id)date
{
  dateCopy = date;
  if (![(BBSectionInfo *)self _isDeliveredQuietly])
  {
    sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
    [sectionInfoSettings muteSectionUntilDate:dateCopy];
  }
}

- (void)unmuteSection
{
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings unmuteSection];
}

- (void)muteThreadIdentifier:(id)identifier untilDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if (![(BBSectionInfo *)self _isDeliveredQuietly])
  {
    sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
    [sectionInfoSettings muteThreadIdentifier:identifierCopy untilDate:dateCopy];
  }
}

- (void)unmuteThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings unmuteThreadIdentifier:identifierCopy];
}

- (BOOL)isBulletinMutedForThreadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  v6 = [sectionInfoSettings isBulletinMutedForThreadIdentifier:identifierCopy];

  return v6;
}

- (id)_suppressedSettingsList:(unint64_t)list
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (list == -1)
  {
    v6 = @"All";
LABEL_38:
    [v5 addObject:v6];
    goto LABEL_39;
  }

  if (list)
  {
    [v4 addObject:@"ShowsInNotificationCenter"];
    if ((list & 2) == 0)
    {
LABEL_4:
      if ((list & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((list & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"ShowsInLockScreen"];
  if ((list & 4) == 0)
  {
LABEL_5:
    if ((list & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"ShowsOnExternalDevices"];
  if ((list & 8) == 0)
  {
LABEL_6:
    if ((list & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"NotificationCenterLimit"];
  if ((list & 0x10) == 0)
  {
LABEL_7:
    if ((list & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"PushSettings"];
  if ((list & 0x20) == 0)
  {
LABEL_8:
    if ((list & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"AlertType"];
  if ((list & 0x40) == 0)
  {
LABEL_9:
    if ((list & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"ShowsMessagePreview"];
  if ((list & 0x80) == 0)
  {
LABEL_10:
    if ((list & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"ShowsInCarPlay"];
  if ((list & 0x10000) == 0)
  {
LABEL_11:
    if ((list & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"RemoteNotifications"];
  if ((list & 0x100) == 0)
  {
LABEL_12:
    if ((list & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"CriticalAlert"];
  if ((list & 0x200) == 0)
  {
LABEL_13:
    if ((list & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"BulletinGrouping"];
  if ((list & 0x400) == 0)
  {
LABEL_14:
    if ((list & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"SpokenNotifications"];
  [v5 addObject:@"SpokenNotifications"];
  if ((list & 0x800) == 0)
  {
LABEL_15:
    if ((list & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 addObject:@"TimeSensitive"];
  if ((list & 0x1000) == 0)
  {
LABEL_16:
    if ((list & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"ScheduledDelivery"];
  if ((list & 0x2000) == 0)
  {
LABEL_17:
    if ((list & 0x4000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    [v5 addObject:@"Sound"];
    if ((list & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_35:
  [v5 addObject:@"Badge"];
  if ((list & 0x4000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((list & 0x8000) != 0)
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
  stateCapture = [(BBSectionInfoSettings *)self->_sectionInfoSettings stateCapture];
  [v3 setValue:stateCapture forKey:@"SectionInfoSettings"];

  managedSectionInfoSettings = self->_managedSectionInfoSettings;
  if (managedSectionInfoSettings)
  {
    stateCapture2 = [(BBSectionInfoSettings *)managedSectionInfoSettings stateCapture];
    [v3 setValue:stateCapture2 forKey:@"ManagedSettings"];
  }

  else
  {
    [v3 setValue:@"Unmanaged" forKey:@"ManagedSettings"];
  }

  appName = [(BBSectionInfo *)self appName];

  if (appName)
  {
    appName2 = [(BBSectionInfo *)self appName];
    [v3 setValue:appName2 forKey:@"AppName"];
  }

  displayName = [(BBSectionInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(BBSectionInfo *)self displayName];
    [v3 setValue:displayName2 forKey:@"DisplayName"];
  }

  subsectionID = [(BBSectionInfo *)self subsectionID];

  if (subsectionID)
  {
    subsectionID2 = [(BBSectionInfo *)self subsectionID];
    [v3 setValue:subsectionID2 forKey:@"SubSectionID"];
  }

  factorySectionID = [(BBSectionInfo *)self factorySectionID];

  if (factorySectionID)
  {
    factorySectionID2 = [(BBSectionInfo *)self factorySectionID];
    [v3 setValue:factorySectionID2 forKey:@"FactorySectionID"];
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

  suppressedSettings = [(BBSectionInfo *)self suppressedSettings];
  if (suppressedSettings)
  {
    v19 = [(BBSectionInfo *)self _suppressedSettingsList:suppressedSettings];
    [v3 setValue:v19 forKey:@"SuppressedSettings"];
  }

  subsections = [(BBSectionInfo *)self subsections];
  if ([subsections count])
  {
    parentSection3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = subsections;
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
          stateCapture3 = [v27 stateCapture];
          subsectionID3 = [v27 subsectionID];
          [parentSection3 setValue:stateCapture3 forKey:subsectionID3];
        }

        v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    [v3 setValue:parentSection3 forKey:@"SubSections"];
    goto LABEL_25;
  }

  parentSection = [(BBSectionInfo *)self parentSection];
  if (parentSection)
  {
    v33 = parentSection;
    parentSection2 = [(BBSectionInfo *)self parentSection];
    sectionID = [parentSection2 sectionID];
    sectionID2 = [(BBSectionInfo *)self sectionID];
    v37 = [sectionID isEqualToString:sectionID2];

    if ((v37 & 1) == 0)
    {
      parentSection3 = [(BBSectionInfo *)self parentSection];
      sectionID3 = [parentSection3 sectionID];
      [v3 setValue:sectionID3 forKey:@"ParentSectionID"];

LABEL_25:
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSData)iconData
{
  icon = [(BBSectionInfo *)self icon];
  v3 = [icon _bestVariantForFormat:1];
  imageData = [v3 imageData];

  return imageData;
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

  appName = [(BBSectionInfo *)self appName];

  if (appName)
  {
    appName2 = [(BBSectionInfo *)self appName];
    v9 = [v6 stringByAppendingFormat:@" '%@'", appName2];

    v6 = v9;
  }

  displayName = [(BBSectionInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(BBSectionInfo *)self displayName];
    v12 = [v6 stringByAppendingFormat:@" '%@'", displayName2];

    v6 = v12;
  }

  subsectionID = [(BBSectionInfo *)self subsectionID];

  if (subsectionID)
  {
    subsectionID2 = [(BBSectionInfo *)self subsectionID];
    v15 = [v6 stringByAppendingFormat:@" (%@)", subsectionID2];

    v6 = v15;
  }

  factorySectionID = [(BBSectionInfo *)self factorySectionID];

  if (factorySectionID)
  {
    factorySectionID2 = [(BBSectionInfo *)self factorySectionID];
    v18 = [v6 stringByAppendingFormat:@" (factory: %@)", factorySectionID2];

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

  suppressedSettings = [(BBSectionInfo *)self suppressedSettings];
  if (suppressedSettings)
  {
    v23 = [v6 stringByAppendingFormat:@", suppressed settings = %lX", suppressedSettings];

    v6 = v23;
  }

  subsections = [(BBSectionInfo *)self subsections];
  if ([subsections count])
  {
    v25 = [v6 stringByAppendingFormat:@", subsections = %@", subsections];
LABEL_24:

    v6 = v25;
    goto LABEL_25;
  }

  parentSection = [(BBSectionInfo *)self parentSection];
  if (parentSection)
  {
    v30 = parentSection;
    parentSection2 = [(BBSectionInfo *)self parentSection];
    sectionID = [parentSection2 sectionID];
    sectionID2 = [(BBSectionInfo *)self sectionID];
    v34 = [sectionID isEqualToString:sectionID2];

    if ((v34 & 1) == 0)
    {
      parentSection3 = [(BBSectionInfo *)self parentSection];
      sectionID3 = [parentSection3 sectionID];
      v25 = [v6 stringByAppendingFormat:@", parent section = %@", sectionID3];

      v6 = parentSection3;
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
  sectionID = [(BBSectionInfo *)self sectionID];
  v3 = [sectionID hash];
  subsectionID = [(BBSectionInfo *)self subsectionID];
  v4 = [subsectionID hash] ^ v3;
  v5 = v4 ^ [(BBSectionInfo *)self sectionType];
  isAppClip = [(BBSectionInfo *)self isAppClip];
  v7 = v5 ^ isAppClip ^ [(BBSectionInfo *)self isModificationAllowed];
  isRestricted = [(BBSectionInfo *)self isRestricted];
  v9 = isRestricted ^ [(BBSectionInfo *)self sectionCategory];
  v10 = v7 ^ v9 ^ [(BBSectionInfo *)self suppressFromSettings];
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  v11 = [sectionInfoSettings hash];
  managedSectionInfoSettings = [(BBSectionInfo *)self managedSectionInfoSettings];
  v12 = v11 ^ [managedSectionInfoSettings hash];
  v13 = v12 ^ [(BBSectionInfo *)self suppressedSettings];
  subsections = [(BBSectionInfo *)self subsections];
  v14 = v13 ^ [subsections hash];
  parentSection = [(BBSectionInfo *)self parentSection];
  sectionID2 = [parentSection sectionID];
  v15 = v10 ^ v14 ^ [sectionID2 hash];
  subsectionPriority = [(BBSectionInfo *)self subsectionPriority];
  v17 = subsectionPriority ^ [(BBSectionInfo *)self version];
  appName = [(BBSectionInfo *)self appName];
  v19 = v17 ^ [appName hash];
  displayName = [(BBSectionInfo *)self displayName];
  v21 = v19 ^ [displayName hash];
  icon = [(BBSectionInfo *)self icon];
  v23 = v21 ^ [icon hash];
  factorySectionID = [(BBSectionInfo *)self factorySectionID];
  v25 = v23 ^ [factorySectionID hash];
  dataProviderIDs = [(BBSectionInfo *)self dataProviderIDs];
  v35 = v15 ^ v25 ^ [dataProviderIDs hash];
  customSettingsBundle = [(BBSectionInfo *)self customSettingsBundle];
  v28 = [customSettingsBundle hash];
  customSettingsDetailControllerClass = [(BBSectionInfo *)self customSettingsDetailControllerClass];
  v30 = v28 ^ [customSettingsDetailControllerClass hash];
  pathToWeeAppPluginBundle = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
  v32 = v30 ^ [pathToWeeAppPluginBundle hash];
  v33 = v32 ^ [(BBSectionInfo *)self hideWeeApp];

  return v35 ^ v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      sectionID = [(BBSectionInfo *)self sectionID];
      sectionID2 = [(BBSectionInfo *)v5 sectionID];
      if (BSEqualStrings())
      {
        subsectionID = [(BBSectionInfo *)self subsectionID];
        subsectionID2 = [(BBSectionInfo *)v5 subsectionID];
        if (BSEqualStrings() && (v10 = [(BBSectionInfo *)self sectionType], v10 == [(BBSectionInfo *)v5 sectionType]) && (v11 = [(BBSectionInfo *)self isAppClip], v11 == [(BBSectionInfo *)v5 isAppClip]) && (v12 = [(BBSectionInfo *)self isModificationAllowed], v12 == [(BBSectionInfo *)v5 isModificationAllowed]) && (v13 = [(BBSectionInfo *)self isRestricted], v13 == [(BBSectionInfo *)v5 isRestricted]) && (v14 = [(BBSectionInfo *)self sectionCategory], v14 == [(BBSectionInfo *)v5 sectionCategory]) && (v15 = [(BBSectionInfo *)self suppressFromSettings], v15 == [(BBSectionInfo *)v5 suppressFromSettings]))
        {
          sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
          sectionInfoSettings2 = [(BBSectionInfo *)v5 sectionInfoSettings];
          if (BSEqualObjects())
          {
            managedSectionInfoSettings = [(BBSectionInfo *)self managedSectionInfoSettings];
            managedSectionInfoSettings2 = [(BBSectionInfo *)v5 managedSectionInfoSettings];
            if (BSEqualObjects())
            {
              v57 = managedSectionInfoSettings;
              suppressedSettings = [(BBSectionInfo *)self suppressedSettings];
              if (suppressedSettings == [(BBSectionInfo *)v5 suppressedSettings])
              {
                subsections = [(BBSectionInfo *)self subsections];
                subsections2 = [(BBSectionInfo *)v5 subsections];
                v56 = subsections;
                if (BSEqualObjects())
                {
                  parentSection = [(BBSectionInfo *)self parentSection];
                  sectionID3 = [parentSection sectionID];
                  parentSection2 = [(BBSectionInfo *)v5 parentSection];
                  [parentSection2 sectionID];
                  v51 = v53 = sectionID3;
                  if (BSEqualStrings() && (v24 = [(BBSectionInfo *)self subsectionPriority], v24 == [(BBSectionInfo *)v5 subsectionPriority]) && (v25 = [(BBSectionInfo *)self version], v25 == [(BBSectionInfo *)v5 version]))
                  {
                    appName = [(BBSectionInfo *)self appName];
                    [(BBSectionInfo *)v5 appName];
                    v50 = v49 = appName;
                    if (BSEqualStrings())
                    {
                      displayName = [(BBSectionInfo *)self displayName];
                      displayName2 = [(BBSectionInfo *)v5 displayName];
                      v48 = displayName;
                      if (BSEqualStrings())
                      {
                        icon = [(BBSectionInfo *)self icon];
                        icon2 = [(BBSectionInfo *)v5 icon];
                        v46 = icon;
                        if (BSEqualObjects())
                        {
                          factorySectionID = [(BBSectionInfo *)self factorySectionID];
                          factorySectionID2 = [(BBSectionInfo *)v5 factorySectionID];
                          v44 = factorySectionID;
                          if (BSEqualStrings())
                          {
                            dataProviderIDs = [(BBSectionInfo *)self dataProviderIDs];
                            dataProviderIDs2 = [(BBSectionInfo *)v5 dataProviderIDs];
                            v42 = dataProviderIDs;
                            if (BSEqualObjects())
                            {
                              customSettingsBundle = [(BBSectionInfo *)self customSettingsBundle];
                              customSettingsBundle2 = [(BBSectionInfo *)v5 customSettingsBundle];
                              v40 = customSettingsBundle;
                              if (BSEqualStrings())
                              {
                                customSettingsDetailControllerClass = [(BBSectionInfo *)self customSettingsDetailControllerClass];
                                customSettingsDetailControllerClass2 = [(BBSectionInfo *)v5 customSettingsDetailControllerClass];
                                v38 = customSettingsDetailControllerClass;
                                if (BSEqualStrings())
                                {
                                  pathToWeeAppPluginBundle = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
                                  [(BBSectionInfo *)v5 pathToWeeAppPluginBundle];
                                  v34 = v36 = pathToWeeAppPluginBundle;
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

              managedSectionInfoSettings = v57;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  parentSection = [(BBSectionInfo *)self parentSection];
  [v5 setParentSection:parentSection];

  sectionID = [(BBSectionInfo *)self sectionID];
  [v5 setSectionID:sectionID];

  subsectionID = [(BBSectionInfo *)self subsectionID];
  [v5 setSubsectionID:subsectionID];

  [v5 setSectionType:{-[BBSectionInfo sectionType](self, "sectionType")}];
  [v5 setIsAppClip:{-[BBSectionInfo isAppClip](self, "isAppClip")}];
  [v5 setIsModificationAllowed:{-[BBSectionInfo isModificationAllowed](self, "isModificationAllowed")}];
  [v5 setIsRestricted:{-[BBSectionInfo isRestricted](self, "isRestricted")}];
  [v5 setSectionCategory:{-[BBSectionInfo sectionCategory](self, "sectionCategory")}];
  [v5 setSuppressFromSettings:{-[BBSectionInfo suppressFromSettings](self, "suppressFromSettings")}];
  v9 = [(BBSectionInfoSettings *)self->_sectionInfoSettings copyWithZone:zone];
  [v5 setSectionInfoSettings:v9];

  v10 = [(BBSectionInfoSettings *)self->_managedSectionInfoSettings copyWithZone:zone];
  [v5 setManagedSectionInfoSettings:v10];

  pathToWeeAppPluginBundle = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
  [v5 setPathToWeeAppPluginBundle:pathToWeeAppPluginBundle];

  appName = [(BBSectionInfo *)self appName];
  [v5 setAppName:appName];

  displayName = [(BBSectionInfo *)self displayName];
  [v5 setDisplayName:displayName];

  icon = [(BBSectionInfo *)self icon];
  [v5 setIcon:icon];

  customSettingsBundle = [(BBSectionInfo *)self customSettingsBundle];
  [v5 setCustomSettingsBundle:customSettingsBundle];

  customSettingsDetailControllerClass = [(BBSectionInfo *)self customSettingsDetailControllerClass];
  [v5 setCustomSettingsDetailControllerClass:customSettingsDetailControllerClass];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  subsections = [(BBSectionInfo *)self subsections];
  v18 = [subsections countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(subsections);
        }

        v22 = [*(*(&v27 + 1) + 8 * v21) copyWithZone:zone];
        [v5 _addSubsection:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [subsections countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  [v5 setSubsectionPriority:{-[BBSectionInfo subsectionPriority](self, "subsectionPriority")}];
  [v5 setSuppressedSettings:{-[BBSectionInfo suppressedSettings](self, "suppressedSettings")}];
  [v5 setHideWeeApp:{-[BBSectionInfo hideWeeApp](self, "hideWeeApp")}];
  factorySectionID = [(BBSectionInfo *)self factorySectionID];
  [v5 setFactorySectionID:factorySectionID];

  dataProviderIDs = [(BBSectionInfo *)self dataProviderIDs];
  [v5 setDataProviderIDs:dataProviderIDs];

  [v5 setVersion:{-[BBSectionInfo version](self, "version")}];
  [v5 setIsRestricted:{-[BBSectionInfo isRestricted](self, "isRestricted")}];
  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BBSectionInfo)initWithCoder:(id)coder
{
  v44[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = BBSectionInfo;
  v5 = [(BBSectionInfo *)&v41 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    [(BBSectionInfo *)v5 setSectionID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subsectionID"];
    [(BBSectionInfo *)v5 setSubsectionID:v7];

    -[BBSectionInfo setSectionType:](v5, "setSectionType:", [coderCopy decodeIntegerForKey:@"sectionType"]);
    -[BBSectionInfo setIsAppClip:](v5, "setIsAppClip:", [coderCopy decodeBoolForKey:@"isAppClip"]);
    -[BBSectionInfo setIsModificationAllowed:](v5, "setIsModificationAllowed:", [coderCopy decodeBoolForKey:@"isModificationAllowed"]);
    -[BBSectionInfo setIsRestricted:](v5, "setIsRestricted:", [coderCopy decodeBoolForKey:@"isRestricted"]);
    -[BBSectionInfo setSectionCategory:](v5, "setSectionCategory:", [coderCopy decodeIntegerForKey:@"sectionCategory"]);
    -[BBSectionInfo setSuppressFromSettings:](v5, "setSuppressFromSettings:", [coderCopy decodeBoolForKey:@"suppressFromSettings"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathToWeeAppPluginBundle"];
    [(BBSectionInfo *)v5 setPathToWeeAppPluginBundle:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    [(BBSectionInfo *)v5 setAppName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(BBSectionInfo *)v5 setDisplayName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    [(BBSectionInfo *)v5 setIcon:v11];

    v12 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"subsections"];

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

    -[BBSectionInfo setSubsectionPriority:](v5, "setSubsectionPriority:", [coderCopy decodeIntegerForKey:@"subsectionPriority"]);
    -[BBSectionInfo setSuppressedSettings:](v5, "setSuppressedSettings:", [coderCopy decodeInt64ForKey:@"suppressedSettings"]);
    -[BBSectionInfo setHideWeeApp:](v5, "setHideWeeApp:", [coderCopy decodeBoolForKey:@"hideWeeApp"]);
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factorySectionID"];
    [(BBSectionInfo *)v5 setFactorySectionID:v21];

    v22 = MEMORY[0x277CBEB98];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"dataProviderIDs"];
    [(BBSectionInfo *)v5 setDataProviderIDs:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsBundle"];
    [(BBSectionInfo *)v5 setCustomSettingsBundle:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customSettingsDetailControllerClass"];
    [(BBSectionInfo *)v5 setCustomSettingsDetailControllerClass:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    -[BBSectionInfo setVersion:](v5, "setVersion:", [v28 unsignedIntegerValue]);
    if ([coderCopy containsValueForKey:@"sectionInfoSettings"])
    {
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionInfoSettings"];
      sectionInfoSettings = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v29;
    }

    else
    {
      v31 = [[BBSectionInfoSettings alloc] initWithDefaultsForSectionType:[(BBSectionInfo *)v5 sectionType]];
      v32 = v5->_sectionInfoSettings;
      v5->_sectionInfoSettings = v31;

      if ([coderCopy containsValueForKey:@"allowsNotifications"])
      {
        v33 = [coderCopy decodeBoolForKey:@"allowsNotifications"];
      }

      else
      {
        v33 = 1;
      }

      [(BBSectionInfoSettings *)v5->_sectionInfoSettings setAllowsNotifications:v33, v37];
      -[BBSectionInfoSettings setShowsInNotificationCenter:](v5->_sectionInfoSettings, "setShowsInNotificationCenter:", [coderCopy decodeBoolForKey:@"showsInNotificationCenter"]);
      -[BBSectionInfoSettings setShowsInLockScreen:](v5->_sectionInfoSettings, "setShowsInLockScreen:", [coderCopy decodeBoolForKey:@"showsInLockScreen"]);
      -[BBSectionInfoSettings setShowsCustomSettingsLink:](v5->_sectionInfoSettings, "setShowsCustomSettingsLink:", [coderCopy decodeBoolForKey:@"showsCustomSettingsLink"]);
      -[BBSectionInfoSettings setAlertType:](v5->_sectionInfoSettings, "setAlertType:", [coderCopy decodeIntegerForKey:@"alertType"]);
      -[BBSectionInfoSettings setPushSettings:](v5->_sectionInfoSettings, "setPushSettings:", [coderCopy decodeInt64ForKey:@"pushSettings"]);
      if ([coderCopy containsValueForKey:@"showsOnExternalDevices"])
      {
        -[BBSectionInfoSettings setShowsOnExternalDevices:](v5->_sectionInfoSettings, "setShowsOnExternalDevices:", [coderCopy decodeBoolForKey:@"showsOnExternalDevices"]);
      }

      if ([coderCopy containsValueForKey:@"showsMessagePreview"])
      {
        -[BBSectionInfoSettings setShowsMessagePreview:](v5->_sectionInfoSettings, "setShowsMessagePreview:", [coderCopy decodeBoolForKey:@"showsMessagePreview"]);
      }
    }

    if ([coderCopy containsValueForKey:{@"bulletinGroupingSetting", v37}])
    {
      -[BBSectionInfo setBulletinGroupingSetting:](v5, "setBulletinGroupingSetting:", [coderCopy decodeIntegerForKey:@"bulletinGroupingSetting"]);
    }

    if ([coderCopy containsValueForKey:@"managedSectionInfoSettings"])
    {
      v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedSectionInfoSettings"];
      [(BBSectionInfo *)v5 setManagedSectionInfoSettings:v34];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sectionID = [(BBSectionInfo *)self sectionID];
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];

  subsectionID = [(BBSectionInfo *)self subsectionID];
  [coderCopy encodeObject:subsectionID forKey:@"subsectionID"];

  [coderCopy encodeInteger:-[BBSectionInfo sectionType](self forKey:{"sectionType"), @"sectionType"}];
  [coderCopy encodeBool:-[BBSectionInfo isAppClip](self forKey:{"isAppClip"), @"isAppClip"}];
  [coderCopy encodeBool:-[BBSectionInfo isModificationAllowed](self forKey:{"isModificationAllowed"), @"isModificationAllowed"}];
  [coderCopy encodeBool:-[BBSectionInfo isRestricted](self forKey:{"isRestricted"), @"isRestricted"}];
  [coderCopy encodeInteger:-[BBSectionInfo sectionCategory](self forKey:{"sectionCategory"), @"sectionCategory"}];
  [coderCopy encodeBool:-[BBSectionInfo suppressFromSettings](self forKey:{"suppressFromSettings"), @"suppressFromSettings"}];
  [coderCopy encodeObject:self->_sectionInfoSettings forKey:@"sectionInfoSettings"];
  [coderCopy encodeObject:self->_managedSectionInfoSettings forKey:@"managedSectionInfoSettings"];
  pathToWeeAppPluginBundle = [(BBSectionInfo *)self pathToWeeAppPluginBundle];
  [coderCopy encodeObject:pathToWeeAppPluginBundle forKey:@"pathToWeeAppPluginBundle"];

  appName = [(BBSectionInfo *)self appName];
  [coderCopy encodeObject:appName forKey:@"appName"];

  displayName = [(BBSectionInfo *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  icon = [(BBSectionInfo *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  subsections = [(BBSectionInfo *)self subsections];
  [coderCopy encodeObject:subsections forKey:@"subsections"];

  [coderCopy encodeInteger:-[BBSectionInfo subsectionPriority](self forKey:{"subsectionPriority"), @"subsectionPriority"}];
  [coderCopy encodeInteger:-[BBSectionInfo suppressedSettings](self forKey:{"suppressedSettings"), @"suppressedSettings"}];
  [coderCopy encodeBool:-[BBSectionInfo hideWeeApp](self forKey:{"hideWeeApp"), @"hideWeeApp"}];
  factorySectionID = [(BBSectionInfo *)self factorySectionID];
  [coderCopy encodeObject:factorySectionID forKey:@"factorySectionID"];

  dataProviderIDs = [(BBSectionInfo *)self dataProviderIDs];
  [coderCopy encodeObject:dataProviderIDs forKey:@"dataProviderIDs"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BBSectionInfo version](self, "version")}];
  [coderCopy encodeObject:v14 forKey:@"version"];

  customSettingsBundle = [(BBSectionInfo *)self customSettingsBundle];
  [coderCopy encodeObject:customSettingsBundle forKey:@"customSettingsBundle"];

  customSettingsDetailControllerClass = [(BBSectionInfo *)self customSettingsDetailControllerClass];
  [coderCopy encodeObject:customSettingsDetailControllerClass forKey:@"customSettingsDetailControllerClass"];
}

- (id)effectiveSectionInfoWithDefaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting globalSummarizationSetting:(int64_t)summarizationSetting globalPrioritizationSetting:(int64_t)prioritizationSetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)notifications
{
  playCopy = play;
  selfCopy = self;
  v81 = *MEMORY[0x277D85DE8];
  parentSection = [(BBSectionInfo *)self parentSection];
  if (!parentSection)
  {
    subsections = [(BBSectionInfo *)selfCopy subsections];
    v19 = [subsections count];

    if (!v19)
    {
      goto LABEL_42;
    }

    copyFromManagedSettings = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v55 = selfCopy;
    subsections2 = [(BBSectionInfo *)selfCopy subsections];
    v22 = [subsections2 countByEnumeratingWithState:&v75 objects:v80 count:16];
    announceSettingCopy = announceSetting;
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
            objc_enumerationMutation(subsections2);
          }

          LOBYTE(v51) = notifications;
          v27 = [*(*(&v75 + 1) + 8 * i) effectiveSectionInfoWithDefaultContentPreviewSetting:setting globalAnnounceSetting:announceSetting globalScheduledDeliverySetting:deliverySetting globalSummarizationSetting:summarizationSetting globalPrioritizationSetting:prioritizationSetting hasPairedVehiclesForCarPlay:playCopy hasDestinationForRemoteNotifications:v51];
          [v20 addObject:v27];

          announceSetting = announceSettingCopy;
        }

        v24 = [subsections2 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v24);
    }

    suppressedSettings = [(BBSectionInfo *)copyFromManagedSettings suppressedSettings];
    v29 = suppressedSettings;
    if ((suppressedSettings & 2) != 0)
    {
      lockScreenSetting = 0;
      if ((suppressedSettings & 4) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      lockScreenSetting = [(BBSectionInfo *)copyFromManagedSettings lockScreenSetting];
      if ((v29 & 4) != 0)
      {
LABEL_37:
        showsOnExternalDevices = 0;
        if ((v29 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_61;
      }
    }

    showsOnExternalDevices = [(BBSectionInfo *)copyFromManagedSettings showsOnExternalDevices];
    if ((v29 & 1) == 0)
    {
LABEL_38:
      notificationCenterSetting = [(BBSectionInfo *)copyFromManagedSettings notificationCenterSetting];
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_62;
    }

LABEL_61:
    notificationCenterSetting = 0;
    if ((v29 & 0x40) == 0)
    {
LABEL_39:
      contentPreviewSetting = [(BBSectionInfo *)copyFromManagedSettings contentPreviewSetting];
      if ((v29 & 0x2000) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_63;
    }

LABEL_62:
    contentPreviewSetting = 0;
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
      v31 = [(BBSectionInfo *)copyFromManagedSettings pushSettings]& 0x12;
LABEL_65:
      settingCopy = setting;
      if ((v29 & 0x20) != 0)
      {
        alertType = 0;
        v32 = v31 | v30;
        if ((v29 & 0x80) == 0)
        {
LABEL_67:
          carPlaySetting = [(BBSectionInfo *)copyFromManagedSettings carPlaySetting];
          if ((v29 & 0x10000) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_77;
        }
      }

      else
      {
        v32 = v30 | v31 | [(BBSectionInfo *)copyFromManagedSettings pushSettings]& 0x24;
        alertType = [(BBSectionInfo *)copyFromManagedSettings alertType];
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_67;
        }
      }

      carPlaySetting = 0;
      if ((v29 & 0x10000) == 0)
      {
LABEL_68:
        remoteNotificationsSetting = [(BBSectionInfo *)copyFromManagedSettings remoteNotificationsSetting];
        if ((v29 & 0x100) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_78;
      }

LABEL_77:
      remoteNotificationsSetting = 0;
      if ((v29 & 0x100) == 0)
      {
LABEL_69:
        criticalAlertSetting = [(BBSectionInfo *)copyFromManagedSettings criticalAlertSetting];
        if ((v29 & 0x400) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }

LABEL_78:
      criticalAlertSetting = 0;
      if ((v29 & 0x400) == 0)
      {
LABEL_70:
        announceSetting = [(BBSectionInfo *)copyFromManagedSettings announceSetting];
        if ((v29 & 0x800) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_80;
      }

LABEL_79:
      announceSetting = 0;
      if ((v29 & 0x800) == 0)
      {
LABEL_71:
        timeSensitiveSetting = [(BBSectionInfo *)copyFromManagedSettings timeSensitiveSetting];
        if ((v29 & 0x1000) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_81;
      }

LABEL_80:
      timeSensitiveSetting = 0;
      if ((v29 & 0x1000) == 0)
      {
LABEL_72:
        scheduledDeliverySetting = [(BBSectionInfo *)copyFromManagedSettings scheduledDeliverySetting];
        if ((v29 & 0x8000) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_82;
      }

LABEL_81:
      scheduledDeliverySetting = 0;
      if ((v29 & 0x8000) == 0)
      {
LABEL_73:
        directMessagesSetting = [(BBSectionInfo *)copyFromManagedSettings directMessagesSetting];
        if ((v29 & 0x20000) == 0)
        {
LABEL_74:
          summarizationSetting = [(BBSectionInfo *)copyFromManagedSettings summarizationSetting];
          goto LABEL_84;
        }

LABEL_83:
        summarizationSetting = 0;
LABEL_84:
        prioritizationSettingCopy = prioritizationSetting;
        if ((v29 & 0x40000) != 0)
        {
          prioritizationSetting = 0;
        }

        else
        {
          prioritizationSetting = [(BBSectionInfo *)copyFromManagedSettings prioritizationSetting];
        }

        [(BBSectionInfo *)copyFromManagedSettings setSubsections:0];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v34 = v20;
        v35 = [v34 countByEnumeratingWithState:&v71 objects:v79 count:16];
        if (!v35)
        {
LABEL_141:

          copyFromManagedSettings2 = copyFromManagedSettings;
          [(BBSectionInfo *)copyFromManagedSettings setLockScreenSetting:lockScreenSetting];
          [(BBSectionInfo *)copyFromManagedSettings setShowsOnExternalDevices:showsOnExternalDevices & 1];
          [(BBSectionInfo *)copyFromManagedSettings setNotificationCenterSetting:notificationCenterSetting];
          [(BBSectionInfo *)copyFromManagedSettings setPushSettings:v32];
          [(BBSectionInfo *)copyFromManagedSettings setAlertType:alertType];
          [(BBSectionInfo *)copyFromManagedSettings setContentPreviewSetting:contentPreviewSetting];
          [(BBSectionInfo *)copyFromManagedSettings setAnnounceSetting:announceSetting];
          [(BBSectionInfo *)copyFromManagedSettings setCarPlaySetting:carPlaySetting];
          [(BBSectionInfo *)copyFromManagedSettings setRemoteNotificationsSetting:remoteNotificationsSetting];
          [(BBSectionInfo *)copyFromManagedSettings setCriticalAlertSetting:criticalAlertSetting];
          [(BBSectionInfo *)copyFromManagedSettings setTimeSensitiveSetting:timeSensitiveSetting];
          [(BBSectionInfo *)copyFromManagedSettings setScheduledDeliverySetting:scheduledDeliverySetting];
          [(BBSectionInfo *)copyFromManagedSettings setDirectMessagesSetting:directMessagesSetting];
          [(BBSectionInfo *)copyFromManagedSettings setSummarizationSetting:summarizationSetting];
          [(BBSectionInfo *)copyFromManagedSettings setPrioritizationSetting:prioritizationSetting];

          selfCopy = v55;
          parentSection = 0;
          prioritizationSetting = prioritizationSettingCopy;
          setting = settingCopy;
          announceSetting = announceSettingCopy;
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
          [(BBSectionInfo *)copyFromManagedSettings _addSubsection:v39];
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
            if ([v39 alertType] > alertType)
            {
              alertType = [v39 alertType];
            }
          }

LABEL_101:
          if ((v29 & 2) != 0 && lockScreenSetting != 2)
          {
            lockScreenSetting = [v39 lockScreenSetting];
          }

          if ((v29 & 4) != 0)
          {
            showsOnExternalDevices |= [v39 showsOnExternalDevices];
          }

          if ((v29 & 1) != 0 && notificationCenterSetting != 2)
          {
            notificationCenterSetting = [v39 notificationCenterSetting];
          }

          if ((v29 & 0x40) != 0 && contentPreviewSetting != 1)
          {
            contentPreviewSetting = [v39 contentPreviewSetting];
          }

          if ((v29 & 0x80) != 0 && carPlaySetting != 2)
          {
            carPlaySetting = [v39 carPlaySetting];
          }

          if ((v29 & 0x10000) != 0 && remoteNotificationsSetting != 2)
          {
            remoteNotificationsSetting = [v39 remoteNotificationsSetting];
          }

          if ((v29 & 0x400) != 0 && (announceSetting - 4) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            announceSetting = [v39 announceSetting];
          }

          if ((v29 & 0x100) != 0 && criticalAlertSetting != 2)
          {
            criticalAlertSetting = [v39 criticalAlertSetting];
          }

          if ((v29 & 0x800) != 0 && timeSensitiveSetting != 2)
          {
            timeSensitiveSetting = [v39 timeSensitiveSetting];
          }

          if ((v29 & 0x1000) != 0 && scheduledDeliverySetting != 2)
          {
            scheduledDeliverySetting = [v39 scheduledDeliverySetting];
          }

          if ((v29 & 0x8000) != 0 && directMessagesSetting != 2)
          {
            directMessagesSetting = [v39 directMessagesSetting];
          }

          if ((v29 & 0x20000) != 0 && summarizationSetting != 2)
          {
            summarizationSetting = [v39 summarizationSetting];
          }

          if ((v29 & 0x40000) != 0 && prioritizationSetting != 2)
          {
            prioritizationSetting = [v39 prioritizationSetting];
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
      directMessagesSetting = 0;
      if ((v29 & 0x20000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_83;
    }

LABEL_63:
    v30 = [(BBSectionInfo *)copyFromManagedSettings pushSettings]& 9;
    if ((v29 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  if ([(BBSectionInfo *)selfCopy sectionType]!= 2)
  {
LABEL_42:
    copyFromManagedSettings2 = 0;
    goto LABEL_142;
  }

  copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
  if (([parentSection allowsNotifications] & 1) == 0)
  {
    -[BBSectionInfo setAuthorizationStatus:](copyFromManagedSettings2, "setAuthorizationStatus:", [parentSection authorizationStatus]);
  }

  if ([parentSection suppressedSettings] & 0x2000) == 0 && (objc_msgSend(parentSection, "pushSettings") & 1) != 0 && (objc_msgSend(parentSection, "pushSettings") & 8) == 0 && (-[BBSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings"))
  {
    [(BBSectionInfo *)copyFromManagedSettings2 setPushSettings:[(BBSectionInfo *)copyFromManagedSettings2 pushSettings]& 0xFFFFFFFFFFFFFFF7];
  }

  suppressedSettings2 = [(BBSectionInfo *)copyFromManagedSettings2 suppressedSettings];
  v17 = suppressedSettings2;
  if (suppressedSettings2)
  {
    -[BBSectionInfo setNotificationCenterSetting:](copyFromManagedSettings2, "setNotificationCenterSetting:", [parentSection notificationCenterSetting]);
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

  else if ((suppressedSettings2 & 2) == 0)
  {
    goto LABEL_12;
  }

  -[BBSectionInfo setLockScreenSetting:](copyFromManagedSettings2, "setLockScreenSetting:", [parentSection lockScreenSetting]);
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
  -[BBSectionInfo setShowsOnExternalDevices:](copyFromManagedSettings2, "setShowsOnExternalDevices:", [parentSection showsOnExternalDevices]);
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
  -[BBSectionInfo setPushSettings:](copyFromManagedSettings2, "setPushSettings:", [parentSection pushSettings] & 9 | -[BBSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings") & 0xFFFFFFFFFFFFFFF6);
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
  -[BBSectionInfo setPushSettings:](copyFromManagedSettings2, "setPushSettings:", [parentSection pushSettings] & 0x12 | -[BBSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings") & 0xFFFFFFFFFFFFFFEDLL);
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
  -[BBSectionInfo setPushSettings:](copyFromManagedSettings2, "setPushSettings:", [parentSection pushSettings] & 0x24 | -[BBSectionInfo pushSettings](copyFromManagedSettings2, "pushSettings") & 0xFFFFFFFFFFFFFFDBLL);
  -[BBSectionInfo setAlertType:](copyFromManagedSettings2, "setAlertType:", [parentSection alertType]);
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
  -[BBSectionInfo setContentPreviewSetting:](copyFromManagedSettings2, "setContentPreviewSetting:", [parentSection contentPreviewSetting]);
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
  -[BBSectionInfo setAnnounceSetting:](copyFromManagedSettings2, "setAnnounceSetting:", [parentSection announceSetting]);
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
  -[BBSectionInfo setCarPlaySetting:](copyFromManagedSettings2, "setCarPlaySetting:", [parentSection carPlaySetting]);
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
  -[BBSectionInfo setRemoteNotificationsSetting:](copyFromManagedSettings2, "setRemoteNotificationsSetting:", [parentSection remoteNotificationsSetting]);
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
  -[BBSectionInfo setCriticalAlertSetting:](copyFromManagedSettings2, "setCriticalAlertSetting:", [parentSection criticalAlertSetting]);
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
  -[BBSectionInfo setTimeSensitiveSetting:](copyFromManagedSettings2, "setTimeSensitiveSetting:", [parentSection timeSensitiveSetting]);
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
  -[BBSectionInfo setScheduledDeliverySetting:](copyFromManagedSettings2, "setScheduledDeliverySetting:", [parentSection scheduledDeliverySetting]);
  if ((v17 & 0x8000) == 0)
  {
LABEL_24:
    if ((v17 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

LABEL_57:
    -[BBSectionInfo setSummarizationSetting:](copyFromManagedSettings2, "setSummarizationSetting:", [parentSection summarizationSetting]);
    if ((v17 & 0x40000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_58;
  }

LABEL_56:
  -[BBSectionInfo setDirectMessagesSetting:](copyFromManagedSettings2, "setDirectMessagesSetting:", [parentSection directMessagesSetting]);
  if ((v17 & 0x20000) != 0)
  {
    goto LABEL_57;
  }

LABEL_25:
  if ((v17 & 0x40000) != 0)
  {
LABEL_58:
    -[BBSectionInfo setPrioritizationSetting:](copyFromManagedSettings2, "setPrioritizationSetting:", [parentSection prioritizationSetting]);
  }

LABEL_142:
  if ([(BBSectionInfo *)selfCopy isRestricted])
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setAuthorizationStatus:1];
  }

  if (![(BBSectionInfo *)selfCopy allowsNotifications])
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

LABEL_152:
    if (![parentSection allowsNotifications] || (objc_msgSend(parentSection, "pushSettings") & 1) == 0 || (objc_msgSend(parentSection, "suppressedSettings") & 0x2000) != 0 || (-[BBSectionInfo suppressedSettings](selfCopy, "suppressedSettings") & 0x2000) != 0)
    {
      v40 = -57;
    }

    else
    {
      v40 = -49;
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setPushSettings:[(BBSectionInfo *)selfCopy pushSettings]& v40];
    [(BBSectionInfo *)copyFromManagedSettings2 setAlertType:0];
    [(BBSectionInfo *)copyFromManagedSettings2 setNotificationCenterSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy notificationCenterSetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setLockScreenSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy lockScreenSetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setShowsOnExternalDevices:0];
    [(BBSectionInfo *)copyFromManagedSettings2 setShowsCustomSettingsLink:0];
    [(BBSectionInfo *)copyFromManagedSettings2 setContentPreviewSetting:0];
    [(BBSectionInfo *)copyFromManagedSettings2 setAnnounceSetting:1];
    [(BBSectionInfo *)copyFromManagedSettings2 setCarPlaySetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy carPlaySetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setRemoteNotificationsSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy remoteNotificationsSetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setDirectMessagesSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy directMessagesSetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setScheduledDeliverySetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy scheduledDeliverySetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setTimeSensitiveSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy timeSensitiveSetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setSummarizationSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy summarizationSetting]]];
    [(BBSectionInfo *)copyFromManagedSettings2 setPrioritizationSetting:[(BBSectionInfo *)selfCopy disabledSettingForSetting:[(BBSectionInfo *)selfCopy prioritizationSetting]]];
LABEL_159:
    if (announceSetting != -1)
    {
      if (announceSetting >= 2)
      {
        goto LABEL_172;
      }

      if (copyFromManagedSettings2)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }

    if (copyFromManagedSettings2)
    {
LABEL_170:
      v41 = copyFromManagedSettings2;
      v42 = 0;
      goto LABEL_171;
    }

LABEL_169:
    copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    goto LABEL_170;
  }

  if (copyFromManagedSettings2)
  {
    if ([(BBSectionInfo *)copyFromManagedSettings2 allowsNotifications])
    {
      goto LABEL_159;
    }

    goto LABEL_152;
  }

  if (announceSetting == -1)
  {
    goto LABEL_169;
  }

  if (announceSetting >= 2)
  {
    if ((deliverySetting + 1) < 3)
    {
      goto LABEL_174;
    }

LABEL_177:
    copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    goto LABEL_178;
  }

LABEL_167:
  copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
LABEL_168:
  v41 = copyFromManagedSettings2;
  v42 = 1;
LABEL_171:
  [(BBSectionInfo *)v41 setAnnounceSetting:v42];
LABEL_172:
  if ((deliverySetting + 1) < 3)
  {
    if (copyFromManagedSettings2)
    {
LABEL_175:
      [(BBSectionInfo *)copyFromManagedSettings2 setScheduledDeliverySetting:1];
      goto LABEL_178;
    }

LABEL_174:
    copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    goto LABEL_175;
  }

  if (!copyFromManagedSettings2)
  {
    goto LABEL_177;
  }

LABEL_178:
  if (!playCopy)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setCarPlaySetting:0];
  }

  if (!notifications)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setRemoteNotificationsSetting:0];
  }

  if (summarizationSetting != 2)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setSummarizationSetting:summarizationSetting != -1];
  }

  if (prioritizationSetting != 2)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setPrioritizationSetting:prioritizationSetting != -1];
  }

  if (copyFromManagedSettings2)
  {
    v43 = copyFromManagedSettings2;
  }

  else
  {
    v43 = selfCopy;
  }

  v44 = v43;
  if (![(BBSectionInfo *)v44 contentPreviewSetting])
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setContentPreviewSetting:setting];
  }

  if ([(BBSectionInfo *)v44 authorizationStatus]== 4)
  {
    if (!copyFromManagedSettings2)
    {
      copyFromManagedSettings2 = [(BBSectionInfo *)selfCopy copyFromManagedSettings];
    }

    sectionInfoSettings = [(BBSectionInfo *)selfCopy sectionInfoSettings];
    if ([sectionInfoSettings isAuthorizedTemporarily])
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

    [(BBSectionInfo *)copyFromManagedSettings2 setAuthorizationStatus:v46];
  }

  if (copyFromManagedSettings2)
  {
    v47 = copyFromManagedSettings2;
  }

  else
  {
    v47 = selfCopy;
  }

  v48 = v47;

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)effectiveSectionInfoWithFactoryInfo:(id)info defaultContentPreviewSetting:(int64_t)setting globalAnnounceSetting:(int64_t)announceSetting globalScheduledDeliverySetting:(int64_t)deliverySetting globalSummarizationSetting:(int64_t)summarizationSetting globalPrioritizationSetting:(int64_t)prioritizationSetting hasPairedVehiclesForCarPlay:(BOOL)play hasDestinationForRemoteNotifications:(BOOL)self0
{
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_9;
  }

  settingCopy = setting;
  factorySectionID = [(BBSectionInfo *)self factorySectionID];
  sectionID = [infoCopy sectionID];
  if (([factorySectionID isEqualToString:sectionID] & 1) == 0)
  {

    goto LABEL_9;
  }

  [infoCopy dataProviderIDs];
  deliverySettingCopy = deliverySetting;
  v20 = v19 = prioritizationSetting;
  [(BBSectionInfo *)self sectionID];
  v22 = v21 = summarizationSetting;
  v23 = [v20 containsObject:v22];

  if ((v23 & 1) == 0)
  {
LABEL_9:
    selfCopy = self;
    goto LABEL_10;
  }

  v24 = [(BBSectionInfo *)self copy];
  if ([v24 suppressFromSettings] && (objc_msgSend(infoCopy, "suppressFromSettings") & 1) == 0)
  {
    [v24 setNotificationCenterSetting:{objc_msgSend(infoCopy, "notificationCenterSetting")}];
    [v24 setLockScreenSetting:{objc_msgSend(infoCopy, "lockScreenSetting")}];
    if ([v24 showsOnExternalDevices])
    {
      showsOnExternalDevices = [infoCopy showsOnExternalDevices];
    }

    else
    {
      showsOnExternalDevices = 0;
    }

    [v24 setShowsOnExternalDevices:showsOnExternalDevices];
    [v24 setContentPreviewSetting:{objc_msgSend(infoCopy, "contentPreviewSetting")}];
    [v24 setPushSettings:{objc_msgSend(infoCopy, "pushSettings")}];
    [v24 setAlertType:{objc_msgSend(infoCopy, "alertType")}];
    [v24 setAuthorizationStatus:{objc_msgSend(infoCopy, "authorizationStatus")}];
    [v24 setCarPlaySetting:{objc_msgSend(infoCopy, "carPlaySetting")}];
    [v24 setRemoteNotificationsSetting:{objc_msgSend(infoCopy, "remoteNotificationsSetting")}];
    [v24 setAnnounceSetting:{objc_msgSend(infoCopy, "announceSetting")}];
    [v24 setCriticalAlertSetting:{objc_msgSend(infoCopy, "criticalAlertSetting")}];
    [v24 setTimeSensitiveSetting:{objc_msgSend(infoCopy, "timeSensitiveSetting")}];
    [v24 setScheduledDeliverySetting:{objc_msgSend(infoCopy, "scheduledDeliverySetting")}];
    [v24 setDirectMessagesSetting:{objc_msgSend(infoCopy, "directMessagesSetting")}];
    [v24 setSummarizationSetting:{objc_msgSend(infoCopy, "summarizationSetting")}];
    [v24 setPrioritizationSetting:{objc_msgSend(infoCopy, "prioritizationSetting")}];
  }

  LOBYTE(v28) = notifications;
  selfCopy = [v24 effectiveSectionInfoWithDefaultContentPreviewSetting:settingCopy globalAnnounceSetting:announceSetting globalScheduledDeliverySetting:deliverySettingCopy globalSummarizationSetting:v21 globalPrioritizationSetting:v19 hasPairedVehiclesForCarPlay:play hasDestinationForRemoteNotifications:v28];

LABEL_10:

  return selfCopy;
}

+ (id)defaultSectionInfoForSection:(id)section
{
  sectionCopy = section;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([sectionCopy defaultSectionInfo], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [BBSectionInfo defaultSectionInfoForType:0];
  }

  sectionIdentifier = [sectionCopy sectionIdentifier];
  [v6 setSectionID:sectionIdentifier];
  v14 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:sectionIdentifier allowPlaceholder:1 error:&v14];
  v9 = v14;
  if (v8)
  {
    localizedName = [v8 localizedName];
    [v6 setAppName:localizedName];

    applicationState = [v8 applicationState];
    [v6 setIsRestricted:{objc_msgSend(applicationState, "isRestricted")}];

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
      [(BBSectionInfo(DataProviders) *)sectionIdentifier defaultSectionInfoForSection:v12, v9];
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

  [(BBSectionInfo(DataProviders) *)a2 defaultSectionInfoForSection:self];
LABEL_9:

  return v6;
}

- (void)updateWithDefaultSectionInfo:(id)info
{
  v68 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  alertType = [(BBSectionInfo *)self alertType];
  pushSettings = [(BBSectionInfo *)self pushSettings];
  pushSettings2 = [infoCopy pushSettings];
  v8 = pushSettings2;
  if ((pushSettings & 4) == 0 && (pushSettings2 & 4) != 0)
  {
    alertType = [infoCopy alertType];
    pushSettings |= 0x24uLL;
  }

  if (pushSettings & 1 | ((v8 & 1) == 0))
  {
    v9 = pushSettings;
  }

  else
  {
    v9 = pushSettings | 9;
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

  suppressedSettings = [(BBSectionInfo *)self suppressedSettings];
  suppressedSettings2 = [infoCopy suppressedSettings];
  v14 = suppressedSettings2;
  if ((suppressedSettings & 0x2000) == 0 || (suppressedSettings2 & 0x2000) != 0)
  {
LABEL_26:
    if ((suppressedSettings & 0x20) == 0)
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

  subsections = [(BBSectionInfo *)self subsections];
  v16 = [subsections count];

  if (!v16)
  {
    goto LABEL_26;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  subsections2 = [(BBSectionInfo *)self subsections];
  v18 = [subsections2 countByEnumeratingWithState:&v63 objects:v67 count:16];
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
          objc_enumerationMutation(subsections2);
        }

        if (([*(*(&v63 + 1) + 8 * i) pushSettings] & 8) != 0)
        {
          v11 |= 9uLL;
          goto LABEL_87;
        }
      }

      v19 = [subsections2 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_87:

  if ((suppressedSettings & 0x20) != 0)
  {
LABEL_27:
    if ((v14 & 0x20) == 0)
    {
      alertType = [infoCopy alertType];
      v11 |= 0x24uLL;
    }
  }

LABEL_29:
  [(BBSectionInfo *)self setAlertType:alertType];
  [(BBSectionInfo *)self setPushSettings:v11];
  lockScreenSetting = [(BBSectionInfo *)self lockScreenSetting];
  lockScreenSetting2 = [infoCopy lockScreenSetting];
  if (lockScreenSetting)
  {
    v25 = ((v14 & 2) == 0) & (suppressedSettings >> 1);
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
    v24 = lockScreenSetting2;
    if (lockScreenSetting2)
    {
      [(BBSectionInfo *)self setLockScreenSetting:lockScreenSetting2];
    }
  }

  notificationCenterSetting = [(BBSectionInfo *)self notificationCenterSetting];
  notificationCenterSetting2 = [infoCopy notificationCenterSetting];
  if (notificationCenterSetting)
  {
    v29 = suppressedSettings & ((v14 & 1) == 0);
  }

  else
  {
    v29 = 1;
  }

  if (v29 == 1)
  {
    v28 = notificationCenterSetting2;
    if (notificationCenterSetting2)
    {
      [(BBSectionInfo *)self setNotificationCenterSetting:notificationCenterSetting2];
    }
  }

  carPlaySetting = [(BBSectionInfo *)self carPlaySetting];
  carPlaySetting2 = [infoCopy carPlaySetting];
  if (carPlaySetting)
  {
    v33 = ((v14 & 0x80) == 0) & (suppressedSettings >> 7);
  }

  else
  {
    v33 = 1;
  }

  if (v33 == 1)
  {
    v32 = carPlaySetting2;
    if (carPlaySetting2)
    {
      [(BBSectionInfo *)self setCarPlaySetting:carPlaySetting2];
    }
  }

  remoteNotificationsSetting = [(BBSectionInfo *)self remoteNotificationsSetting];
  remoteNotificationsSetting2 = [infoCopy remoteNotificationsSetting];
  if (remoteNotificationsSetting)
  {
    v37 = ((*&v14 & 0x10000) == 0) & HIWORD(suppressedSettings);
  }

  else
  {
    v37 = 1;
  }

  if (v37 == 1)
  {
    v36 = remoteNotificationsSetting2;
    if (remoteNotificationsSetting2)
    {
      [(BBSectionInfo *)self setRemoteNotificationsSetting:remoteNotificationsSetting2];
    }
  }

  announceSetting = [(BBSectionInfo *)self announceSetting];
  announceSetting2 = [infoCopy announceSetting];
  if (!announceSetting)
  {
    v40 = announceSetting2;
    if (announceSetting2)
    {
      [(BBSectionInfo *)self setAnnounceSetting:announceSetting2];
    }
  }

  criticalAlertSetting = [(BBSectionInfo *)self criticalAlertSetting];
  criticalAlertSetting2 = [infoCopy criticalAlertSetting];
  if (!criticalAlertSetting)
  {
    v43 = criticalAlertSetting2;
    if (criticalAlertSetting2)
    {
      [(BBSectionInfo *)self setCriticalAlertSetting:criticalAlertSetting2];
    }
  }

  timeSensitiveSetting = [(BBSectionInfo *)self timeSensitiveSetting];
  timeSensitiveSetting2 = [infoCopy timeSensitiveSetting];
  if (!timeSensitiveSetting)
  {
    v46 = timeSensitiveSetting2;
    if (timeSensitiveSetting2)
    {
      [(BBSectionInfo *)self setTimeSensitiveSetting:timeSensitiveSetting2];
    }
  }

  directMessagesSetting = [(BBSectionInfo *)self directMessagesSetting];
  directMessagesSetting2 = [infoCopy directMessagesSetting];
  if (!directMessagesSetting)
  {
    v49 = directMessagesSetting2;
    if (directMessagesSetting2)
    {
      [(BBSectionInfo *)self setDirectMessagesSetting:directMessagesSetting2];
    }
  }

  summarizationSetting = [(BBSectionInfo *)self summarizationSetting];
  summarizationSetting2 = [infoCopy summarizationSetting];
  if (!summarizationSetting)
  {
    v52 = summarizationSetting2;
    if (summarizationSetting2)
    {
      [(BBSectionInfo *)self setSummarizationSetting:summarizationSetting2];
    }
  }

  prioritizationSetting = [(BBSectionInfo *)self prioritizationSetting];
  prioritizationSetting2 = [infoCopy prioritizationSetting];
  if (!prioritizationSetting)
  {
    v55 = prioritizationSetting2;
    if (prioritizationSetting2)
    {
      [(BBSectionInfo *)self setPrioritizationSetting:prioritizationSetting2];
    }
  }

  if (![(BBSectionInfo *)self showsCustomSettingsLink])
  {
    -[BBSectionInfo setShowsCustomSettingsLink:](self, "setShowsCustomSettingsLink:", [infoCopy showsCustomSettingsLink]);
  }

  parentSection = [(BBSectionInfo *)self parentSection];
  if (!parentSection || (suppressedSettings & 0x23) != 0)
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

  -[BBSectionInfo setSuppressFromSettings:](self, "setSuppressFromSettings:", [infoCopy suppressFromSettings]);
  -[BBSectionInfo setSuppressedSettings:](self, "setSuppressedSettings:", [infoCopy suppressedSettings]);
  -[BBSectionInfo setSectionType:](self, "setSectionType:", [infoCopy sectionType]);
  -[BBSectionInfo setIsAppClip:](self, "setIsAppClip:", [infoCopy isAppClip]);
  -[BBSectionInfo setSectionCategory:](self, "setSectionCategory:", [infoCopy sectionCategory]);
  -[BBSectionInfo setSubsectionPriority:](self, "setSubsectionPriority:", [infoCopy subsectionPriority]);
  -[BBSectionInfo setVersion:](self, "setVersion:", [infoCopy version]);
  appName = [infoCopy appName];
  [(BBSectionInfo *)self setAppName:appName];

  displayName = [infoCopy displayName];
  [(BBSectionInfo *)self setDisplayName:displayName];

  icon = [infoCopy icon];
  [(BBSectionInfo *)self setIcon:icon];

  -[BBSectionInfo setIsRestricted:](self, "setIsRestricted:", [infoCopy isRestricted]);
  customSettingsBundle = [infoCopy customSettingsBundle];
  [(BBSectionInfo *)self setCustomSettingsBundle:customSettingsBundle];

  customSettingsDetailControllerClass = [infoCopy customSettingsDetailControllerClass];
  [(BBSectionInfo *)self setCustomSettingsDetailControllerClass:customSettingsDetailControllerClass];

  v62 = *MEMORY[0x277D85DE8];
}

- (void)queryAndUseManagedSettings
{
  sectionID = [(BBSectionInfo *)self sectionID];
  [(BBSectionInfo *)self queryAndUseManagedSettingsForSectionID:sectionID];
}

- (void)queryAndUseManagedSettingsForSectionID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [BBSectionInfoSettings sectionInfoSettingsForManagedBundleID:dCopy];
  if (v5)
  {
    v6 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Managed settings found for section %{public}@", &v11, 0xCu);
    }
  }

  [(BBSectionInfo *)self setManagedSectionInfoSettings:v5];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [mEMORY[0x277D262A0] isNotificationsModificationAllowedForBundleID:dCopy];

  if ((v8 & 1) == 0)
  {
    v9 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "Modification not allowed for section %{public}@", &v11, 0xCu);
    }
  }

  [(BBSectionInfo *)self setIsModificationAllowed:v8 ^ 1u];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setManagedSectionInfoSettings:(id)settings
{
  v18 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = [settingsCopy copy];
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

        [*(*(&v13 + 1) + 8 * v11++) setManagedSectionInfoSettings:{settingsCopy, v13}];
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
  readableSettings = [(BBSectionInfo *)self readableSettings];
  authorizationExpirationDate = [readableSettings authorizationExpirationDate];

  return authorizationExpirationDate;
}

- (void)setAuthorizationExpirationDate:(id)date
{
  dateCopy = date;
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setAuthorizationExpirationDate:dateCopy];
}

- (void)setAuthorizationStatus:(int64_t)status
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setAuthorizationStatus:status];
}

- (NSDate)lastUserGrantedAuthorizationDate
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  lastUserGrantedAuthorizationDate = [readableSettings lastUserGrantedAuthorizationDate];

  return lastUserGrantedAuthorizationDate;
}

- (void)setLastUserGrantedAuthorizationDate:(id)date
{
  dateCopy = date;
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setLastUserGrantedAuthorizationDate:dateCopy];
}

- (void)setMuteAssertion:(id)assertion
{
  assertionCopy = assertion;
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  [sectionInfoSettings setMuteAssertion:assertionCopy];
}

- (void)setNotificationCenterSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setNotificationCenterSetting:setting];
}

- (BOOL)showsInNotificationCenter
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  showsInNotificationCenter = [readableSettings showsInNotificationCenter];

  return showsInNotificationCenter;
}

- (void)setLockScreenSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setLockScreenSetting:setting];
}

- (BOOL)showsInLockScreen
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  showsInLockScreen = [readableSettings showsInLockScreen];

  return showsInLockScreen;
}

- (void)setAlertType:(unint64_t)type
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setAlertType:type];
}

- (void)setPushSettings:(unint64_t)settings
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setPushSettings:settings];
}

- (void)setCarPlaySetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setCarPlaySetting:setting];
}

- (void)setRemoteNotificationsSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setRemoteNotificationsSetting:setting];
}

- (void)setSpokenNotificationSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setSpokenNotificationSetting:setting];
}

- (void)setCriticalAlertSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setCriticalAlertSetting:setting];
}

- (void)setTimeSensitiveSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setTimeSensitiveSetting:setting];
}

- (BOOL)hasUserConfiguredTimeSensitiveSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  hasUserConfiguredTimeSensitiveSetting = [readableSettings hasUserConfiguredTimeSensitiveSetting];

  return hasUserConfiguredTimeSensitiveSetting;
}

- (void)setBulletinGroupingSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setBulletinGroupingSetting:setting];
}

- (void)setAnnounceSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setAnnounceSetting:setting];
}

- (void)setScheduledDeliverySetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setScheduledDeliverySetting:setting];
}

- (void)setDirectMessagesSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setDirectMessagesSetting:setting];
}

- (BOOL)hasUserConfiguredDirectMessagesSetting
{
  readableSettings = [(BBSectionInfo *)self readableSettings];
  hasUserConfiguredDirectMessagesSetting = [readableSettings hasUserConfiguredDirectMessagesSetting];

  return hasUserConfiguredDirectMessagesSetting;
}

- (void)setContentPreviewSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setContentPreviewSetting:setting];
}

- (void)setSummarizationSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setSummarizationSetting:setting];
}

- (void)setPrioritizationSetting:(int64_t)setting
{
  writableSettings = [(BBSectionInfo *)self writableSettings];
  [writableSettings setPrioritizationSetting:setting];
}

- (BOOL)showsMessagePreview
{
  sectionInfoSettings = [(BBSectionInfo *)self sectionInfoSettings];
  showsMessagePreview = [sectionInfoSettings showsMessagePreview];

  return showsMessagePreview;
}

- (void)_addSubsection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBSectionInfo.m" lineNumber:101 description:@"a subsection cannot have a subsection"];
}

@end