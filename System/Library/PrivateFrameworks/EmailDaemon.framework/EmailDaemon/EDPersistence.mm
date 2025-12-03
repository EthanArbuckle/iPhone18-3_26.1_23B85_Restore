@interface EDPersistence
+ (OS_os_log)log;
- (EDPersistence)init;
- (id)persistenceStateWithStatistics:(id)statistics;
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
  block[4] = self;
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

    initGlobalInstance = [objc_alloc(MEMORY[0x1E699B9A0]) initGlobalInstance];
    alarmScheduler = v3->_alarmScheduler;
    v3->_alarmScheduler = initGlobalInstance;
  }

  return v3;
}

- (void)dealloc
{
  remoteContentURLSession = [(EDPersistence *)self remoteContentURLSession];
  [remoteContentURLSession invalidateAndCancel:1];

  v4.receiver = self;
  v4.super_class = EDPersistence;
  [(EDPersistence *)&v4 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistence.m" lineNumber:66 description:{@"%s can only be called from unit tests", "-[EDPersistence test_tearDown]"}];
  }

  remindMeNotificationController = [(EDPersistence *)self remindMeNotificationController];
  [remindMeNotificationController test_tearDown];

  messageChangeManager = [(EDPersistence *)self messageChangeManager];
  [messageChangeManager test_tearDown];

  senderPersistence = [(EDPersistence *)self senderPersistence];
  [senderPersistence test_tearDown];

  blockedSenderManager = [(EDPersistence *)self blockedSenderManager];
  [blockedSenderManager test_tearDown];

  remoteContentManager = [(EDPersistence *)self remoteContentManager];
  [remoteContentManager test_tearDown];

  remoteContentPersistence = [(EDPersistence *)self remoteContentPersistence];
  [remoteContentPersistence test_tearDown];

  searchableIndexManager = [(EDPersistence *)self searchableIndexManager];
  [searchableIndexManager test_tearDown];

  mailboxPersistence = [(EDPersistence *)self mailboxPersistence];
  [mailboxPersistence test_tearDown];

  messagePersistence = [(EDPersistence *)self messagePersistence];
  [messagePersistence test_tearDown];

  bimiManager = [(EDPersistence *)self bimiManager];
  [bimiManager test_tearDown];

  database = [(EDPersistence *)self database];
  [database test_tearDown];
}

- (void)scheduleRecurringActivity
{
  database = [(EDPersistence *)self database];
  [database scheduleRecurringActivity];

  searchableIndexManager = [(EDPersistence *)self searchableIndexManager];
  [searchableIndexManager scheduleRecurringActivity];

  remoteContentManager = [(EDPersistence *)self remoteContentManager];
  [remoteContentManager scheduleRecurringActivity];

  senderPersistence = [(EDPersistence *)self senderPersistence];
  [senderPersistence scheduleRecurringActivity];

  readLaterPersistence = [(EDPersistence *)self readLaterPersistence];
  [readLaterPersistence scheduleRecurringActivity];

  mailboxPersistence = [(EDPersistence *)self mailboxPersistence];
  [mailboxPersistence scheduleRecurringActivity];

  diagnosticsController = [(EDPersistence *)self diagnosticsController];
  [diagnosticsController scheduleRecurringActivity];

  businessCloudStorage = [(EDPersistence *)self businessCloudStorage];
  [businessCloudStorage scheduleRecurringActivity];

  bimiManager = [(EDPersistence *)self bimiManager];
  [bimiManager downloadAndVerifyIndicatorsIfNeeded];
}

- (id)persistenceStateWithStatistics:(id)statistics
{
  v12[4] = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  v11[0] = *MEMORY[0x1E699AA70];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(statisticsCopy, "messages")}];
  v12[0] = v4;
  v11[1] = *MEMORY[0x1E699AA60];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(statisticsCopy, "messageData")}];
  v12[1] = v5;
  v11[2] = *MEMORY[0x1E699AA78];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(statisticsCopy, "messagesDeleted")}];
  v12[2] = v6;
  v11[3] = *MEMORY[0x1E699AA68];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(statisticsCopy, "messageDataDeleted")}];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)reportWorkloadToDAS
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to report # of emails to DAS: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end