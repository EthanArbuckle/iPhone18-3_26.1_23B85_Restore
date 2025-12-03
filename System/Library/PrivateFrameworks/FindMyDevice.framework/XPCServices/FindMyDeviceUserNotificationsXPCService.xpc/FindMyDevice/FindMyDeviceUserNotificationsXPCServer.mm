@interface FindMyDeviceUserNotificationsXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)addNotificationRequest:(id)request completion:(id)completion;
- (void)removeNotificationWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation FindMyDeviceUserNotificationsXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_1000020EC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", buf, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceUserNotificationsXPCInterface];
  [v9 setClasses:v8 forSelector:"addNotificationRequest:completion:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v9];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)addNotificationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
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
    locationTitle = [requestCopy locationTitle];

    if (locationTitle)
    {
      v12 = [CLLocation alloc];
      [requestCopy latitude];
      v14 = v13;
      [requestCopy longitude];
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
        locationMessage = sub_1000020EC();
        if (os_log_type_enabled(locationMessage, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 138412546;
          v46 = v16;
          v47 = 2048;
          v48 = v22;
          _os_log_impl(&_mh_execute_header, locationMessage, OS_LOG_TYPE_DEFAULT, "unable to get placemark for %@ %ld", v45, 0x16u);
        }
      }

      else
      {
        v31 = sub_1000020EC();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(*(&buf + 1) + 40);
          name = [v32 name];
          *v45 = 138412546;
          v46 = v32;
          v47 = 2112;
          v48 = name;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "reverseGeocodeLocation successful %@ %@", v45, 0x16u);
        }

        locationTitle2 = [requestCopy locationTitle];
        name2 = [*(*(&buf + 1) + 40) name];
        v36 = [locationTitle2 stringByReplacingOccurrencesOfString:@"<location>" withString:name2];
        [requestCopy setTitle:v36];

        locationMessage = [requestCopy locationMessage];
        name3 = [*(*(&buf + 1) + 40) name];
        v38 = [locationMessage stringByReplacingOccurrencesOfString:@"<location>" withString:name3];
        [requestCopy setBody:v38];
      }

      _Block_object_dispose(&buf, 8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000183C;
    block[3] = &unk_100008C70;
    v40 = requestCopy;
    v41 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v29);
    }
  }
}

- (void)removeNotificationWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
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
    v19 = identifierCopy;
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v16);
    }
  }
}

@end