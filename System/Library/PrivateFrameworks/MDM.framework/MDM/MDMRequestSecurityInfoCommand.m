@interface MDMRequestSecurityInfoCommand
+ (id)request;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestSecurityInfoCommand

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)a3
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDMRequestSecurityInfoCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:a3];
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v6 = [MEMORY[0x277D26208] currentDevice];
  v7 = [MEMORY[0x277D262A0] sharedConnection];
  v8 = objc_opt_new();
  v9 = [v6 supportsBlockLevelEncryption];
  if ([v6 supportsFileLevelEncryption])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v8 setObject:v11 forKey:@"HardwareEncryptionCaps"];

  v12 = [MEMORY[0x277D24648] sharedConfiguration];
  v13 = [v12 isUserEnrollment];

  v28 = @"IsUserEnrollment";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v29[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [v8 setObject:v15 forKey:@"ManagementStatus"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "currentPasscodeIsCompliantWithGlobalRestrictionsOutError:", 0)}];
  [v8 setObject:v16 forKey:@"PasscodeCompliant"];

  if ((v13 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isPasscodeSet")}];
    [v8 setObject:v17 forKey:@"PasscodePresent"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "currentPasscodeIsCompliantWithProfileRestrictionsOutError:", 0)}];
    [v8 setObject:v18 forKey:@"PasscodeCompliantWithProfiles"];

    v19 = MEMORY[0x277CCABB0];
    v20 = *MEMORY[0x277D25FE0];
    v21 = [v7 effectiveValueForSetting:*MEMORY[0x277D25FE0]];
    v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "unsignedIntegerValue")}];
    [v8 setObject:v22 forKey:@"PasscodeLockGracePeriodEnforced"];

    v23 = MEMORY[0x277CCABB0];
    v24 = [v7 userValueForSetting:v20];
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "unsignedIntegerValue")}];
    [v8 setObject:v25 forKey:@"PasscodeLockGracePeriod"];

    if ([MEMORY[0x277D03538] isSharediPad])
    {
      v26 = [v7 effectiveValueForSetting:*MEMORY[0x277D25D78]];
      [v8 setObject:v26 forKey:@"AutoLockTime"];
    }
  }

  [v5 setObject:v8 forKey:@"SecurityInfo"];
  v4[2](v4, v5);

  v27 = *MEMORY[0x277D85DE8];
}

@end