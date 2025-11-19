@interface DKSyncedFeatures
@end

@implementation DKSyncedFeatures

uint64_t __35___DKSyncedFeatures_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __46___DKSyncedFeatures__fetchScreenTimeSyncState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v6);

  if (v5)
  {
    v7 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46___DKSyncedFeatures__fetchScreenTimeSyncState__block_invoke_cold_1(v5, v7);
    }

    goto LABEL_4;
  }

  if (a2 && (__46___DKSyncedFeatures__fetchScreenTimeSyncState__block_invoke_cold_2(a1, a2, &v8) & 1) == 0)
  {
    v7 = v8;
LABEL_4:
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __47___DKSyncedFeatures_isIDSMessageGatingDisabled__block_invoke()
{
  v0 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_191750000, v0, OS_LOG_TYPE_INFO, "IDS Message Gating feature is disabled", v1, 2u);
  }
}

void __43___DKSyncedFeatures_isSiriPortraitDisabled__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  _MergedGlobals_2 = *(a1 + 32);
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 32))
    {
      v3 = @"enabled";
    }

    else
    {
      v3 = @"disabled";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "Siri Portrait feature is %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __55___DKSyncedFeatures_isSupergreenDisabledForTransports___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  byte_1EADBD5E9 = *(a1 + 32);
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 32))
    {
      v3 = @"disabled";
    }

    else
    {
      v3 = @"enabled";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "Supergreen feature is %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __46___DKSyncedFeatures__fetchScreenTimeSyncState__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to get ScreenTime sync state with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __46___DKSyncedFeatures__fetchScreenTimeSyncState__block_invoke_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = *(v6 + 16);
  }

  if (v6 == a2)
  {
    result = 1;
  }

  else
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "ScreenTime sync state: %@", &v16, 0xCu);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      *(v10 + 16) = a2;
    }

    v11 = MEMORY[0x1E695E110];
    if (a2 == 1)
    {
      v11 = MEMORY[0x1E695E118];
    }

    v12 = MEMORY[0x1E695E000];
    v13 = v11;
    v14 = [v12 standardUserDefaults];
    *a3 = v14;
    [v14 setObject:v13 forKey:@"ScreenTimeSyncDisabled"];

    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

@end