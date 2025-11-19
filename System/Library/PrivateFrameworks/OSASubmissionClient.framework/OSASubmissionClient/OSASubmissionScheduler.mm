@interface OSASubmissionScheduler
+ (double)_lastSuccessTime;
+ (id)_calculateNewCadenceParametersWithPermissive:(BOOL)a3 fastLane:(BOOL)a4;
+ (id)_getCurrentCadenceParametersFromActivity:(id)a3;
+ (int64_t)_retryCount;
+ (void)_incrementRetryCount;
+ (void)_resetRetryCount;
+ (void)_saveLastSuccessTime;
+ (void)_scheduleSubmissionWithPermissive:(BOOL)a3;
+ (void)_updateCadenceForActivity:(id)a3 newCadenceParameters:(id)a4;
+ (void)scheduleCleanupForUser:(id)a3;
+ (void)scheduleSubmission;
@end

@implementation OSASubmissionScheduler

+ (void)scheduleSubmission
{
  [OSASubmissionScheduler _scheduleSubmissionWithPermissive:1];

  [OSASubmissionScheduler _scheduleSubmissionWithPermissive:0];
}

+ (void)_scheduleSubmissionWithPermissive:(BOOL)a3
{
  v3 = "com.apple.osanalytics.submissions.submit";
  v4 = *MEMORY[0x277D86238];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__OSASubmissionScheduler__scheduleSubmissionWithPermissive___block_invoke;
  v5[3] = &__block_descriptor_41_e33_v16__0__NSObject_OS_xpc_object__8l;
  if (a3)
  {
    v3 = "com.apple.osanalytics.submissions.submit-permissive";
  }

  v6 = a3;
  v5[4] = a1;
  xpc_activity_register(v3, v4, v5);
}

void __60__OSASubmissionScheduler__scheduleSubmissionWithPermissive___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    if (!state)
    {
      +[OSASubmissionScheduler _lastSuccessTime];
      if (v5 <= 0.0)
      {
        +[OSASubmissionScheduler _saveLastSuccessTime];
      }

      v6 = [MEMORY[0x277D36B80] fastLane];
      if (v6 >= 1)
      {
        +[OSASubmissionScheduler _resetRetryCount];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = "NO";
        if (*(a1 + 40))
        {
          v8 = "YES";
        }

        else
        {
          v8 = "NO";
        }

        if (v6 > 0)
        {
          v7 = "YES";
        }

        *buf = 136446466;
        *&buf[4] = v8;
        *&buf[12] = 2082;
        *&buf[14] = v7;
        _os_log_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Initializing submission activity cadence. Permissive: %{public}s. FastLane: %{public}s.", buf, 0x16u);
      }

      v9 = [*(a1 + 32) _calculateNewCadenceParametersWithPermissive:*(a1 + 40) fastLane:v6 > 0];
      [OSASubmissionScheduler _updateCadenceForActivity:v3 newCadenceParameters:v9];
    }

    goto LABEL_29;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_18;
  }

  v10 = xpc_activity_copy_criteria(v3);
  int64 = xpc_dictionary_get_int64(v10, *MEMORY[0x277D86288]);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v13 = v12;
  +[OSASubmissionScheduler _lastSuccessTime];
  if (v13 - v14 >= (int64 + 86400))
  {

LABEL_18:
    v15 = [MEMORY[0x277D36B80] fastLane];
    v16 = v15 > 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = "NO";
      if (*(a1 + 40))
      {
        v18 = "YES";
      }

      else
      {
        v18 = "NO";
      }

      if (v15 > 0)
      {
        v17 = "YES";
      }

      *buf = 136446466;
      *&buf[4] = v18;
      *&buf[12] = 2082;
      *&buf[14] = v17;
      _os_log_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Scheduling submission. Permissive: %{public}s. FastLane: %{public}s.", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v31 = 0;
    v19 = dispatch_queue_create("com.apple.osanalytics.submissions.schedulerQueue", 0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__OSASubmissionScheduler__scheduleSubmissionWithPermissive___block_invoke_14;
    v24[3] = &unk_2799BF6B8;
    v28 = v16;
    v29 = *(a1 + 40);
    v20 = *(a1 + 32);
    v26 = buf;
    v27 = v20;
    v25 = v3;
    dispatch_sync(v19, v24);

    _Block_object_dispose(buf, 8);
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = MEMORY[0x277CBEAA8];
    +[OSASubmissionScheduler _lastSuccessTime];
    v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    *buf = 138543618;
    *&buf[4] = v22;
    *&buf[12] = 2050;
    *&buf[14] = int64;
    _os_log_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cancelling permissive submission due to recent success at %{public}@ with interval %{public}lli.", buf, 0x16u);
  }

  xpc_activity_set_state(v3, 5);

LABEL_29:
  v23 = *MEMORY[0x277D85DE8];
}

void __60__OSASubmissionScheduler__scheduleSubmissionWithPermissive___block_invoke_14(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(OSASubmissionClient);
  *(*(*(a1 + 40) + 8) + 24) = [(OSASubmissionClient *)v2 submit];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    +[OSASubmissionScheduler _saveLastSuccessTime];
LABEL_4:
    +[OSASubmissionScheduler _resetRetryCount];
    goto LABEL_5;
  }

  if (*(a1 + 56) == 1)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 57) & 1) == 0)
  {
    +[OSASubmissionScheduler _incrementRetryCount];
  }

LABEL_5:
  v8 = MEMORY[0x277D85DD0];
  LOBYTE(v9) = *(a1 + 57);
  AnalyticsSendEventLazy();
  v3 = [MEMORY[0x277D36B80] sharedInstance];
  v4 = [v3 crashReporterKey];
  v10[1] = @"type";
  v11[0] = v4;
  v11[1] = @"unified";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  rtcsc_send();

  [MEMORY[0x277D36B78] recordEvent:*MEMORY[0x277D36BB8]];
  v6 = [*(a1 + 48) _calculateNewCadenceParametersWithPermissive:*(a1 + 57) fastLane:*(a1 + 56)];
  [*(a1 + 48) _updateCadenceForActivity:*(a1 + 32) newCadenceParameters:v6];

  v7 = *MEMORY[0x277D85DE8];
}

id __60__OSASubmissionScheduler__scheduleSubmissionWithPermissive___block_invoke_2(uint64_t a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"action";
  v5[1] = @"type";
  v6[0] = @"submit";
  v6[1] = @"unified";
  v5[2] = @"permissive";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[2] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)scheduleCleanupForUser:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__OSASubmissionScheduler_scheduleCleanupForUser___block_invoke;
  handler[3] = &unk_2799BF748;
  v7 = v3;
  v5 = v3;
  xpc_activity_register("com.apple.osanalytics.submissions.cleanup", v4, handler);
}

void __49__OSASubmissionScheduler_scheduleCleanupForUser___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Scheduling cleanup.", buf, 2u);
    }

    v3 = dispatch_queue_create("com.apple.osanalytics.submissions.schedulerQueue", 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__OSASubmissionScheduler_scheduleCleanupForUser___block_invoke_45;
    block[3] = &unk_2799BF700;
    v5 = *(a1 + 32);
    dispatch_sync(v3, block);
    AnalyticsSendEventLazy();
  }
}

+ (id)_calculateNewCadenceParametersWithPermissive:(BOOL)a3 fastLane:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = +[OSASubmissionScheduler _retryCount];
  v7 = *MEMORY[0x277D862A0];
  v8 = 3 * *MEMORY[0x277D862A0];
  if (v5 && v4)
  {
    v9 = 12 * *MEMORY[0x277D862A0];
LABEL_5:
    v8 = *MEMORY[0x277D862A0];
LABEL_6:
    v7 = v9;
    goto LABEL_7;
  }

  v9 = *MEMORY[0x277D86298];
  if (v5)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v8 = *MEMORY[0x277D862B0];
  }

  else
  {
    if (v6 < 1)
    {
      goto LABEL_6;
    }

    v19 = *MEMORY[0x277D862A0];
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v19 = 2 * v7;
      }

      else
      {
        v19 = *MEMORY[0x277D862B8];
      }
    }

    v20 = v19 + arc4random_uniform(0xE10u);
    v8 = v7;
    v7 = v20 - 1800;
  }

LABEL_7:
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86250]];
  v21[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
  v22[0] = v11;
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86288]];
  v21[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
  v22[1] = v13;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86270]];
  v21[2] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v22[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_getCurrentCadenceParametersFromActivity:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = xpc_activity_copy_criteria(a3);
  v4 = *MEMORY[0x277D86250];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86250]];
  v16[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{xpc_dictionary_get_int64(v3, v4)}];
  v17[0] = v6;
  v7 = *MEMORY[0x277D86288];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86288]];
  v16[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{xpc_dictionary_get_int64(v3, v7)}];
  v17[1] = v9;
  v10 = *MEMORY[0x277D86270];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86270]];
  v16[2] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{xpc_dictionary_get_int64(v3, v10)}];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)_updateCadenceForActivity:(id)a3 newCadenceParameters:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _getCurrentCadenceParametersFromActivity:v6];
  v9 = xpc_activity_copy_identifier();
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    free(v10);
  }

  else
  {
    v11 = 0;
  }

  state = xpc_activity_get_state(v6);
  if (!state)
  {
    goto LABEL_11;
  }

  if (state != 2)
  {
    goto LABEL_15;
  }

  if (xpc_activity_set_state(v6, 5))
  {
    usleep(0xAu);
  }

  if ([v8 isEqualToDictionary:v7])
  {
LABEL_15:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = v11;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Submission cadences were unchanged for activity %{public}@. Keeping current cadences parameters %{public}@", &v24, 0x16u);
    }
  }

  else
  {
LABEL_11:
    v13 = xpc_activity_copy_criteria(v6);
    v14 = *MEMORY[0x277D86250];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86250]];
    v16 = [v7 objectForKeyedSubscript:v15];
    xpc_dictionary_set_int64(v13, v14, [v16 longLongValue]);

    v17 = *MEMORY[0x277D86288];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86288]];
    v19 = [v7 objectForKeyedSubscript:v18];
    xpc_dictionary_set_int64(v13, v17, [v19 longLongValue]);

    v20 = *MEMORY[0x277D86270];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D86270]];
    v22 = [v7 objectForKeyedSubscript:v21];
    xpc_dictionary_set_int64(v13, v20, [v22 longLongValue]);

    xpc_activity_set_criteria(v6, v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)_saveLastSuccessTime
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v2 setDouble:@"lastSuccess" forKey:?];
}

+ (double)_lastSuccessTime
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 doubleForKey:@"lastSuccess"];
  v4 = v3;

  return v4;
}

+ (int64_t)_retryCount
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"retryCount"];

  return v3;
}

+ (void)_incrementRetryCount
{
  v3 = +[OSASubmissionScheduler _retryCount];
  if (v3 > 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D125000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Maxed out on retries. Resetting retry count", buf, 2u);
    }

    [a1 _resetRetryCount];
  }

  else
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setInteger:v4 + 1 forKey:@"retryCount"];
  }
}

+ (void)_resetRetryCount
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setInteger:0 forKey:@"retryCount"];
}

@end