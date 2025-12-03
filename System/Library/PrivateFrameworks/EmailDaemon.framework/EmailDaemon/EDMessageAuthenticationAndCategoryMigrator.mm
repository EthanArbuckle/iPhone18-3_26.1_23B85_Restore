@interface EDMessageAuthenticationAndCategoryMigrator
+ (OS_os_log)log;
- (BOOL)_checkContentProtectionState;
- (EDMessageAuthenticationAndCategoryMigrator)initWithCategoryPersistence:(id)persistence categorizer:(id)categorizer authenticator:(id)authenticator messagePersistence:(id)messagePersistence activityPersistence:(id)activityPersistence reason:(int64_t)reason;
- (id)_reasonString;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)startMigrationIfNecessaryWithCategorizationQuery:(id)query cancelationToken:(id)token completion:(id)completion;
- (void)startMigrationWithProgressHandler:(id)handler cancelationToken:(id)token completion:(id)completion;
@end

@implementation EDMessageAuthenticationAndCategoryMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDMessageAuthenticationAndCategoryMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_55 != -1)
  {
    dispatch_once(&log_onceToken_55, block);
  }

  v2 = log_log_55;

  return v2;
}

void __49__EDMessageAuthenticationAndCategoryMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_55;
  log_log_55 = v1;
}

- (EDMessageAuthenticationAndCategoryMigrator)initWithCategoryPersistence:(id)persistence categorizer:(id)categorizer authenticator:(id)authenticator messagePersistence:(id)messagePersistence activityPersistence:(id)activityPersistence reason:(int64_t)reason
{
  persistenceCopy = persistence;
  categorizerCopy = categorizer;
  authenticatorCopy = authenticator;
  messagePersistenceCopy = messagePersistence;
  activityPersistenceCopy = activityPersistence;
  v35.receiver = self;
  v35.super_class = EDMessageAuthenticationAndCategoryMigrator;
  v18 = [(EDMessageAuthenticationAndCategoryMigrator *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_categoryPersistence, persistence);
    objc_storeStrong(&v19->_messagePersistence, messagePersistence);
    objc_storeStrong(&v19->_categorizer, categorizer);
    objc_storeStrong(&v19->_authenticator, authenticator);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_UTILITY, 0);
    v22 = dispatch_queue_create("com.apple.email.EDMessageAuthenticationAndCategoryMigrator", v21);
    contentProtectionQueue = v19->_contentProtectionQueue;
    v19->_contentProtectionQueue = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_BACKGROUND, 0);
    v26 = dispatch_queue_create("com.apple.email.MessageMigrator", v25);
    backgroundMessageMigrationQueue = v19->_backgroundMessageMigrationQueue;
    v19->_backgroundMessageMigrationQueue = v26;

    v28 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    contentProtectionState = v19->_contentProtectionState;
    v19->_contentProtectionState = v28;

    v30 = [[EDMessageAuthenticationStateMigrator alloc] initWithCategoryPersistence:persistenceCopy authenticator:authenticatorCopy messagePersistence:messagePersistenceCopy];
    authenticationStateMigrator = v19->_authenticationStateMigrator;
    v19->_authenticationStateMigrator = v30;

    [EDCategoryMigrator initializeIfNeededWithCategoryPersistence:persistenceCopy categorizer:categorizerCopy messagePersistence:messagePersistenceCopy activityPersistence:activityPersistenceCopy];
    v19->_reason = reason;
  }

  return v19;
}

- (void)startMigrationWithProgressHandler:(id)handler cancelationToken:(id)token completion:(id)completion
{
  v37[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  tokenCopy = token;
  completionCopy = completion;
  categoryPersistence = [(EDMessageAuthenticationAndCategoryMigrator *)self categoryPersistence];
  currentCategorizationVersion = [categoryPersistence currentCategorizationVersion];

  v29 = [EDMessageCategorizer queryForMessagesToCategorizeForVersion:currentCategorizationVersion];
  promise = [MEMORY[0x1E699B868] promise];
  v11 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Starting Inbox Category Migration.", buf, 2u);
  }

  reason = [(EDMessageAuthenticationAndCategoryMigrator *)self reason];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke;
  v34[3] = &unk_1E8253788;
  v13 = promise;
  v35 = v13;
  [EDCategoryMigrator migrateCategoryForQuery:v29 cancelationToken:tokenCopy reason:reason progressHandler:handlerCopy completion:v34];
  v14 = +[EDMessageAuthenticationStateMigrator queryForInboxMessagesToAuthenticate];
  promise2 = [MEMORY[0x1E699B868] promise];
  v16 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Starting Inbox AuthState Migration.", buf, 2u);
  }

  authenticationStateMigrator = [(EDMessageAuthenticationAndCategoryMigrator *)self authenticationStateMigrator];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke_12;
  v32[3] = &unk_1E8253788;
  v18 = promise2;
  v33 = v18;
  [authenticationStateMigrator migrateMessageAuthenticationStateForQuery:v14 cancelationToken:tokenCopy completion:v32];

  v19 = MEMORY[0x1E699B7C8];
  future = [v13 future];
  v37[0] = future;
  future2 = [v18 future];
  v37[1] = future2;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v23 = [v19 join:v22];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke_15;
  v30[3] = &unk_1E8251B48;
  v24 = completionCopy;
  v31 = v24;
  [v23 always:v30];

  v25 = *MEMORY[0x1E69E9840];
}

void __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke(uint64_t a1)
{
  v2 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Completed Inbox Category Migration.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFB0] null];
  [v3 finishWithResult:v4];
}

void __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke_12(uint64_t a1)
{
  v2 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Completed AuthState Category Migration.", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFB0] null];
  [v3 finishWithResult:v4];
}

uint64_t __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke_15(uint64_t a1)
{
  v2 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Completed Inbox Category & AuthState Migration.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)_reasonString
{
  reason = [(EDMessageAuthenticationAndCategoryMigrator *)self reason];
  if ((reason - 1) > 3)
  {
    return @"NewMessage";
  }

  else
  {
    return off_1E82537D0[reason - 1];
  }
}

- (void)startMigrationIfNecessaryWithCategorizationQuery:(id)query cancelationToken:(id)token completion:(id)completion
{
  queryCopy = query;
  tokenCopy = token;
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    contentProtectionQueue = self->_contentProtectionQueue;
    EFRegisterContentProtectionObserver();
    objc_initWeak(&location, self);
    backgroundMessageMigrationQueue = self->_backgroundMessageMigrationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __123__EDMessageAuthenticationAndCategoryMigrator_startMigrationIfNecessaryWithCategorizationQuery_cancelationToken_completion___block_invoke;
    block[3] = &unk_1E82537B0;
    objc_copyWeak(&v17, &location);
    v14 = queryCopy;
    v15 = tokenCopy;
    v16 = completionCopy;
    dispatch_async(backgroundMessageMigrationQueue, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __123__EDMessageAuthenticationAndCategoryMigrator_startMigrationIfNecessaryWithCategorizationQuery_cancelationToken_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _checkContentProtectionState];
    v4 = +[EDMessageAuthenticationAndCategoryMigrator log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Starting to migrate messages", buf, 2u);
    }

    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [v3 contentProtectionState];
      [v6 lockWhenCondition:0];

      v7 = [v3 contentProtectionState];
      [v7 unlock];

      v8 = *(a1 + 32);
      if (v8)
      {
        [EDCategoryMigrator migrateCategoryForQuery:v8 cancelationToken:*(a1 + 40) reason:3 progressHandler:0 completion:*(a1 + 48)];
      }

      if (([*(a1 + 40) isCanceled] & 1) == 0)
      {
        if (![v3 _checkContentProtectionState])
        {
          v10 = 0;
          goto LABEL_14;
        }

        v9 = +[EDMessageAuthenticationAndCategoryMigrator log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "No messages found to recategorize.", v11, 2u);
        }
      }

      v10 = 1;
LABEL_14:
      objc_autoreleasePoolPop(v5);
    }

    while (!v10);
  }
}

- (BOOL)_checkContentProtectionState
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  contentProtectionQueue = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__EDMessageAuthenticationAndCategoryMigrator__checkContentProtectionState__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(contentProtectionQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __74__EDMessageAuthenticationAndCategoryMigrator__checkContentProtectionState__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = EFProtectedDataAvailable();
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = [*(a1 + 32) contentProtectionState];
    [v2 lock];

    v3 = [*(a1 + 32) contentProtectionState];
    [v3 unlockWithCondition:1];

    v4 = +[EDMessageAuthenticationAndCategoryMigrator log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Protected Index unavailable", v5, 2u);
    }
  }
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v6 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionQueue:changed];
  dispatch_assert_queue_V2(v6);

  if (changed == 2)
  {
    v10 = +[EDMessageAuthenticationAndCategoryMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Device about to lock", v12, 2u);
    }

    contentProtectionState = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [contentProtectionState lock];

    contentProtectionState2 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [contentProtectionState2 unlockWithCondition:1];
  }

  else
  {
    if (changed)
    {
      return;
    }

    v7 = +[EDMessageAuthenticationAndCategoryMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Protected Index became available", buf, 2u);
    }

    contentProtectionState3 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [contentProtectionState3 lock];

    contentProtectionState2 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [contentProtectionState2 unlockWithCondition:0];
  }
}

@end