@interface BPSNotificationAppController
- (BBSectionInfo)bbSectionInfo;
- (BOOL)_suppressSendToNotificationCenterOption;
- (BOOL)showAlerts;
- (BOOL)showPreview;
- (BOOL)watchHasCapabilitySendToNotificationCenter;
- (BPSNotificationAppController)init;
- (PSSpecifier)previewSwitchSpecifier;
- (id)applicationGroupSpecifiers;
- (id)bulletinBoardSettings;
- (id)bundle;
- (id)customGroupSpecifierForDescription:(id)description;
- (id)localizedPreviewChoiceTitle;
- (id)notificationGroupTitles;
- (id)notificationGroupingValue:(id)value;
- (id)sectionInfoForBBSectionInfo:(id)info;
- (id)soundsValue:(id)value;
- (id)specifiers;
- (id)vibrationValue:(id)value;
- (unint64_t)alertingMode;
- (void)_showSettingsNotifications;
- (void)removeAlertOptions;
- (void)removeMirrorOptions;
- (void)removeNotificationCoalescingOptions;
- (void)removeSendToNotificationCenterOption;
- (void)setAlertingMode:(unint64_t)mode;
- (void)setMirrorSettings:(BOOL)settings;
- (void)setNotificationGroupingValue:(id)value specifier:(id)specifier;
- (void)setShowPreviewValue:(id)value forSpecifier:(id)specifier;
- (void)setSoundsValue:(id)value forSpecifier:(id)specifier;
- (void)setVibrationValue:(id)value forSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSubsections;
- (void)writeSectionState;
@end

@implementation BPSNotificationAppController

- (BPSNotificationAppController)init
{
  v8.receiver = self;
  v8.super_class = BPSNotificationAppController;
  v2 = [(BPSNotificationAppController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    notificationSpecifiers = v2->_notificationSpecifiers;
    v2->_notificationSpecifiers = v3;

    v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.bulletinboard.apps"];
    bbAppsSettings = v2->_bbAppsSettings;
    v2->_bbAppsSettings = v5;
  }

  return v2;
}

- (id)bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (id)bulletinBoardSettings
{
  v21 = *MEMORY[0x277D85DE8];
  synchronize = [(NPSDomainAccessor *)self->_bbAppsSettings synchronize];
  v4 = [(NPSDomainAccessor *)self->_bbAppsSettings dictionaryForKey:self->_bundleIdentifier];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"BPSNanoBulletinSubsections"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"BPSNanoBulletinSubsections"];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) mutableCopy];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [v5 setObject:v8 forKeyedSubscript:@"BPSNanoBulletinSubsections"];
  }

  return v5;
}

- (id)specifiers
{
  v89[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_53;
  }

  applicationBundleIdentifier = [(BPSNotificationAppController *)self applicationBundleIdentifier];
  v6 = [applicationBundleIdentifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v6;

  bulletinBoardSettings = [(BPSNotificationAppController *)self bulletinBoardSettings];
  mEMORY[0x277D37A58] = [MEMORY[0x277D37A58] sharedManager];
  [mEMORY[0x277D37A58] loadBBSections];

  bbSectionInfo = self->_bbSectionInfo;
  self->_bbSectionInfo = 0;

  if (bulletinBoardSettings)
  {
    v11 = [bulletinBoardSettings mutableCopy];
    sectionInfo = self->_sectionInfo;
    self->_sectionInfo = v11;
  }

  else
  {
    sectionInfo = [(BPSNotificationAppController *)self bbSectionInfo];
    v13 = [(BPSNotificationAppController *)self sectionInfoForBBSectionInfo:sectionInfo];
    v14 = self->_sectionInfo;
    self->_sectionInfo = v13;
  }

  v15 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinShowsCustomSettings"];
  v16 = v15;
  if (v15)
  {
    self->_mirrorSettings = [v15 BOOLValue] ^ 1;
  }

  else
  {
    [(BPSNotificationAppController *)self setMirrorSettings:[(BPSNotificationAppController *)self suppressMirrorOption]^ 1];
  }

  if ([(BPSNotificationAppController *)self caresAboutSubsections])
  {
    [(BPSNotificationAppController *)self updateSubsections];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v19 = [(BPSNotificationAppController *)self loadSpecifiersFromPlistName:@"AbstactApplication" target:self];
  notificationSpecifiers = self->_notificationSpecifiers;
  self->_notificationSpecifiers = v19;

  if (![(BPSNotificationAppController *)self suppressAlertSpecifiers])
  {
    if ([(BPSNotificationAppController *)self _suppressSendToNotificationCenterOption])
    {
      [(BPSNotificationAppController *)self removeSendToNotificationCenterOption];
    }

    v21 = [(NSMutableArray *)self->_notificationSpecifiers specifierForID:@"NOTIFICATIONS_OFF_ID"];
    alertingMode = [(BPSNotificationAppController *)self alertingMode];
    if (alertingMode == 2)
    {
      v24 = self->_notificationSpecifiers;
      v25 = @"ALLOW_NOTIFICATIONS_ID";
    }

    else
    {
      if (alertingMode != 1)
      {
        if (alertingMode)
        {
          v26 = 0;
LABEL_24:
          if ([(BPSNotificationAppController *)self alertingMode]== 1 || [(BPSNotificationAppController *)self alertingMode]== 2)
          {
            v84 = [(NSMutableArray *)self->_notificationSpecifiers indexOfObject:v21];
            if (v84 == 0x7FFFFFFFFFFFFFFFLL)
            {
              NSLog(&cfstr_ErrorNotificat.isa);
              v84 = 0;
            }

            notificationApplicationSpecifiers = [(BPSNotificationAppController *)self notificationApplicationSpecifiers];
            notificationApplicationSpecifiers = self->_notificationApplicationSpecifiers;
            self->_notificationApplicationSpecifiers = notificationApplicationSpecifiers;

            v86 = v26;
            if (self->_notificationApplicationSpecifiers)
            {
              v82 = array;
              v32 = v21;
              v33 = array2;
              v34 = v16;
              v35 = bulletinBoardSettings;
              if (![(NSMutableArray *)self->_notificationSpecifiers count])
              {
                v36 = self->_notificationSpecifiers;
                emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
                [(NSMutableArray *)v36 addObject:emptyGroupSpecifier];
              }

              v38 = self->_notificationSpecifiers;
              v39 = self->_notificationApplicationSpecifiers;
              v40 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v84 + 1, -[NSMutableArray count](v39, "count")}];
              [(NSMutableArray *)v38 insertObjects:v39 atIndexes:v40];

              bulletinBoardSettings = v35;
              v16 = v34;
              array2 = v33;
              v21 = v32;
              array = v82;
              v26 = v86;
            }

            if ([(BPSNotificationAppController *)self alertType]&& !self->_mirrorSettings)
            {
              v41 = MEMORY[0x277D3FAD8];
              v80 = v16;
              v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              [v42 localizedStringForKey:@"ALERTS" value:&stru_285406330 table:@"AbstactApplication"];
              v43 = v83 = bulletinBoardSettings;
              v44 = [v41 groupSpecifierWithID:@"ALERT_GROUP_ID" name:v43];

              v89[0] = @"tinker-paired";
              v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:1];
              v79 = v44;
              [v44 setProperty:v45 forKey:?];

              [(NSMutableArray *)self->_notificationSpecifiers insertObject:v44 atIndex:v84 + 1];
              v46 = MEMORY[0x277D3FAD8];
              v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v48 = [v47 localizedStringForKey:@"SOUND" value:&stru_285406330 table:@"AbstactApplication"];
              v49 = [v46 preferenceSpecifierNamed:v48 target:self set:sel_setSoundsValue_forSpecifier_ get:sel_soundsValue_ detail:0 cell:6 edit:0];

              v88 = @"tinker-paired";
              v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
              [v49 setProperty:v50 forKey:@"forbiddenWatchCapabilities"];

              [(NSMutableArray *)self->_notificationSpecifiers insertObject:v49 atIndex:v84 + 2];
              v51 = MEMORY[0x277D3FAD8];
              v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v53 = [v52 localizedStringForKey:@"HAPTIC" value:&stru_285406330 table:@"AbstactApplication"];
              v54 = [v51 preferenceSpecifierNamed:v53 target:self set:sel_setVibrationValue_forSpecifier_ get:sel_vibrationValue_ detail:0 cell:6 edit:0];

              v16 = v80;
              v26 = v86;
              [(NSMutableArray *)self->_notificationSpecifiers insertObject:v54 atIndex:v84 + 3];

              bulletinBoardSettings = v83;
            }

            if ([(NSMutableArray *)self->_notificationSpecifiers count])
            {
              v55 = BPSGetActiveSetupCompletedDevice();
              HasCapabilityForString = BPSDeviceHasCapabilityForString(@"tinker-paired", v55);

              v26 = v86;
              if ((HasCapabilityForString & 1) == 0)
              {
                v85 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NOTIFICATION_COALESCING_GROUP_ID"];
                v81 = v16;
                v57 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"NOTIFICATION_COALESCING_TITLE" target:self set:sel_setNotificationGroupingValue_specifier_ get:sel_notificationGroupingValue_ detail:objc_opt_class() cell:2 edit:0];
                v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v59 = [v58 localizedStringForKey:@"NOTIFICATION_COALESCING_TITLE" value:&stru_285406330 table:@"AbstactApplication"];
                [v57 setName:v59];

                [v57 setIdentifier:@"NOTIFICATION_COALESCING_ID"];
                [v57 setProperty:@"notificationGroupTitles" forKey:*MEMORY[0x277D40178]];
                [v57 setProperty:@"notificationGroupValues" forKey:*MEMORY[0x277D401B0]];
                v60 = self->_notificationSpecifiers;
                v87[0] = v85;
                v87[1] = v57;
                v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
                [(NSMutableArray *)v60 addObjectsFromArray:v61];

                v26 = v86;
                v16 = v81;
              }
            }
          }

          goto LABEL_39;
        }

        v23 = v21;
LABEL_21:
        v26 = v23;
        if (v23)
        {
          [(NSMutableArray *)self->_notificationSpecifiers specifierForID:@"CUSTOM_RADIO_GROUP_ID"];
          v27 = array;
          v29 = v28 = v21;
          [v29 setProperty:v26 forKey:*MEMORY[0x277D40090]];

          v21 = v28;
          array = v27;
        }

        goto LABEL_24;
      }

      v24 = self->_notificationSpecifiers;
      v25 = @"SEND_TO_NOTIFICATION_CENTER_ID";
    }

    v23 = [(NSMutableArray *)v24 specifierForID:v25];
    goto LABEL_21;
  }

  [(BPSNotificationAppController *)self removeAlertOptions];
LABEL_39:
  if ([(BPSNotificationAppController *)self suppressNotificationCoalescingOptions])
  {
    [(BPSNotificationAppController *)self removeNotificationCoalescingOptions];
  }

  applicationGroupSpecifiers = [(BPSNotificationAppController *)self applicationGroupSpecifiers];
  [array2 addObjectsFromArray:applicationGroupSpecifiers];

  if ([(BPSNotificationAppController *)self suppressMirrorOption])
  {
    [(BPSNotificationAppController *)self removeMirrorOptions];
  }

  else if ([(BPSNotificationAppController *)self suppressAllMirrorSpecifiers])
  {
    [(BPSNotificationAppController *)self removeMirrorOptions];
    [(BPSNotificationAppController *)self removeAlertOptions];
  }

  else
  {
    v63 = [(NSMutableArray *)self->_notificationSpecifiers specifierForID:@"MIRROR_RADIO_GROUP_ID"];
    if (self->_mirrorSettings)
    {
      [(BPSNotificationAppController *)self removeAlertOptions];
      v64 = [(NSMutableArray *)self->_notificationSpecifiers specifierForID:@"MIRROR_MY_COMPANION_ID"];
      [v63 setProperty:v64 forKey:*MEMORY[0x277D40090]];
      localizedMirroringDetailFooter = [(BPSNotificationAppController *)self localizedMirroringDetailFooter];
      [v63 setProperty:localizedMirroringDetailFooter forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      mirroredApplicationGroupSpecifiers = [(BPSNotificationAppController *)self mirroredApplicationGroupSpecifiers];
      [array2 addObjectsFromArray:mirroredApplicationGroupSpecifiers];

      v64 = [(NSMutableArray *)self->_notificationSpecifiers specifierForID:@"CUSTOM_ID"];
      [v63 setProperty:v64 forKey:*MEMORY[0x277D40090]];
    }
  }

  [array addObjectsFromArray:self->_notificationSpecifiers];
  [array addObjectsFromArray:array2];
  if (-[BPSNotificationAppController settingsMode](self, "settingsMode") == 1 && ![array count])
  {
    specifier = [(BPSNotificationAppController *)self specifier];
    v68 = [specifier propertyForKey:*MEMORY[0x277D40170]];

    v69 = MEMORY[0x277CCACA8];
    v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v70 localizedStringForKey:@"NOTIFICATIONS_SETTINGS_DESCRIPTION_%@" value:&stru_285406330 table:@"AbstactApplication"];
    v71 = array2;
    v73 = v72 = v16;
    v74 = [v69 stringWithFormat:v73, v68];

    v16 = v72;
    array2 = v71;

    v75 = [(BPSNotificationAppController *)self customGroupSpecifierForDescription:v74];
    [array addObject:v75];
  }

  localizedPaneTitle = [(BPSNotificationAppController *)self localizedPaneTitle];
  [(BPSNotificationAppController *)self setTitle:localizedPaneTitle];

  v77 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = array;

  v4 = *(&self->super.super.super.super.super.super.isa + v3);
LABEL_53:

  return v4;
}

- (id)customGroupSpecifierForDescription:(id)description
{
  v4 = MEMORY[0x277CCA8D8];
  descriptionCopy = description;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NOTIFICATIONS_SETTINGS" value:&stru_285406330 table:@"AbstactApplication"];

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [emptyGroupSpecifier setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

  [emptyGroupSpecifier setProperty:descriptionCopy forKey:*MEMORY[0x277D3FF70]];
  v11 = [descriptionCopy rangeOfString:v7 options:4];
  v13 = v12;

  v18.location = v11;
  v18.length = v13;
  v14 = NSStringFromRange(v18);
  [emptyGroupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF58]];

  v15 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [emptyGroupSpecifier setProperty:v15 forKey:*MEMORY[0x277D3FF68]];

  [emptyGroupSpecifier setProperty:@"_showSettingsNotifications" forKey:*MEMORY[0x277D3FF50]];

  return emptyGroupSpecifier;
}

- (void)_showSettingsNotifications
{
  bbSectionInfo = [(BPSNotificationAppController *)self bbSectionInfo];
  sectionID = [bbSectionInfo sectionID];
  v4 = sectionID;
  v5 = &stru_285406330;
  if (sectionID)
  {
    v5 = sectionID;
  }

  v6 = v5;

  v7 = MEMORY[0x277CBEBC0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", v6];

  v8 = [v7 URLWithString:v9];
  BPSOpenSensitiveURLAsync(v8);
}

- (id)sectionInfoForBBSectionInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCABB0];
  if (infoCopy && ![infoCopy alertType])
  {
    showsInLockScreen = [infoCopy showsInLockScreen];
  }

  else
  {
    showsInLockScreen = 1;
  }

  v8 = [v6 numberWithInt:showsInLockScreen];
  [dictionary setObject:v8 forKey:@"BPSNanoBulletinShowsAlerts"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "showsMessagePreview")}];
  [dictionary setObject:v9 forKey:@"BPSNanoBulletinShowsPreview"];

  sectionID = [infoCopy sectionID];
  if (sectionID || ([(BPSNotificationAppController *)self applicationBundleIdentifier], (sectionID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = sectionID;
    [dictionary setObject:sectionID forKey:@"BPSNanoBulletinSectionId"];
  }

  subsectionID = [infoCopy subsectionID];
  if (subsectionID)
  {
    [dictionary setObject:subsectionID forKey:@"BPSNanoBulletinSubsectionId"];
  }

  subsections = [infoCopy subsections];
  v14 = [subsections count];

  if (v14)
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    subsections2 = [infoCopy subsections];
    v17 = [subsections2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(subsections2);
          }

          v21 = [(BPSNotificationAppController *)self sectionInfoForBBSectionInfo:*(*(&v23 + 1) + 8 * i)];
          [array addObject:v21];
        }

        v18 = [subsections2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array forKey:@"BPSNanoBulletinSubsections"];
  }

  return dictionary;
}

- (BBSectionInfo)bbSectionInfo
{
  v21 = *MEMORY[0x277D85DE8];
  bbSectionInfo = self->_bbSectionInfo;
  if (!bbSectionInfo)
  {
    mEMORY[0x277D37A58] = [MEMORY[0x277D37A58] sharedManager];
    bbSections = [mEMORY[0x277D37A58] bbSections];

    if (!bbSections)
    {
      mEMORY[0x277D37A58]2 = [MEMORY[0x277D37A58] sharedManager];
      [mEMORY[0x277D37A58]2 loadBBSections];

      mEMORY[0x277D37A58]3 = [MEMORY[0x277D37A58] sharedManager];
      bbSections = [mEMORY[0x277D37A58]3 bbSections];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = bbSections;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          sectionID = [v13 sectionID];
          if ([sectionID isEqualToString:self->_bundleIdentifier])
          {
            objc_storeStrong(&self->_bbSectionInfo, v13);

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    bbSectionInfo = self->_bbSectionInfo;
  }

  return bbSectionInfo;
}

- (void)updateSubsections
{
  v29 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D37A58] = [MEMORY[0x277D37A58] sharedManager];
  [mEMORY[0x277D37A58] loadBBSections];

  bbSectionInfo = self->_bbSectionInfo;
  self->_bbSectionInfo = 0;

  bbSectionInfo = [(BPSNotificationAppController *)self bbSectionInfo];
  v6 = [(BPSNotificationAppController *)self sectionInfoForBBSectionInfo:bbSectionInfo];

  v7 = [v6 objectForKeyedSubscript:@"BPSNanoBulletinSubsections"];

  if (v7)
  {
    if (self->_mirrorSettings || ([(NSMutableDictionary *)self->_sectionInfo objectForKeyedSubscript:@"BPSNanoBulletinSubsections"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v20 = [v6 objectForKeyedSubscript:@"BPSNanoBulletinSubsections"];
      [(NSMutableDictionary *)self->_sectionInfo setObject:v20 forKeyedSubscript:@"BPSNanoBulletinSubsections"];
    }

    else
    {
      v21 = v6;
      v9 = [v6 objectForKeyedSubscript:@"BPSNanoBulletinSubsections"];
      v10 = [v9 mutableCopy];

      if ([v10 count])
      {
        v11 = 0;
        selfCopy = self;
        do
        {
          v23 = [v10 objectAtIndexedSubscript:v11];
          v12 = [v23 objectForKeyedSubscript:@"BPSNanoBulletinSubsectionId"];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [(NSMutableDictionary *)self->_sectionInfo objectForKeyedSubscript:@"BPSNanoBulletinSubsections"];
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v24 + 1) + 8 * i);
                v19 = [v18 objectForKeyedSubscript:@"BPSNanoBulletinSubsectionId"];
                if ([v12 isEqualToString:v19])
                {
                  [v10 setObject:v18 atIndexedSubscript:v11];

                  goto LABEL_16;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_16:

          ++v11;
          self = selfCopy;
        }

        while (v11 < [v10 count]);
      }

      [(NSMutableDictionary *)self->_sectionInfo setObject:v10 forKeyedSubscript:@"BPSNanoBulletinSubsections"];

      v6 = v21;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_sectionInfo removeObjectForKey:@"BPSNanoBulletinSubsections"];
  }
}

- (void)removeMirrorOptions
{
  notificationSpecifiers = self->_notificationSpecifiers;
  v4 = [(NSMutableArray *)notificationSpecifiers specifierForID:@"MIRROR_RADIO_GROUP_ID"];
  [(NSMutableArray *)notificationSpecifiers removeObject:v4];

  v5 = self->_notificationSpecifiers;
  v6 = [(NSMutableArray *)v5 specifierForID:@"MIRROR_MY_COMPANION_ID"];
  [(NSMutableArray *)v5 removeObject:v6];

  v7 = self->_notificationSpecifiers;
  v8 = [(NSMutableArray *)v7 specifierForID:@"CUSTOM_ID"];
  [(NSMutableArray *)v7 removeObject:v8];
}

- (void)removeAlertOptions
{
  notificationSpecifiers = self->_notificationSpecifiers;
  v4 = [(NSMutableArray *)notificationSpecifiers specifierForID:@"ALERT_GROUP_ID"];
  [(NSMutableArray *)notificationSpecifiers removeObject:v4];

  v5 = self->_notificationSpecifiers;
  v6 = [(NSMutableArray *)v5 specifierForID:@"CUSTOM_RADIO_GROUP_ID"];
  [(NSMutableArray *)v5 removeObject:v6];

  v7 = self->_notificationSpecifiers;
  v8 = [(NSMutableArray *)v7 specifierForID:@"ALLOW_NOTIFICATIONS_ID"];
  [(NSMutableArray *)v7 removeObject:v8];

  v9 = self->_notificationSpecifiers;
  v10 = [(NSMutableArray *)v9 specifierForID:@"SEND_TO_NOTIFICATION_CENTER_ID"];
  [(NSMutableArray *)v9 removeObject:v10];

  v11 = self->_notificationSpecifiers;
  v12 = [(NSMutableArray *)v11 specifierForID:@"NOTIFICATIONS_OFF_ID"];
  [(NSMutableArray *)v11 removeObject:v12];

  v13 = self->_notificationSpecifiers;
  v14 = [(NSMutableArray *)v13 specifierForID:@"NOTIFICATION_COALESCING_GROUP_ID"];
  [(NSMutableArray *)v13 removeObject:v14];

  v15 = self->_notificationSpecifiers;
  v16 = [(NSMutableArray *)v15 specifierForID:@"NOTIFICATION_COALESCING_ID"];
  [(NSMutableArray *)v15 removeObject:v16];

  if (self->_notificationApplicationSpecifiers)
  {
    v17 = self->_notificationSpecifiers;

    [(NSMutableArray *)v17 removeObjectsInArray:?];
  }
}

- (void)removeNotificationCoalescingOptions
{
  notificationSpecifiers = self->_notificationSpecifiers;
  v4 = [(NSMutableArray *)notificationSpecifiers specifierForID:@"NOTIFICATION_COALESCING_GROUP_ID"];
  [(NSMutableArray *)notificationSpecifiers removeObject:v4];

  v5 = self->_notificationSpecifiers;
  v6 = [(NSMutableArray *)v5 specifierForID:@"NOTIFICATION_COALESCING_ID"];
  [(NSMutableArray *)v5 removeObject:v6];
}

- (void)removeSendToNotificationCenterOption
{
  notificationSpecifiers = self->_notificationSpecifiers;
  v3 = [(NSMutableArray *)notificationSpecifiers specifierForID:@"SEND_TO_NOTIFICATION_CENTER_ID"];
  [(NSMutableArray *)notificationSpecifiers removeObject:v3];
}

- (BOOL)_suppressSendToNotificationCenterOption
{
  if (![(BPSNotificationAppController *)self watchHasCapabilitySendToNotificationCenter])
  {
    return 1;
  }

  return [(BPSNotificationAppController *)self suppressSendToNotificationCenterOption];
}

- (BOOL)watchHasCapabilitySendToNotificationCenter
{
  v2 = BPSGetActiveSetupCompletedDevice();
  v3 = BPSIsDeviceCompatibleWithVersions(@"5", 0, v2);

  return v3;
}

- (id)applicationGroupSpecifiers
{
  v2 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D3FEE0]];
  v3 = v2;
  if (v2)
  {
    nSClassFromString(v2) = [NSClassFromString(v2) sharedInstance];
    if (([nSClassFromString(v2) areSpecifiersLoaded] & 1) == 0)
    {
      [nSClassFromString(v2) loadSpecifiers];
    }

    specifiers = [nSClassFromString(v2) specifiers];
  }

  else
  {
    specifiers = 0;
  }

  return specifiers;
}

- (void)writeSectionState
{
  sectionInfo = self->_sectionInfo;
  date = [MEMORY[0x277CBEAA8] date];
  [(NSMutableDictionary *)sectionInfo setObject:date forKey:@"BPSNanoBulletinUpdateTimestamp"];

  [(NPSDomainAccessor *)self->_bbAppsSettings setObject:self->_sectionInfo forKey:self->_bundleIdentifier];
  synchronize = [(NPSDomainAccessor *)self->_bbAppsSettings synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BulletinDistributorBBSectionsDidChangeNotification", 0, 0, 0);
}

- (void)setMirrorSettings:(BOOL)settings
{
  settingsCopy = settings;
  mirrorSettings = self->_mirrorSettings;
  self->_mirrorSettings = settings;
  sectionInfo = self->_sectionInfo;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:!settings];
  [(NSMutableDictionary *)sectionInfo setObject:v7 forKey:@"BPSNanoBulletinShowsCustomSettings"];

  [(BPSNotificationAppController *)self writeSectionState];
  if (mirrorSettings != settingsCopy)
  {
    if ([(BPSNotificationAppController *)self alertType])
    {
      if (settingsCopy)
      {
        v8 = 0;
      }

      else
      {
        v8 = 3;
      }

      mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
      [mEMORY[0x277D71F78] _setCurrentToneWatchAlertPolicy:v8 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];

      mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
      [mEMORY[0x277D71F88] _setCurrentVibrationWatchAlertPolicy:v8 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];
    }

    [(BPSNotificationAppController *)self mirrorSettingsChanged:settingsCopy];

    [(BPSListController *)self reloadSpecifiers];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(BPSNotificationAppController *)self indexForIndexPath:pathCopy];
  v9 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  identifier = [v9 identifier];
  NSLog(&cfstr_DidselectRowSp.isa, v10, identifier);

  identifier2 = [v9 identifier];
  LODWORD(identifier) = [identifier2 isEqualToString:@"MIRROR_MY_COMPANION_ID"];

  if (identifier)
  {
    selfCopy5 = self;
    v14 = 1;
  }

  else
  {
    identifier3 = [v9 identifier];
    v16 = [identifier3 isEqualToString:@"CUSTOM_ID"];

    if (!v16)
    {
      identifier4 = [v9 identifier];
      v18 = [identifier4 isEqualToString:@"ALLOW_NOTIFICATIONS_ID"];

      if (v18)
      {
        selfCopy4 = self;
        v20 = 2;
      }

      else
      {
        identifier5 = [v9 identifier];
        v22 = [identifier5 isEqualToString:@"SEND_TO_NOTIFICATION_CENTER_ID"];

        if (v22)
        {
          selfCopy4 = self;
          v20 = 1;
        }

        else
        {
          identifier6 = [v9 identifier];
          v24 = [identifier6 isEqualToString:@"NOTIFICATIONS_OFF_ID"];

          if (!v24)
          {
            goto LABEL_13;
          }

          selfCopy4 = self;
          v20 = 0;
        }
      }

      [(BPSNotificationAppController *)selfCopy4 setAlertingMode:v20];
      goto LABEL_13;
    }

    selfCopy5 = self;
    v14 = 0;
  }

  [(BPSNotificationAppController *)selfCopy5 setMirrorSettings:v14];
LABEL_13:
  v25.receiver = self;
  v25.super_class = BPSNotificationAppController;
  [(BPSNotificationAppController *)&v25 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)notificationGroupTitles
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_COALESCING_OFF" value:&stru_285406330 table:@"AbstactApplication"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v3}];
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_COALESCING_AUTO" value:&stru_285406330 table:@"AbstactApplication"];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_COALESCING_BY_APP" value:&stru_285406330 table:@"AbstactApplication"];
  v10[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v8;
}

- (id)notificationGroupingValue:(id)value
{
  v3 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinNotificationGrouping"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_28540EE40;
  }

  v6 = v5;

  return v5;
}

- (void)setNotificationGroupingValue:(id)value specifier:(id)specifier
{
  [(NSMutableDictionary *)self->_sectionInfo setObject:value forKey:@"BPSNanoBulletinNotificationGrouping"];

  [(BPSNotificationAppController *)self writeSectionState];
}

- (void)setAlertingMode:(unint64_t)mode
{
  alertingMode = [(BPSNotificationAppController *)self alertingMode];
  sectionInfo = self->_sectionInfo;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:mode == 2];
  [(NSMutableDictionary *)sectionInfo setObject:v7 forKey:@"BPSNanoBulletinShowsAlerts"];

  v8 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinSubsections"];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinSubsections"];
    v11 = [v10 objectAtIndex:0];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:mode == 2];
    [v11 setObject:v12 forKey:@"BPSNanoBulletinShowsAlerts"];
  }

  v13 = self->_sectionInfo;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:mode == 1];
  [(NSMutableDictionary *)v13 setObject:v14 forKey:@"BPSNanoBulletinSendToNotificationCenter"];

  [(BPSNotificationAppController *)self writeSectionState];
  if (alertingMode != mode)
  {

    [(BPSListController *)self reloadSpecifiers];
  }
}

- (unint64_t)alertingMode
{
  if ([(BPSNotificationAppController *)self showAlerts])
  {
    return 2;
  }

  v4 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinSendToNotificationCenter"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setShowPreviewValue:(id)value forSpecifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  [(NSMutableDictionary *)self->_sectionInfo setObject:valueCopy forKey:@"BPSNanoBulletinShowsPreview"];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinSubsections", 0];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setObject:valueCopy forKey:@"BPSNanoBulletinShowsPreview"];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(BPSNotificationAppController *)self writeSectionState];
}

- (void)setSoundsValue:(id)value forSpecifier:(id)specifier
{
  if ([value BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  [mEMORY[0x277D71F78] _setCurrentToneWatchAlertPolicy:v5 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];
}

- (id)soundsValue:(id)value
{
  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v5 = [mEMORY[0x277D71F78] _currentToneWatchAlertPolicyForAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5 == 1];
}

- (void)setVibrationValue:(id)value forSpecifier:(id)specifier
{
  if ([value BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  [mEMORY[0x277D71F88] _setCurrentVibrationWatchAlertPolicy:v5 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];
}

- (id)vibrationValue:(id)value
{
  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  v5 = [mEMORY[0x277D71F88] _currentVibrationWatchAlertPolicyForAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5 == 1];
}

- (BOOL)showAlerts
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_mirrorSettings)
  {
    v11 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinShowsAlerts"];
    bOOLValue = [v11 BOOLValue];

    return bOOLValue;
  }

  bbSectionInfo = [(BPSNotificationAppController *)self bbSectionInfo];
  subsections = [bbSectionInfo subsections];
  v4 = [subsections count];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subsections2 = [bbSectionInfo subsections];
    v6 = [subsections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(subsections2);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 allowsNotifications] && (objc_msgSend(v10, "alertType") || (objc_msgSend(v10, "showsInLockScreen") & 1) != 0))
          {

            goto LABEL_18;
          }
        }

        v7 = [subsections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else if ([bbSectionInfo allowsNotifications])
  {
    if ([bbSectionInfo alertType])
    {
LABEL_18:
      showsInLockScreen = 1;
    }

    else
    {
      showsInLockScreen = [bbSectionInfo showsInLockScreen];
    }

    goto LABEL_20;
  }

  showsInLockScreen = 0;
LABEL_20:

  return showsInLockScreen;
}

- (BOOL)showPreview
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_mirrorSettings)
  {
    bbSectionInfo = [(BPSNotificationAppController *)self bbSectionInfo];
    subsections = [bbSectionInfo subsections];
    v4 = [subsections count];

    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      subsections2 = [bbSectionInfo subsections];
      v6 = [subsections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(subsections2);
            }

            if ([*(*(&v14 + 1) + 8 * i) showsMessagePreview])
            {

              showsMessagePreview = 1;
              goto LABEL_15;
            }
          }

          v7 = [subsections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      showsMessagePreview = 0;
    }

    else
    {
      showsMessagePreview = [bbSectionInfo showsMessagePreview];
    }

LABEL_15:

    return showsMessagePreview;
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinShowsPreview"];
    bOOLValue = [v11 BOOLValue];

    return bOOLValue;
  }
}

- (PSSpecifier)previewSwitchSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  localizedPreviewChoiceTitle = [(BPSNotificationAppController *)self localizedPreviewChoiceTitle];
  v5 = [v3 preferenceSpecifierNamed:localizedPreviewChoiceTitle target:self set:sel_setShowPreviewValue_forSpecifier_ get:sel_showPreviewValue_ detail:0 cell:6 edit:0];

  return v5;
}

- (id)localizedPreviewChoiceTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SHOW_PREVIEWS" value:&stru_285406330 table:@"AbstactApplication"];

  return v3;
}

@end