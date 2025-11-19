@interface FindMyDeviceUserNotificationsXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)addNotificationRequest:(id)a3 completion:(id)a4;
- (void)removeNotificationWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation FindMyDeviceUserNotificationsXPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_1000020EC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", buf, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceUserNotificationsXPCInterface];
  [v9 setClasses:v8 forSelector:"addNotificationRequest:completion:" argumentIndex:0 ofReply:1];
  [v5 setExportedInterface:v9];
  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)addNotificationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000020EC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FindMyDeviceUserNotificationsXPCServer addNotificationRequest:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", &buf, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [v9 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceUserNotificationsXPCService.access"];

  if (v10 && ([&__kCFBooleanTrue isEqual:v10] & 1) != 0)
  {
    v11 = [v6 locationTitle];

    if (v11)
    {
      v12 = [CLLocation alloc];
      [v6 latitude];
      v14 = v13;
      [v6 longitude];
      v16 = [v12 initWithLatitude:v14 longitude:v15];
      v17 = objc_alloc_init(CLGeocoder);
      v18 = dispatch_group_create();
      dispatch_group_enter(v18);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x3032000000;
      v51 = sub_10000161C;
      v52 = sub_10000162C;
      v53 = 0;
      v19 = sub_1000020EC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 138412290;
        v46 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "geocoding for location = %@", v45, 0xCu);
      }

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100001634;
      v42[3] = &unk_100008C20;
      p_buf = &buf;
      v20 = v18;
      v43 = v20;
      [v17 reverseGeocodeLocation:v16 completionHandler:v42];
      v21 = dispatch_time(0, 10000000000);
      v22 = dispatch_group_wait(v20, v21);
      if (v22 || !*(*(&buf + 1) + 40))
      {
        v23 = sub_1000020EC();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 138412546;
          v46 = v16;
          v47 = 2048;
          v48 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "unable to get placemark for %@ %ld", v45, 0x16u);
        }
      }

      else
      {
        v31 = sub_1000020EC();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(*(&buf + 1) + 40);
          v33 = [v32 name];
          *v45 = 138412546;
          v46 = v32;
          v47 = 2112;
          v48 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "reverseGeocodeLocation successful %@ %@", v45, 0x16u);
        }

        v34 = [v6 locationTitle];
        v35 = [*(*(&buf + 1) + 40) name];
        v36 = [v34 stringByReplacingOccurrencesOfString:@"<location>" withString:v35];
        [v6 setTitle:v36];

        v23 = [v6 locationMessage];
        v37 = [*(*(&buf + 1) + 40) name];
        v38 = [v23 stringByReplacingOccurrencesOfString:@"<location>" withString:v37];
        [v6 setBody:v38];
      }

      _Block_object_dispose(&buf, 8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000183C;
    block[3] = &unk_100008C70;
    v40 = v6;
    v41 = v7;
    dispatch_async(&_dispatch_main_q, block);

    v25 = v40;
  }

  else
  {
    v24 = NSStringFromSelector(a2);
    v25 = [NSString stringWithFormat:@"Entitlement not found for %@", v24];

    v26 = [NSError alloc];
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_10000B648;
    }

    v54 = NSLocalizedFailureReasonErrorKey;
    v55 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v29 = [v26 initWithDomain:@"com.apple.icloud.findmydeviced.usernotificationsxpcserver" code:6 userInfo:v28];

    v30 = sub_1000020EC();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000031A8(v25, v30);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, v29);
    }
  }
}

- (void)removeNotificationWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000020EC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FindMyDeviceUserNotificationsXPCServer removeNotificationWithIdentifier:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [v9 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceUserNotificationsXPCService.access"];

  if (v10 && ([&__kCFBooleanTrue isEqual:v10] & 1) != 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001F48;
    block[3] = &unk_100008C98;
    v19 = v6;
    dispatch_async(&_dispatch_main_q, block);
    v11 = v19;
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v13 = [NSError alloc];
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = &stru_10000B648;
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [v13 initWithDomain:@"com.apple.icloud.findmydeviced.usernotificationsxpcserver" code:6 userInfo:v15];

    v17 = sub_1000020EC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000031A8(v11, v17);
    }

    if (v7)
    {
      v7[2](v7, v16);
    }
  }
}

@end