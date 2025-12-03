@interface SAIntentGroupConfirmIntent(INSExtensionService)
- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:;
@end

@implementation SAIntentGroupConfirmIntent(INSExtensionService)

- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    backingStore = [a3 backingStore];
    *buf = 136315394;
    v27 = "[SAIntentGroupConfirmIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v28 = 2112;
    v29 = backingStore;
    _os_log_impl(&dword_25553C000, v14, OS_LOG_TYPE_INFO, "%s intent.backingStore = %@", buf, 0x16u);
  }

  v16 = +[INSAnalytics sharedAnalytics];
  ins_afAnalyticsContext = [self ins_afAnalyticsContext];
  [v16 logEventWithType:611 context:ins_afAnalyticsContext contextNoCopy:1];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__SAIntentGroupConfirmIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke;
  v25[3] = &unk_2797EAC50;
  v25[4] = self;
  [v10 setResponseHandler:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __109__SAIntentGroupConfirmIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_2;
  v21[3] = &unk_2797EACE8;
  v22 = v11;
  selfCopy = self;
  v24 = v12;
  v18 = v12;
  v19 = v11;
  [v10 confirmIntentWithCompletionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

@end