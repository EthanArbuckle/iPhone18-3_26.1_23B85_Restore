@interface CKSettingSMSRelayController
+ (BOOL)deviceIsAuthorized:(id)a3;
+ (BOOL)isDeviceUsingMiCWithIdentifier:(id)a3;
+ (BOOL)shouldShowSMSRelaySettings;
+ (id)authorizedSMSRelayDevices;
+ (id)micSMSRelayDevices;
+ (unint64_t)numberOfActiveDevices;
- (BOOL)isDeviceUsingMiCWithIdentifier:(id)a3;
- (BOOL)isMiCEnabled;
- (CKSettingSMSRelayController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_footerSpecifierForSMSRelayGroup;
- (id)_headerSpecifierForMicGroup;
- (id)_headerSpecifierForNonMicGroupDisplayingHeader:(BOOL)a3;
- (id)_specifiersForDevices:(id)a3 cellType:(int64_t)a4 get:(SEL)a5;
- (id)getDeviceActive:(id)a3;
- (id)getDeviceOn:(id)a3;
- (id)specifiers;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)setDeviceActive:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation CKSettingSMSRelayController

- (CKSettingSMSRelayController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = CKSettingSMSRelayController;
  v4 = [(CKSettingSMSRelayController *)&v11 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D18778]);
    v6 = [v5 initWithService:*MEMORY[0x277D186A8]];
    [(CKSettingSMSRelayController *)v4 setRelayService:v6];

    v7 = [(CKSettingSMSRelayController *)v4 relayService];
    [v7 addDelegate:v4 queue:MEMORY[0x277D85CD0]];

    v8 = [MEMORY[0x277D18D68] sharedInstance];
    [v8 blockUntilConnected];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, _SMSRelayActiveDevicesChanged, @"com.apple.sms.smsRelayDevices.changed", v4, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v4;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.sms.smsRelayDevices.changed", 0);
  v4.receiver = self;
  v4.super_class = CKSettingSMSRelayController;
  [(CKSettingSMSRelayController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKSettingSMSRelayController;
  [(CKSettingSMSRelayController *)&v5 viewDidLoad];
  v3 = CommunicationsSetupUIBundle();
  v4 = [v3 localizedStringForKey:@"SMS_RELAY" value:@"SMS_RELAY" table:@"Messages"];

  [(CKSettingSMSRelayController *)self setTitle:v4];
}

- (void)emitNavigationEvent
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Apps"];
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.MobileSMS"];

  v5 = [v4 URLByAppendingPathComponent:@"SMS_RELAY_DEVICES"];

  v6 = objc_alloc(MEMORY[0x277CCAEB8]);
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:@"Messages" table:0 locale:v7 bundleURL:v9];

  v11 = objc_alloc(MEMORY[0x277CCAEB8]);
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 bundleURL];
  v15 = [v11 initWithKey:@"Text Message Forwarding" table:0 locale:v12 bundleURL:v14];

  v18[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [(CKSettingSMSRelayController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.MobileSMS" title:v10 localizedNavigationComponents:v16 deepLink:v5];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMiCEnabled
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CloudKitSyncingEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat && AppIntegerValue == 1;
}

- (id)specifiers
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v35 = *MEMORY[0x277D3FC48];
    v5 = [(CKSettingSMSRelayController *)self isMiCEnabled];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = @"NO";
        if (v5)
        {
          v7 = @"YES";
        }

        *buf = 138412290;
        v48 = v7;
        _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_INFO, "Is Messages in iCloud enabled on this device? {%@}", buf, 0xCu);
      }
    }

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v5)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = [(CKSettingSMSRelayController *)self relayService];
      v11 = [v10 devices];

      v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        v13 = *v42;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            if (([v15 isWatch] & 1) == 0)
            {
              v16 = [v15 uniqueID];
              v17 = [(CKSettingSMSRelayController *)self isDeviceUsingMiCWithIdentifier:v16];

              if (v17)
              {
                v18 = v8;
              }

              else
              {
                v18 = v9;
              }

              [v18 addObject:v15];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v12);
      }

      if ([v8 count])
      {
        v19 = [(CKSettingSMSRelayController *)self _headerSpecifierForMicGroup];
        v20 = [(CKSettingSMSRelayController *)self _specifiersForDevices:v8 cellType:-1 get:sel_getDeviceOn_];
        [v36 addObject:v19];
        [v36 addObjectsFromArray:v20];
      }

      if ([v9 count])
      {
        v21 = -[CKSettingSMSRelayController _headerSpecifierForNonMicGroupDisplayingHeader:](self, "_headerSpecifierForNonMicGroupDisplayingHeader:", [v8 count] != 0);
        [v36 addObject:v21];
        v22 = [(CKSettingSMSRelayController *)self _specifiersForDevices:v9 cellType:6 get:sel_getDeviceActive_];
        [v36 addObjectsFromArray:v22];
      }

      v23 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
      v24 = *(&self->super.super.super.super.super.isa + v35);
      *(&self->super.super.super.super.super.isa + v35) = v23;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = [(CKSettingSMSRelayController *)self relayService];
      v26 = [v25 devices];

      v27 = [v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v27)
      {
        v28 = *v38;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v37 + 1) + 8 * j);
            if (([v30 isWatch] & 1) == 0)
            {
              [v8 addObject:v30];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v27);
      }

      v9 = [(CKSettingSMSRelayController *)self _specifiersForDevices:v8 cellType:6 get:sel_getDeviceActive_];
      v24 = [(CKSettingSMSRelayController *)self _footerSpecifierForSMSRelayGroup];
      [v36 addObject:v24];
      [v36 addObjectsFromArray:v9];
      v31 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
      v32 = *(&self->super.super.super.super.super.isa + v35);
      *(&self->super.super.super.super.super.isa + v35) = v31;
    }

    v3 = *(&self->super.super.super.super.super.isa + v35);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_headerSpecifierForMicGroup
{
  v2 = CommunicationsSetupUIBundle();
  v3 = [v2 localizedStringForKey:@"SMS_RELAY_MIC_DEVICES_FOOTER" value:@"SMS_RELAY_MIC_DEVICES_FOOTER" table:@"Messages"];

  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MOC_SMS_REALY_GROUP"];
  [v4 setProperty:v3 forKey:*MEMORY[0x277D3FF88]];

  return v4;
}

- (id)_headerSpecifierForNonMicGroupDisplayingHeader:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MOC_NON_SMS_REALY_GROUP"];
  }

  else
  {
    [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  }
  v3 = ;
  v4 = CommunicationsSetupUIBundle();
  v5 = [v4 localizedStringForKey:@"SMS_RELAY_MIC_OTHER_DEVICES_FOOTER" value:@"SMS_RELAY_MIC_OTHER_DEVICES_FOOTER" table:@"Messages"];

  [v3 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

  return v3;
}

- (id)_footerSpecifierForSMSRelayGroup
{
  v2 = CommunicationsSetupUIBundle();
  v3 = [v2 localizedStringForKey:@"SMS_RELAY_DEVICES_HEADER" value:@"SMS_RELAY_DEVICES_HEADER" table:@"Messages"];

  v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v4 setProperty:v3 forKey:*MEMORY[0x277D3FF88]];

  return v4;
}

- (id)_specifiersForDevices:(id)a3 cellType:(int64_t)a4 get:(SEL)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = MEMORY[0x277D19238];
        v14 = [v11 modelIdentifier];
        v15 = [v13 marketingNameForModel:v14];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v12, v15];
        v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:sel_setDeviceActive_specifier_ get:a5 detail:0 cell:a4 edit:0];
        v18 = [v11 uniqueID];
        [v17 setIdentifier:v18];

        [v6 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getDeviceActive:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [objc_opt_class() deviceIsAuthorized:v4];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Device {%@} has SMS Forwarding enabled.", &v11, 0xCu);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Device {%@} has SMS Forwarding disabled.", &v11, 0xCu);
    }
  }

LABEL_10:
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getDeviceOn:(id)a3
{
  v3 = CommunicationsSetupUIBundle();
  v4 = [v3 localizedStringForKey:@"SMS_RELAY_ON" value:@"SMS_RELAY_ON" table:@"Messages"];

  return v4;
}

- (void)setDeviceActive:(id)a3 specifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D18DE0] smsService];
  v8 = IMPreferredAccountForService();

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"YES";
      if (!v8)
      {
        v10 = @"NO";
      }

      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_INFO, "Has smsAccount? {%@}", &v19, 0xCu);
    }
  }

  v11 = [v5 BOOLValue];
  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v6 identifier];
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_INFO, "Enrolling device in SMS relay. specifier_identifier={%@}", &v19, 0xCu);
      }
    }

    v15 = [v6 identifier];
    [v8 enrollDeviceInSMSRelay:v15];
  }

  else
  {
    if (v12)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v6 identifier];
        v19 = 138412290;
        v20 = v17;
        _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_INFO, "Unenrolling device in SMS relay. specifier_identifier={%@}", &v19, 0xCu);
      }
    }

    v15 = [v6 identifier];
    [v8 unEnrollDeviceInSMSRelay:v15];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceUsingMiCWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isDeviceUsingMiCWithIdentifier:v3];

  return v4;
}

+ (id)authorizedSMSRelayDevices
{
  v2 = CFPreferencesCopyAppValue(@"allowed", @"com.apple.sms");

  return v2;
}

+ (BOOL)deviceIsAuthorized:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  +[CKSettingSMSRelayController authorizedSMSRelayDevices];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:{v3, v10}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)micSMSRelayDevices
{
  v2 = CFPreferencesCopyAppValue(@"mic", @"com.apple.sms");

  return v2;
}

+ (BOOL)isDeviceUsingMiCWithIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  +[CKSettingSMSRelayController micSMSRelayDevices];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:{v3, v10}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)numberOfActiveDevices
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D18778]);
  v3 = [v2 initWithService:*MEMORY[0x277D186A8]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 devices];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        if ([CKSettingSMSRelayController deviceIsAuthorized:v11])
        {
          v12 = [v10 isWatch];

          v7 += v12 ^ 1u;
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)shouldShowSMSRelaySettings
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D18778]);
  v3 = [v2 initWithService:*MEMORY[0x277D186A8]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 devices];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v7 += ([*(*(&v13 + 1) + 8 * i) isWatch] & 1) == 0;
    }

    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);

  if (!v7)
  {
    goto LABEL_11;
  }

  v10 = 1;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end