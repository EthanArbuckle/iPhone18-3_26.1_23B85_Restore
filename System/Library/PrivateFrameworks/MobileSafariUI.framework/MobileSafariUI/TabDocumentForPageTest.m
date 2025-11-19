@interface TabDocumentForPageTest
- (TabDocumentForPageTest)initWithBrowserController:(id)a3 allowsNetworkAccess:(BOOL)a4 allowsContentJavaScript:(BOOL)a5 allowsMetaRefresh:(BOOL)a6;
- (id)createTabDocumentView;
- (id)createWebViewConfiguration;
- (void)_webViewWebProcessDidCrash:(id)a3;
- (void)autoFillController:(id)a3 didCollectFormMetadataForTesting:(id)a4 forURL:(id)a5;
- (void)autoFillController:(id)a3 didFailFormMetadataForTesting:(id)a4;
- (void)setFixedWebViewSize:(CGSize)a3 completionHandler:(id)a4;
- (void)setMetadataHandler:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6;
@end

@implementation TabDocumentForPageTest

- (TabDocumentForPageTest)initWithBrowserController:(id)a3 allowsNetworkAccess:(BOOL)a4 allowsContentJavaScript:(BOOL)a5 allowsMetaRefresh:(BOOL)a6
{
  self->_allowsNetworkAccess = a4;
  self->_allowsMetaRefresh = a6;
  self->_allowsContentJavaScript = a5;
  v7.receiver = self;
  v7.super_class = TabDocumentForPageTest;
  return [(TabDocument *)&v7 initWithBrowserController:a3];
}

- (id)createTabDocumentView
{
  v2 = objc_alloc_init(TabDocumentViewForPageTest);

  return v2;
}

- (void)setFixedWebViewSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(TabDocument *)self view];
  [v8 setFixedWebViewSize:v7 completionHandler:{width, height}];
}

- (void)setMetadataHandler:(id)a3
{
  v5 = _Block_copy(a3);
  metadataHandler = self->_metadataHandler;
  self->_metadataHandler = v5;

  if (a3)
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(TabDocument *)self autoFillController];
  [v8 setTestController:v7];
}

- (void)_webViewWebProcessDidCrash:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TabDocumentForPageTest;
  [(TabDocument *)&v9 _webViewWebProcessDidCrash:a3];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D4A290];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"WebContent process crashed";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:1 userInfo:v6];

  v8 = [(TabDocument *)self autoFillController];
  [(TabDocumentForPageTest *)self autoFillController:v8 didFailFormMetadataForTesting:v7];
}

- (void)autoFillController:(id)a3 didCollectFormMetadataForTesting:(id)a4 forURL:(id)a5
{
  metadataHandler = self->_metadataHandler;
  if (metadataHandler)
  {
    metadataHandler[2](metadataHandler, a4, 0);
    v7 = self->_metadataHandler;
    self->_metadataHandler = 0;
  }
}

- (void)autoFillController:(id)a3 didFailFormMetadataForTesting:(id)a4
{
  metadataHandler = self->_metadataHandler;
  if (metadataHandler)
  {
    metadataHandler[2](metadataHandler, 0, a4);
    v6 = self->_metadataHandler;
    self->_metadataHandler = 0;
  }
}

- (id)createWebViewConfiguration
{
  v8.receiver = self;
  v8.super_class = TabDocumentForPageTest;
  v3 = [(TabDocument *)&v8 createWebViewConfiguration];
  [v3 _setAllowUniversalAccessFromFileURLs:1];
  [v3 _setAllowsMetaRefresh:self->_allowsMetaRefresh];
  if (self->_allowsNetworkAccess)
  {
    [v3 _setAllowedNetworkHosts:0];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
    [v3 _setAllowedNetworkHosts:v4];
  }

  allowsContentJavaScript = self->_allowsContentJavaScript;
  v6 = [v3 defaultWebpagePreferences];
  [v6 setAllowsContentJavaScript:allowsContentJavaScript];

  return v3;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6
{
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__TabDocumentForPageTest_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
  v13[3] = &unk_2781D8470;
  v13[4] = self;
  v14 = v10;
  v12.receiver = self;
  v12.super_class = TabDocumentForPageTest;
  v11 = v10;
  [(TabDocument *)&v12 webView:a3 decidePolicyForNavigationAction:a4 preferences:a5 decisionHandler:v13];
}

void __94__TabDocumentForPageTest_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 1520);
  v5 = a3;
  [v5 setAllowsContentJavaScript:v4];
  (*(*(a1 + 40) + 16))();
}

@end