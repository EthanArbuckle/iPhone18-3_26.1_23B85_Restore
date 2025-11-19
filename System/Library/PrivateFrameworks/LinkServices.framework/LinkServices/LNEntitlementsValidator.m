@interface LNEntitlementsValidator
+ (BOOL)currentProcessHasMachLookup:(id)a3;
+ (BOOL)validateEntitlement:(id)a3 auditToken:(id *)a4 validator:(id)a5;
+ (BOOL)validateEntitlement:(id)a3 forCurrentTaskWithValidator:(id)a4;
+ (BOOL)validateEntitlement:(id)a3 secTaskRef:(__SecTask *)a4 validator:(id)a5;
+ (NSString)bundleIdentifierForCurrentProcess;
+ (id)bundleIdentifierForAuditToken:(id *)a3;
+ (id)valueForEntitlement:(id)a3 auditToken:(id *)a4;
+ (id)valueForEntitlement:(id)a3 secTaskRef:(__SecTask *)a4;
@end

@implementation LNEntitlementsValidator

+ (NSString)bundleIdentifierForCurrentProcess
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__LNEntitlementsValidator_bundleIdentifierForCurrentProcess__block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v2;
    v4 = _Block_copy(aBlock);
    v7 = 0;
    if (LNCopyBundleIdentifierAndTeamFromSecTaskRef(v3, &v7))
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4);
  }

  else
  {
    v4 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_FAULT, "SecTaskCreateFromSelf() failed, assuming this task is NOT entitled.", &v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)bundleIdentifierForAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (v4)
  {
    v5 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__LNEntitlementsValidator_bundleIdentifierForAuditToken___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v4;
    v6 = _Block_copy(aBlock);
    *token.val = 0;
    if (LNCopyBundleIdentifierAndTeamFromSecTaskRef(v5, &token))
    {
      v7 = *token.val;
    }

    else
    {
      v7 = 0;
    }

    (*(v6 + 16))(v6);
  }

  else
  {
    v6 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed, assuming the task is NOT entitled.", &token, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)currentProcessHasMachLookup:(id)a3
{
  v3 = a3;
  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  [v3 UTF8String];

  return sandbox_check() == 0;
}

+ (BOOL)validateEntitlement:(id)a3 forCurrentTaskWithValidator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SecTaskCreateFromSelf(0);
  if (v8)
  {
    v9 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__LNEntitlementsValidator_validateEntitlement_forCurrentTaskWithValidator___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v8;
    v10 = _Block_copy(aBlock);
    v11 = [a1 validateEntitlement:v6 secTaskRef:v9 validator:v7];
    (*(v10 + 16))(v10);
  }

  else
  {
    v10 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_FAULT, "SecTaskCreateFromSelf() failed, assuming this task is NOT entitled.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (BOOL)validateEntitlement:(id)a3 auditToken:(id *)a4 validator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *&a4->var0[4];
  *token.val = *a4->var0;
  *&token.val[4] = v10;
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (v11)
  {
    v12 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__LNEntitlementsValidator_validateEntitlement_auditToken_validator___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v11;
    v13 = _Block_copy(aBlock);
    v14 = [a1 validateEntitlement:v8 secTaskRef:v12 validator:v9];
    (*(v13 + 16))(v13);
  }

  else
  {
    v13 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed, assuming the task is NOT entitled.", &token, 2u);
    }

    v14 = 0;
  }

  return v14;
}

+ (BOOL)validateEntitlement:(id)a3 secTaskRef:(__SecTask *)a4 validator:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a5;
  error = 0;
  v8 = SecTaskCopyValueForEntitlement(a4, a3, &error);
  if (error)
  {
    v9 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = error;
      _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_FAULT, "SecTaskCopyValueForEntitlement() failed with error %{public}@", buf, 0xCu);
    }

    CFRelease(error);
    v10 = 0;
  }

  else
  {
    v10 = v7[2](v7, v8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)valueForEntitlement:(id)a3 auditToken:(id *)a4
{
  v6 = a3;
  v7 = *&a4->var0[4];
  *token.val = *a4->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__LNEntitlementsValidator_valueForEntitlement_auditToken___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v8;
    v10 = _Block_copy(aBlock);
    v11 = [a1 valueForEntitlement:v6 secTaskRef:v9];
    (*(v10 + 16))(v10);
  }

  else
  {
    v10 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed, assuming the task is NOT entitled.", &token, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)valueForEntitlement:(id)a3 secTaskRef:(__SecTask *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a4, a3, &error);
  v5 = v4;
  if (error)
  {
    v6 = getLNLogCategorySecurity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v12 = error;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_FAULT, "SecTaskCopyValueForEntitlement() failed with error %{public}@", buf, 0xCu);
    }

    CFRelease(error);
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end