@interface CHDatabaseClientHandleManager
+ (CHDatabaseClientHandleManager)sharedInstance;
- (CHDatabaseClientHandleManager)init;
- (CallHistoryDBClientHandle)databaseClientHandle;
@end

@implementation CHDatabaseClientHandleManager

+ (CHDatabaseClientHandleManager)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[CHDatabaseClientHandleManager sharedInstance];
  }

  v3 = sharedInstance_databaseClientHandleManager;

  return v3;
}

uint64_t __47__CHDatabaseClientHandleManager_sharedInstance__block_invoke()
{
  sharedInstance_databaseClientHandleManager = objc_alloc_init(CHDatabaseClientHandleManager);

  return MEMORY[0x1EEE66BB8]();
}

- (CHDatabaseClientHandleManager)init
{
  v5.receiver = self;
  v5.super_class = CHDatabaseClientHandleManager;
  v2 = [(CHSynchronizedLoggable *)&v5 initWithName:"CHDatabaseClientHandleManager"];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_databaseClientHandle, 0);
  }

  return v3;
}

- (CallHistoryDBClientHandle)databaseClientHandle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CHDatabaseClientHandleManager_databaseClientHandle__block_invoke;
  v4[3] = &unk_1E81DC370;
  v4[4] = self;
  v4[5] = &v5;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __53__CHDatabaseClientHandleManager_databaseClientHandle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));

  if (!WeakRetained)
  {
    v3 = +[CallHistoryDBClientHandle createForClient];
    objc_storeWeak((*(a1 + 32) + 24), v3);
  }

  v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8]();
}

@end