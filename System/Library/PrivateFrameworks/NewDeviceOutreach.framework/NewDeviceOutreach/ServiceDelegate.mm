@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_bundleForPID:(int)a3;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_100001D38(@"com.apple.private.ndoagent", v5);
  if (v6)
  {
    v7 = -[ServiceDelegate _bundleForPID:](self, "_bundleForPID:", [v5 processIdentifier]);
    v8 = [v7 bundleIdentifier];

    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v21 = [v5 processIdentifier];
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "connection added from %d with calling process: %@", buf, 0x12u);
    }

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDOAgentProtocol];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    [v10 setClasses:v13 forSelector:"getDeviceListForLocalDevices:sessionID:params:withReply:" argumentIndex:0 ofReply:0];

    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v14, v15, objc_opt_class(), 0];
    [v10 setClasses:v16 forSelector:"getDeviceListForLocalDevices:sessionID:params:withReply:" argumentIndex:0 ofReply:1];

    v17 = [NSSet setWithObjects:objc_opt_class(), 0];
    [v10 setClasses:v17 forSelector:"getAmsPropertiesForContext:withReply:" argumentIndex:0 ofReply:1];

    [v5 setExportedInterface:v10];
    v18 = [[NDOAgent alloc] initWithCallingProcessBundleID:v8];
    [v5 setExportedObject:v18];
    [v5 resume];
  }

  else
  {
    v8 = _NDOLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100072728(v8);
    }
  }

  return v6;
}

- (id)_bundleForPID:(int)a3
{
  v3 = [[NSString alloc] initWithBytes:buffer length:proc_pidpath(a3 encoding:{buffer, 0x1000u), 4}];
  v4 = [NSURL fileURLWithPath:v3];

  if (v4)
  {
    v5 = _CFBundleCopyBundleURLForExecutableURL();
    v6 = [NSBundle bundleWithURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end