@interface DeviceRecoveryService
- (BOOL)_loadAccessibilitySettingsToDefaults;
- (BOOL)client:(id)a3 hasBooleanEntitlement:(id)a4;
- (BOOL)downloadRecoveryBrain;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)personalizeAndGraftRecoveryBrain;
- (BOOL)shouldDownloadBrain;
- (DeviceRecoveryService)init;
- (NSXPCConnection)controlClientConnection;
- (id)asyncBrainService;
- (id)attributeDict;
- (id)brainAttributeDict;
- (id)brainServiceName;
- (id)clientProcessName:(id)a3;
- (id)connectToRecoveryBrain;
- (id)getPathToBrainBundle;
- (id)mergeResults:(id)a3 withResults:(id)a4;
- (id)mountSystemDataVolume;
- (id)processRecoveryResults:(id)a3;
- (id)startService;
- (void)configureBrain:(id)a3;
- (void)disableRecoveryAutoBoot:(id)a3;
- (void)enableTestMode:(id)a3;
- (void)fetchState:(id)a3;
- (void)generateAndSubmitRecoveryLog:(id)a3 withDescription:(id)a4;
- (void)loadAccessibilitySettingsToDefaults:(id)a3;
- (void)loadRecoveryBrain:(id)a3;
- (void)processOSRecoveryPhaseStateFile:(id)a3;
- (void)recoverDevice:(id)a3;
- (void)recoverDeviceFromBootedOS:(id)a3;
- (void)reportNetworkAvailability:(id)a3;
- (void)resetRecovery:(id)a3;
- (void)saveSystemLogs;
- (void)scanForIssues:(id)a3;
- (void)shutdown:(id)a3 andReboot:(BOOL)a4 andPrepareNeRDBoot:(BOOL)a5;
- (void)userAuthenticated:(id)a3 completion:(id)a4;
@end

@implementation DeviceRecoveryService

- (DeviceRecoveryService)init
{
  v27.receiver = self;
  v27.super_class = DeviceRecoveryService;
  v2 = [(DeviceRecoveryService *)&v27 init];
  v2->_downloadedBrainIsAvailable = 0;
  v3 = dispatch_workloop_create("com.apple.DeviceRecoveryService.ServiceQueue");
  serviceQueue = v2->_serviceQueue;
  v2->_serviceQueue = v3;

  if (!v2->_serviceQueue)
  {
    sub_1000193F0(v2);
    return 0;
  }

  v5 = dispatch_queue_create("com.apple.DeviceRecoveryService.OSAQueue", 0);
  osaQueue = v2->_osaQueue;
  v2->_osaQueue = v5;

  if (!v2->_osaQueue)
  {
    sub_100019320(v2);
    return 0;
  }

  v7 = dispatch_group_create();
  logWaitGroup = v2->_logWaitGroup;
  v2->_logWaitGroup = v7;

  v2->_isRunningInDeviceRecoveryEnvironment = sub_100002068();
  v2->_isInternalBuild = os_variant_allows_internal_security_policies();
  v9 = objc_alloc_init(DRAnalytics);
  analyticsManager = v2->_analyticsManager;
  v2->_analyticsManager = v9;

  v11 = [[OSASubmissionClient alloc] initWithErrorHandler:&stru_100034B68];
  osaSubmissionClient = v2->_osaSubmissionClient;
  v2->_osaSubmissionClient = v11;

  [(DeviceRecoveryService *)v2 setUnlockScreenType:2];
  [(DeviceRecoveryService *)v2 setSimplePasscodeType:0xFFFFFFFFLL];
  [(DeviceRecoveryService *)v2 setIsPasscodeSet:1];
  set_partition_logging_function(sub_1000033F0);
  set_partition_execution_function(sub_1000035CC);
  set_partition_execution_logging_function(sub_1000034FC);
  v13 = [@"/var/MobileSoftwareUpdate" UTF8String];
  if (mount_update_partition_if_exists(v13, v14, v15, v16, v17, v18, v19, v20))
  {
    sub_1000191DC(v2);
    return 0;
  }

  if ([(DeviceRecoveryService *)v2 isRunningInDeviceRecoveryEnvironment])
  {
  }

  v21 = v2->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003AD8;
  block[3] = &unk_100034AE8;
  v22 = v2;
  v26 = v22;
  dispatch_async(v21, block);
  v23 = dispatch_get_global_queue(21, 0);
  dispatch_async(v23, &stru_100034BA8);

  return v22;
}

- (id)startService
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DeviceRecoveryService"];
  v4 = v3;
  if (v3)
  {
    [v3 setDelegate:self];
    [v4 _setQueue:self->_serviceQueue];
    [v4 resume];
    if (![(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
    {
      v5 = +[NSFileManager defaultManager];
      v6 = [v5 fileExistsAtPath:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist"];

      if (v6)
      {
        [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:@"/var"];
        [(DeviceRecoveryService *)self setUserDataVolumeMountPath:@"/var/mobile"];
        [(DeviceRecoveryService *)self processOSRecoveryPhaseStateFile:0];
      }
    }

    v7 = 0;
  }

  else
  {
    sub_100019548(&v9);
    v7 = v9;
  }

  return v7;
}

- (id)mountSystemDataVolume
{
  if (![(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment]|| [(DeviceRecoveryService *)self systemDataVolumeMounted])
  {
    v3 = 0;
    goto LABEL_12;
  }

  v4 = +[NSFileManager defaultManager];
  v21 = NSFilePosixPermissions;
  v5 = [NSNumber numberWithShort:511];
  v22 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v16 = 0;
  v7 = [v4 createDirectoryAtPath:@"/private/var/mnt" withIntermediateDirectories:0 attributes:v6 error:&v16];
  v8 = v16;

  if (!v7 || v8)
  {
    sub_100019688(v8, &v17, buf);
  }

  else
  {
    v9 = +[UMLManager sharedManager];
    v15 = 0;
    v10 = [v9 mountSystemDataVolumeAt:@"/private/var/mnt" withError:&v15];
    v11 = v15;

    if (v10 && !v11)
    {
      [(DeviceRecoveryService *)self setSystemDataVolumeMounted:1];
      [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:@"/private/var/mnt"];
      v12 = sub_1000118BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
        *buf = 136446466;
        *&buf[4] = "[DeviceRecoveryService mountSystemDataVolume]";
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Mounted System Data Volume: %{public}@", buf, 0x16u);
      }

      v3 = 0;
      goto LABEL_11;
    }

    sub_1000197BC(v11, &v17, buf);
  }

  v12 = v17;
  v3 = *buf;
LABEL_11:

LABEL_12:

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 processIdentifier];
    v9 = sub_10000EDB8();
    v10 = sub_1000118BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = qos_class_self();
      v12 = sub_10000EED4(v11);
      *buf = 136446722;
      *&buf[4] = "[DeviceRecoveryService listener:shouldAcceptNewConnection:]";
      v30 = 2114;
      v31 = v9;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %{public}@ at qos %@", buf, 0x20u);
    }

    if ([(DeviceRecoveryService *)self clientHasRecoveryControlEntitlement:v8])
    {
      location = 0;
      v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryServiceInterface];
      [v8 setExportedInterface:v13];

      v14 = [v8 exportedInterface];
      v15 = v14 != 0;

      if (v15)
      {
        [v8 setExportedObject:self];
        v16 = [(DeviceRecoveryService *)self serviceQueue];
        [v8 _setQueue:v16];

        objc_storeWeak(&location, v8);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000045C8;
        v24[3] = &unk_100034BD0;
        v17 = v9;
        v25 = v17;
        v26 = self;
        objc_copyWeak(&v27, &location);
        [v8 setInterruptionHandler:v24];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000046A4;
        v20[3] = &unk_100034BD0;
        v21 = v17;
        v22 = self;
        objc_copyWeak(&v23, &location);
        [v8 setInvalidationHandler:v20];
        [v8 resume];
        objc_destroyWeak(&v23);

        objc_destroyWeak(&v27);
        v18 = v25;
      }

      else
      {
        sub_1000118BC();
        objc_claimAutoreleasedReturnValue();
        sub_1000199BC();
        v18 = *buf;
      }

      objc_destroyWeak(&location);
    }

    else
    {
      sub_1000198F0();
      v15 = 0;
    }
  }

  else
  {
    sub_100019A80();
    v9 = *buf;
    v15 = location;
  }

  return v15;
}

- (void)processOSRecoveryPhaseStateFile:(id)a3
{
  v4 = a3;
  if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    sub_100019DBC();
LABEL_27:
    v13 = 0;
    v5 = 0;
    v21 = location;
    v20 = *buf;
    goto LABEL_21;
  }

  v5 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist"];
  v6 = sub_1000118BC();
  v7 = v6;
  if (!v5)
  {
    sub_100019C84();
    goto LABEL_27;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]";
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: state dict = %{public}@", buf, 0x16u);
  }

  v8 = [v5 objectForKeyedSubscript:@"PostRecoveryEvent"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 BOOLValue])
  {
    v9 = [(DeviceRecoveryService *)self serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004CF8;
    block[3] = &unk_100034AE8;
    block[4] = self;
    dispatch_async(v9, block);
  }

  v10 = [v5 objectForKeyedSubscript:@"OSBootRecoveryPhaseRequired"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v12 = sub_1000118BC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100019B54();
    }

    v11 = 0;
  }

  v13 = [v5 objectForKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 BOOLValue];
  }

  else
  {
    v15 = sub_1000118BC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100019BEC();
    }

    v14 = 0;
  }

  if ((v11 | v14))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = sub_100004D88;
    v34 = sub_100004D98;
    v35 = 0;
    v16 = os_transaction_create();
    v17 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v16;

    v18 = +[NSFileManager defaultManager];
    [v18 removeItemAtPath:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist" error:0];

    objc_initWeak(&location, self);
    v19 = [(DeviceRecoveryService *)self serviceQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100004DA0;
    v23[3] = &unk_100034CC0;
    objc_copyWeak(&v27, &location);
    v26 = buf;
    v25 = v4;
    v28 = v11;
    v5 = v5;
    v24 = v5;
    v29 = v14;
    dispatch_async(v19, v23);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);

    v20 = 0;
    goto LABEL_24;
  }

  v21 = [NSString stringWithFormat:@"state dict is present, but doesn't have '%@' or '%@' set to indicate a recovery phase needs to happen in the main OS", @"OSBootRecoveryPhaseRequired", @"PostUnlockRecoveryPhaseRequired"];
  v20 = sub_100002034(@"DeviceRecoveryError", 1, v21, @"state dict is present, but doesn't have '%@' or '%@' set to indicate a recovery phase needs to happen in the main OS", 0, "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x2EFu);
LABEL_21:

  if (v20)
  {
    v22 = [v20 description];
    [(DeviceRecoveryService *)self generateAndSubmitRecoveryLog:@"Post deviceRecovery state file processing" withDescription:v22];

    if (v4)
    {
      (*(v4 + 2))(v4, v20);
    }
  }

LABEL_24:
}

- (BOOL)client:(id)a3 hasBooleanEntitlement:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    sub_10001A6C8();
LABEL_20:
    v12 = v17;
    v8 = *buf;
LABEL_21:

    v9 = 0;
    goto LABEL_7;
  }

  if (!v5)
  {
    sub_10001A5F8();
    goto LABEL_20;
  }

  v7 = [v5 valueForEntitlement:v6];
  if (!v7)
  {
    v11 = sub_1000118BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001A4A0();
    }

    v12 = sub_1000118BC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001A54C();
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = sub_1000118BC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001A314();
    }

    v12 = sub_1000118BC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v5 processIdentifier];
      v14 = sub_10000EDB8();
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 136446978;
      *&buf[4] = "[DeviceRecoveryService client:hasBooleanEntitlement:]";
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s: entitlement '%{public}@' on client '%{public}@' is not an NSNumber: %{public}@", buf, 0x2Au);
    }

    goto LABEL_21;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    sub_10001A3C0(v8, &v17, buf);
    goto LABEL_20;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (id)brainServiceName
{
  if (-[DeviceRecoveryService isInternalBuild](self, "isInternalBuild") && (-[DeviceRecoveryService overrideService](self, "overrideService"), v3 = objc_claimAutoreleasedReturnValue(), [v3 brainBundlePath], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [(DeviceRecoveryService *)self overrideService];
    v6 = [v5 brainType];

    v7 = (v6 & 0xFFFFFFFD) == 0;
  }

  else
  {
    v7 = [(DeviceRecoveryService *)self downloadedBrainIsAvailable];
  }

  if (v7)
  {
    v8 = @"com.apple.DeviceRecoveryBrain";
  }

  else
  {
    v8 = @"com.apple.DeviceRecoveryBuiltinBrain";
  }

  return v8;
}

- (id)clientProcessName:(id)a3
{
  if (a3)
  {
    [a3 processIdentifier];
    v4 = sub_10000EDB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getPathToBrainBundle
{
  if (!-[DeviceRecoveryService isInternalBuild](self, "isInternalBuild") || (-[DeviceRecoveryService overrideService](self, "overrideService"), v3 = objc_claimAutoreleasedReturnValue(), [v3 brainBundlePath], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v7 = [(DeviceRecoveryService *)self brainServiceName];
    if ([v7 isEqualToString:@"com.apple.DeviceRecoveryBuiltinBrain"])
    {
      v8 = sub_1000118BC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = "[DeviceRecoveryService getPathToBrainBundle]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [BrainBundlePath]: Attempting to load bundle for Builtin DeviceRecoveryBrain", buf, 0xCu);
      }

      v9 = @"/System/Library/PrivateFrameworks/DeviceRecoveryBrainSupport.framework/XPCServices/com.apple.DeviceRecoveryBuiltinBrain.xpc";
    }

    else
    {
      if (![v7 isEqualToString:@"com.apple.DeviceRecoveryBrain"])
      {
        v9 = @"/System/Library/PrivateFrameworks/DeviceRecoveryBrainSupport.framework/XPCServices/com.apple.DeviceRecoveryBuiltinBrain.xpc";
        goto LABEL_16;
      }

      v10 = sub_1000118BC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = "[DeviceRecoveryService getPathToBrainBundle]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [BrainBundlePath]: Attempting to load bundle for *non* builtin DeviceRecoveryBrain", buf, 0xCu);
      }

      v11 = [(DeviceRecoveryService *)self recoveryBrainAsset];
      v12 = [v11 getLocalFileUrl];

      v13 = [(DeviceRecoveryService *)self recoveryBrainAsset];
      v8 = [v13 getLocalFileUrl];

      bzero(buf, 0x400uLL);
      [v8 getFileSystemRepresentation:buf maxLength:1023];
      v14 = [NSString stringWithFormat:@"%s", buf];
      v15 = [v14 stringByDeletingLastPathComponent];

      v16 = [v15 stringByAppendingPathComponent:@".AssetData"];
      v9 = [v16 stringByAppendingPathComponent:@"com.apple.DeviceRecoveryBrain.xpc"];
    }

LABEL_16:
    v6 = v9;

    goto LABEL_17;
  }

  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "[DeviceRecoveryService getPathToBrainBundle]";
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [BrainBundlePath]: Using path from defaults for DeviceRecoveryBrainBundle: %{public}@", buf, 0x16u);
  }

  v6 = v4;
LABEL_17:

  return v6;
}

- (id)connectToRecoveryBrain
{
  v3 = [(DeviceRecoveryService *)self brainConnection];

  if (v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [(DeviceRecoveryService *)self brainServiceName];
  v6 = [(DeviceRecoveryService *)self getPathToBrainBundle];
  v7 = sub_1000118BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryService connectToRecoveryBrain]";
    v28 = 2082;
    v29 = [v6 fileSystemRepresentation];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Attempting to load brain bundle at path %{public}s", buf, 0x16u);
  }

  v8 = v6;
  [v6 fileSystemRepresentation];
  xpc_add_bundle();
  v9 = sub_1000118BC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryService connectToRecoveryBrain]";
    v28 = 2114;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Connecting to DeviceRecoveryBrain: %{public}@", buf, 0x16u);
  }

  v10 = [NSXPCConnection alloc];
  v11 = [(DeviceRecoveryService *)self brainServiceName];
  v12 = [v10 initWithServiceName:v11];
  [(DeviceRecoveryService *)self setBrainConnection:v12];

  v13 = [(DeviceRecoveryService *)self brainConnection];
  LODWORD(v11) = v13 == 0;

  if (v11)
  {
    sub_10001A8C4();
    v14 = v26[1];
LABEL_16:
    v4 = *buf;
    goto LABEL_10;
  }

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryBrainServiceInterface];
  if (!v14)
  {
    sub_10001A798(buf);
    goto LABEL_16;
  }

  v15 = [(DeviceRecoveryService *)self brainConnection];
  [v15 setRemoteObjectInterface:v14];

  v16 = [(DeviceRecoveryService *)self brainConnection];
  v17 = [(DeviceRecoveryService *)self serviceQueue];
  [v16 _setQueue:v17];

  v18 = objc_initWeak(buf, self);
  v19 = [(DeviceRecoveryService *)self brainConnection];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100006188;
  v25[3] = &unk_100034CE8;
  objc_copyWeak(v26, buf);
  [v19 setInterruptionHandler:v25];

  v20 = [(DeviceRecoveryService *)self brainConnection];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100006260;
  v23[3] = &unk_100034CE8;
  objc_copyWeak(&v24, buf);
  [v20 setInvalidationHandler:v23];

  v21 = [(DeviceRecoveryService *)self brainConnection];
  [v21 resume];

  objc_destroyWeak(&v24);
  objc_destroyWeak(v26);
  objc_destroyWeak(buf);
  v4 = 0;
LABEL_10:

LABEL_11:

  return v4;
}

- (id)asyncBrainService
{
  v3 = [(DeviceRecoveryService *)self brainConnection];

  if (v3)
  {
    v4 = [(DeviceRecoveryService *)self brainConnection];
    v5 = [v4 remoteObjectProxyWithErrorHandler:&stru_100034D08];

    if (v5)
    {
      goto LABEL_3;
    }

    sub_10001AA0C();
  }

  else
  {
    sub_10001AAD4();
  }

  v5 = 0;
LABEL_3:

  return v5;
}

- (id)attributeDict
{
  v22[0] = @"TestModeEnabled";
  v21 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self testModeEnabled]];
  v23[0] = v21;
  v22[1] = @"UserAuthenticated";
  v20 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self userAuthenticated]];
  v23[1] = v20;
  v22[2] = @"DataVolumeMounted";
  v19 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self dataVolumeMounted]];
  v23[2] = v19;
  v22[3] = @"NetworkAvailable";
  v18 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self networkAvailable]];
  v23[3] = v18;
  v22[4] = @"RecoveryBrainLoaded";
  v17 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self recoveryBrainLoaded]];
  v23[4] = v17;
  v22[5] = @"IssuesScanComplete";
  v3 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self issuesScanComplete]];
  v23[5] = v3;
  v22[6] = @"RepairableIssuesFound";
  v4 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self repairableIssuesFound]];
  v23[6] = v4;
  v22[7] = @"RecoveryComplete";
  v5 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self recoveryComplete]];
  v23[7] = v5;
  v22[8] = @"DiagnosticsSubmissionApproved";
  v6 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission]];
  v23[8] = v6;
  v22[9] = @"UnlockScreenType";
  v7 = [NSNumber numberWithUnsignedChar:[(DeviceRecoveryService *)self unlockScreenType]];
  v23[9] = v7;
  v22[10] = @"SimplePasscodeType";
  v8 = [NSNumber numberWithUnsignedChar:[(DeviceRecoveryService *)self simplePasscodeType]];
  v23[10] = v8;
  v22[11] = @"IsPasscodeSet";
  v9 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self isPasscodeSet]];
  v23[11] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:12];
  v11 = [v10 mutableCopy];

  v12 = [(DeviceRecoveryService *)self mainOSLanguageCode];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(DeviceRecoveryService *)self mainOSLanguageCode];
    [v11 setObject:v14 forKeyedSubscript:@"MainOSLanguageCode"];
  }

  v15 = [v11 copy];

  return v15;
}

- (id)brainAttributeDict
{
  v24[0] = @"TestModeEnabled";
  v22 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self testModeEnabled]];
  v25[0] = v22;
  v24[1] = @"IsRunningInDeviceRecoveryEnvironment";
  v3 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment]];
  v25[1] = v3;
  v24[2] = @"SystemDataVolumeMountPath";
  v4 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
  v25[2] = v4;
  v24[3] = @"UserDataVolumeMountPath";
  v5 = [(DeviceRecoveryService *)self userDataVolumeMountPath];
  v25[3] = v5;
  v24[4] = @"UpdateVolumeMountPath";
  v6 = [(DeviceRecoveryService *)self updateVolumeMountPath];
  v25[4] = v6;
  v24[5] = @"IssuesScanResultOverride";
  v7 = [(DeviceRecoveryService *)self overrideService];
  v8 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v7 issuesScanResult]);
  v25[5] = v8;
  v24[6] = @"RecoveryResultOverride";
  v9 = [(DeviceRecoveryService *)self overrideService];
  v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v9 recoveryResult]);
  v25[6] = v10;
  v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [(DeviceRecoveryService *)self overrideService];
  v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v12 issuesScanResult]);
  [v11 setObject:v13 forKeyedSubscript:@"IssuesScanResultOverride"];

  v14 = [(DeviceRecoveryService *)self overrideService];
  v15 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v14 recoveryResult]);
  [v11 setObject:v15 forKeyedSubscript:@"RecoveryResultOverride"];

  v16 = [(DeviceRecoveryService *)self overrideService];
  v17 = [v16 freeSpaceThreshold];

  if (v17)
  {
    v18 = [(DeviceRecoveryService *)self overrideService];
    v19 = [v18 freeSpaceThreshold];
    [v11 setObject:v19 forKeyedSubscript:@"FreeSpaceThresholdOverride"];
  }

  v20 = [(DeviceRecoveryService *)self userDataVolumeMountPath];
  [v11 setObject:v20 forKeyedSubscript:@"UserHomeDirectory"];

  [v11 addEntriesFromDictionary:v23];

  return v11;
}

- (void)enableTestMode:(id)a3
{
  v4 = a3;
  v5 = [(DeviceRecoveryService *)self testModeEnabled];
  v6 = sub_1000118BC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 136446210;
      v12 = "[DeviceRecoveryService enableTestMode:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] already enabled", buf, 0xCu);
    }

    if (v4)
    {
      v8 = [(DeviceRecoveryService *)self attributeDict];
      (*(v4 + 2))(v4, 0, 0, v8);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136446210;
      v12 = "[DeviceRecoveryService enableTestMode:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Enabling [TEST MODE] - resetting recovery state", buf, 0xCu);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006D0C;
    v9[3] = &unk_100034D30;
    v9[4] = self;
    v10 = v4;
    [(DeviceRecoveryService *)self resetRecovery:v9];
  }
}

- (void)resetRecovery:(id)a3
{
  v4 = a3;
  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[DeviceRecoveryService resetRecovery:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    if ([(DeviceRecoveryService *)self dataVolumeMounted])
    {
      v6 = sub_1000118BC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v30 = "[DeviceRecoveryService resetRecovery:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Unmounting User Data volume", buf, 0xCu);
      }

      v7 = +[UMLManager sharedManager];
      v8 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
      [v7 unmountUserDataVolumeOnSystemDataAt:v8 withError:0];
    }

    if ([(DeviceRecoveryService *)self systemDataVolumeMounted])
    {
      v9 = sub_1000118BC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v30 = "[DeviceRecoveryService resetRecovery:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Unmounting System Data volume", buf, 0xCu);
      }

      v10 = +[UMLManager sharedManager];
      v11 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
      [v10 unmountSystemDataVolumeAt:v11 withError:0];
    }

    v12 = +[NSFileManager defaultManager];
    v13 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
    [v12 removeItemAtPath:v13 error:0];

    [(DeviceRecoveryService *)self setSystemDataVolumeMounted:0];
    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:0];
    v14 = [(DeviceRecoveryService *)self mountSystemDataVolume];
  }

  else
  {
    [(DeviceRecoveryService *)self setSystemDataVolumeMounted:0];
    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:0];
  }

  [(DeviceRecoveryService *)self setTestModeEnabled:0];
  [(DeviceRecoveryService *)self setUserAuthenticated:0];
  [(DeviceRecoveryService *)self setDataVolumeMounted:0];
  [(DeviceRecoveryService *)self setNetworkAvailable:0];
  [(DeviceRecoveryService *)self setRecoveryBrainLoaded:0];
  [(DeviceRecoveryService *)self setIssuesScanComplete:0];
  [(DeviceRecoveryService *)self setRepairableIssuesFound:0];
  [(DeviceRecoveryService *)self setRecoveryComplete:0];
  [(DeviceRecoveryService *)self setUserDataVolumeMountPath:0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000072F0;
  v27[3] = &unk_100034D58;
  v15 = v4;
  v27[4] = self;
  v28 = v15;
  v16 = objc_retainBlock(v27);
  v17 = [(DeviceRecoveryService *)self brainConnection];

  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = [(DeviceRecoveryService *)self brainConnection];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000736C;
  v25[3] = &unk_100034C20;
  v19 = v16;
  v26 = v19;
  v20 = [v18 remoteObjectProxyWithErrorHandler:v25];

  v21 = sub_1000118BC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = "[DeviceRecoveryService resetRecovery:]";
    v31 = 2114;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: brainService: %{public}@", buf, 0x16u);
  }

  if (!v20)
  {

LABEL_22:
    (v16[2])(v16, 0, 0);
    goto LABEL_23;
  }

  v22 = sub_1000118BC();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[DeviceRecoveryService resetRecovery:]";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: calling reset on brain", buf, 0xCu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000073E4;
  v23[3] = &unk_100034C48;
  v24 = v19;
  [v20 resetRecovery:v23];

LABEL_23:
}

- (void)fetchState:(id)a3
{
  v4 = a3;
  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 136446210;
    *&v7[4] = "[DeviceRecoveryService fetchState:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", v7, 0xCu);
  }

  if (v4)
  {
    v6 = [(DeviceRecoveryService *)self attributeDict];
    (*(v4 + 2))(v4, 0, 0, v6);
  }

  else
  {
    sub_10001AD5C();
    v6 = *v7;
  }
}

- (void)configureBrain:(id)a3
{
  v4 = a3;
  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService configureBrain:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v4)
  {
    sub_10001B114();
    v12 = *buf;
    goto LABEL_11;
  }

  v6 = [(DeviceRecoveryService *)self connectToRecoveryBrain];
  if (v6)
  {
    v12 = v6;
    sub_10001AE24();
LABEL_10:
    v14 = [(DeviceRecoveryService *)self attributeDict];
    v4[2](v4, v12, 0, v14);

LABEL_11:
    goto LABEL_12;
  }

  v7 = [(DeviceRecoveryService *)self brainConnection];

  if (v7)
  {
    v8 = [(DeviceRecoveryService *)self brainConnection];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007938;
    v17[3] = &unk_100034D80;
    v9 = v4;
    v17[4] = self;
    v18 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v17];

    if (v10)
    {
      v11 = [(DeviceRecoveryService *)self brainAttributeDict];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100007A38;
      v15[3] = &unk_100034D58;
      v15[4] = self;
      v16 = v9;
      [v10 configureBrain:v11 completion:v15];

      v12 = 0;
      v13 = v16;
    }

    else
    {
      sub_10001AEEC();
      v13 = v19;
      v12 = *buf;
    }
  }

  else
  {
    sub_10001B000();
    v10 = v19;
    v12 = *buf;
  }

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_12:
}

- (void)saveSystemLogs
{
  v3 = [(DeviceRecoveryService *)self updateVolumeMountPath];

  if (v3)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = objc_opt_new();
    v5 = v4;
    if (v4)
    {
      [v4 setDateFormat:@"dd-MM-yyyy-hh-mm-ss"];
      v6 = [(DeviceRecoveryService *)self updateVolumeMountPath];
      v7 = +[NSDate date];
      v8 = [v5 stringFromDate:v7];
      v9 = [NSString stringWithFormat:@"%@/Controller/NeRD/DRE-%@.logarchive", v6, v8];

      v10 = sub_1000118BC();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "[DeviceRecoveryService saveSystemLogs]";
          v38 = 2114;
          v39 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Saving logarchive to '%{public}@'", buf, 0x16u);
        }

        [v9 UTF8String];
        v26[1] = _NSConcreteStackBlock;
        v26[2] = 3221225472;
        v26[3] = sub_100008050;
        v26[4] = &unk_100034DA8;
        v12 = v9;
        v27 = v12;
        if (OSLogCreateArchive())
        {
          v22 = sub_1000118BC();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10001B258();
          }

          v23 = sub_1000118BC();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10001B304();
          }
        }

        else
        {
          v13 = [v12 stringByAppendingPathExtension:@"zip"];
          if (v13)
          {
            v14 = v13;
            v15 = fopen([v13 UTF8String], "w+");
            if (v15)
            {
              v16 = v15;
              v34 = 0;
              v32 = 0u;
              v33 = 0u;
              *&v30 = 0;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              *(&v30 + 1) = v15;
              v35[0] = kSZArchiverOptionCompressionOptions;
              v35[1] = kSZArchiverOptionZlibCompressionLevel;
              v36[0] = kSZArchiverCompressionOptionTryRecompress;
              v36[1] = &off_100037A68;
              v35[2] = kSZArchiverOptionSkipPrescan;
              v35[3] = kSZArchiverOptionUncompressBloatedFiles;
              v36[2] = &__kCFBooleanFalse;
              v36[3] = &__kCFBooleanTrue;
              v35[4] = kSZArchiverOptionNoCache;
              v36[4] = &__kCFBooleanTrue;
              v17 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
              [v12 UTF8String];
              StreamableZip = SZArchiverCreateStreamableZip();
              fclose(v16);
              if (StreamableZip)
              {
                v19 = +[NSFileManager defaultManager];
                v26[0] = 0;
                [v19 removeItemAtPath:v12 error:v26];
                v20 = v26[0];

                if (!v20)
                {
                  v21 = 0;
LABEL_12:

LABEL_13:
                  return;
                }

                v25 = sub_1000118BC();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  sub_10001B4B8();
                }

                v23 = sub_1000118BC();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  sub_10001B564();
                }

LABEL_37:

                v21 = v20;
                goto LABEL_12;
              }

              v24 = sub_1000118BC();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_10001B38C();
              }

              v23 = sub_1000118BC();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                sub_10001B438();
              }
            }

            else
            {
              v23 = sub_1000118BC();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                sub_10001B5E4();
              }

              v17 = 0;
            }

            v20 = 0;
            goto LABEL_37;
          }

          v23 = sub_1000118BC();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10001B690();
          }
        }

        v17 = 0;
        v20 = 0;
        v14 = 0;
        goto LABEL_37;
      }

      sub_10001B73C();
    }

    else
    {
      sub_10001B800();
    }

    v12 = *buf;
    goto LABEL_13;
  }
}

- (void)shutdown:(id)a3 andReboot:(BOOL)a4 andPrepareNeRDBoot:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = dispatch_group_create();
  v10 = sub_1000118BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[DeviceRecoveryService shutdown:andReboot:andPrepareNeRDBoot:]";
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: reboot:%d nerdBoot:%d", buf, 0x18u);
  }

  if ([(DeviceRecoveryService *)self testModeEnabled])
  {
    v11 = sub_1000118BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryService shutdown:andReboot:andPrepareNeRDBoot:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] enabled - simulating reboot", buf, 0xCu);
    }

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v11 = +[NSXPCConnection currentConnection];
  if (!v11)
  {
    sub_10001BC40();
    goto LABEL_26;
  }

  if (![(DeviceRecoveryService *)self clientHasRebootEntitlement:v11])
  {
    v17 = sub_1000118BC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001B95C();
    }

    v18 = [(DeviceRecoveryService *)self clientProcessName:v11];
    v19 = [NSString stringWithFormat:@"client %@ missing '%@' entitlement required for reboot", v18, @"com.apple.private.xpc.launchd.reboot"];
    v15 = sub_100002034(@"DeviceRecoveryError", 5, v19, @"client %@ missing '%@' entitlement required for reboot", 0, "[DeviceRecoveryService shutdown:andReboot:andPrepareNeRDBoot:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x51Eu);

    goto LABEL_27;
  }

  if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    [(DRAnalytics *)self->_analyticsManager submitAllEvents];
    dispatch_group_enter(v9);
    v12 = [(DeviceRecoveryService *)self osaQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008484;
    block[3] = &unk_100034AC0;
    block[4] = self;
    v21 = v9;
    dispatch_async(v12, block);
  }

  if (!v5)
  {
    sub_100010690(@"boot-command");
    goto LABEL_14;
  }

  if (!sub_100010708(@"boot-command", @"recover-once"))
  {
LABEL_14:
    [(DeviceRecoveryService *)self saveSystemLogs];
    v13 = dispatch_time(0, 60000000000);
    dispatch_group_wait(self->_logWaitGroup, v13);
    if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
    {
      v14 = dispatch_time(0, 120000000000);
      dispatch_group_wait(v9, v14);
    }

    if (!reboot3())
    {
      goto LABEL_17;
    }

    sub_10001BB24();
    goto LABEL_26;
  }

  sub_10001BA08();
LABEL_26:
  v18 = v22;
  v15 = *buf;
LABEL_27:

LABEL_18:
  if (v8)
  {
    v16 = [(DeviceRecoveryService *)self attributeDict];
    v8[2](v8, v15, 0, v16);
  }
}

- (void)disableRecoveryAutoBoot:(id)a3
{
  v4 = a3;
  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  v6 = sub_10001087C(@"boot-args");
  if (!v6)
  {
    v11 = [NSString stringWithFormat:@"%@ %@", @"-no_panic_dialog", @"launch_enable_dre=0"];
    v7 = sub_1000118BC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: No boot-args - setting them to: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v7 = v6;
  if (([v6 containsString:@"launch_enable_dre=0"]& 1) == 0)
  {
    v8 = sub_1000118BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
      v16 = 2112;
      v17 = @"launch_enable_dre=0";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting %@ in boot-args to disable launchd recovery auto-boot", buf, 0x16u);
    }

    v9 = [v7 stringByAppendingFormat:@" %@", @"launch_enable_dre=0"];

    v7 = v9;
  }

  if (([v7 containsString:@"-no_panic_dialog"]& 1) == 0)
  {
    v10 = sub_1000118BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
      v16 = 2112;
      v17 = @"-no_panic_dialog";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting %@ in boot-args to disable PanicMedic recovery auto-boot", buf, 0x16u);
    }

    v11 = [v7 stringByAppendingFormat:@" %@", @"-no_panic_dialog"];
LABEL_14:

    v7 = v11;
  }

  v12 = sub_100010708(@"boot-args", v7);
  if (v12)
  {
    sub_10001BD5C(v12, buf);
    v13 = *buf;
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = 0;
  if (v4)
  {
LABEL_17:
    v14 = [(DeviceRecoveryService *)self attributeDict];
    v4[2](v4, v13, 0, v14);
  }

LABEL_18:
}

- (void)userAuthenticated:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100009180;
  v54[3] = &unk_100034DD0;
  v54[4] = self;
  v9 = v7;
  v55 = v9;
  v10 = objc_retainBlock(v54);
  v11 = sub_1000118BC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v9)
  {
    sub_10001C318();
    v21 = *buf;
    goto LABEL_46;
  }

  if ([(DeviceRecoveryService *)self userAuthenticated])
  {
    sub_10001C204();
LABEL_52:
    v20 = v56;
    v21 = *buf;
    goto LABEL_44;
  }

  if ([(DeviceRecoveryService *)self dataVolumeMounted])
  {
    sub_10001C0F0();
    goto LABEL_52;
  }

  v12 = [(DeviceRecoveryService *)self controlClientConnection];

  if (!v12)
  {
    [(DeviceRecoveryService *)self setControlClientConnection:v8];
  }

  v13 = [(DeviceRecoveryService *)self controlClientConnection];

  if (v13 != v8)
  {
    sub_10001BE98();
    goto LABEL_52;
  }

  if (v6)
  {
    v14 = [v6 objectForKeyedSubscript:@"DiagnosticsSubmissionApproved"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[DeviceRecoveryService setUserApprovedDiagnosticsSubmission:](self, "setUserApprovedDiagnosticsSubmission:", [v14 BOOLValue]);
        v15 = sub_1000118BC();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission];
          v17 = @"Not Approved";
          if (v16)
          {
            v17 = @"Approved";
          }

          *buf = 136446466;
          *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
          v62 = 2114;
          v63 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Diagnostics Submission %{public}@", buf, 0x16u);
        }
      }
    }
  }

  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    v18 = [(DeviceRecoveryService *)self overrideService];
    v19 = [v18 userAuthResult];

    if (v19 == 1)
    {
      v20 = [NSString stringWithFormat:@"user authenticated operation forced to fail"];
      v21 = sub_100002034(@"DeviceRecoveryError", 4, v20, @"user authenticated operation forced to fail", 0, "[DeviceRecoveryService userAuthenticated:completion:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x5C4u);
      goto LABEL_44;
    }
  }

  if ([(DeviceRecoveryService *)self testModeEnabled])
  {
    v22 = sub_1000118BC();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] enabled - simulating user auth processing", buf, 0xCu);
    }

    v23 = [(DeviceRecoveryService *)self overrideService];
    v21 = [v23 systemDataPath];

    v24 = [(DeviceRecoveryService *)self overrideService];
    v25 = [v24 userDataPath];

    v26 = [(DeviceRecoveryService *)self overrideService];
    v27 = [v26 updateVolumePath];

    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = @"/var";
    }

    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:v28];
    if (v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = @"/var/mobile";
    }

    [(DeviceRecoveryService *)self setUserDataVolumeMountPath:v29];
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = @"/var/MobileSoftwareUpdate";
    }

    [(DeviceRecoveryService *)self setUpdateVolumeMountPath:v30];
    v31 = dispatch_time(0, 2000000000);
    v32 = [(DeviceRecoveryService *)self serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000961C;
    block[3] = &unk_100034DF8;
    v52 = v10;
    dispatch_after(v31, v32, block);

    goto LABEL_46;
  }

  v20 = [v6 objectForKeyedSubscript:@"UserPasscode"];
  if (![(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:@"/var"];
    [(DeviceRecoveryService *)self setUserDataVolumeMountPath:@"/var/mobile"];
LABEL_43:
    [(DeviceRecoveryService *)self setUpdateVolumeMountPath:@"/var/MobileSoftwareUpdate"];
    (v10[2])(v10, 0, 0);
    v21 = 0;
    goto LABEL_44;
  }

  if (![(DeviceRecoveryService *)self systemDataVolumeMounted])
  {
    v33 = [(DeviceRecoveryService *)self mountSystemDataVolume];
  }

  v34 = +[UMLManager sharedManager];
  v53 = 0;
  v35 = [v34 mountUserDataVolumeOnSystemDataAt:@"/private/var/mnt" withACMCredential:v20 withError:&v53];
  v36 = v53;

  if (v35 && !v36)
  {
    [(DeviceRecoveryService *)self setDataVolumeMounted:1];
    [(DeviceRecoveryService *)self setUserDataVolumeMountPath:@"/private/var/mnt/mobile"];
    v37 = sub_1000118BC();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(DeviceRecoveryService *)self userDataVolumeMountPath];
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
      v62 = 2114;
      v63 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}s: Mounted User Data Volume: %{public}@", buf, 0x16u);
    }

    goto LABEL_43;
  }

  v39 = sub_1000118BC();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_10001BFAC();
  }

  v40 = [v36 domain];
  if ([v40 isEqualToString:NSOSStatusErrorDomain])
  {
    if ([v36 code] == -536870194)
    {

LABEL_61:
      v59 = @"DeviceHandle";
      v60 = &off_100037A50;
      [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v50 = MKBGetDeviceLockStateInfo();
      v44 = sub_1000118BC();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
        v62 = 2112;
        v63 = v50;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s: LockStateInfo: %@", buf, 0x16u);
      }

      if (v50)
      {
        v45 = [(__CFString *)v50 objectForKeyedSubscript:kMKBInfoBackOff];
        [v45 doubleValue];
        if (v46 <= 0.0)
        {
          v41 = 0;
        }

        else
        {
          v47 = sub_1000118BC();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_10001C058(v45);
          }

          v57 = @"PasscodeBackOffEndDate";
          [v45 doubleValue];
          v48 = [NSDate dateWithTimeIntervalSinceNow:?];
          v58 = v48;
          v41 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        }
      }

      else
      {
        v41 = 0;
      }

      v49 = [NSString stringWithFormat:@"Failed to mount user data volume - invalid passcode: %@", v36];
      v42 = sub_100001DE0(@"DeviceRecoveryError", 15, v49, @"Failed to mount user data volume - invalid passcode: %@", v36, v41, "[DeviceRecoveryService userAuthenticated:completion:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x5E2u);

      goto LABEL_72;
    }

    v43 = [v36 code];

    if (v43 == -536363000)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v41 = [NSString stringWithFormat:@"Failed to mount user data volume: %@", v36];
  v42 = sub_100002034(@"DeviceRecoveryError", 1, v41, @"Failed to mount user data volume: %@", v36, "[DeviceRecoveryService userAuthenticated:completion:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x5E4u);
LABEL_72:

  v21 = v42;
LABEL_44:

  if (v21)
  {
    (v10[2])(v10, v21, 0);
LABEL_46:
  }
}

- (void)reportNetworkAvailability:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100009AA4;
  v20[3] = &unk_100034DD0;
  v20[4] = self;
  v6 = v4;
  v21 = v6;
  v7 = objc_retainBlock(v20);
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService reportNetworkAvailability:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001C8BC();
    goto LABEL_20;
  }

  if (![(DeviceRecoveryService *)self userAuthenticated])
  {
    sub_10001C45C();
LABEL_26:
    v13 = v22;
    v14 = *buf;
LABEL_13:

    if (v14)
    {
      (v7[2])(v7, v14, 0);
    }

    goto LABEL_20;
  }

  if (![(DeviceRecoveryService *)self dataVolumeMounted])
  {
    sub_10001C578();
    goto LABEL_26;
  }

  if ([(DeviceRecoveryService *)self networkAvailable])
  {
    sub_10001C7A8();
    goto LABEL_26;
  }

  v9 = [(DeviceRecoveryService *)self controlClientConnection];

  if (!v9)
  {
    [(DeviceRecoveryService *)self setControlClientConnection:v5];
  }

  v10 = [(DeviceRecoveryService *)self controlClientConnection];

  if (v10 != v5)
  {
    sub_10001C694();
    goto LABEL_26;
  }

  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    v11 = [(DeviceRecoveryService *)self overrideService];
    v12 = [v11 networkAvailableResult];

    if (v12 == 1)
    {
      v13 = [NSString stringWithFormat:@"report network availability operation forced to fail"];
      v14 = sub_100002034(@"DeviceRecoveryError", 4, v13, @"report network availability operation forced to fail", 0, "[DeviceRecoveryService reportNetworkAvailability:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x6D3u);
      goto LABEL_13;
    }
  }

  if ([(DeviceRecoveryService *)self testModeEnabled])
  {
    v15 = sub_1000118BC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryService reportNetworkAvailability:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] enabled - simulating network availability report", buf, 0xCu);
    }

    v16 = dispatch_time(0, 1000000000);
    v17 = [(DeviceRecoveryService *)self serviceQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009D40;
    v18[3] = &unk_100034DF8;
    v19 = v7;
    dispatch_after(v16, v17, v18);
  }

  else
  {
    (v7[2])(v7, 0, 0);
  }

LABEL_20:
}

- (void)loadRecoveryBrain:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000A2FC;
  v24[3] = &unk_100034DD0;
  v24[4] = self;
  v6 = v4;
  v25 = v6;
  v7 = objc_retainBlock(v24);
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001D07C();
    v14 = *buf;
    goto LABEL_34;
  }

  if ([(DeviceRecoveryService *)self userAuthenticated])
  {
    if ([(DeviceRecoveryService *)self dataVolumeMounted])
    {
      if ([(DeviceRecoveryService *)self networkAvailable])
      {
        if ([(DeviceRecoveryService *)self recoveryBrainLoaded])
        {
          sub_10001CF68();
        }

        else
        {
          v9 = [(DeviceRecoveryService *)self controlClientConnection];

          if (!v9)
          {
            [(DeviceRecoveryService *)self setControlClientConnection:v5];
          }

          v10 = [(DeviceRecoveryService *)self controlClientConnection];

          if (v10 == v5)
          {
            if ([(DeviceRecoveryService *)self isInternalBuild])
            {
              v11 = [(DeviceRecoveryService *)self overrideService];
              v12 = [v11 brainLoadResult];

              if (v12 == 1)
              {
                v13 = [NSString stringWithFormat:@"load recovery brain operation forced to fail"];
                v14 = sub_100002034(@"DeviceRecoveryError", 4, v13, @"load recovery brain operation forced to fail", 0, "[DeviceRecoveryService loadRecoveryBrain:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x724u);
                goto LABEL_14;
              }
            }

            v15 = [(DeviceRecoveryService *)self shouldDownloadBrain];
            v16 = sub_1000118BC();
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (v15)
            {
              if (v17)
              {
                *buf = 136446210;
                *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Will attempt to download external brain", buf, 0xCu);
              }

              v18 = [(DeviceRecoveryService *)self downloadRecoveryBrain];
              v19 = sub_1000118BC();
              v16 = v19;
              if (v18)
              {
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446210;
                  *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Attempting to personalize and graft downloaded DeviceRecoveryBrain", buf, 0xCu);
                }

                v20 = [(DeviceRecoveryService *)self personalizeAndGraftRecoveryBrain];
                v21 = sub_1000118BC();
                v16 = v21;
                if (v20)
                {
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Successfully grafted downloaded DeviceRecoveryBrain", buf, 0xCu);
                  }

                  [(DeviceRecoveryService *)self setDownloadedBrainIsAvailable:1];
                  goto LABEL_33;
                }

                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  sub_10001CEE8();
                }
              }

              else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_10001CE68();
              }
            }

            else if (v17)
            {
              *buf = 136446210;
              *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Will use builtin recovery brain", buf, 0xCu);
            }

LABEL_33:
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_10000A5FC;
            v22[3] = &unk_100034E20;
            v23 = v7;
            [(DeviceRecoveryService *)self configureBrain:v22];
            v14 = v23;
            goto LABEL_34;
          }

          sub_10001CD54();
        }
      }

      else
      {
        sub_10001CC38();
      }
    }

    else
    {
      sub_10001CB1C();
    }
  }

  else
  {
    sub_10001CA00();
  }

  v13 = v26;
  v14 = *buf;
LABEL_14:

  if (v14)
  {
    (v7[2])(v7, v14, 0);
LABEL_34:
  }
}

- (BOOL)shouldDownloadBrain
{
  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    v3 = [(DeviceRecoveryService *)self overrideService];
    v4 = [v3 brainBundlePath];

    if (v4)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = [(DeviceRecoveryService *)self overrideService];
      v5 = [v6 brainType] != 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return ![(DeviceRecoveryService *)self testModeEnabled]&& v5;
}

- (id)mergeResults:(id)a3 withResults:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 mutableCopy];
      [v8 addEntriesFromDictionary:v7];
      v9 = +[NSMutableArray array];
      v10 = [v5 objectForKeyedSubscript:@"RepairableIssues"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001D1C0(v7);
          v11 = v8;
          v8 = v7;
          goto LABEL_10;
        }

        [v9 addObjectsFromArray:v10];
      }

      v11 = [v7 objectForKeyedSubscript:@"RepairableIssues"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001D2A4();
          v8 = v5;
          goto LABEL_10;
        }

        [v9 addObjectsFromArray:v11];
      }

      [v8 setObject:v9 forKeyedSubscript:@"RepairableIssues"];
LABEL_10:

      goto LABEL_14;
    }

    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12;
LABEL_14:

  return v8;
}

- (void)scanForIssues:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000ABB4;
  v23[3] = &unk_100034DD0;
  v23[4] = self;
  v6 = v4;
  v24 = v6;
  v7 = objc_retainBlock(v23);
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService scanForIssues:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001DC38();
    v15 = 0;
    goto LABEL_19;
  }

  if ([(DeviceRecoveryService *)self userAuthenticated])
  {
    if ([(DeviceRecoveryService *)self dataVolumeMounted])
    {
      if ([(DeviceRecoveryService *)self networkAvailable])
      {
        if ([(DeviceRecoveryService *)self recoveryBrainLoaded])
        {
          v9 = [(DeviceRecoveryService *)self brainConnection];

          if (v9)
          {
            if ([(DeviceRecoveryService *)self issuesScanComplete])
            {
              sub_10001DA10();
            }

            else
            {
              v10 = [(DeviceRecoveryService *)self controlClientConnection];

              if (!v10)
              {
                [(DeviceRecoveryService *)self setControlClientConnection:v5];
              }

              v11 = [(DeviceRecoveryService *)self controlClientConnection];

              if (v11 == v5)
              {
                v12 = [(DeviceRecoveryService *)self brainConnection];
                v21[0] = _NSConcreteStackBlock;
                v21[1] = 3221225472;
                v21[2] = sub_10000AF58;
                v21[3] = &unk_100034C20;
                v13 = v7;
                v22 = v13;
                v14 = [v12 remoteObjectProxyWithErrorHandler:v21];

                if (v14)
                {
                  v17[0] = _NSConcreteStackBlock;
                  v17[1] = 3221225472;
                  v17[2] = sub_10000B040;
                  v17[3] = &unk_100034E98;
                  v20 = v13;
                  v18 = v14;
                  v19 = self;
                  [(DeviceRecoveryService *)self configureBrain:v17];

                  v15 = 0;
                  v16 = v20;
                }

                else
                {
                  sub_10001D8FC();
                  v16 = v25;
                  v15 = *buf;
                }

                goto LABEL_16;
              }

              sub_10001D7E8();
            }
          }

          else
          {
            sub_10001DB24();
          }
        }

        else
        {
          sub_10001D6CC();
        }
      }

      else
      {
        sub_10001D5B0();
      }
    }

    else
    {
      sub_10001D494();
    }
  }

  else
  {
    sub_10001D378();
  }

  v14 = v25;
  v15 = *buf;
LABEL_16:

  if (v7 && v15)
  {
    (v7[2])(v7, v15, 0);
  }

LABEL_19:
}

- (id)processRecoveryResults:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_1000118BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446466;
      v17 = "[DeviceRecoveryService processRecoveryResults:]";
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: results = %{public}@", &v16, 0x16u);
    }

    v5 = [v3 objectForKeyedSubscript:@"OSBootRecoveryPhaseRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 BOOLValue];
    }

    else
    {
      v8 = sub_1000118BC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10001DF6C();
      }

      v6 = 0;
    }

    v9 = [v3 objectForKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v11 = sub_1000118BC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10001DF6C();
      }

      v10 = 0;
    }

    v12 = +[NSMutableDictionary dictionary];
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PostRecoveryEvent"];
    if (v6)
    {
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"OSBootRecoveryPhaseRequired"];
    }

    if (v10)
    {
      [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];
    }

    v13 = [v3 objectForKeyedSubscript:@"OSRecoveryState"];

    if (v13)
    {
      v14 = [v3 objectForKeyedSubscript:@"OSRecoveryState"];
      [v12 setObject:v14 forKeyedSubscript:@"OSRecoveryState"];
    }

    [v12 writeToFile:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist" atomically:1];
    v7 = [v3 mutableCopy];

    if (v7)
    {
      [v7 removeObjectForKey:@"OSBootRecoveryPhaseRequired"];
      [v7 removeObjectForKey:@"PostUnlockRecoveryPhaseRequired"];
      [v7 removeObjectForKey:@"OSRecoveryState"];
    }

    else
    {
      sub_10001E000(v3);
      v7 = v3;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)recoverDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000BA28;
  v23[3] = &unk_100034DD0;
  v23[4] = self;
  v6 = v4;
  v24 = v6;
  v7 = objc_retainBlock(v23);
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService recoverDevice:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001EBDC();
    v15 = *buf;
    goto LABEL_20;
  }

  if (![(DeviceRecoveryService *)self userAuthenticated])
  {
    sub_10001E0E4();
LABEL_32:
    v14 = v25;
    v15 = *buf;
    goto LABEL_18;
  }

  if (![(DeviceRecoveryService *)self dataVolumeMounted])
  {
    sub_10001E200();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self networkAvailable])
  {
    sub_10001E31C();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self recoveryBrainLoaded])
  {
    sub_10001E438();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self issuesScanComplete])
  {
    sub_10001E554();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self repairableIssuesFound])
  {
    sub_10001E670();
    goto LABEL_32;
  }

  v9 = [(DeviceRecoveryService *)self brainConnection];

  if (!v9)
  {
    sub_10001EAC8();
    goto LABEL_32;
  }

  if ([(DeviceRecoveryService *)self recoveryComplete])
  {
    sub_10001E9B4();
    goto LABEL_32;
  }

  v10 = [(DeviceRecoveryService *)self controlClientConnection];

  if (!v10)
  {
    [(DeviceRecoveryService *)self setControlClientConnection:v5];
  }

  v11 = [(DeviceRecoveryService *)self controlClientConnection];

  if (v11 != v5)
  {
    sub_10001E78C();
    goto LABEL_32;
  }

  v12 = [(DeviceRecoveryService *)self brainConnection];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000BC2C;
  v21[3] = &unk_100034C20;
  v13 = v7;
  v22 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v21];

  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000BD14;
    v17[3] = &unk_100034E98;
    v20 = v13;
    v18 = v14;
    v19 = self;
    [(DeviceRecoveryService *)self configureBrain:v17];

    v15 = 0;
    v16 = v20;
  }

  else
  {
    sub_10001E8A0();
    v16 = v25;
    v15 = *buf;
  }

LABEL_18:
  if (v15)
  {
    (v7[2])(v7, v15, 0);
LABEL_20:
  }
}

- (void)recoverDeviceFromBootedOS:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C06C;
  v5[3] = &unk_100034C20;
  v6 = a3;
  v4 = v6;
  [(DeviceRecoveryService *)self processOSRecoveryPhaseStateFile:v5];
}

- (void)loadAccessibilitySettingsToDefaults:(id)a3
{
  v4 = a3;
  v5 = sub_1000118BC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[DeviceRecoveryService loadAccessibilitySettingsToDefaults:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Loading accessibility settings to defaults", &v9, 0xCu);
  }

  if ([(DeviceRecoveryService *)self _loadAccessibilitySettingsToDefaults])
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = [NSString stringWithFormat:@"Failed to load accessibility settings to defaults"];
  v6 = sub_100002034(@"DeviceRecoveryError", 4, v7, @"Failed to load accessibility settings to defaults", 0, "[DeviceRecoveryService loadAccessibilitySettingsToDefaults:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x8C2u);

  if (v4)
  {
LABEL_7:
    v8 = [(DeviceRecoveryService *)self attributeDict];
    v4[2](v4, v6, 0, v8);
  }

LABEL_8:
}

- (BOOL)_loadAccessibilitySettingsToDefaults
{
  v2 = sub_1000118BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to restore accessibility settings from stash", buf, 0xCu);
  }

  v3 = MSUCopyStashedAccessibilityPrefs();
  v4 = v3;
  if (!v3)
  {
    v5 = sub_1000118BC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: No stashed accessibility preferences found", buf, 0xCu);
    }

    v31 = 0;
    goto LABEL_50;
  }

  v5 = [v3 objectForKeyedSubscript:@"AccessibilityDomains"];
  if (!v5 || (v6 = &MASetPallasAudienceForType_ptr, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v32 = sub_1000118BC();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: No accessibility domains found in stashed preferences", buf, 0xCu);
    }

    v31 = 0;
    goto LABEL_46;
  }

  v7 = sub_1000118BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 count];
    v9 = [&off_100037AD8 count];
    *buf = 136446722;
    v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
    v52 = 2048;
    v53 = v8;
    v54 = 2048;
    v55 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu total stashed domains, will selectively restore from %lu known domains", buf, 0x20u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = [&off_100037AD8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (!v10)
  {
    v31 = 1;
    goto LABEL_55;
  }

  v11 = v10;
  v34 = 0;
  v12 = *v45;
  v38 = 1;
  v35 = *v45;
  v36 = v5;
  do
  {
    v13 = 0;
    v37 = v11;
    do
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(&off_100037AD8);
      }

      v14 = *(*(&v44 + 1) + 8 * v13);
      v15 = [v5 objectForKeyedSubscript:v14];
      if (v15)
      {
        v16 = v6[269];
        objc_opt_class();
        v39 = v15;
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = sub_1000118BC();
        v19 = v18;
        if ((isKindOfClass & 1) == 0)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
            v52 = 2112;
            v53 = v14;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: Invalid preferences format for domain: %@", buf, 0x16u);
          }

          v38 = 0;
          goto LABEL_32;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v39 count];
          *buf = 136446722;
          v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
          v52 = 2048;
          v53 = v20;
          v54 = 2112;
          v55 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Restoring %lu preferences for domain: %@", buf, 0x20u);
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = v39;
        v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v41;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v41 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v40 + 1) + 8 * i);
              v27 = [v21 objectForKeyedSubscript:v26];
              CFPreferencesSetValue(v26, v27, v14, @"mobile", kCFPreferencesAnyHost);
            }

            v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v23);
        }

        if (CFPreferencesSynchronize(v14, @"mobile", kCFPreferencesAnyHost))
        {
          v12 = v35;
          v5 = v36;
          v6 = &MASetPallasAudienceForType_ptr;
          v11 = v37;
LABEL_32:
          v15 = v39;
          goto LABEL_33;
        }

        v29 = sub_1000118BC();
        v12 = v35;
        v5 = v36;
        v6 = &MASetPallasAudienceForType_ptr;
        v11 = v37;
        v15 = v39;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
          v52 = 2112;
          v53 = v14;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s: Warning: Failed to synchronize preferences for domain: %@", buf, 0x16u);
        }

        v38 = 0;
        v34 = (v34 + 1);
      }

      else
      {
        v28 = sub_1000118BC();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
          v52 = 2112;
          v53 = v14;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: Domain %@ not found in stashed preferences, skipping", buf, 0x16u);
        }
      }

LABEL_33:

      v13 = v13 + 1;
    }

    while (v13 != v11);
    v30 = [&off_100037AD8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    v11 = v30;
  }

  while (v30);
  v31 = v38;
  if ((v38 & (v34 != 0)) == 1)
  {
    v32 = sub_1000118BC();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
      v52 = 2048;
      v53 = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully restored %lu accessibility domains from stash", buf, 0x16u);
    }

    v31 = 1;
    goto LABEL_46;
  }

  if (v34)
  {
    v32 = sub_1000118BC();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10001EF18();
    }

    goto LABEL_46;
  }

LABEL_55:
  v32 = sub_1000118BC();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v51 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: No known accessibility domains were found in stashed preferences", buf, 0xCu);
  }

LABEL_46:

LABEL_50:
  return v31 & 1;
}

- (BOOL)downloadRecoveryBrain
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v83 = 0;
  v84[0] = &v83;
  v84[1] = 0x3032000000;
  v84[2] = sub_100004D88;
  v84[3] = sub_100004D98;
  v85 = 0;
  v80 = 0;
  v81[0] = &v80;
  v81[1] = 0x3032000000;
  v81[2] = sub_100004D88;
  v81[3] = sub_100004D98;
  v82 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 3;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 3;
  v4 = dispatch_semaphore_create(0);
  v62 = dispatch_semaphore_create(0);
  [v2 setDiscretionary:0];
  [v2 setRequiresPowerPluggedIn:0];
  [v2 setAllowsCellularAccess:0];
  [v2 setAllowsCellularAccess:0];
  v5 = objc_opt_new();
  [v5 setSafeObject:@"true" forKey:@"RequestingMAAutoAsset"];
  [v5 setSafeObject:@"DeviceRecoveryBrain" forKey:@"AssetSpecifier"];
  v6 = +[SUCoreDevice sharedDevice];
  v7 = [v6 productVersion];
  [v5 setSafeObject:v7 forKey:@"OSVersion"];

  [v5 setSafeObject:&off_100037AF0 forKey:@"SupportedAssetFormats"];
  [v2 setAdditionalServerParams:v5];
  [v2 setPurpose:@"DeviceRecoveryDaemonBrainDownloadRequest"];
  [v3 setDiscretionary:0];
  [v3 setRequiresPowerPluggedIn:0];
  [v3 setAllowsCellularAccess:0];
  [v3 setAllowsExpensiveAccess:0];
  [v3 setPurpose:@"DeviceRecoveryDaemonBrainDownloadRequest"];
  v8 = MSUCopyEnvInfoForNeRD();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"BootedOSDREBrainAssetAudience"];
    v11 = [v9 objectForKeyedSubscript:@"BooteOSDREBrainAssetURL"];
    if (v10)
    {
      v12 = sub_1000118BC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
        v89 = 2112;
        v90 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Updating asset audience for DeviceRecoveryBrain asset to '%@'", buf, 0x16u);
      }

      MASetPallasAudienceForType();
    }

    else
    {
      v13 = sub_1000118BC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: No asset audience override found for DeviceRecoveryBrain. Using default asset audience for brain download", buf, 0xCu);
      }
    }

    if (v11)
    {
      v14 = sub_1000118BC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
        v89 = 2112;
        v90 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Updating URL for DeviceRecoveryBrain asset download to '%@'", buf, 0x16u);
      }

      MASetServerUrlOverride();
    }

    else
    {
      v15 = sub_1000118BC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: No URL override found for DeviceRecoveryBrain asset download. Using default", buf, 0xCu);
      }
    }

    if ([(DeviceRecoveryService *)self isInternalBuild])
    {
      v16 = [v9 objectForKeyedSubscript:@"BootedOSHasPallasDisabled"];
      v17 = v16;
      if (v16 && [v16 isEqualToString:@"YES"])
      {
        v18 = sub_1000118BC();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Disabling pallas due to override", buf, 0xCu);
        }

        MASetPallasEnabled();
      }

      else
      {
        v19 = sub_1000118BC();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Pallas is enabled", buf, 0xCu);
        }
      }
    }

    v20 = sub_100010688("IODeviceTree:/options", @"pallas-server-override");
    v21 = v20;
    if (!v20)
    {
      goto LABEL_42;
    }

    if ([v20 isEqualToString:@"internal"])
    {
      v22 = [NSURL URLWithString:@"https://gdmf-staging-int.apple.com/v2/assets"];
      v23 = sub_1000118BC();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
      v24 = "%{public}s: [DownloadRecoveryBrain]: Setting pallas URL to internal instance due to override";
    }

    else
    {
      if (![v21 isEqualToString:@"customer"])
      {
        v25 = sub_1000118BC();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10001EF9C();
        }

        v22 = 0;
        goto LABEL_41;
      }

      v22 = [NSURL URLWithString:@"https://gdmf.apple.com/v2/assets"];
      v23 = sub_1000118BC();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

        if (v22)
        {
          MASetPallasUrlForType();
        }

LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      *buf = 136446210;
      v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
      v24 = "%{public}s: [DownloadRecoveryBrain]: Setting pallas URL to customer instance due to override";
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
    goto LABEL_36;
  }

  v10 = sub_1000118BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: No data passed in from BootedOS. Using default asset audience/URL for brain download", buf, 0xCu);
  }

LABEL_43:

  v26 = sub_1000118BC();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
    v89 = 2114;
    v90 = v2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Starting catalog download for DeviceRecoveryBrain | Options:%{public}@", buf, 0x16u);
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10000D8B4;
  v68[3] = &unk_100034EC0;
  v70 = &v83;
  v71 = &v76;
  v27 = v4;
  v69 = v27;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.DeviceRecoveryBrain" options:v2 completionWithError:v68];
  v28 = dispatch_time(0, 300000000000);
  if (!dispatch_semaphore_wait(v27, v28))
  {
    if (v77[3] || *(v84[0] + 40))
    {
      v29 = sub_1000118BC();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v77[3];
        v31 = MAStringForMADownloadResult();
        sub_10001F09C(v31, v84);
      }

      goto LABEL_52;
    }

    v35 = sub_1000118BC();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrian]: Successfully obtained catalog for DeviceRecoveryBrain", buf, 0xCu);
    }

    v29 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.DeviceRecoveryBrain" andPurpose:@"DeviceRecoveryDaemonBrainDownloadRequest"];
    [v29 returnTypes:5];
    v36 = +[SUCoreDevice sharedDevice];
    v60 = [v36 productType];

    v37 = +[NSNull null];
    v86[0] = v37;
    v38 = v60;
    if (!v60)
    {
      v38 = +[NSNull null];
    }

    v86[1] = v38;
    v39 = [NSArray arrayWithObjects:v86 count:2];
    v59 = [v39 mutableCopy];
    v58 = v38;

    if (!v60)
    {
    }

    [v29 addKeyValueArray:@"SupportedDevices" with:v59];
    if ([v29 queryMetaDataSync])
    {
      v40 = sub_1000118BC();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = MAStringForMAQueryResult();
        sub_10001F0F8(v41, buf, v40);
      }

LABEL_63:
      v32 = 0;
LABEL_64:
      v33 = 0;
LABEL_65:

      goto LABEL_53;
    }

    v42 = [v29 results];
    v43 = [v42 count] == 0;

    if (v43)
    {
      v40 = sub_1000118BC();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10001F240();
      }

      goto LABEL_63;
    }

    v44 = [v29 results];
    v45 = [v44 count] > 1;

    if (v45)
    {
      v46 = sub_1000118BC();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: More than one DeviceRecoveryBrain asset returned from server. Picking first", buf, 0xCu);
      }
    }

    v47 = [v29 results];
    v40 = [v47 objectAtIndexedSubscript:0];

    [v40 refreshState];
    if ([v40 state]== 2)
    {
      v48 = sub_1000118BC();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Previous brain asset already installed", buf, 0xCu);
      }

      [(DeviceRecoveryService *)self setRecoveryBrainAsset:v40];
      v32 = 0;
      v33 = 1;
      goto LABEL_65;
    }

    [v40 attachProgressCallBack:&stru_100034F00];
    v49 = sub_1000118BC();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Starting download of DeviceRecoveryBrain asset", buf, 0xCu);
    }

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10000DA88;
    v64[3] = &unk_100034EC0;
    v66 = &v80;
    v67 = &v72;
    v50 = v62;
    v65 = v50;
    [v40 startDownload:v3 completionWithError:v64];
    v51 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v50, v51))
    {
      v52 = sub_1000118BC();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_10001F164();
      }
    }

    else
    {
      v53 = v73[3];
      if (v53 == 10 || !v53)
      {
        v54 = sub_1000118BC();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v40 getLocalFileUrl];
          *buf = 136446466;
          v88 = "[DeviceRecoveryService downloadRecoveryBrain]";
          v89 = 2114;
          v90 = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Successfully downloaded DeviceRecoveryBrain at path %{public}@", buf, 0x16u);
        }

        [(DeviceRecoveryService *)self setRecoveryBrainAsset:v40];
        v32 = 1;
        goto LABEL_88;
      }

      v52 = sub_1000118BC();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v56 = v73[3];
        v57 = MAStringForMADownloadResult();
        sub_10001F1E4(v57, v81);
      }
    }

    v32 = 0;
LABEL_88:

    goto LABEL_64;
  }

  v29 = sub_1000118BC();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10001F01C();
  }

LABEL_52:
  v32 = 0;
  v33 = 0;
LABEL_53:

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v83, 8);
  objc_sync_exit(obj);

  return v32 | v33;
}

- (BOOL)personalizeAndGraftRecoveryBrain
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = [(DeviceRecoveryService *)self recoveryBrainAsset];
  v5 = [v4 getLocalFileUrl];

  bzero(v25, 0x400uLL);
  [v5 getFileSystemRepresentation:v25 maxLength:1023];
  v6 = [NSString stringWithFormat:@"%s", v25];
  v7 = [v6 stringByDeletingLastPathComponent];

  v8 = objc_alloc_init(NSMutableDictionary);
  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    v9 = CFPreferencesCopyAppValue(@"SSOTokenFile", @"com.apple.DeviceRecoveryService");
    if (!v9)
    {
LABEL_13:

      goto LABEL_14;
    }

    v10 = sub_1000118BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v22 = "[DeviceRecoveryService personalizeAndGraftRecoveryBrain]";
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [PersonalizeAndGraftBrain]: Attempting to read SSO token from %{public}@", buf, 0x16u);
    }

    v11 = [NSDictionary dictionaryWithContentsOfFile:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"ssoToken"];
      v14 = v13 == 0;

      if (v14)
      {
        [v8 addEntriesFromDictionary:v12];
        goto LABEL_12;
      }

      v15 = [v12 objectForKeyedSubscript:@"ssoToken"];
      [v8 setObject:v15 forKeyedSubscript:@"SecureMobileAssetBundleOptionSSO"];
    }

    else
    {
      v15 = sub_1000118BC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10001F2C0();
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
  [v8 setObject:v7 forKeyedSubscript:@"SecureMobileAssetBundleOptionPath"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SecureMobileAssetDisableEarlyBootGraft"];
  v16 = _SecureMABundleCommand();
  if (v16)
  {
    v17 = sub_1000118BC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001F340();
    }

    v18 = 0;
  }

  else
  {
    v17 = _SecureMABundleCommand();
    v18 = v17 == 0;
    if (v17)
    {
      v19 = sub_1000118BC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10001F3C0();
      }
    }

    else
    {
      v19 = sub_1000118BC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v22 = "[DeviceRecoveryService personalizeAndGraftRecoveryBrain]";
        v23 = 2114;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: [PersonalizeAndGraftBrain]: Successfully grafted DeviceRecoveryBrain from path %{public}@", buf, 0x16u);
      }
    }
  }

  objc_sync_exit(v3);
  return v18;
}

- (void)generateAndSubmitRecoveryLog:(id)a3 withDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000118BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v32 = 136446978;
    *&v32[4] = "[DeviceRecoveryService generateAndSubmitRecoveryLog:withDescription:]";
    *&v32[12] = 2114;
    *&v32[14] = v6;
    *&v32[22] = 2114;
    v33 = v7;
    LOWORD(v34) = 1026;
    *(&v34 + 2) = [(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission];
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: failedOperation: %{public}@ - description: %{public}@ - diagnosticsSubmissionApproved: %{public}d", v32, 0x26u);
  }

  if ([(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission])
  {
    *v32 = 0;
    *&v32[8] = v32;
    *&v32[16] = 0x3032000000;
    v33 = sub_100004D88;
    v34 = sub_100004D98;
    v35 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_100004D88;
    v26 = sub_100004D98;
    v27 = 0;
    v9 = +[OSLogEventStore localStore];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000E374;
    v21[3] = &unk_100034F28;
    v21[4] = &v22;
    v21[5] = v32;
    [v9 prepareWithCompletionHandler:v21];
    if (*(*&v32[8] + 40))
    {
      v10 = sub_1000118BC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(*&v32[8] + 40) description];
        *buf = 136446466;
        *&buf[4] = "[DeviceRecoveryService generateAndSubmitRecoveryLog:withDescription:]";
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Error creating event source %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = [OSLogEventStream alloc];
      v10 = [v12 initWithSource:v23[5]];
      v13 = [NSPredicate predicateWithFormat:@"subsystem contains %@ OR process contains %@ OR process contains %@ OR process contains %@", @"com.apple.DeviceRecovery", @"devicerecoveryd", @"DeviceRecovery", @"Device Recovery Assistant"];
      [v10 setFilterPredicate:v13];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = sub_100004D88;
      v30 = sub_100004D98;
      v31 = objc_opt_new();
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000E3F8;
      v20[3] = &unk_100034F50;
      v20[4] = buf;
      [v10 setEventHandler:v20];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000E550;
      v14[3] = &unk_100034FA0;
      v18 = buf;
      v15 = v6;
      v19 = v32;
      v16 = v7;
      v17 = self;
      [v10 setInvalidationHandler:v14];
      dispatch_group_enter(self->_logWaitGroup);
      [v10 activateStreamFromLastBoot];

      _Block_object_dispose(buf, 8);
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v32, 8);
  }
}

- (NSXPCConnection)controlClientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_controlClientConnection);

  return WeakRetained;
}

@end