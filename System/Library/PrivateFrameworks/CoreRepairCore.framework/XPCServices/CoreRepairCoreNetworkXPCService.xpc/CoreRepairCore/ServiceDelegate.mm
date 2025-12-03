@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
    v15 = 2112;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: %@", &v13, 0x16u);
  }

  v7 = [connectionCopy valueForEntitlement:kCREntitlementCoreRepairEnableXPC];
  v8 = [connectionCopy valueForEntitlement:kCRCEntitlementNetworkXPC];
  if (!(v7 | v8))
  {
    sub_100002F58();
LABEL_12:
    [connectionCopy invalidate];
    v11 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_100002EBC();
      goto LABEL_12;
    }
  }

  if (([v7 BOOLValue] & 1) == 0 && !objc_msgSend(v8, "BOOLValue"))
  {
    goto LABEL_12;
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairCoreNetworkXPCServiceProtocol];
  [connectionCopy setExportedInterface:v9];

  v10 = objc_opt_new();
  [connectionCopy setExportedObject:v10];
  [connectionCopy resume];

  v11 = 1;
LABEL_9:

  return v11;
}

@end