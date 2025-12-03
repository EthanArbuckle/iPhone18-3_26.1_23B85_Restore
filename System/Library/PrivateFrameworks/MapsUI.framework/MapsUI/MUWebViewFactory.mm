@interface MUWebViewFactory
+ (id)sharedWebViewFactory;
- (MUWebViewFactory)init;
- (id)dequeueItemWithBridgeConfiguration:(id)configuration;
- (void)requeueItem:(id)item;
@end

@implementation MUWebViewFactory

- (void)requeueItem:(id)item
{
  itemCopy = item;
  messageHandlerProxy = [itemCopy messageHandlerProxy];
  [messageHandlerProxy setTarget:0];

  webView = [itemCopy webView];
  [webView setNavigationDelegate:0];

  webView2 = [itemCopy webView];
  [webView2 setUIDelegate:0];

  webView3 = [itemCopy webView];
  [webView3 stopLoading];

  webViewCache = self->_webViewCache;
  bridgeConfiguration = [itemCopy bridgeConfiguration];
  array = [(NSCache *)webViewCache objectForKey:bridgeConfiguration];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = self->_webViewCache;
    bridgeConfiguration2 = [itemCopy bridgeConfiguration];
    [(NSCache *)v11 setObject:array forKey:bridgeConfiguration2];
  }

  [array addObject:itemCopy];
}

- (id)dequeueItemWithBridgeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(NSCache *)self->_webViewCache objectForKey:configurationCopy];
  if ([v5 count])
  {
    lastObject = [v5 lastObject];
    [v5 removeLastObject];
  }

  else
  {
    v7 = objc_alloc_init(MUWebViewMessageHandlerProxy);
    v8 = objc_alloc_init(MEMORY[0x1E6985350]);
    nativeControllerName = [configurationCopy nativeControllerName];
    [v8 addScriptMessageHandler:v7 name:nativeControllerName];

    v10 = objc_alloc_init(MEMORY[0x1E69853A8]);
    [v10 _setClientNavigationsRunAtForegroundPriority:1];
    [v10 setIgnoresViewportScaleLimits:0];
    [v10 setSuppressesIncrementalRendering:1];
    [v10 setProcessPool:self->_processPool];
    [v10 setUserContentController:v8];
    v11 = objc_alloc(MEMORY[0x1E69853A0]);
    v12 = [v11 initWithFrame:v10 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    scrollView = [v12 scrollView];
    [scrollView setScrollsToTop:0];

    scrollView2 = [v12 scrollView];
    [scrollView2 setBounces:0];

    scrollView3 = [v12 scrollView];
    [scrollView3 setScrollEnabled:0];

    scrollView4 = [v12 scrollView];
    [scrollView4 setMaximumZoomScale:1.0];

    scrollView5 = [v12 scrollView];
    [scrollView5 setMinimumZoomScale:1.0];

    [v12 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v12 setBackgroundColor:clearColor];

    [v12 _setUseSystemAppearance:1];
    lastObject = [[MUWebViewFactoryItem alloc] initWithBridgeConfiguration:configurationCopy webView:v12 messageHandlerProxy:v7];
  }

  return lastObject;
}

- (MUWebViewFactory)init
{
  v9.receiver = self;
  v9.super_class = MUWebViewFactory;
  v2 = [(MUWebViewFactory *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69853F0]);
    v4 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v3];
    processPool = v2->_processPool;
    v2->_processPool = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    webViewCache = v2->_webViewCache;
    v2->_webViewCache = v6;
  }

  return v2;
}

+ (id)sharedWebViewFactory
{
  if (sharedWebViewFactory_onceToken != -1)
  {
    dispatch_once(&sharedWebViewFactory_onceToken, &__block_literal_global_6667);
  }

  v3 = sharedWebViewFactory_factory;

  return v3;
}

uint64_t __40__MUWebViewFactory_sharedWebViewFactory__block_invoke()
{
  v0 = objc_alloc_init(MUWebViewFactory);
  v1 = sharedWebViewFactory_factory;
  sharedWebViewFactory_factory = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end