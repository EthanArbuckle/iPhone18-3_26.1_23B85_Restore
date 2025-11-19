@interface EDPersistence
+ (OS_os_log)log;
- (EDPersistence)init;
- (id)persistenceStateWithStatistics:(id)a3;
- (void)dealloc;
- (void)reportWorkloadToDAS;
- (void)scheduleRecurringActivity;
- (void)test_tearDown;
@end

@implementation EDPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EDPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_73 != -1)
  {
    dispatch_once(&log_onceToken_73, block);
  }

  v2 = log_log_73;

  return v2;
}

void __20__EDPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_73;
  log_log_73 = v1;
}

- (EDPersistence)init
{
  v16.receiver = self;
  v16.super_class = EDPersistence;
  v2 = [(EDPersistence *)&v16 init];
  if (!v2)
  {
    return 0;
  }

  v15.receiver = v2;
  v15.super_class = EDPersistence;
  v3 = [(EDPersistence *)&v15 init];
  if (v3)
  {
    v4 = objc_alloc_init(EDGmailLabelPersistence);
    gmailLabelPersistence = v3->_gmailLabelPersistence;
    v3->_gmailLabelPersistence = v4;

    v6 = objc_alloc_init(EDPersistenceHookRegistry);
    hookRegistry = v3->_hookRegistry;
    v3->_hookRegistry = v6;

    v8 = [[EDActivityPersistence alloc] initWithHookResponder:v3->_hookRegistry];
    activityPersistence = v3->_activityPersistence;
    v3->_activityPersistence = v8;

    v10 = objc_alloc_init(MEMORY[0x1E699AC28]);
    blockedSenderManager = v3->_blockedSenderManager;
    v3->_blockedSenderManager = v10;

    v12 = [objc_alloc(MEMORY[0x1E699B9A0]) initGlobalInstance];
    alarmScheduler = v3->_alarmScheduler;
    v3->_alarmScheduler = v12;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(EDPersistence *)self remoteContentURLSession];
  [v3 invalidateAndCancel:1];

  v4.receiver = self;
  v4.super_class = EDPersistence;
  [(EDPersistence *)&v4 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EDPersistence.m" lineNumber:66 description:{@"%s can only be called from unit tests", "-[EDPersistence test_tearDown]"}];
  }

  v4 = [(EDPersistence *)self remindMeNotificationController];
  [v4 test_tearDown];

  v5 = [(EDPersistence *)self messageChangeManager];
  [v5 test_tearDown];

  v6 = [(EDPersistence *)self senderPersistence];
  [v6 test_tearDown];

  v7 = [(EDPersistence *)self blockedSenderManager];
  [v7 test_tearDown];

  v8 = [(EDPersistence *)self remoteContentManager];
  [v8 test_tearDown];

  v9 = [(EDPersistence *)self remoteContentPersistence];
  [v9 test_tearDown];

  v10 = [(EDPersistence *)self searchableIndexManager];
  [v10 test_tearDown];

  v11 = [(EDPersistence *)self mailboxPersistence];
  [v11 test_tearDown];

  v12 = [(EDPersistence *)self messagePersistence];
  [v12 test_tearDown];

  v13 = [(EDPersistence *)self bimiManager];
  [v13 test_tearDown];

  v14 = [(EDPersistence *)self database];
  [v14 test_tearDown];
}

- (void)scheduleRecurringActivity
{
  v3 = [(EDPersistence *)self database];
  [v3 scheduleRecurringActivity];

  v4 = [(EDPersistence *)self searchableIndexManager];
  [v4 scheduleRecurringActivity];

  v5 = [(EDPersistence *)self remoteContentManager];
  [v5 scheduleRecurringActivity];

  v6 = [(EDPersistence *)self senderPersistence];
  [v6 scheduleRecurringActivity];

  v7 = [(EDPersistence *)self readLaterPersistence];
  [v7 scheduleRecurringActivity];

  v8 = [(EDPersistence *)self mailboxPersistence];
  [v8 scheduleRecurringActivity];

  v9 = [(EDPersistence *)self diagnosticsController];
  [v9 scheduleRecurringActivity];

  v10 = [(EDPersistence *)self businessCloudStorage];
  [v10 scheduleRecurringActivity];

  v11 = [(EDPersistence *)self bimiManager];
  [v11 downloadAndVerifyIndicatorsIfNeeded];
}

- (id)persistenceStateWithStatistics:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11[0] = *MEMORY[0x1E699AA70];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "messages")}];
  v12[0] = v4;
  v11[1] = *MEMORY[0x1E699AA60];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "messageData")}];
  v12[1] = v5;
  v11[2] = *MEMORY[0x1E699AA78];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "messagesDeleted")}];
  v12[2] = v6;
  v11[3] = *MEMORY[0x1E699AA68];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "messageDataDeleted")}];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)reportWorkloadToDAS
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to report # of emails to DAS: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end