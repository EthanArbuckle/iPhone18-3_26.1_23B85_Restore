@interface IXSClientConnectionManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IXSClientConnectionManager)init;
@end

@implementation IXSClientConnectionManager

+ (id)sharedInstance
{
  if (qword_100121D48 != -1)
  {
    sub_10009D294();
  }

  v3 = qword_100121D40;

  return v3;
}

- (IXSClientConnectionManager)init
{
  v9.receiver = self;
  v9.super_class = IXSClientConnectionManager;
  v2 = [(IXSClientConnectionManager *)&v9 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    allConnections = v2->_allConnections;
    v2->_allConnections = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.installcoordinationd.IXSClientConnection.allConnections", v5);
    allConnectionsQueue = v2->_allConnectionsQueue;
    v2->_allConnectionsQueue = v6;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000D71C(v7, @"com.apple.private.InstallCoordination.allowed");
  if (v8)
  {
    v9 = +[IXClientProtocolInterface interface];
    [v7 setExportedInterface:v9];

    v10 = [[IXSClientConnection alloc] initWithConnection:v7];
    [v7 setExportedObject:v10];
    v11 = +[IXClientDelegateProtocolInterface interface];
    [v7 setRemoteObjectInterface:v11];

    [v7 setInterruptionHandler:&stru_100101F90];
    objc_initWeak(location, v10);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100036424;
    v23[3] = &unk_100101FB8;
    objc_copyWeak(&v24, location);
    v23[4] = self;
    [v7 setInvalidationHandler:v23];
    v12 = [(IXSClientConnectionManager *)self allConnectionsQueue];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000365E0;
    v20 = &unk_100100ED8;
    v21 = self;
    v13 = v10;
    v22 = v13;
    dispatch_sync(v12, &v17);

    [v7 resume];
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = [v7 processIdentifier];
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_10000D5C4();
      *location = 136315906;
      *&location[4] = "[IXSClientConnectionManager listener:shouldAcceptNewConnection:]";
      v26 = 2112;
      v27 = v15;
      v28 = 1024;
      v29 = v14;
      v30 = 2112;
      v31 = @"com.apple.private.InstallCoordination.allowed";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Process %@ (pid %d) is missing %@ entitlement so rejecting connection attempt.", location, 0x26u);
    }
  }

  return v8;
}

@end