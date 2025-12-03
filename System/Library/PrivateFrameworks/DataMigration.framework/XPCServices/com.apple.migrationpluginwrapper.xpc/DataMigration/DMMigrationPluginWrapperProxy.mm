@interface DMMigrationPluginWrapperProxy
+ (void)_ensureExitAfterThrottlePeriod;
- (DMMigrationPluginWrapperProxy)initWithConnection:(id)connection;
- (void)handleMessage:(id)message;
@end

@implementation DMMigrationPluginWrapperProxy

- (DMMigrationPluginWrapperProxy)initWithConnection:(id)connection
{
  v4.receiver = self;
  v4.super_class = DMMigrationPluginWrapperProxy;
  return [(DMMigrationPluginWrapperProxy *)&v4 initWithConnection:connection];
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "msgID");
  v6 = OBJC_IVAR___DMXPCConnection__connection;
  pid = xpc_connection_get_pid(*&self->DMXPCConnection_opaque[OBJC_IVAR___DMXPCConnection__connection]);
  v8 = [NSNumber numberWithLongLong:int64];
  v37 = [NSNumber numberWithInt:pid];
  _DMLogFunc();

  if (int64)
  {
    _DMLogFunc();
  }

  else
  {
    if (xpc_dictionary_get_BOOL(messageCopy, [@"DMSuppressMigrationPluginWrapperExit" UTF8String]))
    {
      _DMLogFunc();
    }

    else
    {
      +[DMMigrationPluginWrapperProxy _ensureExitAfterThrottlePeriod];
    }

    _DMLogFunc();
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "msgID", 0);
    v10 = getpid();
    xpc_dictionary_set_int64(v9, "pid", v10);
    selfCopy = self;
    v44 = v9;
    xpc_connection_send_message(*&self->DMXPCConnection_opaque[v6], v9);
    v58[0] = @"SyntheticDidUpgrade";
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"SyntheticDidUpgrade" UTF8String]));
    v59[0] = v11;
    v58[1] = @"DidRestoreFromBackup";
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"DidRestoreFromBackup" UTF8String]));
    v59[1] = v12;
    v58[2] = @"DidMigrateBackupFromDifferentDevice";
    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"DidMigrateBackupFromDifferentDevice" UTF8String]));
    v59[2] = v13;
    v58[3] = @"DidRestoreFromCloudBackup";
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"DidRestoreFromCloudBackup" UTF8String]));
    v59[3] = v14;
    v58[4] = @"ShouldPreserveSettingsAfterRestore";
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"ShouldPreserveSettingsAfterRestore" UTF8String]));
    v59[4] = v15;
    v58[5] = @"WasPasscodeSetInBackup";
    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"WasPasscodeSetInBackup" UTF8String]));
    v59[5] = v16;
    v58[6] = @"RestoredBackupIsMegaBackup";
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(messageCopy, [@"RestoredBackupIsMegaBackup" UTF8String]));
    v59[6] = v17;
    v42 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:7];

    string = xpc_dictionary_get_string(messageCopy, [@"RestoredBackupBuildVersion" UTF8String]);
    if (string)
    {
      v41 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v41 = 0;
    }

    v19 = xpc_dictionary_get_string(messageCopy, [@"RestoredBackupProductType" UTF8String]);
    if (v19)
    {
      v40 = [NSString stringWithUTF8String:v19];
    }

    else
    {
      v40 = 0;
    }

    v20 = xpc_dictionary_get_string(messageCopy, [@"RestoredBackupDeviceName" UTF8String]);
    if (v20)
    {
      v39 = [NSString stringWithUTF8String:v20];
    }

    else
    {
      v39 = 0;
    }

    uint64 = xpc_dictionary_get_uint64(messageCopy, "userDataDisposition");
    v22 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "pluginPath")];
    lastPathComponent = [v22 lastPathComponent];
    v24 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "pluginIdentifier")];
    v25 = xpc_dictionary_get_string(messageCopy, "backupDeviceUUID");
    if (v25)
    {
      v26 = [NSString stringWithUTF8String:v25];
    }

    else
    {
      v26 = 0;
    }

    v27 = xpc_dictionary_get_BOOL(messageCopy, "testMigrationInfrastructureOnly");
    v28 = [NSString stringWithFormat:@"com.apple.migrationpluginwrapper.plugin.%@", lastPathComponent];
    queue = dispatch_queue_create([v28 UTF8String], 0);

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003460;
    block[3] = &unk_10000C2D8;
    v46 = v24;
    v47 = lastPathComponent;
    v48 = v22;
    v49 = v42;
    v56 = uint64;
    v50 = v41;
    v51 = v40;
    v57 = v27;
    v52 = v39;
    v53 = v26;
    v54 = messageCopy;
    v55 = selfCopy;
    v29 = v26;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v22;
    v35 = lastPathComponent;
    v36 = v24;
    dispatch_sync(queue, block);
  }
}

+ (void)_ensureExitAfterThrottlePeriod
{
  if (qword_1000152C0 != -1)
  {
    sub_100005E40();
  }
}

@end