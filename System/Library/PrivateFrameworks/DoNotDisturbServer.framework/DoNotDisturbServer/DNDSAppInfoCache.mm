@interface DNDSAppInfoCache
+ (id)_fallbackAppInfoByBundleIdentifier;
- (DNDSAppInfoCache)initWithKeybag:(id)keybag;
- (id)_cacheURL;
- (id)_fallbackAppInfoForBundleIdentifier:(id)identifier;
- (id)_installedBundleIdentifiers;
- (id)_parseAppStoreResponseForBundleIdentifiers:(id)identifiers response:(id)response data:(id)data error:(id)error;
- (id)_queue_bundleIdentifiersWithMissingInfo;
- (id)_sanitizeAppInfo:(id)info;
- (id)appInfoForBundleIdentifier:(id)identifier;
- (id)appInfoForBundleIdentifiers:(id)identifiers;
- (void)_fetchAppStoreInfoForBundleIdentifiers:(id)identifiers timeoutInterval:(double)interval limit:(unint64_t)limit completionHandler:(id)handler;
- (void)_fetchIconForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler;
- (void)_fetchIconsForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler;
- (void)_queue_fetchMissingAppInfo;
- (void)_queue_monitorBundleIdentifiers:(id)identifiers;
- (void)_queue_read;
- (void)_queue_removeCachedDataForAppInfo:(id)info;
- (void)_queue_removeUnusedAppInfo;
- (void)_queue_write;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
- (void)monitorApplicationIdentifiers:(id)identifiers;
@end

@implementation DNDSAppInfoCache

- (DNDSAppInfoCache)initWithKeybag:(id)keybag
{
  keybagCopy = keybag;
  v23.receiver = self;
  v23.super_class = DNDSAppInfoCache;
  v6 = [(DNDSAppInfoCache *)&v23 init];
  if (v6)
  {
    v7 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.AppInfoCache"];
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    inflightBundleIdentifiers = v6->_inflightBundleIdentifiers;
    v6->_inflightBundleIdentifiers = v9;

    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    mEMORY[0x277CCACD8] = [MEMORY[0x277CCACD8] sharedURLCache];
    [ephemeralSessionConfiguration setURLCache:mEMORY[0x277CCACD8]];

    [ephemeralSessionConfiguration setRequestCachePolicy:2];
    [ephemeralSessionConfiguration setHTTPShouldUsePipelining:1];
    v13 = objc_opt_new();
    [v13 setName:@"com.apple.donotdisturb.iconcache"];
    [v13 setUnderlyingQueue:v6->_queue];
    v14 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:v13];
    urlSession = v6->_urlSession;
    v6->_urlSession = v14;

    v16 = v6->_urlSession;
    name = [v13 name];
    [(NSURLSession *)v16 setSessionDescription:name];

    objc_storeStrong(&v6->_keybag, keybag);
    [(DNDSKeybagStateProviding *)v6->_keybag addObserver:v6];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v6];

    v19 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__DNDSAppInfoCache_initWithKeybag___block_invoke;
    block[3] = &unk_278F89ED0;
    v22 = v6;
    dispatch_async(v19, block);
  }

  return v6;
}

- (void)monitorApplicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DNDSAppInfoCache_monitorApplicationIdentifiers___block_invoke;
  v7[3] = &unk_278F89F48;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(queue, v7);
}

void __50__DNDSAppInfoCache_monitorApplicationIdentifiers___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) bundleID];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _queue_monitorBundleIdentifiers:v2];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)appInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DNDSAppInfoCache_appInfoForBundleIdentifier___block_invoke;
  block[3] = &unk_278F8ACF0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__DNDSAppInfoCache_appInfoForBundleIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  if (*(*(a1[6] + 8) + 40))
  {
    [v5 _sanitizeAppInfo:?];
  }

  else
  {
    [v5 _fallbackAppInfoForBundleIdentifier:a1[5]];
  }
  v6 = ;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[4];
  v10 = *(v9 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DNDSAppInfoCache_appInfoForBundleIdentifier___block_invoke_2;
  block[3] = &unk_278F89ED0;
  block[4] = v9;
  dispatch_async(v10, block);
}

- (id)appInfoForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDSAppInfoCache_appInfoForBundleIdentifiers___block_invoke;
  block[3] = &unk_278F89E30;
  v13 = identifiersCopy;
  selfCopy = self;
  v7 = dictionary;
  v15 = v7;
  v8 = identifiersCopy;
  dispatch_sync(queue, block);
  v9 = v15;
  v10 = v7;

  return v7;
}

void __48__DNDSAppInfoCache_appInfoForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v7];
        v9 = *(a1 + 40);
        if (v8)
        {
          v10 = [v9 _sanitizeAppInfo:v8];
        }

        else
        {
          v10 = [v9 _fallbackAppInfoForBundleIdentifier:v7];
        }

        [*(a1 + 48) setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDSAppInfoCache_appInfoForBundleIdentifiers___block_invoke_2;
  block[3] = &unk_278F89ED0;
  block[4] = v11;
  dispatch_async(v12, block);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DNDSAppInfoCache_keybagDidUnlockForTheFirstTime___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__DNDSAppInfoCache_keybagDidUnlockForTheFirstTime___block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 8);
  [*(a1 + 32) _queue_read];
  v2 = v3;
  if (v3)
  {
    [*(a1 + 32) _queue_monitorBundleIdentifiers:v3];
    v2 = v3;
  }
}

- (void)applicationsDidInstall:(id)install
{
  v4 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "App was installed", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DNDSAppInfoCache_applicationsDidInstall___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v4 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "App was removed", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DNDSAppInfoCache_applicationsDidUninstall___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_cacheURL
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = BSCurrentUserDirectory();
  v8[0] = v3;
  v8[1] = @"Library";
  v8[2] = @"DoNotDisturb";
  v8[3] = @"DB";
  v8[4] = @"IconCache";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v5 = [v2 fileURLWithPathComponents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_queue_write
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to write metadata store: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_read
{
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    appInfoByBundleIdentifier = self->_appInfoByBundleIdentifier;
    self->_appInfoByBundleIdentifier = dictionary;

    _cacheURL = [(DNDSAppInfoCache *)self _cacheURL];
    v23 = [_cacheURL URLByAppendingPathComponent:@"AppInfoMetadata.plist"];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v5 = [v22 objectForKeyedSubscript:@"appInfo"];
    v6 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277D058B0] newWithDictionaryRepresentation:*(*(&v25 + 1) + 8 * i) context:v6];
          applicationIdentifier = [v12 applicationIdentifier];
          bundleID = [applicationIdentifier bundleID];

          [(NSMutableDictionary *)self->_appInfoByBundleIdentifier setObject:v12 forKeyedSubscript:bundleID];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v15 = MEMORY[0x277CBEB98];
    v16 = [v22 objectForKeyedSubscript:@"monitoredBundleIdentifiers"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    v19 = [v15 setWithArray:v18];

    [(DNDSAppInfoCache *)self _queue_monitorBundleIdentifiers:v19];
  }

  else
  {
    v20 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Will not read cache as keybag is locked", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAppStoreInfoForBundleIdentifiers:(id)identifiers timeoutInterval:(double)interval limit:(unint64_t)limit completionHandler:(id)handler
{
  v38[4] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    if ([identifiersCopy count])
    {
      v12 = [MEMORY[0x277CCACE0] componentsWithString:@"https://itunes.apple.com/lookup"];
      v13 = MEMORY[0x277CCAD18];
      allObjects = [identifiersCopy allObjects];
      v15 = [allObjects componentsJoinedByString:{@", "}];
      v16 = [v13 queryItemWithName:@"bundleId" value:v15];

      v17 = MEMORY[0x277CCAD18];
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      countryCode = [currentLocale countryCode];
      v20 = [v17 queryItemWithName:@"country" value:countryCode];

      v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"entity" value:{@"software, iPadSoftware, macSoftware"}];
      v22 = MEMORY[0x277CCAD18];
      limit = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", limit];
      v24 = [v22 queryItemWithName:@"limit" value:limit];

      v38[0] = v16;
      v38[1] = v20;
      v38[2] = v21;
      v38[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
      [v12 setQueryItems:v25];

      objc_initWeak(&location, self);
      v26 = MEMORY[0x277CCAD20];
      v27 = [v12 URL];
      if (interval <= 0.0)
      {
        [v26 requestWithURL:v27];
      }

      else
      {
        [v26 requestWithURL:v27 cachePolicy:2 timeoutInterval:interval];
      }
      v29 = ;

      urlSession = self->_urlSession;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __99__DNDSAppInfoCache__fetchAppStoreInfoForBundleIdentifiers_timeoutInterval_limit_completionHandler___block_invoke;
      v33[3] = &unk_278F8B410;
      objc_copyWeak(&v36, &location);
      v34 = identifiersCopy;
      v35 = handlerCopy;
      v31 = [(NSURLSession *)urlSession dataTaskWithRequest:v29 completionHandler:v33];
      [v31 resume];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v28 = DNDSLogGeneral;
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Will not fetch app info as keybag is locked", &location, 2u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __99__DNDSAppInfoCache__fetchAppStoreInfoForBundleIdentifiers_timeoutInterval_limit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained _parseAppStoreResponseForBundleIdentifiers:*(a1 + 32) response:v8 data:v9 error:v7];

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchIconsForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dispatch_group_create();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = infoCopy;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        dispatch_group_enter(v10);
        v17 = [v11 objectForKeyedSubscript:v16];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __76__DNDSAppInfoCache__fetchIconsForAppInfo_timeoutInterval_completionHandler___block_invoke;
        v26[3] = &unk_278F8B438;
        v27 = dictionary;
        v28 = v16;
        v29 = v10;
        [(DNDSAppInfoCache *)self _fetchIconForAppInfo:v17 timeoutInterval:v26 completionHandler:interval];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__DNDSAppInfoCache__fetchIconsForAppInfo_timeoutInterval_completionHandler___block_invoke_2;
  block[3] = &unk_278F8B460;
  v24 = dictionary;
  v25 = handlerCopy;
  v19 = dictionary;
  v20 = handlerCopy;
  dispatch_group_notify(v10, queue, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __76__DNDSAppInfoCache__fetchIconsForAppInfo_timeoutInterval_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

- (void)_fetchIconForAppInfo:(id)info timeoutInterval:(double)interval completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v10 = [infoCopy mutableCopy];
  storeIconURL = [v10 storeIconURL];

  if (storeIconURL)
  {
    v12 = MEMORY[0x277CCAD20];
    storeIconURL2 = [infoCopy storeIconURL];
    if (interval <= 0.0)
    {
      [v12 requestWithURL:storeIconURL2];
    }

    else
    {
      [v12 requestWithURL:storeIconURL2 cachePolicy:2 timeoutInterval:interval];
    }
    v16 = ;

    urlSession = self->_urlSession;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__DNDSAppInfoCache__fetchIconForAppInfo_timeoutInterval_completionHandler___block_invoke;
    v23[3] = &unk_278F8B488;
    v24 = infoCopy;
    selfCopy = self;
    v26 = v10;
    v27 = handlerCopy;
    v17 = handlerCopy;
    v15 = v10;
    v19 = [(NSURLSession *)urlSession downloadTaskWithRequest:v16 completionHandler:v23];
    [v19 resume];
  }

  else
  {
    queue = self->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__DNDSAppInfoCache__fetchIconForAppInfo_timeoutInterval_completionHandler___block_invoke_78;
    v20[3] = &unk_278F8B460;
    v21 = v10;
    v22 = handlerCopy;
    v15 = handlerCopy;
    v16 = v10;
    dispatch_async(queue, v20);

    v17 = v22;
  }
}

void __75__DNDSAppInfoCache__fetchIconForAppInfo_timeoutInterval_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!a4)
  {
    v7 = [*(a1 + 32) storeIconURL];
    v8 = [v7 pathExtension];

    v9 = MEMORY[0x277CCACA8];
    v10 = [*(a1 + 32) applicationIdentifier];
    v11 = [v10 bundleID];
    v12 = MEMORY[0x277CCABB0];
    v13 = [*(a1 + 32) applicationIdentifier];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "platform")}];
    v15 = [v9 stringWithFormat:@"%@_%@.%@", v11, v14, v8];

    v16 = [*(a1 + 40) _cacheURL];
    v17 = MEMORY[0x277CBEBC0];
    v18 = [v16 path];
    v40[0] = v18;
    v40[1] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v20 = [v17 fileURLWithPathComponents:v19];

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v33 = 0;
    [v21 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v33];
    v22 = v33;

    if (v22)
    {
      if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [DNDSAppInfoCache _queue_write];
      }

      v23 = 0;
    }

    else
    {
      v24 = [MEMORY[0x277CCAA00] defaultManager];
      [v24 removeItemAtURL:v20 error:0];

      v25 = [MEMORY[0x277CCAA00] defaultManager];
      v32 = 0;
      [v25 copyItemAtURL:v6 toURL:v20 error:&v32];
      v23 = v32;

      if (v23)
      {
        v26 = DNDSLogGeneral;
        if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 32);
          v28 = v26;
          v29 = [v27 applicationIdentifier];
          *buf = 138478339;
          v35 = v29;
          v36 = 2113;
          v37 = v20;
          v38 = 2114;
          v39 = v23;
          _os_log_error_impl(&dword_24912E000, v28, OS_LOG_TYPE_ERROR, "Could not copy icon for %{private}@ to %{private}@: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        [*(a1 + 48) setCachedIconURL:v20];
      }
    }
  }

  v30 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v31 = *MEMORY[0x277D85DE8];
}

- (id)_parseAppStoreResponseForBundleIdentifiers:(id)identifiers response:(id)response data:(id)data error:(id)error
{
  v56 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  v13 = errorCopy;
  if (!dataCopy || errorCopy)
  {
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppInfoCache _parseAppStoreResponseForBundleIdentifiers:response:data:error:];
    }

    dictionary = 0;
  }

  else
  {
    v50 = 0;
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v50];
    v15 = v50;
    v16 = v15;
    if (v14)
    {
      v38 = v15;
      v40 = dataCopy;
      v41 = responseCopy;
      v42 = identifiersCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v39 = v14;
      [v14 bs_safeArrayForKey:@"results"];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v49 = 0u;
      v17 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = v17;
      v19 = @"bundleId";
      v45 = *v47;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v46 + 1) + 8 * i);
          v22 = [v21 bs_safeStringForKey:v19];
          v23 = [v21 bs_safeStringForKey:@"trackName"];
          v24 = [v21 bs_safeStringForKey:@"artworkUrl100"];
          v25 = [v21 bs_safeStringForKey:@"kind"];
          if (![v22 length])
          {
            v27 = DNDSLogGeneral;
            if (!os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            *buf = 138543362;
            v52 = v21;
            v28 = v27;
            v29 = "Unable to parse store response, bundle identifier is missing: %{public}@";
LABEL_18:
            _os_log_error_impl(&dword_24912E000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
            goto LABEL_28;
          }

          if (![v23 length])
          {
            v30 = DNDSLogGeneral;
            if (!os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_28;
            }

            *buf = 138543362;
            v52 = v21;
            v28 = v30;
            v29 = "Unable to parse store response, display name is missing: %{public}@";
            goto LABEL_18;
          }

          if ([v25 isEqualToString:@"software"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"ipad-software"))
          {
            v26 = 1;
          }

          else if ([v25 isEqualToString:@"mac-software"])
          {
            v26 = 2;
          }

          else
          {
            v26 = 0;
          }

          v31 = v19;
          v32 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v22 platform:v26];
          v33 = objc_alloc_init(MEMORY[0x277D059F8]);
          [v33 setSource:2];
          [v33 setDisplayName:v23];
          [v33 setApplicationIdentifier:v32];
          if ([v24 length])
          {
            v34 = [MEMORY[0x277CBEBC0] URLWithString:v24];
            [v33 setStoreIconURL:v34];
          }

          else
          {
            [v33 setStoreIconURL:0];
          }

          [dictionary setObject:v33 forKeyedSubscript:v22];
          v35 = DNDSLogGeneral;
          if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v52 = v22;
            v53 = 2113;
            v54 = v33;
            _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Got app %{private}@ details from the store: %{private}@", buf, 0x16u);
          }

          v19 = v31;
LABEL_28:
        }

        v18 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (!v18)
        {
LABEL_30:

          responseCopy = v41;
          identifiersCopy = v42;
          v13 = 0;
          dataCopy = v40;
          v16 = v38;
          v14 = v39;
          goto LABEL_37;
        }
      }
    }

    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppInfoCache _parseAppStoreResponseForBundleIdentifiers:response:data:error:];
    }

    dictionary = 0;
LABEL_37:
  }

  v36 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)_queue_removeCachedDataForAppInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  appInfoByBundleIdentifier = self->_appInfoByBundleIdentifier;
  applicationIdentifier = [infoCopy applicationIdentifier];
  bundleID = [applicationIdentifier bundleID];
  [(NSMutableDictionary *)appInfoByBundleIdentifier setObject:0 forKeyedSubscript:bundleID];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cachedIconURL = [infoCopy cachedIconURL];
  v15 = 0;
  [defaultManager removeItemAtURL:cachedIconURL error:&v15];
  v10 = v15;

  v11 = DNDSLogGeneral;
  if (v10)
  {
    if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [(DNDSAppInfoCache *)v11 _queue_removeCachedDataForAppInfo:infoCopy, v10];
    }
  }

  else if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    applicationIdentifier2 = [infoCopy applicationIdentifier];
    *buf = 138477827;
    v17 = applicationIdentifier2;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Cleaned up %{private}@", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeUnusedAppInfo
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier allKeys];
  v5 = [v3 setWithArray:allKeys];

  v6 = [v5 mutableCopy];
  [v6 minusSet:self->_relevantBundleIdentifiers];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v11), v14];
        [(DNDSAppInfoCache *)self _queue_removeCachedDataForAppInfo:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_monitorBundleIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_queue);
  v6 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifiersCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Monitoring bundle identifiers: %{public}@", &v13, 0xCu);
  }

  monitoredBundleIdentifiers = self->_monitoredBundleIdentifiers;
  if (monitoredBundleIdentifiers == identifiersCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (identifiersCopy && monitoredBundleIdentifiers)
    {
      v8 = [(NSSet *)monitoredBundleIdentifiers isEqual:identifiersCopy]^ 1;
    }
  }

  objc_storeStrong(&self->_monitoredBundleIdentifiers, identifiers);
  _installedBundleIdentifiers = [(DNDSAppInfoCache *)self _installedBundleIdentifiers];
  v10 = [(NSSet *)identifiersCopy mutableCopy];
  [(NSSet *)v10 minusSet:_installedBundleIdentifiers];
  objc_storeStrong(&self->_relevantBundleIdentifiers, v10);
  v11 = DNDSLogGeneral;
  if (os_log_type_enabled(DNDSLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Relevant bundle identifiers: %{public}@", &v13, 0xCu);
  }

  [(DNDSAppInfoCache *)self _queue_removeUnusedAppInfo];
  if ([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot])
  {
    if (v8)
    {
      [(DNDSAppInfoCache *)self _queue_write];
    }

    [(DNDSAppInfoCache *)self _queue_fetchMissingAppInfo];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_queue_bundleIdentifiersWithMissingInfo
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_relevantBundleIdentifiers;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_appInfoByBundleIdentifier objectForKeyedSubscript:v9, v15];
        v11 = v10;
        if (!v10 || ([v10 cachedIconURL], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_queue_fetchMissingAppInfo
{
  _queue_bundleIdentifiersWithMissingInfo = [(DNDSAppInfoCache *)self _queue_bundleIdentifiersWithMissingInfo];
  allObjects = [_queue_bundleIdentifiersWithMissingInfo allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke;
  v5[3] = &unk_278F8B4D8;
  v5[4] = self;
  [allObjects enumerateBatchesOfSize:50 handler:v5];
}

void __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB58] setWithArray:a2];
  [v3 minusSet:*(*(a1 + 32) + 24)];
  [*(*(a1 + 32) + 24) unionSet:v3];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_2;
  v6[3] = &unk_278F8B4B0;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _fetchAppStoreInfoForBundleIdentifiers:v5 timeoutInterval:50 limit:v6 completionHandler:10.0];
}

void __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_3;
  v4[3] = &unk_278F8B4B0;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _fetchIconsForAppInfo:a2 timeoutInterval:v4 completionHandler:10.0];
}

void __46__DNDSAppInfoCache__queue_fetchMissingAppInfo__block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  [*(*(a1 + 32) + 24) minusSet:*(a1 + 40)];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 16) containsObject:{v9, v14}];
        v11 = [v4 objectForKeyedSubscript:v9];
        v12 = *(a1 + 32);
        if (v10)
        {
          [v12[4] setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          [v12 _queue_removeCachedDataForAppInfo:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) _queue_write];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_installedBundleIdentifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v2 addObject:bundleIdentifier];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_sanitizeAppInfo:(id)info
{
  infoCopy = info;
  applicationIdentifier = [infoCopy applicationIdentifier];
  bundleID = [applicationIdentifier bundleID];
  v7 = [(DNDSAppInfoCache *)self _fallbackAppInfoForBundleIdentifier:bundleID];

  if (v7)
  {
    v8 = [infoCopy mutableCopy];
    displayName = [v7 displayName];
    [v8 setDisplayName:displayName];

    v10 = [v8 copy];
  }

  else
  {
    v10 = infoCopy;
  }

  return v10;
}

- (id)_fallbackAppInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _fallbackAppInfoByBundleIdentifier = [objc_opt_class() _fallbackAppInfoByBundleIdentifier];
  v5 = [_fallbackAppInfoByBundleIdentifier objectForKeyedSubscript:identifierCopy];

  return v5;
}

+ (id)_fallbackAppInfoByBundleIdentifier
{
  if (_fallbackAppInfoByBundleIdentifier_fallbackAppInfoByBundleIdentifierOnceToken != -1)
  {
    +[DNDSAppInfoCache _fallbackAppInfoByBundleIdentifier];
  }

  v3 = _fallbackAppInfoByBundleIdentifier___fallbackAppInfoByBundleIdentifier;

  return v3;
}

void __54__DNDSAppInfoCache__fallbackAppInfoByBundleIdentifier__block_invoke()
{
  v67[21] = *MEMORY[0x277D85DE8];
  v66[0] = @"com.apple.NanoStopwatch";
  v0 = objc_alloc(MEMORY[0x277D058B0]);
  v65 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoStopwatch" platform:3];
  v64 = [v0 initWithSource:0 applicationIdentifier:v65 displayName:@"APP_NAME_STOPWATCH" storeIconURL:0 cachedIconURL:0];
  v67[0] = v64;
  v66[1] = @"com.apple.NanoMenstrualCycles";
  v1 = objc_alloc(MEMORY[0x277D058B0]);
  v63 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoMenstrualCycles" platform:3];
  v62 = [v1 initWithSource:0 applicationIdentifier:v63 displayName:@"APP_NAME_CYCLE_TRACKING" storeIconURL:0 cachedIconURL:0];
  v67[1] = v62;
  v66[2] = @"com.apple.watchmemojieditor";
  v2 = objc_alloc(MEMORY[0x277D058B0]);
  v61 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.watchmemojieditor" platform:3];
  v60 = [v2 initWithSource:0 applicationIdentifier:v61 displayName:@"APP_NAME_MEMOJI" storeIconURL:0 cachedIconURL:0];
  v67[2] = v60;
  v66[3] = @"com.apple.NanoHeartRhythm";
  v3 = objc_alloc(MEMORY[0x277D058B0]);
  v59 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoHeartRhythm" platform:3];
  v58 = [v3 initWithSource:0 applicationIdentifier:v59 displayName:@"APP_NAME_ECG" storeIconURL:0 cachedIconURL:0];
  v67[3] = v58;
  v66[4] = @"com.apple.private.NanoTimer";
  v4 = objc_alloc(MEMORY[0x277D058B0]);
  v57 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.private.NanoTimer" platform:3];
  v56 = [v4 initWithSource:0 applicationIdentifier:v57 displayName:@"APP_NAME_TIMER" storeIconURL:0 cachedIconURL:0];
  v67[4] = v56;
  v66[5] = @"com.apple.NanoOxygenSaturation.watchkitapp";
  v5 = objc_alloc(MEMORY[0x277D058B0]);
  v55 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoOxygenSaturation.watchkitapp" platform:3];
  v54 = [v5 initWithSource:0 applicationIdentifier:v55 displayName:@"APP_NAME_BLOOD_OXYGEN" storeIconURL:0 cachedIconURL:0];
  v67[5] = v54;
  v66[6] = @"com.apple.NanoAlarm";
  v6 = objc_alloc(MEMORY[0x277D058B0]);
  v53 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoAlarm" platform:3];
  v52 = [v6 initWithSource:0 applicationIdentifier:v53 displayName:@"APP_NAME_ALARMS" storeIconURL:0 cachedIconURL:0];
  v67[6] = v52;
  v66[7] = @"com.apple.NanoTips";
  v7 = objc_alloc(MEMORY[0x277D058B0]);
  v51 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoTips" platform:3];
  v50 = [v7 initWithSource:0 applicationIdentifier:v51 displayName:@"APP_NAME_TIPS" storeIconURL:0 cachedIconURL:0];
  v67[7] = v50;
  v66[8] = @"com.apple.NanoSleep.watchkitapp";
  v8 = objc_alloc(MEMORY[0x277D058B0]);
  v49 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoSleep.watchkitapp" platform:3];
  v48 = [v8 initWithSource:0 applicationIdentifier:v49 displayName:@"APP_NAME_SLEEP" storeIconURL:0 cachedIconURL:0];
  v67[8] = v48;
  v66[9] = @"com.apple.Mind";
  v9 = objc_alloc(MEMORY[0x277D058B0]);
  v47 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Mind" platform:3];
  v46 = [v9 initWithSource:0 applicationIdentifier:v47 displayName:@"APP_NAME_MINDFULNESS" storeIconURL:0 cachedIconURL:0];
  v67[9] = v46;
  v66[10] = @"com.apple.NanoNowPlaying";
  v10 = objc_alloc(MEMORY[0x277D058B0]);
  v45 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoNowPlaying" platform:3];
  v44 = [v10 initWithSource:0 applicationIdentifier:v45 displayName:@"APP_NAME_NOW_PLAYING" storeIconURL:0 cachedIconURL:0];
  v67[10] = v44;
  v66[11] = @"com.apple.Noise";
  v11 = objc_alloc(MEMORY[0x277D058B0]);
  v43 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Noise" platform:3];
  v42 = [v11 initWithSource:0 applicationIdentifier:v43 displayName:@"APP_NAME_NOISE" storeIconURL:0 cachedIconURL:0];
  v67[11] = v42;
  v66[12] = @"com.apple.NanoRemote";
  v12 = objc_alloc(MEMORY[0x277D058B0]);
  v41 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.NanoRemote" platform:3];
  v40 = [v12 initWithSource:0 applicationIdentifier:v41 displayName:@"APP_NAME_REMOTE" storeIconURL:0 cachedIconURL:0];
  v67[12] = v40;
  v66[13] = @"com.apple.HeartRate";
  v13 = objc_alloc(MEMORY[0x277D058B0]);
  v39 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.HeartRate" platform:3];
  v38 = [v13 initWithSource:0 applicationIdentifier:v39 displayName:@"APP_NAME_HEART_RATE" storeIconURL:0 cachedIconURL:0];
  v67[13] = v38;
  v66[14] = @"com.apple.MobileStore";
  v14 = objc_alloc(MEMORY[0x277D058B0]);
  v37 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.MobileStore" platform:1];
  v36 = [v14 initWithSource:0 applicationIdentifier:v37 displayName:@"APP_NAME_ITUNES_STORE" storeIconURL:0 cachedIconURL:0];
  v67[14] = v36;
  v66[15] = @"com.apple.Health";
  v15 = objc_alloc(MEMORY[0x277D058B0]);
  v35 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Health" platform:1];
  v34 = [v15 initWithSource:0 applicationIdentifier:v35 displayName:@"APP_NAME_HEALTH" storeIconURL:0 cachedIconURL:0];
  v67[15] = v34;
  v66[16] = @"com.apple.Bridge";
  v16 = objc_alloc(MEMORY[0x277D058B0]);
  v33 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Bridge" platform:1];
  v17 = [v16 initWithSource:0 applicationIdentifier:v33 displayName:@"APP_NAME_WATCH" storeIconURL:0 cachedIconURL:0];
  v67[16] = v17;
  v66[17] = @"com.apple.Passbook";
  v18 = objc_alloc(MEMORY[0x277D058B0]);
  v19 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.Passbook" platform:1];
  v20 = [v18 initWithSource:0 applicationIdentifier:v19 displayName:@"APP_NAME_WALLET" storeIconURL:0 cachedIconURL:0];
  v67[17] = v20;
  v66[18] = @"com.apple.camera";
  v21 = objc_alloc(MEMORY[0x277D058B0]);
  v22 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.camera" platform:1];
  v23 = [v21 initWithSource:0 applicationIdentifier:v22 displayName:@"APP_NAME_CAMERA" storeIconURL:0 cachedIconURL:0];
  v67[18] = v23;
  v66[19] = @"com.apple.store.Jolly";
  v24 = objc_alloc(MEMORY[0x277D058B0]);
  v25 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.store.Jolly" platform:1];
  v26 = [v24 initWithSource:0 applicationIdentifier:v25 displayName:@"APP_NAME_APPLE_STORE" storeIconURL:0 cachedIconURL:0];
  v67[19] = v26;
  v66[20] = @"com.apple.mobilephone";
  v27 = objc_alloc(MEMORY[0x277D058B0]);
  v28 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:@"com.apple.mobilephone" platform:1];
  v29 = [v27 initWithSource:0 applicationIdentifier:v28 displayName:@"APP_NAME_PHONE" storeIconURL:0 cachedIconURL:0];
  v67[20] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:21];
  v31 = _fallbackAppInfoByBundleIdentifier___fallbackAppInfoByBundleIdentifier;
  _fallbackAppInfoByBundleIdentifier___fallbackAppInfoByBundleIdentifier = v30;

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_parseAppStoreResponseForBundleIdentifiers:response:data:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_24912E000, v0, v1, "App lookup of %{private}@ from store failed: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeCachedDataForAppInfo:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 cachedIconURL];
  OUTLINED_FUNCTION_0_2();
  v9 = a3;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Failed to removed cached icon at %{private}@: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end