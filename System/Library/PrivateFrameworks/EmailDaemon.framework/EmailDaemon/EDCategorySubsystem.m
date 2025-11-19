@interface EDCategorySubsystem
+ (OS_os_log)log;
- (EDCategorySubsystem)initWithPersistence:(id)a3 userProfileProvider:(id)a4 vipManager:(id)a5 sourceApplicationBundleIdentifier:(id)a6 categorizationAnalyticsLogger:(id)a7;
- (id)_majorAndMinorVersionFrom:(id)a3;
- (void)_recategorizeAllMessagesIfNecessary;
- (void)_registerBiomeETLToCALoggerTask;
- (void)_registerCoreAnalyticsLoggerTask;
- (void)recategorizeAllMessagesIfModelVersionChangedFrom:(id)a3 to:(id)a4;
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
  block[4] = a1;
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

- (EDCategorySubsystem)initWithPersistence:(id)a3 userProfileProvider:(id)a4 vipManager:(id)a5 sourceApplicationBundleIdentifier:(id)a6 categorizationAnalyticsLogger:(id)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v53.receiver = self;
  v53.super_class = EDCategorySubsystem;
  v13 = [(EDCategorySubsystem *)&v53 init];
  if (v13)
  {
    v14 = [v10 hookRegistry];
    v52 = [MEMORY[0x1E695CE18] em_authorizedContactStore];
    v15 = [v10 messagePersistence];
    messagePersistence = v13->_messagePersistence;
    v13->_messagePersistence = v15;

    v17 = [v10 accountsProvider];
    accountsProvider = v13->_accountsProvider;
    v13->_accountsProvider = v17;

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    biomeLog = v13->_biomeLog;
    v13->_biomeLog = v20;

    [v19 addObject:v13->_biomeLog];
    v22 = [EDCoreAnalyticsBiomeInteractionEventLog alloc];
    v23 = [v12 readBiomeCollector];
    v24 = [(EDCoreAnalyticsBiomeInteractionEventLog *)v22 initWithReadBiomeCollector:v23];
    coreAnalyticsBiomeEventLog = v13->_coreAnalyticsBiomeEventLog;
    v13->_coreAnalyticsBiomeEventLog = v24;

    [v19 addObject:v13->_coreAnalyticsBiomeEventLog];
    v26 = [EDInteractionLogger alloc];
    v27 = v13->_messagePersistence;
    v28 = [v10 mailboxPersistence];
    v29 = [(EDInteractionLogger *)v26 initWithMessagePersistence:v27 mailboxPersistence:v28 eventLogs:v19];
    interactionLogger = v13->_interactionLogger;
    v13->_interactionLogger = v29;

    [v14 registerMessageChangeHookResponder:v13->_interactionLogger];
    [v14 registerMessageDeliveryHookResponder:v13->_interactionLogger];
    [v14 registerCategoryChangeHookResponder:v13->_interactionLogger];
    objc_storeStrong(&v13->_coreAnalyticsLogger, a7);
    v31 = [(EDCategorySubsystem *)v13 accountsProvider];
    [(EDCategoryCoreAnalyticsLogger *)v13->_coreAnalyticsLogger setAccountsProvider:v31];

    v32 = [v10 categoryPersistence];
    categoryPersistence = v13->_categoryPersistence;
    v13->_categoryPersistence = v32;

    v34 = [(EDCategorySubsystem *)v13 accountsProvider];
    v35 = [(EDCategoryPersistence *)v13->_categoryPersistence analyticsLogger];
    [v35 setAccountsProvider:v34];

    v36 = [v10 activityPersistence];
    activityPersistence = v13->_activityPersistence;
    v13->_activityPersistence = v36;

    v38 = [v10 businessPersistence];
    businessPersistence = v13->_businessPersistence;
    v13->_businessPersistence = v38;

    v40 = [EDMessageCategorizer alloc];
    v41 = v13->_categoryPersistence;
    v42 = [v10 senderPersistence];
    v43 = [(EDMessageCategorizer *)v40 initWithCategoryPersistence:v41 vipManager:v11 contactStore:v52 analyticsLogger:v12 senderPersistence:v42 hookRegistry:v14];
    messageCategorizer = v13->_messageCategorizer;
    v13->_messageCategorizer = v43;

    v45 = [[EDMessageAuthenticator alloc] initWithMessagePersistence:v13->_messagePersistence hookRegistry:v14];
    messageAuthenticator = v13->_messageAuthenticator;
    v13->_messageAuthenticator = v45;

    v47 = v13->_messageCategorizer;
    v48 = [v10 messageChangeManager];
    [v48 setMessageCategorizer:v47];

    v49 = v13->_messageAuthenticator;
    v50 = [v10 messageChangeManager];
    [v50 setMessageAuthenticator:v49];
  }

  return v13;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDCategorySubsystem.m" lineNumber:96 description:{@"%s can only be called from unit tests", "-[EDCategorySubsystem test_tearDown]"}];
  }

  v4 = [(EDCategorySubsystem *)self interactionLogger];
  [v4 test_tearDown];
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

  v4 = [(EDCategorySubsystem *)self coreAnalyticsLogger];

  if (v4)
  {
    v5 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__EDCategorySubsystem__registerCoreAnalyticsLoggerTask__block_invoke;
    v8[3] = &unk_1E8251A28;
    objc_copyWeak(&v9, &location);
    [v5 registerForTaskWithIdentifier:@"com.apple.mail.blackpearl.analytics" usingQueue:0 launchHandler:v8];

    v6 = [(EDCategorySubsystem *)self coreAnalyticsLogger];
    [v6 scheduleNextAnalyticsBackgroundTask];

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

  v4 = [(EDCategorySubsystem *)self coreAnalyticsLogger];

  if (v4)
  {
    v5 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__EDCategorySubsystem__registerBiomeETLToCALoggerTask__block_invoke;
    v8[3] = &unk_1E8251A28;
    objc_copyWeak(&v9, &location);
    [v5 registerForTaskWithIdentifier:@"com.apple.mail.blackpearl.biome.etl.coreanalytics" usingQueue:0 launchHandler:v8];

    v6 = [(EDCategorySubsystem *)self coreAnalyticsLogger];
    [v6 scheduleNextBiomeETLToCAScheduleBackgroundTask];

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
  v3 = [(EDCategorySubsystem *)self messageCategorizer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__EDCategorySubsystem__recategorizeAllMessagesIfNecessary__block_invoke;
  v4[3] = &unk_1E8251A50;
  v4[4] = self;
  [v3 getModelVersionWithCompletion:v4];
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

- (void)recategorizeAllMessagesIfModelVersionChangedFrom:(id)a3 to:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDCategorySubsystem *)self _majorAndMinorVersionFrom:v6];
  v9 = [(EDCategorySubsystem *)self _majorAndMinorVersionFrom:v7];
  if (([v8 isEqualToString:v9] & 1) == 0)
  {
    v10 = +[EDCategorySubsystem log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Recategorizing all messages due to model version change from %@ to %@", &v13, 0x16u);
    }

    v11 = [(EDCategorySubsystem *)self categoryPersistence];
    [v11 incrementCategorizationVersion];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_majorAndMinorVersionFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"."];
  if ([v4 count] > 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v4 objectAtIndexedSubscript:1];
    v5 = [v6 stringWithFormat:@"%@.%@", v7, v8];
  }

  else
  {
    v5 = v3;
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