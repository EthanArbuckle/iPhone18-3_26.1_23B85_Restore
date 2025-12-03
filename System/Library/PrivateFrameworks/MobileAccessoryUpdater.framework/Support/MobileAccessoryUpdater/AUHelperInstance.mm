@interface AUHelperInstance
+ (AUHelperInstance)sharedInstance;
+ (id)xpcConnectionToHelper;
- (AUHelperInstance)init;
- (AUHelperServiceProtocol)remoteObject;
@end

@implementation AUHelperInstance

- (AUHelperInstance)init
{
  v4.receiver = self;
  v4.super_class = AUHelperInstance;
  v2 = [(AUHelperInstance *)&v4 init];
  if (v2)
  {
    v2->_xpcConnection = +[AUHelperInstance xpcConnectionToHelper];
  }

  return v2;
}

+ (AUHelperInstance)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C58;
  block[3] = &unk_100080FC8;
  block[4] = self;
  if (qword_1000997B0 != -1)
  {
    dispatch_once(&qword_1000997B0, block);
  }

  return qword_1000997A8;
}

- (AUHelperServiceProtocol)remoteObject
{
  result = self->_xpcConnection;
  if (result)
  {
    return [(AUHelperServiceProtocol *)result synchronousRemoteObjectProxyWithErrorHandler:&stru_100080FE8];
  }

  return result;
}

+ (id)xpcConnectionToHelper
{
  v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.accessoryupdater.launchauhelper" options:4096];
  if (v2)
  {
    [v2 setRemoteObjectInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___AUHelperServiceProtocol)}];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, objc_opt_class(), 0];
    [objc_msgSend(v2 "remoteObjectInterface")];
    [objc_msgSend(v2 "remoteObjectInterface")];
    [v2 resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100047A9C();
  }

  return v2;
}

@end