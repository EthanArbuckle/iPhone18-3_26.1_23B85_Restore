@interface BLTPBSectionInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)requestWithKeypaths:(id)keypaths;
- (int)StringAsGroupingSetting:(id)setting;
- (int)StringAsLockScreenSetting:(id)setting;
- (int)StringAsNotificationCenterSetting:(id)setting;
- (int)StringAsSpokenNotificationSetting:(id)setting;
- (int)groupingSetting;
- (int)lockScreenSetting;
- (int)notificationCenterSetting;
- (int)spokenNotificationSetting;
- (unint64_t)hash;
- (void)addSubsections:(id)subsections;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAlertType:(BOOL)type;
- (void)setHasAllowsNotifications:(BOOL)notifications;
- (void)setHasAuthorizationStatus:(BOOL)status;
- (void)setHasCriticalAlertSetting:(BOOL)setting;
- (void)setHasDisplaysCriticalBulletinsLegacy:(BOOL)legacy;
- (void)setHasExcludeFromBulletinBoard:(BOOL)board;
- (void)setHasGroupingSetting:(BOOL)setting;
- (void)setHasIconsStripped:(BOOL)stripped;
- (void)setHasLastUserGrantedAuthorizationDate:(BOOL)date;
- (void)setHasLockScreenSetting:(BOOL)setting;
- (void)setHasNotificationCenterLimit:(BOOL)limit;
- (void)setHasNotificationCenterSetting:(BOOL)setting;
- (void)setHasPhoneAllowsNotifications:(BOOL)notifications;
- (void)setHasPhoneAuthorizationStatus:(BOOL)status;
- (void)setHasPushSettings:(BOOL)settings;
- (void)setHasSectionCategory:(BOOL)category;
- (void)setHasSectionType:(BOOL)type;
- (void)setHasShowsInLockScreen:(BOOL)screen;
- (void)setHasShowsInNotificationCenter:(BOOL)center;
- (void)setHasShowsMessagePreview:(BOOL)preview;
- (void)setHasShowsOnExternalDevices:(BOOL)devices;
- (void)setHasSpokenNotificationSetting:(BOOL)setting;
- (void)setHasSubsectionPriority:(BOOL)priority;
- (void)setHasSuppressFromSettings:(BOOL)settings;
- (void)setHasSuppressedSettings:(BOOL)settings;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSectionInfo

- (id)requestWithKeypaths:(id)keypaths
{
  v20 = *MEMORY[0x277D85DE8];
  keypathsCopy = keypaths;
  v5 = objc_alloc_init(BLTPBSetSectionInfoRequest);
  [(BLTPBSetSectionInfoRequest *)v5 setSectionInfo:self];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = keypathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BLTPBSetSectionInfoRequest *)v5 addKeypaths:*(*(&v15 + 1) + 8 * i), v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  icon = [(BLTPBSectionInfo *)self icon];

  if (icon)
  {
    v12 = [(BLTPBSectionInfo *)self copy];
    [v12 setIcon:0];
    [v12 setIconsStripped:1];
    [(BLTPBSetSectionInfoRequest *)v5 setSectionInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setHasSectionType:(BOOL)type
{
  if (type)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasSectionCategory:(BOOL)category
{
  if (category)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSuppressFromSettings:(BOOL)settings
{
  if (settings)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasShowsInNotificationCenter:(BOOL)center
{
  if (center)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasShowsInLockScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasShowsOnExternalDevices:(BOOL)devices
{
  if (devices)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasNotificationCenterLimit:(BOOL)limit
{
  if (limit)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasPushSettings:(BOOL)settings
{
  if (settings)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasAlertType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasShowsMessagePreview:(BOOL)preview
{
  if (preview)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasAllowsNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasSuppressedSettings:(BOOL)settings
{
  if (settings)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasDisplaysCriticalBulletinsLegacy:(BOOL)legacy
{
  if (legacy)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)addSubsections:(id)subsections
{
  subsectionsCopy = subsections;
  subsections = self->_subsections;
  v8 = subsectionsCopy;
  if (!subsections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subsections;
    self->_subsections = v6;

    subsectionsCopy = v8;
    subsections = self->_subsections;
  }

  [(NSMutableArray *)subsections addObject:subsectionsCopy];
}

- (void)setHasSubsectionPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasIconsStripped:(BOOL)stripped
{
  if (stripped)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasPhoneAllowsNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasCriticalAlertSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (int)groupingSetting
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_groupingSetting;
  }

  else
  {
    return 0;
  }
}

- (void)setHasGroupingSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)StringAsGroupingSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([settingCopy isEqualToString:@"Section"])
  {
    v4 = 1;
  }

  else if ([settingCopy isEqualToString:@"Off"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasExcludeFromBulletinBoard:(BOOL)board
{
  if (board)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasAuthorizationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasPhoneAuthorizationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (int)lockScreenSetting
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_lockScreenSetting;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLockScreenSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)StringAsLockScreenSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy isEqualToString:@"NotSupported"])
  {
    v4 = 0;
  }

  else if ([settingCopy isEqualToString:@"Disabled"])
  {
    v4 = 1;
  }

  else if ([settingCopy isEqualToString:@"Enabled"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)notificationCenterSetting
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_notificationCenterSetting;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNotificationCenterSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)StringAsNotificationCenterSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy isEqualToString:@"NotSupported"])
  {
    v4 = 0;
  }

  else if ([settingCopy isEqualToString:@"Disabled"])
  {
    v4 = 1;
  }

  else if ([settingCopy isEqualToString:@"Enabled"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)spokenNotificationSetting
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_spokenNotificationSetting;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSpokenNotificationSetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (int)StringAsSpokenNotificationSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy isEqualToString:@"NotSupported"])
  {
    v4 = 0;
  }

  else if ([settingCopy isEqualToString:@"Disabled"])
  {
    v4 = 1;
  }

  else if ([settingCopy isEqualToString:@"Enabled"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLastUserGrantedAuthorizationDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSectionInfo;
  v4 = [(BLTPBSectionInfo *)&v8 description];
  dictionaryRepresentation = [(BLTPBSectionInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v65 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sectionID = self->_sectionID;
  if (sectionID)
  {
    [dictionary setObject:sectionID forKey:@"sectionID"];
  }

  subsectionID = self->_subsectionID;
  if (subsectionID)
  {
    [v4 setObject:subsectionID forKey:@"subsectionID"];
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInt:self->_sectionType];
    [v4 setObject:v26 forKey:@"sectionType"];

    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_7:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_54;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_sectionCategory];
  [v4 setObject:v27 forKey:@"sectionCategory"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_suppressFromSettings];
  [v4 setObject:v28 forKey:@"suppressFromSettings"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_showsInNotificationCenter];
  [v4 setObject:v29 forKey:@"showsInNotificationCenter"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_showsInLockScreen];
  [v4 setObject:v30 forKey:@"showsInLockScreen"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_showsOnExternalDevices];
  [v4 setObject:v31 forKey:@"showsOnExternalDevices"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_notificationCenterLimit];
  [v4 setObject:v32 forKey:@"notificationCenterLimit"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_pushSettings];
  [v4 setObject:v33 forKey:@"pushSettings"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_alertType];
  [v4 setObject:v34 forKey:@"alertType"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_61:
  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_showsMessagePreview];
  [v4 setObject:v35 forKey:@"showsMessagePreview"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_62:
  v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsNotifications];
  [v4 setObject:v36 forKey:@"allowsNotifications"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_17:
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_suppressedSettings];
    [v4 setObject:v8 forKey:@"suppressedSettings"];
  }

LABEL_18:
  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_displaysCriticalBulletinsLegacy];
    [v4 setObject:v10 forKey:@"displaysCriticalBulletinsLegacy"];
  }

  if ([(NSMutableArray *)self->_subsections count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_subsections, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = self->_subsections;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v61;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v60 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"subsections"];
  }

  v18 = self->_has;
  if ((*&v18 & 0x2000) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_subsectionPriority];
    [v4 setObject:v19 forKey:@"subsectionPriority"];

    v18 = self->_has;
  }

  if ((*&v18 & 0x8000) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [v4 setObject:v20 forKey:@"version"];
  }

  factorySectionID = self->_factorySectionID;
  if (factorySectionID)
  {
    [v4 setObject:factorySectionID forKey:@"factorySectionID"];
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID)
  {
    [v4 setObject:universalSectionID forKey:@"universalSectionID"];
  }

  icon = self->_icon;
  if (icon)
  {
    dictionaryRepresentation2 = [(BLTPBSectionIcon *)icon dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"icon"];
  }

  v25 = self->_has;
  if ((*&v25 & 0x100000) != 0)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_iconsStripped];
    [v4 setObject:v37 forKey:@"iconsStripped"];

    v25 = self->_has;
    if ((*&v25 & 0x200000) == 0)
    {
LABEL_43:
      if ((*&v25 & 0x20000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v25 & 0x200000) == 0)
  {
    goto LABEL_43;
  }

  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_phoneAllowsNotifications];
  [v4 setObject:v38 forKey:@"phoneAllowsNotifications"];

  v25 = self->_has;
  if ((*&v25 & 0x20000) == 0)
  {
LABEL_44:
    if ((*&v25 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_67;
  }

LABEL_66:
  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_criticalAlertSetting];
  [v4 setObject:v39 forKey:@"criticalAlertSetting"];

  v25 = self->_has;
  if ((*&v25 & 0x10) == 0)
  {
LABEL_45:
    if ((*&v25 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_71;
  }

LABEL_67:
  groupingSetting = self->_groupingSetting;
  if (groupingSetting >= 3)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_groupingSetting];
  }

  else
  {
    v41 = off_278D32518[groupingSetting];
  }

  [v4 setObject:v41 forKey:@"groupingSetting"];

  v25 = self->_has;
  if ((*&v25 & 0x80000) == 0)
  {
LABEL_46:
    if ((*&v25 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_72;
  }

LABEL_71:
  v42 = [MEMORY[0x277CCABB0] numberWithBool:self->_excludeFromBulletinBoard];
  [v4 setObject:v42 forKey:@"excludeFromBulletinBoard"];

  v25 = self->_has;
  if ((*&v25 & 8) == 0)
  {
LABEL_47:
    if ((*&v25 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_73;
  }

LABEL_72:
  v43 = [MEMORY[0x277CCABB0] numberWithInt:self->_authorizationStatus];
  [v4 setObject:v43 forKey:@"authorizationStatus"];

  v25 = self->_has;
  if ((*&v25 & 0x100) == 0)
  {
LABEL_48:
    if ((*&v25 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_74;
  }

LABEL_73:
  v44 = [MEMORY[0x277CCABB0] numberWithInt:self->_phoneAuthorizationStatus];
  [v4 setObject:v44 forKey:@"phoneAuthorizationStatus"];

  v25 = self->_has;
  if ((*&v25 & 0x20) == 0)
  {
LABEL_49:
    if ((*&v25 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_78;
  }

LABEL_74:
  lockScreenSetting = self->_lockScreenSetting;
  if (lockScreenSetting >= 3)
  {
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_lockScreenSetting];
  }

  else
  {
    v46 = off_278D32530[lockScreenSetting];
  }

  [v4 setObject:v46 forKey:@"lockScreenSetting"];

  v25 = self->_has;
  if ((*&v25 & 0x80) == 0)
  {
LABEL_50:
    if ((*&v25 & 0x1000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_82;
  }

LABEL_78:
  notificationCenterSetting = self->_notificationCenterSetting;
  if (notificationCenterSetting >= 3)
  {
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_notificationCenterSetting];
  }

  else
  {
    v48 = off_278D32530[notificationCenterSetting];
  }

  [v4 setObject:v48 forKey:@"notificationCenterSetting"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_82:
    spokenNotificationSetting = self->_spokenNotificationSetting;
    if (spokenNotificationSetting >= 3)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_spokenNotificationSetting];
    }

    else
    {
      v50 = off_278D32530[spokenNotificationSetting];
    }

    [v4 setObject:v50 forKey:@"spokenNotificationSetting"];
  }

LABEL_86:
  watchSectionID = self->_watchSectionID;
  if (watchSectionID)
  {
    [v4 setObject:watchSectionID forKey:@"watchSectionID"];
  }

  v52 = self->_has;
  if (*&v52)
  {
    v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_authorizationExpirationDate];
    [v4 setObject:v53 forKey:@"authorizationExpirationDate"];

    v52 = self->_has;
  }

  if ((*&v52 & 2) != 0)
  {
    v54 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUserGrantedAuthorizationDate];
    [v4 setObject:v54 forKey:@"lastUserGrantedAuthorizationDate"];
  }

  sectionInfoSettings = self->_sectionInfoSettings;
  if (sectionInfoSettings)
  {
    dictionaryRepresentation3 = [(BLTPBSectionInfoSettings *)sectionInfoSettings dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"sectionInfoSettings"];
  }

  v57 = v4;

  v58 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)writeTo:(id)to
{
  v48 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subsectionID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    sectionType = self->_sectionType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_7:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  sectionCategory = self->_sectionCategory;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  suppressFromSettings = self->_suppressFromSettings;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_63;
  }

LABEL_62:
  showsInNotificationCenter = self->_showsInNotificationCenter;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  showsInLockScreen = self->_showsInLockScreen;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

LABEL_64:
  showsOnExternalDevices = self->_showsOnExternalDevices;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_65:
  notificationCenterLimit = self->_notificationCenterLimit;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_67;
  }

LABEL_66:
  pushSettings = self->_pushSettings;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_67:
  alertType = self->_alertType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_69;
  }

LABEL_68:
  showsMessagePreview = self->_showsMessagePreview;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_69:
  allowsNotifications = self->_allowsNotifications;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_17:
    suppressedSettings = self->_suppressedSettings;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    displaysCriticalBulletinsLegacy = self->_displaysCriticalBulletinsLegacy;
    PBDataWriterWriteBOOLField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = self->_subsections;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((*&v14 & 0x2000) != 0)
  {
    subsectionPriority = self->_subsectionPriority;
    PBDataWriterWriteInt32Field();
    v14 = self->_has;
  }

  if ((*&v14 & 0x8000) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_factorySectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_universalSectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = self->_has;
  if ((*&v17 & 0x100000) != 0)
  {
    iconsStripped = self->_iconsStripped;
    PBDataWriterWriteBOOLField();
    v17 = self->_has;
    if ((*&v17 & 0x200000) == 0)
    {
LABEL_41:
      if ((*&v17 & 0x20000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v17 & 0x200000) == 0)
  {
    goto LABEL_41;
  }

  phoneAllowsNotifications = self->_phoneAllowsNotifications;
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x20000) == 0)
  {
LABEL_42:
    if ((*&v17 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  criticalAlertSetting = self->_criticalAlertSetting;
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 0x10) == 0)
  {
LABEL_43:
    if ((*&v17 & 0x80000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  groupingSetting = self->_groupingSetting;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x80000) == 0)
  {
LABEL_44:
    if ((*&v17 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  excludeFromBulletinBoard = self->_excludeFromBulletinBoard;
  PBDataWriterWriteBOOLField();
  v17 = self->_has;
  if ((*&v17 & 8) == 0)
  {
LABEL_45:
    if ((*&v17 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  authorizationStatus = self->_authorizationStatus;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x100) == 0)
  {
LABEL_46:
    if ((*&v17 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_77:
  phoneAuthorizationStatus = self->_phoneAuthorizationStatus;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x20) == 0)
  {
LABEL_47:
    if ((*&v17 & 0x80) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_79;
  }

LABEL_78:
  lockScreenSetting = self->_lockScreenSetting;
  PBDataWriterWriteInt32Field();
  v17 = self->_has;
  if ((*&v17 & 0x80) == 0)
  {
LABEL_48:
    if ((*&v17 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_79:
  notificationCenterSetting = self->_notificationCenterSetting;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_49:
    spokenNotificationSetting = self->_spokenNotificationSetting;
    PBDataWriterWriteInt32Field();
  }

LABEL_50:
  if (self->_watchSectionID)
  {
    PBDataWriterWriteStringField();
  }

  v19 = self->_has;
  if (*&v19)
  {
    authorizationExpirationDate = self->_authorizationExpirationDate;
    PBDataWriterWriteDoubleField();
    v19 = self->_has;
  }

  if ((*&v19 & 2) != 0)
  {
    lastUserGrantedAuthorizationDate = self->_lastUserGrantedAuthorizationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_sectionInfoSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_sectionID)
  {
    [toCopy setSectionID:?];
    toCopy = v14;
  }

  if (self->_subsectionID)
  {
    [v14 setSubsectionID:?];
    toCopy = v14;
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    toCopy[26] = self->_sectionType;
    toCopy[45] |= 0x800u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_7:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_60;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  toCopy[21] = self->_sectionCategory;
  toCopy[45] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 178) = self->_suppressFromSettings;
  toCopy[45] |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(toCopy + 175) = self->_showsInNotificationCenter;
  toCopy[45] |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 174) = self->_showsInLockScreen;
  toCopy[45] |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 177) = self->_showsOnExternalDevices;
  toCopy[45] |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  toCopy[17] = self->_notificationCenterLimit;
  toCopy[45] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  toCopy[20] = self->_pushSettings;
  toCopy[45] |= 0x200u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  toCopy[6] = self->_alertType;
  toCopy[45] |= 4u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 176) = self->_showsMessagePreview;
  toCopy[45] |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_68:
  *(toCopy + 168) = self->_allowsNotifications;
  toCopy[45] |= 0x10000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_17:
    toCopy[34] = self->_suppressedSettings;
    toCopy[45] |= 0x4000u;
  }

LABEL_18:
  if (self->_displayName)
  {
    [v14 setDisplayName:?];
    toCopy = v14;
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(toCopy + 170) = self->_displaysCriticalBulletinsLegacy;
    toCopy[45] |= 0x40000u;
  }

  if ([(BLTPBSectionInfo *)self subsectionsCount])
  {
    [v14 clearSubsections];
    subsectionsCount = [(BLTPBSectionInfo *)self subsectionsCount];
    if (subsectionsCount)
    {
      v7 = subsectionsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(BLTPBSectionInfo *)self subsectionsAtIndex:i];
        [v14 addSubsections:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v14;
  if ((*&v10 & 0x2000) != 0)
  {
    v14[30] = self->_subsectionPriority;
    v14[45] |= 0x2000u;
    v10 = self->_has;
  }

  if ((*&v10 & 0x8000) != 0)
  {
    v14[38] = self->_version;
    v14[45] |= 0x8000u;
  }

  if (self->_factorySectionID)
  {
    [v14 setFactorySectionID:?];
    v11 = v14;
  }

  if (self->_universalSectionID)
  {
    [v14 setUniversalSectionID:?];
    v11 = v14;
  }

  if (self->_icon)
  {
    [v14 setIcon:?];
    v11 = v14;
  }

  v12 = self->_has;
  if ((*&v12 & 0x100000) != 0)
  {
    *(v11 + 172) = self->_iconsStripped;
    v11[45] |= 0x100000u;
    v12 = self->_has;
    if ((*&v12 & 0x200000) == 0)
    {
LABEL_38:
      if ((*&v12 & 0x20000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v12 & 0x200000) == 0)
  {
    goto LABEL_38;
  }

  *(v11 + 173) = self->_phoneAllowsNotifications;
  v11[45] |= 0x200000u;
  v12 = self->_has;
  if ((*&v12 & 0x20000) == 0)
  {
LABEL_39:
    if ((*&v12 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v11 + 169) = self->_criticalAlertSetting;
  v11[45] |= 0x20000u;
  v12 = self->_has;
  if ((*&v12 & 0x10) == 0)
  {
LABEL_40:
    if ((*&v12 & 0x80000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_74;
  }

LABEL_73:
  v11[12] = self->_groupingSetting;
  v11[45] |= 0x10u;
  v12 = self->_has;
  if ((*&v12 & 0x80000) == 0)
  {
LABEL_41:
    if ((*&v12 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v11 + 171) = self->_excludeFromBulletinBoard;
  v11[45] |= 0x80000u;
  v12 = self->_has;
  if ((*&v12 & 8) == 0)
  {
LABEL_42:
    if ((*&v12 & 0x100) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_76;
  }

LABEL_75:
  v11[7] = self->_authorizationStatus;
  v11[45] |= 8u;
  v12 = self->_has;
  if ((*&v12 & 0x100) == 0)
  {
LABEL_43:
    if ((*&v12 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_77;
  }

LABEL_76:
  v11[19] = self->_phoneAuthorizationStatus;
  v11[45] |= 0x100u;
  v12 = self->_has;
  if ((*&v12 & 0x20) == 0)
  {
LABEL_44:
    if ((*&v12 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_78;
  }

LABEL_77:
  v11[16] = self->_lockScreenSetting;
  v11[45] |= 0x20u;
  v12 = self->_has;
  if ((*&v12 & 0x80) == 0)
  {
LABEL_45:
    if ((*&v12 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_78:
  v11[18] = self->_notificationCenterSetting;
  v11[45] |= 0x80u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_46:
    v11[27] = self->_spokenNotificationSetting;
    v11[45] |= 0x1000u;
  }

LABEL_47:
  if (self->_watchSectionID)
  {
    [v14 setWatchSectionID:?];
    v11 = v14;
  }

  v13 = self->_has;
  if (*&v13)
  {
    *(v11 + 1) = *&self->_authorizationExpirationDate;
    v11[45] |= 1u;
    v13 = self->_has;
  }

  if ((*&v13 & 2) != 0)
  {
    *(v11 + 2) = *&self->_lastUserGrantedAuthorizationDate;
    v11[45] |= 2u;
  }

  if (self->_sectionInfoSettings)
  {
    [v14 setSectionInfoSettings:?];
    v11 = v14;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sectionID copyWithZone:zone];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  v8 = [(NSString *)self->_subsectionID copyWithZone:zone];
  v9 = *(v5 + 112);
  *(v5 + 112) = v8;

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(v5 + 104) = self->_sectionType;
    *(v5 + 180) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 84) = self->_sectionCategory;
  *(v5 + 180) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 178) = self->_suppressFromSettings;
  *(v5 + 180) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 175) = self->_showsInNotificationCenter;
  *(v5 + 180) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 174) = self->_showsInLockScreen;
  *(v5 + 180) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 177) = self->_showsOnExternalDevices;
  *(v5 + 180) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 68) = self->_notificationCenterLimit;
  *(v5 + 180) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 80) = self->_pushSettings;
  *(v5 + 180) |= 0x200u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 24) = self->_alertType;
  *(v5 + 180) |= 4u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 176) = self->_showsMessagePreview;
  *(v5 + 180) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_53:
  *(v5 + 168) = self->_allowsNotifications;
  *(v5 + 180) |= 0x10000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_13:
    *(v5 + 136) = self->_suppressedSettings;
    *(v5 + 180) |= 0x4000u;
  }

LABEL_14:
  v11 = [(NSString *)self->_displayName copyWithZone:zone];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v5 + 170) = self->_displaysCriticalBulletinsLegacy;
    *(v5 + 180) |= 0x40000u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = self->_subsections;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v34 + 1) + 8 * v17) copyWithZone:{zone, v34}];
        [v5 addSubsections:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((*&v19 & 0x2000) != 0)
  {
    *(v5 + 120) = self->_subsectionPriority;
    *(v5 + 180) |= 0x2000u;
    v19 = self->_has;
  }

  if ((*&v19 & 0x8000) != 0)
  {
    *(v5 + 152) = self->_version;
    *(v5 + 180) |= 0x8000u;
  }

  v20 = [(NSString *)self->_factorySectionID copyWithZone:zone, v34];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(NSString *)self->_universalSectionID copyWithZone:zone];
  v23 = *(v5 + 144);
  *(v5 + 144) = v22;

  v24 = [(BLTPBSectionIcon *)self->_icon copyWithZone:zone];
  v25 = *(v5 + 56);
  *(v5 + 56) = v24;

  v26 = self->_has;
  if ((*&v26 & 0x100000) != 0)
  {
    *(v5 + 172) = self->_iconsStripped;
    *(v5 + 180) |= 0x100000u;
    v26 = self->_has;
    if ((*&v26 & 0x200000) == 0)
    {
LABEL_29:
      if ((*&v26 & 0x20000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v26 & 0x200000) == 0)
  {
    goto LABEL_29;
  }

  *(v5 + 173) = self->_phoneAllowsNotifications;
  *(v5 + 180) |= 0x200000u;
  v26 = self->_has;
  if ((*&v26 & 0x20000) == 0)
  {
LABEL_30:
    if ((*&v26 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 169) = self->_criticalAlertSetting;
  *(v5 + 180) |= 0x20000u;
  v26 = self->_has;
  if ((*&v26 & 0x10) == 0)
  {
LABEL_31:
    if ((*&v26 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 48) = self->_groupingSetting;
  *(v5 + 180) |= 0x10u;
  v26 = self->_has;
  if ((*&v26 & 0x80000) == 0)
  {
LABEL_32:
    if ((*&v26 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 171) = self->_excludeFromBulletinBoard;
  *(v5 + 180) |= 0x80000u;
  v26 = self->_has;
  if ((*&v26 & 8) == 0)
  {
LABEL_33:
    if ((*&v26 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 28) = self->_authorizationStatus;
  *(v5 + 180) |= 8u;
  v26 = self->_has;
  if ((*&v26 & 0x100) == 0)
  {
LABEL_34:
    if ((*&v26 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 76) = self->_phoneAuthorizationStatus;
  *(v5 + 180) |= 0x100u;
  v26 = self->_has;
  if ((*&v26 & 0x20) == 0)
  {
LABEL_35:
    if ((*&v26 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 64) = self->_lockScreenSetting;
  *(v5 + 180) |= 0x20u;
  v26 = self->_has;
  if ((*&v26 & 0x80) == 0)
  {
LABEL_36:
    if ((*&v26 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_63:
  *(v5 + 72) = self->_notificationCenterSetting;
  *(v5 + 180) |= 0x80u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_37:
    *(v5 + 108) = self->_spokenNotificationSetting;
    *(v5 + 180) |= 0x1000u;
  }

LABEL_38:
  v27 = [(NSString *)self->_watchSectionID copyWithZone:zone];
  v28 = *(v5 + 160);
  *(v5 + 160) = v27;

  v29 = self->_has;
  if (*&v29)
  {
    *(v5 + 8) = self->_authorizationExpirationDate;
    *(v5 + 180) |= 1u;
    v29 = self->_has;
  }

  if ((*&v29 & 2) != 0)
  {
    *(v5 + 16) = self->_lastUserGrantedAuthorizationDate;
    *(v5 + 180) |= 2u;
  }

  v30 = [(BLTPBSectionInfoSettings *)self->_sectionInfoSettings copyWithZone:zone];
  v31 = *(v5 + 96);
  *(v5 + 96) = v30;

  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_191;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 11))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_191;
    }
  }

  subsectionID = self->_subsectionID;
  if (subsectionID | *(equalCopy + 14))
  {
    if (![(NSString *)subsectionID isEqual:?])
    {
      goto LABEL_191;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 45);
  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_sectionType != *(equalCopy + 26))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_sectionCategory != *(equalCopy + 21))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_191;
    }

    v9 = *(equalCopy + 178);
    if (self->_suppressFromSettings)
    {
      if ((*(equalCopy + 178) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 178))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_191;
    }

    v10 = *(equalCopy + 175);
    if (self->_showsInNotificationCenter)
    {
      if ((*(equalCopy + 175) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 175))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_191;
    }

    v11 = *(equalCopy + 174);
    if (self->_showsInLockScreen)
    {
      if ((*(equalCopy + 174) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 174))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_191;
    }

    v12 = *(equalCopy + 177);
    if (self->_showsOnExternalDevices)
    {
      if ((*(equalCopy + 177) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 177))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_notificationCenterLimit != *(equalCopy + 17))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_pushSettings != *(equalCopy + 20))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_alertType != *(equalCopy + 6))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_191;
    }

    v13 = *(equalCopy + 176);
    if (self->_showsMessagePreview)
    {
      if ((*(equalCopy + 176) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 176))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_191;
    }

    v14 = *(equalCopy + 168);
    if (self->_allowsNotifications)
    {
      if ((*(equalCopy + 168) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 168))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_suppressedSettings != *(equalCopy + 34))
    {
      goto LABEL_191;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_191;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 4))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_191;
    }

    has = self->_has;
  }

  v16 = *(equalCopy + 45);
  if ((*&has & 0x40000) != 0)
  {
    if ((v16 & 0x40000) == 0)
    {
      goto LABEL_191;
    }

    v19 = *(equalCopy + 170);
    if (self->_displaysCriticalBulletinsLegacy)
    {
      if ((*(equalCopy + 170) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 170))
    {
      goto LABEL_191;
    }
  }

  else if ((v16 & 0x40000) != 0)
  {
    goto LABEL_191;
  }

  subsections = self->_subsections;
  if (subsections | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)subsections isEqual:?])
    {
      goto LABEL_191;
    }

    has = self->_has;
  }

  v18 = *(equalCopy + 45);
  if ((*&has & 0x2000) != 0)
  {
    if ((v18 & 0x2000) == 0 || self->_subsectionPriority != *(equalCopy + 30))
    {
      goto LABEL_191;
    }
  }

  else if ((v18 & 0x2000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v18 & 0x8000) == 0 || self->_version != *(equalCopy + 38))
    {
      goto LABEL_191;
    }
  }

  else if ((v18 & 0x8000) != 0)
  {
    goto LABEL_191;
  }

  factorySectionID = self->_factorySectionID;
  if (factorySectionID | *(equalCopy + 5) && ![(NSString *)factorySectionID isEqual:?])
  {
    goto LABEL_191;
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID | *(equalCopy + 18))
  {
    if (![(NSString *)universalSectionID isEqual:?])
    {
      goto LABEL_191;
    }
  }

  icon = self->_icon;
  if (icon | *(equalCopy + 7))
  {
    if (![(BLTPBSectionIcon *)icon isEqual:?])
    {
      goto LABEL_191;
    }
  }

  v23 = self->_has;
  v24 = *(equalCopy + 45);
  if ((*&v23 & 0x100000) != 0)
  {
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_191;
    }

    v25 = *(equalCopy + 172);
    if (self->_iconsStripped)
    {
      if ((*(equalCopy + 172) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 172))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x100000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x200000) != 0)
  {
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_191;
    }

    v26 = *(equalCopy + 173);
    if (self->_phoneAllowsNotifications)
    {
      if ((*(equalCopy + 173) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 173))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x200000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x20000) != 0)
  {
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_191;
    }

    v27 = *(equalCopy + 169);
    if (self->_criticalAlertSetting)
    {
      if ((*(equalCopy + 169) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 169))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x20000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x10) != 0)
  {
    if ((v24 & 0x10) == 0 || self->_groupingSetting != *(equalCopy + 12))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x10) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x80000) != 0)
  {
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_191;
    }

    v28 = *(equalCopy + 171);
    if (self->_excludeFromBulletinBoard)
    {
      if ((*(equalCopy + 171) & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if (*(equalCopy + 171))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x80000) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 8) != 0)
  {
    if ((v24 & 8) == 0 || self->_authorizationStatus != *(equalCopy + 7))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 8) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x100) != 0)
  {
    if ((v24 & 0x100) == 0 || self->_phoneAuthorizationStatus != *(equalCopy + 19))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x100) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x20) != 0)
  {
    if ((v24 & 0x20) == 0 || self->_lockScreenSetting != *(equalCopy + 16))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x20) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x80) != 0)
  {
    if ((v24 & 0x80) == 0 || self->_notificationCenterSetting != *(equalCopy + 18))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x80) != 0)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 0x1000) != 0)
  {
    if ((v24 & 0x1000) == 0 || self->_spokenNotificationSetting != *(equalCopy + 27))
    {
      goto LABEL_191;
    }
  }

  else if ((v24 & 0x1000) != 0)
  {
    goto LABEL_191;
  }

  watchSectionID = self->_watchSectionID;
  if (watchSectionID | *(equalCopy + 20))
  {
    if ([(NSString *)watchSectionID isEqual:?])
    {
      v23 = self->_has;
      goto LABEL_179;
    }

LABEL_191:
    v32 = 0;
    goto LABEL_192;
  }

LABEL_179:
  v30 = *(equalCopy + 45);
  if (*&v23)
  {
    if ((v30 & 1) == 0 || self->_authorizationExpirationDate != *(equalCopy + 1))
    {
      goto LABEL_191;
    }
  }

  else if (v30)
  {
    goto LABEL_191;
  }

  if ((*&v23 & 2) != 0)
  {
    if ((v30 & 2) == 0 || self->_lastUserGrantedAuthorizationDate != *(equalCopy + 2))
    {
      goto LABEL_191;
    }
  }

  else if ((v30 & 2) != 0)
  {
    goto LABEL_191;
  }

  sectionInfoSettings = self->_sectionInfoSettings;
  if (sectionInfoSettings | *(equalCopy + 12))
  {
    v32 = [(BLTPBSectionInfoSettings *)sectionInfoSettings isEqual:?];
  }

  else
  {
    v32 = 1;
  }

LABEL_192:

  return v32;
}

- (unint64_t)hash
{
  v51 = [(NSString *)self->_sectionID hash];
  v50 = [(NSString *)self->_subsectionID hash];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v49 = 2654435761 * self->_sectionType;
    if ((*&has & 0x400) != 0)
    {
LABEL_3:
      v48 = 2654435761 * self->_sectionCategory;
      if ((*&has & 0x4000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v49 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v48 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_4:
    v47 = 2654435761 * self->_suppressFromSettings;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v47 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_5:
    v46 = 2654435761 * self->_showsInNotificationCenter;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v46 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_6:
    v45 = 2654435761 * self->_showsInLockScreen;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v45 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_7:
    v44 = 2654435761 * self->_showsOnExternalDevices;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v44 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_8:
    v43 = 2654435761 * self->_notificationCenterLimit;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v43 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_9:
    v42 = 2654435761 * self->_pushSettings;
    if ((*&has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v42 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_10:
    v41 = 2654435761 * self->_alertType;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v41 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_11:
    v40 = 2654435761 * self->_showsMessagePreview;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v39 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v40 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v39 = 2654435761 * self->_allowsNotifications;
  if ((*&has & 0x4000) != 0)
  {
LABEL_13:
    v38 = 2654435761 * self->_suppressedSettings;
    goto LABEL_26;
  }

LABEL_25:
  v38 = 0;
LABEL_26:
  v37 = [(NSString *)self->_displayName hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v36 = 2654435761 * self->_displaysCriticalBulletinsLegacy;
  }

  else
  {
    v36 = 0;
  }

  v35 = [(NSMutableArray *)self->_subsections hash];
  v4 = self->_has;
  if ((*&v4 & 0x2000) != 0)
  {
    v34 = 2654435761 * self->_subsectionPriority;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v34 = 0;
    if ((*&v4 & 0x8000) != 0)
    {
LABEL_31:
      v33 = 2654435761 * self->_version;
      goto LABEL_34;
    }
  }

  v33 = 0;
LABEL_34:
  v32 = [(NSString *)self->_factorySectionID hash];
  v31 = [(NSString *)self->_universalSectionID hash];
  v30 = [(BLTPBSectionIcon *)self->_icon hash];
  v5 = self->_has;
  if ((*&v5 & 0x100000) != 0)
  {
    v29 = 2654435761 * self->_iconsStripped;
    if ((*&v5 & 0x200000) != 0)
    {
LABEL_36:
      v28 = 2654435761 * self->_phoneAllowsNotifications;
      if ((*&v5 & 0x20000) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v29 = 0;
    if ((*&v5 & 0x200000) != 0)
    {
      goto LABEL_36;
    }
  }

  v28 = 0;
  if ((*&v5 & 0x20000) != 0)
  {
LABEL_37:
    v26 = 2654435761 * self->_criticalAlertSetting;
    if ((*&v5 & 0x10) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_48;
  }

LABEL_47:
  v26 = 0;
  if ((*&v5 & 0x10) != 0)
  {
LABEL_38:
    v6 = 2654435761 * self->_groupingSetting;
    if ((*&v5 & 0x80000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6 = 0;
  if ((*&v5 & 0x80000) != 0)
  {
LABEL_39:
    v7 = 2654435761 * self->_excludeFromBulletinBoard;
    if ((*&v5 & 8) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_50;
  }

LABEL_49:
  v7 = 0;
  if ((*&v5 & 8) != 0)
  {
LABEL_40:
    v8 = 2654435761 * self->_authorizationStatus;
    if ((*&v5 & 0x100) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

LABEL_50:
  v8 = 0;
  if ((*&v5 & 0x100) != 0)
  {
LABEL_41:
    v9 = 2654435761 * self->_phoneAuthorizationStatus;
    if ((*&v5 & 0x20) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_52;
  }

LABEL_51:
  v9 = 0;
  if ((*&v5 & 0x20) != 0)
  {
LABEL_42:
    v10 = 2654435761 * self->_lockScreenSetting;
    if ((*&v5 & 0x80) != 0)
    {
      goto LABEL_43;
    }

LABEL_53:
    v11 = 0;
    if ((*&v5 & 0x1000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_52:
  v10 = 0;
  if ((*&v5 & 0x80) == 0)
  {
    goto LABEL_53;
  }

LABEL_43:
  v11 = 2654435761 * self->_notificationCenterSetting;
  if ((*&v5 & 0x1000) != 0)
  {
LABEL_44:
    v12 = 2654435761 * self->_spokenNotificationSetting;
    goto LABEL_55;
  }

LABEL_54:
  v12 = 0;
LABEL_55:
  v13 = [(NSString *)self->_watchSectionID hash];
  v16 = self->_has;
  if (*&v16)
  {
    authorizationExpirationDate = self->_authorizationExpirationDate;
    if (authorizationExpirationDate < 0.0)
    {
      authorizationExpirationDate = -authorizationExpirationDate;
    }

    *v14.i64 = floor(authorizationExpirationDate + 0.5);
    v19 = (authorizationExpirationDate - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v14 = vbslq_s8(vnegq_f64(v20), v15, v14);
    v17 = 2654435761u * *v14.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&v16 & 2) != 0)
  {
    lastUserGrantedAuthorizationDate = self->_lastUserGrantedAuthorizationDate;
    if (lastUserGrantedAuthorizationDate < 0.0)
    {
      lastUserGrantedAuthorizationDate = -lastUserGrantedAuthorizationDate;
    }

    *v14.i64 = floor(lastUserGrantedAuthorizationDate + 0.5);
    v23 = (lastUserGrantedAuthorizationDate - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v24), v15, v14).i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v17 ^ v21 ^ [(BLTPBSectionInfoSettings *)self->_sectionInfoSettings hash];
}

- (void)mergeFrom:(id)from
{
  v24 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 11))
  {
    [(BLTPBSectionInfo *)self setSectionID:?];
  }

  if (*(fromCopy + 14))
  {
    [(BLTPBSectionInfo *)self setSubsectionID:?];
  }

  v5 = *(fromCopy + 45);
  if ((v5 & 0x800) != 0)
  {
    self->_sectionType = *(fromCopy + 26);
    *&self->_has |= 0x800u;
    v5 = *(fromCopy + 45);
    if ((v5 & 0x400) == 0)
    {
LABEL_7:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_7;
  }

  self->_sectionCategory = *(fromCopy + 21);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_suppressFromSettings = *(fromCopy + 178);
  *&self->_has |= 0x4000000u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x800000) == 0)
  {
LABEL_9:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_showsInNotificationCenter = *(fromCopy + 175);
  *&self->_has |= 0x800000u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x400000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_showsInLockScreen = *(fromCopy + 174);
  *&self->_has |= 0x400000u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_showsOnExternalDevices = *(fromCopy + 177);
  *&self->_has |= 0x2000000u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_notificationCenterLimit = *(fromCopy + 17);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_pushSettings = *(fromCopy + 20);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 45);
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_alertType = *(fromCopy + 6);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_showsMessagePreview = *(fromCopy + 176);
  *&self->_has |= 0x1000000u;
  v5 = *(fromCopy + 45);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_50:
  self->_allowsNotifications = *(fromCopy + 168);
  *&self->_has |= 0x10000u;
  if ((*(fromCopy + 45) & 0x4000) != 0)
  {
LABEL_17:
    self->_suppressedSettings = *(fromCopy + 34);
    *&self->_has |= 0x4000u;
  }

LABEL_18:
  if (*(fromCopy + 4))
  {
    [(BLTPBSectionInfo *)self setDisplayName:?];
  }

  if ((*(fromCopy + 182) & 4) != 0)
  {
    self->_displaysCriticalBulletinsLegacy = *(fromCopy + 170);
    *&self->_has |= 0x40000u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = *(fromCopy + 16);
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BLTPBSectionInfo *)self addSubsections:*(*(&v19 + 1) + 8 * i), v19];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v11 = *(fromCopy + 45);
  if ((v11 & 0x2000) != 0)
  {
    self->_subsectionPriority = *(fromCopy + 30);
    *&self->_has |= 0x2000u;
    v11 = *(fromCopy + 45);
  }

  if ((v11 & 0x8000) != 0)
  {
    self->_version = *(fromCopy + 38);
    *&self->_has |= 0x8000u;
  }

  if (*(fromCopy + 5))
  {
    [(BLTPBSectionInfo *)self setFactorySectionID:?];
  }

  if (*(fromCopy + 18))
  {
    [(BLTPBSectionInfo *)self setUniversalSectionID:?];
  }

  icon = self->_icon;
  v13 = *(fromCopy + 7);
  if (icon)
  {
    if (v13)
    {
      [(BLTPBSectionIcon *)icon mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(BLTPBSectionInfo *)self setIcon:?];
  }

  v14 = *(fromCopy + 45);
  if ((v14 & 0x100000) != 0)
  {
    self->_iconsStripped = *(fromCopy + 172);
    *&self->_has |= 0x100000u;
    v14 = *(fromCopy + 45);
    if ((v14 & 0x200000) == 0)
    {
LABEL_56:
      if ((v14 & 0x20000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_76;
    }
  }

  else if ((v14 & 0x200000) == 0)
  {
    goto LABEL_56;
  }

  self->_phoneAllowsNotifications = *(fromCopy + 173);
  *&self->_has |= 0x200000u;
  v14 = *(fromCopy + 45);
  if ((v14 & 0x20000) == 0)
  {
LABEL_57:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_criticalAlertSetting = *(fromCopy + 169);
  *&self->_has |= 0x20000u;
  v14 = *(fromCopy + 45);
  if ((v14 & 0x10) == 0)
  {
LABEL_58:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_groupingSetting = *(fromCopy + 12);
  *&self->_has |= 0x10u;
  v14 = *(fromCopy + 45);
  if ((v14 & 0x80000) == 0)
  {
LABEL_59:
    if ((v14 & 8) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_excludeFromBulletinBoard = *(fromCopy + 171);
  *&self->_has |= 0x80000u;
  v14 = *(fromCopy + 45);
  if ((v14 & 8) == 0)
  {
LABEL_60:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_authorizationStatus = *(fromCopy + 7);
  *&self->_has |= 8u;
  v14 = *(fromCopy + 45);
  if ((v14 & 0x100) == 0)
  {
LABEL_61:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_phoneAuthorizationStatus = *(fromCopy + 19);
  *&self->_has |= 0x100u;
  v14 = *(fromCopy + 45);
  if ((v14 & 0x20) == 0)
  {
LABEL_62:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_lockScreenSetting = *(fromCopy + 16);
  *&self->_has |= 0x20u;
  v14 = *(fromCopy + 45);
  if ((v14 & 0x80) == 0)
  {
LABEL_63:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_82:
  self->_notificationCenterSetting = *(fromCopy + 18);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 45) & 0x1000) != 0)
  {
LABEL_64:
    self->_spokenNotificationSetting = *(fromCopy + 27);
    *&self->_has |= 0x1000u;
  }

LABEL_65:
  if (*(fromCopy + 20))
  {
    [(BLTPBSectionInfo *)self setWatchSectionID:?];
  }

  v15 = *(fromCopy + 45);
  if (v15)
  {
    self->_authorizationExpirationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v15 = *(fromCopy + 45);
  }

  if ((v15 & 2) != 0)
  {
    self->_lastUserGrantedAuthorizationDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  sectionInfoSettings = self->_sectionInfoSettings;
  v17 = *(fromCopy + 12);
  if (sectionInfoSettings)
  {
    if (v17)
    {
      [(BLTPBSectionInfoSettings *)sectionInfoSettings mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(BLTPBSectionInfo *)self setSectionInfoSettings:?];
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end