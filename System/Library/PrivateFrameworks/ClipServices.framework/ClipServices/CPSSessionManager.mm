@interface CPSSessionManager
+ (CPSSessionManager)sharedManager;
- (CPSSessionManager)init;
- (NSArray)allSessions;
- (id)sessionWithURL:(id)l createIfNoExist:(BOOL)exist;
- (void)_handleMemoryPressure:(unint64_t)pressure;
- (void)_localeChanged:(id)changed;
- (void)_setUpMemoryPressureHandler;
- (void)clearSessionWithURL:(id)l;
- (void)getSessionWithURL:(id)l configuration:(id)configuration completion:(id)completion;
- (void)handleManagedConfigurationChanged;
@end

@implementation CPSSessionManager

+ (CPSSessionManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[CPSSessionManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __34__CPSSessionManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(CPSSessionManager);

  return MEMORY[0x2821F96F8]();
}

- (CPSSessionManager)init
{
  v17.receiver = self;
  v17.super_class = CPSSessionManager;
  v2 = [(CPSSessionManager *)&v17 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessions = v2->_sessions;
    v2->_sessions = dictionary;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.ClipServices.clipserviced.CPSSessionManager", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_alloc_init(CPSBusinessItemFetcher);
    businessItemFetcher = v2->_businessItemFetcher;
    v2->_businessItemFetcher = v8;

    v10 = objc_alloc_init(CPSAppInfoFetcher);
    appInfoFetcher = v2->_appInfoFetcher;
    v2->_appInfoFetcher = v10;

    v12 = [[CPSInstallationController alloc] initWithAppInfoFetcher:v2->_appInfoFetcher];
    clipInstaller = v2->_clipInstaller;
    v2->_clipInstaller = v12;

    [(CPSSessionManager *)v2 _setUpMemoryPressureHandler];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__localeChanged_ name:*MEMORY[0x277CBE620] object:0];

    v15 = v2;
  }

  return v2;
}

- (void)_setUpMemoryPressureHandler
{
  v3 = dispatch_source_create(MEMORY[0x277D85D18], 0, 2uLL, 0);
  memoryPressureSource = self->_memoryPressureSource;
  self->_memoryPressureSource = v3;

  objc_initWeak(&location, self);
  v5 = self->_memoryPressureSource;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CPSSessionManager__setUpMemoryPressureHandler__block_invoke;
  v6[3] = &unk_278DCE2A0;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  dispatch_resume(self->_memoryPressureSource);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__CPSSessionManager__setUpMemoryPressureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    data = dispatch_source_get_data(*(WeakRetained + 3));
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_DEFAULT, "Received memory warning", buf, 2u);
    }

    v5 = v2[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__CPSSessionManager__setUpMemoryPressureHandler__block_invoke_9;
    v6[3] = &unk_278DCE278;
    v6[4] = v2;
    v6[5] = data;
    dispatch_async(v5, v6);
  }
}

- (void)_handleMemoryPressure:(unint64_t)pressure
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_DEFAULT, "Handling memory pressure (warning) by purging cached sessions.", buf, 2u);
  }

  allValues = [(NSMutableDictionary *)self->_sessions allValues];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isPurgeable])
        {
          sessions = self->_sessions;
          v12 = [v10 url];
          [(NSMutableDictionary *)sessions removeObjectForKey:v12];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleManagedConfigurationChanged
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CPSSessionManager_handleManagedConfigurationChanged__block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __54__CPSSessionManager_handleManagedConfigurationChanged__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [*(*(a1 + 32) + 8) allValues];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 metadata];
        v8 = [v7 invocationPolicy];
        v9 = [v8 isIneligibleDueToContentRestriction];

        if (v9)
        {
          v10 = [MEMORY[0x277CBEAA8] date];
          v11 = [v6 metadata];
          [v11 setExpirationDate:v10];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)allSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__CPSSessionManager_allSessions__block_invoke;
  v5[3] = &unk_278DCE2C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__CPSSessionManager_allSessions__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)sessionWithURL:(id)l createIfNoExist:(BOOL)exist
{
  lCopy = l;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CPSSessionManager_sessionWithURL_createIfNoExist___block_invoke;
  v11[3] = &unk_278DCE2F0;
  v12 = lCopy;
  v13 = &v15;
  v11[4] = self;
  existCopy = exist;
  v8 = lCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __52__CPSSessionManager_sessionWithURL_createIfNoExist___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 56) == 1)
  {
    v5 = [[CPSSession alloc] initWithURL:*(a1 + 40) usingQueue:*(*(a1 + 32) + 16)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 48) + 8) + 40) setBusinessItemFetcher:*(*(a1 + 32) + 56)];
    [*(*(*(a1 + 48) + 8) + 40) setAppInfoFetcher:*(*(a1 + 32) + 48)];
    v8 = *(a1 + 40);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(*(a1 + 32) + 8);

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (void)clearSessionWithURL:(id)l
{
  lCopy = l;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CPSSessionManager_clearSessionWithURL___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_async(queue, v7);
}

uint64_t __41__CPSSessionManager_clearSessionWithURL___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);
    v5 = v2;
    v6 = [v4 objectForKeyedSubscript:v3];
    v7 = *(a1 + 40);
    v10 = 138412547;
    v11 = v6;
    v12 = 2113;
    v13 = v7;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "Clearing session: %@ for URL: %{private}@", &v10, 0x16u);
  }

  result = [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getSessionWithURL:(id)l configuration:(id)configuration completion:(id)completion
{
  lCopy = l;
  configurationCopy = configuration;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__CPSSessionManager_getSessionWithURL_configuration_completion___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = lCopy;
  v17 = configurationCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = configurationCopy;
  v14 = lCopy;
  dispatch_async(queue, v15);
}

void __64__CPSSessionManager_getSessionWithURL_configuration_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 metadata];
  v4 = [v3 isExpired];

  if (v4)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412547;
      v36 = v2;
      v37 = 2117;
      v38 = v6;
      _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "Metadata associated with cached session: %@ for url: %{sensitive}@ is expired. Clearing and refetching metadata.", buf, 0x16u);
    }

    [v2 clearMetadataAndRefetch];
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_24;
  }

  if (v2 && ([v7 usedByPPT] & 1) == 0)
  {
    v15 = [v2 configuration];
    if (v15)
    {
      v16 = v15;
      if ([*(a1 + 48) useLocalContent])
      {

LABEL_23:
        v28 = [*(a1 + 48) isForSwitcherOverlay];
        v29 = [v2 configuration];
        [v29 setIsForSwitcherOverlay:v28];

LABEL_24:
        v30 = *(a1 + 56);
        v9 = [v2 metadata];
        v18 = [v9 clipBundleID];
        (*(v30 + 16))(v30, v2, v18);
        goto LABEL_25;
      }

      v20 = [v2 configuration];
      v21 = [v20 sourceBundleID];
      v22 = [*(a1 + 48) sourceBundleID];
      if ([v21 isEqualToString:v22])
      {
        v23 = [v2 configuration];
        v24 = [v23 referrerBundleID];
        v25 = [*(a1 + 48) referrerBundleID];
        if ([v24 isEqualToString:v25])
        {
          v32 = [v2 configuration];
          v26 = [v32 launchReason];
          [*(a1 + 48) launchReason];
          v27 = v33 = v23;
          v34 = [v26 isEqualToString:v27];

          if (v34)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }

LABEL_22:
    [v2 setConfiguration:*(a1 + 48)];
    goto LABEL_23;
  }

  v8 = [[CPSSession alloc] initWithURL:*(a1 + 40) usingQueue:*(*(a1 + 32) + 16) configuration:*(a1 + 48)];

  v9 = [CPSDeveloperOverride overrideForURL:*(a1 + 40)];
  if (v9)
  {
    v10 = [[CPSClipMetadata alloc] initWithDeveloperOverride:v9 invocationURL:*(a1 + 40)];
    [(CPSSession *)v8 setPreloadedMetadata:v10];

    v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(CPSSession *)v8 logID];
      v14 = [v9 clipBundleID];
      *buf = 138412547;
      v36 = v13;
      v37 = 2113;
      v38 = v14;
      _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_DEFAULT, "Use an overriden app clip experince for session: %@, bundleID: %{private}@", buf, 0x16u);
    }
  }

  else
  {
    [(CPSSession *)v8 setBusinessItemFetcher:*(*(a1 + 32) + 56)];
    [(CPSSession *)v8 setAppInfoFetcher:*(*(a1 + 32) + 48)];
  }

  [(CPSSession *)v8 setConfiguration:*(a1 + 48)];
  [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:*(a1 + 40)];
  v17 = *(a1 + 56);
  v18 = [(CPSSession *)v8 metadata];
  v19 = [v18 clipBundleID];
  (*(v17 + 16))(v17, v8, v19);

  v2 = v8;
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_localeChanged:(id)changed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CPSSessionManager__localeChanged___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CPSSessionManager__localeChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 48);
        v9 = [v7 metadata];
        v10 = [v9 clipBundleID];
        [v8 evictCachedMetadataForClipBundleID:v10];

        v11 = *(*(a1 + 32) + 8);
        v12 = [v7 url];
        [v11 removeObjectForKey:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end