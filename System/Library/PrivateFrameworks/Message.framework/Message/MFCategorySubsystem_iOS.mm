@interface MFCategorySubsystem_iOS
- (BOOL)_shouldStartNewTaskCancelingExistingTaskIfNeeded:(id)needed;
- (MFCategorySubsystem_iOS)initWithPersistence:(id)persistence userProfileProvider:(id)provider vipManager:(id)manager sourceApplicationBundleIdentifier:(id)identifier categorizationAnalyticsLogger:(id)logger;
- (void)_setMigrationTaskWithSystemTask:(id)task migrator:(id)migrator cancelable:(id)cancelable;
- (void)_startCategoryMigrationWithBGTask:(id)task andReason:(int64_t)reason;
- (void)_startNonInboxMessageAuthenticationnWithBGTask:(id)task;
- (void)dealloc;
- (void)registerAuthStateMigrationTask;
- (void)registerBusinessesGroupingTask;
- (void)registerInboxMigrationTasks;
- (void)setMigrationTask:(id)task;
- (void)startBusinessConnectGroupingWithBGTask:(id)task;
@end

@implementation MFCategorySubsystem_iOS

- (MFCategorySubsystem_iOS)initWithPersistence:(id)persistence userProfileProvider:(id)provider vipManager:(id)manager sourceApplicationBundleIdentifier:(id)identifier categorizationAnalyticsLogger:(id)logger
{
  v17.receiver = self;
  v17.super_class = MFCategorySubsystem_iOS;
  v7 = [(EDCategorySubsystem *)&v17 initWithPersistence:persistence userProfileProvider:provider vipManager:manager sourceApplicationBundleIdentifier:identifier categorizationAnalyticsLogger:logger];
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
    migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];

    if (migrationTaskQueue)
    {
      migrationTaskQueue2 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__MFCategorySubsystem_iOS_dealloc__block_invoke;
      block[3] = &unk_1E7AA25C0;
      v8 = v3;
      dispatch_async(migrationTaskQueue2, block);
    }
  }

  v6.receiver = self;
  v6.super_class = MFCategorySubsystem_iOS;
  [(MFCategorySubsystem_iOS *)&v6 dealloc];
}

- (void)setMigrationTask:(id)task
{
  taskCopy = task;
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(migrationTaskQueue);

  migrationTask = self->_migrationTask;
  if (migrationTask != taskCopy)
  {
    [(_EDMigrationBackgroundTask *)migrationTask cancel];
    objc_storeStrong(&self->_migrationTask, task);
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

  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__MFCategorySubsystem_iOS_registerInboxMigrationTasks__block_invoke;
  v11[3] = &unk_1E7AA5160;
  objc_copyWeak(&v12, &location);
  [mEMORY[0x1E698E4B8] registerForTaskWithIdentifier:@"com.apple.email.categorization.FastPass" usingQueue:migrationTaskQueue launchHandler:v11];

  v6 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Registering Mail Categorization task.", buf, 2u);
  }

  mEMORY[0x1E698E4B8]2 = [MEMORY[0x1E698E4B8] sharedScheduler];
  migrationTaskQueue2 = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MFCategorySubsystem_iOS_registerInboxMigrationTasks__block_invoke_26;
  v9[3] = &unk_1E7AA5188;
  objc_copyWeak(&v10, &location);
  [mEMORY[0x1E698E4B8]2 registerForTaskWithIdentifier:@"com.apple.mail.blackpearl.categorizer" usingQueue:migrationTaskQueue2 launchHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_startCategoryMigrationWithBGTask:(id)task andReason:(int64_t)reason
{
  location[3] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(migrationTaskQueue);

  if (_os_feature_enabled_impl())
  {
    if ([(MFCategorySubsystem_iOS *)self _shouldStartNewTaskCancelingExistingTaskIfNeeded:taskCopy])
    {
      v8 = objc_alloc(MEMORY[0x1E699B598]);
      categoryPersistence = [(EDCategorySubsystem *)self categoryPersistence];
      messageCategorizer = [(EDCategorySubsystem *)self messageCategorizer];
      messageAuthenticator = [(EDCategorySubsystem *)self messageAuthenticator];
      messagePersistence = [(EDCategorySubsystem *)self messagePersistence];
      activityPersistence = [(EDCategorySubsystem *)self activityPersistence];
      v14 = [v8 initWithCategoryPersistence:categoryPersistence categorizer:messageCategorizer authenticator:messageAuthenticator messagePersistence:messagePersistence activityPersistence:activityPersistence reason:reason];

      objc_initWeak(location, self);
      objc_initWeak(&from, taskCopy);
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
      [(MFCategorySubsystem_iOS *)self _setMigrationTaskWithSystemTask:taskCopy migrator:v14 cancelable:v15];
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
        *(location + 4) = taskCopy;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "Existing task has priority, expiring task: %{public}@", location, 0xCu);
      }

      [taskCopy setTaskExpiredWithRetryAfter:0 error:300.0];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = taskCopy;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "BlackPearl disabled - Mail Categorization Task %@ being marked as complete", location, 0xCu);
    }

    [taskCopy setTaskCompleted];
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

  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MFCategorySubsystem_iOS_registerAuthStateMigrationTask__block_invoke;
  v6[3] = &unk_1E7AA5188;
  objc_copyWeak(&v7, &location);
  [mEMORY[0x1E698E4B8] registerForTaskWithIdentifier:@"com.apple.mail.messageauthentication" usingQueue:migrationTaskQueue launchHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_startNonInboxMessageAuthenticationnWithBGTask:(id)task
{
  v19 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(migrationTaskQueue);

  if (_os_feature_enabled_impl())
  {
    if ([(MFCategorySubsystem_iOS *)self _shouldStartNewTaskCancelingExistingTaskIfNeeded:taskCopy])
    {
      v6 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"nonInboxMessageAuthenticator"];
      v7 = objc_alloc(MEMORY[0x1E699B5A0]);
      categoryPersistence = [(EDCategorySubsystem *)self categoryPersistence];
      messageAuthenticator = [(EDCategorySubsystem *)self messageAuthenticator];
      messagePersistence = [(EDCategorySubsystem *)self messagePersistence];
      v11 = [v7 initWithCategoryPersistence:categoryPersistence authenticator:messageAuthenticator messagePersistence:messagePersistence];

      queryForNonInboxMessagesToAuthenticate = [MEMORY[0x1E699B5A0] queryForNonInboxMessagesToAuthenticate];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__MFCategorySubsystem_iOS__startNonInboxMessageAuthenticationnWithBGTask___block_invoke;
      v16[3] = &unk_1E7AA5228;
      v16[4] = self;
      [v11 migrateMessageAuthenticationStateForQuery:queryForNonInboxMessagesToAuthenticate cancelationToken:v6 completion:v16];
      [(MFCategorySubsystem_iOS *)self _setMigrationTaskWithSystemTask:taskCopy migrator:v11 cancelable:v6];
    }

    else
    {
      v14 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = taskCopy;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "Existing task has priority, expiring task: %{public}@", buf, 0xCu);
      }

      [taskCopy setTaskExpiredWithRetryAfter:0 error:300.0];
    }
  }

  else
  {
    v13 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = taskCopy;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "BlackPearl disabled - Task %{public}@ being marked as complete", buf, 0xCu);
    }

    [taskCopy setTaskCompleted];
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

  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MFCategorySubsystem_iOS_registerBusinessesGroupingTask__block_invoke;
  v6[3] = &unk_1E7AA5188;
  objc_copyWeak(&v7, &location);
  [mEMORY[0x1E698E4B8] registerForTaskWithIdentifier:@"com.apple.mail.businessconnectgrouping" usingQueue:migrationTaskQueue launchHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)startBusinessConnectGroupingWithBGTask:(id)task
{
  location[3] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(migrationTaskQueue);

  if (_os_feature_enabled_impl())
  {
    if ([(MFCategorySubsystem_iOS *)self _shouldStartNewTaskCancelingExistingTaskIfNeeded:taskCopy])
    {
      v6 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"businessConnectGrouping"];
      v7 = objc_alloc(MEMORY[0x1E699B4F8]);
      businessPersistence = [(EDCategorySubsystem *)self businessPersistence];
      v9 = [v7 initWithBusinessPersistence:businessPersistence];

      objc_initWeak(location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke;
      v16[3] = &unk_1E7AA5250;
      v10 = taskCopy;
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
        *(location + 4) = taskCopy;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Existing task has priority, expiring task: %{public}@", location, 0xCu);
      }

      [taskCopy setTaskExpiredWithRetryAfter:0 error:300.0];
    }
  }

  else
  {
    v11 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = taskCopy;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "BlackPearl disabled - Task %{public}@ being marked as complete", location, 0xCu);
    }

    [taskCopy setTaskCompleted];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldStartNewTaskCancelingExistingTaskIfNeeded:(id)needed
{
  v25 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(migrationTaskQueue);

  migrationTask = [(MFCategorySubsystem_iOS *)self migrationTask];
  systemTask = [migrationTask systemTask];

  if (systemTask)
  {
    identifier = [neededCopy identifier];
    if ([identifier isEqualToString:@"com.apple.email.categorization.FastPass"])
    {
      v9 = 2;
    }

    else
    {
      v9 = [identifier isEqualToString:@"com.apple.mail.blackpearl.categorizer"];
    }

    identifier2 = [systemTask identifier];
    if ([identifier2 isEqualToString:@"com.apple.email.categorization.FastPass"])
    {
      v12 = 2;
    }

    else
    {
      v12 = [identifier2 isEqualToString:@"com.apple.mail.blackpearl.categorizer"];
    }

    v13 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 134218754;
      v18 = v9;
      v19 = 2114;
      v20 = neededCopy;
      v21 = 2048;
      v22 = v12;
      v23 = 2114;
      v24 = systemTask;
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
      v18 = neededCopy;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "No existing task, starting new task: %{public}@", &v17, 0xCu);
    }
  }

  v14 = 1;
LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_setMigrationTaskWithSystemTask:(id)task migrator:(id)migrator cancelable:(id)cancelable
{
  v21 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  migratorCopy = migrator;
  cancelableCopy = cancelable;
  migrationTaskQueue = [(MFCategorySubsystem_iOS *)self migrationTaskQueue];
  dispatch_assert_queue_V2(migrationTaskQueue);

  v12 = [[_EDMigrationBackgroundTask alloc] initWithSystemTask:taskCopy migrator:migratorCopy cancelable:cancelableCopy];
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
  [taskCopy setExpirationHandlerWithReason:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

@end