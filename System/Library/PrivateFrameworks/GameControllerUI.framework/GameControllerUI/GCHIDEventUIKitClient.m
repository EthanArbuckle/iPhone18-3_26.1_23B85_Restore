@interface GCHIDEventUIKitClient
@end

@implementation GCHIDEventUIKitClient

void __41____GCHIDEventUIKitClient_sharedInstance__block_invoke()
{
  v0 = [__GCHIDEventUIKitClient alloc];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [(__GCHIDEventUIKitClient *)&v0->super.isa _initWithApplication:v3];
  v2 = sharedInstance_Shared_0;
  sharedInstance_Shared_0 = v1;
}

void __48____GCHIDEventUIKitClient__initWithApplication___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  IOHIDEventGetSenderID();
  IOHIDEventGetTimeStamp();
  IOHIDEventGetType();
  kdebug_trace();
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __48____GCHIDEventUIKitClient_registerEventHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 24);
  v3 = MEMORY[0x20F32E600](*(a1 + 40));
  v4 = [v2 gc_arrayByRemovingObject:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v7);
}

void __40___GCHIDEventUIKitClient_initWithQueue___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];

  if (v2)
  {
    v3 = +[__GCHIDEventUIKitClient sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40___GCHIDEventUIKitClient_initWithQueue___block_invoke_2;
    v8[3] = &unk_277E1DCE0;
    v9 = *(a1 + 40);
    objc_copyWeak(&v10, (a1 + 48));
    v4 = [(__GCHIDEventUIKitClient *)v3 registerEventHandler:v8];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_destroyWeak(&v10);
    v7 = v9;
  }

  else
  {
    v7 = _gc_log_runtime_issue();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __40___GCHIDEventUIKitClient_initWithQueue___block_invoke_cold_1(v7);
    }
  }
}

void __40___GCHIDEventUIKitClient_initWithQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___GCHIDEventUIKitClient_initWithQueue___block_invoke_3;
  v4[3] = &unk_277E1DCB8;
  objc_copyWeak(v5, (a1 + 40));
  v5[1] = a2;
  dispatch_async_and_wait(v3, v4);
  objc_destroyWeak(v5);
}

void __40___GCHIDEventUIKitClient_initWithQueue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained publishHIDEvent:*(a1 + 40)];
}

@end