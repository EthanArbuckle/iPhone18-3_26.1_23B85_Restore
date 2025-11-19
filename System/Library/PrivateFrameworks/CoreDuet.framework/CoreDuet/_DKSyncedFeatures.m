@interface _DKSyncedFeatures
+ (id)sharedInstance;
- (BOOL)isDigitalHealthDisabledWithIsSingleDevice:(uint64_t)a3 forTransports:;
- (BOOL)isIDSMessageGatingDisabled;
- (_DKSyncedFeatures)init;
- (id)description;
- (uint64_t)isOptimizedBatteryChargingDisabled;
- (uint64_t)isSiriPortraitDisabled;
- (uint64_t)isSupergreenDisabledForTransports:(uint64_t)a1;
- (uint64_t)isTipsDisabled;
- (void)_fetchScreenTimeSyncState;
@end

@implementation _DKSyncedFeatures

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_initialized_2 != -1)
  {
    +[_DKSyncedFeatures sharedInstance];
  }

  v0 = sharedInstance_instance_0;

  return v0;
}

- (_DKSyncedFeatures)init
{
  v9.receiver = self;
  v9.super_class = _DKSyncedFeatures;
  v2 = [(_DKSyncedFeatures *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_screenTimeSyncState = 0;
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"ScreenTimeSyncDisabled"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 BOOLValue];
        v7 = 1;
        if (!v6)
        {
          v7 = 2;
        }

        v3->_screenTimeSyncState = v7;
      }
    }
  }

  return v3;
}

- (void)_fetchScreenTimeSyncState
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    getSTManagementStateClass();
    v3 = objc_opt_new();
    v4 = dispatch_semaphore_create(0);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __46___DKSyncedFeatures__fetchScreenTimeSyncState__block_invoke;
    v13 = &unk_1E7369B40;
    v14 = a1;
    v5 = v4;
    v15 = v5;
    [v3 screenTimeSyncStateWithCompletionHandler:&v10];
    v6 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = [_CDLogging syncChannel:v10];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 16)];
        *buf = 138412290;
        v17 = v9;
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "ScreenTime sync state query timed out. Falling back to state %@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isDigitalHealthDisabledWithIsSingleDevice:(uint64_t)a3 forTransports:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 10) = a2;
    if (a2)
    {
      v5 = 1;
    }

    else
    {
      [(_DKSyncedFeatures *)a1 _fetchScreenTimeSyncState];
      v5 = *(a1 + 16) == 1;
    }

    v6 = [_DKSyncPeerStatusTracker stringForTransports:a3];
    if ((*(a1 + 8) & 1) == 0 || *(a1 + 9) != v5)
    {
      *(a1 + 8) = 1;
      *(a1 + 9) = v5;
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"enabled";
        if (v5)
        {
          v8 = @"disabled";
        }

        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Digital Health feature is %{public}@ for transport %{public}@", &v11, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isIDSMessageGatingDisabled
{
  if (a1 && isIDSMessageGatingDisabled_initialized != -1)
  {
    dispatch_once(&isIDSMessageGatingDisabled_initialized, &__block_literal_global_546);
  }

  return a1 != 0;
}

- (uint64_t)isSiriPortraitDisabled
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = [getAFPreferencesClass() sharedPreferences];
    v2 = [v1 cloudSyncEnabled];

    OUTLINED_FUNCTION_0_1();
    v8 = 3221225472;
    v9 = __43___DKSyncedFeatures_isSiriPortraitDisabled__block_invoke;
    v10 = &__block_descriptor_33_e5_v8__0l;
    v11 = v2;
    if (qword_1EADBD5F0 != -1)
    {
      dispatch_once(&qword_1EADBD5F0, block);
    }

    if (_MergedGlobals_2 != v2)
    {
      v3 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = @"disabled";
        if (v2)
        {
          v5 = @"enabled";
        }

        v12 = 138412290;
        v13 = v5;
        OUTLINED_FUNCTION_3(&dword_191750000, v3, v4, "Siri Portrait feature is %@", &v12);
      }

      _MergedGlobals_2 = v2;
    }

    result = v2 ^ 1u;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)isSupergreenDisabledForTransports:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [MEMORY[0x1E69B36B8] sharedInstance];
    v4 = [v3 getPairedDevices];

    if ([v4 count])
    {
      if (a2 == 1)
      {
        OneDay = slREIsSupergreenUsedInLastOneDay();
      }

      else
      {
        OneDay = slREIsSupergreenUsedInLastSevenDays();
      }

      v6 = OneDay ^ 1u;
    }

    else
    {
      v6 = 1;
    }

    OUTLINED_FUNCTION_0_1();
    v13 = 3221225472;
    v14 = __55___DKSyncedFeatures_isSupergreenDisabledForTransports___block_invoke;
    v15 = &__block_descriptor_33_e5_v8__0l;
    v16 = v6;
    if (qword_1EADBD5F8 != -1)
    {
      dispatch_once(&qword_1EADBD5F8, block);
    }

    if (byte_1EADBD5E9 != v6)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = @"enabled";
        if (v6)
        {
          v9 = @"disabled";
        }

        v17 = 138412290;
        v18 = v9;
        OUTLINED_FUNCTION_3(&dword_191750000, v7, v8, "Supergreen feature is now %@", &v17);
      }

      byte_1EADBD5E9 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)isOptimizedBatteryChargingDisabled
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = CFPreferencesCopyValue(@"enabled", @"com.apple.smartcharging.topoffprotection", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v2 = v1;
    if (v1)
    {
      v3 = [v1 BOOLValue];
    }

    else
    {
      v3 = 1;
    }

    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = @"disabled";
      if (v3)
      {
        v6 = @"enabled";
      }

      v10 = 138412290;
      v11 = v6;
      OUTLINED_FUNCTION_3(&dword_191750000, v4, v5, "Optimized Battery Charging feature is %@", &v10);
    }

    v7 = v3 ^ 1u;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)isTipsDisabled
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [MEMORY[0x1E69B36B8] sharedInstance];
    v2 = [v1 getPairedDevices];

    if ([v2 count])
    {
      v3 = [MEMORY[0x1E6963608] defaultWorkspace];
      v4 = [v3 applicationIsInstalled:@"com.apple.tips"];

      v5 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = @"not ";
        if (v4)
        {
          v7 = &stru_1F05B9908;
        }

        v11 = 138412290;
        v12 = v7;
        OUTLINED_FUNCTION_3(&dword_191750000, v5, v6, "Tips is %@installed.", &v11);
      }

      v8 = v4 ^ 1u;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p: ", v5, self];

  [(_DKSyncedFeatures *)self isDigitalHealthDisabledWithIsSingleDevice:0 forTransports:?];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isDigitalHealthDisabled=%@"];
  if (self->_isSingleDevice)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = @"unknown";
  screenTimeSyncState = self->_screenTimeSyncState;
  if (screenTimeSyncState == 2)
  {
    v7 = @"enabled";
  }

  if (screenTimeSyncState == 1)
  {
    v7 = @"disabled";
  }

  if (self->_isDigitalHealthDisabledPreviousResult)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@" (isSingleDevice=%@, STState=%@) previously %@", v6, v7, v9];
  [OUTLINED_FUNCTION_23_2() appendString:?];
  [(_DKSyncedFeatures *)self isSiriPortraitDisabled];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isSiriPortraitDisabled=%@"];
  [OUTLINED_FUNCTION_23_2() appendString:?];
  [(_DKSyncedFeatures *)self isOptimizedBatteryChargingDisabled];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isOptimizedBatteryChargingDisabled=%@"];
  [OUTLINED_FUNCTION_23_2() appendString:?];
  [(_DKSyncedFeatures *)self isTipsDisabled];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isTipsDisabled=%@"];
  [OUTLINED_FUNCTION_23_2() appendFormat:?];
  [(_DKSyncedFeatures *)self isSupergreenDisabledForTransports:?];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isSupergreenDisabled(CloudDown)=%@"];
  [OUTLINED_FUNCTION_23_2() appendString:?];
  [(_DKSyncedFeatures *)self isSupergreenDisabledForTransports:?];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isSupergreenDisabled(CloudUp)=%@"];
  [OUTLINED_FUNCTION_23_2() appendString:?];
  [(_DKSyncedFeatures *)self isSupergreenDisabledForTransports:?];
  OUTLINED_FUNCTION_0_22();
  [v3 appendFormat:@"isSupergreenDisabled(Rapport)=%@"];
  [v3 appendString:@">"];

  return v3;
}

@end