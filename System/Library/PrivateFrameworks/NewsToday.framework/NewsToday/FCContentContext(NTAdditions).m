@interface FCContentContext(NTAdditions)
+ (id)nt_contentContextWithConfigurationManager:()NTAdditions contentHostDirectory:networkBehaviorMonitor:;
@end

@implementation FCContentContext(NTAdditions)

+ (id)nt_contentContextWithConfigurationManager:()NTAdditions contentHostDirectory:networkBehaviorMonitor:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[FCContentContext(NTAdditions) nt_contentContextWithConfigurationManager:contentHostDirectory:networkBehaviorMonitor:];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[FCContentContext(NTAdditions) nt_contentContextWithConfigurationManager:contentHostDirectory:networkBehaviorMonitor:];
  }

LABEL_6:
  v10 = [MEMORY[0x277D30F18] defaultConfiguration];
  v11 = objc_alloc(MEMORY[0x277D30F08]);
  v12 = [MEMORY[0x277D31140] sharedNetworkReachability];
  v13 = [v11 initWithConfiguration:v10 configurationManager:v7 contentHostDirectory:v8 networkBehaviorMonitor:v9 networkReachability:v12 desiredHeadlineFieldOptions:0x101FC383FLL feedUsage:10 assetKeyManagerDelegate:0 appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

  return v13;
}

+ (void)nt_contentContextWithConfigurationManager:()NTAdditions contentHostDirectory:networkBehaviorMonitor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "configurationManager", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)nt_contentContextWithConfigurationManager:()NTAdditions contentHostDirectory:networkBehaviorMonitor:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentHostDirectoryFileURL", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end