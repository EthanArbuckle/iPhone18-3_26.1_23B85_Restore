@interface SUUIClientContext
+ (AMSBag)amsBag;
+ (NSString)_cachePath;
+ (id)_cachePathForStoreFrontIdentifier:(id)a3;
+ (id)_configurationDictionaryWithBagDictionary:(id)a3;
+ (id)defaultContext;
+ (id)localizedStringForKey:(id)a3 inBundles:(id)a4 inTable:(id)a5;
- (BOOL)isBootstrapScriptFallbackDisabled;
- (BOOL)isManagedAppleID;
- (BOOL)isMultiUser;
- (BOOL)supportsRenderingVersion:(unsigned int)a3;
- (Class)moviePlayerViewControllerClass;
- (NSArray)navigationHistory;
- (NSOperationQueue)resourceLoadQueue;
- (NSString)description;
- (SSURLBag)URLBag;
- (SSVPlatformContext)platformContext;
- (SUUIApplicationController)_applicationController;
- (SUUIClientContext)initWithConfigurationDictionary:(id)a3;
- (SUUITrendingSearchProvider)trendingSearchProvider;
- (id)SAPSessionForVersion:(int64_t)a3;
- (id)_navigationHistory;
- (id)existingBagValueForKey:(id)a3;
- (id)localizedStringForKey:(id)a3 inTable:(id)a4;
- (id)metricsPageContextForViewController:(id)a3;
- (id)newLegacyStorePageViewControllerForURLResponse:(id)a3;
- (id)newLoadStoreURLOperationWithURL:(id)a3;
- (id)newLoadStoreURLOperationWithURLRequest:(id)a3;
- (id)previewViewControllerForViewElement:(id)a3;
- (id)scriptInterfaceForClientInterface:(id)a3;
- (id)tabBarItemsForStyle:(int64_t)a3;
- (int64_t)tabBarStyleForWidth:(double)a3;
- (void)_setAdditionalPurchaseParameters:(id)a3;
- (void)_setPurchaseAffiliateIdentifier:(id)a3;
- (void)_setValue:(id)a3 forConfigurationKey:(id)a4;
- (void)clientInterface:(id)a3 presentDialog:(id)a4;
- (void)customizePurchase:(id)a3;
- (void)customizeSoftwarePurchase:(id)a3;
- (void)dealloc;
- (void)getDefaultMetricsControllerWithCompletionBlock:(id)a3;
- (void)loadValueForConfigurationKey:(id)a3 completionBlock:(id)a4;
- (void)loadValueForConfigurationKeys:(id)a3 completionBlock:(id)a4;
- (void)pushNavigationHistoryPageIdentifier:(id)a3;
- (void)sendAppPreviewStateChanged:(BOOL)a3;
- (void)sendApplicationWindowSizeDidUpdate:(CGSize)a3;
- (void)sendOnPageResponseWithDocument:(id)a3 data:(id)a4 URLResponse:(id)a5 performanceMetrics:(id)a6;
- (void)sendOnXEventWithDictionary:(id)a3 completionBlock:(id)a4;
- (void)setMetricsPageContext:(id)a3 forViewController:(id)a4;
@end

@implementation SUUIClientContext

+ (id)defaultContext
{
  v3 = [MEMORY[0x277D69A20] defaultStore];
  v4 = [v3 activeAccount];

  v5 = SSVStoreFrontIdentifierForAccount();
  if (!v5)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v6 = [a1 _cachePathForStoreFrontIdentifier:v5];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    if (v7)
    {
      goto LABEL_15;
    }
  }

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 pathForResource:@"SUUIStoreConfigurations" ofType:@"plist"];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
    v11 = [v10 objectForKey:v5];
    if (!v11)
    {
      v12 = [v5 rangeOfString:{@", "}];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
      }

      else
      {
        v14 = [v5 substringToIndex:v12];
        v11 = [v10 objectForKey:v14];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
LABEL_15:
      v13 = [[a1 alloc] initWithConfigurationDictionary:v7];
      if (v13)
      {
        v15 = [v5 copy];
        v16 = v13[16];
        v13[16] = v15;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = 0;
LABEL_18:

LABEL_19:

  return v13;
}

+ (NSString)_cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 stringByAppendingPathComponent:v5];

    v3 = [v6 stringByAppendingPathComponent:@"SUUIClientContext"];
  }

  return v3;
}

- (void)dealloc
{
  [(SUClientInterface *)self->_clientInterface setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIClientContext;
  [(SUUIClientContext *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIClientContext;
  v4 = [(SUUIClientContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%@]", v4, self->_storeFrontIdentifier];

  return v5;
}

+ (AMSBag)amsBag
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAMSBagClass_softClass;
  v10 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAMSBagClass_block_invoke;
    v6[3] = &unk_2798FB038;
    v6[4] = &v7;
    __getAMSBagClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 bagForProfile:@"AppStore" profileVersion:@"1"];

  return v4;
}

- (SUUIClientContext)initWithConfigurationDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SUUIClientContext;
  v5 = [(SUUIClientContext *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundle = v5->_bundle;
    v5->_bundle = v6;

    v8 = objc_alloc_init(MEMORY[0x277D7FDC0]);
    clientInterface = v5->_clientInterface;
    v5->_clientInterface = v8;

    [(SUClientInterface *)v5->_clientInterface setDelegate:v5];
    v10 = [v4 copy];
    configurationDictionary = v5->_configurationDictionary;
    v5->_configurationDictionary = v10;

    v5->_userInterfaceIdiomOverride = 0x7FFFFFFFFFFFFFFFLL;
    v12 = objc_alloc_init(SUUIClientContextViewControllerFactory);
    [(SUClientInterface *)v5->_clientInterface setViewControllerFactory:v12];
    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    placeholderImageCache = v5->_placeholderImageCache;
    v5->_placeholderImageCache = v13;

    [(NSCache *)v5->_placeholderImageCache setName:@"com.apple.iTunesStoreUI.SUUIClientContext.placeholderImageCache"];
  }

  return v5;
}

- (void)getDefaultMetricsControllerWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(SUUIClientContext *)self URLBag];
  v6 = *MEMORY[0x277D6A4F8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SUUIClientContext_getDefaultMetricsControllerWithCompletionBlock___block_invoke;
  v8[3] = &unk_2798FB3C8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 loadValueForKey:v6 completionBlock:v8];
}

void __68__SUUIClientContext_getDefaultMetricsControllerWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SUUIClientContext_getDefaultMetricsControllerWithCompletionBlock___block_invoke_2;
  block[3] = &unk_2798F9498;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__SUUIClientContext_getDefaultMetricsControllerWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v8 = *(a1 + 32);
  v2 = [*(a1 + 40) metricsConfigurationIdentifier];
  if (v2)
  {
    v3 = [*(a1 + 32) objectForKey:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;

      v8 = v4;
    }
  }

  v5 = [objc_alloc(MEMORY[0x277D69B70]) initWithGlobalConfiguration:v8];
  if (v5)
  {
    v6 = [[SUUIMetricsController alloc] initWithGlobalConfiguration:v5];
    [(SUUIMetricsController *)v6 setTopic:@"xp_its_main"];
    v7 = SSVDefaultUserAgent();
    [(SUUIMetricsController *)v6 setUserAgent:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)localizedStringForKey:(id)a3 inTable:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  localizedStrings = self->_localizedStrings;
  if (!localizedStrings)
  {
    v9 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [SUUILocalizedStringDictionary alloc];
      v16[0] = self->_bundle;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v12 = [(SUUILocalizedStringDictionary *)v10 initWithLocaleName:v9 bundles:v11];
      v13 = self->_localizedStrings;
      self->_localizedStrings = v12;
    }

    localizedStrings = self->_localizedStrings;
  }

  v14 = [(SUUILocalizedStringDictionary *)localizedStrings localizedStringForKey:v6 inTable:v7];

  return v14;
}

+ (id)localizedStringForKey:(id)a3 inBundles:(id)a4 inTable:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16[0] = v10;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [v11 localeIdentifier];

  v13 = [[SUUILocalizedStringDictionary alloc] initWithLocaleName:v12 bundles:v8];
  v14 = [(SUUILocalizedStringDictionary *)v13 localizedStringForKey:v7 inTable:v9];

  return v14;
}

- (id)metricsPageContextForViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    do
    {
      v5 = v4;
      v6 = [(NSMapTable *)self->_metricsPageContexts objectForKey:v4];
      v4 = [v4 parentViewController];
    }

    while (v4 && !v6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)navigationHistory
{
  v2 = [(SUUIClientContext *)self _navigationHistory];
  v3 = [v2 copy];

  return v3;
}

- (id)newLegacyStorePageViewControllerForURLResponse:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D7FE88]);
  [v4 setClientInterface:self->_clientInterface];
  return v4;
}

- (id)previewViewControllerForViewElement:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 objectForKey:@"data-preview-id"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length] || (objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForKey:", @"AllowPreviewForAllElements"), v7, v8))
  {
    v9 = objc_alloc_init(SUUIPreviewContainerViewController);
    v10 = [[SUUIClientContextPreviewContainer alloc] initWithAppContext:self->_scriptAppContext clientContext:self previewContainerViewController:v9];
    v13 = @"previewContainer";
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v4 dispatchEvent:@"preview" eventAttribute:@"onpreview" canBubble:1 isCancelable:1 extraInfo:v11 completionBlock:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pushNavigationHistoryPageIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(SUUIClientContext *)self _navigationHistory];
  if ([v4 count] == 5)
  {
    [v4 removeObjectAtIndex:0];
  }

  [v4 addObject:v6];
  if (self->_navigationHistoryPersistenceKey)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setObject:v4 forKey:self->_navigationHistoryPersistenceKey];
    [v5 synchronize];
  }
}

- (void)setMetricsPageContext:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  objc_initWeak(&location, a4);
  metricsPageContexts = self->_metricsPageContexts;
  if (v6)
  {
    if (!metricsPageContexts)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v9 = self->_metricsPageContexts;
      self->_metricsPageContexts = v8;

      metricsPageContexts = self->_metricsPageContexts;
    }

    v10 = objc_loadWeakRetained(&location);
    [(NSMapTable *)metricsPageContexts setObject:v6 forKey:v10];
  }

  else
  {
    v10 = objc_loadWeakRetained(&location);
    [(NSMapTable *)metricsPageContexts removeObjectForKey:v10];
  }

  objc_destroyWeak(&location);
}

- (BOOL)supportsRenderingVersion:(unsigned int)a3
{
  if (a3 == 0x80000)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.Music"];

  return v6;
}

- (id)tabBarItemsForStyle:(int64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(SUUIClientContext *)self valueForConfigurationKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3 || ([v4 objectForKey:@"compact"], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = [v4 objectForKey:@"standard"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v4;
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v18 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 objectForKey:{@"id", v18}];
            if (v13)
            {
              v14 = [[SUUITabBarItem alloc] initWithTabIdentifier:v13];
              v15 = [v12 objectForKey:@"url"];
              if (v15)
              {
                v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v15];
                [(SUUITabBarItem *)v14 setRootURL:v16];
              }

              [v6 addObject:v14];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      v5 = v18;
      v4 = v19;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSURLBag)URLBag
{
  urlBag = self->_urlBag;
  if (!urlBag)
  {
    v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
    v5 = SSVDefaultUserAgent();
    [v4 setValue:v5 forHTTPHeaderField:*MEMORY[0x277D6A130]];

    v6 = [(SSURLBag *)[SUUIURLBag alloc] initWithURLBagContext:v4];
    v7 = self->_urlBag;
    self->_urlBag = v6;

    urlBag = self->_urlBag;
  }

  return urlBag;
}

- (SUUITrendingSearchProvider)trendingSearchProvider
{
  trendingSearchProvider = self->_trendingSearchProvider;
  if (!trendingSearchProvider)
  {
    v4 = [[SUUITrendingSearchProvider alloc] initWithClientContext:self];
    v5 = self->_trendingSearchProvider;
    self->_trendingSearchProvider = v4;

    trendingSearchProvider = self->_trendingSearchProvider;
  }

  return trendingSearchProvider;
}

- (NSOperationQueue)resourceLoadQueue
{
  resourceLoadQueue = self->_resourceLoadQueue;
  if (!resourceLoadQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_resourceLoadQueue;
    self->_resourceLoadQueue = v4;

    [(NSOperationQueue *)self->_resourceLoadQueue setName:@"com.apple.iTunesStoreUI.SUUIClientContext.resourceLoadQueue"];
    [(NSOperationQueue *)self->_resourceLoadQueue setMaxConcurrentOperationCount:8];
    resourceLoadQueue = self->_resourceLoadQueue;
  }

  return resourceLoadQueue;
}

- (void)clientInterface:(id)a3 presentDialog:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    dialogController = self->_dialogController;
    if (!dialogController)
    {
      v8 = objc_alloc_init(SUUIStoreDialogController);
      v9 = self->_dialogController;
      self->_dialogController = v8;

      dialogController = self->_dialogController;
    }

    [(SUUIStoreDialogController *)dialogController presentDialog:v6];
  }
}

- (id)scriptInterfaceForClientInterface:(id)a3
{
  v3 = [(SUUIClientContext *)self _applicationController];
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 legacyScriptInterfaceForApplication:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)customizePurchase:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSString *)self->_additionalPurchaseParameters length])
  {
    v5 = [v4 buyParameters];
    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@", v5, self->_additionalPurchaseParameters];
      [v4 setBuyParameters:v6];
    }
  }

  purchaseReferrerURL = self->_purchaseReferrerURL;
  if (purchaseReferrerURL)
  {
    v8 = [(SUUIURL *)purchaseReferrerURL referrerApplicationName];
    [v4 setValue:v8 forDownloadProperty:*MEMORY[0x277D6A030]];
    v9 = [(SUUIURL *)self->_purchaseReferrerURL referrerURLString];
    [v4 setValue:v9 forDownloadProperty:*MEMORY[0x277D6A038]];
    v10 = [v4 buyParameters];
    v11 = v10;
    if (v10 && v8 | v9)
    {
      v12 = [v10 mutableCopy];
      if (v8)
      {
        v13 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v14 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v13];
        [v12 appendFormat:@"&extRefApp=%@", v14];
      }

      if (v9)
      {
        v15 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v16 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v15];
        [v12 appendFormat:@"&extRefUrl=%@", v16];
      }

      [v4 setBuyParameters:v12];
    }
  }

  if (self->_purchaseAffiliateIdentifier)
  {
    [v4 setAffiliateIdentifier:?];
  }

  v17 = [v4 requestProperties];
  v18 = [v17 mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x277D69BD0]);
  }

  if (self->_purchaseURLBagType)
  {
    [v18 setURLBagType:?];
  }

  v19 = [MEMORY[0x277D7FCD0] currentClient];
  v20 = [v19 clientProvidedHeaders];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [v20 allKeys];
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * i);
        v27 = [v20 objectForKeyedSubscript:v26];
        [v18 setValue:v27 forHTTPHeaderField:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  [v4 setRequestProperties:v18];
}

- (void)customizeSoftwarePurchase:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSString *)self->_additionalPurchaseParameters length])
  {
    v5 = [v4 buyParameters];
    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@", v5, self->_additionalPurchaseParameters];
      [v4 setBuyParameters:v6];
    }
  }

  purchaseReferrerURL = self->_purchaseReferrerURL;
  if (purchaseReferrerURL)
  {
    v8 = [(SUUIURL *)purchaseReferrerURL referrerApplicationName];
    v9 = [(SUUIURL *)self->_purchaseReferrerURL referrerApplicationName];
    [v4 setReferrerName:v9];

    v10 = [(SUUIURL *)self->_purchaseReferrerURL referrerURLString];
    [v4 setReferrerURL:v10];
    v11 = [v4 buyParameters];
    v12 = v11;
    if (v11 && v8 | v10)
    {
      v13 = [v11 mutableCopy];
      if (v8)
      {
        v14 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v15 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v14];
        [v13 appendFormat:@"&extRefApp=%@", v15];
      }

      if (v10)
      {
        v16 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v17 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v16];
        [v13 appendFormat:@"&extRefUrl=%@", v17];
      }

      [v4 setBuyParameters:v13];
    }
  }

  if (self->_purchaseAffiliateIdentifier)
  {
    [v4 setAffiliateIdentifier:?];
  }

  v18 = objc_opt_new();
  v19 = [MEMORY[0x277D7FCD0] currentClient];
  v20 = [v19 clientProvidedHeaders];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [v20 allKeys];
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * i);
        v27 = [v20 objectForKeyedSubscript:v26];
        [v18 setValue:v27 forKey:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  [v4 setAdditionalHeaders:v18];
}

- (BOOL)isManagedAppleID
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];
  v4 = [v3 isManagedAppleID];

  return v4;
}

- (BOOL)isMultiUser
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

- (void)loadValueForConfigurationKey:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIClientContext *)self valueForConfigurationKey:v6];
  if (v8)
  {
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke;
      block[3] = &unk_2798F5D58;
      v17 = v7;
      v16 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = [(SUUIClientContext *)self URLBag];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke_2;
    v10[3] = &unk_2798FB418;
    v10[4] = self;
    v11 = v6;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [v9 loadWithCompletionBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2;
    v7 = [objc_opt_class() _configurationDictionaryWithBagDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKey:a1[5]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke_3;
  v13[3] = &unk_2798FB3F0;
  v14 = v8;
  v9 = v8;
  objc_copyWeak(&v19, a1 + 7);
  v15 = a1[5];
  v10 = a1[6];
  v17 = v5;
  v18 = v10;
  v16 = v7;
  v11 = v5;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v19);
}

uint64_t __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _setValue:*(a1 + 32) forConfigurationKey:*(a1 + 40)];
  }

  result = *(a1 + 64);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)loadValueForConfigurationKeys:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke;
  v21[3] = &unk_2798FB440;
  v21[4] = self;
  v9 = v8;
  v22 = v9;
  [v6 enumerateObjectsUsingBlock:v21];
  if (v7 && (v10 = [v6 count], v10 == objc_msgSend(v9, "count")))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_2;
    block[3] = &unk_2798F5D58;
    v20 = v7;
    v19 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = [(SUUIClientContext *)self URLBag];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_3;
    v12[3] = &unk_2798FB4B8;
    v12[4] = self;
    v13 = v6;
    v14 = v9;
    objc_copyWeak(&v16, &location);
    v15 = v7;
    [v11 loadWithCompletionBlock:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) valueForConfigurationKey:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

void __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2;
    a2 = [objc_opt_class() _configurationDictionaryWithBagDictionary:v6];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_4;
  v16[3] = &unk_2798FB440;
  v17 = a2;
  v7 = *(a1 + 40);
  v18 = *(a1 + 48);
  v8 = a2;
  [v7 enumerateObjectsUsingBlock:v16];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_5;
  v11[3] = &unk_2798FB490;
  v12 = *(a1 + 48);
  objc_copyWeak(&v15, (a1 + 64));
  v9 = *(a1 + 56);
  v13 = v5;
  v14 = v9;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v15);
}

void __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

void __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_6;
  v4[3] = &unk_2798FB468;
  objc_copyWeak(&v5, (a1 + 56));
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), *(a1 + 40));
  }

  objc_destroyWeak(&v5);
}

void __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _setValue:v5 forConfigurationKey:v6];
  }
}

- (Class)moviePlayerViewControllerClass
{
  v2 = SUUIMediaPlayerFramework();

  return SUUIWeakLinkedClassForString(&cfstr_Mpmovieplayerv.isa, v2);
}

- (SSVPlatformContext)platformContext
{
  v3 = [(SUUIURLBag *)self->_urlBag existingBagDictionary];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D69CE8]) initWithBagDictionary:v3];
  }

  else
  {
    v5 = [(SUUIClientContext *)self URLBag];
    [v5 loadWithCompletionBlock:&__block_literal_global_36];

    v4 = 0;
  }

  return v4;
}

- (BOOL)isBootstrapScriptFallbackDisabled
{
  v2 = [(SUUIClientContext *)self existingBagValueForKey:@"bootstrap-script-fallback-disabled"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)existingBagValueForKey:(id)a3
{
  urlBag = self->_urlBag;
  v4 = a3;
  v5 = [(SUUIURLBag *)urlBag existingBagDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)newLoadStoreURLOperationWithURL:(id)a3
{
  v4 = MEMORY[0x277CBABA0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  v7 = [(SUUIClientContext *)self newLoadStoreURLOperationWithURLRequest:v6];
  return v7;
}

- (id)newLoadStoreURLOperationWithURLRequest:(id)a3
{
  v4 = MEMORY[0x277D69CD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithURLRequest:v5];

  v7 = [(SUUIClientContext *)self URLBag];
  [v6 configureWithURLBag:v7];

  [v6 setITunesStoreRequest:1];
  [v6 setMachineDataStyle:2];
  v8 = [(SUUIClientContext *)self SAPSessionForVersion:0];
  [v6 setSAPSession:v8];

  v9 = [objc_alloc(MEMORY[0x277D69D00]) initWithPolicyType:1];
  [v6 setSAPSignaturePolicy:v9];

  return v6;
}

- (id)SAPSessionForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    [MEMORY[0x277D69CC0] sharedPrimeSession];
  }

  else
  {
    [MEMORY[0x277D69CC0] sharedDefaultSession];
  }
  v3 = ;

  return v3;
}

void __54__SUUIClientContext_sendApplicationDidEnterBackground__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"itms"];
  v3 = [v2 toObjectOfClass:objc_opt_class()];

  [v3 sendApplicationDidEnterBackground];
}

void __55__SUUIClientContext_sendApplicationWillEnterForeground__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"itms"];
  v3 = [v2 toObjectOfClass:objc_opt_class()];

  [v3 sendApplicationWillEnterForeground];
}

- (void)sendOnPageResponseWithDocument:(id)a3 data:(id)a4 URLResponse:(id)a5 performanceMetrics:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  scriptAppContext = self->_scriptAppContext;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__SUUIClientContext_sendOnPageResponseWithDocument_data_URLResponse_performanceMetrics___block_invoke;
  v19[3] = &unk_2798FA7E8;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(IKAppContext *)scriptAppContext evaluate:v19 completionBlock:0];
}

void __88__SUUIClientContext_sendOnPageResponseWithDocument_data_URLResponse_performanceMetrics___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnPageResponseWithDocument:a1[4] data:a1[5] URLResponse:a1[6] performanceMetrics:a1[7]];
}

- (void)sendOnXEventWithDictionary:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_scriptAppContext;
  if (v8)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__SUUIClientContext_sendOnXEventWithDictionary_completionBlock___block_invoke;
    v12[3] = &unk_2798FB520;
    v14 = v15;
    v13 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SUUIClientContext_sendOnXEventWithDictionary_completionBlock___block_invoke_2;
    v9[3] = &unk_2798FB548;
    v10 = v7;
    v11 = v15;
    [(IKAppContext *)v8 evaluate:v12 completionBlock:v9];

    _Block_object_dispose(v15, 8);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __64__SUUIClientContext_sendOnXEventWithDictionary_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  *(*(*(a1 + 40) + 8) + 24) = [v4 sendOnXEventWithDictionary:*(a1 + 32)];
}

uint64_t __64__SUUIClientContext_sendOnXEventWithDictionary_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

- (void)sendAppPreviewStateChanged:(BOOL)a3
{
  scriptAppContext = self->_scriptAppContext;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SUUIClientContext_sendAppPreviewStateChanged___block_invoke;
  v4[3] = &__block_descriptor_33_e19_v16__0__JSContext_8l;
  v5 = a3;
  [(IKAppContext *)scriptAppContext evaluate:v4 completionBlock:0];
}

void __48__SUUIClientContext_sendAppPreviewStateChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendAppPreviewStateChanged:*(a1 + 32)];
}

- (void)sendApplicationWindowSizeDidUpdate:(CGSize)a3
{
  scriptAppContext = self->_scriptAppContext;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUUIClientContext_sendApplicationWindowSizeDidUpdate___block_invoke;
  v4[3] = &__block_descriptor_48_e19_v16__0__JSContext_8l;
  v5 = a3;
  [(IKAppContext *)scriptAppContext evaluate:v4 completionBlock:0];
}

void __56__SUUIClientContext_sendApplicationWindowSizeDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendApplicationWindowSizeDidUpdate:{*(a1 + 32), *(a1 + 40)}];
}

- (int64_t)tabBarStyleForWidth:(double)a3
{
  if (SUUIUserInterfaceIdiom(self) != 1)
  {
    return 0;
  }

  if (SUUICompactThreshold_onceToken != -1)
  {
    [SUUIClientContext tabBarStyleForWidth:];
  }

  return *&SUUICompactThreshold_threshold < a3;
}

+ (id)_cachePathForStoreFrontIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _cachePath];
  if (v5)
  {
    v6 = [v4 stringByAppendingPathExtension:@"plist"];
    v7 = [v5 stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_configurationDictionaryWithBagDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"language"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:v4 forKey:@"locale"];
    v6 = [v3 objectForKey:@"isScheduledGiftingEnabled"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue] & 1) == 0)
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKey:@"cgift"];
    }

    v7 = [v3 objectForKey:@"isBuyingScheduledGiftCertificateEnabled"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) == 0)
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKey:@"mgift"];
    }

    v8 = [v3 objectForKey:@"storefront-header-suffix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setObject:v8 forKey:@"sfsuffix"];
    }

    v9 = [v3 objectForKey:@"itml-store"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
      v11 = v9;
    }

    else
    {
      v11 = &stru_286AECDE0;
      v10 = v5;
    }

    [v10 setObject:v11 forKey:@"appjs.v2"];
    v12 = [v3 objectForKey:@"has-in-apps-notice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setObject:v12 forKey:@"inappnote"];
    }

    v13 = [v3 objectForKey:@"tabs"];
    if (v13)
    {
      [v5 setObject:v13 forKey:@"tabs"];
    }

    v14 = [v3 objectForKey:@"itunes-stop-pages"];
    if (v14)
    {
      [v5 setObject:v14 forKey:@"itunes-stop-pages"];
    }

    v15 = [v3 objectForKey:@"isSponsoredAdsEnabled"];
    if (v15)
    {
      [v5 setObject:v15 forKey:@"isSponsoredAdsEnabled"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setAdditionalPurchaseParameters:(id)a3
{
  if (self->_additionalPurchaseParameters != a3)
  {
    v5 = [a3 copy];
    additionalPurchaseParameters = self->_additionalPurchaseParameters;
    self->_additionalPurchaseParameters = v5;

    MEMORY[0x2821F96F8](v5, additionalPurchaseParameters);
  }
}

- (void)_setPurchaseAffiliateIdentifier:(id)a3
{
  if (self->_purchaseAffiliateIdentifier != a3)
  {
    v5 = [a3 copy];
    purchaseAffiliateIdentifier = self->_purchaseAffiliateIdentifier;
    self->_purchaseAffiliateIdentifier = v5;

    MEMORY[0x2821F96F8](v5, purchaseAffiliateIdentifier);
  }
}

- (void)_setValue:(id)a3 forConfigurationKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSDictionary *)self->_configurationDictionary mutableCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [v7 setObject:v11 forKey:v6];
  v8 = [v7 copy];
  configurationDictionary = self->_configurationDictionary;
  self->_configurationDictionary = v8;

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"SUUIClientContextConfigurationDidChangeNotification" object:self];
}

- (id)_navigationHistory
{
  navigationHistory = self->_navigationHistory;
  if (!navigationHistory)
  {
    if (!self->_navigationHistoryPersistenceKey)
    {
      goto LABEL_6;
    }

    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 arrayForKey:self->_navigationHistoryPersistenceKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 mutableCopy];
      v7 = self->_navigationHistory;
      self->_navigationHistory = v6;
    }

    navigationHistory = self->_navigationHistory;
    if (!navigationHistory)
    {
LABEL_6:
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = self->_navigationHistory;
      self->_navigationHistory = v8;

      navigationHistory = self->_navigationHistory;
    }
  }

  return navigationHistory;
}

- (SUUIApplicationController)_applicationController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationController);

  return WeakRetained;
}

@end