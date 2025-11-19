@interface MUWebViewFactory
+ (id)sharedWebViewFactory;
- (MUWebViewFactory)init;
- (id)dequeueItemWithBridgeConfiguration:(id)a3;
- (void)requeueItem:(id)a3;
@end

@implementation MUWebViewFactory

- (void)requeueItem:(id)a3
{
  v13 = a3;
  v4 = [v13 messageHandlerProxy];
  [v4 setTarget:0];

  v5 = [v13 webView];
  [v5 setNavigationDelegate:0];

  v6 = [v13 webView];
  [v6 setUIDelegate:0];

  v7 = [v13 webView];
  [v7 stopLoading];

  webViewCache = self->_webViewCache;
  v9 = [v13 bridgeConfiguration];
  v10 = [(NSCache *)webViewCache objectForKey:v9];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = self->_webViewCache;
    v12 = [v13 bridgeConfiguration];
    [(NSCache *)v11 setObject:v10 forKey:v12];
  }

  [v10 addObject:v13];
}

- (id)dequeueItemWithBridgeConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_webViewCache objectForKey:v4];
  if ([v5 count])
  {
    v6 = [v5 lastObject];
    [v5 removeLastObject];
  }

  else
  {
    v7 = objc_alloc_init(MUWebViewMessageHandlerProxy);
    v8 = objc_alloc_init(MEMORY[0x1E6985350]);
    v9 = [v4 nativeControllerName];
    [v8 addScriptMessageHandler:v7 name:v9];

    v10 = objc_alloc_init(MEMORY[0x1E69853A8]);
    [v10 _setClientNavigationsRunAtForegroundPriority:1];
    [v10 setIgnoresViewportScaleLimits:0];
    [v10 setSuppressesIncrementalRendering:1];
    [v10 setProcessPool:self->_processPool];
    [v10 setUserContentController:v8];
    v11 = objc_alloc(MEMORY[0x1E69853A0]);
    v12 = [v11 initWithFrame:v10 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v12 scrollView];
    [v13 setScrollsToTop:0];

    v14 = [v12 scrollView];
    [v14 setBounces:0];

    v15 = [v12 scrollView];
    [v15 setScrollEnabled:0];

    v16 = [v12 scrollView];
    [v16 setMaximumZoomScale:1.0];

    v17 = [v12 scrollView];
    [v17 setMinimumZoomScale:1.0];

    [v12 setOpaque:0];
    v18 = [MEMORY[0x1E69DC888] clearColor];
    [v12 setBackgroundColor:v18];

    [v12 _setUseSystemAppearance:1];
    v6 = [[MUWebViewFactoryItem alloc] initWithBridgeConfiguration:v4 webView:v12 messageHandlerProxy:v7];
  }

  return v6;
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