@interface ServerController
+ (id)sharedController;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ServerController)init;
- (void)start;
@end

@implementation ServerController

+ (id)sharedController
{
  if (qword_100019D68 != -1)
  {
    sub_10000B4B4();
  }

  v3 = qword_100019D60;

  return v3;
}

- (ServerController)init
{
  v23.receiver = self;
  v23.super_class = ServerController;
  v2 = [(ServerController *)&v23 init];
  if (v2)
  {
    +[MaintenanceActivity checkInActivities];
    v3 = +[CPSClipCleanupManager sharedManager];
    v4 = objc_alloc_init(AppLinkResolver);
    appLinkResolver = v2->_appLinkResolver;
    v2->_appLinkResolver = v4;

    v6 = objc_alloc_init(CPSAppInfoFetcher);
    appInfoFetcher = v2->_appInfoFetcher;
    v2->_appInfoFetcher = v6;

    v8 = [[CPSAppInstaller alloc] initWithAppInfoFetcher:v2->_appInfoFetcher];
    appInstaller = v2->_appInstaller;
    v2->_appInstaller = v8;

    v10 = [[ClipMetadataManager alloc] initWithAppInfoFetcher:v2->_appInfoFetcher];
    clipMetadataManager = v2->_clipMetadataManager;
    v2->_clipMetadataManager = v10;

    if (+[CPSClipURL usesDemoMetadata])
    {
      v12 = [[AppManager alloc] initWithAppLinkResolver:v2->_appLinkResolver appInstaller:v2->_appInstaller];
      appManager = v2->_appManager;
      v2->_appManager = v12;

      v14 = v2->_appManager;
      v15 = +[CPSSessionManager sharedManager];
      [v15 setLegacyInstaller:v14];

      v16 = sub_100004064();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ServerController: Use legacy app download flow.", v22, 2u);
      }
    }

    v17 = [NSXPCListener alloc];
    v18 = [v17 initWithMachServiceName:CPSDaemonMachServiceName];
    listener = v2->_listener;
    v2->_listener = v18;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v20 = v2;
  }

  return v2;
}

- (void)start
{
  v3 = sub_100004064();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "clipserviced started", v4, 2u);
  }

  [(NSXPCListener *)self->_listener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[CPSClipURL isSupported];
  if (v6)
  {
    v7 = [[RemoteClient alloc] initWithConnection:connectionCopy appManager:self->_appManager clipMetadataManager:self->_clipMetadataManager];
    v8 = sub_100004064();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134218242;
      v12 = v7;
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Created RemoteClient %p for new connection request %@", &v11, 0x16u);
    }

    [connectionCopy resume];
  }

  else
  {
    v9 = sub_100004064();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000B4C8(v9, connectionCopy);
    }
  }

  return v6;
}

@end