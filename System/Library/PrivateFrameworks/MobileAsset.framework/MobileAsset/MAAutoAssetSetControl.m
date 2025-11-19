@interface MAAutoAssetSetControl
+ (id)_privateStateQueue;
+ (id)assetSetDescriptorInfo:(id)a3 error:(id *)a4;
+ (id)assetSetsOverview:(id)a3 limitedToSetIdentifiers:(id)a4 error:(id *)a5;
+ (id)autoAssetSetControl;
+ (id)defaultDispatchQueue;
+ (id)frameworkInstanceUUID;
+ (void)frameworkInstanceSetLogDomain;
- (MAAutoAssetSetControl)init;
- (void)_autoAssetInstanceInfo:(id)a3 isSynchronous:(BOOL)a4 completion:(id)a5;
- (void)_autoAssetsOverview:(id)a3 limitedToSetIdentifiers:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_failedControl:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_failedControlInstanceInfo:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_failedControlLockSummary:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_failedControlOverview:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_failedControlSummary:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8;
- (void)_successControl:(id)a3 isSynchronous:(BOOL)a4 completion:(id)a5;
- (void)_successControlInstanceInfo:(id)a3 withInstanceInfo:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_successControlLockSummary:(id)a3 withLockSummaryEntries:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)_successControlOverview:(id)a3 withOverviewEntries:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6;
- (void)connectToServerFrameworkCompletion:(id)a3;
@end

@implementation MAAutoAssetSetControl

- (MAAutoAssetSetControl)init
{
  v8.receiver = self;
  v8.super_class = MAAutoAssetSetControl;
  v2 = [(MAAutoAssetSetControl *)&v8 init];
  if (v2)
  {
    +[MAAutoAssetSetControl frameworkInstanceSetLogDomain];
    controlClientDomainName = v2->_controlClientDomainName;
    v2->_controlClientDomainName = @"com.apple.MobileAsset.AutoSetControl";

    controlClientName = v2->_controlClientName;
    v2->_controlClientName = @"auto-set-control-client";

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", getprogname()];
    controlClientProcessName = v2->_controlClientProcessName;
    v2->_controlClientProcessName = v5;

    v2->_controlClientProcessID = getpid();
  }

  return v2;
}

+ (id)assetSetsOverview:(id)a3 limitedToSetIdentifiers:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[MAAutoAssetSetControl autoAssetSetControl];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MAAutoAssetSetControl_assetSetsOverview_limitedToSetIdentifiers_error___block_invoke;
  v12[3] = &unk_1E74C9778;
  v12[4] = &v19;
  v12[5] = &v13;
  [v9 _autoAssetsOverview:v7 limitedToSetIdentifiers:v8 isSynchronous:1 completion:v12];
  if (a5)
  {
    *a5 = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __73__MAAutoAssetSetControl_assetSetsOverview_limitedToSetIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_autoAssetsOverview:(id)a3 limitedToSetIdentifiers:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v13);

  if (v12)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__MAAutoAssetSetControl__autoAssetsOverview_limitedToSetIdentifiers_isSynchronous_completion___block_invoke;
    v17[3] = &unk_1E74C97F0;
    v18 = v10;
    v19 = v11;
    v20 = self;
    v22 = a5;
    v21 = v12;
    [(MAAutoAssetSetControl *)self connectToServerFrameworkCompletion:v17];

    v14 = v18;
  }

  else
  {
    v14 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"assetSetsOverview"];
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_ERROR, "MA-auto-set-control{assetSetsOverview} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __94__MAAutoAssetSetControl__autoAssetsOverview_limitedToSetIdentifiers_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __94__MAAutoAssetSetControl__autoAssetsOverview_limitedToSetIdentifiers_isSynchronous_completion___block_invoke_3;
    v26[3] = &unk_1E74C97C8;
    v26[4] = *(a1 + 48);
    v27 = v3;
    v29 = *(a1 + 64);
    v28 = *(a1 + 56);
    v5 = MEMORY[0x19A8EC5D0](v26);
    v6 = *(a1 + 64);
    v7 = +[MAAutoAssetSetControl _privateStateQueue];
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
    v25 = [[MAAutoAssetSetInfoControl alloc] initClearingAfter:0 limitedToClientDomains:*(a1 + 32) limitedToSetIdentifiers:*(a1 + 40)];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = +[MAAutoAssetSetControl frameworkInstanceUUID];
    v24 = [v10 UUIDString];

    v11 = [MAAutoAssetSetInfoInstance alloc];
    v12 = [*(a1 + 48) controlClientDomainName];
    v13 = [*(a1 + 48) controlClientName];
    v14 = [*(a1 + 48) controlClientProcessName];
    v15 = [*(a1 + 48) controlClientProcessID];
    if (*(a1 + 40))
    {
      v16 = @"LIMITED_INSTANCES";
    }

    else
    {
      v16 = @"ALL_INSTANCES";
    }

    v17 = +[MAAutoAssetSetControl frameworkInstanceUUID];
    v18 = [(MAAutoAssetSetInfoInstance *)v11 initUsingClientDomain:v12 forClientName:v13 withProcessName:v14 withProcessID:v15 forAssetSetIdentifier:v16 forAtomicInstance:0 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v17];

    [v9 setSafeObject:v18 forKey:@"setInstance"];
    [v9 setSafeObject:v25 forKey:@"setControl"];
    v19 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET-CONTROL:ASSET_SETS_OVERVIEW" clientID:v24 version:0 message:v9];
    v20 = [*(a1 + 48) connectionClient];
    v21 = +[MAAutoAssetSetControl _privateStateQueue];
    v22 = *(a1 + 64);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __94__MAAutoAssetSetControl__autoAssetsOverview_limitedToSetIdentifiers_isSynchronous_completion___block_invoke_2;
    v30[3] = &unk_1E74C97A0;
    v23 = *(a1 + 56);
    v30[4] = *(a1 + 48);
    v32 = v22;
    v31 = v23;
    [v20 connectClientSendServerMessage:v19 proxyObject:0 replyQueue:v21 isSynchronous:v22 withReply:v30];
  }
}

void __94__MAAutoAssetSetControl__autoAssetsOverview_limitedToSetIdentifiers_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetSetControl _privateStateQueue];
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

    [*(a1 + 32) _failedControlOverview:@"assetSetsOverview" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"setOverview" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlOverview:@"assetSetsOverview" withOverviewEntries:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlSummary:@"assetSetsOverview" withErrorCode:6110 withResponseError:0 description:@"no asset-sets-overview provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)assetSetDescriptorInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[MAAutoAssetSetControl autoAssetSetControl];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MAAutoAssetSetControl_assetSetDescriptorInfo_error___block_invoke;
  v9[3] = &unk_1E74C9818;
  v9[4] = &v16;
  v9[5] = &v10;
  [v6 _autoAssetInstanceInfo:v5 isSynchronous:1 completion:v9];
  if (a4)
  {
    *a4 = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __54__MAAutoAssetSetControl_assetSetDescriptorInfo_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v12 = v5;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)_autoAssetInstanceInfo:(id)a3 isSynchronous:(BOOL)a4 completion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_not_V2(v10);

  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__MAAutoAssetSetControl__autoAssetInstanceInfo_isSynchronous_completion___block_invoke;
    v14[3] = &unk_1E74C9840;
    v14[4] = self;
    v15 = v8;
    v17 = a4;
    v16 = v9;
    [(MAAutoAssetSetControl *)self connectToServerFrameworkCompletion:v14];
  }

  else
  {
    v11 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MAAutoAssetError summaryForCode:6102 fromOperation:@"autoAssetInstanceInfo"];
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "MA-auto-set-control{autoAssetInstanceInfo} | no client completion block | %{public}@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __73__MAAutoAssetSetControl__autoAssetInstanceInfo_isSynchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73__MAAutoAssetSetControl__autoAssetInstanceInfo_isSynchronous_completion___block_invoke_3;
    v24[3] = &unk_1E74C97C8;
    v24[4] = *(a1 + 32);
    v25 = v3;
    v27 = *(a1 + 56);
    v26 = *(a1 + 48);
    v5 = MEMORY[0x19A8EC5D0](v24);
    v6 = *(a1 + 56);
    v7 = +[MAAutoAssetSetControl _privateStateQueue];
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
    v10 = +[MAAutoAssetSetControl frameworkInstanceUUID];
    v23 = [v10 UUIDString];

    v11 = [MAAutoAssetSetInfoInstance alloc];
    v12 = [*(a1 + 32) controlClientDomainName];
    v13 = [*(a1 + 32) controlClientName];
    v14 = [*(a1 + 32) controlClientProcessName];
    v15 = [*(a1 + 32) controlClientProcessID];
    v16 = *(a1 + 40);
    v17 = +[MAAutoAssetSetControl frameworkInstanceUUID];
    v18 = [(MAAutoAssetSetInfoInstance *)v11 initUsingClientDomain:v12 forClientName:v13 withProcessName:v14 withProcessID:v15 forAssetSetIdentifier:@"ALL_INSTANCES" forAtomicInstance:v16 comprisedOfEntries:0 asEntriesWhenTargeting:0 associatingFrameworkUUID:v17];

    [v9 setSafeObject:v18 forKey:@"setInstance"];
    v19 = [objc_alloc(MEMORY[0x1E69D3878]) initWithType:1 messageName:@"MA-AUTO-SET-CONTROL:SET_INSTANCE_INFO" clientID:v23 version:0 message:v9];
    v20 = [*(a1 + 32) connectionClient];
    v21 = +[MAAutoAssetSetControl _privateStateQueue];
    v22 = *(a1 + 56);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__MAAutoAssetSetControl__autoAssetInstanceInfo_isSynchronous_completion___block_invoke_2;
    v28[3] = &unk_1E74C97A0;
    v28[4] = *(a1 + 32);
    v30 = v22;
    v29 = *(a1 + 48);
    [v20 connectClientSendServerMessage:v19 proxyObject:0 replyQueue:v21 isSynchronous:v22 withReply:v28];
  }
}

void __73__MAAutoAssetSetControl__autoAssetInstanceInfo_isSynchronous_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = +[MAAutoAssetSetControl _privateStateQueue];
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

    [*(a1 + 32) _failedControlInstanceInfo:@"autoAssetInstanceInfo" withErrorCode:v11 withResponseError:v12 description:v10 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v7 = [v13 message];
    v8 = [v7 safeObjectForKey:@"setInstanceInfo" ofClass:objc_opt_class()];

    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _successControlInstanceInfo:@"autoAssetInstanceInfo" withInstanceInfo:v8 isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }

    else
    {
      [v9 _failedControlInstanceInfo:@"autoAssetInstanceInfo" withErrorCode:6110 withResponseError:0 description:@"no asset-sets atomic instance information provided by server" isSynchronous:*(a1 + 48) completion:*(a1 + 40)];
    }
  }
}

+ (id)defaultDispatchQueue
{
  if (defaultDispatchQueue_defaultQueueOnce != -1)
  {
    +[MAAutoAssetSetControl defaultDispatchQueue];
  }

  v3 = defaultDispatchQueue_defaultQueue;

  return v3;
}

void __45__MAAutoAssetSetControl_defaultDispatchQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoassetcontrol.client" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = defaultDispatchQueue_defaultQueue;
  defaultDispatchQueue_defaultQueue = v1;
}

+ (id)autoAssetSetControl
{
  if (autoAssetSetControl_dispatchOnceAutoAssetSetControl != -1)
  {
    +[MAAutoAssetSetControl autoAssetSetControl];
  }

  v3 = autoAssetSetControl___autoAssetSetControl;

  return v3;
}

uint64_t __44__MAAutoAssetSetControl_autoAssetSetControl__block_invoke()
{
  autoAssetSetControl___autoAssetSetControl = objc_alloc_init(MAAutoAssetSetControl);

  return MEMORY[0x1EEE66BB8]();
}

- (void)connectToServerFrameworkCompletion:(id)a3
{
  v24 = a3;
  v4 = [(MAAutoAssetSetControl *)self connectionClient];

  if (!v4)
  {
    v5 = +[MAAutoAssetSetControl frameworkInstanceUUID];
    v23 = [v5 UUIDString];

    v22 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v22 setWithObjects:{v21, v20, v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v15 forKey:@"MA-AUTO-SET-CONTROL(REPLY):ASSET_SETS_OVERVIEW"];
    [MEMORY[0x1E69D3868] setAllowlistedClasses:v15 forKey:@"MA-AUTO-SET-CONTROL(REPLY):SET_INSTANCE_INFO"];
    v16 = [objc_alloc(MEMORY[0x1E69D3868]) initForServiceName:@"com.apple.mobileasset.autoasset" delegate:self clientID:v23];
    v17 = [objc_alloc(MEMORY[0x1E69D3860]) initWithClientPolicy:v16];
    [(MAAutoAssetSetControl *)self setConnectionClient:v17];
  }

  v24[2](v24, 0);
}

- (void)_successControl:(id)a3 isSynchronous:(BOOL)a4 completion:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = _MAClientLog(@"AutoSet");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "MA-auto-set-control{_successControl} | %{public}@ | SUCCESS", &v12, 0xCu);
    }

    v7[2](v7, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_successControl} | %{public}@ | no client completion block", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_failedControl:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a4 && !v17)
    {
      v18 = [MAAutoAssetError buildError:a4 fromOperation:v12 underlyingError:0 withDescription:v14];
    }

    v19 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 checkedSummary];
      *buf = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControl} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    v15[2](v15, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v22 = [v13 checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", v14, v22];
    }

    else
    {
      v22 = [MAAutoAssetError summaryForCode:a4 fromOperation:v12];
      v23 = [v21 initWithFormat:@"%@ | result:%@", v14, v22];
    }

    v18 = v23;

    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControl} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlSummary:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a4 && !v17)
    {
      v18 = [MAAutoAssetError buildError:a4 fromOperation:v12 underlyingError:0 withDescription:v14];
    }

    v19 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 checkedSummary];
      *buf = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlSummary} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    v15[2](v15, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v22 = [v13 checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", v14, v22];
    }

    else
    {
      v22 = [MAAutoAssetError summaryForCode:a4 fromOperation:v12];
      v23 = [v21 initWithFormat:@"%@ | result:%@", v14, v22];
    }

    v18 = v23;

    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlSummary} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControlLockSummary:(id)a3 withLockSummaryEntries:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"AutoSet");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-set-control{_successControlLockSummary} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    v10[2](v10, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_successControlLockSummary} | %{public}@ | no client completion block", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlLockSummary:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a4 && !v17)
    {
      v18 = [MAAutoAssetError buildError:a4 fromOperation:v12 underlyingError:0 withDescription:v14];
    }

    v19 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 checkedSummary];
      *buf = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlLockSummary} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    v15[2](v15, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v22 = [v13 checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", v14, v22];
    }

    else
    {
      v22 = [MAAutoAssetError summaryForCode:a4 fromOperation:v12];
      v23 = [v21 initWithFormat:@"%@ | result:%@", v14, v22];
    }

    v18 = v23;

    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlLockSummary} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControlOverview:(id)a3 withOverviewEntries:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"AutoSet");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-set-control{_successControlOverview} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    v10[2](v10, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_successControlOverview} | %{public}@ | no client completion block", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlOverview:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a4 && !v17)
    {
      v18 = [MAAutoAssetError buildError:a4 fromOperation:v12 underlyingError:0 withDescription:v14];
    }

    v19 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 checkedSummary];
      *buf = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlOverview} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    v15[2](v15, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v22 = [v13 checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", v14, v22];
    }

    else
    {
      v22 = [MAAutoAssetError summaryForCode:a4 fromOperation:v12];
      v23 = [v21 initWithFormat:@"%@ | result:%@", v14, v22];
    }

    v18 = v23;

    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlOverview} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_successControlInstanceInfo:(id)a3 withInstanceInfo:(id)a4 isSynchronous:(BOOL)a5 completion:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = _MAClientLog(@"AutoSet");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "MA-auto-set-control{_successControlInstanceInfo} | %{public}@ | SUCCESS", &v15, 0xCu);
    }

    v10[2](v10, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_successControlInstanceInfo} | %{public}@ | no client completion block", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_failedControlInstanceInfo:(id)a3 withErrorCode:(int64_t)a4 withResponseError:(id)a5 description:(id)a6 isSynchronous:(BOOL)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = +[MAAutoAssetSetControl _privateStateQueue];
  dispatch_assert_queue_V2(v16);

  if (v15)
  {
    v17 = v13;
    v18 = v17;
    if (a4 && !v17)
    {
      v18 = [MAAutoAssetError buildError:a4 fromOperation:v12 underlyingError:0 withDescription:v14];
    }

    v19 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v18 checkedSummary];
      *buf = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlInstanceInfo} | %{public}@ | error:%{public}@", buf, 0x16u);
    }

    v15[2](v15, 0, v18);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v13)
    {
      v22 = [v13 checkedSummary];
      v23 = [v21 initWithFormat:@"%@ | error:%@", v14, v22];
    }

    else
    {
      v22 = [MAAutoAssetError summaryForCode:a4 fromOperation:v12];
      v23 = [v21 initWithFormat:@"%@ | result:%@", v14, v22];
    }

    v18 = v23;

    v24 = _MAClientLog(@"AutoSet");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_ERROR, "MA-auto-set-control{_failedControlInstanceInfo} | %{public}@ | no client completion block | %{public}@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

+ (void)frameworkInstanceSetLogDomain
{
  if (frameworkInstanceSetLogDomain_frameworkLogDomainOnce != -1)
  {
    +[MAAutoAssetSetControl frameworkInstanceSetLogDomain];
  }
}

void __54__MAAutoAssetSetControl_frameworkInstanceSetLogDomain__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%s", @"com.apple.MAAutoSetControlClient", getprogname()];
  v0 = [MEMORY[0x1E69D3880] sharedCore];
  [v0 useDomain:v1];
}

+ (id)_privateStateQueue
{
  if (_privateStateQueue_frameworkQueueOnce != -1)
  {
    +[MAAutoAssetSetControl _privateStateQueue];
  }

  v3 = _privateStateQueue_frameworkQueue;

  return v3;
}

void __43__MAAutoAssetSetControl__privateStateQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.autoassetcontrol.framework" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = _privateStateQueue_frameworkQueue;
  _privateStateQueue_frameworkQueue = v1;
}

+ (id)frameworkInstanceUUID
{
  if (frameworkInstanceUUID_frameworkUUIDOnce != -1)
  {
    +[MAAutoAssetSetControl frameworkInstanceUUID];
  }

  v3 = frameworkInstanceUUID_frameworkUUID;

  return v3;
}

uint64_t __46__MAAutoAssetSetControl_frameworkInstanceUUID__block_invoke()
{
  frameworkInstanceUUID_frameworkUUID = objc_alloc_init(MEMORY[0x1E696AFB0]);

  return MEMORY[0x1EEE66BB8]();
}

@end