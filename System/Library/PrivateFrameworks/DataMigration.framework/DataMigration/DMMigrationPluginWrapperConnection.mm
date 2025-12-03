@interface DMMigrationPluginWrapperConnection
+ (id)connection;
- (BOOL)didReceivePid;
- (DMMigrationPluginWrapperConnection)init;
- (int)_pid;
- (void)handleMessage:(id)message;
- (void)runPluginAtPath:(id)path withIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
@end

@implementation DMMigrationPluginWrapperConnection

+ (id)connection
{
  v2 = objc_alloc_init(DMMigrationPluginWrapperConnection);

  return v2;
}

- (DMMigrationPluginWrapperConnection)init
{
  v9.receiver = self;
  v9.super_class = DMMigrationPluginWrapperConnection;
  v2 = [(DMMigrationPluginWrapperConnection *)&v9 init];
  if (v2)
  {
    v3 = [[DMXPCConnection alloc] initWithServiceName:@"com.apple.migrationpluginwrapper"];
    connection = v2->_connection;
    v2->_connection = v3;

    v2->_didReceivePid = 0;
    objc_initWeak(&location, v2);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__DMMigrationPluginWrapperConnection_init__block_invoke;
    v6[3] = &unk_278855198;
    objc_copyWeak(&v7, &location);
    [(DMXPCConnection *)v2->_connection setMessageHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__DMMigrationPluginWrapperConnection_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleMessage:v3];
}

- (BOOL)didReceivePid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  didReceivePid = selfCopy->_didReceivePid;
  objc_sync_exit(selfCopy);

  return didReceivePid;
}

- (int)_pid
{
  connection = [(DMXPCConnection *)self->_connection connection];
  pid = xpc_connection_get_pid(connection);

  return pid;
}

- (void)runPluginAtPath:(id)path withIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  v60[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  parametersCopy = parameters;
  completionCopy = completion;
  identifierCopy = identifier;
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v13, "msgID", 0);
  xpc_dictionary_set_string(v13, "pluginPath", [pathCopy UTF8String]);
  uTF8String = [identifierCopy UTF8String];

  xpc_dictionary_set_string(v13, "pluginIdentifier", uTF8String);
  v15 = +[DMEnvironment sharedInstance];
  LODWORD(uTF8String) = [v15 suppressMigrationPluginWrapperExitMarkerPref];

  if (uTF8String)
  {
    xpc_dictionary_set_BOOL(v13, [@"DMSuppressMigrationPluginWrapperExit" UTF8String], 1);
  }

  v16 = +[DMEnvironment sharedInstance];
  testMigrationInfrastructureOnly = [v16 testMigrationInfrastructureOnly];

  if (testMigrationInfrastructureOnly)
  {
    xpc_dictionary_set_BOOL(v13, "testMigrationInfrastructureOnly", 1);
  }

  dispositionSupersetOfContext = [parametersCopy dispositionSupersetOfContext];
  v19 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:dispositionSupersetOfContext];

  xpc_dictionary_set_uint64(v13, "userDataDisposition", v19);
  dispositionSupersetOfContext2 = [parametersCopy dispositionSupersetOfContext];
  v21 = [dispositionSupersetOfContext2 objectForKeyedSubscript:@"RestoredBackupBuildVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v13, [@"RestoredBackupBuildVersion" UTF8String], objc_msgSend(v21, "UTF8String"));
  }

  dispositionSupersetOfContext3 = [parametersCopy dispositionSupersetOfContext];
  v23 = [dispositionSupersetOfContext3 objectForKeyedSubscript:@"RestoredBackupProductType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v13, [@"RestoredBackupProductType" UTF8String], objc_msgSend(v23, "UTF8String"));
  }

  dispositionSupersetOfContext4 = [parametersCopy dispositionSupersetOfContext];
  v25 = [dispositionSupersetOfContext4 objectForKeyedSubscript:@"RestoredBackupDeviceName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v13, [@"RestoredBackupDeviceName" UTF8String], objc_msgSend(v25, "UTF8String"));
  }

  uTF8String2 = [@"SyntheticDidUpgrade" UTF8String];
  dispositionSupersetOfContext5 = [parametersCopy dispositionSupersetOfContext];
  v28 = [dispositionSupersetOfContext5 objectForKeyedSubscript:@"SyntheticDidUpgrade"];
  xpc_dictionary_set_BOOL(v13, uTF8String2, [v28 BOOLValue]);

  uTF8String3 = [@"DidRestoreFromBackup" UTF8String];
  dispositionSupersetOfContext6 = [parametersCopy dispositionSupersetOfContext];
  v31 = [dispositionSupersetOfContext6 objectForKeyedSubscript:@"DidRestoreFromBackup"];
  xpc_dictionary_set_BOOL(v13, uTF8String3, [v31 BOOLValue]);

  uTF8String4 = [@"DidMigrateBackupFromDifferentDevice" UTF8String];
  dispositionSupersetOfContext7 = [parametersCopy dispositionSupersetOfContext];
  v34 = [dispositionSupersetOfContext7 objectForKeyedSubscript:@"DidMigrateBackupFromDifferentDevice"];
  xpc_dictionary_set_BOOL(v13, uTF8String4, [v34 BOOLValue]);

  uTF8String5 = [@"DidRestoreFromCloudBackup" UTF8String];
  dispositionSupersetOfContext8 = [parametersCopy dispositionSupersetOfContext];
  v37 = [dispositionSupersetOfContext8 objectForKeyedSubscript:@"DidRestoreFromCloudBackup"];
  xpc_dictionary_set_BOOL(v13, uTF8String5, [v37 BOOLValue]);

  uTF8String6 = [@"ShouldPreserveSettingsAfterRestore" UTF8String];
  dispositionSupersetOfContext9 = [parametersCopy dispositionSupersetOfContext];
  v40 = [dispositionSupersetOfContext9 objectForKeyedSubscript:@"ShouldPreserveSettingsAfterRestore"];
  xpc_dictionary_set_BOOL(v13, uTF8String6, [v40 BOOLValue]);

  uTF8String7 = [@"WasPasscodeSetInBackup" UTF8String];
  dispositionSupersetOfContext10 = [parametersCopy dispositionSupersetOfContext];
  v43 = [dispositionSupersetOfContext10 objectForKeyedSubscript:@"WasPasscodeSetInBackup"];
  xpc_dictionary_set_BOOL(v13, uTF8String7, [v43 BOOLValue]);

  uTF8String8 = [@"RestoredBackupIsMegaBackup" UTF8String];
  dispositionSupersetOfContext11 = [parametersCopy dispositionSupersetOfContext];
  v46 = [dispositionSupersetOfContext11 objectForKeyedSubscript:@"RestoredBackupIsMegaBackup"];
  xpc_dictionary_set_BOOL(v13, uTF8String8, [v46 BOOLValue]);

  backupDeviceUUID = [parametersCopy backupDeviceUUID];
  v48 = [backupDeviceUUID length];

  if (v48)
  {
    backupDeviceUUID2 = [parametersCopy backupDeviceUUID];
    xpc_dictionary_set_string(v13, "backupDeviceUUID", [backupDeviceUUID2 UTF8String]);
  }

  _DMLogFunc(v57, 7, @"DMMigrationPluginWrapperConnection will sendMessageSync:");
  v50 = [(DMXPCConnection *)self->_connection sendMessageSync:v13];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v50, *MEMORY[0x277D86400]);
    _DMLogFunc(v57, 6, @"MigrationPluginWrapper -runPluginAtPath: %@ withParameters: XPC error: %s");
    v53 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v60[0] = @"migrationpluginwrapper xpc error";
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:{1, pathCopy, string}];
    v52 = [v53 errorWithDomain:@"com.apple.datamigrator" code:0 userInfo:v54];

    v51 = 0;
  }

  else
  {
    v51 = xpc_dictionary_get_BOOL(v50, "migrationResult");
    v52 = 0;
  }

  completionCopy[2](completionCopy, v51, v52);

  v55 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(id)message
{
  xdict = message;
  if (!xpc_dictionary_get_int64(xdict, "msgID"))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_didReceivePid = 1;
    objc_sync_exit(selfCopy);

    int64 = xpc_dictionary_get_int64(xdict, "pid");
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:int64];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[DMMigrationPluginWrapperConnection _pid](selfCopy, "_pid")}];
    _DMLogFunc(v3, 7, @"DMMigrationPluginWrapperConnection handling event %p msgID %@ containing pid %@ from peer pid %@");
  }
}

@end