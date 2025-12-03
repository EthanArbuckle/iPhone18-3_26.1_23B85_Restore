@interface FontProviderLoaderServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FontProviderLoaderServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontProviderProtocol];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v8, v9, v10, v11, v12, objc_opt_class(), 0];
  [v5 setClasses:v13 forSelector:"registerFonts:enabled:sceneID:appInfo:completionHandler:" argumentIndex:0 ofReply:0];
  [v5 setClasses:v7 forSelector:"registerFonts:enabled:sceneID:appInfo:completionHandler:" argumentIndex:0 ofReply:1];
  [v5 setClasses:v13 forSelector:"registerFonts:enabled:sceneID:appInfo:completionHandler:" argumentIndex:1 ofReply:1];
  [v5 setClasses:v13 forSelector:"unregisterFonts:appInfo:completionHandler:" argumentIndex:0 ofReply:0];
  [v5 setClasses:v7 forSelector:"unregisterFonts:appInfo:completionHandler:" argumentIndex:0 ofReply:1];
  [v5 setClasses:v13 forSelector:"unregisterFonts:appInfo:completionHandler:" argumentIndex:1 ofReply:1];
  [v5 setClasses:v13 forSelector:"registeredFontsInfo:appInfo:completionHandler:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v5];
  v14 = objc_alloc_init(FontProviderLoader);
  [connectionCopy setExportedObject:v14];

  [connectionCopy resume];
  return 1;
}

@end