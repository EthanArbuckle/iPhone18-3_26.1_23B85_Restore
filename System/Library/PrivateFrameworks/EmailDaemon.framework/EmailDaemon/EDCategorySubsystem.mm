@interface EDCategorySubsystem
+ (OS_os_log)log;
- (EDCategorySubsystem)initWithPersistence:(id)persistence userProfileProvider:(id)provider vipManager:(id)manager sourceApplicationBundleIdentifier:(id)identifier categorizationAnalyticsLogger:(id)logger;
- (id)_majorAndMinorVersionFrom:(id)from;
- (void)_recategorizeAllMessagesIfNecessary;
- (void)_registerBiomeETLToCALoggerTask;
- (void)_registerCoreAnalyticsLoggerTask;
- (void)recategorizeAllMessagesIfModelVersionChangedFrom:(id)from to:(id)to;
- (void)start;
- (void)test_tearDown;
@end

@implementation EDCategorySubsystem

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EDCategorySubsystem_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_22 != -1)
  {
    dispatch_once(&log_onceToken_22, block);
  }

  v2 = log_log_22;

  return v2;
}

void __26__EDCategorySubsystem_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_22;
  log_log_22 = v1;
}

- (EDCategorySubsystem)initWithPersistence:(id)persistence userProfileProvider:(id)provider vipManager:(id)manager sourceApplicationBundleIdentifier:(id)identifier categorizationAnalyticsLogger:(id)logger
{
  persistenceCopy = persistence;
  managerCopy = manager;
  loggerCopy = logger;
  v53.receiver = self;
  v53.super_class = EDCategorySubsystem;
  v13 = [(EDCategorySubsystem *)&v53 init];
  if (v13)
  {
    hookRegistry = [persistenceCopy hookRegistry];
    em_authorizedContactStore = [MEMORY[0x1E695CE18] em_authorizedContactStore];
    messagePersistence = [persistenceCopy messagePersistence];
    messagePersistence = v13->_messagePersistence;
    v13->_messagePersistence = messagePersistence;

    accountsProvider = [persistenceCopy accountsProvider];
    accountsProvider = v13->_accountsProvider;
    v13->_accountsProvider = accountsProvider;

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    biomeLog = v13->_biomeLog;
    v13->_biomeLog = v20;

    [v19 addObject:v13->_biomeLog];
    v22 = [EDCoreAnalyticsBiomeInteractionEventLog alloc];
    readBiomeCollector = [loggerCopy readBiomeCollector];
    v24 = [(EDCoreAnalyticsBiomeInteractionEventLog *)v22 initWithReadBiomeCollector:readBiomeCollector];
    coreAnalyticsBiomeEventLog = v13->_coreAnalyticsBiomeEventLog;
    v13->_coreAnalyticsBiomeEventLog = v24;

    [v19 addObject:v13->_coreAnalyticsBiomeEventLog];
    v26 = [EDInteractionLogger alloc];
    v27 = v13->_messagePersistence;
    mailboxPersistence = [persistenceCopy mailboxPersistence];
    v29 = [(EDInteractionLogger *)v26 initWithMessagePersistence:v27 mailboxPersistence:mailboxPersistence eventLogs:v19];
    interactionLogger = v13->_interactionLogger;
    v13->_interactionLogger = v29;

    [hookRegistry registerMessageChangeHookResponder:v13->_interactionLogger];
    [hookRegistry registerMessageDeliveryHookResponder:v13->_interactionLogger];
    [hookRegistry registerCategoryChangeHookResponder:v13->_interactionLogger];
    objc_storeStrong(&v13->_coreAnalyticsLogger, logger);
    accountsProvider2 = [(EDCategorySubsystem *)v13 accountsProvider];
    [(EDCategoryCoreAnalyticsLogger *)v13->_coreAnalyticsLogger setAccountsProvider:accountsProvider2];

    categoryPersistence = [persistenceCopy categoryPersistence];
    categoryPersistence = v13->_categoryPersistence;
    v13->_categoryPersistence = categoryPersistence;

    accountsProvider3 = [(EDCategorySubsystem *)v13 accountsProvider];
    analyticsLogger = [(EDCategoryPersistence *)v13->_categoryPersistence analyticsLogger];
    [analyticsLogger setAccountsProvider:accountsProvider3];

    activityPersistence = [persistenceCopy activityPersistence];
    activityPersistence = v13->_activityPersistence;
    v13->_activityPersistence = activityPersistence;

    businessPersistence = [persistenceCopy businessPersistence];
    businessPersistence = v13->_businessPersistence;
    v13->_businessPersistence = businessPersistence;

    v40 = [EDMessageCategorizer alloc];
    v41 = v13->_categoryPersistence;
    senderPersistence = [persistenceCopy senderPersistence];
    v43 = [(EDMessageCategorizer *)v40 initWithCategoryPersistence:v41 vipManager:managerCopy contactStore:em_authorizedContactStore analyticsLogger:loggerCopy senderPersistence:senderPersistence hookRegistry:hookRegistry];
    messageCategorizer = v13->_messageCategorizer;
    v13->_messageCategorizer = v43;

    v45 = [[EDMessageAuthenticator alloc] initWithMessagePersistence:v13->_messagePersistence hookRegistry:hookRegistry];
    messageAuthenticator = v13->_messageAuthenticator;
    v13->_messageAuthenticator = v45;

    v47 = v13->_messageCategorizer;
    messageChangeManager = [persistenceCopy messageChangeManager];
    [messageChangeManager setMessageCategorizer:v47];

    v49 = v13->_messageAuthenticator;
    messageChangeManager2 = [persistenceCopy messageChangeManager];
    [messageChangeManager2 setMessageAuthenticator:v49];
  }

  return v13;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDCategorySubsystem.m" lineNumber:96 description:{@"%s can only be called from unit tests", "-[EDCategorySubsystem test_tearDown]"}];
  }

  interactionLogger = [(EDCategorySubsystem *)self interactionLogger];
  [interactionLogger test_tearDown];
}

- (void)start
{
  [(EDCategorySubsystem *)self registerInboxMigrationTasks];
  [(EDCategorySubsystem *)self registerAuthStateMigrationTask];
  [(EDCategorySubsystem *)self registerBusinessesGroupingTask];
  [(EDCategorySubsystem *)self _registerCoreAnalyticsLoggerTask];
  [(EDCategorySubsystem *)self _registerBiomeETLToCALoggerTask];

  [(EDCategorySubsystem *)self _recategorizeAllMessagesIfNecessary];
}

- (void)_registerCoreAnalyticsLoggerTask
{
  objc_initWeak(&location, self);
  v3 = +[EDCategorySubsystem log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Registering background analytics task.", buf, 2u);
  }

  coreAnalyticsLogger = [(EDCategorySubsystem *)self coreAnalyticsLogger];

  if (coreAnalyticsLogger)
  {
    mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__EDCategorySubsystem__registerCoreAnalyticsLoggerTask__block_invoke;
    v8[3] = &unk_1E8251A28;
    objc_copyWeak(&v9, &location);
    [mEMORY[0x1E698E4B8] registerForTaskWithIdentifier:@"com.apple.mail.blackpearl.analytics" usingQueue:0 launchHandler:v8];

    coreAnalyticsLogger2 = [(EDCategorySubsystem *)self coreAnalyticsLogger];
    [coreAnalyticsLogger2 scheduleNextAnalyticsBackgroundTask];

    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = +[EDCategorySubsystem log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EDCategorySubsystem *)v7 _registerCoreAnalyticsLoggerTask];
    }
  }

  objc_destroyWeak(&location);
}

void __55__EDCategorySubsystem__registerCoreAnalyticsLoggerTask__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained coreAnalyticsLogger];
    [v5 processCoreAnalyticsEvents];

    [v7 setTaskCompleted];
    v6 = [v4 coreAnalyticsLogger];
    [v6 scheduleNextAnalyticsBackgroundTask];
  }
}

- (void)_registerBiomeETLToCALoggerTask
{
  objc_initWeak(&location, self);
  v3 = +[EDCategorySubsystem log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Registering Biome ETL to CA task.", buf, 2u);
  }

  coreAnalyticsLogger = [(EDCategorySubsystem *)self coreAnalyticsLogger];

  if (coreAnalyticsLogger)
  {
    mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__EDCategorySubsystem__registerBiomeETLToCALoggerTask__block_invoke;
    v8[3] = &unk_1E8251A28;
    objc_copyWeak(&v9, &location);
    [mEMORY[0x1E698E4B8] registerForTaskWithIdentifier:@"com.apple.mail.blackpearl.biome.etl.coreanalytics" usingQueue:0 launchHandler:v8];

    coreAnalyticsLogger2 = [(EDCategorySubsystem *)self coreAnalyticsLogger];
    [coreAnalyticsLogger2 scheduleNextBiomeETLToCAScheduleBackgroundTask];

    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = +[EDCategorySubsystem log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EDCategorySubsystem *)v7 _registerBiomeETLToCALoggerTask];
    }
  }

  objc_destroyWeak(&location);
}

void __54__EDCategorySubsystem__registerBiomeETLToCALoggerTask__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.mail.blackpearl.biome.etl.coreanalytics"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained coreAnalyticsLogger];
    [v6 etlFromBiomeToCA];

    [v8 setTaskCompleted];
    v7 = [v5 coreAnalyticsLogger];
    [v7 scheduleNextBiomeETLToCAScheduleBackgroundTask];

    [v3 invalidate];
  }
}

- (void)_recategorizeAllMessagesIfNecessary
{
  messageCategorizer = [(EDCategorySubsystem *)self messageCategorizer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__EDCategorySubsystem__recategorizeAllMessagesIfNecessary__block_invoke;
  v4[3] = &unk_1E8251A50;
  v4[4] = self;
  [messageCategorizer getModelVersionWithCompletion:v4];
}

void __58__EDCategorySubsystem__recategorizeAllMessagesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[EDCategorySubsystem log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__EDCategorySubsystem__recategorizeAllMessagesIfNecessary__block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695E000] em_userDefaults];
    v8 = [v7 objectForKey:@"blackPearlCategorizationVersion"];
    [*(a1 + 32) recategorizeAllMessagesIfModelVersionChangedFrom:v8 to:v5];
    [v7 setObject:v5 forKey:@"blackPearlCategorizationVersion"];
  }
}

- (void)recategorizeAllMessagesIfModelVersionChangedFrom:(id)from to:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v8 = [(EDCategorySubsystem *)self _majorAndMinorVersionFrom:fromCopy];
  v9 = [(EDCategorySubsystem *)self _majorAndMinorVersionFrom:toCopy];
  if (([v8 isEqualToString:v9] & 1) == 0)
  {
    v10 = +[EDCategorySubsystem log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = fromCopy;
      v15 = 2112;
      v16 = toCopy;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Recategorizing all messages due to model version change from %@ to %@", &v13, 0x16u);
    }

    categoryPersistence = [(EDCategorySubsystem *)self categoryPersistence];
    [categoryPersistence incrementCategorizationVersion];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_majorAndMinorVersionFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy componentsSeparatedByString:@"."];
  if ([v4 count] > 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v4 objectAtIndexedSubscript:1];
    v5 = [v6 stringWithFormat:@"%@.%@", v7, v8];
  }

  else
  {
    v5 = fromCopy;
  }

  return v5;
}

void __58__EDCategorySubsystem__recategorizeAllMessagesIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to get categorization version: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end