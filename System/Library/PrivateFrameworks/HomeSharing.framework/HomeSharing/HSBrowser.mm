@interface HSBrowser
+ (id)homeSharingBrowserWithGroupID:(id)d;
- (HSBrowser)initWithBrowserType:(int64_t)type groupID:(id)d;
- (HSBrowserDelegate)delegate;
- (void)_removalTimerFired:(id)fired;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidResolveAddress:(id)address;
- (void)start;
- (void)stop;
@end

@implementation HSBrowser

- (HSBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  resolveCopy = resolve;
  v8 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    serviceBrowser = [(HSBrowser *)self serviceBrowser];
    name = [serviceCopy name];
    v11 = [resolveCopy objectForKeyedSubscript:*MEMORY[0x277CCA588]];
    v14 = 134218498;
    v15 = serviceBrowser;
    v16 = 2114;
    v17 = name;
    v18 = 2048;
    longLongValue = [v11 longLongValue];
    _os_log_impl(&dword_254418000, v8, OS_LOG_TYPE_ERROR, "Service browser: %p failed to resolve service '%{public}@' with error code: %lld", &v14, 0x20u);
  }

  resolvingServices = [(HSBrowser *)self resolvingServices];
  [resolvingServices removeObject:serviceCopy];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [serviceCopy removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)netServiceDidResolveAddress:(id)address
{
  v64 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  resolvingServices = [(HSBrowser *)self resolvingServices];
  [resolvingServices removeObject:addressCopy];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [addressCopy removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  name = [addressCopy name];
  v8 = MEMORY[0x277CCACE0];
  v9 = addressCopy;
  v10 = objc_alloc_init(v8);
  [v10 setScheme:@"http"];
  hostName = [v9 hostName];
  [v10 setHost:hostName];

  v12 = MEMORY[0x277CCABB0];
  port = [v9 port];

  v14 = [v12 numberWithInteger:port];
  [v10 setPort:v14];

  v15 = [v10 URL];

  v16 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    serviceBrowser = [(HSBrowser *)self serviceBrowser];
    *buf = 134218498;
    v59 = serviceBrowser;
    v60 = 2114;
    v61 = name;
    v62 = 2112;
    v63 = v15;
    _os_log_impl(&dword_254418000, v16, OS_LOG_TYPE_INFO, "Service browser: %p resolved service '%{public}@' base URL: %@", buf, 0x20u);
  }

  if (v15)
  {
    v18 = MEMORY[0x277CCAB78];
    tXTRecordData = [v9 TXTRecordData];
    v20 = [v18 dictionaryFromTXTRecordData:tXTRecordData];

    if (![(HSBrowser *)self browserType])
    {
      v53 = name;
      v52 = v15;
      v21 = v20;
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = [v21 objectForKey:@"iTSh Version"];
      v24 = [v22 initWithData:v23 encoding:4];

      intValue = [v24 intValue];
      v26 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v59) = intValue;
        _os_log_impl(&dword_254418000, v26, OS_LOG_TYPE_INFO, "iTunes sharing version: %i", buf, 8u);
      }

      v51 = v21;
      if (intValue <= 196611)
      {
        v38 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
        v40 = v52;
        v39 = v53;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v59 = v53;
          _os_log_impl(&dword_254418000, v38, OS_LOG_TYPE_ERROR, "Service: %{public}@ has unsupported version", buf, 0xCu);
        }

        v41 = 0;
      }

      else
      {
        v49 = v24;
        v50 = v20;
        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        v28 = [v21 objectForKey:@"Database ID"];
        v29 = [v27 initWithData:v28 encoding:4];

        v30 = objc_alloc(MEMORY[0x277CCACA8]);
        v31 = [v21 objectForKey:@"Machine ID"];
        v32 = [v30 initWithData:v31 encoding:4];

        v33 = objc_alloc(MEMORY[0x277CCACA8]);
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v46 = [v33 initWithFormat:@"%.0f", v34];
        v47 = v32;
        v48 = v29;
        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@-%@", v29, v32, v46];
        v36 = [v21 objectForKey:@"hG"];
        if ([v36 length])
        {
          v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v36 encoding:4];
        }

        else
        {
          v37 = 0;
        }

        v40 = v52;
        v39 = v53;
        v41 = [[HSHomeSharingLibrary alloc] initWithName:v53 uniqueIdentifier:v35 version:196624 baseURL:v52 homeSharingGroupID:v37 connectionType:0];

        v24 = v49;
        v20 = v50;
        v38 = v48;
      }

      if (v41)
      {
        [(HSHomeSharingLibrary *)v41 setService:v9];
        availableLibraries = [(HSBrowser *)self availableLibraries];
        [availableLibraries addObject:v41];

        librariesPendingRemoval = [(HSBrowser *)self librariesPendingRemoval];
        [librariesPendingRemoval removeObject:v41];

        delegate = [(HSBrowser *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v45 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41__HSBrowser_netServiceDidResolveAddress___block_invoke;
          block[3] = &unk_279779D78;
          v55 = delegate;
          selfCopy = self;
          v57 = v41;
          dispatch_async(v45, block);
        }
      }
    }
  }
}

- (void)_removalTimerFired:(id)fired
{
  userInfo = [fired userInfo];
  librariesPendingRemoval = [(HSBrowser *)self librariesPendingRemoval];
  v6 = [librariesPendingRemoval containsObject:userInfo];

  if (v6)
  {
    librariesPendingRemoval2 = [(HSBrowser *)self librariesPendingRemoval];
    [librariesPendingRemoval2 removeObject:userInfo];

    availableLibraries = [(HSBrowser *)self availableLibraries];
    [availableLibraries removeObject:userInfo];

    delegate = [(HSBrowser *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__HSBrowser__removalTimerFired___block_invoke;
      block[3] = &unk_279779D78;
      v12 = delegate;
      selfCopy = self;
      v14 = userInfo;
      dispatch_async(v10, block);
    }
  }
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  v34 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  serviceCopy = service;
  v9 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [serviceCopy name];
    *buf = 134218242;
    v31 = browserCopy;
    v32 = 2114;
    v33 = name;
    _os_log_impl(&dword_254418000, v9, OS_LOG_TYPE_DEFAULT, "Service browser: %p removed service with name: '%{public}@'", buf, 0x16u);
  }

  v23 = browserCopy;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  v24 = *MEMORY[0x277CBE738];
  [serviceCopy removeFromRunLoop:mainRunLoop forMode:?];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(NSMutableArray *)self->_availableLibraries copy];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        service = [v17 service];
        v19 = [service isEqual:serviceCopy];

        if (v19)
        {
          librariesPendingRemoval = [(HSBrowser *)self librariesPendingRemoval];
          [librariesPendingRemoval addObject:v17];

          v21 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__removalTimerFired_ selector:v17 userInfo:0 repeats:2.0];
          mainRunLoop2 = [MEMORY[0x277CBEB88] mainRunLoop];
          [mainRunLoop2 addTimer:v21 forMode:v24];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  v17 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  serviceCopy = service;
  v9 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [serviceCopy name];
    v13 = 134218242;
    v14 = browserCopy;
    v15 = 2114;
    v16 = name;
    _os_log_impl(&dword_254418000, v9, OS_LOG_TYPE_DEFAULT, "Service browser: %p found service with name: '%{public}@'", &v13, 0x16u);
  }

  resolvingServices = [(HSBrowser *)self resolvingServices];
  [resolvingServices addObject:serviceCopy];

  [serviceCopy setDelegate:self];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [serviceCopy scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  [serviceCopy resolveWithTimeout:10.0];
}

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  v13 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  searchCopy = search;
  v7 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [searchCopy objectForKeyedSubscript:*MEMORY[0x277CCA588]];
    v9 = 134218240;
    v10 = browserCopy;
    v11 = 2048;
    longLongValue = [v8 longLongValue];
    _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_ERROR, "Service browser: %p failed to search with error code: %lld", &v9, 0x16u);
  }
}

- (void)stop
{
  serviceBrowserQueue = [(HSBrowser *)self serviceBrowserQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__HSBrowser_stop__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(serviceBrowserQueue, block);
}

void __17__HSBrowser_stop__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceBrowser];

  v3 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) serviceBrowser];
      v6 = [*(a1 + 32) serviceType];
      *buf = 134218242;
      v37 = v5;
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&dword_254418000, v4, OS_LOG_TYPE_DEFAULT, "Service browser: %p stopping search for services of type: %{public}@", buf, 0x16u);
    }

    v7 = [*(a1 + 32) serviceBrowser];
    [v7 stop];

    v8 = [*(a1 + 32) serviceBrowser];
    v9 = [MEMORY[0x277CBEB88] mainRunLoop];
    v10 = *MEMORY[0x277CBE738];
    [v8 removeFromRunLoop:v9 forMode:*MEMORY[0x277CBE738]];

    [*(a1 + 32) setServiceBrowser:0];
    v11 = [*(a1 + 32) availableLibraries];
    v12 = [v11 copy];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = v12;
    v13 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      v25 = v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v4);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = [*(a1 + 32) delegate];
          if (objc_opt_respondsToSelector())
          {
            v19 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            v27[0] = __17__HSBrowser_stop__block_invoke_14;
            v27[1] = &unk_279779D78;
            v20 = v18;
            v21 = *(a1 + 32);
            v28 = v20;
            v29 = v21;
            v30 = v17;
            dispatch_async(v19, block);
          }

          v22 = [v17 service];
          v23 = [MEMORY[0x277CBEB88] mainRunLoop];
          [v22 removeFromRunLoop:v23 forMode:v10];
        }

        v14 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    v24 = [*(a1 + 32) availableLibraries];
    [v24 removeAllObjects];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_254418000, v4, OS_LOG_TYPE_DEBUG, "Service browser is not searching, stopping has no effect.", buf, 2u);
  }
}

- (void)start
{
  serviceBrowserQueue = [(HSBrowser *)self serviceBrowserQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__HSBrowser_start__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(serviceBrowserQueue, block);
}

void __18__HSBrowser_start__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceBrowser];

  if (v2)
  {
    v3 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_DEBUG, "Service browser is already active, starting again has no effect.", &v13, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB80]);
    [*(a1 + 32) setServiceBrowser:v4];

    v5 = *(a1 + 32);
    v6 = [v5 serviceBrowser];
    [v6 setDelegate:v5];

    v7 = [*(a1 + 32) serviceBrowser];
    v8 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v7 scheduleInRunLoop:v8 forMode:*MEMORY[0x277CBE738]];

    v9 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) serviceBrowser];
      v11 = [*(a1 + 32) serviceType];
      v13 = 134218242;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_254418000, v9, OS_LOG_TYPE_DEFAULT, "Service browser: %p starting search for services of type: %{public}@", &v13, 0x16u);
    }

    v3 = [*(a1 + 32) serviceBrowser];
    v12 = [*(a1 + 32) serviceType];
    [v3 searchForServicesOfType:v12 inDomain:@"local."];
  }
}

- (HSBrowser)initWithBrowserType:(int64_t)type groupID:(id)d
{
  dCopy = d;
  v8 = dCopy;
  if (!type && ![dCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HSBrowser.m" lineNumber:36 description:@"Home Sharing group ID is required for browser type HSBrowserTypeHomeSharing."];
  }

  v23.receiver = self;
  v23.super_class = HSBrowser;
  v9 = [(HSBrowser *)&v23 init];
  v10 = v9;
  if (v9)
  {
    v9->_browserType = type;
    array = [MEMORY[0x277CBEB18] array];
    availableLibraries = v10->_availableLibraries;
    v10->_availableLibraries = array;

    array2 = [MEMORY[0x277CBEB18] array];
    resolvingServices = v10->_resolvingServices;
    v10->_resolvingServices = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    librariesPendingRemoval = v10->_librariesPendingRemoval;
    v10->_librariesPendingRemoval = array3;

    v17 = dispatch_queue_create("com.apple.HomeSharing.HSBrowser.serviceBrowserQueue", 0);
    serviceBrowserQueue = v10->_serviceBrowserQueue;
    v10->_serviceBrowserQueue = v17;

    if (type)
    {
      v19 = @"_daap._tcp";
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"_home-sharing._tcp, _%@", v8];
    }

    serviceType = v10->_serviceType;
    v10->_serviceType = &v19->isa;
  }

  return v10;
}

+ (id)homeSharingBrowserWithGroupID:(id)d
{
  dCopy = d;
  v4 = [objc_alloc(objc_opt_class()) initWithBrowserType:0 groupID:dCopy];

  return v4;
}

@end