@interface DMMigrationPluginWrapperConnection
+ (id)connection;
- (BOOL)didReceivePid;
- (DMMigrationPluginWrapperConnection)init;
- (int)_pid;
- (void)handleMessage:(id)a3;
- (void)runPluginAtPath:(id)a3 withIdentifier:(id)a4 parameters:(id)a5 completion:(id)a6;
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
  v2 = self;
  objc_sync_enter(v2);
  didReceivePid = v2->_didReceivePid;
  objc_sync_exit(v2);

  return didReceivePid;
}

- (int)_pid
{
  v2 = [(DMXPCConnection *)self->_connection connection];
  pid = xpc_connection_get_pid(v2);

  return pid;
}

- (void)runPluginAtPath:(id)a3 withIdentifier:(id)a4 parameters:(id)a5 completion:(id)a6
{
  v60[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v13, "msgID", 0);
  xpc_dictionary_set_string(v13, "pluginPath", [v9 UTF8String]);
  v14 = [v12 UTF8String];

  xpc_dictionary_set_string(v13, "pluginIdentifier", v14);
  v15 = +[DMEnvironment sharedInstance];
  LODWORD(v14) = [v15 suppressMigrationPluginWrapperExitMarkerPref];

  if (v14)
  {
    xpc_dictionary_set_BOOL(v13, [@"DMSuppressMigrationPluginWrapperExit" UTF8String], 1);
  }

  v16 = +[DMEnvironment sharedInstance];
  v17 = [v16 testMigrationInfrastructureOnly];

  if (v17)
  {
    xpc_dictionary_set_BOOL(v13, "testMigrationInfrastructureOnly", 1);
  }

  v18 = [v10 dispositionSupersetOfContext];
  v19 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:v18];

  xpc_dictionary_set_uint64(v13, "userDataDisposition", v19);
  v20 = [v10 dispositionSupersetOfContext];
  v21 = [v20 objectForKeyedSubscript:@"RestoredBackupBuildVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v13, [@"RestoredBackupBuildVersion" UTF8String], objc_msgSend(v21, "UTF8String"));
  }

  v22 = [v10 dispositionSupersetOfContext];
  v23 = [v22 objectForKeyedSubscript:@"RestoredBackupProductType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v13, [@"RestoredBackupProductType" UTF8String], objc_msgSend(v23, "UTF8String"));
  }

  v24 = [v10 dispositionSupersetOfContext];
  v25 = [v24 objectForKeyedSubscript:@"RestoredBackupDeviceName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(v13, [@"RestoredBackupDeviceName" UTF8String], objc_msgSend(v25, "UTF8String"));
  }

  v26 = [@"SyntheticDidUpgrade" UTF8String];
  v27 = [v10 dispositionSupersetOfContext];
  v28 = [v27 objectForKeyedSubscript:@"SyntheticDidUpgrade"];
  xpc_dictionary_set_BOOL(v13, v26, [v28 BOOLValue]);

  v29 = [@"DidRestoreFromBackup" UTF8String];
  v30 = [v10 dispositionSupersetOfContext];
  v31 = [v30 objectForKeyedSubscript:@"DidRestoreFromBackup"];
  xpc_dictionary_set_BOOL(v13, v29, [v31 BOOLValue]);

  v32 = [@"DidMigrateBackupFromDifferentDevice" UTF8String];
  v33 = [v10 dispositionSupersetOfContext];
  v34 = [v33 objectForKeyedSubscript:@"DidMigrateBackupFromDifferentDevice"];
  xpc_dictionary_set_BOOL(v13, v32, [v34 BOOLValue]);

  v35 = [@"DidRestoreFromCloudBackup" UTF8String];
  v36 = [v10 dispositionSupersetOfContext];
  v37 = [v36 objectForKeyedSubscript:@"DidRestoreFromCloudBackup"];
  xpc_dictionary_set_BOOL(v13, v35, [v37 BOOLValue]);

  v38 = [@"ShouldPreserveSettingsAfterRestore" UTF8String];
  v39 = [v10 dispositionSupersetOfContext];
  v40 = [v39 objectForKeyedSubscript:@"ShouldPreserveSettingsAfterRestore"];
  xpc_dictionary_set_BOOL(v13, v38, [v40 BOOLValue]);

  v41 = [@"WasPasscodeSetInBackup" UTF8String];
  v42 = [v10 dispositionSupersetOfContext];
  v43 = [v42 objectForKeyedSubscript:@"WasPasscodeSetInBackup"];
  xpc_dictionary_set_BOOL(v13, v41, [v43 BOOLValue]);

  v44 = [@"RestoredBackupIsMegaBackup" UTF8String];
  v45 = [v10 dispositionSupersetOfContext];
  v46 = [v45 objectForKeyedSubscript:@"RestoredBackupIsMegaBackup"];
  xpc_dictionary_set_BOOL(v13, v44, [v46 BOOLValue]);

  v47 = [v10 backupDeviceUUID];
  v48 = [v47 length];

  if (v48)
  {
    v49 = [v10 backupDeviceUUID];
    xpc_dictionary_set_string(v13, "backupDeviceUUID", [v49 UTF8String]);
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
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:{1, v9, string}];
    v52 = [v53 errorWithDomain:@"com.apple.datamigrator" code:0 userInfo:v54];

    v51 = 0;
  }

  else
  {
    v51 = xpc_dictionary_get_BOOL(v50, "migrationResult");
    v52 = 0;
  }

  v11[2](v11, v51, v52);

  v55 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(id)a3
{
  xdict = a3;
  if (!xpc_dictionary_get_int64(xdict, "msgID"))
  {
    v5 = self;
    objc_sync_enter(v5);
    v5->_didReceivePid = 1;
    objc_sync_exit(v5);

    int64 = xpc_dictionary_get_int64(xdict, "pid");
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:int64];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[DMMigrationPluginWrapperConnection _pid](v5, "_pid")}];
    _DMLogFunc(v3, 7, @"DMMigrationPluginWrapperConnection handling event %p msgID %@ containing pid %@ from peer pid %@");
  }
}

@end