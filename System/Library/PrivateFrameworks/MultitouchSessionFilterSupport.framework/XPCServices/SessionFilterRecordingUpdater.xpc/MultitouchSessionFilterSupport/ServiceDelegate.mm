@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SessionFilterRecordingUpdaterProtocol];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v5 setClasses:v7 forSelector:"filesSortedByCreationDateInDirectory:withPathExtension:withReply:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v5];
  v8 = objc_opt_new();
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  return 1;
}

@end