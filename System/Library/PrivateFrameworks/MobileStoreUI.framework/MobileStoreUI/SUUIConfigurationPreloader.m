@interface SUUIConfigurationPreloader
- (BOOL)hasExistingConfigurationCache;
- (SUUIConfigurationPreloader)init;
- (SUUIConfigurationPreloader)initWithConfigurationCachePath:(id)a3;
- (void)finishPreloadingConfiguration:(id)a3 error:(id)a4;
- (void)preloadConfigurationForPurpose:(int64_t)a3 withCompletionBlock:(id)a4;
@end

@implementation SUUIConfigurationPreloader

- (SUUIConfigurationPreloader)init
{
  v3 = +[SUUIReloadConfigurationOperation cachePath];
  v4 = [(SUUIConfigurationPreloader *)self initWithConfigurationCachePath:v3];

  return v4;
}

- (BOOL)hasExistingConfigurationCache
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(SUUIConfigurationPreloader *)self configurationCachePath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (SUUIConfigurationPreloader)initWithConfigurationCachePath:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUUIConfigurationPreloader;
  v5 = [(SUUIConfigurationPreloader *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    configurationCachePath = v5->_configurationCachePath;
    v5->_configurationCachePath = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;

    [(NSOperationQueue *)v5->_workQueue setName:@"com.apple.storekit.configurationpreloader"];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v5->_completionBlocks;
    v5->_completionBlocks = v10;
  }

  return v5;
}

- (void)preloadConfigurationForPurpose:(int64_t)a3 withCompletionBlock:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [SUUIConfigurationPreloader preloadConfigurationForPurpose:a2 withCompletionBlock:self];
  }

  v8 = [(SUUIConfigurationPreloader *)self loadedConfiguration];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABD8] mainQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__SUUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_3;
    v21[3] = &unk_2798F5D58;
    v21[4] = self;
    v22 = v7;
    [v9 addOperationWithBlock:v21];
  }

  else if (a3 || ![(SUUIConfigurationPreloader *)self hasExistingConfigurationCache])
  {
    v10 = [(SUUIConfigurationPreloader *)self completionBlocks];
    v11 = [v7 copy];
    v12 = _Block_copy(v11);
    [v10 addObject:v12];

    v13 = [(SUUIConfigurationPreloader *)self pendingReloadOperation];

    if (!v13)
    {
      v14 = [(SUUIConfigurationPreloader *)self newReloadConfigurationOperation];
      [(SUUIConfigurationPreloader *)self setPendingReloadOperation:v14];

      if (a3 == 2)
      {
        v15 = [MEMORY[0x277D69C90] contextWithBagType:0];
        v16 = SSVDefaultUserAgent();
        [v15 setValue:v16 forHTTPHeaderField:*MEMORY[0x277D6A130]];

        v17 = [(SSURLBag *)[SUUIURLBag alloc] initWithURLBagContext:v15];
        [(SUUIReloadConfigurationOperation *)self->_pendingReloadOperation setURLBag:v17];
      }

      objc_initWeak(&location, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __81__SUUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke;
      v23[3] = &unk_2798FAA60;
      objc_copyWeak(&v24, &location);
      v18 = [(SUUIConfigurationPreloader *)self pendingReloadOperation];
      [v18 setOutputBlock:v23];

      v19 = [(SUUIConfigurationPreloader *)self workQueue];
      v20 = [(SUUIConfigurationPreloader *)self pendingReloadOperation];
      [v19 addOperation:v20];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x277CBEC10], 0);
  }
}

void __81__SUUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__SUUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_2;
    v9[3] = &unk_2798F5BC0;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    [v8 addOperationWithBlock:v9];
  }
}

void __81__SUUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) loadedConfiguration];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)finishPreloadingConfiguration:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SUUIConfigurationPreloader *)self setLoadedConfiguration:v6];
  [(SUUIConfigurationPreloader *)self setPendingReloadOperation:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(SUUIConfigurationPreloader *)self completionBlocks];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [(SUUIConfigurationPreloader *)self completionBlocks];
  [v13 removeAllObjects];
}

- (void)preloadConfigurationForPurpose:(uint64_t)a1 withCompletionBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIConfigurationPreloader.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

@end