@interface MRAVRoutingClientController
- (MRAVRoutingClientController)initWithMediaRemoteService:(id)service;
- (void)_cacheFetchedPickableRoutes:(void *)routes forCategory:;
- (void)_flushPendingCompletionHandlersWithPickableRoutes:(void *)routes forCategory:;
- (void)_pickableRoutesDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)fetchPickableRoutesForCategory:(id)category completion:(id)completion;
@end

@implementation MRAVRoutingClientController

- (MRAVRoutingClientController)initWithMediaRemoteService:(id)service
{
  serviceCopy = service;
  v22.receiver = self;
  v22.super_class = MRAVRoutingClientController;
  v7 = [(MRAVRoutingClientController *)&v22 init];
  if (v7)
  {
    if (!serviceCopy)
    {
      [(MRAVRoutingClientController *)a2 initWithMediaRemoteService:v7];
    }

    objc_storeStrong(&v7->_mediaRemoteService, service);
    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.mediaremote.MRAVRoutingClientController.callbackQueue", v13);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingCompletionHandlersForCategories = v7->_pendingCompletionHandlersForCategories;
    v7->_pendingCompletionHandlersForCategories = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedRoutesForCategories = v7->_cachedRoutesForCategories;
    v7->_cachedRoutesForCategories = v18;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__pickableRoutesDidChangeNotification_ name:@"kMRMediaRemotePickableRoutesDidChangeNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRAVRoutingClientController;
  [(MRAVRoutingClientController *)&v4 dealloc];
}

- (void)fetchPickableRoutesForCategory:(id)category completion:(id)completion
{
  categoryCopy = category;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MRAVRoutingClientController_fetchPickableRoutesForCategory_completion___block_invoke;
  block[3] = &unk_1E769E410;
  if (!categoryCopy)
  {
    categoryCopy = @"MRAVRoutingActiveCategoryName";
  }

  block[4] = self;
  v12 = categoryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = categoryCopy;
  dispatch_sync(serialQueue, block);
}

void __73__MRAVRoutingClientController_fetchPickableRoutesForCategory_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = [v2 count];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(a1 + 32) + 32) setObject:v2 forKey:*(a1 + 40)];
  }

  v4 = [*(a1 + 48) copy];
  [v2 addObject:v4];

  if (!v3)
  {
    v5 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__MRAVRoutingClientController_fetchPickableRoutesForCategory_completion___block_invoke_3;
      block[3] = &unk_1E769BA00;
      block[4] = v7;
      v16 = v5;
      v17 = *(a1 + 40);
      dispatch_async(v8, block);
    }

    else
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (v9 == @"MRAVRoutingActiveCategoryName")
      {
        v11 = 0;
      }

      else
      {
        v11 = *(a1 + 40);
      }

      v12 = *(v10 + 8);
      v13 = *(v10 + 24);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __73__MRAVRoutingClientController_fetchPickableRoutesForCategory_completion___block_invoke_2;
      v18[3] = &unk_1E76A0A20;
      v18[4] = v10;
      v19 = v9;
      v14 = v11;
      MRMediaRemoteServiceCopyPickableRoutes(v12, v14, v13, v18);
    }
  }
}

void __73__MRAVRoutingClientController_fetchPickableRoutesForCategory_completion___block_invoke_2(uint64_t a1, void *a2)
{
  [(MRAVRoutingClientController *)*(a1 + 32) _cacheFetchedPickableRoutes:a2 forCategory:*(a1 + 40)];
  [(MRAVRoutingClientController *)*(a1 + 32) _flushPendingCompletionHandlersWithPickableRoutes:a2 forCategory:*(a1 + 40)];
}

- (void)_flushPendingCompletionHandlersWithPickableRoutes:(void *)routes forCategory:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  routesCopy = routes;
  v7 = routesCopy;
  if (self)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29;
    v25 = __Block_byref_object_dispose__29;
    v26 = 0;
    v8 = *(self + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__MRAVRoutingClientController__flushPendingCompletionHandlersWithPickableRoutes_forCategory___block_invoke;
    block[3] = &unk_1E769D1B8;
    block[4] = self;
    v19 = routesCopy;
    v20 = &v21;
    dispatch_sync(v8, block);
    if (!v5)
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v22[5];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v27 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v27 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(&v21, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_pickableRoutesDidChangeNotification:(id)notification
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MRAVRoutingClientController__pickableRoutesDidChangeNotification___block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __71__MRAVRoutingClientController__cacheFetchedPickableRoutes_forCategory___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 40);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

void __93__MRAVRoutingClientController__flushPendingCompletionHandlersWithPickableRoutes_forCategory___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [v5 removeAllObjects];
}

- (void)_cacheFetchedPickableRoutes:(void *)routes forCategory:
{
  v5 = a2;
  routesCopy = routes;
  if (self)
  {
    v7 = *(self + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MRAVRoutingClientController__cacheFetchedPickableRoutes_forCategory___block_invoke;
    block[3] = &unk_1E769BA00;
    v9 = v5;
    selfCopy = self;
    v11 = routesCopy;
    dispatch_sync(v7, block);
  }
}

- (void)initWithMediaRemoteService:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVRoutingClientController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"service"}];
}

@end