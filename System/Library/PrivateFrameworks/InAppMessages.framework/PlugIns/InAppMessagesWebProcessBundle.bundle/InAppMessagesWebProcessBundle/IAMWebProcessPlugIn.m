@interface IAMWebProcessPlugIn
- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4;
- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4;
- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4;
@end

@implementation IAMWebProcessPlugIn

- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4
{
  v5 = [NSMapTable strongToStrongObjectsMapTable:a3];
  [(IAMWebProcessPlugIn *)self setContextControllersToLoadDelegates:v5];
}

- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4
{
  v5 = a4;
  v13 = objc_opt_new();
  [v5 setLoadDelegate:v13];
  v6 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___IAMWebProcessProxy];
  v7 = [v5 _remoteObjectRegistry];
  [v7 registerExportedObject:v13 interface:v6];

  v8 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___IAMWebProcessDelegate];
  v9 = [v5 _remoteObjectRegistry];
  v10 = [v9 remoteObjectProxyWithInterface:v8];
  [v13 setWebProcessDelegate:v10];

  v11 = [v13 webProcessDelegate];
  [v11 webProcessPlugInDidCreateBrowserContextController];

  v12 = [(IAMWebProcessPlugIn *)self contextControllersToLoadDelegates];
  [v12 setObject:v13 forKey:v5];
}

- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4
{
  v5 = a4;
  v6 = [(IAMWebProcessPlugIn *)self contextControllersToLoadDelegates];
  v9 = [v6 objectForKey:v5];

  v7 = [v9 webProcessDelegate];
  [v7 webProcessPlugInWillDestroyBrowserContextController];

  [v9 setWebProcessDelegate:0];
  v8 = [(IAMWebProcessPlugIn *)self contextControllersToLoadDelegates];
  [v8 removeObjectForKey:v5];
}

@end