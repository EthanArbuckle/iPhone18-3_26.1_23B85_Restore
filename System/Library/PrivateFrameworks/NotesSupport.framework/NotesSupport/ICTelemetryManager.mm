@interface ICTelemetryManager
+ (id)sharedManager;
+ (id)telemetryQueue;
+ (id)telemetryTuples;
+ (void)postBasicEvent:(unint64_t)a3;
+ (void)postFetchDatabaseChangesTelemetryWithReason:(id)a3;
+ (void)postFetchZoneChangesTelemetryWithReason:(id)a3;
+ (void)postFullSyncTelemetryWithReason:(id)a3;
+ (void)postOneTimeBasicEvent:(unint64_t)a3;
+ (void)waitUntilAllPendingTelemetryHasBeenSent;
- (void)postOneTimeTelemetryEvent:(unint64_t)a3 serviceName:(id)a4 payload:(id)a5 token:(id)a6;
- (void)postTelemetryEvent:(unint64_t)a3 serviceName:(id)a4 payload:(id)a5;
@end

@implementation ICTelemetryManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[ICTelemetryManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __35__ICTelemetryManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(ICTelemetryManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)telemetryTuples
{
  if (telemetryTuples_onceToken != -1)
  {
    +[ICTelemetryManager telemetryTuples];
  }

  v3 = telemetryTuples_tuples;

  return v3;
}

void __37__ICTelemetryManager_telemetryTuples__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4FD7188;
  v2[1] = &unk_1F4FD71D0;
  v3[0] = &unk_1F4FD7278;
  v3[1] = &unk_1F4FD7290;
  v2[2] = &unk_1F4FD71E8;
  v2[3] = &unk_1F4FD7218;
  v3[2] = &unk_1F4FD72A8;
  v3[3] = &unk_1F4FD72C0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = telemetryTuples_tuples;
  telemetryTuples_tuples = v0;
}

- (void)postOneTimeTelemetryEvent:(unint64_t)a3 serviceName:(id)a4 payload:(id)a5 token:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  v14 = [v13 stringArrayForKey:@"ICRTCTelemetryServiceOneTimeEventTokens"];

  if ([v14 containsObject:v12])
  {
    v15 = [objc_opt_class() telemetryTuples];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v17 = [v15 objectForKeyedSubscript:v16];

    v18 = os_log_create("com.apple.notes", "Telemetry");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v17 objectAtIndexedSubscript:0];
      v22 = [v17 objectAtIndexedSubscript:1];
      v23 = 138413314;
      v24 = v10;
      v25 = 2048;
      v26 = a3;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v11;
      _os_log_debug_impl(&dword_1D4576000, v18, OS_LOG_TYPE_DEBUG, "Not posting repeat telemetry for event (S: %@, E:%lu, C:%@, T:%@) with payload: %@", &v23, 0x34u);
    }
  }

  else
  {
    [(ICTelemetryManager *)self postTelemetryEvent:a3 serviceName:v10 payload:v11];
    v19 = [v14 arrayByAddingObject:v12];

    v20 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v20 setObject:v19 forKey:@"ICRTCTelemetryServiceOneTimeEventTokens"];

    v14 = v19;
  }
}

- (void)postTelemetryEvent:(unint64_t)a3 serviceName:(id)a4 payload:(id)a5
{
  v45[6] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 bundleIdentifier];

  if ([v10 length])
  {
    v11 = *MEMORY[0x1E69C6AB8];
    v44[0] = *MEMORY[0x1E69C6AB0];
    v44[1] = v11;
    v45[0] = &unk_1F4FD7230;
    v45[1] = &unk_1F4FD71A0;
    v44[2] = *MEMORY[0x1E69C6AD8];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
    v13 = *MEMORY[0x1E69C6AA0];
    v45[2] = v12;
    v45[3] = MEMORY[0x1E695E118];
    v14 = *MEMORY[0x1E69C6AC0];
    v44[3] = v13;
    v44[4] = v14;
    v44[5] = *MEMORY[0x1E69C6AA8];
    v45[4] = MEMORY[0x1E695E110];
    v45[5] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:6];

    v16 = *MEMORY[0x1E69C6AE8];
    v42[0] = *MEMORY[0x1E69C6AE0];
    v42[1] = v16;
    v43[0] = @"notes";
    v43[1] = v7;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v18 = [objc_opt_class() telemetryTuples];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v20 = [v18 objectForKeyedSubscript:v19];

    if (v20)
    {
      if ([v20 count] == 2)
      {
        v21 = os_log_create("com.apple.notes", "Telemetry");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v20 objectAtIndexedSubscript:0];
          v29 = [v20 objectAtIndexedSubscript:1];
          *buf = 138413314;
          v33 = v7;
          v34 = 2048;
          v35 = a3;
          v36 = 2112;
          v37 = v28;
          v38 = 2112;
          v39 = v29;
          v40 = 2112;
          v41 = v8;
          _os_log_debug_impl(&dword_1D4576000, v21, OS_LOG_TYPE_DEBUG, "Posting telemetry for event (S: %@, E:%lu, C:%@, T:%@) with payload: %@", buf, 0x34u);
        }

        v22 = MEMORY[0x1E69C6A80];
        v23 = [v20 objectAtIndexedSubscript:0];
        v24 = [v23 unsignedIntValue];
        v25 = [v20 objectAtIndexedSubscript:1];
        v31 = 0;
        [v22 sendOneMessageWithSessionInfo:v15 userInfo:v17 category:v24 type:objc_msgSend(v25 payload:"unsignedIntValue") error:{v8, &v31}];
        v26 = v31;

        if (v26)
        {
          v27 = os_log_create("com.apple.notes", "Telemetry");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [ICTelemetryManager postTelemetryEvent:v26 serviceName:v27 payload:?];
          }
        }
      }

      else
      {
        +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "-[ICTelemetryManager postTelemetryEvent:serviceName:payload:]", 1, 0, @"Invalid tuple argument count (%lu) for event: %lu", [v20 count], a3);
      }
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICTelemetryManager postTelemetryEvent:serviceName:payload:]" simulateCrash:1 showAlert:0 format:@"No event tuple defined for event: %lu", a3, v30];
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICTelemetryManager postTelemetryEvent:serviceName:payload:]" simulateCrash:1 showAlert:0 format:@"Unable to find valid bundle ID for telemetry"];
  }
}

+ (void)postFullSyncTelemetryWithReason:(id)a3
{
  v4 = a3;
  v5 = [a1 telemetryQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__ICTelemetryManager_postFullSyncTelemetryWithReason___block_invoke;
  v7[3] = &unk_1E8485338;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__ICTelemetryManager_postFullSyncTelemetryWithReason___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) sharedManager];
  v3 = *(a1 + 32);
  v5 = @"reason";
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postTelemetryEvent:0 serviceName:@"general" payload:v4];
}

+ (void)postFetchDatabaseChangesTelemetryWithReason:(id)a3
{
  v4 = a3;
  v5 = [a1 telemetryQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ICTelemetryManager_postFetchDatabaseChangesTelemetryWithReason___block_invoke;
  v7[3] = &unk_1E8485338;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__ICTelemetryManager_postFetchDatabaseChangesTelemetryWithReason___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) sharedManager];
  v3 = *(a1 + 32);
  v5 = @"reason";
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postTelemetryEvent:1 serviceName:@"general" payload:v4];
}

+ (void)postFetchZoneChangesTelemetryWithReason:(id)a3
{
  v4 = a3;
  v5 = [a1 telemetryQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ICTelemetryManager_postFetchZoneChangesTelemetryWithReason___block_invoke;
  v7[3] = &unk_1E8485338;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__ICTelemetryManager_postFetchZoneChangesTelemetryWithReason___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) sharedManager];
  v3 = *(a1 + 32);
  v5 = @"reason";
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postTelemetryEvent:2 serviceName:@"general" payload:v4];
}

+ (void)postBasicEvent:(unint64_t)a3
{
  v5 = [a1 telemetryQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__ICTelemetryManager_postBasicEvent___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __37__ICTelemetryManager_postBasicEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sharedManager];
  v5 = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  [v2 postTelemetryEvent:3 serviceName:@"basic" payload:v4];
}

+ (void)postOneTimeBasicEvent:(unint64_t)a3
{
  v5 = [a1 telemetryQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__ICTelemetryManager_postOneTimeBasicEvent___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __44__ICTelemetryManager_postOneTimeBasicEvent___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sharedManager];
  v8 = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v7 = [v5 stringWithFormat:@"%@-%@", @"basic", v6];

  [v2 postOneTimeTelemetryEvent:3 serviceName:@"basic" payload:v4 token:v7];
}

+ (id)telemetryQueue
{
  if (telemetryQueue_onceToken != -1)
  {
    +[ICTelemetryManager telemetryQueue];
  }

  v3 = telemetryQueue_queue;

  return v3;
}

void __36__ICTelemetryManager_telemetryQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.notes.telemetry", v2);
  v1 = telemetryQueue_queue;
  telemetryQueue_queue = v0;
}

+ (void)waitUntilAllPendingTelemetryHasBeenSent
{
  v3 = os_log_create("com.apple.notes", "Telemetry");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(ICTelemetryManager *)v3];
  }

  v4 = [a1 telemetryQueue];
  dispatch_sync(v4, &__block_literal_global_70);
}

void __61__ICTelemetryManager_waitUntilAllPendingTelemetryHasBeenSent__block_invoke()
{
  v0 = os_log_create("com.apple.notes", "Telemetry");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __61__ICTelemetryManager_waitUntilAllPendingTelemetryHasBeenSent__block_invoke_cold_1(v0);
  }
}

- (void)postTelemetryEvent:(uint64_t)a1 serviceName:(NSObject *)a2 payload:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "Error reporting telemetry: %@", &v2, 0xCu);
}

@end