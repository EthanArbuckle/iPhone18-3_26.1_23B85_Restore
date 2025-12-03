@interface CKSettingSMSRelayController
+ (BOOL)deviceIsAuthorized:(id)authorized;
+ (BOOL)isDeviceUsingMiCWithIdentifier:(id)identifier;
+ (BOOL)shouldShowSMSRelaySettings;
+ (id)authorizedSMSRelayDevices;
+ (id)micSMSRelayDevices;
+ (unint64_t)numberOfActiveDevices;
- (BOOL)isDeviceUsingMiCWithIdentifier:(id)identifier;
- (BOOL)isMiCEnabled;
- (CKSettingSMSRelayController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_footerSpecifierForSMSRelayGroup;
- (id)_headerSpecifierForMicGroup;
- (id)_headerSpecifierForNonMicGroupDisplayingHeader:(BOOL)header;
- (id)_specifiersForDevices:(id)devices cellType:(int64_t)type get:(SEL)get;
- (id)getDeviceActive:(id)active;
- (id)getDeviceOn:(id)on;
- (id)specifiers;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)setDeviceActive:(id)active specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation CKSettingSMSRelayController

- (CKSettingSMSRelayController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = CKSettingSMSRelayController;
  v4 = [(CKSettingSMSRelayController *)&v11 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D18778]);
    v6 = [v5 initWithService:*MEMORY[0x277D186A8]];
    [(CKSettingSMSRelayController *)v4 setRelayService:v6];

    relayService = [(CKSettingSMSRelayController *)v4 relayService];
    [relayService addDelegate:v4 queue:MEMORY[0x277D85CD0]];

    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68] blockUntilConnected];

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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v8 bundleURL];
  v10 = [v6 initWithKey:@"Messages" table:0 locale:currentLocale bundleURL:bundleURL];

  v11 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v13 bundleURL];
  v15 = [v11 initWithKey:@"Text Message Forwarding" table:0 locale:currentLocale2 bundleURL:bundleURL2];

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
    isMiCEnabled = [(CKSettingSMSRelayController *)self isMiCEnabled];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = @"NO";
        if (isMiCEnabled)
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
    if (isMiCEnabled)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      relayService = [(CKSettingSMSRelayController *)self relayService];
      devices = [relayService devices];

      v12 = [devices countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        v13 = *v42;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(devices);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            if (([v15 isWatch] & 1) == 0)
            {
              uniqueID = [v15 uniqueID];
              v17 = [(CKSettingSMSRelayController *)self isDeviceUsingMiCWithIdentifier:uniqueID];

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

          v12 = [devices countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v12);
      }

      if ([v8 count])
      {
        _headerSpecifierForMicGroup = [(CKSettingSMSRelayController *)self _headerSpecifierForMicGroup];
        v20 = [(CKSettingSMSRelayController *)self _specifiersForDevices:v8 cellType:-1 get:sel_getDeviceOn_];
        [v36 addObject:_headerSpecifierForMicGroup];
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
      _footerSpecifierForSMSRelayGroup = *(&self->super.super.super.super.super.isa + v35);
      *(&self->super.super.super.super.super.isa + v35) = v23;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      relayService2 = [(CKSettingSMSRelayController *)self relayService];
      devices2 = [relayService2 devices];

      v27 = [devices2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v27)
      {
        v28 = *v38;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(devices2);
            }

            v30 = *(*(&v37 + 1) + 8 * j);
            if (([v30 isWatch] & 1) == 0)
            {
              [v8 addObject:v30];
            }
          }

          v27 = [devices2 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v27);
      }

      v9 = [(CKSettingSMSRelayController *)self _specifiersForDevices:v8 cellType:6 get:sel_getDeviceActive_];
      _footerSpecifierForSMSRelayGroup = [(CKSettingSMSRelayController *)self _footerSpecifierForSMSRelayGroup];
      [v36 addObject:_footerSpecifierForSMSRelayGroup];
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

- (id)_headerSpecifierForNonMicGroupDisplayingHeader:(BOOL)header
{
  if (header)
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

  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setProperty:v3 forKey:*MEMORY[0x277D3FF88]];

  return emptyGroupSpecifier;
}

- (id)_specifiersForDevices:(id)devices cellType:(int64_t)type get:(SEL)get
{
  v30 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = devicesCopy;
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
        name = [v11 name];
        v13 = MEMORY[0x277D19238];
        modelIdentifier = [v11 modelIdentifier];
        v15 = [v13 marketingNameForModel:modelIdentifier];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", name, v15];
        v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:sel_setDeviceActive_specifier_ get:get detail:0 cell:type edit:0];
        uniqueID = [v11 uniqueID];
        [v17 setIdentifier:uniqueID];

        [v6 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getDeviceActive:(id)active
{
  v13 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  identifier = [activeCopy identifier];
  v5 = [objc_opt_class() deviceIsAuthorized:identifier];
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
      v12 = identifier;
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
      v12 = identifier;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Device {%@} has SMS Forwarding disabled.", &v11, 0xCu);
    }
  }

LABEL_10:
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getDeviceOn:(id)on
{
  v3 = CommunicationsSetupUIBundle();
  v4 = [v3 localizedStringForKey:@"SMS_RELAY_ON" value:@"SMS_RELAY_ON" table:@"Messages"];

  return v4;
}

- (void)setDeviceActive:(id)active specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  specifierCopy = specifier;
  smsService = [MEMORY[0x277D18DE0] smsService];
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

  bOOLValue = [activeCopy BOOLValue];
  v12 = IMOSLoggingEnabled();
  if (bOOLValue)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        identifier = [specifierCopy identifier];
        v19 = 138412290;
        v20 = identifier;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_INFO, "Enrolling device in SMS relay. specifier_identifier={%@}", &v19, 0xCu);
      }
    }

    identifier2 = [specifierCopy identifier];
    [v8 enrollDeviceInSMSRelay:identifier2];
  }

  else
  {
    if (v12)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        identifier3 = [specifierCopy identifier];
        v19 = 138412290;
        v20 = identifier3;
        _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_INFO, "Unenrolling device in SMS relay. specifier_identifier={%@}", &v19, 0xCu);
      }
    }

    identifier2 = [specifierCopy identifier];
    [v8 unEnrollDeviceInSMSRelay:identifier2];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceUsingMiCWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() isDeviceUsingMiCWithIdentifier:identifierCopy];

  return v4;
}

+ (id)authorizedSMSRelayDevices
{
  v2 = CFPreferencesCopyAppValue(@"allowed", @"com.apple.sms");

  return v2;
}

+ (BOOL)deviceIsAuthorized:(id)authorized
{
  v15 = *MEMORY[0x277D85DE8];
  authorizedCopy = authorized;
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

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:{authorizedCopy, v10}])
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

+ (BOOL)isDeviceUsingMiCWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:{identifierCopy, v10}])
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
  devices = [v3 devices];
  v5 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uniqueID = [v10 uniqueID];
        if ([CKSettingSMSRelayController deviceIsAuthorized:uniqueID])
        {
          isWatch = [v10 isWatch];

          v7 += isWatch ^ 1u;
        }

        else
        {
        }
      }

      v6 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  devices = [v3 devices];
  v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(devices);
      }

      v7 += ([*(*(&v13 + 1) + 8 * i) isWatch] & 1) == 0;
    }

    v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
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