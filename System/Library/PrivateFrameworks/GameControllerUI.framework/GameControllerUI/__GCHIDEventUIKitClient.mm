@interface __GCHIDEventUIKitClient
+ (id)sharedInstance;
- (__GCHIDEventUIKitClient)init;
- (id)_initWithApplication:(id *)a1;
- (id)registerEventHandler:(uint64_t)a1;
- (void)dealloc;
@end

@implementation __GCHIDEventUIKitClient

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_0 != -1)
  {
    +[__GCHIDEventUIKitClient sharedInstance];
  }

  v0 = sharedInstance_Shared_0;

  return v0;
}

- (__GCHIDEventUIKitClient)init
{
  [(__GCHIDEventUIKitClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v3 = self->_application;
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [MEMORY[0x277CCACC8] mainThread];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [(UIApplication *)v3 _removeHIDGameControllerEventObserver];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34____GCHIDEventUIKitClient_dealloc__block_invoke;
    block[3] = &unk_277E1DC40;
    v9 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7.receiver = self;
  v7.super_class = __GCHIDEventUIKitClient;
  [(__GCHIDEventUIKitClient *)&v7 dealloc];
}

- (id)_initWithApplication:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = __GCHIDEventUIKitClient;
    v5 = objc_msgSendSuper2(&v21, sel_init);
    objc_storeStrong(v5 + 1, a2);
    *(v5 + 4) = 0;
    v6 = objc_opt_new();
    v7 = v5[3];
    v5[3] = v6;

    v8 = dispatch_queue_create("__GCHIDEventUIKitClient", 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48____GCHIDEventUIKitClient__initWithApplication___block_invoke;
    v19[3] = &unk_277E1DC68;
    v9 = v5;
    v20 = v9;
    v10 = MEMORY[0x20F32E600](v19);
    v11 = [MEMORY[0x277CCACC8] currentThread];
    v12 = [MEMORY[0x277CCACC8] mainThread];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      [v4 _setHIDGameControllerEventObserver:v10 onQueue:v8];
    }

    else
    {
      OUTLINED_FUNCTION_0_0();
      v15[1] = 3221225472;
      v15[2] = __48____GCHIDEventUIKitClient__initWithApplication___block_invoke_2;
      v15[3] = &unk_277E1DC90;
      v16 = v4;
      v18 = v10;
      v17 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }

    a1 = v9;
  }

  return a1;
}

- (id)registerEventHandler:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 copy];

    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 24);
    v7 = MEMORY[0x20F32E600](v5);
    v8 = [v6 arrayByAddingObject:v7];
    v9 = *(a1 + 24);
    *(a1 + 24) = v8;

    os_unfair_lock_unlock((a1 + 16));
    v10 = objc_alloc(MEMORY[0x277D0C8F8]);
    OUTLINED_FUNCTION_0_0();
    v12[1] = 3221225472;
    v12[2] = __48____GCHIDEventUIKitClient_registerEventHandler___block_invoke;
    v12[3] = &unk_277E1DBD0;
    v12[4] = a1;
    v4 = v5;
    v13 = v4;
    a1 = [v10 initWithCleanupHandler:v12];
  }

  return a1;
}

@end