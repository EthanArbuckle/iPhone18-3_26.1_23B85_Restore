@interface DeviceRecoveryBrain
- (BOOL)ERMContentsPresent;
- (BOOL)client:(id)a3 hasBooleanEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCConnection)xpcConnection;
- (id)initExternalBrain:(BOOL)a3;
- (id)modifyTestFile:(id)a3 contents:(id)a4;
- (id)recoverTestFiles;
- (id)removeERMContents;
- (id)scanForERMContents;
- (id)scanForTestFiles;
- (id)startService:(id)a3;
- (uint64_t)removeERMContents;
- (void)ERMContentsPresent;
- (void)checkFreeSpace:(id)a3;
- (void)connectionInvalidated;
- (void)reclaimFreeSpace:(id)a3;
- (void)recoverDevice:(id)a3;
- (void)recoverDeviceFromBootedOS:(id)a3 userUnlocked:(BOOL)a4 completion:(id)a5;
- (void)resetRecovery:(id)a3;
- (void)scanForIssues:(id)a3;
- (void)scanForTestFiles;
@end

@implementation DeviceRecoveryBrain

- (id)initExternalBrain:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DeviceRecoveryBrain;
  v4 = [(DeviceRecoveryBrain *)&v6 init];
  if (v4)
  {
    [(DeviceRecoveryBrain *)v4 setIsInternalBuild:os_variant_allows_internal_security_policies()];
    v4->_isExternalBrain = a3;
  }

  else
  {
    [DeviceRecoveryBrain initExternalBrain:];
  }

  return v4;
}

- (id)startService:(id)a3
{
  v4 = a3;
  v5 = DRGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryBrain startService:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: startService", buf, 0xCu);
  }

  v6 = DRGetLogHandle();
  v7 = v6;
  if (!v4)
  {
    [(DeviceRecoveryBrain *)v6 startService:buf];
LABEL_14:
    v9 = v15;
    v13 = *buf;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryBrain startService:]";
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to initialize listener for service %{public}@", buf, 0x16u);
  }

  v8 = [[NSXPCListener alloc] initWithMachServiceName:v4];
  if (!v8)
  {
    [DeviceRecoveryBrain startService:];
    goto LABEL_14;
  }

  v9 = v8;
  v10 = dispatch_workloop_create("com.apple.DeviceRecoveryBrain.MessageQueue");
  messageQueue = self->_messageQueue;
  self->_messageQueue = v10;

  if (self->_messageQueue)
  {
    [v9 _setQueue:?];
    [v9 setDelegate:self];
    freeSpaceThreshold = self->_freeSpaceThreshold;
    self->_freeSpaceThreshold = &off_33A48;

    [v9 resume];
    v13 = 0;
  }

  else
  {
    [DeviceRecoveryBrain startService:buf];
    v13 = *buf;
  }

LABEL_9:

  return v13;
}

- (void)connectionInvalidated
{
  v3 = [(DeviceRecoveryBrain *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__DeviceRecoveryBrain_connectionInvalidated__block_invoke;
  block[3] = &unk_2C1A8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)client:(id)a3 hasBooleanEntitlement:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    [DeviceRecoveryBrain client:hasBooleanEntitlement:];
LABEL_20:
    v12 = v17;
    v8 = *buf;
LABEL_21:

    v9 = 0;
    goto LABEL_7;
  }

  if (!v5)
  {
    [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    goto LABEL_20;
  }

  v7 = [v5 valueForEntitlement:v6];
  if (!v7)
  {
    v11 = DRGetLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    }

    v12 = DRGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain client:v5 hasBooleanEntitlement:?];
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = DRGetLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    }

    v12 = DRGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v5 processIdentifier];
      v14 = _ProcessNameForPid();
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 136446978;
      *&buf[4] = "[DeviceRecoveryBrain client:hasBooleanEntitlement:]";
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}s: entitlement '%{public}@' on client '%{public}@' is not an NSNumber: %{public}@", buf, 0x2Au);
    }

    goto LABEL_21;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    goto LABEL_20;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [DeviceRecoveryBrain listener:shouldAcceptNewConnection:];
LABEL_25:
    v9 = *buf;
    v18 = v26;
    goto LABEL_22;
  }

  v8 = [(DeviceRecoveryBrain *)self xpcConnection];

  if (v8)
  {
    [DeviceRecoveryBrain listener:shouldAcceptNewConnection:];
    goto LABEL_25;
  }

  [v7 processIdentifier];
  v9 = _ProcessNameForPid();
  v10 = DRGetLogHandle();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v11 = qos_class_self();
  if (v11 > 20)
  {
    switch(v11)
    {
      case 0x15:
        v12 = @"DEFAULT";
        goto LABEL_18;
      case 0x21:
        v12 = @"USER_INTERACTIVE";
        goto LABEL_18;
      case 0x19:
        v12 = @"USER_INITIATED";
        goto LABEL_18;
    }

LABEL_15:
    v12 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v11];
    goto LABEL_18;
  }

  if (!v11)
  {
    v12 = @"UNSPECIFIED";
    goto LABEL_18;
  }

  if (v11 == 9)
  {
    v12 = @"BACKGROUND";
    goto LABEL_18;
  }

  if (v11 != 17)
  {
    goto LABEL_15;
  }

  v12 = @"UTILITY";
LABEL_18:
  *buf = 136446722;
  *&buf[4] = "[DeviceRecoveryBrain listener:shouldAcceptNewConnection:]";
  v28 = 2112;
  v29 = v9;
  v30 = 2112;
  v31 = v12;
  _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %@ at qos %@", buf, 0x20u);

LABEL_19:
  if (![(DeviceRecoveryBrain *)self clientHasRecoveryBrainControllerEntitlement:v7])
  {
    [DeviceRecoveryBrain listener:shouldAcceptNewConnection:];
LABEL_28:
    v18 = 0;
    goto LABEL_22;
  }

  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryBrainServiceInterface];
  [v7 setExportedInterface:v13];

  v14 = [v7 exportedInterface];

  if (!v14)
  {
    [DeviceRecoveryBrain listener:shouldAcceptNewConnection:];
    goto LABEL_28;
  }

  [v7 setExportedObject:self];
  v15 = [(DeviceRecoveryBrain *)self messageQueue];
  [v7 _setQueue:v15];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke;
  v23[3] = &unk_2C4C0;
  v16 = v9;
  v24 = v16;
  v25 = self;
  [v7 setInterruptionHandler:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke_48;
  v20[3] = &unk_2C4C0;
  v21 = v16;
  v22 = self;
  v9 = v16;
  [v7 setInvalidationHandler:v20];
  [(DeviceRecoveryBrain *)self setXpcConnection:v7];
  v17 = os_transaction_create();
  [(DeviceRecoveryBrain *)self setKeepAliveTransaction:v17];

  [v7 resume];
  v18 = 1;
LABEL_22:

  return v18;
}

id __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136446466;
    v6 = "[DeviceRecoveryBrain listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%{public}@]", &v5, 0x16u);
  }

  return [*(a1 + 40) connectionInterrupted];
}

id __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke_48(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136446466;
    v6 = "[DeviceRecoveryBrain listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%{public}@]", &v5, 0x16u);
  }

  [*(a1 + 40) connectionInvalidated];
  return [*(a1 + 40) setXpcConnection:0];
}

- (void)resetRecovery:(id)a3
{
  v3 = a3;
  v4 = DRGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DeviceRecoveryBrain resetRecovery:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ", &v5, 0xCu);
  }

  (*(v3 + 2))(v3, 0, 0);
}

- (void)checkFreeSpace:(id)a3
{
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v5 = DRGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v44 = "[DeviceRecoveryBrain checkFreeSpace:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v4)
  {
    v6 = DRGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain checkFreeSpace:];
    }

    goto LABEL_8;
  }

  if ([(DeviceRecoveryBrain *)self isInternalBuild]&& [(DeviceRecoveryBrain *)self issuesScanResultOverride]== 2)
  {
    v6 = DRGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v44 = "[DeviceRecoveryBrain checkFreeSpace:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Issues scan / free space forced to return no results", buf, 0xCu);
    }

LABEL_8:
    v7 = 0;
    v8 = 0;
LABEL_24:

    v4[2](v4, v7, v33[5]);
    goto LABEL_25;
  }

  if (![(DeviceRecoveryBrain *)self testModeEnabled])
  {
    v12 = DRGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v44 = "[DeviceRecoveryBrain checkFreeSpace:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Determining free space on device for user", buf, 0xCu);
    }

    v13 = [DeviceRecoveryBrainSpaceManager alloc];
    v14 = [(DeviceRecoveryBrain *)self systemDataVolumeMountPath];
    v15 = [(DeviceRecoveryBrain *)self userDataVolumeMountPath];
    v16 = [(DeviceRecoveryBrain *)self updateVolumeMountPath];
    v6 = [(DeviceRecoveryBrainSpaceManager *)v13 initWithMounts:v14 userDataVolumeMountPath:v15 updateVolumeMountPath:v16];

    v31 = 0;
    v17 = [v6 getFreeSpaceOnDeviceForUser:&v31];
    v8 = v31;
    if (v8)
    {
      v27 = DRGetLogHandle();
      [DeviceRecoveryBrain checkFreeSpace:v27];

      v20 = [NSString stringWithFormat:@"Unable to determine free space on device"];
      v7 = DRCreateError(@"DeviceRecoveryError", 18, v20, @"Unable to determine free space on device", v8, "[DeviceRecoveryBrain checkFreeSpace:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x179u);
    }

    else
    {
      v18 = [v17 unsignedLongLongValue];
      v19 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
      LODWORD(v18) = v18 > [v19 unsignedLongLongValue];

      if (v18)
      {
        v20 = DRGetLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
          *buf = 136446722;
          v44 = "[DeviceRecoveryBrain checkFreeSpace:]";
          v45 = 2114;
          v46 = v17;
          v47 = 2114;
          v48 = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on device(%{public}@) is greater than threshold(%{public}@). Sufficient space present", buf, 0x20u);
        }
      }

      else
      {
        v22 = DRGetLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
          *buf = 136446722;
          v44 = "[DeviceRecoveryBrain checkFreeSpace:]";
          v45 = 2114;
          v46 = v17;
          v47 = 2114;
          v48 = v23;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on device(%{public}@) is less than threshold(%{public}@). Space cleanup required", buf, 0x20u);
        }

        v41 = @"RepairableIssues";
        v38 = @"RepairableIssueDescription";
        v39 = @"Disk space too low and needs to be reclaimed";
        v20 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v40 = v20;
        v24 = [NSArray arrayWithObjects:&v40 count:1];
        v42 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v26 = v33[5];
        v33[5] = v25;
      }

      v7 = 0;
    }

    goto LABEL_24;
  }

  v9 = DRGetLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v44 = "[DeviceRecoveryBrain checkFreeSpace:]";
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating free space check", buf, 0xCu);
  }

  v10 = dispatch_time(0, 1000000000);
  v11 = [(DeviceRecoveryBrain *)self messageQueue];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __38__DeviceRecoveryBrain_checkFreeSpace___block_invoke;
  v28[3] = &unk_2C4E8;
  v30 = &v32;
  v29 = v4;
  dispatch_after(v10, v11, v28);

  v7 = 0;
  v8 = 0;
LABEL_25:
  _Block_object_dispose(&v32, 8);
}

uint64_t __38__DeviceRecoveryBrain_checkFreeSpace___block_invoke(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[DeviceRecoveryBrain checkFreeSpace:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated free space check complete", buf, 0xCu);
  }

  v13 = @"RepairableIssues";
  v10 = @"RepairableIssueDescription";
  v11 = @"Found simulated free space to reclaim";
  v3 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12 = v3;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);
  return (*(*(a1 + 32) + 16))();
}

- (BOOL)ERMContentsPresent
{
  v9 = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/private/preboot/supplemental/" isDirectory:&v9];

  if ((v9 & 1) == 0)
  {
    v4 = DRGetLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain ERMContentsPresent];
    }

    v3 = 0;
  }

  v9 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:@"/private/var/mnt/erm" isDirectory:&v9];

  if ((v9 & 1) == 0)
  {
    v7 = DRGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain ERMContentsPresent];
    }

    v6 = 0;
  }

  return (v3 | v6) & 1;
}

- (id)scanForERMContents
{
  if ([(DeviceRecoveryBrain *)self ERMContentsPresent])
  {
    v2 = DRGetLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = "[DeviceRecoveryBrain scanForERMContents]";
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Found ERM content to remove", buf, 0xCu);
    }

    v7 = @"RepairableIssueDescription";
    v3 = [NSString stringWithFormat:@"Found Extended Research content to remove"];
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v9 = v4;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removeERMContents
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/private/preboot/supplemental/"];

  if (!v3 || ((+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), v16 = 0, v5 = [v4 removeItemAtPath:@"/private/preboot/supplemental/" error:&v16], v6 = v16, v4, v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:@"/private/var/mnt/erm"];

    if (!v9 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), v15 = 0, v11 = [v10 removeItemAtPath:@"/private/var/mnt/erm" error:&v15], v6 = v15, v10, v11) && !v6)
    {
      v12 = 0;
      goto LABEL_11;
    }

    [(DeviceRecoveryBrain *)v6 removeERMContents];
  }

  else
  {
    [(DeviceRecoveryBrain *)v6 removeERMContents];
  }

  v14 = v17;
  v12 = v18;

LABEL_11:

  return v12;
}

- (id)scanForTestFiles
{
  v2 = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v3 = [v2 stringByAppendingPathComponent:@".TestDeviceRecovery-remove"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = DRGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v38 = "[DeviceRecoveryBrain scanForTestFiles]";
      v39 = 2114;
      v40 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Found test recovery file to remove: %{public}@", buf, 0x16u);
    }

    v7 = [NSMutableArray arrayWithCapacity:1];
    if (!v7)
    {
      [DeviceRecoveryBrain scanForTestFiles];
      v11 = 0;
      goto LABEL_28;
    }

    v50 = @"RepairableIssueDescription";
    v8 = [NSString stringWithFormat:@"Found test recovery file to remove: %@", v3];
    v51 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    [v7 addObject:v9];
  }

  else
  {
    v7 = 0;
  }

  v10 = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v11 = [(DeviceRecoveryBrain *)self filesInDirectory:v10 withPrefix:@".TestDeviceRecovery-modify" extension:@".plist" excludeSymlinks:1];

  if (v11 && [v11 count])
  {
    v28 = v3;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v31 objects:v49 count:16];
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12;
    v14 = *v32;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        v17 = [(DeviceRecoveryBrain *)self userHomeDirectory];
        v18 = [v17 stringByAppendingPathComponent:v16];

        v19 = [NSDictionary dictionaryWithContentsOfFile:v18];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 objectForKeyedSubscript:@"RemoveThisProperty"];

          if (!v21)
          {
            goto LABEL_22;
          }

          v22 = DRGetLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v38 = "[DeviceRecoveryBrain scanForTestFiles]";
            v39 = 2114;
            v40 = @"RemoveThisProperty";
            v41 = 2114;
            v42 = v18;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Found property to remove '%{public}@' in test file: %{public}@", buf, 0x20u);
          }

          if (!v7)
          {
            v7 = [NSMutableArray arrayWithCapacity:1];
            if (!v7)
            {
              [DeviceRecoveryBrain scanForTestFiles];
              goto LABEL_27;
            }
          }

          v35 = @"RepairableIssueDescription";
          v23 = [NSString stringWithFormat:@"Found test recovery file to modify: %@", v18];
          v36 = v23;
          v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          [v7 addObject:v24];
        }

        else
        {
          v23 = DRGetLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447490;
            v38 = "[DeviceRecoveryBrain scanForTestFiles]";
            v39 = 2082;
            v40 = "[DeviceRecoveryBrain scanForTestFiles]";
            v41 = 2082;
            v42 = "propertyList != nil";
            v43 = 2082;
            v44 = "";
            v45 = 2082;
            v46 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
            v47 = 1026;
            v48 = 542;
            _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
          }
        }

LABEL_22:
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v49 count:16];
      v13 = v25;
      if (!v25)
      {
LABEL_27:
        v11 = obj;

        v3 = v28;
        break;
      }
    }
  }

LABEL_28:
  v26 = v7;

  return v7;
}

- (id)modifyTestFile:(id)a3 contents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"RemoveThisProperty"];

    if (v8)
    {
      v9 = DRGetLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 objectForKeyedSubscript:@"RemoveThisProperty"];
        *v15 = 136446978;
        *&v15[4] = "[DeviceRecoveryBrain modifyTestFile:contents:]";
        v16 = 2114;
        v17 = @"RemoveThisProperty";
        v18 = 2114;
        v19 = v10;
        v20 = 2114;
        v21 = v5;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing property from test file ('%{public}@' = '%{public}@'): %{public}@", v15, 0x2Au);
      }

      [v7 removeObjectForKey:@"RemoveThisProperty"];
    }

    v11 = [v7 objectForKeyedSubscript:@"AddedProperty"];

    if (!v11)
    {
      v12 = DRGetLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136446978;
        *&v15[4] = "[DeviceRecoveryBrain modifyTestFile:contents:]";
        v16 = 2114;
        v17 = @"AddedProperty";
        v18 = 2114;
        v19 = @"Added by recovery brain!";
        v20 = 2114;
        v21 = v5;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Adding property to test file ('%{public}@' = '%{public}@'): %{public}@", v15, 0x2Au);
      }

      [v7 setObject:@"Added by recovery brain!" forKeyedSubscript:@"AddedProperty"];
    }

    v13 = 0;
  }

  else
  {
    [DeviceRecoveryBrain modifyTestFile:v15 contents:?];
    v13 = *v15;
  }

  return v13;
}

- (id)recoverTestFiles
{
  v3 = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v4 = [v3 stringByAppendingPathComponent:@".TestDeviceRecovery-remove"];

  v5 = OBJC_CLASS___DeviceRecoveryBrainSpaceManager_ptr;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v4];

  if (v7)
  {
    v8 = DRGetLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting test recovery file: %{public}@", buf, 0x16u);
    }

    v9 = +[NSFileManager defaultManager];
    v65 = 0;
    v10 = [v9 removeItemAtPath:v4 error:&v65];
    v11 = v65;

    if (!v10 || v11)
    {
      [(DeviceRecoveryBrain *)v4 recoverTestFiles:v11];
      v18 = 0;
      v41 = *buf;
      goto LABEL_44;
    }
  }

  v17 = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v18 = [(DeviceRecoveryBrain *)self filesInDirectory:v17 withPrefix:@".TestDeviceRecovery-modify" extension:@".plist" excludeSymlinks:1];

  if (!v18 || ![v18 count])
  {
    v41 = 0;
    goto LABEL_44;
  }

  *v62 = 0u;
  v63 = 0u;
  *v60 = 0u;
  v61 = 0u;
  v18 = v18;
  v19 = [v18 countByEnumeratingWithState:v60 objects:v75 count:16];
  if (!v19)
  {
    v41 = 0;
    goto LABEL_43;
  }

  v20 = v19;
  v53 = v4;
  obja = v18;
  v57 = *v61;
LABEL_10:
  v21 = 0;
  while (1)
  {
    if (*v61 != v57)
    {
      objc_enumerationMutation(obja);
    }

    v22 = *(*&v60[2] + 8 * v21);
    v23 = [(DeviceRecoveryBrain *)self userHomeDirectory];
    v24 = [v23 stringByAppendingPathComponent:v22];

    v25 = [NSMutableDictionary dictionaryWithContentsOfFile:v24];
    if (!v25)
    {
      [(DeviceRecoveryBrain *)v24 recoverTestFiles:buf];
      v41 = *buf;
LABEL_29:
      v4 = v53;
      v18 = obja;
      goto LABEL_43;
    }

    v31 = v25;
    v32 = [(__objc2_class *)v5[25] defaultManager];
    v59 = 0;
    v33 = [v32 attributesOfItemAtPath:v24 error:&v59];
    v34 = v59;

    if (!v33 || v34 != 0)
    {
      break;
    }

    v36 = [(DeviceRecoveryBrain *)self modifyTestFile:v24 contents:v31];
    if (v36)
    {
      v41 = v36;
      v44 = DRGetLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
        *&buf[12] = 2082;
        *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
        v67 = 2082;
        v68 = "error == nil";
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
        v73 = 1026;
        v74 = 621;
        _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
      }

      goto LABEL_41;
    }

    if (([v31 writeToFile:v24 atomically:1] & 1) == 0)
    {
      v45 = DRGetLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
        *&buf[12] = 2082;
        *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
        v67 = 2082;
        v68 = "success";
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
        v73 = 1026;
        v74 = 624;
        _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
      }

      v44 = [NSString stringWithFormat:@"failed to write modified test file: %@", v24];
      v41 = DRCreateError(@"DeviceRecoveryError", 4, v44, @"failed to write modified test file: %@", 0, "[DeviceRecoveryBrain recoverTestFiles]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x270u);
      goto LABEL_41;
    }

    v37 = v5;
    v38 = [(__objc2_class *)v5[25] defaultManager];
    v58 = 0;
    v39 = [v38 setAttributes:v33 ofItemAtPath:v24 error:&v58];
    v40 = v58;

    if (!v39 || v40)
    {
      v46 = DRGetLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
        *&buf[12] = 2082;
        *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
        v67 = 2082;
        v68 = "success && (error == nil)";
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
        v73 = 1026;
        v74 = 627;
        _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
      }

      v44 = [NSString stringWithFormat:@"failed to set attributes on modified test file: %@", v24];
      v41 = DRCreateError(@"DeviceRecoveryError", 4, v44, @"failed to set attributes on modified test file: %@", v40, "[DeviceRecoveryBrain recoverTestFiles]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x273u);

LABEL_41:
      v4 = v53;
      v18 = obja;
      goto LABEL_42;
    }

    v21 = v21 + 1;
    v5 = v37;
    if (v20 == v21)
    {
      v20 = [obja countByEnumeratingWithState:v60 objects:v75 count:16];
      if (v20)
      {
        goto LABEL_10;
      }

      v41 = 0;
      goto LABEL_29;
    }
  }

  v42 = DRGetLogHandle();
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
  v4 = v53;
  v18 = obja;
  if (v43)
  {
    *buf = 136447490;
    *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
    *&buf[12] = 2082;
    *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
    v67 = 2082;
    v68 = "(recoveryFileAttributes != nil) && (error == nil)";
    v69 = 2082;
    v70 = "";
    v71 = 2082;
    v72 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
    v73 = 1026;
    v74 = 618;
    _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
  }

  v44 = [NSString stringWithFormat:@"unable to get attributes for existing file to modify: %@", v24];
  v41 = DRCreateError(@"DeviceRecoveryError", 4, v44, @"unable to get attributes for existing file to modify: %@", v34, "[DeviceRecoveryBrain recoverTestFiles]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x26Au);

LABEL_42:
LABEL_43:

LABEL_44:
  v47 = v41;

  return v41;
}

- (void)scanForIssues:(id)a3
{
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __37__DeviceRecoveryBrain_scanForIssues___block_invoke;
  v25[3] = &unk_2C510;
  v4 = a3;
  v26 = v4;
  v5 = objc_retainBlock(v25);
  v6 = DRGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v28 = "[DeviceRecoveryBrain scanForIssues:]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v4)
  {
    [DeviceRecoveryBrain scanForIssues:];
LABEL_11:
    v9 = 0;
LABEL_37:
    v10 = 0;
    goto LABEL_38;
  }

  if ([(DeviceRecoveryBrain *)self isInternalBuild])
  {
    v7 = [(DeviceRecoveryBrain *)self issuesScanResultOverride];
    switch(v7)
    {
      case 1u:
        v21 = [NSString stringWithFormat:@"issues scan operation forced to fail"];
        v9 = DRCreateError(@"DeviceRecoveryError", 4, v21, @"issues scan operation forced to fail", 0, "[DeviceRecoveryBrain scanForIssues:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x2A1u);

        if (v9)
        {
          (*(v4 + 2))(v4, v9, 0);
        }

        goto LABEL_37;
      case 3u:
        v20 = DRGetLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v28 = "[DeviceRecoveryBrain scanForIssues:]";
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: issues scan operation forced to require user approval", buf, 0xCu);
        }

        v31[0] = @"RequiredUserApprovalIconSymbolName";
        v31[1] = @"RequiredUserApprovalTitle";
        v32[0] = @"exclamationmark.triangle";
        v32[1] = @"User Approval Required";
        v31[2] = @"RequiredUserApprovalDescription";
        v31[3] = @"RequiredUserApprovalContinue";
        v32[2] = @"In order to recover this device, something needs to be done that has consequences.  Do you approve of this recovery operation?";
        v32[3] = @"Start Recovery";
        v31[4] = @"RequiredUserApprovalBack";
        v32[4] = @"Back";
        v10 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];
        goto LABEL_13;
      case 2u:
        v8 = DRGetLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v28 = "[DeviceRecoveryBrain scanForIssues:]";
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: issues scan operation forced to return no results", buf, 0xCu);
        }

        (*(v4 + 2))(v4, 0, 0);
        goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_13:
  if ([(DeviceRecoveryBrain *)self testModeEnabled])
  {
    v11 = DRGetLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = "[DeviceRecoveryBrain scanForIssues:]";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating issues scan", buf, 0xCu);
    }

    v12 = dispatch_time(0, 2000000000);
    v13 = [(DeviceRecoveryBrain *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__DeviceRecoveryBrain_scanForIssues___block_invoke_164;
    block[3] = &unk_2C538;
    v24 = v5;
    v10 = v10;
    v23 = v10;
    dispatch_after(v12, v13, block);
  }

  else
  {
    v14 = +[NSMutableArray array];
    if ([(DeviceRecoveryBrain *)self isInternalBuild]|| [(DeviceRecoveryBrain *)self isExternalBrain])
    {
      v15 = [(DeviceRecoveryBrain *)self scanForTestFiles];
      v16 = v15;
      if (v15 && [v15 count])
      {
        [v14 addObjectsFromArray:v16];
      }
    }

    v17 = [(DeviceRecoveryBrain *)self scanForERMContents];
    v18 = v17;
    if (v17 && [v17 count])
    {
      [v14 addObjectsFromArray:v18];
    }

    if ([v14 count])
    {
      v19 = DRGetLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v28 = "[DeviceRecoveryBrain scanForIssues:]";
        v29 = 2114;
        v30 = v14;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Found repairable issues: %{public}@", buf, 0x16u);
      }
    }

    (v5[2])(v5, 0, v14, v10);
  }

  v9 = 0;
LABEL_38:
}

void __37__DeviceRecoveryBrain_scanForIssues___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11)
  {
    goto LABEL_2;
  }

  if (![v7 count])
  {
    if (!v8)
    {
LABEL_2:
      v9 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v9 = +[NSMutableDictionary dictionary];
    goto LABEL_9;
  }

  v10 = [NSMutableDictionary dictionaryWithObject:v7 forKey:@"RepairableIssues"];
  v9 = v10;
  if (!v8)
  {
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v9 setObject:v8 forKeyedSubscript:@"RequiredUserApproval"];
LABEL_10:
  (*(*(a1 + 32) + 16))();
}

void __37__DeviceRecoveryBrain_scanForIssues___block_invoke_164(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[DeviceRecoveryBrain scanForIssues:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated issues scan complete", buf, 0xCu);
  }

  v3 = *(a1 + 40);
  v6 = @"RepairableIssueDescription";
  v7 = @"Simulated issue found";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  (*(v3 + 16))(v3, 0, v5, *(a1 + 32));
}

- (void)reclaimFreeSpace:(id)a3
{
  v4 = a3;
  v5 = DRGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[DeviceRecoveryBrain reclaimFreeSpace:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  if (v4)
  {
    if ([(DeviceRecoveryBrain *)self testModeEnabled])
    {
      if ([(DeviceRecoveryBrain *)self freeSpaceThresholdOverridden])
      {
        v6 = DRGetLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
          *v31 = 136446466;
          *&v31[4] = "[DeviceRecoveryBrain reclaimFreeSpace:]";
          v32 = 2114;
          v33 = v7;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] Attempting to free %{public}@ bytes as specified by override", v31, 0x16u);
        }

        v8 = [DeviceRecoveryBrainSpaceManager alloc];
        v9 = [(DeviceRecoveryBrain *)self systemDataVolumeMountPath];
        v10 = [(DeviceRecoveryBrain *)self userDataVolumeMountPath];
        v11 = [(DeviceRecoveryBrain *)self updateVolumeMountPath];
        v12 = [(DeviceRecoveryBrainSpaceManager *)v8 initWithMounts:v9 userDataVolumeMountPath:v10 updateVolumeMountPath:v11];

        v13 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
        v14 = [v12 freeSpaceOnMainContainerTillThreshold:v13];
        v15 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v14;
      }

      else
      {
        v12 = DRGetLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 136446210;
          *&v31[4] = "[DeviceRecoveryBrain reclaimFreeSpace:]";
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE]: Returning success for step", v31, 0xCu);
        }
      }

      v25 = [(DeviceRecoveryBrain *)self messageQueue];
      v26 = v29;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __40__DeviceRecoveryBrain_reclaimFreeSpace___block_invoke_168;
      v29[3] = &unk_2C560;
      v29[4] = v4;
      v29[5] = &buf;
      dispatch_async(v25, v29);
    }

    else
    {
      if ([(DeviceRecoveryBrain *)self isRunningInDeviceRecoveryEnvironment])
      {
        v16 = DRGetLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [DeviceRecoveryBrain reclaimFreeSpace:];
        }

        v17 = [DeviceRecoveryBrainSpaceManager alloc];
        v18 = [(DeviceRecoveryBrain *)self systemDataVolumeMountPath];
        v19 = [(DeviceRecoveryBrain *)self userDataVolumeMountPath];
        v20 = [(DeviceRecoveryBrain *)self updateVolumeMountPath];
        v21 = [(DeviceRecoveryBrainSpaceManager *)v17 initWithMounts:v18 userDataVolumeMountPath:v19 updateVolumeMountPath:v20];

        v22 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
        v23 = [v21 freeSpaceOnMainContainerTillThreshold:v22];
        v24 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v23;
      }

      else
      {
        v21 = DRGetLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 136446210;
          *&v31[4] = "[DeviceRecoveryBrain reclaimFreeSpace:]";
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: Operation not supported in this environment", v31, 0xCu);
        }
      }

      v27 = [(DeviceRecoveryBrain *)self messageQueue];
      v26 = block;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __40__DeviceRecoveryBrain_reclaimFreeSpace___block_invoke;
      block[3] = &unk_2C560;
      block[4] = v4;
      block[5] = &buf;
      dispatch_async(v27, block);
    }

    v28 = v26[4];
  }

  else
  {
    DRGetLogHandle();
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryBrain reclaimFreeSpace:];
    v28 = *v31;
  }

  _Block_object_dispose(&buf, 8);
}

- (void)recoverDevice:(id)a3
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __37__DeviceRecoveryBrain_recoverDevice___block_invoke;
  v17[3] = &unk_2C588;
  v17[4] = self;
  v4 = a3;
  v18 = v4;
  v5 = objc_retainBlock(v17);
  v6 = DRGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryBrain recoverDevice:]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  v7 = DRGetLogHandle();
  v8 = v7;
  if (!v4)
  {
    [DeviceRecoveryBrain recoverDevice:v7];
    goto LABEL_20;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(DeviceRecoveryBrain *)self recoveryResultOverride];
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryBrain recoverDevice:]";
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: recoveryResultOverride = %d", buf, 0x12u);
  }

  if ([(DeviceRecoveryBrain *)self isInternalBuild]&& [(DeviceRecoveryBrain *)self recoveryResultOverride]== 1)
  {
    v10 = [NSString stringWithFormat:@"recovery operation forced to fail"];
    v11 = DRCreateError(@"DeviceRecoveryError", 4, v10, @"recovery operation forced to fail", 0, "[DeviceRecoveryBrain recoverDevice:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x341u);

    if (v11)
    {
LABEL_9:
      (*(v4 + 2))(v4, v11, 0);
    }
  }

  else
  {
    if (![(DeviceRecoveryBrain *)self testModeEnabled])
    {
      if (([(DeviceRecoveryBrain *)self isInternalBuild]|| [(DeviceRecoveryBrain *)self isExternalBrain]) && ([(DeviceRecoveryBrain *)self recoverTestFiles], objc_claimAutoreleasedReturnValue()))
      {
        [DeviceRecoveryBrain recoverDevice:];
      }

      else
      {
        if (![(DeviceRecoveryBrain *)self ERMContentsPresent]|| ([(DeviceRecoveryBrain *)self removeERMContents], !objc_claimAutoreleasedReturnValue()))
        {
          (v5[2])(v5, 0);
          goto LABEL_20;
        }

        [DeviceRecoveryBrain recoverDevice:];
      }

      v11 = *buf;

      goto LABEL_9;
    }

    v12 = DRGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryBrain recoverDevice:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating device recovery", buf, 0xCu);
    }

    v13 = dispatch_time(0, 5000000000);
    v14 = [(DeviceRecoveryBrain *)self messageQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __37__DeviceRecoveryBrain_recoverDevice___block_invoke_196;
    v15[3] = &unk_2C5B0;
    v16 = v5;
    dispatch_after(v13, v14, v15);
  }

LABEL_20:
}

void __37__DeviceRecoveryBrain_recoverDevice___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = 0;
  }

  else if ([*(a1 + 32) isInternalBuild])
  {
    if ([*(a1 + 32) recoveryResultOverride] == 2 || objc_msgSend(*(a1 + 32), "recoveryResultOverride") == 4)
    {
      v3 = [NSMutableDictionary dictionaryWithCapacity:1];
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"OSBootRecoveryPhaseRequired"];
      [v3 setObject:&off_33AD8 forKeyedSubscript:@"OSRecoveryState"];
    }

    else
    {
      v3 = 0;
    }

    if ([*(a1 + 32) recoveryResultOverride] == 3 || objc_msgSend(*(a1 + 32), "recoveryResultOverride") == 4)
    {
      if (!v3)
      {
        v3 = [NSMutableDictionary dictionaryWithCapacity:1];
      }

      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];
      [v3 setObject:&off_33B00 forKeyedSubscript:@"OSRecoveryState"];
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __37__DeviceRecoveryBrain_recoverDevice___block_invoke_196(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryBrain recoverDevice:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated device recovery complete", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)recoverDeviceFromBootedOS:(id)a3 userUnlocked:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = DRGetLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[DeviceRecoveryBrain recoverDeviceFromBootedOS:userUnlocked:completion:]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if ([(DeviceRecoveryBrain *)self testModeEnabled])
  {
    v9 = DRGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "[DeviceRecoveryBrain recoverDeviceFromBootedOS:userUnlocked:completion:]";
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating bootedOS device recovery phase - userUnlocked: %d", buf, 0x12u);
    }

    v10 = dispatch_time(0, 5000000000);
    v11 = [(DeviceRecoveryBrain *)self messageQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __73__DeviceRecoveryBrain_recoverDeviceFromBootedOS_userUnlocked_completion___block_invoke;
    v12[3] = &unk_2C5D8;
    v14 = v5;
    v13 = v7;
    dispatch_after(v10, v11, v12);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

uint64_t __73__DeviceRecoveryBrain_recoverDeviceFromBootedOS_userUnlocked_completion___block_invoke(uint64_t a1)
{
  v2 = DRGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136446466;
    v6 = "[DeviceRecoveryBrain recoverDeviceFromBootedOS:userUnlocked:completion:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated bootedOS device recovery phase complete - userUnlocked: %d", &v5, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)initExternalBrain:.cold.1()
{
  v1 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_17(v1))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

- (void)startService:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_11_0(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v4 = [NSString stringWithFormat:@"Unable to create message dispatch_queue"];
  v5 = OUTLINED_FUNCTION_27();
  *a1 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x84u);
}

- (uint64_t)startService:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    v14[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v14[13] + 2) = 129;
    OUTLINED_FUNCTION_10(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  *v1 = [NSString stringWithFormat:@"Unable to create NSXPCListener for service: %@", @"com.apple.DeviceRecoveryBuiltinBrain"];
  v4 = OUTLINED_FUNCTION_32();
  result = DRCreateError(v4, v5, v6, v7, v8, v9, v10, 0x81u);
  *v0 = result;
  return result;
}

- (uint64_t)startService:(uint64_t *)a3 .cold.3(NSObject *a1, uint64_t *a2, uint64_t *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10_0(&dword_0, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, 2u);
  }

  *a2 = [NSString stringWithFormat:@"missing service name in brain"];
  v6 = OUTLINED_FUNCTION_32();
  result = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x7Du);
  *a3 = result;
  return result;
}

- (void)client:hasBooleanEntitlement:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)client:hasBooleanEntitlement:.cold.2()
{
  OUTLINED_FUNCTION_21();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_25(v0))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 184;
    OUTLINED_FUNCTION_15_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }

  OUTLINED_FUNCTION_26();
}

- (void)client:hasBooleanEntitlement:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)client:(void *)a1 hasBooleanEntitlement:.cold.4(void *a1)
{
  [a1 processIdentifier];
  v1 = _ProcessNameForPid();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)client:hasBooleanEntitlement:.cold.5()
{
  OUTLINED_FUNCTION_23();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

- (void)client:hasBooleanEntitlement:.cold.6()
{
  OUTLINED_FUNCTION_23();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  *v1 = 0;
  *v0 = v2;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_23();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v0))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_19_0();
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v1 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_17(v1))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  v1 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_17(v1))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

- (void)listener:shouldAcceptNewConnection:.cold.4()
{
  OUTLINED_FUNCTION_23();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v0))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_19_0();
}

- (void)configureBrain:(void *)a1 completion:.cold.6(void *a1)
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }
}

- (void)configureBrain:(void *)a1 completion:.cold.7(void *a1)
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }
}

- (void)configureBrain:(void *)a1 completion:.cold.8(void *a1)
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }
}

- (void)configureBrain:completion:.cold.9()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    v14[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v14[13] + 2) = 300;
    OUTLINED_FUNCTION_10(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  v4 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v5 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x12Cu);
}

- (void)configureBrain:completion:.cold.10()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    v14[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v14[13] + 2) = 286;
    OUTLINED_FUNCTION_10(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  v4 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v5 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x11Eu);
}

- (void)configureBrain:completion:.cold.11()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    v14[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v14[13] + 2) = 280;
    OUTLINED_FUNCTION_10(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  v4 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v5 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x118u);
}

- (void)configureBrain:completion:.cold.12()
{
  OUTLINED_FUNCTION_13();
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_15(v3))
  {
    v14[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v14[13] + 2) = 274;
    OUTLINED_FUNCTION_10(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14);
  }

  v4 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v5 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x112u);
}

- (void)configureBrain:(void *)a1 completion:.cold.13(void *a1)
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, 2u);
  }

  *a1 = v1;
}

- (void)checkFreeSpace:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)checkFreeSpace:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)ERMContentsPresent
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (uint64_t)removeERMContents
{
  v6 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_25(v6))
  {
    v17[0] = 136447490;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    *(&v17[13] + 2) = 463;
    OUTLINED_FUNCTION_15_0(&dword_0, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17);
  }

  *a2 = [NSString stringWithFormat:@"failed to remove Extended Research data"];
  v7 = OUTLINED_FUNCTION_30();
  result = DRCreateError(v7, v8, v9, v10, v11, v12, v13, 0x1CFu);
  *a3 = result;
  return result;
}

- (void)filesInDirectory:withPrefix:extension:excludeSymlinks:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)filesInDirectory:withPrefix:extension:excludeSymlinks:.cold.2()
{
  v4[0] = 136446722;
  OUTLINED_FUNCTION_20();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}s: error getting contents of directory '%{public}@' - %{public}@", v4, 0x20u);
}

- (void)filesInDirectory:withPrefix:extension:excludeSymlinks:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)scanForTestFiles
{
  v1 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_17(v1))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

- (void)modifyTestFile:(uint64_t *)a1 contents:.cold.1(uint64_t *a1)
{
  v3 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_11_0(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, 2u);
  }

  v4 = [NSString stringWithFormat:@"nil testFileContents"];
  v5 = OUTLINED_FUNCTION_27();
  *a1 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x238u);
}

- (void)scanForIssues:.cold.1()
{
  v1 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_17(v1))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

- (void)reclaimFreeSpace:.cold.2()
{
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

- (void)recoverDevice:.cold.1()
{
  OUTLINED_FUNCTION_21();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_25(v0))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 837;
    OUTLINED_FUNCTION_15_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }

  OUTLINED_FUNCTION_26();
}

- (void)recoverDevice:.cold.2()
{
  OUTLINED_FUNCTION_21();
  v0 = DRGetLogHandle();
  if (OUTLINED_FUNCTION_25(v0))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 843;
    OUTLINED_FUNCTION_15_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }

  OUTLINED_FUNCTION_26();
}

- (void)recoverDevice:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

@end