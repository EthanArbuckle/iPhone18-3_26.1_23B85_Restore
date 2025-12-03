@interface CNFInternalSettingsUtilities
+ (BOOL)isViceroyLoggingEnabled;
+ (id)IDSEnvironment;
+ (void)killCallservicesd;
+ (void)killEverything;
+ (void)killFaceTime;
+ (void)killImagent;
+ (void)killImavagent;
+ (void)killMediaServerd;
+ (void)killMobilePhone;
+ (void)killMobileSMS;
+ (void)nukeKeychain;
+ (void)setIDSEnvironment:(id)environment;
+ (void)setViceroyLoggingEnabled:(BOOL)enabled;
+ (void)signOutAllAccounts;
+ (void)syncImagentLogSettings;
@end

@implementation CNFInternalSettingsUtilities

+ (BOOL)isViceroyLoggingEnabled
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"errorLogLevel", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat && AppIntegerValue == 7;
}

+ (void)setViceroyLoggingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:8];
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetAppValue(@"errorLogLevel", v3, @"com.apple.VideoConference");

  CFPreferencesAppSynchronize(@"com.apple.VideoConference");
}

+ (void)killImagent
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 imagent";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 imagent" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killImavagent
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 imavagent";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 imavagent" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)syncImagentLogSettings
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -USR2 imagent";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -USR2 imagent" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killMediaServerd
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 mediaserverd";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 mediaserverd" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killCallservicesd
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 callservicesd";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 callservicesd" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killFaceTime
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 FaceTime";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 FaceTime" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killMobilePhone
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 MobilePhone";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 MobilePhone" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killMobileSMS
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 MobileSMS";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 MobileSMS" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)killEverything
{
  if (MarcoShouldLogRegistration())
  {
    v3 = @"killall -9 mediaserverd Contacts imagent imavagent identityservicesd SpringBoard MobilePhone MobileSMS";
    MarcoLogRegistration();
  }

  uTF8String = [@"killall -9 mediaserverd Contacts imagent imavagent identityservicesd SpringBoard MobilePhone MobileSMS" UTF8String];

  MEMORY[0x2821736B0](uTF8String);
}

+ (void)nukeKeychain
{
  if (MarcoShouldLogRegistration())
  {
    MarcoLogRegistration();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  v3 = *MEMORY[0x277CDC120];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC120], @"com.apple.iChat.VeniceRegistrationAgent");
  v4 = SecItemDelete(Mutable);
  if (v4)
  {
    NSLog(&cfstr_UnableToRemove.isa, v4);
  }

  CFDictionarySetValue(Mutable, v3, @"com.apple.facetime");
  v5 = SecItemDelete(Mutable);
  if (v5)
  {
    NSLog(&cfstr_UnableToRemove_0.isa, v5);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

+ (void)signOutAllAccounts
{
  v40 = *MEMORY[0x277D85DE8];
  MarcoLogRegistration();
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  facetimeService = [MEMORY[0x277D18DD8] facetimeService];

  if (facetimeService)
  {
    facetimeService2 = [MEMORY[0x277D18DD8] facetimeService];
    [v2 addObject:facetimeService2];
  }

  iMessageService = [MEMORY[0x277D18DD8] iMessageService];

  if (iMessageService)
  {
    iMessageService2 = [MEMORY[0x277D18DD8] iMessageService];
    [v2 addObject:iMessageService2];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v2;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v27 = *v35;
    v7 = *MEMORY[0x277D19478];
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v8;
        v9 = *(*(&v34 + 1) + 8 * v8);
        mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
        v11 = [mEMORY[0x277D18D28] accountsForService:v9];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v30 + 1) + 8 * i);
              if ([v17 accountType] == 1)
              {
                MarcoLogRegistration();
                [v17 unregisterAccount];
                [v17 setBool:1 forKey:@"AccountSignedOut"];
                v18 = objc_alloc(MEMORY[0x277CBEB18]);
                aliases = [v17 aliases];
                v20 = [v18 initWithArray:aliases];

                lowercaseString = [v7 lowercaseString];
                v22 = [v20 containsObject:lowercaseString];

                if ((v22 & 1) == 0)
                {
                  lowercaseString2 = [v7 lowercaseString];
                  [v20 addObject:lowercaseString2];
                }

                [v17 removeAliases:v20];
                [v17 writeSettings];
                mEMORY[0x277D18D28]2 = [MEMORY[0x277D18D28] sharedInstance];
                [mEMORY[0x277D18D28]2 deactivateAccount:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v14);
        }

        v8 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)IDSEnvironment
{
  CFPreferencesAppSynchronize(@"com.apple.ids");
  v2 = CFPreferencesCopyAppValue(@"env", @"com.apple.ids");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"prod";
  }

  return v4;
}

+ (void)setIDSEnvironment:(id)environment
{
  environmentCopy = environment;
  MarcoLogRegistration();
  CFPreferencesSetAppValue(@"env", environmentCopy, @"com.apple.ids");

  CFPreferencesAppSynchronize(@"com.apple.ids");
}

@end