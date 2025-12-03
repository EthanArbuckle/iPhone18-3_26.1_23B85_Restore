@interface IAMWebProcessPlugIn
- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller;
- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object;
- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller;
@end

@implementation IAMWebProcessPlugIn

- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object
{
  v5 = [NSMapTable strongToStrongObjectsMapTable:in];
  [(IAMWebProcessPlugIn *)self setContextControllersToLoadDelegates:v5];
}

- (void)webProcessPlugIn:(id)in didCreateBrowserContextController:(id)controller
{
  controllerCopy = controller;
  v13 = objc_opt_new();
  [controllerCopy setLoadDelegate:v13];
  v6 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___IAMWebProcessProxy];
  _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:v13 interface:v6];

  v8 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___IAMWebProcessDelegate];
  _remoteObjectRegistry2 = [controllerCopy _remoteObjectRegistry];
  v10 = [_remoteObjectRegistry2 remoteObjectProxyWithInterface:v8];
  [v13 setWebProcessDelegate:v10];

  webProcessDelegate = [v13 webProcessDelegate];
  [webProcessDelegate webProcessPlugInDidCreateBrowserContextController];

  contextControllersToLoadDelegates = [(IAMWebProcessPlugIn *)self contextControllersToLoadDelegates];
  [contextControllersToLoadDelegates setObject:v13 forKey:controllerCopy];
}

- (void)webProcessPlugIn:(id)in willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  contextControllersToLoadDelegates = [(IAMWebProcessPlugIn *)self contextControllersToLoadDelegates];
  v9 = [contextControllersToLoadDelegates objectForKey:controllerCopy];

  webProcessDelegate = [v9 webProcessDelegate];
  [webProcessDelegate webProcessPlugInWillDestroyBrowserContextController];

  [v9 setWebProcessDelegate:0];
  contextControllersToLoadDelegates2 = [(IAMWebProcessPlugIn *)self contextControllersToLoadDelegates];
  [contextControllersToLoadDelegates2 removeObjectForKey:controllerCopy];
}

@end