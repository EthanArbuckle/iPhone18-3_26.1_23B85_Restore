@interface NUArticleViewControllerFactory
- (NUArticleViewControllerFactory)initWithArticleDataProviderFactory:(id)a3 appStateMonitor:(id)a4 keyCommandManager:(id)a5 headerBlueprintProvider:(id)a6 articlePrefetcher:(id)a7 articleScrollPositionManager:(id)a8 spotlightManager:(id)a9 resolver:(id)a10;
- (id)createArticleViewControllerWithArticle:(id)a3 issue:(id)a4 context:(id)a5 relativePriority:(int64_t)a6 articleHostViewController:(id)a7;
@end

@implementation NUArticleViewControllerFactory

- (NUArticleViewControllerFactory)initWithArticleDataProviderFactory:(id)a3 appStateMonitor:(id)a4 keyCommandManager:(id)a5 headerBlueprintProvider:(id)a6 articlePrefetcher:(id)a7 articleScrollPositionManager:(id)a8 spotlightManager:(id)a9 resolver:(id)a10
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v30.receiver = self;
  v30.super_class = NUArticleViewControllerFactory;
  v18 = [(NUArticleViewControllerFactory *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_articleDataProviderFactory, a3);
    objc_storeStrong(&v19->_appStateMonitor, a4);
    objc_storeStrong(&v19->_keyCommandManager, a5);
    objc_storeStrong(&v19->_headerBlueprintProvider, a6);
    objc_storeStrong(&v19->_articlePrefetcher, a7);
    objc_storeStrong(&v19->_articleScrollPositionManager, a8);
    objc_storeStrong(&v19->_spotlightManager, a9);
    objc_storeStrong(&v19->_resolver, a10);
    v20 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    loadingListeners = v19->_loadingListeners;
    v19->_loadingListeners = v20;
  }

  return v19;
}

- (id)createArticleViewControllerWithArticle:(id)a3 issue:(id)a4 context:(id)a5 relativePriority:(int64_t)a6 articleHostViewController:(id)a7
{
  v12 = a3;
  v54 = a4;
  v13 = a7;
  v53 = a5;
  v14 = [(NUArticleViewControllerFactory *)self articlePrefetcher];
  v15 = [v12 articleID];
  v16 = [v14 prefetchedArticleDataProviderForArticleID:v15];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [(NUArticleViewControllerFactory *)self articleDataProviderFactory];
    v18 = [v19 createArticleDataProviderWithArticle:v12];
  }

  [v18 setRelativePriority:a6];
  v20 = [(NUArticleViewControllerFactory *)self resolver];
  v21 = [v20 resolveClass:objc_opt_class()];

  v22 = [(NUArticleViewControllerFactory *)self resolver];
  v23 = objc_opt_class();
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke;
  v66[3] = &unk_2799A3378;
  v24 = v12;
  v67 = v24;
  v25 = [v22 resolveClass:v23 contextBlock:v66];

  v26 = [(NUArticleViewControllerFactory *)self resolver];
  v27 = objc_opt_class();
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __130__NUArticleViewControllerFactory_createArticleViewControllerWithArticle_issue_context_relativePriority_articleHostViewController___block_invoke_2;
  v64[3] = &unk_2799A3378;
  v28 = v24;
  v65 = v28;
  v29 = [v26 resolveClass:v27 contextBlock:v64];

  v30 = [[NUArticleHostViewControllerProvider alloc] initWithArticleHostViewController:v13];
  v31 = [(NUArticleViewControllerFactory *)self resolver];
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
  v62 = v54;
  v63 = v18;
  v47 = v18;
  v52 = v54;
  v55 = v21;
  v50 = v30;
  v51 = v28;
  v48 = v29;
  v49 = v25;
  v46 = [v31 resolveClass:v32 contextBlock:v56];

  v33 = [(NUArticleViewControllerFactory *)self resolver];
  v45 = [v33 resolveProtocol:&unk_286E2C160];

  v34 = [(NUArticleViewControllerFactory *)self resolver];
  v35 = [v34 resolveProtocol:&unk_286E2F2E0];

  v36 = [NUArticleViewController alloc];
  v37 = [(NUArticleViewControllerFactory *)self appStateMonitor];
  v38 = [(NUArticleViewControllerFactory *)self keyCommandManager];
  v39 = [(NUArticleViewControllerFactory *)self loadingListeners];
  v40 = [(NUArticleViewControllerFactory *)self headerBlueprintProvider];
  v41 = [(NUArticleViewControllerFactory *)self articleScrollPositionManager];
  v42 = [(NUArticleViewControllerFactory *)self spotlightManager];
  v43 = [(NUArticleViewController *)v36 initWithArticleDataProvider:v47 scrollViewController:v46 appStateMonitor:v37 keyCommandManager:v38 loadingListeners:v39 headerBlueprintProvider:v40 debugSettingsProvider:v45 videoPlayerViewControllerManager:v55 articleScrollPositionManager:v41 chromeControl:v35 spotlightManager:v42];

  [(NUArticleViewController *)v43 setArticleContext:v53];

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