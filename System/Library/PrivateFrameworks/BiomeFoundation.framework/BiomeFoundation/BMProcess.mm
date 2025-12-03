@interface BMProcess
+ (id)current;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BMProcess)init;
- (BMProcess)initWithAuditToken:(id *)token;
- (BOOL)BOOLForEntitlement:(id)entitlement;
- (BOOL)canPerformFileOperation:(id)operation onPath:(id)path report:(BOOL)report;
- (BOOL)canPerformGlobalMachLookup:(id)lookup report:(BOOL)report;
- (BOOL)canPerformSyscall:(id)syscall report:(BOOL)report;
- (BOOL)hasNonEmptyArrayForEntitlement:(id)entitlement;
- (BOOL)hasNonEmptyDictionaryForEntitlement:(id)entitlement;
- (BOOL)isSandboxed;
- (NSSet)useCases;
- (NSString)executableName;
- (NSString)executablePath;
- (id)_initWithAuditToken:(id *)token;
- (id)description;
- (id)dictionaryForEntitlement:(id)entitlement;
- (id)nonnullArrayForEntitlement:(id)entitlement;
- (id)nonnullSetOfStringsForEntitlement:(id)entitlement;
- (id)stringForEntitlement:(id)entitlement;
- (id)valueForEntitlement:(id)entitlement;
- (void)_initializeProcessProperties;
- (void)cacheValuesForEntitlements:(id)entitlements;
@end

@implementation BMProcess

+ (id)current
{
  if (current_onceToken != -1)
  {
    +[BMProcess current];
  }

  v3 = current_instance;

  return v3;
}

- (void)_initializeProcessProperties
{
  v10 = *MEMORY[0x1E69E9840];
  executableName = [self executableName];
  v6 = 138543618;
  v7 = executableName;
  v8 = 1024;
  v9 = [self pid];
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "Warning: Not trusting process %{public}@(%d)", &v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)executableName
{
  executablePath = [(BMProcess *)self executablePath];
  lastPathComponent = [executablePath lastPathComponent];

  return lastPathComponent;
}

- (NSString)executablePath
{
  v13 = *MEMORY[0x1E69E9840];
  executablePath = self->_executablePath;
  if (!executablePath)
  {
    self->_executablePath = &stru_1F20E2850;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(BMProcess *)self canPerformSyscall:&unk_1F20EBD10 report:0])
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = +[BMProcess current];
      v6 = [v5 canPerformSyscall:&unk_1F20EBD10 report:0];

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v7 = proc_pidpath_audittoken(&self->_auditToken, buffer, 0x1000u);
    if (v7 >= 1)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v7 encoding:4];
      v9 = self->_executablePath;
      self->_executablePath = v8;
    }

    goto LABEL_10;
  }

  if (([(NSString *)executablePath isEqual:&stru_1F20E2850]& 1) != 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v4 = self->_executablePath;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSSet)useCases
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33[0] = @"com.apple.private.intelligenceplatform.use-cases";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  if (os_variant_allows_internal_security_policies())
  {
    v32 = @"com.apple.internal.intelligenceplatform.use-cases";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];

    v3 = v5;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [(BMProcess *)self dictionaryForEntitlement:v10];
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v2 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v17 = [v2 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __20__BMProcess_current__block_invoke()
{
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    v0 = __biome_log_for_category(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      __20__BMProcess_current__block_invoke_cold_1();
    }

    v1 = 0;
  }

  else
  {
    v2 = [BMProcessCurrent alloc];
    v4[0] = *task_info_out;
    v4[1] = v7;
    v1 = [(BMProcess *)v2 initWithAuditToken:v4];
  }

  v3 = current_instance;
  current_instance = v1;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isSandboxed
{
  v2 = *&self->_auditToken.val[4];
  v4[0] = *self->_auditToken.val;
  v4[1] = v2;
  return BMSandboxCheck(v4, 0, 0, 0) != 0;
}

- (BMProcess)init
{
  v3 = __biome_log_for_category(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BMProcess init];
  }

  return 0;
}

- (BMProcess)initWithAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v3;
  v4 = [(BMProcess *)self _initWithAuditToken:v7];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    [(BMProcess *)v4 _initializeProcessProperties];
    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

- (id)_initWithAuditToken:(id *)token
{
  v13.receiver = self;
  v13.super_class = BMProcess;
  v4 = [(BMProcess *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = *token->var0;
    *(v4 + 24) = *&token->var0[4];
    *(v4 + 8) = v6;
    *(v4 + 12) = 0;
    v7 = objc_opt_new();
    v8 = v5[7];
    v5[7] = v7;

    *(v5 + 16) = 0;
    v9 = v5[9];
    v5[9] = 0;

    *(v5 + 20) = 0;
    v10 = objc_opt_new();
    v11 = v5[11];
    v5[11] = v10;

    v5[13] = 0;
  }

  return v5;
}

- (BOOL)canPerformSyscall:(id)syscall report:(BOOL)report
{
  v5 = *self->_auditToken.val;
  v6 = *&self->_auditToken.val[4];
  if (report)
  {
    v7 = 14;
  }

  else
  {
    v7 = *MEMORY[0x1E69E9BD0] | 0xE;
  }

  v9[0] = *self->_auditToken.val;
  v9[1] = v6;
  return BMSandboxCheck(v9, @"syscall-unix", v7, syscall) == 0;
}

- (BOOL)canPerformGlobalMachLookup:(id)lookup report:(BOOL)report
{
  reportCopy = report;
  lookupCopy = lookup;
  os_unfair_lock_lock(&self->_machLookupCacheLock);
  v7 = [(NSMutableDictionary *)self->_machLookupCache objectForKeyedSubscript:lookupCopy];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  intValue = [v7 intValue];
  if (intValue > 0)
  {
    if (intValue == 1)
    {
      if (reportCopy)
      {
        goto LABEL_13;
      }
    }

    else if (intValue != 2)
    {
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (intValue == -1)
  {
    v11 = __biome_log_for_category(6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMProcess canPerformGlobalMachLookup:report:];
    }

    goto LABEL_17;
  }

  if (!intValue)
  {
    v10 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if (reportCopy)
  {
    v12 = 2;
  }

  else
  {
    v12 = *MEMORY[0x1E69E9BD0] | 2;
  }

  v13 = *&self->_auditToken.val[4];
  v18[0] = *self->_auditToken.val;
  v18[1] = v13;
  v14 = BMSandboxCheck(v18, @"mach-lookup", v12, lookupCopy);
  v15 = v14;
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  [(NSMutableDictionary *)self->_machLookupCache setObject:v16 forKeyedSubscript:lookupCopy];

  v10 = v15 == 0;
LABEL_18:

  os_unfair_lock_unlock(&self->_machLookupCacheLock);
  return v10;
}

- (BOOL)canPerformFileOperation:(id)operation onPath:(id)path report:(BOOL)report
{
  v6 = *self->_auditToken.val;
  v7 = *&self->_auditToken.val[4];
  if (report)
  {
    v8 = 1;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9BD0] | 1;
  }

  v10[0] = *self->_auditToken.val;
  v10[1] = v7;
  return BMSandboxCheck(v10, operation, v8, path) == 0;
}

- (void)cacheValuesForEntitlements:(id)entitlements
{
  v32 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  os_unfair_lock_lock(&self->_entitlementCacheLock);
  selfCopy = self;
  v5 = xpc_copy_entitlement_for_token();
  v6 = v5;
  if (!v5 || MEMORY[0x1AC5ADDC0](v5) == MEMORY[0x1E69E9E80])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = entitlementsCopy;
    v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = v12;
          v14 = xpc_dictionary_get_value(v6, [v12 UTF8String]);
          if (v14 && (v15 = _CFXPCCreateCFObjectFromXPCObject(), (v16 = v15) != 0))
          {
            v17 = 0;
            v18 = v15;
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            v16 = 0;
            v17 = 1;
            v18 = null;
          }

          [(NSMutableDictionary *)selfCopy->_entitlementCache setObject:v18 forKeyedSubscript:v12, entitlementsCopy];
          if (v17)
          {
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = __biome_log_for_category(6);
    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__BMProcess_cacheValuesForEntitlements___block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = buf;
    if (cacheValuesForEntitlements__onceToken != -1)
    {
      dispatch_once(&cacheValuesForEntitlements__onceToken, block);
    }

    v8 = v28[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, v7, v8, "Failed to cache entitlements", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&selfCopy->_entitlementCacheLock);
  v19 = *MEMORY[0x1E69E9840];
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  os_unfair_lock_lock(&self->_entitlementCacheLock);
  v5 = [(NSMutableDictionary *)self->_entitlementCache objectForKeyedSubscript:entitlementCopy];
  if (v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
    if (v5 == null)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    [entitlementCopy UTF8String];
    null = xpc_copy_entitlement_for_token();
    if (null && (v8 = _CFXPCCreateCFObjectFromXPCObject(), (v7 = v8) != 0))
    {
      v9 = 0;
      null2 = v8;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      v7 = 0;
      v9 = 1;
    }

    [(NSMutableDictionary *)self->_entitlementCache setObject:null2 forKeyedSubscript:entitlementCopy];
    if (v9)
    {
    }

    v5 = v7;
  }

  v11 = v7;

  os_unfair_lock_unlock(&self->_entitlementCacheLock);

  return v11;
}

- (id)stringForEntitlement:(id)entitlement
{
  v3 = [(BMProcess *)self valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nonnullArrayForEntitlement:(id)entitlement
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(BMProcess *)self valueForEntitlement:entitlement];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v8[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)nonnullSetOfStringsForEntitlement:(id)entitlement
{
  v3 = [(BMProcess *)self valueForEntitlement:entitlement];
  v4 = BMNonnullSetOfStringsFromEntitlementValue(v3);

  return v4;
}

- (BOOL)hasNonEmptyArrayForEntitlement:(id)entitlement
{
  v3 = [(BMProcess *)self nonnullArrayForEntitlement:entitlement];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)BOOLForEntitlement:(id)entitlement
{
  v3 = [(BMProcess *)self valueForEntitlement:entitlement];
  v4 = [v3 isEqual:MEMORY[0x1E695E118]];

  return v4;
}

- (id)dictionaryForEntitlement:(id)entitlement
{
  v3 = [(BMProcess *)self valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasNonEmptyDictionaryForEntitlement:(id)entitlement
{
  v3 = [(BMProcess *)self dictionaryForEntitlement:entitlement];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  executableName = [(BMProcess *)self executableName];
  v5 = [v3 initWithFormat:@"<BMProcess %@(%d) %@>", executableName, self->_pid, self->_identifier];

  return v5;
}

- (void)canPerformGlobalMachLookup:report:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end