@interface DEDAnalytics
+ (id)log;
+ (void)didCheckInDeferredExtensionsWithCount:(unint64_t)count;
+ (void)didCompleteBugSessionWithState:(int64_t)state;
+ (void)didCreateBugSessionForApp:(id)app;
+ (void)didStartDaemon;
+ (void)didStartExtensionWithIdentifier:(id)identifier;
+ (void)extensionDidScheduleExtensionWithIdentifier:(id)identifier delay:(unint64_t)delay;
+ (void)extensionWithIdentifier:(id)identifier didCompleteWithFileCount:(unint64_t)count bytesCollected:(unint64_t)collected duration:(unint64_t)duration errorCode:(int64_t)code;
+ (void)finisherDidCompleteWithDuration:(unint64_t)duration uploadedByteCount:(unint64_t)count usingFinishingMove:(int64_t)move withState:(int64_t)state;
+ (void)finisherDidStartWithFileCount:(unint64_t)count expectedByteUploadCount:(unint64_t)uploadCount finishingMove:(int64_t)move;
+ (void)logBugSessionStartWithDeviceType:(id)type isRemote:(BOOL)remote success:(BOOL)success errorCode:(int64_t)code;
@end

@implementation DEDAnalytics

+ (id)log
{
  if (log_onceToken_2 != -1)
  {
    +[DEDAnalytics log];
  }

  v3 = log_log_2;

  return v3;
}

void __19__DEDAnalytics_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-analytics");
  v1 = log_log_2;
  log_log_2 = v0;
}

+ (void)didStartDaemon
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = "+[DEDAnalytics didStartDaemon]";
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "%{public}s", &v5, 0xCu);
  }

  v3 = objc_opt_new();
  AWDPostMetric();

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)didCheckInDeferredExtensionsWithCount:(unint64_t)count
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "+[DEDAnalytics didCheckInDeferredExtensionsWithCount:]";
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 setNumtasks:count];
  AWDPostMetric();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)didCreateBugSessionForApp:(id)app
{
  v10 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v5 = [self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "+[DEDAnalytics didCreateBugSessionForApp:]";
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v8, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setHostapp:appCopy];

  AWDPostMetric();
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)didStartExtensionWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "+[DEDAnalytics didStartExtensionWithIdentifier:]";
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v8, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setExtension:identifierCopy];

  AWDPostMetric();
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)extensionDidScheduleExtensionWithIdentifier:(id)identifier delay:(unint64_t)delay
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 136446210;
    v11 = "+[DEDAnalytics extensionDidScheduleExtensionWithIdentifier:delay:]";
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_INFO, "%{public}s", &v10, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setExtension:identifierCopy];

  [v8 setDelay:delay];
  AWDPostMetric();

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)extensionWithIdentifier:(id)identifier didCompleteWithFileCount:(unint64_t)count bytesCollected:(unint64_t)collected duration:(unint64_t)duration errorCode:(int64_t)code
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = [self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 136446210;
    v17 = "+[DEDAnalytics extensionWithIdentifier:didCompleteWithFileCount:bytesCollected:duration:errorCode:]";
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_INFO, "%{public}s", &v16, 0xCu);
  }

  v14 = objc_opt_new();
  [v14 setExtension:identifierCopy];

  [v14 setNumfiles:count];
  [v14 setNumbytes:collected];
  [v14 setDuration:duration];
  [v14 setError:code];
  AWDPostMetric();

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)finisherDidStartWithFileCount:(unint64_t)count expectedByteUploadCount:(unint64_t)uploadCount finishingMove:(int64_t)move
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = [self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136446210;
    v13 = "+[DEDAnalytics finisherDidStartWithFileCount:expectedByteUploadCount:finishingMove:]";
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "%{public}s", &v12, 0xCu);
  }

  v9 = objc_opt_new();
  [v9 setNumfiles:count];
  [v9 setNumbytes:uploadCount];
  if ((move - 1) < 3)
  {
    moveCopy = move;
  }

  else
  {
    moveCopy = 0;
  }

  [v9 setType:moveCopy];
  AWDPostMetric();

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)finisherDidCompleteWithDuration:(unint64_t)duration uploadedByteCount:(unint64_t)count usingFinishingMove:(int64_t)move withState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = [self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 136446210;
    v15 = "+[DEDAnalytics finisherDidCompleteWithDuration:uploadedByteCount:usingFinishingMove:withState:]";
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_INFO, "%{public}s", &v14, 0xCu);
  }

  v11 = objc_opt_new();
  [v11 setDuration:duration];
  [v11 setNumbytes:count];
  if ((move - 1) < 3)
  {
    moveCopy = move;
  }

  else
  {
    moveCopy = 0;
  }

  [v11 setType:moveCopy];
  [v11 setState:state];
  AWDPostMetric();

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)didCompleteBugSessionWithState:(int64_t)state
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "+[DEDAnalytics didCompleteBugSessionWithState:]";
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v5 = objc_opt_new();
  [v5 setSessionState:state];
  AWDPostMetric();

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)logBugSessionStartWithDeviceType:(id)type isRemote:(BOOL)remote success:(BOOL)success errorCode:(int64_t)code
{
  typeCopy = type;
  if (logBugSessionStartWithDeviceType_isRemote_success_errorCode__onceToken != -1)
  {
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:];
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_2;
  v17 = &unk_278F66158;
  remoteCopy = remote;
  successCopy = success;
  v18 = typeCopy;
  codeCopy = code;
  v10 = typeCopy;
  v11 = AnalyticsSendEventLazy();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_34;
  v12[3] = &__block_descriptor_33_e5_v8__0l;
  v13 = v11;
  if (logBugSessionStartWithDeviceType_isRemote_success_errorCode__logOnceToken != -1)
  {
    dispatch_once(&logBugSessionStartWithDeviceType_isRemote_success_errorCode__logOnceToken, v12);
  }
}

uint64_t __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke()
{
  logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog = os_log_create("com.apple.feedback.analytics", "session-start");

  return MEMORY[0x2821F96F8]();
}

id __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_2(uint64_t a1)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  v16[0] = v2;
  v15[0] = @"device_type";
  v15[1] = @"is_remote";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v16[1] = v3;
  v15[2] = @"success";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v16[2] = v4;
  v15[3] = @"error_code";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v16[3] = v5;
  v15[4] = @"process_name";
  v6 = +[DEDConstants processName];
  v16[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v8 = logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog;
  if (os_log_type_enabled(logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = @"com.apple.feedback.bugSessionStart";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __76__DEDAnalytics_logBugSessionStartWithDeviceType_isRemote_success_errorCode___block_invoke_34(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog;
  v3 = os_log_type_enabled(logBugSessionStartWithDeviceType_isRemote_success_errorCode__SessionStartLog, OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (v3)
    {
      v6 = 138543362;
      v7 = @"com.apple.feedback.bugSessionStart";
      v4 = "%{public}@ is enabled";
LABEL_6:
      _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
    }
  }

  else if (v3)
  {
    v6 = 138543362;
    v7 = @"com.apple.feedback.bugSessionStart";
    v4 = "%{public}@ is NOT enabled";
    goto LABEL_6;
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end