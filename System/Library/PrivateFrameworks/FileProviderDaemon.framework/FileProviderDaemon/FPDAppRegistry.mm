@interface FPDAppRegistry
- (void)addApps:(id)apps;
- (void)removeAppsWithBundleIDs:(id)ds;
@end

@implementation FPDAppRegistry

- (void)addApps:(id)apps
{
  appsCopy = apps;
  v7.receiver = self;
  v7.super_class = FPDAppRegistry;
  [(FPAppRegistry *)&v7 addApps:appsCopy];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDAppRegistry addApps:appsCopy];
  }

  fp_libnotifyPerUserNotificationName = [*MEMORY[0x1E6966E18] fp_libnotifyPerUserNotificationName];
  notify_post([fp_libnotifyPerUserNotificationName UTF8String]);
}

- (void)removeAppsWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v7.receiver = self;
  v7.super_class = FPDAppRegistry;
  [(FPAppRegistry *)&v7 removeAppsWithBundleIDs:dsCopy];
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDAppRegistry removeAppsWithBundleIDs:dsCopy];
  }

  fp_libnotifyPerUserNotificationName = [*MEMORY[0x1E6966E18] fp_libnotifyPerUserNotificationName];
  notify_post([fp_libnotifyPerUserNotificationName UTF8String]);
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