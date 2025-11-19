@interface MFCategorySubsystem
@end

@implementation MFCategorySubsystem

void __54__MFCategorySubsystem_iOS_registerInboxMigrationTasks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Mail Categorization FastPass started.", v6, 2u);
    }

    [WeakRetained _startCategoryMigrationWithBGTask:v3 andReason:2];
  }
}

void __54__MFCategorySubsystem_iOS_registerInboxMigrationTasks__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Mail Categorization started.", v6, 2u);
    }

    [WeakRetained _startCategoryMigrationWithBGTask:v3 andReason:1];
  }
}

void __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] migrationTaskQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_2;
  block[3] = &unk_1E7AA51B0;
  objc_copyWeak(&v8, a1 + 5);
  objc_copyWeak(&v9, a1 + 6);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    if (v3)
    {
      v4 = [WeakRetained migrationTask];
      v5 = [v4 systemTask];
      v6 = [v5 isEqual:v3];

      if (v6)
      {
        v7 = [WeakRetained progressReportingQueue];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_3;
        v8[3] = &unk_1E7AA26E0;
        v9 = a1[4];
        v10 = v3;
        dispatch_async(v7, v8);
      }
    }
  }
}

uint64_t __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_3_cold_1(v5, [*(a1 + 32) categorizedMessages], objc_msgSend(*(a1 + 32), "totalMessagesToCategorize"), v2);
  }

  result = [*(a1 + 40) reportTaskWorkloadProgress:objc_msgSend(*(a1 + 32) completed:"totalMessagesToCategorize") category:objc_msgSend(*(a1 + 32) subCategory:"categorizedMessages") error:{30, @"Message Categorization", 0}];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_36(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_36_cold_1(v3, v5);
      }
    }

    else
    {
      v5 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Mail Categorization completed.", buf, 2u);
      }
    }

    v6 = [a1[4] migrationTaskQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_37;
    block[3] = &unk_1E7AA20E0;
    objc_copyWeak(&v8, a1 + 6);
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained migrationTask];
    [v1 setShouldFinishSystemTask:1];

    [WeakRetained setMigrationTask:0];
  }
}

void __57__MFCategorySubsystem_iOS_registerAuthStateMigrationTask__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _startNonInboxMessageAuthenticationnWithBGTask:v5];
  }
}

void __74__MFCategorySubsystem_iOS__startNonInboxMessageAuthenticationnWithBGTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationTaskQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MFCategorySubsystem_iOS__startNonInboxMessageAuthenticationnWithBGTask___block_invoke_2;
  block[3] = &unk_1E7AA25C0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t __74__MFCategorySubsystem_iOS__startNonInboxMessageAuthenticationnWithBGTask___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationTask];
  [v2 setShouldFinishSystemTask:1];

  v3 = *(a1 + 32);

  return [v3 setMigrationTask:0];
}

void __57__MFCategorySubsystem_iOS_registerBusinessesGroupingTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Starting Business Connect Grouping task.", v6, 2u);
    }

    [WeakRetained startBusinessConnectGroupingWithBGTask:v3];
  }
}

uint64_t __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E699B528] log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Businesses Connect grouping progress: %ld/%ld", &v9, 0x16u);
  }

  result = [*(a1 + 32) reportTaskWorkloadProgress:a3 completed:a2 category:30 subCategory:@"Business Connect Grouping" error:0];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke_51_cold_1(v3, v4);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "Completed Businesses Connect grouping", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) migrationTaskQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke_52;
  block[3] = &unk_1E7AA20E0;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained migrationTask];
    [v1 setShouldFinishSystemTask:1];

    [WeakRetained setMigrationTask:0];
  }
}

void __79__MFCategorySubsystem_iOS__setMigrationTaskWithSystemTask_migrator_cancelable___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained migrationTaskQueue];
    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v7;
        _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "Queuing block to cancel migration for task: %{public}@", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__MFCategorySubsystem_iOS__setMigrationTaskWithSystemTask_migrator_cancelable___block_invoke_54;
      block[3] = &unk_1E7AA52A0;
      objc_copyWeak(&v11, (a1 + 32));
      objc_copyWeak(v12, (a1 + 40));
      v12[1] = a2;
      dispatch_async(v6, block);
      objc_destroyWeak(v12);
      objc_destroyWeak(&v11);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __79__MFCategorySubsystem_iOS__setMigrationTaskWithSystemTask_migrator_cancelable___block_invoke_54(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [WeakRetained migrationTask];
      v5 = [v4 isEqual:v3];

      if (v5)
      {
        if (*(a1 + 48) == 1)
        {
          v6 = [MEMORY[0x1E699B528] log];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 138543362;
            v15 = v3;
            _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Task expired because of runtime limitation: %{public}@", &v14, 0xCu);
          }

          v7 = [WeakRetained migrationTask];
          [v7 setShouldFinishSystemTask:1];
        }

        [WeakRetained setMigrationTask:0];
        goto LABEL_15;
      }

      v8 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v14 = 138543618;
        v15 = v3;
        v16 = 2048;
        v17 = v12;
        v9 = "Previous task expired: %{public}@, reason: %lu";
        v10 = v8;
        v11 = 22;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = [MEMORY[0x1E699B528] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        v9 = "Previous task expired";
        v10 = v8;
        v11 = 2;
LABEL_13:
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }

LABEL_15:
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_3_cold_1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "Mail Categorization progress: %lu / %lu", buf, 0x16u);
}

void __71__MFCategorySubsystem_iOS__startCategoryMigrationWithBGTask_andReason___block_invoke_36_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Mail Categorization completed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __66__MFCategorySubsystem_iOS_startBusinessConnectGroupingWithBGTask___block_invoke_51_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Completed Businesses Connect grouping with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end