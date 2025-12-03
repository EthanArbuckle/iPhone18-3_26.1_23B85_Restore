@interface BMProcessCurrent
- (BOOL)allowedToHaveDatavaultEntitlement;
- (BOOL)canAccessAppleKeyStore;
- (BOOL)isManagedByLaunchd;
- (BOOL)isManagedByRunningBoard;
- (BOOL)isRunningInUserContext;
- (BOOL)reliesOnDirectAccessForDomain:(unint64_t)domain;
- (id)_initWithAuditToken:(id *)token;
- (id)runningBoardAssertionWithExplanation:(id)explanation;
- (unint64_t)_session;
- (void)enforceDatavaultEntitlementRestrictions;
@end

@implementation BMProcessCurrent

- (BOOL)canAccessAppleKeyStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__BMProcessCurrent_canAccessAppleKeyStore__block_invoke;
  block[3] = &unk_1E796B420;
  block[4] = self;
  if (canAccessAppleKeyStore_onceToken != -1)
  {
    dispatch_once(&canAccessAppleKeyStore_onceToken, block);
  }

  return canAccessAppleKeyStore_result;
}

- (void)enforceDatavaultEntitlementRestrictions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BMProcessCurrent_enforceDatavaultEntitlementRestrictions__block_invoke;
  block[3] = &unk_1E796B420;
  block[4] = self;
  if (enforceDatavaultEntitlementRestrictions_onceToken != -1)
  {
    dispatch_once(&enforceDatavaultEntitlementRestrictions_onceToken, block);
  }
}

uint64_t __59__BMProcessCurrent_enforceDatavaultEntitlementRestrictions__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasDatavaultEntitlement];
  if (result)
  {
    result = [*(a1 + 32) allowedToHaveDatavaultEntitlement];
    if ((result & 1) == 0)
    {
      v3 = __biome_log_for_category(6);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __59__BMProcessCurrent_enforceDatavaultEntitlementRestrictions__block_invoke_cold_1();
      }

      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

- (id)_initWithAuditToken:(id *)token
{
  v9.receiver = self;
  v9.super_class = BMProcessCurrent;
  v3 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v3;
  v4 = [(BMProcess *)&v9 _initWithAuditToken:v8];
  v5 = v4;
  if (v4)
  {
    *(v4 + 30) = 0;
    v6 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  return v5;
}

- (BOOL)isManagedByLaunchd
{
  if (isManagedByLaunchd_onceToken != -1)
  {
    [BMProcessCurrent isManagedByLaunchd];
  }

  return isManagedByLaunchd_isManaged;
}

uint64_t __38__BMProcessCurrent_isManagedByLaunchd__block_invoke()
{
  result = vproc_swap_integer();
  if (!result)
  {
    isManagedByLaunchd_isManaged = 0;
  }

  return result;
}

- (unint64_t)_session
{
  if (_session_onceToken != -1)
  {
    [BMProcessCurrent _session];
  }

  return _session_session;
}

void __28__BMProcessCurrent__session__block_invoke()
{
  vproc_swap_string();
  _session_session = 0;
  free(0);
}

- (BOOL)isRunningInUserContext
{
  if (![(BMProcessCurrent *)self isManagedByLaunchd])
  {
    return geteuid() > 0x1F4;
  }

  _session = [(BMProcessCurrent *)self _session];
  if (_session - 3 < 2)
  {
    return 0;
  }

  return _session || geteuid() > 0x1F4;
}

- (BOOL)reliesOnDirectAccessForDomain:(unint64_t)domain
{
  if (![(BMProcess *)self processType])
  {
    return 0;
  }

  if ([(BMProcess *)self processType]== 2)
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_reliesOnLegacyDirectAccessLock);
  reliesOnLegacyDirectAccess = self->_reliesOnLegacyDirectAccess;
  if (reliesOnLegacyDirectAccess)
  {
    bOOLValue = [(NSNumber *)reliesOnLegacyDirectAccess BOOLValue];
  }

  else if (![(BMProcess *)self BOOLForEntitlement:@"com.apple.private.security.storage.Biome"]|| ([(BMProcessCurrent *)self enforceDatavaultEntitlementRestrictions], [(BMProcess *)self canPerformGlobalMachLookup:@"com.apple.biome.PublicStreamAccessService" report:0]) || [(BMProcess *)self canPerformGlobalMachLookup:@"com.apple.biome.access.user" report:0]|| [(BMProcess *)self canPerformGlobalMachLookup:@"com.apple.biome.access.system" report:0])
  {
    v6 = self->_reliesOnLegacyDirectAccess;
    self->_reliesOnLegacyDirectAccess = MEMORY[0x1E695E110];

    bOOLValue = 0;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __biome_log_for_category(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1AC15D000, v8, OS_LOG_TYPE_ERROR, "Warning: process needs to add mach-lookup for access service and remove datavault entitlement", v10, 2u);
      }
    }

    v9 = self->_reliesOnLegacyDirectAccess;
    self->_reliesOnLegacyDirectAccess = MEMORY[0x1E695E118];

    bOOLValue = 1;
  }

  os_unfair_lock_unlock(&self->_reliesOnLegacyDirectAccessLock);
  return bOOLValue;
}

- (BOOL)allowedToHaveDatavaultEntitlement
{
  processType = [(BMProcess *)self processType];
  if (processType)
  {
    if ([(BMProcess *)self processType]== 1)
    {
      executableName = [(BMProcess *)self executableName];
      v5 = [&unk_1F20EC250 containsObject:executableName];

      LOBYTE(processType) = v5;
    }

    else
    {
      LOBYTE(processType) = 1;
    }
  }

  return processType;
}

uint64_t __42__BMProcessCurrent_canAccessAppleKeyStore__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = *(v1 + 8);
  v4[1] = v2;
  result = BMSandboxCheck(v4, @"iokit-open-user-client", 13, @"AppleKeyStoreUserClient");
  canAccessAppleKeyStore_result = result == 0;
  return result;
}

- (BOOL)isManagedByRunningBoard
{
  if (isManagedByRunningBoard_onceToken != -1)
  {
    [BMProcessCurrent isManagedByRunningBoard];
  }

  return isManagedByRunningBoard_isManaged;
}

void __43__BMProcessCurrent_isManagedByRunningBoard__block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRBSProcessHandleClass_softClass;
  v7 = getRBSProcessHandleClass_softClass;
  if (!getRBSProcessHandleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRBSProcessHandleClass_block_invoke;
    v3[3] = &unk_1E796AC10;
    v3[4] = &v4;
    __getRBSProcessHandleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  v2 = [v0 currentProcess];
  isManagedByRunningBoard_isManaged = [v2 isManaged];
}

- (id)runningBoardAssertionWithExplanation:(id)explanation
{
  v33[2] = *MEMORY[0x1E69E9840];
  explanationCopy = explanation;
  if ([(BMProcessCurrent *)self isManagedByRunningBoard])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v5 = getRBSTargetClass_softClass;
    v32 = getRBSTargetClass_softClass;
    if (!getRBSTargetClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getRBSTargetClass_block_invoke;
      v27 = &unk_1E796AC10;
      v28 = &v29;
      __getRBSTargetClass_block_invoke(&v24);
      v5 = v30[3];
    }

    v6 = v5;
    _Block_object_dispose(&v29, 8);
    v7 = [v5 targetWithPid:getpid()];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v8 = getRBSAssertionClass_softClass;
    v32 = getRBSAssertionClass_softClass;
    if (!getRBSAssertionClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getRBSAssertionClass_block_invoke;
      v27 = &unk_1E796AC10;
      v28 = &v29;
      __getRBSAssertionClass_block_invoke(&v24);
      v8 = v30[3];
    }

    v9 = v8;
    _Block_object_dispose(&v29, 8);
    v10 = [v8 alloc];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v11 = getRBSDomainAttributeClass_softClass;
    v32 = getRBSDomainAttributeClass_softClass;
    if (!getRBSDomainAttributeClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getRBSDomainAttributeClass_block_invoke;
      v27 = &unk_1E796AC10;
      v28 = &v29;
      __getRBSDomainAttributeClass_block_invoke(&v24);
      v11 = v30[3];
    }

    v12 = v11;
    _Block_object_dispose(&v29, 8);
    v13 = [v11 attributeWithDomain:@"com.apple.common" name:@"FinishTaskNow"];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v14 = getRBSAcquisitionCompletionAttributeClass_softClass;
    v32 = getRBSAcquisitionCompletionAttributeClass_softClass;
    v33[0] = v13;
    if (!getRBSAcquisitionCompletionAttributeClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getRBSAcquisitionCompletionAttributeClass_block_invoke;
      v27 = &unk_1E796AC10;
      v28 = &v29;
      __getRBSAcquisitionCompletionAttributeClass_block_invoke(&v24);
      v14 = v30[3];
    }

    v15 = v14;
    _Block_object_dispose(&v29, 8);
    v16 = [v14 attributeWithCompletionPolicy:1];
    v33[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v18 = [v10 initWithExplanation:explanationCopy target:v7 attributes:v17];

    v23 = 0;
    LOBYTE(v16) = [v18 acquireWithError:&v23];
    v19 = v23;
    if ((v16 & 1) == 0)
    {
      v20 = __biome_log_for_category(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [BMProcessCurrent runningBoardAssertionWithExplanation:];
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

void __59__BMProcessCurrent_enforceDatavaultEntitlementRestrictions__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runningBoardAssertionWithExplanation:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end