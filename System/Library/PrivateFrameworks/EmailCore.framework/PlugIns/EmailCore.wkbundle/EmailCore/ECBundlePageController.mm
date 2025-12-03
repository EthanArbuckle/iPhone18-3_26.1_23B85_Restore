@interface ECBundlePageController
- (ECBundlePageController)initWithPlugIn:(id)in contextController:(id)controller;
- (ECWebContentObserver)webContentObserverProxy;
- (WKWebProcessPlugIn)plugIn;
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
@end

@implementation ECBundlePageController

- (ECBundlePageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = ECBundlePageController;
  v8 = [(ECBundlePageController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_plugIn, inCopy);
    objc_storeStrong(&v9->_controller, controller);
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
    controller = [(ECBundlePageController *)self controller];
    _remoteObjectRegistry = [controller _remoteObjectRegistry];
    v6 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___ECWebContentObserver];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_webContentObserverProxy;
    self->_webContentObserverProxy = v7;

    webContentObserverProxy = self->_webContentObserverProxy;
  }

  return webContentObserverProxy;
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  frameCopy = frame;
  mainFrame = [controller mainFrame];

  v7 = frameCopy;
  if (mainFrame == frameCopy)
  {
    v8 = self->_remoteContentURLs;
    v9 = objc_alloc_init(NSMutableArray);
    remoteContentURLs = self->_remoteContentURLs;
    self->_remoteContentURLs = v9;

    webContentObserverProxy = [(ECBundlePageController *)self webContentObserverProxy];
    v12 = [frameCopy URL];
    [webContentObserverProxy baseURL:v12 didRequestRemoteContentURLs:v8];

    v7 = frameCopy;
  }
}

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  v9 = [requestCopy URL];
  if (([v9 ef_hasScheme:@"https"] & 1) != 0 || objc_msgSend(v9, "ef_hasScheme:", @"http"))
  {
    [(NSMutableArray *)self->_remoteContentURLs addObject:v9];
    v10 = 0;
  }

  else
  {
    v10 = requestCopy;
  }

  return v10;
}

- (WKWebProcessPlugIn)plugIn
{
  WeakRetained = objc_loadWeakRetained(&self->_plugIn);

  return WeakRetained;
}

@end