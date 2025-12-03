@interface MissingFontsDialogHandler
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MissingFontsDialogHandler)initWithFontServicesDaemon:(id)daemon completionHandler:(id)handler;
- (void)doneWithMissingFonts:(id)fonts;
- (void)showDialogWithUserInfo:(id)info sceneID:(id)d appID:(id)iD;
@end

@implementation MissingFontsDialogHandler

- (MissingFontsDialogHandler)initWithFontServicesDaemon:(id)daemon completionHandler:(id)handler
{
  daemonCopy = daemon;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = MissingFontsDialogHandler;
  v9 = [(MissingFontsDialogHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    v11 = objc_retainBlock(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontInstallViewServiceProtocol];
  [connectionCopy setExportedInterface:v6];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)doneWithMissingFonts:(id)fonts
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, fonts);
  }

  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;
}

- (void)showDialogWithUserInfo:(id)info sceneID:(id)d appID:(id)iD
{
  infoCopy = info;
  v13 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.FontInstallViewService" viewControllerClassName:@"FontInstallMissingController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v8 = +[NSXPCListener anonymousListener];
  [v8 setDelegate:self];
  endpoint = [v8 endpoint];
  _endpoint = [endpoint _endpoint];
  [v7 setXpcEndpoint:_endpoint];

  v11 = [SBSRemoteAlertHandle newHandleWithDefinition:v13 configurationContext:v7];
  v12 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v12 setUserInfo:infoCopy];

  [(MissingFontsDialogHandler *)self setListener:v8];
  [v8 resume];
  [v11 activateWithContext:v12];
}

@end