@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_bundleForPID:(int)d;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100001D38(@"com.apple.private.ndoagent", connectionCopy);
  if (v6)
  {
    v7 = -[ServiceDelegate _bundleForPID:](self, "_bundleForPID:", [connectionCopy processIdentifier]);
    bundleIdentifier = [v7 bundleIdentifier];

    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      processIdentifier = [connectionCopy processIdentifier];
      v22 = 2112;
      v23 = bundleIdentifier;
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

    [connectionCopy setExportedInterface:v10];
    v18 = [[NDOAgent alloc] initWithCallingProcessBundleID:bundleIdentifier];
    [connectionCopy setExportedObject:v18];
    [connectionCopy resume];
  }

  else
  {
    bundleIdentifier = _NDOLogSystem();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
    {
      sub_100072728(bundleIdentifier);
    }
  }

  return v6;
}

- (id)_bundleForPID:(int)d
{
  v3 = [[NSString alloc] initWithBytes:buffer length:proc_pidpath(d encoding:{buffer, 0x1000u), 4}];
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