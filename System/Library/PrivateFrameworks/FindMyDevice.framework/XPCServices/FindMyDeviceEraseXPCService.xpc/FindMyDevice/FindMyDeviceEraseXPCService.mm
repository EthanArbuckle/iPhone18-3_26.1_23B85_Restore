@interface FindMyDeviceEraseXPCService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (double)estimatedResetApplePayTimeout;
- (void)_performEraseWithOptions:(id)options completion:(id)completion;
- (void)eraseDeviceWithOptions:(id)options completion:(id)completion;
- (void)resetPassKitCardsWithCompletion:(id)completion;
@end

@implementation FindMyDeviceEraseXPCService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100000E18();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", &v9, 0xCu);
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceEraseXPCServiceProtocol];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)eraseDeviceWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v9 = sub_100000E18();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[FindMyDeviceEraseXPCService eraseDeviceWithOptions:completion:]";
    v23 = 2114;
    v24 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s, Erasing device requested with options - %{public}@", buf, 0x16u);
  }

  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceEraseXPCService.access"];

  if (v11 && ([&__kCFBooleanTrue isEqual:v11] & 1) != 0)
  {
    [(FindMyDeviceEraseXPCService *)self _performEraseWithOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v13 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v14 = [NSError alloc];
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_10000B6B0;
    }

    v19 = NSLocalizedFailureReasonErrorKey;
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v14 initWithDomain:@"com.apple.icloud.findmydeviced.erasexpcserver" code:6 userInfo:v16];

    v18 = sub_100000E18();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failure message - %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (void)_performEraseWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if ([optionsCopy brickDevice])
  {
    v8 = sub_100000E18();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000026C0(v8);
    }

    v9 = &kObliterationTypeWipeAndBrick;
  }

  else
  {
    v9 = &kObliterateDataPartition;
  }

  v10 = *v9;
  v11 = +[FMDFMIPManager sharedInstance];
  _postWipePrefPath = [v11 _postWipePrefPath];

  v38 = _postWipePrefPath;
  v13 = [NSArray arrayWithObjects:&v38 count:1];
  v14 = [NSPredicate predicateWithBlock:&stru_100008E78];
  v15 = [v13 filteredArrayUsingPredicate:v14];

  v16 = sub_100000E18();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Excluding these files from the wipe: %@", buf, 0xCu);
  }

  [optionsCopy customDelay];
  if (v17 >= 3.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 3.0;
  }

  [(FindMyDeviceEraseXPCService *)self estimatedResetApplePayTimeout];
  if (v18 < v19)
  {
    v18 = v19;
  }

  [optionsCopy maxDelayInterval];
  if (v20 > 0.0)
  {
    [optionsCopy maxDelayInterval];
    if (v18 >= v21)
    {
      v18 = v21;
    }
  }

  v34[0] = kObliterationTypeKey;
  v34[1] = kDisplayProgressBarKey;
  v35[0] = v10;
  v35[1] = kCFBooleanTrue;
  v35[2] = v15;
  v34[2] = kObliterationExclusionPathsKey;
  v34[3] = kObliterationDelayAfterReplyKey;
  v22 = [NSNumber numberWithDouble:v18];
  v35[3] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];

  v24 = sub_100000E18();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Erasing baseband settings...", buf, 2u);
  }

  v25 = dispatch_get_global_queue(21, 0);
  dispatch_async(v25, &stru_100008E98);

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100001FF8;
  v32[3] = &unk_100008EC0;
  v33 = completionCopy;
  v26 = completionCopy;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000021D4;
  v29[3] = &unk_100008EE8;
  v30 = v23;
  v31 = objc_retainBlock(v32);
  v27 = v31;
  v28 = v23;
  [(FindMyDeviceEraseXPCService *)self resetPassKitCardsWithCompletion:v29];
  (v27[2])(v27, v28);
}

- (double)estimatedResetApplePayTimeout
{
  v2 = +[PKPassLibrary sharedInstance];
  estimatedTimeToResetApplePay = [v2 estimatedTimeToResetApplePay];

  v4 = sub_100000E18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = estimatedTimeToResetApplePay;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apple pay reset may take - %f seconds", &v6, 0xCu);
  }

  return estimatedTimeToResetApplePay;
}

- (void)resetPassKitCardsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_100000E18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "resetPassKitCards", buf, 2u);
  }

  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000023FC;
  block[3] = &unk_100008F10;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);
}

@end