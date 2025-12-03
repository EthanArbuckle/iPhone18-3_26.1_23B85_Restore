@interface MAAutoAssetControl
+ (id)_privateStateQueue;
+ (id)assetSelectorOrAllSelector:(id)selector;
+ (id)autoAssetControl;
+ (id)availableForStagingAssetSummary:(id *)summary;
+ (id)defaultDispatchQueue;
+ (id)forceGlobalAbandon:(id)abandon;
+ (id)forceGlobalForget:(id)forget;
+ (id)forceGlobalUnlock:(id)unlock;
+ (id)frameworkInstanceUUID;
+ (id)simulateSetJobOperation:(int64_t)operation withEndEvent:(int64_t)event forSelector:(id)selector;
+ (id)stagerOverview:(id *)overview;
+ (void)frameworkInstanceSetLogDomain;
- (BOOL)_simulateCacheDeleteDetermineReclaimableSpace:(id)space withUrgency:(int)urgency error:(id *)error isSynchronous:(BOOL)synchronous completion:(id)completion;
- (BOOL)_simulateCacheDeleteReclaimSpace:(id)space withUrgency:(int)urgency targetingPurgeAmount:(int64_t)amount isSynchronous:(BOOL)synchronous completion:(id)completion;
- (MAAutoAssetControl)init;
- (void)_activeJobSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_availableForStagingAssetSummaryIsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_controlStatistics:(BOOL)statistics isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedControl:(id)control withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedControlLockSummary:(id)summary withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedControlStagerOverview:(id)overview withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedControlStatistics:(id)statistics withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedControlSummary:(id)summary withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_failedSimulateCacheDeleteOperation:(id)operation withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_forceGlobalAbandon:(id)abandon isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_forceGlobalForget:(id)forget isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_forceGlobalPurge:(id)purge forcingUnlock:(BOOL)unlock isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_forceGlobalUnlock:(id)unlock isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_knownAssetSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_lockedAssetSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_scheduledJobSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_simulateSetJobOperation:(int64_t)operation withEndEvent:(int64_t)event forSelector:(id)selector isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stagedAssetSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_stagerOverview:(BOOL)overview limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successControl:(id)control isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successControlLockSummary:(id)summary withLockSummaryEntries:(id)entries isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successControlStagerOverview:(id)overview withStagerInformation:(id)information isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successControlStatistics:(id)statistics withControlStatistics:(id)controlStatistics isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successControlSummary:(id)summary withJobSummaryEntries:(id)entries isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)_successSimulateCacheDeleteOperation:(id)operation withReclaimableSpace:(int64_t)space isSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)connectToServerFrameworkCompletion:(id)completion;
@end

@implementation MAAutoAssetControl

- (MAAutoAssetControl)init
{
  v7.receiver = self;
  v7.super_class = MAAutoAssetControl;
  v2 = [(MAAutoAssetControl *)&v7 init];
  if (v2)
  {
    +[MAAutoAssetControl frameworkInstanceSetLogDomain];
    controlClientName = v2->_controlClientName;
    v2->_controlClientName = @"auto-control-client";

    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    controlClientProcessName = v2->_controlClientProcessName;
    v2->_controlClientProcessName = v4;

    v2->_controlClientProcessID = getpid();
  }

  return v2;
}

void __46__MAAutoAssetControl_controlStatistics_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_controlStatistics:(BOOL)statistics isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v9);

  if (completionCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__MAAutoAssetControl__controlStatistics_isSynchronous_completion___block_invoke;
    v13[3] = &unk_1E74CB008;
    statisticsCopy = statistics;
    v13[4] = self;
    synchronousCopy = synchronous;
    v14 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v13];
  }

  else
  {
    v10 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"controlStatistics"];
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto-control{controlStatistics} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __66__MAAutoAssetControl__controlStatistics_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__MAAutoAssetControl__controlStatistics_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 32);
    v26 = v3;
    v28 = *(a1 + 49);
    v27 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 49);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 48)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 32) controlClientName];
    v14 = [*(a1 + 32) controlClientProcessName];
    v15 = [*(a1 + 32) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:CONTROL_STATISTICS" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 32) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 49);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__MAAutoAssetControl__controlStatistics_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __66__MAAutoAssetControl__controlStatistics_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlStatistics:@"controlStatistics" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"controlStatistics" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlStatistics:@"controlStatistics" withControlStatistics:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlStatistics:@"controlStatistics" withErrorCode:6110 withResponseError:0 description:@"no control-statistics provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)availableForStagingAssetSummary:(id *)summary
{
  v4 = +[MAAutoAssetControl autoAssetControl];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MAAutoAssetControl_availableForStagingAssetSummary___block_invoke;
  v7[3] = &unk_1E74C9778;
  v7[4] = &v14;
  v7[5] = &v8;
  [v4 _availableForStagingAssetSummaryIsSynchronous:1 completion:v7];
  if (summary)
  {
    *summary = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __54__MAAutoAssetControl_availableForStagingAssetSummary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

void __66__MAAutoAssetControl_knownAssetSummary_limitedToAssetTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_availableForStagingAssetSummaryIsSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v7);

  if (completionCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__MAAutoAssetControl__availableForStagingAssetSummaryIsSynchronous_completion___block_invoke;
    v11[3] = &unk_1E74CAC20;
    v11[4] = self;
    synchronousCopy = synchronous;
    v12 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v11];
  }

  else
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"availableForStagingAssetSummary"];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "MA-auto-control{availableForStagingAssetSummary} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __79__MAAutoAssetControl__availableForStagingAssetSummaryIsSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__MAAutoAssetControl__availableForStagingAssetSummaryIsSynchronous_completion___block_invoke_3;
    v24[3] = &unk_1E74C97C8;
    v24[4] = *(a1 + 32);
    v25 = v3;
    v27 = *(a1 + 48);
    v26 = *(a1 + 40);
    v5 = MEMORY[0x19A8EC5D0](v24);
    v6 = *(a1 + 48);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAssetControl frameworkInstanceUUID];
    v22 = [v10 UUIDString];

    v23 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v11 = [MAAutoAssetInfoInstance alloc];
    v12 = [*(a1 + 32) controlClientName];
    v13 = [*(a1 + 32) controlClientProcessName];
    v14 = [*(a1 + 32) controlClientProcessID];
    v15 = +[MAAutoAssetControl frameworkInstanceUUID];
    v16 = [(MAAutoAssetInfoInstance *)v11 initForClientName:v12 withProcessName:v13 withProcessID:v14 usingAssetSelector:v23 associatingFrameworkUUID:v15];

    [v9 setSafeObject:v16 forKey:@"instance"];
    v17 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:AVAILABLE_FOR_STAGING_ASSET_SUMMARY" clientID:v22 version:0 message:v9];
    v18 = [*(a1 + 32) connectionClient];
    v19 = +[MAAutoAssetControl _privateStateQueue];
    v20 = *(a1 + 48);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __79__MAAutoAssetControl__availableForStagingAssetSummaryIsSynchronous_completion___block_invoke_2;
    v28[3] = &unk_1E74C97A0;
    v21 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v30 = v20;
    v29 = v21;
    [v18 connectClientSendServerMessage:v17 proxyObject:0 replyQueue:v19 isSynchronous:v20 withReply:v28];
  }
}

void __79__MAAutoAssetControl__availableForStagingAssetSummaryIsSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlSummary:@"availableForStagingAssetSummary" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"jobSummary" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlSummary:@"availableForStagingAssetSummary" withJobSummaryEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlSummary:@"availableForStagingAssetSummary" withErrorCode:6110 withResponseError:0 description:@"no auto-stage-status provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

- (void)_knownAssetSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__MAAutoAssetControl__knownAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    summaryCopy = summary;
    v17 = typesCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"knownAssetSummary"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{knownAssetSummary} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __86__MAAutoAssetControl__knownAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__MAAutoAssetControl__knownAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 56) limitedToAssetTypes:*(a1 + 32)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:KNOWN_ASSET_SUMMARY" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __86__MAAutoAssetControl__knownAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __86__MAAutoAssetControl__knownAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlSummary:@"knownAssetSummary" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"jobSummary" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlSummary:@"knownAssetSummary" withJobSummaryEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlSummary:@"knownAssetSummary" withErrorCode:6110 withResponseError:0 description:@"no known-asset-summary provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

void __67__MAAutoAssetControl_lockedAssetSummary_limitedToAssetTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_lockedAssetSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__MAAutoAssetControl__lockedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    summaryCopy = summary;
    v17 = typesCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"lockedAssetSummary"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{lockedAssetSummary} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __87__MAAutoAssetControl__lockedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __87__MAAutoAssetControl__lockedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 56) limitedToAssetTypes:*(a1 + 32)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:LOCKED_ASSET_SUMMARY" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __87__MAAutoAssetControl__lockedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __87__MAAutoAssetControl__lockedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlLockSummary:@"lockedAssetSummary" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"lockSummary" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlLockSummary:@"lockedAssetSummary" withLockSummaryEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlLockSummary:@"lockedAssetSummary" withErrorCode:6110 withResponseError:0 description:@"no locked-asset-summary provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

void __67__MAAutoAssetControl_stagedAssetSummary_limitedToAssetTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_stagedAssetSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__MAAutoAssetControl__stagedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    summaryCopy = summary;
    v17 = typesCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stagedAssetSummary"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{stagedAssetSummary} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __87__MAAutoAssetControl__stagedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __87__MAAutoAssetControl__stagedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 56) limitedToAssetTypes:*(a1 + 32)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:STAGED_ASSET_SUMMARY" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __87__MAAutoAssetControl__stagedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __87__MAAutoAssetControl__stagedAssetSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlSummary:@"stagedAssetSummary" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"jobSummary" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlSummary:@"stagedAssetSummary" withJobSummaryEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlSummary:@"stagedAssetSummary" withErrorCode:6110 withResponseError:0 description:@"no staged-asset-summary provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

void __65__MAAutoAssetControl_activeJobSummary_limitedToAssetTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_activeJobSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__MAAutoAssetControl__activeJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    summaryCopy = summary;
    v17 = typesCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"activeJobSummary"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{activeJobSummary} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __85__MAAutoAssetControl__activeJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __85__MAAutoAssetControl__activeJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 56) limitedToAssetTypes:*(a1 + 32)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:ACTIVE_JOB_SUMMARY" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __85__MAAutoAssetControl__activeJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __85__MAAutoAssetControl__activeJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlSummary:@"activeJobSummary" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"jobSummary" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlSummary:@"activeJobSummary" withJobSummaryEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlSummary:@"activeJobSummary" withErrorCode:6110 withResponseError:0 description:@"no active-job-summary provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

void __68__MAAutoAssetControl_scheduledJobSummary_limitedToAssetTypes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_scheduledJobSummary:(BOOL)summary limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__MAAutoAssetControl__scheduledJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    summaryCopy = summary;
    v17 = typesCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"scheduledJobSummary"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{scheduledJobSummary} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __88__MAAutoAssetControl__scheduledJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__MAAutoAssetControl__scheduledJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 56) limitedToAssetTypes:*(a1 + 32)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:SCHEDULED_JOB_SUMMARY" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __88__MAAutoAssetControl__scheduledJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __88__MAAutoAssetControl__scheduledJobSummary_limitedToAssetTypes_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlSummary:@"scheduledJobSummary" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"jobSummary" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlSummary:@"scheduledJobSummary" withJobSummaryEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlSummary:@"scheduledJobSummary" withErrorCode:6110 withResponseError:0 description:@"no scheduled-job-summary provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)stagerOverview:(id *)overview
{
  v4 = +[MAAutoAssetControl autoAssetControl];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MAAutoAssetControl_stagerOverview___block_invoke;
  v7[3] = &unk_1E74CB058;
  v7[4] = &v14;
  v7[5] = &v8;
  [v4 _stagerOverview:0 limitedToAssetTypes:0 isSynchronous:1 completion:v7];
  if (overview)
  {
    *overview = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __37__MAAutoAssetControl_stagerOverview___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_stagerOverview:(BOOL)overview limitedToAssetTypes:(id)types isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__MAAutoAssetControl__stagerOverview_limitedToAssetTypes_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    overviewCopy = overview;
    v17 = typesCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"stagerOverview"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{stagerOverview} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __83__MAAutoAssetControl__stagerOverview_limitedToAssetTypes_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __83__MAAutoAssetControl__stagerOverview_limitedToAssetTypes_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initClearingAfter:*(a1 + 56) limitedToAssetTypes:*(a1 + 32)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:STAGER_OVERVIEW" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __83__MAAutoAssetControl__stagerOverview_limitedToAssetTypes_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __83__MAAutoAssetControl__stagerOverview_limitedToAssetTypes_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v13 || v5)
  {
    if (v5)
    {
      v10 = @"failure reported by server";
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v10 = @"no response message from server";
      v11 = 6104;
      v12 = 0;
    }

    [*(a1 + 32) _failedControlStagerOverview:@"stagerOverview" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"stagerInformation" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlStagerOverview:@"stagerOverview" withStagerInformation:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlStagerOverview:@"stagerOverview" withErrorCode:6111 withResponseError:0 description:@"no stager-information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)forceGlobalUnlock:(id)unlock
{
  unlockCopy = unlock;
  v4 = +[MAAutoAssetControl autoAssetControl];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MAAutoAssetControl_forceGlobalUnlock___block_invoke;
  v7[3] = &unk_1E74CAA18;
  v7[4] = &v8;
  [v4 _forceGlobalUnlock:unlockCopy isSynchronous:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__MAAutoAssetControl_forceGlobalUnlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_forceGlobalUnlock:(id)unlock isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  unlockCopy = unlock;
  completionCopy = completion;
  v10 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__MAAutoAssetControl__forceGlobalUnlock_isSynchronous_completion___block_invoke;
    v14[3] = &unk_1E74C9840;
    v15 = unlockCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v17 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v14];

    v11 = v15;
  }

  else
  {
    v11 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"forceGlobalUnlock"];
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "MA-auto-control{forceGlobalUnlock} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __66__MAAutoAssetControl__forceGlobalUnlock_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__MAAutoAssetControl__forceGlobalUnlock_isSynchronous_completion___block_invoke_3;
    v24[3] = &unk_1E74C97C8;
    v24[4] = *(a1 + 40);
    v25 = v3;
    v27 = *(a1 + 56);
    v26 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v24);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAssetControl frameworkInstanceUUID];
    v22 = [v10 UUIDString];

    v23 = [MAAutoAssetControl assetSelectorOrAllSelector:*(a1 + 32)];
    v11 = [MAAutoAssetInfoInstance alloc];
    v12 = [*(a1 + 40) controlClientName];
    v13 = [*(a1 + 40) controlClientProcessName];
    v14 = [*(a1 + 40) controlClientProcessID];
    v15 = +[MAAutoAssetControl frameworkInstanceUUID];
    v16 = [(MAAutoAssetInfoInstance *)v11 initForClientName:v12 withProcessName:v13 withProcessID:v14 usingAssetSelector:v23 associatingFrameworkUUID:v15];

    [v9 setSafeObject:v16 forKey:@"instance"];
    v17 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:FORCE_GLOBAL_UNLOCK" clientID:v22 version:0 message:v9];
    v18 = [*(a1 + 40) connectionClient];
    v19 = +[MAAutoAssetControl _privateStateQueue];
    v20 = *(a1 + 56);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__MAAutoAssetControl__forceGlobalUnlock_isSynchronous_completion___block_invoke_2;
    v28[3] = &unk_1E74C97A0;
    v21 = *(a1 + 48);
    v28[4] = *(a1 + 40);
    v30 = v20;
    v29 = v21;
    [v18 connectClientSendServerMessage:v17 proxyObject:0 replyQueue:v19 isSynchronous:v20 withReply:v28];
  }
}

void __66__MAAutoAssetControl__forceGlobalUnlock_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedControl:@"forceGlobalUnlock" withErrorCode:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successControl:@"forceGlobalUnlock" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)forceGlobalForget:(id)forget
{
  forgetCopy = forget;
  v4 = +[MAAutoAssetControl autoAssetControl];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MAAutoAssetControl_forceGlobalForget___block_invoke;
  v7[3] = &unk_1E74CAA18;
  v7[4] = &v8;
  [v4 _forceGlobalForget:forgetCopy isSynchronous:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__MAAutoAssetControl_forceGlobalForget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_forceGlobalForget:(id)forget isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  forgetCopy = forget;
  completionCopy = completion;
  v10 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__MAAutoAssetControl__forceGlobalForget_isSynchronous_completion___block_invoke;
    v14[3] = &unk_1E74C9840;
    v15 = forgetCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v17 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v14];

    v11 = v15;
  }

  else
  {
    v11 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"forceGlobalForget"];
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "MA-auto-control{forceGlobalForget} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __66__MAAutoAssetControl__forceGlobalForget_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__MAAutoAssetControl__forceGlobalForget_isSynchronous_completion___block_invoke_3;
    v24[3] = &unk_1E74C97C8;
    v24[4] = *(a1 + 40);
    v25 = v3;
    v27 = *(a1 + 56);
    v26 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v24);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAssetControl frameworkInstanceUUID];
    v22 = [v10 UUIDString];

    v23 = [MAAutoAssetControl assetSelectorOrAllSelector:*(a1 + 32)];
    v11 = [MAAutoAssetInfoInstance alloc];
    v12 = [*(a1 + 40) controlClientName];
    v13 = [*(a1 + 40) controlClientProcessName];
    v14 = [*(a1 + 40) controlClientProcessID];
    v15 = +[MAAutoAssetControl frameworkInstanceUUID];
    v16 = [(MAAutoAssetInfoInstance *)v11 initForClientName:v12 withProcessName:v13 withProcessID:v14 usingAssetSelector:v23 associatingFrameworkUUID:v15];

    [v9 setSafeObject:v16 forKey:@"instance"];
    v17 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:FORCE_GLOBAL_FORGET" clientID:v22 version:0 message:v9];
    v18 = [*(a1 + 40) connectionClient];
    v19 = +[MAAutoAssetControl _privateStateQueue];
    v20 = *(a1 + 56);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__MAAutoAssetControl__forceGlobalForget_isSynchronous_completion___block_invoke_2;
    v28[3] = &unk_1E74C97A0;
    v21 = *(a1 + 48);
    v28[4] = *(a1 + 40);
    v30 = v20;
    v29 = v21;
    [v18 connectClientSendServerMessage:v17 proxyObject:0 replyQueue:v19 isSynchronous:v20 withReply:v28];
  }
}

void __66__MAAutoAssetControl__forceGlobalForget_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedControl:@"forceGlobalForget" withErrorCode:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successControl:@"forceGlobalForget" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __53__MAAutoAssetControl_forceGlobalPurge_forcingUnlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_forceGlobalPurge:(id)purge forcingUnlock:(BOOL)unlock isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  purgeCopy = purge;
  completionCopy = completion;
  v12 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v12);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__MAAutoAssetControl__forceGlobalPurge_forcingUnlock_isSynchronous_completion___block_invoke;
    v16[3] = &unk_1E74CB030;
    unlockCopy = unlock;
    v17 = purgeCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v19 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v16];

    v13 = v17;
  }

  else
  {
    v13 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"forceGlobalPurge"];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{forceGlobalPurge} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __79__MAAutoAssetControl__forceGlobalPurge_forcingUnlock_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__MAAutoAssetControl__forceGlobalPurge_forcingUnlock_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 57);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 57);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initForcingUnlock:*(a1 + 56)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:*(a1 + 32)];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:FORCE_GLOBAL_PURGE" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 57);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __79__MAAutoAssetControl__forceGlobalPurge_forcingUnlock_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __79__MAAutoAssetControl__forceGlobalPurge_forcingUnlock_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedControl:@"forceGlobalPurge" withErrorCode:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successControl:@"forceGlobalPurge" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)forceGlobalAbandon:(id)abandon
{
  abandonCopy = abandon;
  v4 = +[MAAutoAssetControl autoAssetControl];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MAAutoAssetControl_forceGlobalAbandon___block_invoke;
  v7[3] = &unk_1E74CAA18;
  v7[4] = &v8;
  [v4 _forceGlobalAbandon:abandonCopy isSynchronous:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__MAAutoAssetControl_forceGlobalAbandon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_forceGlobalAbandon:(id)abandon isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  abandonCopy = abandon;
  completionCopy = completion;
  v10 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (completionCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__MAAutoAssetControl__forceGlobalAbandon_isSynchronous_completion___block_invoke;
    v14[3] = &unk_1E74C9840;
    v14[4] = self;
    v15 = abandonCopy;
    synchronousCopy = synchronous;
    v16 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v14];
  }

  else
  {
    v11 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"forceGlobalAbandon"];
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "MA-auto-control{forceGlobalAbandon} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __67__MAAutoAssetControl__forceGlobalAbandon_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__MAAutoAssetControl__forceGlobalAbandon_isSynchronous_completion___block_invoke_3;
    v23[3] = &unk_1E74C97C8;
    v23[4] = *(a1 + 32);
    v24 = v3;
    v26 = *(a1 + 56);
    v25 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v23);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetInfoInstance alloc];
    v10 = [*(a1 + 32) controlClientName];
    v11 = [*(a1 + 32) controlClientProcessName];
    v12 = [*(a1 + 32) controlClientProcessID];
    v13 = *(a1 + 40);
    v14 = +[MAAutoAssetControl frameworkInstanceUUID];
    v15 = [(MAAutoAssetInfoInstance *)v9 initForClientName:v10 withProcessName:v11 withProcessID:v12 usingAssetSelector:v13 associatingFrameworkUUID:v14];

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = +[MAAutoAssetControl frameworkInstanceUUID];
    v18 = [v17 UUIDString];

    [v16 setSafeObject:v15 forKey:@"instance"];
    v19 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:FORCE_GLOBAL_ABANDON" clientID:v18 version:0 message:v16];
    v20 = [*(a1 + 32) connectionClient];
    v21 = +[MAAutoAssetControl _privateStateQueue];
    v22 = *(a1 + 56);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__MAAutoAssetControl__forceGlobalAbandon_isSynchronous_completion___block_invoke_2;
    v27[3] = &unk_1E74C97A0;
    v27[4] = *(a1 + 32);
    v29 = v22;
    v28 = *(a1 + 48);
    [v20 connectClientSendServerMessage:v19 proxyObject:0 replyQueue:v21 isSynchronous:v22 withReply:v27];
  }
}

void __67__MAAutoAssetControl__forceGlobalAbandon_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedControl:@"forceGlobalAbandon" withErrorCode:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successControl:@"forceGlobalAbandon" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void __85__MAAutoAssetControl_simulateCacheDeleteDetermineReclaimableSpace_withUrgency_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (BOOL)_simulateCacheDeleteDetermineReclaimableSpace:(id)space withUrgency:(int)urgency error:(id *)error isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  completionCopy = completion;
  v14 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v14);

  if (completionCopy)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __111__MAAutoAssetControl__simulateCacheDeleteDetermineReclaimableSpace_withUrgency_error_isSynchronous_completion___block_invoke;
    v22[3] = &unk_1E74CB0A8;
    urgencyCopy = urgency;
    v23 = spaceCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v25 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v22];

    v15 = v23;
  }

  else
  {
    v16 = [MAAutoAssetError buildError:6102 fromOperation:@"simulateCacheDeleteDetermineReclaimableSpace" underlyingError:0 withDescription:@"no client completion block"];
    v15 = v16;
    if (error && v16)
    {
      v17 = v16;
      *error = v15;
    }

    v18 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"simulateCacheDeleteDetermineReclaimableSpace"];
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "MA-auto-control{simulateCacheDeleteDetermineReclaimableSpace} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return completionCopy != 0;
}

void __111__MAAutoAssetControl__simulateCacheDeleteDetermineReclaimableSpace_withUrgency_error_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __111__MAAutoAssetControl__simulateCacheDeleteDetermineReclaimableSpace_withUrgency_error_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 60);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 60);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initWithVolumeToReclaim:*(a1 + 32) withUrgency:*(a1 + 56) targetingPurgeAmount:0];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:SIM_CACHE_DELETE_DETERMINE_RECLAIMABLE" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 60);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __111__MAAutoAssetControl__simulateCacheDeleteDetermineReclaimableSpace_withUrgency_error_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __111__MAAutoAssetControl__simulateCacheDeleteDetermineReclaimableSpace_withUrgency_error_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v12 || v5)
  {
    if (v5)
    {
      v9 = @"failure reported by server";
      v10 = 0;
      v11 = v5;
    }

    else
    {
      v9 = @"no response message from server";
      v10 = 6104;
      v11 = 0;
    }

    [*(a1 + 32) _failedSimulateCacheDeleteOperation:@"simulateCacheDeleteDetermineReclaimableSpace" withErrorCode:v10 withResponseError:v11 description:v9 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v12 message];
    v8 = [v7 safeObjectForKey:@"control" ofClass:objc_opt_class()];

    if (v8)
    {
      [*(a1 + 32) _successSimulateCacheDeleteOperation:@"simulateCacheDeleteDetermineReclaimableSpace" withReclaimableSpace:objc_msgSend(v8 isSynchronous:"targetingPurgeAmount") completion:{*(a1 + 48), *(a1 + 40)}];
    }

    else
    {
      [*(a1 + 32) _failedSimulateCacheDeleteOperation:@"simulateCacheDeleteDetermineReclaimableSpace" withErrorCode:6111 withResponseError:0 description:@"no control results information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

void __93__MAAutoAssetControl_simulateCacheDeleteReclaimSpace_withUrgency_targetingPurgeAmount_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (BOOL)_simulateCacheDeleteReclaimSpace:(id)space withUrgency:(int)urgency targetingPurgeAmount:(int64_t)amount isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  completionCopy = completion;
  v14 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v14);

  if (completionCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __113__MAAutoAssetControl__simulateCacheDeleteReclaimSpace_withUrgency_targetingPurgeAmount_isSynchronous_completion___block_invoke;
    v19[3] = &unk_1E74CB0D0;
    urgencyCopy = urgency;
    amountCopy = amount;
    v20 = spaceCopy;
    selfCopy = self;
    synchronousCopy = synchronous;
    v22 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v19];

    v15 = v20;
  }

  else
  {
    v15 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"simulateCacheDeleteDetermineReclaimableSpace"];
      *buf = 138543362;
      v27 = v16;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto-control{simulateCacheDeleteReclaimSpace} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return completionCopy != 0;
}

void __113__MAAutoAssetControl__simulateCacheDeleteReclaimSpace_withUrgency_targetingPurgeAmount_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __113__MAAutoAssetControl__simulateCacheDeleteReclaimSpace_withUrgency_targetingPurgeAmount_isSynchronous_completion___block_invoke_3;
    v25[3] = &unk_1E74C97C8;
    v25[4] = *(a1 + 40);
    v26 = v3;
    v28 = *(a1 + 68);
    v27 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v25);
    v6 = *(a1 + 68);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [[MAAutoAssetInfoControl alloc] initWithVolumeToReclaim:*(a1 + 32) withUrgency:*(a1 + 64) targetingPurgeAmount:*(a1 + 56)];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = +[MAAutoAssetControl frameworkInstanceUUID];
    v23 = [v11 UUIDString];

    v24 = [MAAutoAssetControl assetSelectorOrAllSelector:0];
    v12 = [MAAutoAssetInfoInstance alloc];
    v13 = [*(a1 + 40) controlClientName];
    v14 = [*(a1 + 40) controlClientProcessName];
    v15 = [*(a1 + 40) controlClientProcessID];
    v16 = +[MAAutoAssetControl frameworkInstanceUUID];
    v17 = [(MAAutoAssetInfoInstance *)v12 initForClientName:v13 withProcessName:v14 withProcessID:v15 usingAssetSelector:v24 associatingFrameworkUUID:v16];

    [v10 setSafeObject:v17 forKey:@"instance"];
    [v10 setSafeObject:v9 forKey:@"control"];
    v18 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:SIM_CACHE_DELETE_RECLAIM_SPACE" clientID:v23 version:0 message:v10];
    v19 = [*(a1 + 40) connectionClient];
    v20 = +[MAAutoAssetControl _privateStateQueue];
    v21 = *(a1 + 68);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __113__MAAutoAssetControl__simulateCacheDeleteReclaimSpace_withUrgency_targetingPurgeAmount_isSynchronous_completion___block_invoke_2;
    v29[3] = &unk_1E74C97A0;
    v22 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v21;
    v30 = v22;
    [v19 connectClientSendServerMessage:v18 proxyObject:0 replyQueue:v20 isSynchronous:v21 withReply:v29];
  }
}

void __113__MAAutoAssetControl__simulateCacheDeleteReclaimSpace_withUrgency_targetingPurgeAmount_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v6);

  if (!v12 || v5)
  {
    if (v5)
    {
      v9 = @"failure reported by server";
      v10 = 0;
      v11 = v5;
    }

    else
    {
      v9 = @"no response message from server";
      v10 = 6104;
      v11 = 0;
    }

    [*(a1 + 32) _failedSimulateCacheDeleteOperation:@"simulateCacheDeleteReclaimSpace" withErrorCode:v10 withResponseError:v11 description:v9 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v12 message];
    v8 = [v7 safeObjectForKey:@"control" ofClass:objc_opt_class()];

    if (v8)
    {
      [*(a1 + 32) _successSimulateCacheDeleteOperation:@"simulateCacheDeleteReclaimSpace" withReclaimableSpace:objc_msgSend(v8 isSynchronous:"targetingPurgeAmount") completion:{*(a1 + 48), *(a1 + 40)}];
    }

    else
    {
      [*(a1 + 32) _failedSimulateCacheDeleteOperation:@"simulateCacheDeleteReclaimSpace" withErrorCode:6111 withResponseError:0 description:@"no control results information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)simulateSetJobOperation:(int64_t)operation withEndEvent:(int64_t)event forSelector:(id)selector
{
  selectorCopy = selector;
  v8 = +[MAAutoAssetControl autoAssetControl];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__MAAutoAssetControl_simulateSetJobOperation_withEndEvent_forSelector___block_invoke;
  v11[3] = &unk_1E74CAA18;
  v11[4] = &v12;
  [v8 _simulateSetJobOperation:operation withEndEvent:event forSelector:selectorCopy isSynchronous:1 completion:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __71__MAAutoAssetControl_simulateSetJobOperation_withEndEvent_forSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_simulateSetJobOperation:(int64_t)operation withEndEvent:(int64_t)event forSelector:(id)selector isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  completionCopy = completion;
  v14 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v14);

  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__MAAutoAssetControl__simulateSetJobOperation_withEndEvent_forSelector_isSynchronous_completion___block_invoke;
    v18[3] = &unk_1E74CB0F8;
    v18[4] = self;
    v19 = selectorCopy;
    operationCopy = operation;
    eventCopy = event;
    synchronousCopy = synchronous;
    v20 = completionCopy;
    [(MAAutoAssetControl *)self connectToServerFrameworkCompletion:v18];
  }

  else
  {
    v15 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"simulateSetJobOperation"];
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, "MA-auto-control{simulateSetJobOperation} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __97__MAAutoAssetControl__simulateSetJobOperation_withEndEvent_forSelector_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __97__MAAutoAssetControl__simulateSetJobOperation_withEndEvent_forSelector_isSynchronous_completion___block_invoke_3;
    v24[3] = &unk_1E74C97C8;
    v24[4] = *(a1 + 32);
    v25 = v3;
    v27 = *(a1 + 72);
    v26 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v24);
    v6 = *(a1 + 72);
    v7 = +[MAAutoAssetControl _privateStateQueue];
    v8 = v7;
    if (v6 == 1)
    {
      dispatch_sync(v7, v5);
    }

    else
    {
      dispatch_async(v7, v5);
    }
  }

  else
  {
    v9 = [MAAutoAssetInfoInstance alloc];
    v10 = [*(a1 + 32) controlClientName];
    v11 = [*(a1 + 32) controlClientProcessName];
    v12 = [*(a1 + 32) controlClientProcessID];
    v13 = *(a1 + 40);
    v14 = +[MAAutoAssetControl frameworkInstanceUUID];
    v15 = [(MAAutoAssetInfoInstance *)v9 initForClientName:v10 withProcessName:v11 withProcessID:v12 usingAssetSelector:v13 associatingFrameworkUUID:v14];

    v16 = [[MAAutoAssetInfoControl alloc] initForSimulateOperation:*(a1 + 56) withSimulateEnd:*(a1 + 64)];
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = +[MAAutoAssetControl frameworkInstanceUUID];
    v19 = [v18 UUIDString];

    [v17 setSafeObject:v15 forKey:@"instance"];
    [v17 setSafeObject:v16 forKey:@"control"];
    v20 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-CONTROL:SIM_SET_JOB_OPERATION" clientID:v19 version:0 message:v17];
    v21 = [*(a1 + 32) connectionClient];
    v22 = +[MAAutoAssetControl _privateStateQueue];
    v23 = *(a1 + 72);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __97__MAAutoAssetControl__simulateSetJobOperation_withEndEvent_forSelector_isSynchronous_completion___block_invoke_2;
    v28[3] = &unk_1E74C97A0;
    v28[4] = *(a1 + 32);
    v30 = v23;
    v29 = *(a1 + 48);
    [v21 connectClientSendServerMessage:v20 proxyObject:0 replyQueue:v22 isSynchronous:v23 withReply:v28];
  }
}

void __97__MAAutoAssetControl__simulateSetJobOperation_withEndEvent_forSelector_isSynchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (!a2 || v9)
  {
    if (v9)
    {
      v7 = @"failure reported by server";
      v8 = 0;
    }

    else
    {
      v7 = @"no response message from server";
      v8 = 6104;
    }

    [v6 _failedControl:@"simulateSetJobOperation" withErrorCode:v8 withResponseError:v9 description:v7 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    [v6 _successControl:@"simulateSetJobOperation" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }
}

+ (id)defaultDispatchQueue
{
  if (defaultDispatchQueue_defaultQueueOnce_2 != -1)
  {
    +[MAAutoAssetControl defaultDispatchQueue];
  }

  v3 = defaultDispatchQueue_defaultQueue_2;

  return v3;
}

void __42__MAAutoAssetControl_defaultDispatchQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoassetcontrol.client" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = defaultDispatchQueue_defaultQueue_2;
  defaultDispatchQueue_defaultQueue_2 = v1;
}

+ (id)autoAssetControl
{
  if (autoAssetControl_dispatchOnceAutoAssetControl != -1)
  {
    +[MAAutoAssetControl autoAssetControl];
  }

  v3 = autoAssetControl___autoAssetControl;

  return v3;
}

uint64_t __38__MAAutoAssetControl_autoAssetControl__block_invoke()
{
  autoAssetControl___autoAssetControl = objc_alloc_init(MAAutoAssetControl);

  return MEMORY[0x1EEE66BB8]();
}

- (void)connectToServerFrameworkCompletion:(id)completion
{
  completionCopy = completion;
  connectionClient = [(MAAutoAssetControl *)self connectionClient];

  if (!connectionClient)
  {
    v5 = +[MAAutoAssetControl frameworkInstanceUUID];
    uUIDString = [v5 UUIDString];

    v36 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v32 = objc_opt_class();
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    selfCopy = self;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v36 setWithObjects:{v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:CONTROL_STATISTICS"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:KNOWN_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:AVAILABLE_FOR_STAGING_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:STAGER_OVERVIEW"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:LOCKED_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:STAGED_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:ACTIVE_JOB_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:SCHEDULED_JOB_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:FORCE_GLOBAL_UNLOCK"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:FORCE_GLOBAL_FORGET"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:FORCE_GLOBAL_PURGE"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:FORCE_GLOBAL_ABANDON"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:SIM_CACHE_DELETE_DETERMINE_RECLAIMABLE"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:SIM_CACHE_DELETE_RECLAIM_SPACE"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL:SIM_SET_JOB_OPERATION"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:ALTER_ENTRIES_REPRESENTING_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:NEED_FOR_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:CHECK_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:LOCK_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:MAP_LOCKED_ATOMIC_ENTRY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:FORM_SUB_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:CONTINUE_ATOMIC_LOCK"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:END_ATOMIC_LOCK"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:END_ATOMIC_LOCKS_FOR_CLIENT"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:ASSET_SET_FOR_STAGING"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:CURRENT_SET_STATUS"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET:ELIMINATE_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):CONTROL_STATISTICS"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):KNOWN_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):AVAILABLE_FOR_STAGING_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):LOCKED_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):STAGED_ASSET_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):ACTIVE_JOB_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):SCHEDULED_JOB_SUMMARY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):STAGER_OVERVIEW"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):FORCE_GLOBAL_UNLOCK"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):FORCE_GLOBAL_FORGET"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):FORCE_GLOBAL_PURGE"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):FORCE_GLOBAL_ABANDON"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):SIM_CACHE_DELETE_DETERMINE_RECLAIMABLE"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):SIM_CACHE_DELETE_RECLAIM_SPACE"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-CONTROL(REPLY):SIM_SET_JOB_OPERATION"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):ALTER_ENTRIES_REPRESENTING_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):NEED_FOR_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):CHECK_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):LOCK_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):MAP_LOCKED_ATOMIC_ENTRY"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):FORM_SUB_ATOMIC"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):CONTINUE_ATOMIC_LOCK"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):END_ATOMIC_LOCK"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):END_ATOMIC_LOCKS_FOR_CLIENT"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):ASSET_SET_FOR_STAGING"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):CURRENT_SET_STATUS"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v16 forKey:@"MA-AUTO-SET(REPLY):ELIMINATE_ATOMIC"];
    v17 = [objc_alloc(MEMORY[0x1E69D3868]) initForServiceName:@"com.apple.mobileasset.autoasset" delegate:selfCopy clientID:uUIDString];
    v18 = [objc_alloc(MEMORY[0x1E69D3860]) initWithClientPolicy:v17];
    [(MAAutoAssetControl *)selfCopy setConnectionClient:v18];
  }

  completionCopy[2](completionCopy, 0);
}

+ (id)assetSelectorOrAllSelector:(id)selector
{
  selectorCopy = selector;
  v4 = selectorCopy;
  if (!selectorCopy)
  {
    v4 = [[MAAutoAssetSelector alloc] initForAssetType:@"MAAutoAssetControl-all-asset-types" withAssetSpecifier:@"MAAutoAssetControl-all-asset-specifiers"];
  }

  return v4;
}

- (void)_successControlStatistics:(id)statistics withControlStatistics:(id)controlStatistics isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  controlStatisticsCopy = controlStatistics;
  completionCopy = completion;
  v11 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"Auto");
  v13 = v12;
  if (completionCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = statisticsCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-control{_successControlStatistics} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    completionCopy[2](completionCopy, controlStatisticsCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = statisticsCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{_successControlStatistics} | %{public}@ | no client completion block", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlStatistics:(id)statistics withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v16 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (completionCopy)
  {
    v17 = errorCopy;
    v18 = v17;
    if (code && !v17)
    {
      v18 = [MAAutoAssetError buildError:code fromOperation:statisticsCopy underlyingError:0 withDescription:descriptionCopy];
    }

    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      checkedSummary = [v18 checkedSummary];
      *buf = 138543618;
      v27 = descriptionCopy;
      v28 = 2114;
      v29 = checkedSummary;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlStatistics} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:code fromOperation:statisticsCopy];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v18 = v23;

    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = statisticsCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlStatistics} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControl:(id)control isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  completionCopy = completion;
  v8 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"Auto");
  v10 = v9;
  if (completionCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = controlCopy;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "MA-auto-control{_successControl} | %{public}@ | SUCCESS", &v12, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = controlCopy;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto-control{_successControl} | %{public}@ | no client completion block", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_failedControl:(id)control withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v16 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (completionCopy)
  {
    v17 = errorCopy;
    v18 = v17;
    if (code && !v17)
    {
      v18 = [MAAutoAssetError buildError:code fromOperation:controlCopy underlyingError:0 withDescription:descriptionCopy];
    }

    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      checkedSummary = [v18 checkedSummary];
      *buf = 138543618;
      v27 = descriptionCopy;
      v28 = 2114;
      v29 = checkedSummary;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControl} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:code fromOperation:controlCopy];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v18 = v23;

    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = controlCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControl} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControlSummary:(id)summary withJobSummaryEntries:(id)entries isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  entriesCopy = entries;
  completionCopy = completion;
  v11 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"Auto");
  v13 = v12;
  if (completionCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = summaryCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-control{_successControlSummary} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    completionCopy[2](completionCopy, entriesCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = summaryCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{_successControlSummary} | %{public}@ | no client completion block", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlSummary:(id)summary withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v16 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (completionCopy)
  {
    v17 = errorCopy;
    v18 = v17;
    if (code && !v17)
    {
      v18 = [MAAutoAssetError buildError:code fromOperation:summaryCopy underlyingError:0 withDescription:descriptionCopy];
    }

    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      checkedSummary = [v18 checkedSummary];
      *buf = 138543618;
      v27 = descriptionCopy;
      v28 = 2114;
      v29 = checkedSummary;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlSummary} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:code fromOperation:summaryCopy];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v18 = v23;

    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = summaryCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlSummary} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControlLockSummary:(id)summary withLockSummaryEntries:(id)entries isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  entriesCopy = entries;
  completionCopy = completion;
  v11 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"Auto");
  v13 = v12;
  if (completionCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = summaryCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-control{_successControlLockSummary} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    completionCopy[2](completionCopy, entriesCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = summaryCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{_successControlLockSummary} | %{public}@ | no client completion block", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlLockSummary:(id)summary withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v16 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (completionCopy)
  {
    v17 = errorCopy;
    v18 = v17;
    if (code && !v17)
    {
      v18 = [MAAutoAssetError buildError:code fromOperation:summaryCopy underlyingError:0 withDescription:descriptionCopy];
    }

    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      checkedSummary = [v18 checkedSummary];
      *buf = 138543618;
      v27 = descriptionCopy;
      v28 = 2114;
      v29 = checkedSummary;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlLockSummary} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:code fromOperation:summaryCopy];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v18 = v23;

    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = summaryCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlLockSummary} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControlStagerOverview:(id)overview withStagerInformation:(id)information isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  overviewCopy = overview;
  informationCopy = information;
  completionCopy = completion;
  v11 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"Auto");
  v13 = v12;
  if (completionCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      summary = [informationCopy summary];
      v16 = 138543618;
      v17 = overviewCopy;
      v18 = 2114;
      v19 = summary;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-control{_successControlStagerOverview} | %{public}@ | stagerInformation:%{public}@ | SUCCESS", &v16, 0x16u);
    }

    completionCopy[2](completionCopy, informationCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = overviewCopy;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-control{_successControlStagerOverview} | %{public}@ | no client completion block", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlStagerOverview:(id)overview withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  overviewCopy = overview;
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v16 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (completionCopy)
  {
    v17 = errorCopy;
    v18 = v17;
    if (code && !v17)
    {
      v18 = [MAAutoAssetError buildError:code fromOperation:overviewCopy underlyingError:0 withDescription:descriptionCopy];
    }

    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      checkedSummary = [v18 checkedSummary];
      *buf = 138543618;
      v27 = descriptionCopy;
      v28 = 2114;
      v29 = checkedSummary;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlStagerOverview} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:code fromOperation:overviewCopy];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v18 = v23;

    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = overviewCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedControlStagerOverview} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successSimulateCacheDeleteOperation:(id)operation withReclaimableSpace:(int64_t)space isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  completionCopy = completion;
  v10 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = _MAClientLog(@"Auto");
  v12 = v11;
  if (completionCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = operationCopy;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "MA-auto-control{_successSimulateCacheDeleteOperation} | %{public}@ | SUCCESS", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, space, 0);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = operationCopy;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_ERROR, "MA-auto-control{_successSimulateCacheDeleteOperation} | %{public}@ | no client completion block", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_failedSimulateCacheDeleteOperation:(id)operation withErrorCode:(int64_t)code withResponseError:(id)error description:(id)description isSynchronous:(BOOL)synchronous completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  errorCopy = error;
  descriptionCopy = description;
  completionCopy = completion;
  v16 = +[MAAutoAssetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (completionCopy)
  {
    v17 = errorCopy;
    v18 = v17;
    if (code && !v17)
    {
      v18 = [MAAutoAssetError buildError:code fromOperation:operationCopy underlyingError:0 withDescription:descriptionCopy];
    }

    v19 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      checkedSummary = [v18 checkedSummary];
      *buf = 138543618;
      v27 = descriptionCopy;
      v28 = 2114;
      v29 = checkedSummary;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedSimulateCacheDeleteOperation} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (errorCopy)
    {
      checkedSummary2 = [errorCopy checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", descriptionCopy, checkedSummary2];
    }

    else
    {
      checkedSummary2 = [MAAutoAssetError summaryForCode:code fromOperation:operationCopy];
      v23 = [v21 initWithFormat:@"%@ | result:%@", descriptionCopy, checkedSummary2];
    }

    v18 = v23;

    v24 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = operationCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-control{_failedSimulateCacheDeleteOperation} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

+ (void)frameworkInstanceSetLogDomain
{
  if (frameworkInstanceSetLogDomain_frameworkLogDomainOnce_1 != -1)
  {
    +[MAAutoAssetControl frameworkInstanceSetLogDomain];
  }
}

void __51__MAAutoAssetControl_frameworkInstanceSetLogDomain__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%s", @"com.apple.MAAutoControlClient", getprogname()];
  v0 = [MEMORY[0x1E69D3880] sharedCore];
  [v0 useDomain:v1];
}

+ (id)_privateStateQueue
{
  if (_privateStateQueue_frameworkQueueOnce_1 != -1)
  {
    +[MAAutoAssetControl _privateStateQueue];
  }

  v3 = _privateStateQueue_frameworkQueue_1;

  return v3;
}

void __40__MAAutoAssetControl__privateStateQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoassetcontrol.framework" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = _privateStateQueue_frameworkQueue_1;
  _privateStateQueue_frameworkQueue_1 = v1;
}

+ (id)frameworkInstanceUUID
{
  if (frameworkInstanceUUID_frameworkUUIDOnce_1 != -1)
  {
    +[MAAutoAssetControl frameworkInstanceUUID];
  }

  v3 = frameworkInstanceUUID_frameworkUUID_1;

  return v3;
}

uint64_t __43__MAAutoAssetControl_frameworkInstanceUUID__block_invoke()
{
  frameworkInstanceUUID_frameworkUUID_1 = objc_alloc_init(MEMORY[0x1E696AFB0]);

  return MEMORY[0x1EEE66BB8]();
}

@end