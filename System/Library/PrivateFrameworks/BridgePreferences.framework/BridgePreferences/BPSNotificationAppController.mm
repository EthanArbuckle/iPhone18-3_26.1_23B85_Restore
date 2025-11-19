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
- (id)customGroupSpecifierForDescription:(id)a3;
- (id)localizedPreviewChoiceTitle;
- (id)notificationGroupTitles;
- (id)notificationGroupingValue:(id)a3;
- (id)sectionInfoForBBSectionInfo:(id)a3;
- (id)soundsValue:(id)a3;
- (id)specifiers;
- (id)vibrationValue:(id)a3;
- (unint64_t)alertingMode;
- (void)_showSettingsNotifications;
- (void)removeAlertOptions;
- (void)removeMirrorOptions;
- (void)removeNotificationCoalescingOptions;
- (void)removeSendToNotificationCenterOption;
- (void)setAlertingMode:(unint64_t)a3;
- (void)setMirrorSettings:(BOOL)a3;
- (void)setNotificationGroupingValue:(id)a3 specifier:(id)a4;
- (void)setShowPreviewValue:(id)a3 forSpecifier:(id)a4;
- (void)setSoundsValue:(id)a3 forSpecifier:(id)a4;
- (void)setVibrationValue:(id)a3 forSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v3 = [(NPSDomainAccessor *)self->_bbAppsSettings synchronize];
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

  v5 = [(BPSNotificationAppController *)self applicationBundleIdentifier];
  v6 = [v5 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v6;

  v8 = [(BPSNotificationAppController *)self bulletinBoardSettings];
  v9 = [MEMORY[0x277D37A58] sharedManager];
  [v9 loadBBSections];

  bbSectionInfo = self->_bbSectionInfo;
  self->_bbSectionInfo = 0;

  if (v8)
  {
    v11 = [v8 mutableCopy];
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

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CBEB18] array];
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
    v22 = [(BPSNotificationAppController *)self alertingMode];
    if (v22 == 2)
    {
      v24 = self->_notificationSpecifiers;
      v25 = @"ALLOW_NOTIFICATIONS_ID";
    }

    else
    {
      if (v22 != 1)
      {
        if (v22)
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

            v30 = [(BPSNotificationAppController *)self notificationApplicationSpecifiers];
            notificationApplicationSpecifiers = self->_notificationApplicationSpecifiers;
            self->_notificationApplicationSpecifiers = v30;

            v86 = v26;
            if (self->_notificationApplicationSpecifiers)
            {
              v82 = v17;
              v32 = v21;
              v33 = v18;
              v34 = v16;
              v35 = v8;
              if (![(NSMutableArray *)self->_notificationSpecifiers count])
              {
                v36 = self->_notificationSpecifiers;
                v37 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
                [(NSMutableArray *)v36 addObject:v37];
              }

              v38 = self->_notificationSpecifiers;
              v39 = self->_notificationApplicationSpecifiers;
              v40 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v84 + 1, -[NSMutableArray count](v39, "count")}];
              [(NSMutableArray *)v38 insertObjects:v39 atIndexes:v40];

              v8 = v35;
              v16 = v34;
              v18 = v33;
              v21 = v32;
              v17 = v82;
              v26 = v86;
            }

            if ([(BPSNotificationAppController *)self alertType]&& !self->_mirrorSettings)
            {
              v41 = MEMORY[0x277D3FAD8];
              v80 = v16;
              v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              [v42 localizedStringForKey:@"ALERTS" value:&stru_285406330 table:@"AbstactApplication"];
              v43 = v83 = v8;
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

              v8 = v83;
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
          v27 = v17;
          v29 = v28 = v21;
          [v29 setProperty:v26 forKey:*MEMORY[0x277D40090]];

          v21 = v28;
          v17 = v27;
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

  v62 = [(BPSNotificationAppController *)self applicationGroupSpecifiers];
  [v18 addObjectsFromArray:v62];

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
      v65 = [(BPSNotificationAppController *)self localizedMirroringDetailFooter];
      [v63 setProperty:v65 forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      v66 = [(BPSNotificationAppController *)self mirroredApplicationGroupSpecifiers];
      [v18 addObjectsFromArray:v66];

      v64 = [(NSMutableArray *)self->_notificationSpecifiers specifierForID:@"CUSTOM_ID"];
      [v63 setProperty:v64 forKey:*MEMORY[0x277D40090]];
    }
  }

  [v17 addObjectsFromArray:self->_notificationSpecifiers];
  [v17 addObjectsFromArray:v18];
  if (-[BPSNotificationAppController settingsMode](self, "settingsMode") == 1 && ![v17 count])
  {
    v67 = [(BPSNotificationAppController *)self specifier];
    v68 = [v67 propertyForKey:*MEMORY[0x277D40170]];

    v69 = MEMORY[0x277CCACA8];
    v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v70 localizedStringForKey:@"NOTIFICATIONS_SETTINGS_DESCRIPTION_%@" value:&stru_285406330 table:@"AbstactApplication"];
    v71 = v18;
    v73 = v72 = v16;
    v74 = [v69 stringWithFormat:v73, v68];

    v16 = v72;
    v18 = v71;

    v75 = [(BPSNotificationAppController *)self customGroupSpecifierForDescription:v74];
    [v17 addObject:v75];
  }

  v76 = [(BPSNotificationAppController *)self localizedPaneTitle];
  [(BPSNotificationAppController *)self setTitle:v76];

  v77 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = v17;

  v4 = *(&self->super.super.super.super.super.super.isa + v3);
LABEL_53:

  return v4;
}

- (id)customGroupSpecifierForDescription:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NOTIFICATIONS_SETTINGS" value:&stru_285406330 table:@"AbstactApplication"];

  v8 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

  [v8 setProperty:v5 forKey:*MEMORY[0x277D3FF70]];
  v11 = [v5 rangeOfString:v7 options:4];
  v13 = v12;

  v18.location = v11;
  v18.length = v13;
  v14 = NSStringFromRange(v18);
  [v8 setProperty:v14 forKey:*MEMORY[0x277D3FF58]];

  v15 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v8 setProperty:v15 forKey:*MEMORY[0x277D3FF68]];

  [v8 setProperty:@"_showSettingsNotifications" forKey:*MEMORY[0x277D3FF50]];

  return v8;
}

- (void)_showSettingsNotifications
{
  v2 = [(BPSNotificationAppController *)self bbSectionInfo];
  v3 = [v2 sectionID];
  v4 = v3;
  v5 = &stru_285406330;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = MEMORY[0x277CBEBC0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", v6];

  v8 = [v7 URLWithString:v9];
  BPSOpenSensitiveURLAsync(v8);
}

- (id)sectionInfoForBBSectionInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CCABB0];
  if (v4 && ![v4 alertType])
  {
    v7 = [v4 showsInLockScreen];
  }

  else
  {
    v7 = 1;
  }

  v8 = [v6 numberWithInt:v7];
  [v5 setObject:v8 forKey:@"BPSNanoBulletinShowsAlerts"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "showsMessagePreview")}];
  [v5 setObject:v9 forKey:@"BPSNanoBulletinShowsPreview"];

  v10 = [v4 sectionID];
  if (v10 || ([(BPSNotificationAppController *)self applicationBundleIdentifier], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v5 setObject:v10 forKey:@"BPSNanoBulletinSectionId"];
  }

  v12 = [v4 subsectionID];
  if (v12)
  {
    [v5 setObject:v12 forKey:@"BPSNanoBulletinSubsectionId"];
  }

  v13 = [v4 subsections];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v4 subsections];
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [(BPSNotificationAppController *)self sectionInfoForBBSectionInfo:*(*(&v23 + 1) + 8 * i)];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }

    [v5 setObject:v15 forKey:@"BPSNanoBulletinSubsections"];
  }

  return v5;
}

- (BBSectionInfo)bbSectionInfo
{
  v21 = *MEMORY[0x277D85DE8];
  bbSectionInfo = self->_bbSectionInfo;
  if (!bbSectionInfo)
  {
    v4 = [MEMORY[0x277D37A58] sharedManager];
    v5 = [v4 bbSections];

    if (!v5)
    {
      v6 = [MEMORY[0x277D37A58] sharedManager];
      [v6 loadBBSections];

      v7 = [MEMORY[0x277D37A58] sharedManager];
      v5 = [v7 bbSections];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
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
          v14 = [v13 sectionID];
          if ([v14 isEqualToString:self->_bundleIdentifier])
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
  v3 = [MEMORY[0x277D37A58] sharedManager];
  [v3 loadBBSections];

  bbSectionInfo = self->_bbSectionInfo;
  self->_bbSectionInfo = 0;

  v5 = [(BPSNotificationAppController *)self bbSectionInfo];
  v6 = [(BPSNotificationAppController *)self sectionInfoForBBSectionInfo:v5];

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
        v22 = self;
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
          self = v22;
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
    v4 = [NSClassFromString(v2) sharedInstance];
    if (([v4 areSpecifiersLoaded] & 1) == 0)
    {
      [v4 loadSpecifiers];
    }

    v5 = [v4 specifiers];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)writeSectionState
{
  sectionInfo = self->_sectionInfo;
  v4 = [MEMORY[0x277CBEAA8] date];
  [(NSMutableDictionary *)sectionInfo setObject:v4 forKey:@"BPSNanoBulletinUpdateTimestamp"];

  [(NPSDomainAccessor *)self->_bbAppsSettings setObject:self->_sectionInfo forKey:self->_bundleIdentifier];
  v5 = [(NPSDomainAccessor *)self->_bbAppsSettings synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BulletinDistributorBBSectionsDidChangeNotification", 0, 0, 0);
}

- (void)setMirrorSettings:(BOOL)a3
{
  v3 = a3;
  mirrorSettings = self->_mirrorSettings;
  self->_mirrorSettings = a3;
  sectionInfo = self->_sectionInfo;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:!a3];
  [(NSMutableDictionary *)sectionInfo setObject:v7 forKey:@"BPSNanoBulletinShowsCustomSettings"];

  [(BPSNotificationAppController *)self writeSectionState];
  if (mirrorSettings != v3)
  {
    if ([(BPSNotificationAppController *)self alertType])
    {
      if (v3)
      {
        v8 = 0;
      }

      else
      {
        v8 = 3;
      }

      v9 = [MEMORY[0x277D71F78] sharedToneManager];
      [v9 _setCurrentToneWatchAlertPolicy:v8 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];

      v10 = [MEMORY[0x277D71F88] sharedVibrationManager];
      [v10 _setCurrentVibrationWatchAlertPolicy:v8 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];
    }

    [(BPSNotificationAppController *)self mirrorSettingsChanged:v3];

    [(BPSListController *)self reloadSpecifiers];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BPSNotificationAppController *)self indexForIndexPath:v7];
  v9 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v11 = [v9 identifier];
  NSLog(&cfstr_DidselectRowSp.isa, v10, v11);

  v12 = [v9 identifier];
  LODWORD(v11) = [v12 isEqualToString:@"MIRROR_MY_COMPANION_ID"];

  if (v11)
  {
    v13 = self;
    v14 = 1;
  }

  else
  {
    v15 = [v9 identifier];
    v16 = [v15 isEqualToString:@"CUSTOM_ID"];

    if (!v16)
    {
      v17 = [v9 identifier];
      v18 = [v17 isEqualToString:@"ALLOW_NOTIFICATIONS_ID"];

      if (v18)
      {
        v19 = self;
        v20 = 2;
      }

      else
      {
        v21 = [v9 identifier];
        v22 = [v21 isEqualToString:@"SEND_TO_NOTIFICATION_CENTER_ID"];

        if (v22)
        {
          v19 = self;
          v20 = 1;
        }

        else
        {
          v23 = [v9 identifier];
          v24 = [v23 isEqualToString:@"NOTIFICATIONS_OFF_ID"];

          if (!v24)
          {
            goto LABEL_13;
          }

          v19 = self;
          v20 = 0;
        }
      }

      [(BPSNotificationAppController *)v19 setAlertingMode:v20];
      goto LABEL_13;
    }

    v13 = self;
    v14 = 0;
  }

  [(BPSNotificationAppController *)v13 setMirrorSettings:v14];
LABEL_13:
  v25.receiver = self;
  v25.super_class = BPSNotificationAppController;
  [(BPSNotificationAppController *)&v25 tableView:v6 didSelectRowAtIndexPath:v7];
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

- (id)notificationGroupingValue:(id)a3
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

- (void)setNotificationGroupingValue:(id)a3 specifier:(id)a4
{
  [(NSMutableDictionary *)self->_sectionInfo setObject:a3 forKey:@"BPSNanoBulletinNotificationGrouping"];

  [(BPSNotificationAppController *)self writeSectionState];
}

- (void)setAlertingMode:(unint64_t)a3
{
  v5 = [(BPSNotificationAppController *)self alertingMode];
  sectionInfo = self->_sectionInfo;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a3 == 2];
  [(NSMutableDictionary *)sectionInfo setObject:v7 forKey:@"BPSNanoBulletinShowsAlerts"];

  v8 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinSubsections"];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinSubsections"];
    v11 = [v10 objectAtIndex:0];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:a3 == 2];
    [v11 setObject:v12 forKey:@"BPSNanoBulletinShowsAlerts"];
  }

  v13 = self->_sectionInfo;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 1];
  [(NSMutableDictionary *)v13 setObject:v14 forKey:@"BPSNanoBulletinSendToNotificationCenter"];

  [(BPSNotificationAppController *)self writeSectionState];
  if (v5 != a3)
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
  v3 = [v4 BOOLValue];

  return v3;
}

- (void)setShowPreviewValue:(id)a3 forSpecifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(NSMutableDictionary *)self->_sectionInfo setObject:v5 forKey:@"BPSNanoBulletinShowsPreview"];
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

        [*(*(&v11 + 1) + 8 * v10++) setObject:v5 forKey:@"BPSNanoBulletinShowsPreview"];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(BPSNotificationAppController *)self writeSectionState];
}

- (void)setSoundsValue:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [MEMORY[0x277D71F78] sharedToneManager];
  [v6 _setCurrentToneWatchAlertPolicy:v5 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];
}

- (id)soundsValue:(id)a3
{
  v4 = [MEMORY[0x277D71F78] sharedToneManager];
  v5 = [v4 _currentToneWatchAlertPolicyForAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5 == 1];
}

- (void)setVibrationValue:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [MEMORY[0x277D71F88] sharedVibrationManager];
  [v6 _setCurrentVibrationWatchAlertPolicy:v5 forAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];
}

- (id)vibrationValue:(id)a3
{
  v4 = [MEMORY[0x277D71F88] sharedVibrationManager];
  v5 = [v4 _currentVibrationWatchAlertPolicyForAlertType:{-[BPSNotificationAppController alertType](self, "alertType")}];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5 == 1];
}

- (BOOL)showAlerts
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_mirrorSettings)
  {
    v11 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinShowsAlerts"];
    v12 = [v11 BOOLValue];

    return v12;
  }

  v2 = [(BPSNotificationAppController *)self bbSectionInfo];
  v3 = [v2 subsections];
  v4 = [v3 count];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v2 subsections];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 allowsNotifications] && (objc_msgSend(v10, "alertType") || (objc_msgSend(v10, "showsInLockScreen") & 1) != 0))
          {

            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else if ([v2 allowsNotifications])
  {
    if ([v2 alertType])
    {
LABEL_18:
      v14 = 1;
    }

    else
    {
      v14 = [v2 showsInLockScreen];
    }

    goto LABEL_20;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (BOOL)showPreview
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_mirrorSettings)
  {
    v2 = [(BPSNotificationAppController *)self bbSectionInfo];
    v3 = [v2 subsections];
    v4 = [v3 count];

    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [v2 subsections];
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v14 + 1) + 8 * i) showsMessagePreview])
            {

              v10 = 1;
              goto LABEL_15;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = [v2 showsMessagePreview];
    }

LABEL_15:

    return v10;
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_sectionInfo objectForKey:@"BPSNanoBulletinShowsPreview"];
    v12 = [v11 BOOLValue];

    return v12;
  }
}

- (PSSpecifier)previewSwitchSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [(BPSNotificationAppController *)self localizedPreviewChoiceTitle];
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setShowPreviewValue_forSpecifier_ get:sel_showPreviewValue_ detail:0 cell:6 edit:0];

  return v5;
}

- (id)localizedPreviewChoiceTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SHOW_PREVIEWS" value:&stru_285406330 table:@"AbstactApplication"];

  return v3;
}

@end