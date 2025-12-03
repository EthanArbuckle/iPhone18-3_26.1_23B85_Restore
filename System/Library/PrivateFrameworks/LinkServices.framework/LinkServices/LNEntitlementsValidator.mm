@interface LNEntitlementsValidator
+ (BOOL)currentProcessHasMachLookup:(id)lookup;
+ (BOOL)validateEntitlement:(id)entitlement auditToken:(id *)token validator:(id)validator;
+ (BOOL)validateEntitlement:(id)entitlement forCurrentTaskWithValidator:(id)validator;
+ (BOOL)validateEntitlement:(id)entitlement secTaskRef:(__SecTask *)ref validator:(id)validator;
+ (NSString)bundleIdentifierForCurrentProcess;
+ (id)bundleIdentifierForAuditToken:(id *)token;
+ (id)valueForEntitlement:(id)entitlement auditToken:(id *)token;
+ (id)valueForEntitlement:(id)entitlement secTaskRef:(__SecTask *)ref;
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

+ (id)bundleIdentifierForAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *token.val = *token->var0;
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

+ (BOOL)currentProcessHasMachLookup:(id)lookup
{
  lookupCopy = lookup;
  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  [lookupCopy UTF8String];

  return sandbox_check() == 0;
}

+ (BOOL)validateEntitlement:(id)entitlement forCurrentTaskWithValidator:(id)validator
{
  entitlementCopy = entitlement;
  validatorCopy = validator;
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
    v11 = [self validateEntitlement:entitlementCopy secTaskRef:v9 validator:validatorCopy];
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

+ (BOOL)validateEntitlement:(id)entitlement auditToken:(id *)token validator:(id)validator
{
  entitlementCopy = entitlement;
  validatorCopy = validator;
  v10 = *&token->var0[4];
  *token.val = *token->var0;
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
    v14 = [self validateEntitlement:entitlementCopy secTaskRef:v12 validator:validatorCopy];
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

+ (BOOL)validateEntitlement:(id)entitlement secTaskRef:(__SecTask *)ref validator:(id)validator
{
  v16 = *MEMORY[0x1E69E9840];
  validatorCopy = validator;
  error = 0;
  v8 = SecTaskCopyValueForEntitlement(ref, entitlement, &error);
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
    v10 = validatorCopy[2](validatorCopy, v8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)valueForEntitlement:(id)entitlement auditToken:(id *)token
{
  entitlementCopy = entitlement;
  v7 = *&token->var0[4];
  *token.val = *token->var0;
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
    v11 = [self valueForEntitlement:entitlementCopy secTaskRef:v9];
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

+ (id)valueForEntitlement:(id)entitlement secTaskRef:(__SecTask *)ref
{
  v13 = *MEMORY[0x1E69E9840];
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(ref, entitlement, &error);
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