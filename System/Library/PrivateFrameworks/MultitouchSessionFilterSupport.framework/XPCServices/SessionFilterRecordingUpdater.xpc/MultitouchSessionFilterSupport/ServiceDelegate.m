@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SessionFilterRecordingUpdaterProtocol];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v5 setClasses:v7 forSelector:"filesSortedByCreationDateInDirectory:withPathExtension:withReply:" argumentIndex:0 ofReply:1];
  [v4 setExportedInterface:v5];
  v8 = objc_opt_new();
  [v4 setExportedObject:v8];
  [v4 resume];

  return 1;
}

@end