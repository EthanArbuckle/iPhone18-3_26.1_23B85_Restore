@interface ECBundlePageController
- (ECBundlePageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (ECWebContentObserver)webContentObserverProxy;
- (WKWebProcessPlugIn)plugIn;
- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
@end

@implementation ECBundlePageController

- (ECBundlePageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ECBundlePageController;
  v8 = [(ECBundlePageController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_plugIn, v6);
    objc_storeStrong(&v9->_controller, a4);
    v10 = objc_alloc_init(NSMutableArray);
    remoteContentURLs = v9->_remoteContentURLs;
    v9->_remoteContentURLs = v10;

    [(WKWebProcessPlugInBrowserContextController *)v9->_controller setLoadDelegate:v9];
  }

  return v9;
}

- (ECWebContentObserver)webContentObserverProxy
{
  webContentObserverProxy = self->_webContentObserverProxy;
  if (!webContentObserverProxy)
  {
    v4 = [(ECBundlePageController *)self controller];
    v5 = [v4 _remoteObjectRegistry];
    v6 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___ECWebContentObserver];
    v7 = [v5 remoteObjectProxyWithInterface:v6];
    v8 = self->_webContentObserverProxy;
    self->_webContentObserverProxy = v7;

    webContentObserverProxy = self->_webContentObserverProxy;
  }

  return webContentObserverProxy;
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v13 = a4;
  v6 = [a3 mainFrame];

  v7 = v13;
  if (v6 == v13)
  {
    v8 = self->_remoteContentURLs;
    v9 = objc_alloc_init(NSMutableArray);
    remoteContentURLs = self->_remoteContentURLs;
    self->_remoteContentURLs = v9;

    v11 = [(ECBundlePageController *)self webContentObserverProxy];
    v12 = [v13 URL];
    [v11 baseURL:v12 didRequestRemoteContentURLs:v8];

    v7 = v13;
  }
}

- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7
{
  v8 = a6;
  v9 = [v8 URL];
  if (([v9 ef_hasScheme:@"https"] & 1) != 0 || objc_msgSend(v9, "ef_hasScheme:", @"http"))
  {
    [(NSMutableArray *)self->_remoteContentURLs addObject:v9];
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (WKWebProcessPlugIn)plugIn
{
  WeakRetained = objc_loadWeakRetained(&self->_plugIn);

  return WeakRetained;
}

@end