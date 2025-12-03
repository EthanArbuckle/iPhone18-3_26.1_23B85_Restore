@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = [connection valueForEntitlement:@"com.apple.private.metadata.exattrs"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 BOOLValue] & 1) != 0)
  {
    [connection setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___CSExattrCryptoServiceProtocol)}];
    exportedInterface = [connection exportedInterface];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = objc_opt_class();
    v13[4] = objc_opt_class();
    v13[5] = objc_opt_class();
    v13[6] = objc_opt_class();
    v13[7] = objc_opt_class();
    v13[8] = objc_opt_class();
    v8 = 1;
    [exportedInterface setClasses:+[NSSet setWithArray:](NSSet forSelector:"setWithArray:" argumentIndex:+[NSArray arrayWithObjects:count:](NSArray ofReply:{"arrayWithObjects:count:", v13, 9)), "computeUpdatedCryptoData:newParams:isPrivateMDAttributes:doMergeArrayValues:replyBlock:", 1, 0}];
    exportedInterface2 = [connection exportedInterface];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    [exportedInterface2 setClasses:+[NSSet setWithArray:](NSSet forSelector:"setWithArray:" argumentIndex:+[NSArray arrayWithObjects:count:](NSArray ofReply:{"arrayWithObjects:count:", v12, 3)), "decryptAttributesWithData:withReply:", 0, 0}];
    v10 = objc_opt_new();
    [connection setExportedObject:v10];

    [connection resume];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB18();
    }

    return 0;
  }

  return v8;
}

@end