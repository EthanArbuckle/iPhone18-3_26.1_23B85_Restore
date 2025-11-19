@interface MissingFontsDialogHandler
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MissingFontsDialogHandler)initWithFontServicesDaemon:(id)a3 completionHandler:(id)a4;
- (void)doneWithMissingFonts:(id)a3;
- (void)showDialogWithUserInfo:(id)a3 sceneID:(id)a4 appID:(id)a5;
@end

@implementation MissingFontsDialogHandler

- (MissingFontsDialogHandler)initWithFontServicesDaemon:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MissingFontsDialogHandler;
  v9 = [(MissingFontsDialogHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, a3);
    v11 = objc_retainBlock(v8);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontInstallViewServiceProtocol];
  [v5 setExportedInterface:v6];
  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)doneWithMissingFonts:(id)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a3);
  }

  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;
}

- (void)showDialogWithUserInfo:(id)a3 sceneID:(id)a4 appID:(id)a5
{
  v6 = a3;
  v13 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.FontInstallViewService" viewControllerClassName:@"FontInstallMissingController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v8 = +[NSXPCListener anonymousListener];
  [v8 setDelegate:self];
  v9 = [v8 endpoint];
  v10 = [v9 _endpoint];
  [v7 setXpcEndpoint:v10];

  v11 = [SBSRemoteAlertHandle newHandleWithDefinition:v13 configurationContext:v7];
  v12 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v12 setUserInfo:v6];

  [(MissingFontsDialogHandler *)self setListener:v8];
  [v8 resume];
  [v11 activateWithContext:v12];
}

@end