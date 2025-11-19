@interface ISIconManager
+ (ISIconManager)sharedInstance;
+ (id)serviceName;
- (id)_init;
- (id)findOrRegisterIcon:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation ISIconManager

+ (ISIconManager)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[ISIconManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_4;

  return v3;
}

uint64_t __31__ISIconManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_4 = [[ISIconManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = ISIconManager;
  v2 = [(ISIconManager *)&v29 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    iconRegistry = v2->_iconRegistry;
    v2->_iconRegistry = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc(MEMORY[0x1E696B0B8]);
    v8 = +[ISIconManager serviceName];
    v9 = [v7 initWithMachServiceName:v8 options:0];
    connection = v2->_connection;
    v2->_connection = v9;

    v11 = [MEMORY[0x1E696B0D0] _IS_iconCacheServiceInterface];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v11];
    v12 = v2->_connection;
    v13 = +[ISIconManager serviceName];
    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_get_global_queue(21, 2uLL);
    v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
    [(NSXPCConnection *)v12 _setQueue:v17];

    [(NSXPCConnection *)v2->_connection resume];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("Icon manager internal queue", v18);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v19;

    objc_initWeak(&location, v2);
    v21 = v2->_connection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __22__ISIconManager__init__block_invoke;
    v26[3] = &unk_1E77C6BF0;
    objc_copyWeak(&v27, &location);
    v22 = [(NSXPCConnection *)v21 synchronousRemoteObjectProxyWithErrorHandler:v26];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __22__ISIconManager__init__block_invoke_12;
    v24[3] = &unk_1E77C6C18;
    objc_copyWeak(&v25, &location);
    [v22 fetchCacheConfigurationWithReply:v24];
    objc_destroyWeak(&v25);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)serviceName
{
  v2 = +[ISDefaults sharedInstance];
  v3 = [v2 serviceName];

  return v3;
}

void __22__ISIconManager__init__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[ISIconCache alloc] initWithConfiguration:v3];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setIconCache:v4];
  }

  else
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A77B8000, v6, OS_LOG_TYPE_INFO, "Unable to access icon cache", v7, 2u);
    }
  }
}

void __22__ISIconManager__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __22__ISIconManager__init__block_invoke_cold_1(v3, v4);
  }

  v5 = +[ISIconCache defaultIconCache];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIconCache:v5];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ISIconManager;
  [(ISIconManager *)&v2 dealloc];
}

- (id)findOrRegisterIcon:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ISIconManager_findOrRegisterIcon___block_invoke;
  block[3] = &unk_1E77C6C40;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __36__ISIconManager_findOrRegisterIcon___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) member:*(a1 + 40)];
  v3 = a1 + 48;
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  v6 = *(*(a1 + 48) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, *(a1 + 40));
    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __36__ISIconManager_findOrRegisterIcon___block_invoke_cold_1(v3, v9);
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

void __22__ISIconManager__init__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Failed to get the icon cache path with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __36__ISIconManager_findOrRegisterIcon___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Registered %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end