@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HAHistoricalAnalyzerServiceProtocol];
  [v4 setExportedInterface:v5];

  v6 = objc_opt_new();
  [v4 setExportedObject:v6];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [NSSet setWithArray:v7];

  v9 = [v4 exportedInterface];
  [v9 setClasses:v8 forSelector:"appendDays:" argumentIndex:0 ofReply:0];

  [v4 resume];
  return 1;
}

@end