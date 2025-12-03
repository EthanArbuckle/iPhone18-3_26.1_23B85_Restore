@interface SUUIClientContext
+ (AMSBag)amsBag;
+ (NSString)_cachePath;
+ (id)_cachePathForStoreFrontIdentifier:(id)identifier;
+ (id)_configurationDictionaryWithBagDictionary:(id)dictionary;
+ (id)defaultContext;
+ (id)localizedStringForKey:(id)key inBundles:(id)bundles inTable:(id)table;
- (BOOL)isBootstrapScriptFallbackDisabled;
- (BOOL)isManagedAppleID;
- (BOOL)isMultiUser;
- (BOOL)supportsRenderingVersion:(unsigned int)version;
- (Class)moviePlayerViewControllerClass;
- (NSArray)navigationHistory;
- (NSOperationQueue)resourceLoadQueue;
- (NSString)description;
- (SSURLBag)URLBag;
- (SSVPlatformContext)platformContext;
- (SUUIApplicationController)_applicationController;
- (SUUIClientContext)initWithConfigurationDictionary:(id)dictionary;
- (SUUITrendingSearchProvider)trendingSearchProvider;
- (id)SAPSessionForVersion:(int64_t)version;
- (id)_navigationHistory;
- (id)existingBagValueForKey:(id)key;
- (id)localizedStringForKey:(id)key inTable:(id)table;
- (id)metricsPageContextForViewController:(id)controller;
- (id)newLegacyStorePageViewControllerForURLResponse:(id)response;
- (id)newLoadStoreURLOperationWithURL:(id)l;
- (id)newLoadStoreURLOperationWithURLRequest:(id)request;
- (id)previewViewControllerForViewElement:(id)element;
- (id)scriptInterfaceForClientInterface:(id)interface;
- (id)tabBarItemsForStyle:(int64_t)style;
- (int64_t)tabBarStyleForWidth:(double)width;
- (void)_setAdditionalPurchaseParameters:(id)parameters;
- (void)_setPurchaseAffiliateIdentifier:(id)identifier;
- (void)_setValue:(id)value forConfigurationKey:(id)key;
- (void)clientInterface:(id)interface presentDialog:(id)dialog;
- (void)customizePurchase:(id)purchase;
- (void)customizeSoftwarePurchase:(id)purchase;
- (void)dealloc;
- (void)getDefaultMetricsControllerWithCompletionBlock:(id)block;
- (void)loadValueForConfigurationKey:(id)key completionBlock:(id)block;
- (void)loadValueForConfigurationKeys:(id)keys completionBlock:(id)block;
- (void)pushNavigationHistoryPageIdentifier:(id)identifier;
- (void)sendAppPreviewStateChanged:(BOOL)changed;
- (void)sendApplicationWindowSizeDidUpdate:(CGSize)update;
- (void)sendOnPageResponseWithDocument:(id)document data:(id)data URLResponse:(id)response performanceMetrics:(id)metrics;
- (void)sendOnXEventWithDictionary:(id)dictionary completionBlock:(id)block;
- (void)setMetricsPageContext:(id)context forViewController:(id)controller;
@end

@implementation SUUIClientContext

+ (id)defaultContext
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  v5 = SSVStoreFrontIdentifierForAccount();
  if (!v5)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v6 = [self _cachePathForStoreFrontIdentifier:v5];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    if (v7)
    {
      goto LABEL_15;
    }
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle pathForResource:@"SUUIStoreConfigurations" ofType:@"plist"];

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
      v13 = [[self alloc] initWithConfigurationDictionary:v7];
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
  firstObject = [v2 firstObject];
  if (firstObject)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [firstObject stringByAppendingPathComponent:bundleIdentifier];

    firstObject = [v6 stringByAppendingPathComponent:@"SUUIClientContext"];
  }

  return firstObject;
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

- (SUUIClientContext)initWithConfigurationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
    v10 = [dictionaryCopy copy];
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

- (void)getDefaultMetricsControllerWithCompletionBlock:(id)block
{
  blockCopy = block;
  uRLBag = [(SUUIClientContext *)self URLBag];
  v6 = *MEMORY[0x277D6A4F8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SUUIClientContext_getDefaultMetricsControllerWithCompletionBlock___block_invoke;
  v8[3] = &unk_2798FB3C8;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [uRLBag loadValueForKey:v6 completionBlock:v8];
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

- (id)localizedStringForKey:(id)key inTable:(id)table
{
  v16[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  tableCopy = table;
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

  v14 = [(SUUILocalizedStringDictionary *)localizedStrings localizedStringForKey:keyCopy inTable:tableCopy];

  return v14;
}

+ (id)localizedStringForKey:(id)key inBundles:(id)bundles inTable:(id)table
{
  v16[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  bundlesCopy = bundles;
  tableCopy = table;
  if (!bundlesCopy)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16[0] = v10;
    bundlesCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v13 = [[SUUILocalizedStringDictionary alloc] initWithLocaleName:localeIdentifier bundles:bundlesCopy];
  v14 = [(SUUILocalizedStringDictionary *)v13 localizedStringForKey:keyCopy inTable:tableCopy];

  return v14;
}

- (id)metricsPageContextForViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    do
    {
      v5 = controllerCopy;
      v6 = [(NSMapTable *)self->_metricsPageContexts objectForKey:controllerCopy];
      controllerCopy = [controllerCopy parentViewController];
    }

    while (controllerCopy && !v6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)navigationHistory
{
  _navigationHistory = [(SUUIClientContext *)self _navigationHistory];
  v3 = [_navigationHistory copy];

  return v3;
}

- (id)newLegacyStorePageViewControllerForURLResponse:(id)response
{
  v4 = objc_alloc_init(MEMORY[0x277D7FE88]);
  [v4 setClientInterface:self->_clientInterface];
  return v4;
}

- (id)previewViewControllerForViewElement:(id)element
{
  v14[1] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributes = [elementCopy attributes];
  v6 = [attributes objectForKey:@"data-preview-id"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length] || (objc_msgSend(MEMORY[0x277CBEBD0], "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForKey:", @"AllowPreviewForAllElements"), v7, v8))
  {
    v9 = objc_alloc_init(SUUIPreviewContainerViewController);
    v10 = [[SUUIClientContextPreviewContainer alloc] initWithAppContext:self->_scriptAppContext clientContext:self previewContainerViewController:v9];
    v13 = @"previewContainer";
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [elementCopy dispatchEvent:@"preview" eventAttribute:@"onpreview" canBubble:1 isCancelable:1 extraInfo:v11 completionBlock:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pushNavigationHistoryPageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _navigationHistory = [(SUUIClientContext *)self _navigationHistory];
  if ([_navigationHistory count] == 5)
  {
    [_navigationHistory removeObjectAtIndex:0];
  }

  [_navigationHistory addObject:identifierCopy];
  if (self->_navigationHistoryPersistenceKey)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:_navigationHistory forKey:self->_navigationHistoryPersistenceKey];
    [standardUserDefaults synchronize];
  }
}

- (void)setMetricsPageContext:(id)context forViewController:(id)controller
{
  contextCopy = context;
  objc_initWeak(&location, controller);
  metricsPageContexts = self->_metricsPageContexts;
  if (contextCopy)
  {
    if (!metricsPageContexts)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v9 = self->_metricsPageContexts;
      self->_metricsPageContexts = v8;

      metricsPageContexts = self->_metricsPageContexts;
    }

    v10 = objc_loadWeakRetained(&location);
    [(NSMapTable *)metricsPageContexts setObject:contextCopy forKey:v10];
  }

  else
  {
    v10 = objc_loadWeakRetained(&location);
    [(NSMapTable *)metricsPageContexts removeObjectForKey:v10];
  }

  objc_destroyWeak(&location);
}

- (BOOL)supportsRenderingVersion:(unsigned int)version
{
  if (version == 0x80000)
  {
    return 1;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.Music"];

  return v6;
}

- (id)tabBarItemsForStyle:(int64_t)style
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(SUUIClientContext *)self valueForConfigurationKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (style || ([v4 objectForKey:@"compact"], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
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

- (void)clientInterface:(id)interface presentDialog:(id)dialog
{
  interfaceCopy = interface;
  dialogCopy = dialog;
  if (dialogCopy)
  {
    dialogController = self->_dialogController;
    if (!dialogController)
    {
      v8 = objc_alloc_init(SUUIStoreDialogController);
      v9 = self->_dialogController;
      self->_dialogController = v8;

      dialogController = self->_dialogController;
    }

    [(SUUIStoreDialogController *)dialogController presentDialog:dialogCopy];
  }
}

- (id)scriptInterfaceForClientInterface:(id)interface
{
  _applicationController = [(SUUIClientContext *)self _applicationController];
  delegate = [_applicationController delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate legacyScriptInterfaceForApplication:_applicationController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)customizePurchase:(id)purchase
{
  v33 = *MEMORY[0x277D85DE8];
  purchaseCopy = purchase;
  if ([(NSString *)self->_additionalPurchaseParameters length])
  {
    buyParameters = [purchaseCopy buyParameters];
    if (buyParameters)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@", buyParameters, self->_additionalPurchaseParameters];
      [purchaseCopy setBuyParameters:v6];
    }
  }

  purchaseReferrerURL = self->_purchaseReferrerURL;
  if (purchaseReferrerURL)
  {
    referrerApplicationName = [(SUUIURL *)purchaseReferrerURL referrerApplicationName];
    [purchaseCopy setValue:referrerApplicationName forDownloadProperty:*MEMORY[0x277D6A030]];
    referrerURLString = [(SUUIURL *)self->_purchaseReferrerURL referrerURLString];
    [purchaseCopy setValue:referrerURLString forDownloadProperty:*MEMORY[0x277D6A038]];
    buyParameters2 = [purchaseCopy buyParameters];
    v11 = buyParameters2;
    if (buyParameters2 && referrerApplicationName | referrerURLString)
    {
      v12 = [buyParameters2 mutableCopy];
      if (referrerApplicationName)
      {
        uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v14 = [referrerApplicationName stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        [v12 appendFormat:@"&extRefApp=%@", v14];
      }

      if (referrerURLString)
      {
        uRLQueryAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v16 = [referrerURLString stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];
        [v12 appendFormat:@"&extRefUrl=%@", v16];
      }

      [purchaseCopy setBuyParameters:v12];
    }
  }

  if (self->_purchaseAffiliateIdentifier)
  {
    [purchaseCopy setAffiliateIdentifier:?];
  }

  requestProperties = [purchaseCopy requestProperties];
  v18 = [requestProperties mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x277D69BD0]);
  }

  if (self->_purchaseURLBagType)
  {
    [v18 setURLBagType:?];
  }

  currentClient = [MEMORY[0x277D7FCD0] currentClient];
  clientProvidedHeaders = [currentClient clientProvidedHeaders];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [clientProvidedHeaders allKeys];
  v22 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v26 = *(*(&v28 + 1) + 8 * i);
        v27 = [clientProvidedHeaders objectForKeyedSubscript:v26];
        [v18 setValue:v27 forHTTPHeaderField:v26];
      }

      v23 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  [purchaseCopy setRequestProperties:v18];
}

- (void)customizeSoftwarePurchase:(id)purchase
{
  v33 = *MEMORY[0x277D85DE8];
  purchaseCopy = purchase;
  if ([(NSString *)self->_additionalPurchaseParameters length])
  {
    buyParameters = [purchaseCopy buyParameters];
    if (buyParameters)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@&%@", buyParameters, self->_additionalPurchaseParameters];
      [purchaseCopy setBuyParameters:v6];
    }
  }

  purchaseReferrerURL = self->_purchaseReferrerURL;
  if (purchaseReferrerURL)
  {
    referrerApplicationName = [(SUUIURL *)purchaseReferrerURL referrerApplicationName];
    referrerApplicationName2 = [(SUUIURL *)self->_purchaseReferrerURL referrerApplicationName];
    [purchaseCopy setReferrerName:referrerApplicationName2];

    referrerURLString = [(SUUIURL *)self->_purchaseReferrerURL referrerURLString];
    [purchaseCopy setReferrerURL:referrerURLString];
    buyParameters2 = [purchaseCopy buyParameters];
    v12 = buyParameters2;
    if (buyParameters2 && referrerApplicationName | referrerURLString)
    {
      v13 = [buyParameters2 mutableCopy];
      if (referrerApplicationName)
      {
        uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v15 = [referrerApplicationName stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        [v13 appendFormat:@"&extRefApp=%@", v15];
      }

      if (referrerURLString)
      {
        uRLQueryAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v17 = [referrerURLString stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];
        [v13 appendFormat:@"&extRefUrl=%@", v17];
      }

      [purchaseCopy setBuyParameters:v13];
    }
  }

  if (self->_purchaseAffiliateIdentifier)
  {
    [purchaseCopy setAffiliateIdentifier:?];
  }

  v18 = objc_opt_new();
  currentClient = [MEMORY[0x277D7FCD0] currentClient];
  clientProvidedHeaders = [currentClient clientProvidedHeaders];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [clientProvidedHeaders allKeys];
  v22 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v26 = *(*(&v28 + 1) + 8 * i);
        v27 = [clientProvidedHeaders objectForKeyedSubscript:v26];
        [v18 setValue:v27 forKey:v26];
      }

      v23 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  [purchaseCopy setAdditionalHeaders:v18];
}

- (BOOL)isManagedAppleID
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  isManagedAppleID = [activeAccount isManagedAppleID];

  return isManagedAppleID;
}

- (BOOL)isMultiUser
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isMultiUser = [mEMORY[0x277D77BF8] isMultiUser];

  return isMultiUser;
}

- (void)loadValueForConfigurationKey:(id)key completionBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v8 = [(SUUIClientContext *)self valueForConfigurationKey:keyCopy];
  if (v8)
  {
    if (blockCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke;
      block[3] = &unk_2798F5D58;
      v17 = blockCopy;
      v16 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    uRLBag = [(SUUIClientContext *)self URLBag];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__SUUIClientContext_loadValueForConfigurationKey_completionBlock___block_invoke_2;
    v10[3] = &unk_2798FB418;
    v10[4] = self;
    v11 = keyCopy;
    objc_copyWeak(&v13, &location);
    v12 = blockCopy;
    [uRLBag loadWithCompletionBlock:v10];

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

- (void)loadValueForConfigurationKeys:(id)keys completionBlock:(id)block
{
  keysCopy = keys;
  blockCopy = block;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke;
  v21[3] = &unk_2798FB440;
  v21[4] = self;
  v9 = v8;
  v22 = v9;
  [keysCopy enumerateObjectsUsingBlock:v21];
  if (blockCopy && (v10 = [keysCopy count], v10 == objc_msgSend(v9, "count")))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_2;
    block[3] = &unk_2798F5D58;
    v20 = blockCopy;
    v19 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    objc_initWeak(&location, self);
    uRLBag = [(SUUIClientContext *)self URLBag];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__SUUIClientContext_loadValueForConfigurationKeys_completionBlock___block_invoke_3;
    v12[3] = &unk_2798FB4B8;
    v12[4] = self;
    v13 = keysCopy;
    v14 = v9;
    objc_copyWeak(&v16, &location);
    v15 = blockCopy;
    [uRLBag loadWithCompletionBlock:v12];

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
  existingBagDictionary = [(SUUIURLBag *)self->_urlBag existingBagDictionary];
  if (existingBagDictionary)
  {
    v4 = [objc_alloc(MEMORY[0x277D69CE8]) initWithBagDictionary:existingBagDictionary];
  }

  else
  {
    uRLBag = [(SUUIClientContext *)self URLBag];
    [uRLBag loadWithCompletionBlock:&__block_literal_global_36];

    v4 = 0;
  }

  return v4;
}

- (BOOL)isBootstrapScriptFallbackDisabled
{
  v2 = [(SUUIClientContext *)self existingBagValueForKey:@"bootstrap-script-fallback-disabled"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)existingBagValueForKey:(id)key
{
  urlBag = self->_urlBag;
  keyCopy = key;
  existingBagDictionary = [(SUUIURLBag *)urlBag existingBagDictionary];
  v6 = [existingBagDictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)newLoadStoreURLOperationWithURL:(id)l
{
  v4 = MEMORY[0x277CBABA0];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  v7 = [(SUUIClientContext *)self newLoadStoreURLOperationWithURLRequest:v6];
  return v7;
}

- (id)newLoadStoreURLOperationWithURLRequest:(id)request
{
  v4 = MEMORY[0x277D69CD8];
  requestCopy = request;
  v6 = [[v4 alloc] initWithURLRequest:requestCopy];

  uRLBag = [(SUUIClientContext *)self URLBag];
  [v6 configureWithURLBag:uRLBag];

  [v6 setITunesStoreRequest:1];
  [v6 setMachineDataStyle:2];
  v8 = [(SUUIClientContext *)self SAPSessionForVersion:0];
  [v6 setSAPSession:v8];

  v9 = [objc_alloc(MEMORY[0x277D69D00]) initWithPolicyType:1];
  [v6 setSAPSignaturePolicy:v9];

  return v6;
}

- (id)SAPSessionForVersion:(int64_t)version
{
  if (version == 1)
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

- (void)sendOnPageResponseWithDocument:(id)document data:(id)data URLResponse:(id)response performanceMetrics:(id)metrics
{
  documentCopy = document;
  dataCopy = data;
  responseCopy = response;
  metricsCopy = metrics;
  scriptAppContext = self->_scriptAppContext;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__SUUIClientContext_sendOnPageResponseWithDocument_data_URLResponse_performanceMetrics___block_invoke;
  v19[3] = &unk_2798FA7E8;
  v20 = documentCopy;
  v21 = dataCopy;
  v22 = responseCopy;
  v23 = metricsCopy;
  v15 = metricsCopy;
  v16 = responseCopy;
  v17 = dataCopy;
  v18 = documentCopy;
  [(IKAppContext *)scriptAppContext evaluate:v19 completionBlock:0];
}

void __88__SUUIClientContext_sendOnPageResponseWithDocument_data_URLResponse_performanceMetrics___block_invoke(void *a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnPageResponseWithDocument:a1[4] data:a1[5] URLResponse:a1[6] performanceMetrics:a1[7]];
}

- (void)sendOnXEventWithDictionary:(id)dictionary completionBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
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
    v13 = dictionaryCopy;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SUUIClientContext_sendOnXEventWithDictionary_completionBlock___block_invoke_2;
    v9[3] = &unk_2798FB548;
    v10 = blockCopy;
    v11 = v15;
    [(IKAppContext *)v8 evaluate:v12 completionBlock:v9];

    _Block_object_dispose(v15, 8);
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0);
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

- (void)sendAppPreviewStateChanged:(BOOL)changed
{
  scriptAppContext = self->_scriptAppContext;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SUUIClientContext_sendAppPreviewStateChanged___block_invoke;
  v4[3] = &__block_descriptor_33_e19_v16__0__JSContext_8l;
  changedCopy = changed;
  [(IKAppContext *)scriptAppContext evaluate:v4 completionBlock:0];
}

void __48__SUUIClientContext_sendAppPreviewStateChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendAppPreviewStateChanged:*(a1 + 32)];
}

- (void)sendApplicationWindowSizeDidUpdate:(CGSize)update
{
  scriptAppContext = self->_scriptAppContext;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SUUIClientContext_sendApplicationWindowSizeDidUpdate___block_invoke;
  v4[3] = &__block_descriptor_48_e19_v16__0__JSContext_8l;
  updateCopy = update;
  [(IKAppContext *)scriptAppContext evaluate:v4 completionBlock:0];
}

void __56__SUUIClientContext_sendApplicationWindowSizeDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendApplicationWindowSizeDidUpdate:{*(a1 + 32), *(a1 + 40)}];
}

- (int64_t)tabBarStyleForWidth:(double)width
{
  if (SUUIUserInterfaceIdiom(self) != 1)
  {
    return 0;
  }

  if (SUUICompactThreshold_onceToken != -1)
  {
    [SUUIClientContext tabBarStyleForWidth:];
  }

  return *&SUUICompactThreshold_threshold < width;
}

+ (id)_cachePathForStoreFrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _cachePath = [self _cachePath];
  if (_cachePath)
  {
    v6 = [identifierCopy stringByAppendingPathExtension:@"plist"];
    v7 = [_cachePath stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_configurationDictionaryWithBagDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"language"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v4 forKey:@"locale"];
    v6 = [dictionaryCopy objectForKey:@"isScheduledGiftingEnabled"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue] & 1) == 0)
    {
      [dictionary setObject:MEMORY[0x277CBEC28] forKey:@"cgift"];
    }

    v7 = [dictionaryCopy objectForKey:@"isBuyingScheduledGiftCertificateEnabled"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) == 0)
    {
      [dictionary setObject:MEMORY[0x277CBEC28] forKey:@"mgift"];
    }

    v8 = [dictionaryCopy objectForKey:@"storefront-header-suffix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [dictionary setObject:v8 forKey:@"sfsuffix"];
    }

    v9 = [dictionaryCopy objectForKey:@"itml-store"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = dictionary;
      v11 = v9;
    }

    else
    {
      v11 = &stru_286AECDE0;
      v10 = dictionary;
    }

    [v10 setObject:v11 forKey:@"appjs.v2"];
    v12 = [dictionaryCopy objectForKey:@"has-in-apps-notice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [dictionary setObject:v12 forKey:@"inappnote"];
    }

    v13 = [dictionaryCopy objectForKey:@"tabs"];
    if (v13)
    {
      [dictionary setObject:v13 forKey:@"tabs"];
    }

    v14 = [dictionaryCopy objectForKey:@"itunes-stop-pages"];
    if (v14)
    {
      [dictionary setObject:v14 forKey:@"itunes-stop-pages"];
    }

    v15 = [dictionaryCopy objectForKey:@"isSponsoredAdsEnabled"];
    if (v15)
    {
      [dictionary setObject:v15 forKey:@"isSponsoredAdsEnabled"];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)_setAdditionalPurchaseParameters:(id)parameters
{
  if (self->_additionalPurchaseParameters != parameters)
  {
    v5 = [parameters copy];
    additionalPurchaseParameters = self->_additionalPurchaseParameters;
    self->_additionalPurchaseParameters = v5;

    MEMORY[0x2821F96F8](v5, additionalPurchaseParameters);
  }
}

- (void)_setPurchaseAffiliateIdentifier:(id)identifier
{
  if (self->_purchaseAffiliateIdentifier != identifier)
  {
    v5 = [identifier copy];
    purchaseAffiliateIdentifier = self->_purchaseAffiliateIdentifier;
    self->_purchaseAffiliateIdentifier = v5;

    MEMORY[0x2821F96F8](v5, purchaseAffiliateIdentifier);
  }
}

- (void)_setValue:(id)value forConfigurationKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(NSDictionary *)self->_configurationDictionary mutableCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [v7 setObject:valueCopy forKey:keyCopy];
  v8 = [v7 copy];
  configurationDictionary = self->_configurationDictionary;
  self->_configurationDictionary = v8;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUUIClientContextConfigurationDidChangeNotification" object:self];
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

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults arrayForKey:self->_navigationHistoryPersistenceKey];

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