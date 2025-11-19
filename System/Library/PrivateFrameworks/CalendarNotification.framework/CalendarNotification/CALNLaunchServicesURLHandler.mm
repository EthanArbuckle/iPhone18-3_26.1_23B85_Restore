@interface CALNLaunchServicesURLHandler
+ (id)_openApplicationOptionsForResponse:(id)a3;
+ (id)sharedInstance;
- (void)openURL:(id)a3 response:(id)a4;
@end

@implementation CALNLaunchServicesURLHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CALNLaunchServicesURLHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __46__CALNLaunchServicesURLHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)openURL:(id)a3 response:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = os_transaction_create();
  if (v6)
  {
    v8 = [v6 notificationRecord];
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 sourceIdentifier];
      v11 = [v8 sourceClientIdentifier];
      v12 = [v6 actionIdentifier];
      *buf = 138544130;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Opening url for response, source identifier = %{public}@, source client identifier = %{public}@, action identifier = %{public}@, url = %@", buf, 0x2Au);
    }
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Opening url: %@", buf, 0xCu);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CC1F00]);
  v14 = [objc_opt_class() _openApplicationOptionsForResponse:v6];
  [v13 setFrontBoardOptions:v14];

  v15 = [v6 targetConnectionEndpoint];
  [v13 setTargetConnectionEndpoint:v15];

  [v13 setSensitive:1];
  if ([v5 isFileURL])
  {
    [v5 startAccessingSecurityScopedResource];
  }

  v16 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke;
  v20[3] = &unk_278D6F790;
  v21 = v5;
  v22 = v7;
  v17 = v7;
  v18 = v5;
  [v16 openURL:v18 configuration:v13 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke_cold_1(v6, a1, v7);
    }
  }

  if ([*(a1 + 32) isFileURL])
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }
}

+ (id)_openApplicationOptionsForResponse:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D0AC70];
  v12[0] = *MEMORY[0x277D0AC58];
  v12[1] = v6;
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [v5 initWithDictionary:v7];

  v9 = [v4 originIdentifier];

  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0AC28]];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void __49__CALNLaunchServicesURLHandler_openURL_response___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Could not open url, error = %@, url = %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end