@interface SAIntentGroupProcessIntent(INSExtensionService)
- (void)_confirmIntentWithExtensionProxy:()INSExtensionService onQueue:processIntentCompleted:completionHandler:;
- (void)_handleIntentWithExtensionProxy:()INSExtensionService onQueue:processIntentCompleted:completionHandler:;
- (void)_resolveIntentSlotsWithExtensionProxy:()INSExtensionService onQueue:processIntentCompleted:completionHandler:;
- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:;
@end

@implementation SAIntentGroupProcessIntent(INSExtensionService)

- (void)_handleIntentWithExtensionProxy:()INSExtensionService onQueue:processIntentCompleted:completionHandler:
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[INSAnalytics sharedAnalytics];
  ins_afAnalyticsContext = [self ins_afAnalyticsContext];
  [v14 logEventWithType:640 context:ins_afAnalyticsContext contextNoCopy:1];

  [v12 setLastAttemptedStep:*MEMORY[0x277D48498]];
  v16 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    _connection = [v10 _connection];
    intent = [_connection intent];
    *buf = 136315394;
    v30 = "[SAIntentGroupProcessIntent(INSExtensionService) _handleIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]";
    v31 = 2112;
    v32 = intent;
    _os_log_impl(&dword_25553C000, v17, OS_LOG_TYPE_INFO, "%s Beginning HandleIntent with intent %@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __132__SAIntentGroupProcessIntent_INSExtensionService___handleIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke;
  v24[3] = &unk_2797EA870;
  v25 = v11;
  selfCopy = self;
  v27 = v12;
  v28 = v13;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  [v10 handleIntentWithCompletionHandler:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_confirmIntentWithExtensionProxy:()INSExtensionService onQueue:processIntentCompleted:completionHandler:
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[INSAnalytics sharedAnalytics];
  ins_afAnalyticsContext = [self ins_afAnalyticsContext];
  [v14 logEventWithType:638 context:ins_afAnalyticsContext contextNoCopy:1];

  [v12 setLastAttemptedStep:*MEMORY[0x277D48490]];
  v16 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    _connection = [v10 _connection];
    intent = [_connection intent];
    typeName = [intent typeName];
    *buf = 136315394;
    v33 = "[SAIntentGroupProcessIntent(INSExtensionService) _confirmIntentWithExtensionProxy:onQueue:processIntentCompleted:completionHandler:]";
    v34 = 2112;
    v35 = typeName;
    _os_log_impl(&dword_25553C000, v17, OS_LOG_TYPE_INFO, "%s Beginning ConfirmIntent with intent %@", buf, 0x16u);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __133__SAIntentGroupProcessIntent_INSExtensionService___confirmIntentWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke;
  v26[3] = &unk_2797EA848;
  v27 = v11;
  selfCopy = self;
  v29 = v12;
  v30 = v10;
  v31 = v13;
  v21 = v13;
  v22 = v10;
  v23 = v12;
  v24 = v11;
  [v22 confirmIntentWithCompletionHandler:v26];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_resolveIntentSlotsWithExtensionProxy:()INSExtensionService onQueue:processIntentCompleted:completionHandler:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[INSAnalytics sharedAnalytics];
  ins_afAnalyticsContext = [self ins_afAnalyticsContext];
  [v14 logEventWithType:636 context:ins_afAnalyticsContext contextNoCopy:1];

  [v12 setLastAttemptedStep:*MEMORY[0x277D484A0]];
  intentSlotKeyPaths = [self intentSlotKeyPaths];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __138__SAIntentGroupProcessIntent_INSExtensionService___resolveIntentSlotsWithExtensionProxy_onQueue_processIntentCompleted_completionHandler___block_invoke;
  v21[3] = &unk_2797EA820;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v24 = v10;
  v25 = v13;
  v17 = v13;
  v18 = v10;
  v19 = v12;
  v20 = v11;
  [v18 resolveIntentSlotKeyPaths:intentSlotKeyPaths completionHandler:v21];
}

- (void)ins_sendIntent:()INSExtensionService toExtensionProxy:onQueue:completionHandler:
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CD38C8];
  v15 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    intentSlotKeyPaths = [self intentSlotKeyPaths];
    *buf = 136315394;
    v34 = "[SAIntentGroupProcessIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v35 = 2112;
    v36 = intentSlotKeyPaths;
    _os_log_impl(&dword_25553C000, v16, OS_LOG_TYPE_INFO, "%s intentSlotKeyPaths = %@", buf, 0x16u);
  }

  v18 = +[INSAnalytics sharedAnalytics];
  ins_afAnalyticsContext = [self ins_afAnalyticsContext];
  [v18 logEventWithType:632 context:ins_afAnalyticsContext contextNoCopy:1];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __109__SAIntentGroupProcessIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke;
  v32[3] = &unk_2797EAC50;
  v32[4] = self;
  [v11 setResponseHandler:v32];
  v20 = objc_alloc_init(MEMORY[0x277D47410]);
  aceId = [self aceId];
  [v20 setRefId:aceId];

  v22 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    v23 = v22;
    typeName = [v10 typeName];
    *buf = 136315394;
    v34 = "[SAIntentGroupProcessIntent(INSExtensionService) ins_sendIntent:toExtensionProxy:onQueue:completionHandler:]";
    v35 = 2112;
    v36 = typeName;
    _os_log_impl(&dword_25553C000, v23, OS_LOG_TYPE_INFO, "%s Beginning BatchSlotResolution with intent %@", buf, 0x16u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109__SAIntentGroupProcessIntent_INSExtensionService__ins_sendIntent_toExtensionProxy_onQueue_completionHandler___block_invoke_3;
  v28[3] = &unk_2797EA7D0;
  selfCopy = self;
  v31 = v13;
  v29 = v20;
  v25 = v20;
  v26 = v13;
  [self _resolveIntentSlotsWithExtensionProxy:v11 onQueue:v12 processIntentCompleted:v25 completionHandler:v28];

  v27 = *MEMORY[0x277D85DE8];
}

@end