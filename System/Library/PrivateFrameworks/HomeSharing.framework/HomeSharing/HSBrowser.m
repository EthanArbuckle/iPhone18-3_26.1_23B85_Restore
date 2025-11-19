@interface HSBrowser
+ (id)homeSharingBrowserWithGroupID:(id)a3;
- (HSBrowser)initWithBrowserType:(int64_t)a3 groupID:(id)a4;
- (HSBrowserDelegate)delegate;
- (void)_removalTimerFired:(id)a3;
- (void)netService:(id)a3 didNotResolve:(id)a4;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowser:(id)a3 didNotSearch:(id)a4;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceDidResolveAddress:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HSBrowser

- (HSBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)netService:(id)a3 didNotResolve:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [(HSBrowser *)self serviceBrowser];
    v10 = [v6 name];
    v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA588]];
    v14 = 134218498;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2048;
    v19 = [v11 longLongValue];
    _os_log_impl(&dword_254418000, v8, OS_LOG_TYPE_ERROR, "Service browser: %p failed to resolve service '%{public}@' with error code: %lld", &v14, 0x20u);
  }

  v12 = [(HSBrowser *)self resolvingServices];
  [v12 removeObject:v6];

  v13 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v6 removeFromRunLoop:v13 forMode:*MEMORY[0x277CBE738]];
}

- (void)netServiceDidResolveAddress:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HSBrowser *)self resolvingServices];
  [v5 removeObject:v4];

  v6 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v4 removeFromRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

  v7 = [v4 name];
  v8 = MEMORY[0x277CCACE0];
  v9 = v4;
  v10 = objc_alloc_init(v8);
  [v10 setScheme:@"http"];
  v11 = [v9 hostName];
  [v10 setHost:v11];

  v12 = MEMORY[0x277CCABB0];
  v13 = [v9 port];

  v14 = [v12 numberWithInteger:v13];
  [v10 setPort:v14];

  v15 = [v10 URL];

  v16 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [(HSBrowser *)self serviceBrowser];
    *buf = 134218498;
    v59 = v17;
    v60 = 2114;
    v61 = v7;
    v62 = 2112;
    v63 = v15;
    _os_log_impl(&dword_254418000, v16, OS_LOG_TYPE_INFO, "Service browser: %p resolved service '%{public}@' base URL: %@", buf, 0x20u);
  }

  if (v15)
  {
    v18 = MEMORY[0x277CCAB78];
    v19 = [v9 TXTRecordData];
    v20 = [v18 dictionaryFromTXTRecordData:v19];

    if (![(HSBrowser *)self browserType])
    {
      v53 = v7;
      v52 = v15;
      v21 = v20;
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = [v21 objectForKey:@"iTSh Version"];
      v24 = [v22 initWithData:v23 encoding:4];

      v25 = [v24 intValue];
      v26 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v59) = v25;
        _os_log_impl(&dword_254418000, v26, OS_LOG_TYPE_INFO, "iTunes sharing version: %i", buf, 8u);
      }

      v51 = v21;
      if (v25 <= 196611)
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
        v42 = [(HSBrowser *)self availableLibraries];
        [v42 addObject:v41];

        v43 = [(HSBrowser *)self librariesPendingRemoval];
        [v43 removeObject:v41];

        v44 = [(HSBrowser *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v45 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41__HSBrowser_netServiceDidResolveAddress___block_invoke;
          block[3] = &unk_279779D78;
          v55 = v44;
          v56 = self;
          v57 = v41;
          dispatch_async(v45, block);
        }
      }
    }
  }
}

- (void)_removalTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [(HSBrowser *)self librariesPendingRemoval];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(HSBrowser *)self librariesPendingRemoval];
    [v7 removeObject:v4];

    v8 = [(HSBrowser *)self availableLibraries];
    [v8 removeObject:v4];

    v9 = [(HSBrowser *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__HSBrowser__removalTimerFired___block_invoke;
      block[3] = &unk_279779D78;
      v12 = v9;
      v13 = self;
      v14 = v4;
      dispatch_async(v10, block);
    }
  }
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 name];
    *buf = 134218242;
    v31 = v7;
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&dword_254418000, v9, OS_LOG_TYPE_DEFAULT, "Service browser: %p removed service with name: '%{public}@'", buf, 0x16u);
  }

  v23 = v7;

  v11 = [MEMORY[0x277CBEB88] mainRunLoop];
  v24 = *MEMORY[0x277CBE738];
  [v8 removeFromRunLoop:v11 forMode:?];

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
        v18 = [v17 service];
        v19 = [v18 isEqual:v8];

        if (v19)
        {
          v20 = [(HSBrowser *)self librariesPendingRemoval];
          [v20 addObject:v17];

          v21 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__removalTimerFired_ selector:v17 userInfo:0 repeats:2.0];
          v22 = [MEMORY[0x277CBEB88] mainRunLoop];
          [v22 addTimer:v21 forMode:v24];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 name];
    v13 = 134218242;
    v14 = v7;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_254418000, v9, OS_LOG_TYPE_DEFAULT, "Service browser: %p found service with name: '%{public}@'", &v13, 0x16u);
  }

  v11 = [(HSBrowser *)self resolvingServices];
  [v11 addObject:v8];

  [v8 setDelegate:self];
  v12 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v8 scheduleInRunLoop:v12 forMode:*MEMORY[0x277CBE738]];

  [v8 resolveWithTimeout:10.0];
}

- (void)netServiceBrowser:(id)a3 didNotSearch:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.amp.HomeSharing", "Browsing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA588]];
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = [v8 longLongValue];
    _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_ERROR, "Service browser: %p failed to search with error code: %lld", &v9, 0x16u);
  }
}

- (void)stop
{
  v3 = [(HSBrowser *)self serviceBrowserQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__HSBrowser_stop__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(HSBrowser *)self serviceBrowserQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__HSBrowser_start__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(v3, block);
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

- (HSBrowser)initWithBrowserType:(int64_t)a3 groupID:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (!a3 && ![v7 length])
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HSBrowser.m" lineNumber:36 description:@"Home Sharing group ID is required for browser type HSBrowserTypeHomeSharing."];
  }

  v23.receiver = self;
  v23.super_class = HSBrowser;
  v9 = [(HSBrowser *)&v23 init];
  v10 = v9;
  if (v9)
  {
    v9->_browserType = a3;
    v11 = [MEMORY[0x277CBEB18] array];
    availableLibraries = v10->_availableLibraries;
    v10->_availableLibraries = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    resolvingServices = v10->_resolvingServices;
    v10->_resolvingServices = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    librariesPendingRemoval = v10->_librariesPendingRemoval;
    v10->_librariesPendingRemoval = v15;

    v17 = dispatch_queue_create("com.apple.HomeSharing.HSBrowser.serviceBrowserQueue", 0);
    serviceBrowserQueue = v10->_serviceBrowserQueue;
    v10->_serviceBrowserQueue = v17;

    if (a3)
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

+ (id)homeSharingBrowserWithGroupID:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBrowserType:0 groupID:v3];

  return v4;
}

@end