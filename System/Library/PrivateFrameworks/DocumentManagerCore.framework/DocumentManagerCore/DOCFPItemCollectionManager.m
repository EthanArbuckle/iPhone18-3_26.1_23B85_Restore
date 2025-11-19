@interface DOCFPItemCollectionManager
+ (id)sharedManager;
- (DOCFPItemCollectionManager)init;
- (NSArray)observingCollections;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForegroundNotification;
- (void)collectionDidStartObserving:(id)a3;
- (void)collectionDidStopObserving:(id)a3;
- (void)dealloc;
@end

@implementation DOCFPItemCollectionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DOCFPItemCollectionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_1 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1, block);
  }

  v2 = sharedManager_sharedMyManager;

  return v2;
}

uint64_t __43__DOCFPItemCollectionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedMyManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (DOCFPItemCollectionManager)init
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = DOCFPItemCollectionManager;
  v2 = [(DOCFPItemCollectionManager *)&v21 init];
  v3 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:100];
  activeCollections = v2->_activeCollections;
  v2->_activeCollections = v3;

  objc_initWeak(&location, v2);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__DOCFPItemCollectionManager_init__block_invoke;
  v18[3] = &unk_278F9C218;
  objc_copyWeak(&v19, &location);
  v6 = [v5 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v18];
  v22[0] = v6;
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __34__DOCFPItemCollectionManager_init__block_invoke_2;
  v16 = &unk_278F9C218;
  objc_copyWeak(&v17, &location);
  v8 = [v7 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:&v13];
  v22[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v13, v14, v15, v16}];
  notificationObservances = v2->_notificationObservances;
  v2->_notificationObservances = v9;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

void __34__DOCFPItemCollectionManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationWillEnterForegroundNotification];
}

- (void)applicationWillEnterForegroundNotification
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(DOCFPItemCollectionManager *)self observingCollections];
  v3 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v3 = docLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v2;
    _os_log_impl(&dword_249340000, v3, OS_LOG_TYPE_DEFAULT, "App will become foreground. Starting collections %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 workingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__DOCFPItemCollectionManager_applicationWillEnterForegroundNotification__block_invoke;
        block[3] = &unk_278F9B408;
        block[4] = v9;
        dispatch_async(v10, block);
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)observingCollections
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSCountedSet *)v2->_activeCollections allObjects];
  objc_sync_exit(v2);

  return v3;
}

void __34__DOCFPItemCollectionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationDidEnterBackground];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservances = self->_notificationObservances;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DOCFPItemCollectionManager_dealloc__block_invoke;
  v7[3] = &unk_278F9C240;
  v8 = v3;
  v5 = v3;
  [(NSArray *)notificationObservances enumerateObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = DOCFPItemCollectionManager;
  [(DOCFPItemCollectionManager *)&v6 dealloc];
}

- (void)applicationDidEnterBackground
{
  v3 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v3 = docLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249340000, v3, OS_LOG_TYPE_DEFAULT, "App did enter background. Calling process activity to suspend FPItemCollection enumeration", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke;
  v5[3] = &unk_278F9C268;
  v5[4] = self;
  [v4 performExpiringActivityWithReason:@"suspend FPItemCollection enumeration" usingBlock:v5];
}

void __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v4 = docLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = *(a1 + 32);
    v7 = v4;
    v8 = [v6 observingCollections];
    *buf = 138412546;
    v35 = v5;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_DEFAULT, "App did enter background. Now performing expiring activity [expired: %@] for collections %@", buf, 0x16u);
  }

  if ((a2 & 1) == 0)
  {
    v9 = [*(a1 + 32) observingCollections];
    if ([v9 count])
    {
      v10 = dispatch_group_create();
      [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v23 = v22 = v9;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        v15 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [v17 workingQueue];

            if (v18 == v15)
            {
              [v23 addObject:v17];
            }

            else
            {
              dispatch_group_enter(v10);
              v19 = [v17 workingQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_22;
              block[3] = &unk_278F9B430;
              block[4] = v17;
              v28 = v10;
              dispatch_async(v19, block);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v13);
      }

      if ([v23 count])
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_23;
        v24[3] = &unk_278F9B430;
        v25 = v10;
        v26 = v23;
        dispatch_async(MEMORY[0x277D85CD0], v24);
      }

      v20 = dispatch_time(0, 3000000000);
      dispatch_group_wait(v10, v20);

      v9 = v22;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_22(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_249340000, v2, OS_LOG_TYPE_DEFAULT, "App did enter background. Call stopObserving on working queue for collection %@", &v5, 0xCu);
  }

  [*(a1 + 32) stopObserving];
  dispatch_group_leave(*(a1 + 40));
  v4 = *MEMORY[0x277D85DE8];
}

void __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_23(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_group_enter(*(a1 + 32));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 138412290;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v9 = docLogHandle;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v11;
          v17 = v8;
          _os_log_impl(&dword_249340000, v9, OS_LOG_TYPE_DEFAULT, "App did enter background. Call stopObserving on main queue for collection %@", buf, 0xCu);
        }

        [v8 stopObserving];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));
  v10 = *MEMORY[0x277D85DE8];
}

- (void)collectionDidStartObserving:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSCountedSet *)v4->_activeCollections addObject:v5];
  objc_sync_exit(v4);
}

- (void)collectionDidStopObserving:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSCountedSet *)v4->_activeCollections removeObject:v5];
  objc_sync_exit(v4);
}

@end