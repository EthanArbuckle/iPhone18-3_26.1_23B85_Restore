@interface BRObservableFile
+ (id)observerForKey:(id)a3 onFileURL:(id)a4;
+ (void)_applicationDidBecomeActive:(id)a3;
+ (void)_applicationWillResignActive:(id)a3;
+ (void)_deregisterInstance:(id)a3;
+ (void)_registerForApplicationLifecycleNotifications;
+ (void)_registerInstance:(id)a3;
- (BRObservableFile)initWithKey:(id)a3 fileURL:(id)a4;
- (id)addObserverBlock:(id)a3;
- (void)_presenterDidChange;
- (void)dealloc;
@end

@implementation BRObservableFile

+ (void)_registerForApplicationLifecycleNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRObservableFile__registerForApplicationLifecycleNotifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_registerForApplicationLifecycleNotifications_onceToken != -1)
  {
    dispatch_once(&_registerForApplicationLifecycleNotifications_onceToken, block);
  }
}

void __65__BRObservableFile__registerForApplicationLifecycleNotifications__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];
  [v6 addObserver:*(a1 + 32) selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  v2 = objc_alloc(MEMORY[0x277CCAA50]);
  v3 = [MEMORY[0x277CCAC20] pointerFunctionsWithOptions:5];
  v4 = [v2 initWithPointerFunctions:v3 capacity:0];
  v5 = _BRObservableFileInstances;
  _BRObservableFileInstances = v4;
}

+ (void)_registerInstance:(id)a3
{
  v4 = a3;
  v3 = _BRObservableFileInstances;
  objc_sync_enter(v3);
  [_BRObservableFileInstances addObject:v4];
  objc_sync_exit(v3);
}

+ (void)_deregisterInstance:(id)a3
{
  v4 = a3;
  v3 = _BRObservableFileInstances;
  objc_sync_enter(v3);
  [_BRObservableFileInstances removeObject:v4];
  objc_sync_exit(v3);
}

+ (void)_applicationWillResignActive:(id)a3
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v3 performExpiringActivityWithReason:@"Deregister file presenters" usingBlock:&__block_literal_global_5];
}

void __49__BRObservableFile__applicationWillResignActive___block_invoke(uint64_t a1, char a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = cdui_default_log();
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __49__BRObservableFile__applicationWillResignActive___block_invoke_cold_1(v2);
      v3 = v2;
    }
  }

  else
  {
    v15 = _BRObservableFileInstances;
    objc_sync_enter(v15);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = _BRObservableFileInstances;
    v4 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v4)
    {
      v5 = *v18;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          v8 = cdui_default_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = objc_opt_class();
            v10 = [v7 presenter];
            v11 = [v10 presentedItemURL];
            v12 = [v11 path];
            *buf = 138412802;
            v22 = v9;
            v23 = 2048;
            v24 = v7;
            v25 = 2112;
            v26 = v12;
            _os_log_impl(&dword_243823000, v8, OS_LOG_TYPE_INFO, "[INFO] Removing (<%@: %p>, %@) as file presenter due to application deactivation", buf, 0x20u);
          }

          v13 = MEMORY[0x277CCA9E8];
          v14 = [v7 presenter];
          [v13 removeFilePresenter:v14];
        }

        v4 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v4);
    }

    v3 = v15;
    objc_sync_exit(v15);
  }
}

+ (void)_applicationDidBecomeActive:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = _BRObservableFileInstances;
  objc_sync_enter(v15);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = _BRObservableFileInstances;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = cdui_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = objc_opt_class();
          v9 = [v6 presenter];
          v10 = [v9 presentedItemURL];
          v11 = [v10 path];
          *buf = 138412802;
          v22 = v8;
          v23 = 2048;
          v24 = v6;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_243823000, v7, OS_LOG_TYPE_INFO, "[INFO] Re-adding (<%@: %p>, %@) as file presenter due to application activation", buf, 0x20u);
        }

        v12 = MEMORY[0x277CCA9E8];
        v13 = [v6 presenter];
        [v12 addFilePresenter:v13];
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  objc_sync_exit(v15);
}

+ (id)observerForKey:(id)a3 onFileURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKey:v7 fileURL:v6];

  return v8;
}

- (BRObservableFile)initWithKey:(id)a3 fileURL:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = BRObservableFile;
  v8 = [(BRObservableFile *)&v23 init];
  if (v8)
  {
    [objc_opt_class() _registerForApplicationLifecycleNotifications];
    [(BRObservableFile *)v8 setKey:v6];
    v9 = objc_opt_new();
    [(BRObservableFile *)v8 setPresenter:v9];

    v10 = [(BRObservableFile *)v8 presenter];
    [v10 setPresentedItemURL:v7];

    v11 = objc_opt_new();
    v12 = [(BRObservableFile *)v8 presenter];
    [v12 setPresentedItemOperationQueue:v11];

    v13 = [(BRObservableFile *)v8 presenter];
    [v13 setParent:v8];

    [objc_opt_class() _registerInstance:v8];
    v14 = MEMORY[0x277CCA9E8];
    v15 = [(BRObservableFile *)v8 presenter];
    [v14 addFilePresenter:v15];

    v16 = cdui_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [(BRObservableFile *)v8 presenter];
      v20 = [v19 presentedItemURL];
      v21 = [v20 path];
      *buf = 138412802;
      v25 = v17;
      v26 = 2048;
      v27 = v8;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_243823000, v16, OS_LOG_TYPE_INFO, "[INFO] Adding (<%@: %p>, %@) as file presenter", buf, 0x20u);
    }

    [(BRObservableFile *)v8 _presenterDidChange];
  }

  return v8;
}

- (id)addObserverBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = BRObservableFile;
  v4 = [(BRObservableFile *)&v6 addObserverBlock:a3];
  [(BRObservableFile *)self _presenterDidChange];

  return v4;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  [objc_opt_class() _deregisterInstance:self];
  v3 = cdui_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = [(BRObservableFile *)self presenter];
    v7 = [v6 presentedItemURL];
    v8 = [v7 path];
    *buf = 138412802;
    v13 = v4;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_243823000, v3, OS_LOG_TYPE_INFO, "[INFO] Removing (<%@: %p>, %@) as file presenter due to dealloc", buf, 0x20u);
  }

  v9 = MEMORY[0x277CCA9E8];
  v10 = [(BRObservableFile *)self presenter];
  [v9 removeFilePresenter:v10];

  v11.receiver = self;
  v11.super_class = BRObservableFile;
  [(BRObservableFile *)&v11 dealloc];
}

- (void)_presenterDidChange
{
  key = self->_key;
  v12 = [(BRObservableFile *)self presenter];
  v4 = [v12 presentedItemURL];
  if (key)
  {
    v5 = [(BRObservableFile *)self key];
    [v4 removeCachedResourceValueForKey:v5];

    v6 = [(BRObservableFile *)self presenter];
    v7 = [v6 presentedItemURL];
    v14 = 0;
    v8 = [(BRObservableFile *)self key];
    v13 = 0;
    v9 = [v7 getPromisedItemResourceValue:&v14 forKey:v8 error:&v13];
    v10 = v14;
    v11 = v13;

    if (v9)
    {
      [(BRObservableFile *)self receiveObservedValue:v10];
    }

    else
    {
      [(BRObservableFile *)self receiveObservedError:v11];
    }
  }

  else
  {
    [(BRObservableFile *)self receiveObservedValue:v4];
  }
}

@end