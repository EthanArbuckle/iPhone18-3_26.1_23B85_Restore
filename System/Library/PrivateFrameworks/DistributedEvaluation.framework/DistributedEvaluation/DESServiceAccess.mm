@interface DESServiceAccess
+ (BOOL)hasMLRCtlEntitlement:(id)entitlement;
+ (BOOL)hasOnDemandLaunchEntitlement:(id)entitlement;
@end

@implementation DESServiceAccess

+ (BOOL)hasMLRCtlEntitlement:(id)entitlement
{
  v3 = [entitlement valueForEntitlement:@"com.apple.mlruntime.mlrctl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)hasOnDemandLaunchEntitlement:(id)entitlement
{
  v22 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  if ([self hasMLRCtlEntitlement:entitlementCopy])
  {
    v5 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DESServiceAccess hasOnDemandLaunchEntitlement:v5];
    }

    v6 = 1;
  }

  else
  {
    v5 = [entitlementCopy valueForEntitlement:@"com.apple.mlruntime.host.ondemandplugin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([bundleIdentifier isEqualToString:v14, v17]& 1) != 0)
            {
              v6 = 1;
              goto LABEL_22;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v9 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(DESServiceAccess *)bundleIdentifier hasOnDemandLaunchEntitlement:v9];
      }

      v6 = 0;
LABEL_22:
    }

    else
    {
      bundleIdentifier = +[DESLogging coreChannel];
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
      {
        [DESServiceAccess hasOnDemandLaunchEntitlement:bundleIdentifier];
      }

      v6 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)hasOnDemandLaunchEntitlement:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.mlruntime.host.ondemandplugin";
  _os_log_error_impl(&dword_248FF7000, log, OS_LOG_TYPE_ERROR, "Missing key=%@ or wrong type", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)hasOnDemandLaunchEntitlement:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.mlruntime.host.ondemandplugin";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Missing element in key=%@ with expected value=%@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)hasOnDemandLaunchEntitlement:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.mlruntime.host.ondemandplugin";
  _os_log_debug_impl(&dword_248FF7000, log, OS_LOG_TYPE_DEBUG, "Bypass check for %@ for internal tool", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end