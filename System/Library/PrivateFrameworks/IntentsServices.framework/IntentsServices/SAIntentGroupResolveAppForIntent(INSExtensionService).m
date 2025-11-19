@interface SAIntentGroupResolveAppForIntent(INSExtensionService)
- (void)ins_resolveAppForIntent:()INSExtensionService completionHandler:;
@end

@implementation SAIntentGroupResolveAppForIntent(INSExtensionService)

- (void)ins_resolveAppForIntent:()INSExtensionService completionHandler:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CD38C8];
  v9 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[SAIntentGroupResolveAppForIntent(INSExtensionService) ins_resolveAppForIntent:completionHandler:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25553C000, v9, OS_LOG_TYPE_INFO, "%s ins_resolveAppForIntent: %@", &v16, 0x16u);
  }

  v10 = [a1 appsList];
  v11 = [v10 valueForKey:@"appIdentifyingInfo"];
  v12 = [v11 valueForKey:@"bundleId"];

  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[SAIntentGroupResolveAppForIntent(INSExtensionService) ins_resolveAppForIntent:completionHandler:]";
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_25553C000, v13, OS_LOG_TYPE_INFO, "%s appList = %@", &v16, 0x16u);
  }

  v14 = objc_alloc_init(MEMORY[0x277D47428]);
  [v14 setAppsList:v10];
  v7[2](v7, v14, 0);

  v15 = *MEMORY[0x277D85DE8];
}

@end