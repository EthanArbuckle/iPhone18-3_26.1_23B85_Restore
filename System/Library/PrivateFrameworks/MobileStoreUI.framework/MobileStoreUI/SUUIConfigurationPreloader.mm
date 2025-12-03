@interface SUUIConfigurationPreloader
- (BOOL)hasExistingConfigurationCache;
- (SUUIConfigurationPreloader)init;
- (SUUIConfigurationPreloader)initWithConfigurationCachePath:(id)path;
- (void)finishPreloadingConfiguration:(id)configuration error:(id)error;
- (void)preloadConfigurationForPurpose:(int64_t)purpose withCompletionBlock:(id)block;
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  configurationCachePath = [(SUUIConfigurationPreloader *)self configurationCachePath];
  v5 = [defaultManager fileExistsAtPath:configurationCachePath];

  return v5;
}

- (SUUIConfigurationPreloader)initWithConfigurationCachePath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = SUUIConfigurationPreloader;
  v5 = [(SUUIConfigurationPreloader *)&v13 init];
  if (v5)
  {
    v6 = [pathCopy copy];
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

- (void)preloadConfigurationForPurpose:(int64_t)purpose withCompletionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [SUUIConfigurationPreloader preloadConfigurationForPurpose:a2 withCompletionBlock:self];
  }

  loadedConfiguration = [(SUUIConfigurationPreloader *)self loadedConfiguration];

  if (loadedConfiguration)
  {
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__SUUIConfigurationPreloader_preloadConfigurationForPurpose_withCompletionBlock___block_invoke_3;
    v21[3] = &unk_2798F5D58;
    v21[4] = self;
    v22 = blockCopy;
    [mainQueue addOperationWithBlock:v21];
  }

  else if (purpose || ![(SUUIConfigurationPreloader *)self hasExistingConfigurationCache])
  {
    completionBlocks = [(SUUIConfigurationPreloader *)self completionBlocks];
    v11 = [blockCopy copy];
    v12 = _Block_copy(v11);
    [completionBlocks addObject:v12];

    pendingReloadOperation = [(SUUIConfigurationPreloader *)self pendingReloadOperation];

    if (!pendingReloadOperation)
    {
      newReloadConfigurationOperation = [(SUUIConfigurationPreloader *)self newReloadConfigurationOperation];
      [(SUUIConfigurationPreloader *)self setPendingReloadOperation:newReloadConfigurationOperation];

      if (purpose == 2)
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
      pendingReloadOperation2 = [(SUUIConfigurationPreloader *)self pendingReloadOperation];
      [pendingReloadOperation2 setOutputBlock:v23];

      workQueue = [(SUUIConfigurationPreloader *)self workQueue];
      pendingReloadOperation3 = [(SUUIConfigurationPreloader *)self pendingReloadOperation];
      [workQueue addOperation:pendingReloadOperation3];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, MEMORY[0x277CBEC10], 0);
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

- (void)finishPreloadingConfiguration:(id)configuration error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  errorCopy = error;
  [(SUUIConfigurationPreloader *)self setLoadedConfiguration:configurationCopy];
  [(SUUIConfigurationPreloader *)self setPendingReloadOperation:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  completionBlocks = [(SUUIConfigurationPreloader *)self completionBlocks];
  v9 = [completionBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(completionBlocks);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [completionBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  completionBlocks2 = [(SUUIConfigurationPreloader *)self completionBlocks];
  [completionBlocks2 removeAllObjects];
}

- (void)preloadConfigurationForPurpose:(uint64_t)a1 withCompletionBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIConfigurationPreloader.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

@end