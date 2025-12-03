@interface DMFFetchSecurityInformationRequest
+ (NSArray)allPlatformSecurityInfoKeys;
+ (NSArray)currentPlatformSecurityInfoKeys;
+ (NSArray)iOSSecurityInfoKeys;
+ (NSArray)macOSSecurityInfoKeys;
+ (NSArray)tvOSSecurityInfoKeys;
+ (NSArray)watchOSSecurityInfoKeys;
- (DMFFetchSecurityInformationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchSecurityInformationRequest

- (DMFFetchSecurityInformationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFFetchSecurityInformationRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"infoKeys"];
    infoKeys = v5->_infoKeys;
    v5->_infoKeys = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchSecurityInformationRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchSecurityInformationRequest *)self infoKeys:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"infoKeys"];
}

+ (NSArray)currentPlatformSecurityInfoKeys
{
  v3 = MEMORY[0x1E695DF70];
  allPlatformSecurityInfoKeys = [self allPlatformSecurityInfoKeys];
  v5 = [v3 arrayWithArray:allPlatformSecurityInfoKeys];

  iOSSecurityInfoKeys = [self iOSSecurityInfoKeys];
  [v5 addObjectsFromArray:iOSSecurityInfoKeys];

  return v5;
}

+ (NSArray)allPlatformSecurityInfoKeys
{
  if (allPlatformSecurityInfoKeys_onceToken != -1)
  {
    +[DMFFetchSecurityInformationRequest allPlatformSecurityInfoKeys];
  }

  v3 = allPlatformSecurityInfoKeys_result;

  return v3;
}

void __65__DMFFetchSecurityInformationRequest_allPlatformSecurityInfoKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"DMFSecurityPasscodeIsSetKey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = allPlatformSecurityInfoKeys_result;
  allPlatformSecurityInfoKeys_result = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSArray)iOSSecurityInfoKeys
{
  if (iOSSecurityInfoKeys_onceToken != -1)
  {
    +[DMFFetchSecurityInformationRequest iOSSecurityInfoKeys];
  }

  v3 = iOSSecurityInfoKeys_result;

  return v3;
}

void __57__DMFFetchSecurityInformationRequest_iOSSecurityInfoKeys__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"DMFSecurityPasscodeIsCompliantWithGlobalRestrictionsKey";
  v3[1] = @"DMFSecurityPasscodeIsCompliantWithProfileRestrictionsKey";
  v3[2] = @"DMFSecurityPasscodeLockGracePeriodEnforcedKey";
  v3[3] = @"DMFSecurityPasscodeLockGracePeriodKey";
  v3[4] = @"DMFSecuritySupportsBlockLevelEncryptionKey";
  v3[5] = @"DMFSecuirtySupportsFileLevelEncryptionKey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = iOSSecurityInfoKeys_result;
  iOSSecurityInfoKeys_result = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSArray)macOSSecurityInfoKeys
{
  if (macOSSecurityInfoKeys_onceToken != -1)
  {
    +[DMFFetchSecurityInformationRequest macOSSecurityInfoKeys];
  }

  v3 = macOSSecurityInfoKeys_result;

  return v3;
}

void __59__DMFFetchSecurityInformationRequest_macOSSecurityInfoKeys__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"DMFSecurityFirmwarePasswordStatusKey";
  v3[1] = @"DMFSecurityFirewallSettingsKey";
  v3[2] = @"DMFSecurityFullDiskEncryptionEnabledKey";
  v3[3] = @"DMFSecurityFullDiskEncryptionHasInstitutionalRecoveryKey";
  v3[4] = @"DMFSecurityFullDiskEncryptionHasPersonalRecoveryKey";
  v3[5] = @"DMFSecuritySystemIntegrityProtectionEnabledKey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = macOSSecurityInfoKeys_result;
  macOSSecurityInfoKeys_result = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSArray)tvOSSecurityInfoKeys
{
  if (tvOSSecurityInfoKeys_onceToken != -1)
  {
    +[DMFFetchSecurityInformationRequest tvOSSecurityInfoKeys];
  }

  v3 = tvOSSecurityInfoKeys_result;

  return v3;
}

void __58__DMFFetchSecurityInformationRequest_tvOSSecurityInfoKeys__block_invoke()
{
  v0 = tvOSSecurityInfoKeys_result;
  tvOSSecurityInfoKeys_result = MEMORY[0x1E695E0F0];
}

+ (NSArray)watchOSSecurityInfoKeys
{
  if (watchOSSecurityInfoKeys_onceToken != -1)
  {
    +[DMFFetchSecurityInformationRequest watchOSSecurityInfoKeys];
  }

  v3 = watchOSSecurityInfoKeys_result;

  return v3;
}

void __61__DMFFetchSecurityInformationRequest_watchOSSecurityInfoKeys__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"DMFSecurityPasscodeIsCompliantWithGlobalRestrictionsKey";
  v3[1] = @"DMFSecurityPasscodeIsCompliantWithProfileRestrictionsKey";
  v3[2] = @"DMFSecurityPasscodeLockGracePeriodEnforcedKey";
  v3[3] = @"DMFSecurityPasscodeLockGracePeriodKey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = watchOSSecurityInfoKeys_result;
  watchOSSecurityInfoKeys_result = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end