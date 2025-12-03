@interface MFWKWebViewFactory
+ (OS_os_log)log;
+ (id)sharedWebViewFactory;
+ (id)sharedWebViewFactoryFuture;
+ (void)setDaemonInterface:(id)interface URLCacheWithMemoryCapacity:(unint64_t)capacity;
- (MFWKWebViewFactory)init;
- (MFWKWebViewFactory)initWithRemoteContentURLCache:(id)cache;
- (WKProcessPool)processPool;
- (id)webView;
- (void)contentRuleListManager:(id)manager didAddRuleList:(id)list;
- (void)contentRuleListManager:(id)manager didRemoveRuleList:(id)list;
- (void)contentRuleListManager:(id)manager didUpdateContentRuleList:(id)list oldContentRuleList:(id)ruleList;
- (void)dealloc;
- (void)preallocateWebViewIfNeeded;
- (void)preallocateWebViews;
- (void)setContentRuleListManager:(id)manager;
@end

@implementation MFWKWebViewFactory

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MFWKWebViewFactory_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v2 = log_log_8;

  return v2;
}

void __25__MFWKWebViewFactory_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_8;
  log_log_8 = v1;
}

+ (void)setDaemonInterface:(id)interface URLCacheWithMemoryCapacity:(unint64_t)capacity
{
  interfaceCopy = interface;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MFWKWebViewFactory_setDaemonInterface_URLCacheWithMemoryCapacity___block_invoke;
  block[3] = &unk_2781816C0;
  v6 = interfaceCopy;
  v9 = v6;
  if (setDaemonInterface_URLCacheWithMemoryCapacity__onceToken != -1)
  {
    dispatch_once(&setDaemonInterface_URLCacheWithMemoryCapacity__onceToken, block);
  }

  messageRepository = [daemonInterface messageRepository];
  [messageRepository setUpURLCacheWithMemoryCapacity:capacity];
}

+ (id)sharedWebViewFactoryFuture
{
  if (!daemonInterface)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFWKWebViewFactory.m" lineNumber:83 description:@"daemonInterface is not set"];
  }

  if (sharedWebViewFactoryFuture_onceToken != -1)
  {
    +[MFWKWebViewFactory sharedWebViewFactoryFuture];
  }

  v2 = sharedWebViewFactoryFuture_sFactoryFuture;

  return v2;
}

void __48__MFWKWebViewFactory_sharedWebViewFactoryFuture__block_invoke()
{
  v0 = [daemonInterface messageRepository];
  v3 = [v0 remoteContentURLCache];

  v1 = [v3 then:&__block_literal_global_56];
  v2 = sharedWebViewFactoryFuture_sFactoryFuture;
  sharedWebViewFactoryFuture_sFactoryFuture = v1;
}

id __48__MFWKWebViewFactory_sharedWebViewFactoryFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MFWKWebViewFactory alloc] initWithRemoteContentURLCache:v2];
  v4 = [MEMORY[0x277D07150] futureWithResult:v3];

  return v4;
}

+ (id)sharedWebViewFactory
{
  sharedWebViewFactoryFuture = [self sharedWebViewFactoryFuture];
  result = [sharedWebViewFactoryFuture result];

  return result;
}

- (MFWKWebViewFactory)init
{
  messageRepository = [daemonInterface messageRepository];
  remoteContentURLCache = [messageRepository remoteContentURLCache];
  result = [remoteContentURLCache result];

  v6 = [(MFWKWebViewFactory *)self initWithRemoteContentURLCache:result];
  return v6;
}

- (MFWKWebViewFactory)initWithRemoteContentURLCache:(id)cache
{
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = MFWKWebViewFactory;
  v5 = [(MFWKWebViewFactory *)&v16 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D06E98]) initWithCache:cacheCopy];
    urlSession = v5->_urlSession;
    v5->_urlSession = v6;

    v8 = [objc_alloc(MEMORY[0x277D06E90]) initWithSession:v5->_urlSession schemePrefix:@"x-apple-mail-proxy-" allowProxying:1];
    proxySchemeHandler = v5->_proxySchemeHandler;
    v5->_proxySchemeHandler = v8;

    v10 = [objc_alloc(MEMORY[0x277D06E90]) initWithSession:v5->_urlSession schemePrefix:@"x-apple-mail-noproxy-" allowProxying:0];
    noProxySchemeHandler = v5->_noProxySchemeHandler;
    v5->_noProxySchemeHandler = v10;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    configurations = v5->_configurations;
    v5->_configurations = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
  }

  return v5;
}

- (void)dealloc
{
  [(EMRemoteContentURLSession *)self->_urlSession invalidateAndCancel:1];
  v3.receiver = self;
  v3.super_class = MFWKWebViewFactory;
  [(MFWKWebViewFactory *)&v3 dealloc];
}

- (WKProcessPool)processPool
{
  v19[3] = *MEMORY[0x277D85DE8];
  processPool = self->_processPool;
  if (!processPool)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE3890]);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"MailWebProcessBundle" withExtension:@"bundle" subdirectory:@"PlugIns"];
    [v4 setInjectedBundleURL:v6];

    [v4 setShouldTakeUIBackgroundAssertion:0];
    v7 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v4];
    v8 = self->_processPool;
    self->_processPool = v7;

    v9 = self->_processPool;
    v18[0] = @"remoteContentProxySchemePrefix";
    schemePrefix = [(EMRemoteContentURLSchemeHandler *)self->_proxySchemeHandler schemePrefix];
    v19[0] = schemePrefix;
    v18[1] = @"remoteContentNoProxySchemePrefix";
    schemePrefix2 = [(EMRemoteContentURLSchemeHandler *)self->_noProxySchemeHandler schemePrefix];
    v19[1] = schemePrefix2;
    v18[2] = @"isMailPrivacyProtectionAllowed";
    v12 = MEMORY[0x277CCABB0];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v14 = [v12 numberWithBool:{objc_msgSend(mEMORY[0x277D262A0], "isMailPrivacyProtectionAllowed")}];
    v19[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    [(WKProcessPool *)v9 _setObjectsForBundleParametersWithDictionary:v15];

    processPool = self->_processPool;
  }

  v16 = *MEMORY[0x277D85DE8];

  return processPool;
}

- (void)setContentRuleListManager:(id)manager
{
  v12 = 0;
  v4 = [manager addObserver:self activeRuleLists:&v12];
  v5 = v12;
  v6 = objc_alloc_init(MEMORY[0x277D07138]);
  contentRuleListManagerObserverCancelable = self->_contentRuleListManagerObserverCancelable;
  self->_contentRuleListManagerObserverCancelable = v6;

  [(EFCancelationToken *)self->_contentRuleListManagerObserverCancelable addCancelable:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__MFWKWebViewFactory_setContentRuleListManager___block_invoke;
  v10[3] = &unk_278181710;
  v10[4] = self;
  v8 = v5;
  v11 = v8;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:v10];
}

void __48__MFWKWebViewFactory_setContentRuleListManager___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) configurations];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v16 + 1) + 8 * v5) userContentController];
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v7 = *(a1 + 40);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          v9 = *v13;
          do
          {
            v10 = 0;
            do
            {
              if (*v13 != v9)
              {
                objc_enumerationMutation(v7);
              }

              [v6 addContentRuleList:*(*(&v12 + 1) + 8 * v10++)];
            }

            while (v8 != v10);
            v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v8);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)preallocateWebViews
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MFWKWebViewFactory_preallocateWebViews__block_invoke;
  block[3] = &unk_2781816C0;
  block[4] = self;
  if (preallocateWebViews_onceToken != -1)
  {
    dispatch_once(&preallocateWebViews_onceToken, block);
  }
}

uint64_t __41__MFWKWebViewFactory_preallocateWebViews__block_invoke(uint64_t a1)
{
  v2 = +[MFWKWebViewFactory log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2149C9000, v2, OS_LOG_TYPE_DEFAULT, "Preallocate webViews and web related caches", v10, 2u);
  }

  v3 = [MEMORY[0x277D071B0] boundedQueueWithCapacity:3];
  [*(a1 + 32) setPreallocatedWebViews:v3];

  v4 = 3;
  do
  {
    v5 = [*(a1 + 32) preallocatedWebViews];
    v6 = [*(a1 + 32) _instantiateWebView:v4 != 3];
    [v5 enqueue:v6];

    --v4;
  }

  while (v4);
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WebCore"];
  [v7 resourcePath];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Wkwebview.isa)];
  [v8 resourcePath];

  [MEMORY[0x277CCAC68] ec_attributionExpression];
  return +[MFMessageContentView prewarmContent];
}

- (void)preallocateWebViewIfNeeded
{
  preallocatedWebViews = [(MFWKWebViewFactory *)self preallocatedWebViews];

  if (preallocatedWebViews)
  {
    preallocatedWebViews2 = [(MFWKWebViewFactory *)self preallocatedWebViews];
    v4 = [preallocatedWebViews2 count];

    if (!v4)
    {
      preallocatedWebViews3 = [(MFWKWebViewFactory *)self preallocatedWebViews];
      v5 = [(MFWKWebViewFactory *)self _instantiateWebView:0];
      [preallocatedWebViews3 enqueue:v5];
    }
  }

  else
  {
    preallocatedWebViews4 = [(MFWKWebViewFactory *)self preallocatedWebViews];
  }
}

- (id)webView
{
  preallocatedWebViews = [(MFWKWebViewFactory *)self preallocatedWebViews];
  dequeue = [preallocatedWebViews dequeue];

  if (!dequeue)
  {
    dequeue = [(MFWKWebViewFactory *)self _instantiateWebView:0];
  }

  return dequeue;
}

- (void)contentRuleListManager:(id)manager didAddRuleList:(id)list
{
  listCopy = list;
  v8 = MEMORY[0x277D85DD0];
  selfCopy = self;
  v6 = listCopy;
  v10 = v6;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:&v8];
}

void __60__MFWKWebViewFactory_contentRuleListManager_didAddRuleList___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) configurations];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) userContentController];
        [v6 addContentRuleList:*(a1 + 40)];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)contentRuleListManager:(id)manager didUpdateContentRuleList:(id)list oldContentRuleList:(id)ruleList
{
  listCopy = list;
  ruleListCopy = ruleList;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__MFWKWebViewFactory_contentRuleListManager_didUpdateContentRuleList_oldContentRuleList___block_invoke;
  v12[3] = &unk_278181670;
  v12[4] = self;
  v9 = ruleListCopy;
  v13 = v9;
  v10 = listCopy;
  v14 = v10;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:v12];
}

void __89__MFWKWebViewFactory_contentRuleListManager_didUpdateContentRuleList_oldContentRuleList___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) configurations];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) userContentController];
        [v6 removeContentRuleList:*(a1 + 40)];
        [v6 addContentRuleList:*(a1 + 48)];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)contentRuleListManager:(id)manager didRemoveRuleList:(id)list
{
  listCopy = list;
  v8 = MEMORY[0x277D85DD0];
  selfCopy = self;
  v6 = listCopy;
  v10 = v6;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:&v8];
}

void __63__MFWKWebViewFactory_contentRuleListManager_didRemoveRuleList___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) configurations];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) userContentController];
        [v6 removeContentRuleList:*(a1 + 40)];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end