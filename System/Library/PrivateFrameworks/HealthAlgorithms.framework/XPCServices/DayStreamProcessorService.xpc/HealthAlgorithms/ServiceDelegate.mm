@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HADayStreamProcessorServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSSet setWithArray:v7];

  exportedInterface = [connectionCopy exportedInterface];
  [exportedInterface setClasses:v8 forSelector:"appendDays:" argumentIndex:0 ofReply:0];

  [connectionCopy resume];
  return 1;
}

@end