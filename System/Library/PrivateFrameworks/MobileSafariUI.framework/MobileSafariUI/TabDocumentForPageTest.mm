@interface TabDocumentForPageTest
- (TabDocumentForPageTest)initWithBrowserController:(id)controller allowsNetworkAccess:(BOOL)access allowsContentJavaScript:(BOOL)script allowsMetaRefresh:(BOOL)refresh;
- (id)createTabDocumentView;
- (id)createWebViewConfiguration;
- (void)_webViewWebProcessDidCrash:(id)crash;
- (void)autoFillController:(id)controller didCollectFormMetadataForTesting:(id)testing forURL:(id)l;
- (void)autoFillController:(id)controller didFailFormMetadataForTesting:(id)testing;
- (void)setFixedWebViewSize:(CGSize)size completionHandler:(id)handler;
- (void)setMetadataHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler;
@end

@implementation TabDocumentForPageTest

- (TabDocumentForPageTest)initWithBrowserController:(id)controller allowsNetworkAccess:(BOOL)access allowsContentJavaScript:(BOOL)script allowsMetaRefresh:(BOOL)refresh
{
  self->_allowsNetworkAccess = access;
  self->_allowsMetaRefresh = refresh;
  self->_allowsContentJavaScript = script;
  v7.receiver = self;
  v7.super_class = TabDocumentForPageTest;
  return [(TabDocument *)&v7 initWithBrowserController:controller];
}

- (id)createTabDocumentView
{
  v2 = objc_alloc_init(TabDocumentViewForPageTest);

  return v2;
}

- (void)setFixedWebViewSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  view = [(TabDocument *)self view];
  [view setFixedWebViewSize:handlerCopy completionHandler:{width, height}];
}

- (void)setMetadataHandler:(id)handler
{
  v5 = _Block_copy(handler);
  metadataHandler = self->_metadataHandler;
  self->_metadataHandler = v5;

  if (handler)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  autoFillController = [(TabDocument *)self autoFillController];
  [autoFillController setTestController:selfCopy];
}

- (void)_webViewWebProcessDidCrash:(id)crash
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TabDocumentForPageTest;
  [(TabDocument *)&v9 _webViewWebProcessDidCrash:crash];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D4A290];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"WebContent process crashed";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:1 userInfo:v6];

  autoFillController = [(TabDocument *)self autoFillController];
  [(TabDocumentForPageTest *)self autoFillController:autoFillController didFailFormMetadataForTesting:v7];
}

- (void)autoFillController:(id)controller didCollectFormMetadataForTesting:(id)testing forURL:(id)l
{
  metadataHandler = self->_metadataHandler;
  if (metadataHandler)
  {
    metadataHandler[2](metadataHandler, testing, 0);
    v7 = self->_metadataHandler;
    self->_metadataHandler = 0;
  }
}

- (void)autoFillController:(id)controller didFailFormMetadataForTesting:(id)testing
{
  metadataHandler = self->_metadataHandler;
  if (metadataHandler)
  {
    metadataHandler[2](metadataHandler, 0, testing);
    v6 = self->_metadataHandler;
    self->_metadataHandler = 0;
  }
}

- (id)createWebViewConfiguration
{
  v8.receiver = self;
  v8.super_class = TabDocumentForPageTest;
  createWebViewConfiguration = [(TabDocument *)&v8 createWebViewConfiguration];
  [createWebViewConfiguration _setAllowUniversalAccessFromFileURLs:1];
  [createWebViewConfiguration _setAllowsMetaRefresh:self->_allowsMetaRefresh];
  if (self->_allowsNetworkAccess)
  {
    [createWebViewConfiguration _setAllowedNetworkHosts:0];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
    [createWebViewConfiguration _setAllowedNetworkHosts:v4];
  }

  allowsContentJavaScript = self->_allowsContentJavaScript;
  defaultWebpagePreferences = [createWebViewConfiguration defaultWebpagePreferences];
  [defaultWebpagePreferences setAllowsContentJavaScript:allowsContentJavaScript];

  return createWebViewConfiguration;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__TabDocumentForPageTest_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
  v13[3] = &unk_2781D8470;
  v13[4] = self;
  v14 = handlerCopy;
  v12.receiver = self;
  v12.super_class = TabDocumentForPageTest;
  v11 = handlerCopy;
  [(TabDocument *)&v12 webView:view decidePolicyForNavigationAction:action preferences:preferences decisionHandler:v13];
}

void __94__TabDocumentForPageTest_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 1520);
  v5 = a3;
  [v5 setAllowsContentJavaScript:v4];
  (*(*(a1 + 40) + 16))();
}

@end