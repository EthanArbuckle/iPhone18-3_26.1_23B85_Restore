@interface CNTCCVersion1
+ (id)createAppAuthorizationRecordFromTCCAppInfo:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)isAuthorizationRestricted;
- (BOOL)isUnitTesting;
- (id)authorizationRecordForBundleIdentifier:(id)a3;
- (id)authorizationRecords;
- (id)isUnitTestingImpl;
- (int64_t)checkAuthorizationStatusOfAuditToken:(id *)a3;
- (int64_t)checkAuthorizationStatusOfAuditToken:(id)a3 assumedIdentity:(id)a4;
- (int64_t)checkAuthorizationStatusOfCurrentProcess;
- (void)requestAuthorization:(int64_t)a3 auditToken:(id)a4 assumedIdentity:(id)a5 completionHandler:(id)a6;
- (void)saveAuthorizationRecord:(id)a3;
- (void)simulateStatus:(int64_t)a3;
@end

@implementation CNTCCVersion1

- (int64_t)checkAuthorizationStatusOfCurrentProcess
{
  if (checkAuthorizationStatusOfCurrentProcess_cn_once_token_1 != -1)
  {
    [CNTCCVersion1 checkAuthorizationStatusOfCurrentProcess];
  }

  v3 = checkAuthorizationStatusOfCurrentProcess_cn_once_object_1;
  v4 = [(CNTCCVersion1 *)self simulateStatus];

  if (v4)
  {
    v5 = [(CNTCCVersion1 *)self simulateStatus];
    v6 = [v5 integerValue];
LABEL_8:

    goto LABEL_9;
  }

  if (![(CNTCCVersion1 *)self isUnitTesting])
  {
    v7 = *MEMORY[0x1E69D5500];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:TCCAccessPreflight()];
    v8 = [v3 objectForKeyedSubscript:v5];
    v6 = [v8 integerValue];

    goto LABEL_8;
  }

  v6 = 3;
LABEL_9:

  return v6;
}

void __57__CNTCCVersion1_checkAuthorizationStatusOfCurrentProcess__block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1EF464150;
  v4[1] = &unk_1EF464180;
  v5[0] = &unk_1EF464168;
  v5[1] = &unk_1EF464198;
  v4[2] = &unk_1EF4641B0;
  v5[2] = &unk_1EF4641C8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v1 = [v0 copy];
  v2 = checkAuthorizationStatusOfCurrentProcess_cn_once_object_1;
  checkAuthorizationStatusOfCurrentProcess_cn_once_object_1 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (int64_t)checkAuthorizationStatusOfAuditToken:(id *)a3
{
  v5 = [(CNTCCVersion1 *)self simulateStatus];

  if (v5)
  {
    v6 = [(CNTCCVersion1 *)self simulateStatus];
    v7 = [v6 integerValue];

    return v7;
  }

  else if ([(CNTCCVersion1 *)self isUnitTesting])
  {
    return 3;
  }

  else
  {
    v9 = *MEMORY[0x1E69D5500];
    v10 = *a3->var0;
    v11 = *&a3->var0[4];
    if (TCCAccessCheckAuditToken())
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

- (int64_t)checkAuthorizationStatusOfAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    if (v6)
    {
      [v6 audit_token];
      v9 = [(CNTCCVersion1 *)self checkAuthorizationStatusOfAuditToken:&v11];
    }

    else
    {
      v9 = [(CNTCCVersion1 *)self checkAuthorizationStatusOfCurrentProcess];
    }

    v8 = v9;
  }

  return v8;
}

- (BOOL)isAuthorizationRestricted
{
  v3 = [(CNTCCVersion1 *)self simulateStatus];

  if (v3 || [(CNTCCVersion1 *)self isUnitTesting])
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69D5500];
  return TCCAccessRestricted() != 0;
}

- (void)requestAuthorization:(int64_t)a3 auditToken:(id)a4 assumedIdentity:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = [(CNTCCVersion1 *)self simulateStatus];

  if (v8)
  {
    v9 = [(CNTCCVersion1 *)self simulateStatus];
    v7[2](v7, [v9 integerValue]);
  }

  else if ([(CNTCCVersion1 *)self isUnitTesting])
  {
    v7[2](v7, 3);
  }

  else
  {
    v10 = *MEMORY[0x1E69D5500];
    v11 = v7;
    TCCAccessRequest();
  }
}

- (id)authorizationRecords
{
  v3 = *MEMORY[0x1E69D5500];
  v4 = TCCAccessCopyInformation();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CNTCCVersion1_authorizationRecords__block_invoke;
  v7[3] = &unk_1E6ED63A0;
  v7[4] = self;
  v5 = [v4 _cn_compactMap:v7];

  return v5;
}

id __37__CNTCCVersion1_authorizationRecords__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() createAppAuthorizationRecordFromTCCAppInfo:v3 bundleIdentifier:0];

  v5 = off_1EF4401A8(&__block_literal_global_2_2, v4);

  return v5;
}

- (id)authorizationRecordForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = TCCAccessCopyInformationForBundleId();
  v5 = [v4 _cn_firstObjectPassingTest:&__block_literal_global_18];
  if (v5)
  {
    v6 = [objc_opt_class() createAppAuthorizationRecordFromTCCAppInfo:v5 bundleIdentifier:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __56__CNTCCVersion1_authorizationRecordForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69D54F8]];

  return CFStringCompare(v2, *MEMORY[0x1E69D5500], 1uLL) == kCFCompareEqualTo;
}

- (void)saveAuthorizationRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 authorizationStatus];
  v6 = [v4 bundleIdentifier];

  [(CNTCCVersion1 *)self setAuthorizationStatus:v5 forBundleIdentifier:v6 noKillApp:0];
}

+ (id)createAppAuthorizationRecordFromTCCAppInfo:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E69D54E0];
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69D54E8]];

  if (!v5 && v8)
  {
    v5 = CFBundleGetIdentifier(v8);
  }

  if (v5)
  {
    v10 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5];
    v11 = [v10 localizedName];
    v12 = v11;
    if (v11 && [v11 length])
    {
      if (CFBooleanGetValue(v9))
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      v14 = [[CNTCCAppAuthorizationRecord alloc] initWithBundleIdentifier:v5 localizedName:v12 recordType:0 authorizationStatus:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)simulateStatus:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(CNTCCVersion1 *)self setSimulateStatus:v4];
}

- (BOOL)isUnitTesting
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CNTCCVersion1_isUnitTesting__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  v3 = [v2 BOOLValue];

  return v3;
}

id __30__CNTCCVersion1_isUnitTesting__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    v4 = [v2 isUnitTestingImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  return v3;
}

- (id)isUnitTestingImpl
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 executablePath];

  if ([v3 hasSuffix:@"CNTestsHostiOS"] & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @"CNTestsHostiOS_XPC") & 1) != 0 || (objc_msgSend(v3, "hasSuffix:", @"otest"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasSuffix:@"xctest"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v5;
}

@end