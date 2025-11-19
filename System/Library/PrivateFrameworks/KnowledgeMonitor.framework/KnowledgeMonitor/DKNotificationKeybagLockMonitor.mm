@interface DKNotificationKeybagLockMonitor
@end

@implementation DKNotificationKeybagLockMonitor

uint64_t __39___DKNotificationKeybagLockMonitor_log__block_invoke()
{
  log_log_0 = os_log_create("com.apple.coreduet.monitors", "_DKNotificationKeybagLockMonitor");

  return MEMORY[0x2821F96F8]();
}

id __41___DKNotificationKeybagLockMonitor_start__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = _DKNotificationKeybagLockMonitor;
  result = objc_msgSendSuper2(&v3, sel__instantMonitorNeedsActivation);
  if (result)
  {
    return [*(a1 + 32) _activate];
  }

  return result;
}

void __45___DKNotificationKeybagLockMonitor__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Checking current state of Device.KeybagLocked stream", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:1 reversed:0];
  v5 = BiomeLibrary();
  v6 = [v5 Device];
  v7 = [v6 KeybagLocked];
  v8 = [v7 publisherWithOptions:v4];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45___DKNotificationKeybagLockMonitor__activate__block_invoke_2;
  v19[3] = &unk_27856F2D8;
  v19[5] = buf;
  v19[6] = &v26;
  v19[4] = *(a1 + 32);
  v9 = [v8 sinkWithCompletion:&__block_literal_global_23 receiveInput:v19];
  Current = CFAbsoluteTimeGetCurrent();
  v11 = [MEMORY[0x277CCAC38] processInfo];
  [v11 systemUptime];
  v13 = Current - v12;

  v14 = *(v21 + 5);
  if (!v14 || ([v14 starting] & 1) == 0 && v27[3] < v13)
  {
    v15 = objc_alloc(MEMORY[0x277CF10E8]);
    v16 = [v15 initWithStarting:MEMORY[0x277CBEC38]];
    [*(a1 + 32) _updateWithKeybagLocked:v16 timestamp:v13];
    v17 = *(v21 + 5);
    *(v21 + 5) = v16;
    v18 = v16;

    v27[3] = v13;
  }

  if ([*(v21 + 5) isEqual:*(a1 + 40)])
  {
    objc_storeStrong((*(a1 + 32) + 176), *(v21 + 5));
    *(*(a1 + 32) + 168) = v27[3];
  }

  else
  {
    [*(a1 + 32) _updateWithKeybagLocked:*(a1 + 40) timestamp:*(a1 + 48)];
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v26, 8);
}

void __45___DKNotificationKeybagLockMonitor__activate__block_invoke_2(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [v3 timestamp];
  *(*(a1[6] + 8) + 24) = v7;
  v8 = a1[4];
  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v3 eventBody];
    [v3 timestamp];
    v13 = 138543618;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&dword_22595A000, v9, OS_LOG_TYPE_DEFAULT, "Loaded last Device.KeybagLocked event %{public}@ at %f", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __40___DKNotificationKeybagLockMonitor_stop__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = _DKNotificationKeybagLockMonitor;
  result = objc_msgSendSuper2(&v3, sel__instantMonitorNeedsDeactivation);
  if (result)
  {
    return [*(a1 + 32) _deactivate];
  }

  return result;
}

void __47___DKNotificationKeybagLockMonitor__deactivate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;

  *(*(a1 + 32) + 168) = 0;
}

uint64_t __73___DKNotificationKeybagLockMonitor__enqueueKeybagLockedUpdate_timestamp___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 168) <= *(result + 48))
  {
    v2 = result;
    result = [*(v1 + 176) isEqual:*(result + 40)];
    if ((result & 1) == 0)
    {
      v3 = *(v2 + 4);
      v4 = *(v2 + 5);
      v5 = v2[6];

      return [v3 _updateWithKeybagLocked:v4 timestamp:v5];
    }
  }

  return result;
}

@end