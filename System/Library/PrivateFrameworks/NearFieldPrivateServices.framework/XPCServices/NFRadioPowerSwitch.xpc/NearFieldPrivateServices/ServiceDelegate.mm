@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)registerForLocaleChange;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPrivateServiceInterface];
  [v4 setExportedInterface:v5];

  v6 = objc_opt_new();
  [v4 setExportedObject:v6];
  [v4 resume];

  return 1;
}

- (void)registerForLocaleChange
{
  v4 = objc_opt_new();
  [v4 setUnderlyingQueue:&_dispatch_main_q];
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = [v2 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v4 usingBlock:&stru_100004240];
}

@end