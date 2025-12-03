@interface DSRestrictionStore
+ (BOOL)hasRestriction;
+ (BOOL)isAppRemovalRestricted;
+ (BOOL)isFingerprintModificationRestricted;
+ (BOOL)isPasscodeModificationRestricted;
+ (BOOL)isPermissionRestricted:(id)restricted;
+ (BOOL)isPrivateRelayRestricted;
+ (BOOL)isSourceRestricted:(id)restricted;
+ (void)initialize;
@end

@implementation DSRestrictionStore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLog_1 = os_log_create("com.apple.DigitalSeparation", "DSRestrictionStore");

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)isAppRemovalRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAppRemovalAllowed = [mEMORY[0x277D262A0] isAppRemovalAllowed];

  return isAppRemovalAllowed ^ 1;
}

+ (BOOL)isPermissionRestricted:(id)restricted
{
  restrictedCopy = restricted;
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  if (([(__CFString *)restrictedCopy isEqualToString:@"DSLocationAlways"]& 1) != 0 || [(__CFString *)restrictedCopy isEqualToString:@"DSLocationWhenInUse"])
  {
    v5 = @"location";
  }

  else
  {
    if (![(__CFString *)restrictedCopy isEqualToString:@"DSContacts"])
    {
      v6 = v4;
      v5 = restrictedCopy;
      goto LABEL_5;
    }

    v5 = *MEMORY[0x277D6C100];
  }

  v6 = v4;
LABEL_5:
  v7 = [v6 containsObject:v5];

  return v7;
}

+ (BOOL)isSourceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  if (@"com.apple.DigitalSeparation.Photos" == restrictedCopy && ([MEMORY[0x277D262A0] sharedConnection], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "effectiveBoolValueForSetting:", *MEMORY[0x277D26058]), v4, v5 == 2))
  {
    v6 = 1;
  }

  else if (@"com.apple.DigitalSeparation.FindMy" == restrictedCopy)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    if ([mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25EA0]] == 2)
    {
      v6 = 1;
    }

    else
    {
      mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
      v6 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:*MEMORY[0x277D25EA8]] == 2;
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
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeModificationAllowed = [mEMORY[0x277D262A0] isPasscodeModificationAllowed];

  return isPasscodeModificationAllowed ^ 1;
}

+ (BOOL)isFingerprintModificationRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isFingerprintModificationAllowed = [mEMORY[0x277D262A0] isFingerprintModificationAllowed];

  return isFingerprintModificationAllowed ^ 1;
}

+ (BOOL)isPrivateRelayRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isCloudPrivateRelayAllowed = [mEMORY[0x277D262A0] isCloudPrivateRelayAllowed];

  return isCloudPrivateRelayAllowed ^ 1;
}

+ (BOOL)hasRestriction
{
  if (([self isSourceRestricted:@"com.apple.DigitalSeparation.FindMy"] & 1) != 0 || +[DSRestrictionStore isSourceRestricted:](DSRestrictionStore, "isSourceRestricted:", @"com.apple.DigitalSeparation.Photos") || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", @"location") || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C100]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C118]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1E0]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1D0]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C110]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1A8]) || +[DSRestrictionStore isPermissionRestricted:](DSRestrictionStore, "isPermissionRestricted:", *MEMORY[0x277D6C1A0]) || +[DSRestrictionStore isPasscodeModificationRestricted](DSRestrictionStore, "isPasscodeModificationRestricted") || +[DSRestrictionStore isFingerprintModificationRestricted](DSRestrictionStore, "isFingerprintModificationRestricted") || +[DSRestrictionStore isAppRemovalRestricted](DSRestrictionStore, "isAppRemovalRestricted"))
  {
    return 1;
  }

  return +[DSRestrictionStore isPrivateRelayRestricted];
}

@end