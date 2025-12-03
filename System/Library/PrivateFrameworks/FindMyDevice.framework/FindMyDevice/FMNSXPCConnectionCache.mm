@interface FMNSXPCConnectionCache
+ (FMNSXPCConnectionCache)sharedCache;
- (FMNSXPCConnectionCache)init;
- (id)resumeConnectionWithConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation FMNSXPCConnectionCache

+ (FMNSXPCConnectionCache)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[FMNSXPCConnectionCache sharedCache];
  }

  v3 = sharedCache__instance;

  return v3;
}

uint64_t __37__FMNSXPCConnectionCache_sharedCache__block_invoke()
{
  sharedCache__instance = objc_alloc_init(FMNSXPCConnectionCache);

  return MEMORY[0x1EEE66BB8]();
}

- (FMNSXPCConnectionCache)init
{
  v8.receiver = self;
  v8.super_class = FMNSXPCConnectionCache;
  v2 = [(FMNSXPCConnectionCache *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMD-NSXPC-Mods-Queue", 0);
    modsSerialQueue = v2->_modsSerialQueue;
    v2->_modsSerialQueue = v3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    connectionsByServiceName = v2->_connectionsByServiceName;
    v2->_connectionsByServiceName = dictionary;
  }

  return v2;
}

- (void)dealloc
{
  modsSerialQueue = [(FMNSXPCConnectionCache *)self modsSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FMNSXPCConnectionCache_dealloc__block_invoke;
  block[3] = &unk_1E86BD198;
  block[4] = self;
  dispatch_sync(modsSerialQueue, block);

  v4.receiver = self;
  v4.super_class = FMNSXPCConnectionCache;
  [(FMNSXPCConnectionCache *)&v4 dealloc];
}

void __33__FMNSXPCConnectionCache_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionsByServiceName];
  v1 = [v2 allValues];
  [v1 enumerateObjectsUsingBlock:&__block_literal_global_5];
}

- (id)resumeConnectionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  serviceName = [configurationCopy serviceName];
  if (serviceName)
  {
    modsSerialQueue = [(FMNSXPCConnectionCache *)self modsSerialQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__FMNSXPCConnectionCache_resumeConnectionWithConfiguration___block_invoke;
    v10[3] = &unk_1E86BD210;
    v10[4] = self;
    v11 = serviceName;
    v12 = configurationCopy;
    v13 = &v14;
    dispatch_sync(modsSerialQueue, v10);

    v7 = v15[5];
  }

  else
  {
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FMNSXPCConnectionCache resumeConnectionWithConfiguration:v8];
    }

    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __60__FMNSXPCConnectionCache_resumeConnectionWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionsByServiceName];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3 || [v3 state] != 1)
  {
    v4 = [[FMNSXPCConnection alloc] initWithConfiguration:*(a1 + 48)];

    v5 = [*(a1 + 32) connectionsByServiceName];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

    objc_initWeak(&location, *(a1 + 32));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__FMNSXPCConnectionCache_resumeConnectionWithConfiguration___block_invoke_2;
    v9[3] = &unk_1E86BD1E8;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    [(FMNSXPCConnection *)v4 addFailureBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    v3 = v4;
  }

  v6 = [[FMNSXPCCachedConnection alloc] initWithFMNSXPCConnection:v3];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __60__FMNSXPCConnectionCache_resumeConnectionWithConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained modsSerialQueue];
  if (v3)
  {
    objc_initWeak(&location, WeakRetained);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FMNSXPCConnectionCache_resumeConnectionWithConfiguration___block_invoke_3;
    block[3] = &unk_1E86BD1C0;
    objc_copyWeak(&v6, &location);
    v5 = *(a1 + 32);
    dispatch_async(v3, block);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __60__FMNSXPCConnectionCache_resumeConnectionWithConfiguration___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained connectionsByServiceName];
  [v2 removeObjectForKey:*(a1 + 32)];
}

@end