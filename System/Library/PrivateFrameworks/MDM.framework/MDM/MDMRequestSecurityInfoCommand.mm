@interface MDMRequestSecurityInfoCommand
+ (id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestSecurityInfoCommand

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)type
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDMRequestSecurityInfoCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:zone];
}

- (void)processRequest:(id)request completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  currentDevice = [MEMORY[0x277D26208] currentDevice];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v8 = objc_opt_new();
  supportsBlockLevelEncryption = [currentDevice supportsBlockLevelEncryption];
  if ([currentDevice supportsFileLevelEncryption])
  {
    v10 = supportsBlockLevelEncryption | 2;
  }

  else
  {
    v10 = supportsBlockLevelEncryption;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v8 setObject:v11 forKey:@"HardwareEncryptionCaps"];

  mEMORY[0x277D24648] = [MEMORY[0x277D24648] sharedConfiguration];
  isUserEnrollment = [mEMORY[0x277D24648] isUserEnrollment];

  v28 = @"IsUserEnrollment";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:isUserEnrollment];
  v29[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [v8 setObject:v15 forKey:@"ManagementStatus"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mEMORY[0x277D262A0], "currentPasscodeIsCompliantWithGlobalRestrictionsOutError:", 0)}];
  [v8 setObject:v16 forKey:@"PasscodeCompliant"];

  if ((isUserEnrollment & 1) == 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mEMORY[0x277D262A0], "isPasscodeSet")}];
    [v8 setObject:v17 forKey:@"PasscodePresent"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(mEMORY[0x277D262A0], "currentPasscodeIsCompliantWithProfileRestrictionsOutError:", 0)}];
    [v8 setObject:v18 forKey:@"PasscodeCompliantWithProfiles"];

    v19 = MEMORY[0x277CCABB0];
    v20 = *MEMORY[0x277D25FE0];
    v21 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25FE0]];
    v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "unsignedIntegerValue")}];
    [v8 setObject:v22 forKey:@"PasscodeLockGracePeriodEnforced"];

    v23 = MEMORY[0x277CCABB0];
    v24 = [mEMORY[0x277D262A0] userValueForSetting:v20];
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "unsignedIntegerValue")}];
    [v8 setObject:v25 forKey:@"PasscodeLockGracePeriod"];

    if ([MEMORY[0x277D03538] isSharediPad])
    {
      v26 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25D78]];
      [v8 setObject:v26 forKey:@"AutoLockTime"];
    }
  }

  [v5 setObject:v8 forKey:@"SecurityInfo"];
  handlerCopy[2](handlerCopy, v5);

  v27 = *MEMORY[0x277D85DE8];
}

@end