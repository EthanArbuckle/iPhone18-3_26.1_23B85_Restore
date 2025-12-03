@interface NUArticleViewControllerFactory
- (NUArticleViewControllerFactory)initWithArticleDataProviderFactory:(id)factory appStateMonitor:(id)monitor keyCommandManager:(id)manager headerBlueprintProvider:(id)provider articlePrefetcher:(id)prefetcher articleScrollPositionManager:(id)positionManager spotlightManager:(id)spotlightManager resolver:(id)self0;
- (id)createArticleViewControllerWithArticle:(id)article issue:(id)issue context:(id)context relativePriority:(int64_t)priority articleHostViewController:(id)controller;
@end

@implementation NUArticleViewControllerFactory

- (NUArticleViewControllerFactory)initWithArticleDataProviderFactory:(id)factory appStateMonitor:(id)monitor keyCommandManager:(id)manager headerBlueprintProvider:(id)provider articlePrefetcher:(id)prefetcher articleScrollPositionManager:(id)positionManager spotlightManager:(id)spotlightManager resolver:(id)self0
{
  factoryCopy = factory;
  monitorCopy = monitor;
  managerCopy = manager;
  providerCopy = provider;
  prefetcherCopy = prefetcher;
  positionManagerCopy = positionManager;
  spotlightManagerCopy = spotlightManager;
  resolverCopy = resolver;
  v30.receiver = self;
  v30.super_class = NUArticleViewControllerFactory;
  v18 = [(NUArticleViewControllerFactory *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_articleDataProviderFactory, factory);
    objc_storeStrong(&v19->_appStateMonitor, monitor);
    objc_storeStrong(&v19->_keyCommandManager, manager);
    objc_storeStrong(&v19->_headerBlueprintProvider, provider);
    objc_storeStrong(&v19->_articlePrefetcher, prefetcher);
    objc_storeStrong(&v19->_articleScrollPositionManager, positionManager);
    objc_storeStrong(&v19->_spotlightManager, spotlightManager);
    objc_storeStrong(&v19->_resolver, resolver);
    v20 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    loadingListeners = v19->_loadingListeners;
    v19->_loadingListeners = v20;
  }

  return v19;
}

- (id)createArticleViewControllerWithArticle:(id)article issue:(id)issue context:(id)context relativePriority:(int64_t)priority articleHostViewController:(id)controller
{
  articleCopy = article;
  issueCopy = issue;
  controllerCopy = controller;
  contextCopy = context;
  articlePrefetcher = [(NUArticleViewControllerFactory *)self articlePrefetcher];
  articleID = [articleCopy articleID];
  v16 = [articlePrefetcher prefetchedArticleDataProviderForArticleID:articleID];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    articleDataProviderFactory = [(NUArticleViewControllerFactory *)self articleDataProviderFactory];
    v18 = [articleDataProviderFactory createArticleDataProviderWithArticle:articleCopy];
  }

  [v18 setRelativePriority:priority];
  resolver = [(NUArticleViewControllerFactory *)self resolver];
  v21 = [resolver resolveClass:objc_opt_class()];

  resolver2 = [(NUArticleViewControllerFactory *)self resolver];
  v23 = objc_opt_class();
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke;
  v66[3] = &unk_2799A3378;
  v24 = articleCopy;
  v67 = v24;
  v25 = [resolver2 resolveClass:v23 contextBlock:v66];

  resolver3 = [(NUArticleViewControllerFactory *)self resolver];
  v27 = objc_opt_class();
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke_2;
  v64[3] = &unk_2799A3378;
  v28 = v24;
  v65 = v28;
  v29 = [resolver3 resolveClass:v27 contextBlock:v64];

  v30 = [[NUArticleHostViewControllerProvider alloc] initWithArticleHostViewController:controllerCopy];
  resolver4 = [(NUArticleViewControllerFactory *)self resolver];
  v32 = objc_opt_class();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke_3;
  v56[3] = &unk_2799A33A0;
  v57 = v25;
  v58 = v29;
  v59 = v28;
  v60 = v30;
  v61 = v21;
  v62 = issueCopy;
  v63 = v18;
  v47 = v18;
  v52 = issueCopy;
  v55 = v21;
  v50 = v30;
  v51 = v28;
  v48 = v29;
  v49 = v25;
  v46 = [resolver4 resolveClass:v32 contextBlock:v56];

  resolver5 = [(NUArticleViewControllerFactory *)self resolver];
  v45 = [resolver5 resolveProtocol:&unk_286E2C160];

  resolver6 = [(NUArticleViewControllerFactory *)self resolver];
  v35 = [resolver6 resolveProtocol:&unk_286E2F2E0];

  v36 = [NUArticleViewController alloc];
  appStateMonitor = [(NUArticleViewControllerFactory *)self appStateMonitor];
  keyCommandManager = [(NUArticleViewControllerFactory *)self keyCommandManager];
  loadingListeners = [(NUArticleViewControllerFactory *)self loadingListeners];
  headerBlueprintProvider = [(NUArticleViewControllerFactory *)self headerBlueprintProvider];
  articleScrollPositionManager = [(NUArticleViewControllerFactory *)self articleScrollPositionManager];
  spotlightManager = [(NUArticleViewControllerFactory *)self spotlightManager];
  v43 = [(NUArticleViewController *)v36 initWithArticleDataProvider:v47 scrollViewController:v46 appStateMonitor:appStateMonitor keyCommandManager:keyCommandManager loadingListeners:loadingListeners headerBlueprintProvider:headerBlueprintProvider debugSettingsProvider:v45 videoPlayerViewControllerManager:v55 articleScrollPositionManager:articleScrollPositionManager chromeControl:v35 spotlightManager:spotlightManager];

  [(NUArticleViewController *)v43 setArticleContext:contextCopy];

  return v43;
}

void __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 headline];
  [v3 useObject:v4 forProtocol:&unk_286E4ACC8];
}

void __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 headline];
  [v3 useObject:v4 forProtocol:&unk_286E4ACC8];
}

void __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 useObject:*(a1 + 32) forProtocol:&unk_286E3D2C8];
  [v3 useObject:*(a1 + 40) forProtocol:&unk_286E386F0];
  v4 = [*(a1 + 48) headline];
  [v3 useObject:v4 forProtocol:&unk_286E4ACC8];

  [v3 useObject:*(a1 + 56) forClass:objc_opt_class()];
  [v3 useObject:*(a1 + 64) forClass:objc_opt_class()];
  v5 = *(a1 + 72);
  if (v5)
  {
    [v3 useObject:v5 forClass:objc_opt_class()];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 80) linkedContentProviders];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3 useObject:*(*(&v12 + 1) + 8 * v10++) forClass:objc_opt_class()];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end