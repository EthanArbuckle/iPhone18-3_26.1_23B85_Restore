@interface FPDAppRegistry
- (void)addApps:(id)a3;
- (void)removeAppsWithBundleIDs:(id)a3;
@end

@implementation FPDAppRegistry

- (void)addApps:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FPDAppRegistry;
  [(FPAppRegistry *)&v7 addApps:v4];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDAppRegistry addApps:v4];
  }

  v6 = [*MEMORY[0x1E6966E18] fp_libnotifyPerUserNotificationName];
  notify_post([v6 UTF8String]);
}

- (void)removeAppsWithBundleIDs:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FPDAppRegistry;
  [(FPAppRegistry *)&v7 removeAppsWithBundleIDs:v4];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDAppRegistry removeAppsWithBundleIDs:v4];
  }

  v6 = [*MEMORY[0x1E6966E18] fp_libnotifyPerUserNotificationName];
  notify_post([v6 UTF8String]);
}

- (void)addApps:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6966E18];
  [a1 count];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_5_2(&dword_1CEFC7000, v2, v3, "[DEBUG] posting %@ for %lu apps", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeAppsWithBundleIDs:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6966E18];
  [a1 count];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_5_2(&dword_1CEFC7000, v2, v3, "[DEBUG] posting %@ for removal of %lu apps", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end