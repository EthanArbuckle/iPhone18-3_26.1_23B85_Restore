@interface DMConnection
- (BOOL)isMigrationNeeded;
- (DMConnection)init;
- (id)migrationPhaseDescription;
- (id)orderedPluginIdentifiers;
- (id)previousBuildVersion;
- (id)userDataDispositionAuxiliaryData;
- (int64_t)migrateCheckingNecessity:(BOOL)a3 lastRelevantPlugin:(id)a4 testMigrationInfrastructureOnly:(BOOL)a5;
- (unsigned)userDataDisposition;
- (void)cancelDeferredExit;
- (void)changeVisibility:(BOOL)a3 completion:(id)a4;
- (void)dealloc;
- (void)deferExit;
- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)a3 context:(id)a4;
- (void)migrationPluginResults:(id)a3;
- (void)reportMigrationFailure;
- (void)testMigrationUIWithProgress:(BOOL)a3 forceInvert:(BOOL)a4;
@end

@implementation DMConnection

- (DMConnection)init
{
  v8.receiver = self;
  v8.super_class = DMConnection;
  v3 = [(DMConnection *)&v8 init];
  if (v3)
  {
    v4 = [[DMXPCConnection alloc] initWithServiceName:@"com.apple.datamigrator"];
    connection = v3->_connection;
    v3->_connection = v4;

    v6 = v3->_connection;
    if (v6)
    {
      [(DMXPCConnection *)v6 targetForegroundUserSessionIfNecessary];
      [(DMXPCConnection *)v3->_connection resume];
    }

    else
    {

      v3 = 0;
    }
  }

  _DMLogFunc(v2, 7, @"DMConnection did init %@");
  return v3;
}

- (void)dealloc
{
  _DMLogFunc(v2, 7, @"DMConnection will dealloc %@");
  [(DMXPCConnection *)self->_connection invalidate];
  v5.receiver = self;
  v5.super_class = DMConnection;
  [(DMConnection *)&v5 dealloc];
}

- (BOOL)isMigrationNeeded
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 5);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -isMigrationNeeded: XPC error: %s");
    v6 = 0;
  }

  else
  {
    v6 = xpc_dictionary_get_BOOL(v5, "isMigrationNeeded");
  }

  return v6;
}

- (unsigned)userDataDisposition
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 6);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -userDataDisposition: XPC error: %s");
    uint64 = 0;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v5, "disposition");
  }

  return uint64;
}

- (id)userDataDispositionAuxiliaryData
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 13);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    v17 = @"Data migrator -userDataDispositionAuxiliaryData: XPC error: %s";
    v18 = v2;
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v5, "dispositionAuxiliaryData", &length);
    if (data)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
      v8 = MEMORY[0x277CCAAC8];
      v9 = MEMORY[0x277CBEB98];
      v24[0] = objc_opt_class();
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v11 = [v9 setWithArray:v10];
      v12 = MEMORY[0x277CBEB98];
      v23[0] = objc_opt_class();
      v23[1] = objc_opt_class();
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      v14 = [v12 setWithArray:v13];
      v21 = 0;
      v15 = [v8 unarchivedDictionaryWithKeysOfClasses:v11 objectsOfClasses:v14 fromData:v7 error:&v21];
      v16 = v21;

      _DMLogFunc(v2, 6, @"Data migrator -userDataDispositionAuxiliaryData: did unarchive auxiliary data with success %d error %@");
      goto LABEL_7;
    }

    v18 = v2;
    v17 = @"Data migrator -userDataDispositionAuxiliaryData: got no auxiliary data";
  }

  _DMLogFunc(v18, 6, v17);
  v15 = 0;
LABEL_7:

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)previousBuildVersion
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 7);
  v5 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(v5, *MEMORY[0x277D86400]);
    _DMLogFunc(v2, 6, @"Data migrator -userDataDisposition: XPC error: %s");
  }

  else
  {
    string = xpc_dictionary_get_string(v5, "previousBuildVersion");
    if (string)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (int64_t)migrateCheckingNecessity:(BOOL)a3 lastRelevantPlugin:(id)a4 testMigrationInfrastructureOnly:(BOOL)a5
{
  v6 = a5;
  v9 = a4;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "msgID", 0);
  xpc_dictionary_set_BOOL(v10, "checkNecessity", a3);
  if (v9)
  {
    xpc_dictionary_set_string(v10, "lastRelevantPlugin", [v9 UTF8String]);
  }

  if (v6)
  {
    xpc_dictionary_set_BOOL(v10, "testMigrationInfrastructureOnly", 1);
  }

  v11 = [(DMXPCConnection *)self->_connection sendMessageSync:v10];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    v13 = v11 == MEMORY[0x277D863F0];
    xpc_dictionary_get_string(v11, *MEMORY[0x277D86400]);
    _DMLogFunc(v5, 6, @"Data migrator -migrateWithCompletion: XPC error: %s");
    int64 = 4 * v13;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v11, "migrationResult");
  }

  return int64;
}

- (id)orderedPluginIdentifiers
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "msgID", 1);
  v4 = [(DMXPCConnection *)self->_connection sendMessageSync:v3];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    v6 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_value(v4, "results");
    if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86440])
    {
      count = xpc_array_get_count(v5);
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
      if (count)
      {
        for (i = 0; i != count; ++i)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(v5, i)}];
          [v6 addObject:v9];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)changeVisibility:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "msgID", 3);
  xpc_dictionary_set_BOOL(v7, "visible", a3);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v14 = self;
  connection = v14->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__DMConnection_changeVisibility_completion___block_invoke;
  v10[3] = &unk_2788551C0;
  v9 = v6;
  v11 = v9;
  v12 = v13;
  [(DMXPCConnection *)connection sendMessage:v7 replyHandler:v10];

  _Block_object_dispose(v13, 8);
}

void __44__DMConnection_changeVisibility_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2318EDE00](a2);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)testMigrationUIWithProgress:(BOOL)a3 forceInvert:(BOOL)a4
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "msgID", 2);
  xpc_dictionary_set_BOOL(xdict, "progress", a3);
  xpc_dictionary_set_BOOL(xdict, "invert", a4);
  v7 = [(DMXPCConnection *)self->_connection sendMessageSync:xdict];
}

- (void)forceMigrationOnNextRebootWithUserDataDisposition:(unsigned int)a3 context:(id)a4
{
  v6 = a4;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "msgID", 4);
  xpc_dictionary_set_uint64(xdict, "disposition", a3);
  v7 = objc_alloc_init(DMContextManager);
  [(DMContextManager *)v7 addContext:v6 toXPCDictionary:xdict];

  v8 = [(DMXPCConnection *)self->_connection sendMessageSync:xdict];
}

- (void)reportMigrationFailure
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "msgID", 8);
  v4 = [(DMXPCConnection *)self->_connection sendMessageSync:v6];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    xpc_dictionary_get_string(v4, *MEMORY[0x277D86400]);
    v5 = @"Data migrator -reportMigrationFailure: XPC error: %s";
  }

  else
  {
    v5 = @"Data migrator -reportMigrationFailure: succeeded";
  }

  _DMLogFunc(v2, 6, v5);
}

- (id)migrationPhaseDescription
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "msgID", 9);
  v4 = [(DMXPCConnection *)self->_connection sendMessageSync:v3];
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480] || (string = xpc_dictionary_get_string(v4, "description")) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  return v6;
}

- (void)migrationPluginResults:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "msgID", 10);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  v12 = self;
  connection = v12->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__DMConnection_migrationPluginResults___block_invoke;
  v8[3] = &unk_2788551C0;
  v7 = v4;
  v9 = v7;
  v10 = v11;
  [(DMXPCConnection *)connection sendMessage:v5 replyHandler:v8];

  _Block_object_dispose(v11, 8);
}

void __39__DMConnection_migrationPluginResults___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (MEMORY[0x2318EDE00]() == MEMORY[0x277D86480])
  {
    if (*(a1 + 32))
    {
      _DMLogFunc(v2, 6, @"Data migrator -migrationPluginResults: got xpc error");
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.datamigrator" code:2 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v4, "results", &length);
    if (data)
    {
      v6 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
      v15 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
      v8 = v15;
      _DMLogFunc(v2, 6, @"Data migrator -migrationPluginResults: did unarchive results with success %d error %@");
      v9 = *(a1 + 32);
      if (v9)
      {
        (*(v9 + 16))(v9, v7, v8);
      }
    }

    else
    {
      _DMLogFunc(v2, 6, @"Data migrator -migrationPluginResults: got no results");
      v12 = *(a1 + 32);
      if (v12)
      {
        (*(v12 + 16))(v12, 0, 0);
      }
    }
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

- (void)deferExit
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 11);
  v3 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
}

- (void)cancelDeferredExit
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "msgID", 12);
  v3 = [(DMXPCConnection *)self->_connection sendMessageSync:v4];
}

@end