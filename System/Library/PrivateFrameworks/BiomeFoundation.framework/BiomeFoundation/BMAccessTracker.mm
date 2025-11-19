@interface BMAccessTracker
+ (id)sharedInstance;
- (BMAccessTracker)init;
- (void)_logMissingEntitlementsForAccess:(id)a3 useCase:(id)a4;
- (void)logMissingEntitlementsForAccessToResource:(id)a3 domain:(unint64_t)a4 withMode:(unint64_t)a5 useCase:(id)a6;
@end

@implementation BMAccessTracker

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BMAccessTracker sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __33__BMAccessTracker_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(BMAccessTracker);

  return MEMORY[0x1EEE66BB8]();
}

- (BMAccessTracker)init
{
  v8.receiver = self;
  v8.super_class = BMAccessTracker;
  v2 = [(BMAccessTracker *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;
  }

  return v2;
}

- (void)logMissingEntitlementsForAccessToResource:(id)a3 domain:(unint64_t)a4 withMode:(unint64_t)a5 useCase:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [[BMAccessDescriptor alloc] initWithDomain:a4 accessMode:a5 resource:v10];
  lock = self->_lock;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__BMAccessTracker_logMissingEntitlementsForAccessToResource_domain_withMode_useCase___block_invoke;
  v17[3] = &unk_1E796AD90;
  v18 = v13;
  v15 = v11;
  v19 = v15;
  v20 = self;
  v16 = v13;
  [(_PASLock *)lock runWithLockAcquired:v17];

  objc_autoreleasePoolPop(v12);
}

- (void)_logMissingEntitlementsForAccess:(id)a3 useCase:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[BMProcess current];
  if (([v7 processType] - 2) >= 7)
  {
    v8 = @"com.apple.biome.access.user";
    if ([v5 domain] == 1)
    {
      v9 = @"com.apple.biome.access.system";

      v8 = v9;
    }

    if (([v7 canPerformGlobalMachLookup:v8 report:0] & 1) == 0)
    {
      v10 = __biome_log_for_category(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BMAccessTracker _logMissingEntitlementsForAccess:v8 useCase:v10];
      }
    }

    v11 = [v6 hasPrefix:@"__"];
    v12 = __biome_log_for_category(6);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (v11)
    {
      if (v13)
      {
        [BMAccessTracker _logMissingEntitlementsForAccess:v5 useCase:v12];
      }
    }

    else if (v13)
    {
      [(BMAccessTracker *)v5 _logMissingEntitlementsForAccess:v6 useCase:v12];
    }
  }
}

void __85__BMAccessTracker_logMissingEntitlementsForAccessToResource_domain_withMode_useCase___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) mode];
  v4 = [*(a1 + 32) resource];
  v5 = [v4 name];

  v6 = v23;
  if (v23)
  {
    v6 = v23[2];
  }

  v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 containsObject:v5];

  if ((v8 & 1) == 0)
  {
    if ((v3 & 2) != 0)
    {
      v18 = v23;
      if (v23)
      {
        v18 = v23[2];
      }

      v19 = [v18 objectForKeyedSubscript:*(a1 + 40)];

      if (!v19)
      {
        v20 = objc_opt_new();
        v21 = v23;
        if (v23)
        {
          v21 = v23[2];
        }

        [v21 setObject:v20 forKeyedSubscript:*(a1 + 40)];
      }

      v16 = v23;
      if (!v23)
      {
        goto LABEL_25;
      }

      v17 = 16;
      goto LABEL_24;
    }

    v9 = v23;
    if (v23)
    {
      v9 = v23[1];
    }

    v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = v23;
      if (v23)
      {
        v12 = v23[1];
      }

      v13 = [v12 objectForKeyedSubscript:*(a1 + 40)];

      if (!v13)
      {
        v14 = objc_opt_new();
        v15 = v23;
        if (v23)
        {
          v15 = v23[1];
        }

        [v15 setObject:v14 forKeyedSubscript:*(a1 + 40)];
      }

      v16 = v23;
      if (!v23)
      {
        goto LABEL_25;
      }

      v17 = 8;
LABEL_24:
      v16 = *&v16[v17];
LABEL_25:
      v22 = [v16 objectForKeyedSubscript:*(a1 + 40)];
      [v22 addObject:v5];

      [*(a1 + 48) _logMissingEntitlementsForAccess:*(a1 + 32) useCase:*(a1 + 40)];
    }
  }
}

- (void)_logMissingEntitlementsForAccess:(uint64_t)a1 useCase:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "Warning: This process is missing mach-lookup entitlement for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_logMissingEntitlementsForAccess:(NSObject *)a3 useCase:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = BMAccessModePrintableDescription([a1 mode]);
  v7 = [a1 resource];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_fault_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_FAULT, "This process is not entitled for %@ access to %@ for use case '%@'", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_logMissingEntitlementsForAccess:(void *)a1 useCase:(NSObject *)a2 .cold.3(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = BMAccessModePrintableDescription([a1 mode]);
  v5 = [a1 resource];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_FAULT, "This process is not entitled for %@ access to %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end