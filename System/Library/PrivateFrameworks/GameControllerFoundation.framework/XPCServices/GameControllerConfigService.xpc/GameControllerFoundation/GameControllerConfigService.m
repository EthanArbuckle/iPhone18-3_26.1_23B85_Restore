@interface GameControllerConfigService
+ (id)sharedInstance;
+ (void)run;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (GameControllerConfigService)init;
- (id)serviceFor:(id)a3 client:(id)a4;
@end

@implementation GameControllerConfigService

+ (void)run
{
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  v2 = _os_activity_create(&_mh_execute_header, "Startup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v4);
  v3 = [GameControllerConfigService sharedInstance:v4.opaque[0]];
  [v3 start];

  os_activity_scope_leave(&v4);
}

+ (id)sharedInstance
{
  if (qword_100015498 != -1)
  {
    sub_10000872C();
  }

  v3 = qword_100015490;

  return v3;
}

- (GameControllerConfigService)init
{
  v6.receiver = self;
  v6.super_class = GameControllerConfigService;
  v2 = [(GameControllerConfigService *)&v6 init];
  v3 = +[NSXPCListener serviceListener];
  serviceListener = v2->_serviceListener;
  v2->_serviceListener = v3;

  [(NSXPCListener *)v2->_serviceListener setDelegate:v2];
  return v2;
}

- (id)serviceFor:(id)a3 client:(id)a4
{
  if (&OBJC_PROTOCOL___GCConfigurationAssetManagementService == a3 || &OBJC_PROTOCOL___GCConfigurationBundleAssetSource == a3)
  {
    v5 = sub_100005308(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GameControllerConfigService;
    v5 = [GameControllerConfigService serviceFor:"serviceFor:client:" client:?];
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "Incoming Connection", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v8, &v18);
  v9 = [[GCConfigXPCServiceClientConnection alloc] initWithConnection:v7];
  v10 = [v9 peerValueForEntitlement:@"com.apple.private.gamecontroller.config.client"];
  if ([v10 isEqual:&__kCFBooleanTrue])
  {
    goto LABEL_4;
  }

  v11 = [v9 peerValueForEntitlement:@"application-identifier"];
  if ([v11 isEqual:@"com.apple.Preferences"])
  {

LABEL_4:
LABEL_5:
    v12 = [v9 log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Accepting connection %@.", buf, 0xCu);
    }

    [v9 setServer:self];
    [v9 resume];
    v13 = 1;
    goto LABEL_8;
  }

  v15 = [v9 peerValueForEntitlement:@"application-identifier"];
  v16 = [v15 isEqual:@"com.apple.TVSettings"];

  if (v16)
  {
    goto LABEL_5;
  }

  v17 = [v9 log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100008740(v9, v17);
  }

  [v7 invalidate];
  v13 = 0;
LABEL_8:

  os_activity_scope_leave(&v18);
  return v13;
}

@end