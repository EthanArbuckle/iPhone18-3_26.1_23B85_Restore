@interface MFCategorySubsystem_iOS
- (BOOL)_shouldStartNewTaskCancelingExistingTaskIfNeeded:(id)a3;
- (MFCategorySubsystem_iOS)initWithPersistence:(id)a3 userProfileProvider:(id)a4 vipManager:(id)a5 sourceApplicationBundleIdentifier:(id)a6 categorizationAnalyticsLogger:(id)a7;
- (void)_setMigrationTaskWithSystemTask:(id)a3 migrator:(id)a4 cancelable:(id)a5;
- (void)_startCategoryMigrationWithBGTask:(id)a3 andReason:(int64_t)a4;
- (void)_startNonInboxMessageAuthenticationnWithBGTask:(id)a3;
- (void)dealloc;
- (void)registerAuthStateMigrationTask;
- (void)registerBusinessesGroupingTask;
- (void)registerInboxMigrationTasks;
- (void)setMigrationTask:(id)a3;
- (void)startBusinessConnectGroupingWithBGTask:(id)a3;
@end

@implementation MFCategorySubsystem_iOS

- (MFCategorySubsystem_iOS)initWithPersistence:(id)a3 userProfileProvider:(id)a4 vipManager:(id)a5 sourceApplicationBundleIdentifier:(id)a6 categorizationAnalyticsLogger:(id)a7
{
  v17.receiver = self;
  v17.super_class = MFCategorySubsystem_iOS;
  v7 = [(EDCategorySubsystem *)&v17 initWithPersistence:a3 userProfileProvider:a4 vipManager:a5 sourceApplicationBundleIdentifier:a6 categorizationAnalyticsLogger:a7];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.email.EDCategorySubsystem.migrationTaskQueue", v9);
    migrationTaskQueue = v7->_migrationTaskQueue;
    v7->_migrationTaskQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_BACKGROUND, 0);
    v14 = dispatch_queue_create("com.apple.email.EDCategorySubsystem.progressReportingQueue", v13);
    progressReportingQueue = v7->_progressReportingQueue;
    v7->_progressReportingQueue = v14;
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_migrationTask;
  if (v3)
  {
    v4 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];

    if (v4)
    {
      v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__MFCategorySubsystem_iOS_dealloc__block_invoke;
      block[3] = &unk_1E7AA25C0;
      v8 = v3;
      dispatch_async(v5, block);
    }
  }

  v6.receiver = self;
  v6.super_class = MFCategorySubsystem_iOS;
  [(MFCategorySubsystem_iOS *)&v6 dealloc];
}

- (void)setMigrationTask:(id)a3
{
  v7 = a3;
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(v5);

  migrationTask = self->_migrationTask;
  if (migrationTask != v7)
  {
    [(_EDMigrationBackgroundTask *)migrationTask cancel];
    objc_storeStrong(&self->_migrationTask, a3);
  }
}

- (void)registerInboxMigrationTasks
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Registering Mail Categorization FastPass task.", buf, 2u);
  }

  v4 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__MFCategorySubsystem_iOS_registerInboxMigrationTasks__block_invoke;
  v11[3] = &unk_1E7AA5160;
  objc_copyWeak(&v12, &location);
  [v4 registerForTaskWithIdentifier:@"com.apple.email.categorization.FastPass" usingQueue:v5 launchHandler:v11];

  v6 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Registering Mail Categorization task.", buf, 2u);
  }

  v7 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v8 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MFCategorySubsystem_iOS_registerInboxMigrationTasks__block_invoke_26;
  v9[3] = &unk_1E7AA5188;
  objc_copyWeak(&v10, &location);
  [v7 registerForTaskWithIdentifier:@"com.apple.mail.blackpearl.categorizer" usingQueue:v8 launchHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_startCategoryMigrationWithBGTask:(id)a3 andReason:(int64_t)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(v7);

  if (_os_feature_enabled_impl())
  {
    if ([(MFCategorySubsystem_iOS *)self _shouldStartNewTaskCancelingExistingTaskIfNeeded:v6])
    {
      v8 = objc_alloc(MEMORY[0x1E699B598]);
      v9 = [(EDCategorySubsystem *)self categoryPersistence];
      v10 = [(EDCategorySubsystem *)self messageCategorizer];
      v11 = [(EDCategorySubsystem *)self messageAuthenticator];
      v12 = [(EDCategorySubsystem *)self messagePersistence];
      v13 = [(EDCategorySubsystem *)self activityPersistence];
      v14 = [v8 initWithCategoryPersistence:v9 categorizer:v10 authenticator:v11 messagePersistence:v12 activityPersistence:v13 reason:a4];

      objc_initWeak(location, self);
      objc_initWeak(&from, v6);
      v15 = objc_alloc_init(MEMORY[0x1E699B7F8]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke;
      v22[3] = &unk_1E7AA51D8;
      v22[4] = self;
      objc_copyWeak(&v23, location);
      objc_copyWeak(&v24, &from);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_36;
      v19[3] = &unk_1E7AA5200;
      objc_copyWeak(&v20, &from);
      v19[4] = self;
      objc_copyWeak(&v21, location);
      [v14 startMigrationWithProgressHandler:v22 cancelationToken:v15 completion:v19];
      [(MFCategorySubsystem_iOS *)self _setMigrationTaskWithSystemTask:v6 migrator:v14 cancelable:v15];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);

      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      v17 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v6;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "Existing task has priority, expiring task: %{public}@", location, 0xCu);
      }

      [v6 setTaskExpiredWithRetryAfter:0 error:300.0];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v6;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "BlackPearl disabled - Mail Categorization Task %@ being marked as complete", location, 0xCu);
    }

    [v6 setTaskCompleted];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)registerAuthStateMigrationTask
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Registering Non-Inbox Message Authentication task.", buf, 2u);
  }

  v4 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MFCategorySubsystem_iOS_registerAuthStateMigrationTask__block_invoke;
  v6[3] = &unk_1E7AA5188;
  objc_copyWeak(&v7, &location);
  [v4 registerForTaskWithIdentifier:@"com.apple.mail.messageauthentication" usingQueue:v5 launchHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_startNonInboxMessageAuthenticationnWithBGTask:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(v5);

  if (_os_feature_enabled_impl())
  {
    if ([(MFCategorySubsystem_iOS *)self _shouldStartNewTaskCancelingExistingTaskIfNeeded:v4])
    {
      v6 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"nonInboxMessageAuthenticator"];
      v7 = objc_alloc(MEMORY[0x1E699B5A0]);
      v8 = [(EDCategorySubsystem *)self categoryPersistence];
      v9 = [(EDCategorySubsystem *)self messageAuthenticator];
      v10 = [(EDCategorySubsystem *)self messagePersistence];
      v11 = [v7 initWithCategoryPersistence:v8 authenticator:v9 messagePersistence:v10];

      v12 = [MEMORY[0x1E699B5A0] queryForNonInboxMessagesToAuthenticate];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__MFCategorySubsystem_iOS__startNonInboxMessageAuthenticationnWithBGTask___block_invoke;
      v16[3] = &unk_1E7AA5228;
      v16[4] = self;
      [v11 migrateMessageAuthenticationStateForQuery:v12 cancelationToken:v6 completion:v16];
      [(MFCategorySubsystem_iOS *)self _setMigrationTaskWithSystemTask:v4 migrator:v11 cancelable:v6];
    }

    else
    {
      v14 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "Existing task has priority, expiring task: %{public}@", buf, 0xCu);
      }

      [v4 setTaskExpiredWithRetryAfter:0 error:300.0];
    }
  }

  else
  {
    v13 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "BlackPearl disabled - Task %{public}@ being marked as complete", buf, 0xCu);
    }

    [v4 setTaskCompleted];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)registerBusinessesGroupingTask
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Registering Business Connect Grouping task.", buf, 2u);
  }

  v4 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MFCategorySubsystem_iOS_registerBusinessesGroupingTask__block_invoke;
  v6[3] = &unk_1E7AA5188;
  objc_copyWeak(&v7, &location);
  [v4 registerForTaskWithIdentifier:@"com.apple.mail.businessconnectgrouping" usingQueue:v5 launchHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)startBusinessConnectGroupingWithBGTask:(id)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(v5);

  if (_os_feature_enabled_impl())
  {
    if ([(MFCategorySubsystem_iOS *)self _shouldStartNewTaskCancelingExistingTaskIfNeeded:v4])
    {
      v6 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"businessConnectGrouping"];
      v7 = objc_alloc(MEMORY[0x1E699B4F8]);
      v8 = [(EDCategorySubsystem *)self businessPersistence];
      v9 = [v7 initWithBusinessPersistence:v8];

      objc_initWeak(location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke;
      v16[3] = &unk_1E7AA5250;
      v10 = v4;
      v17 = v10;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke_51;
      v14[3] = &unk_1E7AA5278;
      v14[4] = self;
      objc_copyWeak(&v15, location);
      [v9 startBusinessConnectGroupingWithCancelationToken:v6 progressHandler:v16 completion:v14];
      [(MFCategorySubsystem_iOS *)self _setMigrationTaskWithSystemTask:v10 migrator:v9 cancelable:v6];
      objc_destroyWeak(&v15);

      objc_destroyWeak(location);
    }

    else
    {
      v12 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v4;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Existing task has priority, expiring task: %{public}@", location, 0xCu);
      }

      [v4 setTaskExpiredWithRetryAfter:0 error:300.0];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v4;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "BlackPearl disabled - Task %{public}@ being marked as complete", location, 0xCu);
    }

    [v4 setTaskCompleted];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldStartNewTaskCancelingExistingTaskIfNeeded:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MFCategorySubsystem_iOS *)self migrationTask];
  v7 = [v6 systemTask];

  if (v7)
  {
    v8 = [v4 identifier];
    if ([v8 isEqualToString:@"com.apple.email.categorization.FastPass"])
    {
      v9 = 2;
    }

    else
    {
      v9 = [v8 isEqualToString:@"com.apple.mail.blackpearl.categorizer"];
    }

    v11 = [v7 identifier];
    if ([v11 isEqualToString:@"com.apple.email.categorization.FastPass"])
    {
      v12 = 2;
    }

    else
    {
      v12 = [v11 isEqualToString:@"com.apple.mail.blackpearl.categorizer"];
    }

    v13 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 134218754;
      v18 = v9;
      v19 = 2114;
      v20 = v4;
      v21 = 2048;
      v22 = v12;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "New task (priority %lu): %{public}@, Existing task (priority %lu): %{public}@", &v17, 0x2Au);
    }

    if (v9 <= v12)
    {
      v14 = 0;
      goto LABEL_17;
    }

    [(MFCategorySubsystem_iOS *)self setMigrationTask:0];
  }

  else
  {
    v10 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = v4;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "No existing task, starting new task: %{public}@", &v17, 0xCu);
    }
  }

  v14 = 1;
LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_setMigrationTaskWithSystemTask:(id)a3 migrator:(id)a4 cancelable:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [[_EDMigrationBackgroundTask alloc] initWithSystemTask:v8 migrator:v9 cancelable:v10];
  v13 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Setting new migration task: %{public}@", buf, 0xCu);
  }

  [(MFCategorySubsystem_iOS *)self setMigrationTask:v12];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v12);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__MFCategorySubsystem_iOS__setMigrationTaskWithSystemTask_migrator_cancelable___block_invoke;
  v15[3] = &unk_1E7AA52C8;
  objc_copyWeak(&v16, buf);
  objc_copyWeak(&v17, &location);
  [v8 setExpirationHandlerWithReason:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

@end