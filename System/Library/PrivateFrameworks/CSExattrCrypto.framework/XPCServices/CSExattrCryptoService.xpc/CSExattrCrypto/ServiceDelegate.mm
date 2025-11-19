@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = [a4 valueForEntitlement:@"com.apple.private.metadata.exattrs"];
  if (v5 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v6 BOOLValue] & 1) != 0)
  {
    [a4 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___CSExattrCryptoServiceProtocol)}];
    v7 = [a4 exportedInterface];
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
    [v7 setClasses:+[NSSet setWithArray:](NSSet forSelector:"setWithArray:" argumentIndex:+[NSArray arrayWithObjects:count:](NSArray ofReply:{"arrayWithObjects:count:", v13, 9)), "computeUpdatedCryptoData:newParams:isPrivateMDAttributes:doMergeArrayValues:replyBlock:", 1, 0}];
    v9 = [a4 exportedInterface];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    [v9 setClasses:+[NSSet setWithArray:](NSSet forSelector:"setWithArray:" argumentIndex:+[NSArray arrayWithObjects:count:](NSArray ofReply:{"arrayWithObjects:count:", v12, 3)), "decryptAttributesWithData:withReply:", 0, 0}];
    v10 = objc_opt_new();
    [a4 setExportedObject:v10];

    [a4 resume];
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