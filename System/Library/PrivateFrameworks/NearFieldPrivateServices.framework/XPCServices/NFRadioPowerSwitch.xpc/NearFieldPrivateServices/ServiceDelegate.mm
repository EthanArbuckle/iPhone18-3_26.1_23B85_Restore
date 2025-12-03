@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)registerForLocaleChange;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFPrivateServiceInterface];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

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