@interface EDMessageAuthenticationAndCategoryMigrator
+ (OS_os_log)log;
- (BOOL)_checkContentProtectionState;
- (EDMessageAuthenticationAndCategoryMigrator)initWithCategoryPersistence:(id)a3 categorizer:(id)a4 authenticator:(id)a5 messagePersistence:(id)a6 activityPersistence:(id)a7 reason:(int64_t)a8;
- (id)_reasonString;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)startMigrationIfNecessaryWithCategorizationQuery:(id)a3 cancelationToken:(id)a4 completion:(id)a5;
- (void)startMigrationWithProgressHandler:(id)a3 cancelationToken:(id)a4 completion:(id)a5;
@end

@implementation EDMessageAuthenticationAndCategoryMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDMessageAuthenticationAndCategoryMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EDMessageAuthenticationAndCategoryMigrator)initWithCategoryPersistence:(id)a3 categorizer:(id)a4 authenticator:(id)a5 messagePersistence:(id)a6 activityPersistence:(id)a7 reason:(int64_t)a8
{
  v14 = a3;
  v34 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v35.receiver = self;
  v35.super_class = EDMessageAuthenticationAndCategoryMigrator;
  v18 = [(EDMessageAuthenticationAndCategoryMigrator *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_categoryPersistence, a3);
    objc_storeStrong(&v19->_messagePersistence, a6);
    objc_storeStrong(&v19->_categorizer, a4);
    objc_storeStrong(&v19->_authenticator, a5);
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

    v30 = [[EDMessageAuthenticationStateMigrator alloc] initWithCategoryPersistence:v14 authenticator:v15 messagePersistence:v16];
    authenticationStateMigrator = v19->_authenticationStateMigrator;
    v19->_authenticationStateMigrator = v30;

    [EDCategoryMigrator initializeIfNeededWithCategoryPersistence:v14 categorizer:v34 messagePersistence:v16 activityPersistence:v17];
    v19->_reason = a8;
  }

  return v19;
}

- (void)startMigrationWithProgressHandler:(id)a3 cancelationToken:(id)a4 completion:(id)a5
{
  v37[2] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v8 = a4;
  v26 = a5;
  v9 = [(EDMessageAuthenticationAndCategoryMigrator *)self categoryPersistence];
  v10 = [v9 currentCategorizationVersion];

  v29 = [EDMessageCategorizer queryForMessagesToCategorizeForVersion:v10];
  v27 = [MEMORY[0x1E699B868] promise];
  v11 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Starting Inbox Category Migration.", buf, 2u);
  }

  v12 = [(EDMessageAuthenticationAndCategoryMigrator *)self reason];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke;
  v34[3] = &unk_1E8253788;
  v13 = v27;
  v35 = v13;
  [EDCategoryMigrator migrateCategoryForQuery:v29 cancelationToken:v8 reason:v12 progressHandler:v28 completion:v34];
  v14 = +[EDMessageAuthenticationStateMigrator queryForInboxMessagesToAuthenticate];
  v15 = [MEMORY[0x1E699B868] promise];
  v16 = +[EDMessageAuthenticationAndCategoryMigrator log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Starting Inbox AuthState Migration.", buf, 2u);
  }

  v17 = [(EDMessageAuthenticationAndCategoryMigrator *)self authenticationStateMigrator];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke_12;
  v32[3] = &unk_1E8253788;
  v18 = v15;
  v33 = v18;
  [v17 migrateMessageAuthenticationStateForQuery:v14 cancelationToken:v8 completion:v32];

  v19 = MEMORY[0x1E699B7C8];
  v20 = [v13 future];
  v37[0] = v20;
  v21 = [v18 future];
  v37[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v23 = [v19 join:v22];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __108__EDMessageAuthenticationAndCategoryMigrator_startMigrationWithProgressHandler_cancelationToken_completion___block_invoke_15;
  v30[3] = &unk_1E8251B48;
  v24 = v26;
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
  v2 = [(EDMessageAuthenticationAndCategoryMigrator *)self reason];
  if ((v2 - 1) > 3)
  {
    return @"NewMessage";
  }

  else
  {
    return off_1E82537D0[v2 - 1];
  }
}

- (void)startMigrationIfNecessaryWithCategorizationQuery:(id)a3 cancelationToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v14 = v8;
    v15 = v9;
    v16 = v10;
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__EDMessageAuthenticationAndCategoryMigrator__checkContentProtectionState__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  v6 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionQueue:a3];
  dispatch_assert_queue_V2(v6);

  if (a3 == 2)
  {
    v10 = +[EDMessageAuthenticationAndCategoryMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Device about to lock", v12, 2u);
    }

    v11 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [v11 lock];

    v9 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [v9 unlockWithCondition:1];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v7 = +[EDMessageAuthenticationAndCategoryMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Protected Index became available", buf, 2u);
    }

    v8 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [v8 lock];

    v9 = [(EDMessageAuthenticationAndCategoryMigrator *)self contentProtectionState];
    [v9 unlockWithCondition:0];
  }
}

@end