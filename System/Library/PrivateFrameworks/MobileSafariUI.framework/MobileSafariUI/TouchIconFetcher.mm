@interface TouchIconFetcher
- (TouchIconFetcher)initWithWebView:(id)a3;
- (id)_webProcessActivityProxy;
- (void)_setUpTouchIconFetcherObserver;
- (void)didFetchTouchIconURLs:(id)a3 forURL:(id)a4;
- (void)fetchTouchIconURLsWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation TouchIconFetcher

- (TouchIconFetcher)initWithWebView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TouchIconFetcher;
  v5 = [(TouchIconFetcher *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, v4);
    v7 = [MEMORY[0x277CBEB18] array];
    completionBlocks = v6->_completionBlocks;
    v6->_completionBlocks = v7;

    [(TouchIconFetcher *)v6 _setUpTouchIconFetcherObserver];
    v9 = v6;
  }

  return v6;
}

- (void)_setUpTouchIconFetcherObserver
{
  v3 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2828AA3D8];
  touchIconFetcherObserver = self->_touchIconFetcherObserver;
  self->_touchIconFetcherObserver = v3;

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [(_WKRemoteObjectInterface *)self->_touchIconFetcherObserver setClasses:v9 forSelector:sel_didFetchTouchIconURLs_forURL_ argumentIndex:0 ofReply:0];
  [(_WKRemoteObjectInterface *)self->_touchIconFetcherObserver setClasses:v9 forSelector:sel_didFetchTouchIconURLs_forURL_ argumentIndex:1 ofReply:0];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8 = [WeakRetained _remoteObjectRegistry];
  [v8 registerExportedObject:self interface:self->_touchIconFetcherObserver];
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_invalidated)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_completionBlocks;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v9 = [WeakRetained _remoteObjectRegistry];
    [v9 unregisterExportedObject:self interface:self->_touchIconFetcherObserver];

    touchIconFetcherObserver = self->_touchIconFetcherObserver;
    self->_touchIconFetcherObserver = 0;

    self->_invalidated = 1;
  }
}

- (id)_webProcessActivityProxy
{
  activityProxy = self->_activityProxy;
  if (!activityProxy)
  {
    v4 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2828EF138];
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v6 = [WeakRetained _remoteObjectRegistry];
    v7 = [v6 remoteObjectProxyWithInterface:v4];
    v8 = self->_activityProxy;
    self->_activityProxy = v7;

    activityProxy = self->_activityProxy;
  }

  return activityProxy;
}

- (void)fetchTouchIconURLsWithCompletion:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_invalidated)
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8]);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    v6 = _Block_copy(v4);
    [(NSMutableArray *)completionBlocks addObject:v6];

    if (!self->_fetchingURLs)
    {
      self->_fetchingURLs = 1;
      v7 = [(TouchIconFetcher *)self _webProcessActivityProxy];
      [v7 fetchTouchIconURLs];
    }
  }
}

- (void)didFetchTouchIconURLs:(id)a3 forURL:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D28F60] deviceIdealDefaultTouchIconURLsWithURL:a4];
  v8 = [v7 mutableCopy];

  [v8 addObjectsFromArray:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_completionBlocks;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  self->_fetchingURLs = 0;
}

@end