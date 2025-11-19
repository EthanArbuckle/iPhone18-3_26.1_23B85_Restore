@interface HFUpdateLoggerDebuggingController
+ (id)_sharedInstance;
- (HFUpdateLoggerDebuggingController)init;
- (id)_historyStrings;
- (id)_runningLoggerStrings;
- (id)_runningLoggers;
- (void)_addRunningLogger:(id)a3;
- (void)_removeRunningLogger:(id)a3;
@end

@implementation HFUpdateLoggerDebuggingController

+ (id)_sharedInstance
{
  if (qword_280E030A8 != -1)
  {
    dispatch_once(&qword_280E030A8, &__block_literal_global_118);
  }

  v3 = _MergedGlobals_266;

  return v3;
}

void __52__HFUpdateLoggerDebuggingController__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HFUpdateLoggerDebuggingController);
  v1 = _MergedGlobals_266;
  _MergedGlobals_266 = v0;
}

- (HFUpdateLoggerDebuggingController)init
{
  v12.receiver = self;
  v12.super_class = HFUpdateLoggerDebuggingController;
  v2 = [(HFUpdateLoggerDebuggingController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Home.HFUpdateLoggerDebuggingController", 0);
    [(HFUpdateLoggerDebuggingController *)v2 setQueue:v3];

    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFUpdateLoggerDebuggingController *)v2 set_queue_runningLoggers:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HFUpdateLoggerDebuggingController *)v2 set_queue_historyStringsKeyedByLogger:v5];

    [(HFUpdateLoggerDebuggingController *)v2 set_queue_iteration:0];
    objc_initWeak(&location, v2);
    v6 = +[HFDebugStateDumpManager sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__HFUpdateLoggerDebuggingController_init__block_invoke;
    v9[3] = &unk_277DF2B00;
    objc_copyWeak(&v10, &location);
    v7 = [v6 registerStateDumpHandler:v9 withName:@"HFRunningUpdateLoggers"];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __41__HFUpdateLoggerDebuggingController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _runningLoggerStrings];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (void)_addRunningLogger:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v5 copy];

  v7 = [(HFUpdateLoggerDebuggingController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HFUpdateLoggerDebuggingController__addRunningLogger___block_invoke;
  block[3] = &unk_277DF32A8;
  block[4] = self;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(v7, block);
}

void __55__HFUpdateLoggerDebuggingController__addRunningLogger___block_invoke(uint64_t a1)
{
  [*(a1 + 32) set_queue_iteration:{objc_msgSend(*(a1 + 32), "_queue_iteration") + 1}];
  v2 = [*(a1 + 32) _queue_runningLoggers];
  [v2 addObject:*(a1 + 40)];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04d %@: Started %@", objc_msgSend(*(a1 + 32), "_queue_iteration"), *(a1 + 48), *(a1 + 40)];
  v3 = [*(a1 + 32) _queue_historyStringsKeyedByLogger];
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 40)];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

- (void)_removeRunningLogger:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v5 copy];

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [(HFUpdateLoggerDebuggingController *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HFUpdateLoggerDebuggingController__removeRunningLogger___block_invoke;
  v12[3] = &unk_277DF3398;
  v12[4] = self;
  v13 = v4;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v4;
  dispatch_async(v8, v12);
}

void __58__HFUpdateLoggerDebuggingController__removeRunningLogger___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_runningLoggers];
  [v2 removeObject:*(a1 + 40)];

  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 40)];
  v3 = [*(a1 + 32) _queue_historyStringsKeyedByLogger];
  v4 = [v3 objectForKeyedSubscript:v8];

  if (v4)
  {
    [*(a1 + 48) timeIntervalSinceDate:*(a1 + 56)];
    v6 = [v4 stringByAppendingFormat:@" -> Finished in %fs", v5];
    v7 = [*(a1 + 32) _queue_historyStringsKeyedByLogger];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (id)_runningLoggers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v3 = [(HFUpdateLoggerDebuggingController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HFUpdateLoggerDebuggingController__runningLoggers__block_invoke;
  v6[3] = &unk_277DF5CA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__HFUpdateLoggerDebuggingController__runningLoggers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_runningLoggers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_runningLoggerStrings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v3 = [(HFUpdateLoggerDebuggingController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HFUpdateLoggerDebuggingController__runningLoggerStrings__block_invoke;
  v6[3] = &unk_277DFC3A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __58__HFUpdateLoggerDebuggingController__runningLoggerStrings__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_runningLoggers];
  v3 = [v2 allObjects];
  v4 = [v3 na_map:&__block_literal_global_18_6];

  v5 = [*(a1 + 32) _queue_historyStringsKeyedByLogger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HFUpdateLoggerDebuggingController__runningLoggerStrings__block_invoke_3;
  v11[3] = &unk_277DFC378;
  v12 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v11];
  v8 = [v7 allValues];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)_historyStrings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v3 = [(HFUpdateLoggerDebuggingController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HFUpdateLoggerDebuggingController__historyStrings__block_invoke;
  v6[3] = &unk_277DF5CA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__HFUpdateLoggerDebuggingController__historyStrings__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _queue_historyStringsKeyedByLogger];
  v2 = [v6 allValues];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end