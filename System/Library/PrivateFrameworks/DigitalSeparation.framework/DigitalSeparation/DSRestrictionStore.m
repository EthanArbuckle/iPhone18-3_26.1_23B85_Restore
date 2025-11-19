@interface DSRestrictionStore
+ (BOOL)hasRestriction;
+ (BOOL)isAppRemovalRestricted;
+ (BOOL)isFingerprintModificationRestricted;
+ (BOOL)isPasscodeModificationRestricted;
+ (BOOL)isPermissionRestricted:(id)a3;
+ (BOOL)isPrivateRelayRestricted;
+ (BOOL)isSourceRestricted:(id)a3;
+ (void)initialize;
@end

@implementation DSRestrictionStore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLog_1 = os_log_create("com.apple.DigitalSeparation", "DSRestrictionStore");

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)isAppRemovalRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAppRemovalAllowed];

  return v3 ^ 1;
}

+ (BOOL)isPermissionRestricted:(id)a3
{
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  if (([(__CFString *)v3 isEqualToString:@"DSLocationAlways"]& 1) != 0 || [(__CFString *)v3 isEqualToString:@"DSLocationWhenInUse"])
  {
    v5 = @"location";
  }

  else
  {
    if (![(__CFString *)v3 isEqualToString:@"DSContacts"])
    {
      v6 = v4;
      v5 = v3;
      goto LABEL_5;
    }

    v5 = *MEMORY[0x277D6C100];
  }

  v6 = v4;
LABEL_5:
  v7 = [v6 containsObject:v5];

  return v7;
}

+ (BOOL)isSourceRestricted:(id)a3
{
  v3 = a3;
  if (@"com.apple.DigitalSeparation.Photos" == v3 && ([MEMORY[0x277D262A0] sharedConnection], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "effectiveBoolValueForSetting:", *MEMORY[0x277D26058]), v4, v5 == 2))
  {
    v6 = 1;
  }

  else if (@"com.apple.DigitalSeparation.FindMy" == v3)
  {
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    if ([v7 effectiveBoolValueForSetting:*MEMORY[0x277D25EA0]] == 2)
    {
      v6 = 1;
    }

    else
    {
      v8 = [MEMORY[0x277D262A0] sharedConnection];
      v6 = [v8 effectiveBoolValueForSetting:*MEMORY[0x277D25EA8]] == 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isPasscodeModificationRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeModificationAllowed];

  return v3 ^ 1;
}

+ (BOOL)isFingerprintModificationRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isFingerprintModificationAllowed];

  return v3 ^ 1;
}

+ (BOOL)isPrivateRelayRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isCloudPrivateRelayAllowed];

  return v3 ^ 1;
}

+ (BOOL)hasRestriction
{
  if (([a1 isSourceRestricted:@"com.apple.DigitalSeparation.FindMy"] & 1) != 0 || +[DSRestrictionStore isSourceRestricted:](DSRestrictionStore, "isSourceRestricted:", @"com.apple.DigitalSeparation.Photos") || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", @"location") || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C100]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C118]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1E0]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1D0]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C110]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1A8]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1A0]) || +[DSRestrictionStore isPasscodeModificationRestricted](DSRestrictionStore, "isPasscodeModificationRestricted") || +[DSRestrictionStore isFingerprintModificationRestricted](DSRestrictionStore, "isFingerprintModificationRestricted") || +[DSRestrictionStore isAppRemovalRestricted](DSRestrictionStore, "isAppRemovalRestricted"))
  {
    return 1;
  }

  return +[DSRestrictionStore isPrivateRelayRestricted];
}

@end