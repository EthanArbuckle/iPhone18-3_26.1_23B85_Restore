@interface CallDBManagerClient
- (BOOL)validatePermDatabase;
- (BOOL)validateTempDatabase;
- (BOOL)willMoveCallsFromTempDatabase;
- (CallDBManagerClient)initWithProcessHandle:(id)a3;
- (id)permDBLocation:(unsigned __int8 *)a3;
- (void)createHelperConnection;
- (void)createPermanent;
- (void)createTemporary;
- (void)handlePermanentCreated;
- (void)moveCallsFromTempDatabase;
- (void)pokeSyncHelperToInitDB;
- (void)willMoveCallsFromTempDatabase;
@end

@implementation CallDBManagerClient

- (void)createPermanent
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getDBLErrorCodeAsString(*a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C3E90000, v2, v3, "Got error code: %{public}@ while getting permanent data store database location", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handlePermanentCreated
{
  if (![(CallDBManager *)self dataStoreType])
  {
    [(CallDBManager *)self setNotifyDataStoreChangeReason:2];
  }

  v4.receiver = self;
  v4.super_class = CallDBManagerClient;
  [(CallDBManager *)&v4 handlePermanentCreated];
  v3 = [(CallDBManagerClient *)self helperConnection];
  [v3 invalidate];
}

- (void)moveCallsFromTempDatabase
{
  if ([(CallDBManagerClient *)self willMoveCallsFromTempDatabase])
  {
    [(CallDBManagerClient *)self createHelperConnection];
    v4 = [(CallDBManagerClient *)self helperConnection];
    v3 = [v4 remoteObjectProxy];
    [v3 moveCallsFromTempDatabase];
  }
}

- (BOOL)willMoveCallsFromTempDatabase
{
  v2 = [(CallDBManagerClient *)self tempDBLocation:0];
  if (v2)
  {
    v3 = [CallDBMetaInfo alloc];
    v4 = [v2 URLByDeletingLastPathComponent];
    v5 = [(CallDBMetaInfo *)v3 initWithURL:v4];

    if ([v5 readDatabaseVersion:1]!= 42)
    {
      v18 = +[CHLogServer sharedInstance];
      v6 = [v18 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Temporary data store not used, nothing to move", buf, 2u);
      }

      v16 = 0;
      goto LABEL_33;
    }

    v6 = +[CallDBManager modelURL];
    v7 = [DBManager instanceWithModelURL:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 addDataStoreAtLocation:v2 isEncrypted:0])
      {
        v9 = [v8 createManagedObjectContext];
        if (v9)
        {
          v10 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:v9];
          if (v10)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695D5E0]);
            [v11 setEntity:v10];
            v24 = 0;
            v12 = [v9 executeFetchRequest:v11 error:&v24];
            v13 = v12;
            if (v24)
            {
              v14 = +[CHLogServer sharedInstance];
              v15 = [v14 logHandleForDomain:"ch.calldbm"];

              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [CallDBManagerClient willMoveCallsFromTempDatabase];
              }

              v16 = 0;
            }

            else
            {
              v16 = [v12 count] != 0;
            }
          }

          else
          {
            v22 = +[CHLogServer sharedInstance];
            v11 = [v22 logHandleForDomain:"ch.calldbm"];

            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              [CallDBManagerClient willMoveCallsFromTempDatabase];
            }

            v16 = 0;
          }
        }

        else
        {
          v21 = +[CHLogServer sharedInstance];
          v10 = [v21 logHandleForDomain:"ch.calldbm"];

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [CallDBManagerClient willMoveCallsFromTempDatabase];
          }

          v16 = 0;
        }

        goto LABEL_32;
      }

      v20 = +[CHLogServer sharedInstance];
      v9 = [v20 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerClient willMoveCallsFromTempDatabase];
      }
    }

    else
    {
      v19 = +[CHLogServer sharedInstance];
      v9 = [v19 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerClient willMoveCallsFromTempDatabase];
      }
    }

    v16 = 0;
LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  v17 = +[CHLogServer sharedInstance];
  v5 = [v17 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CallDBManagerClient willMoveCallsFromTempDatabase];
  }

  v16 = 0;
LABEL_34:

  return v16;
}

- (CallDBManagerClient)initWithProcessHandle:(id)a3
{
  v7.receiver = self;
  v7.super_class = CallDBManagerClient;
  v3 = [(CallDBManager *)&v7 init];
  if (v3)
  {
    v4 = +[CHProcessHandle processHandle];
    currentProcessHandle = v3->_currentProcessHandle;
    v3->_currentProcessHandle = v4;
  }

  return v3;
}

- (void)createHelperConnection
{
  v3 = [(CallDBManagerClient *)self helperConnection];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [v4 initWithMachServiceName:kSyncHelperServiceIdentifier options:0];
    [(CallDBManagerClient *)self setHelperConnection:v5];

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F43B38F0];
    v7 = [(CallDBManagerClient *)self helperConnection];
    [v7 setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__CallDBManagerClient_createHelperConnection__block_invoke;
    v13[3] = &unk_1E81DBF80;
    objc_copyWeak(&v14, &location);
    v8 = [(CallDBManagerClient *)self helperConnection];
    [v8 setInterruptionHandler:v13];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CallDBManagerClient_createHelperConnection__block_invoke_64;
    v11[3] = &unk_1E81DBF80;
    objc_copyWeak(&v12, &location);
    v9 = [(CallDBManagerClient *)self helperConnection];
    [v9 setInvalidationHandler:v11];

    v10 = [(CallDBManagerClient *)self helperConnection];
    [v10 resume];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __45__CallDBManagerClient_createHelperConnection__block_invoke(uint64_t a1)
{
  v2 = +[CHLogServer sharedInstance];
  v3 = [v2 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__CallDBManagerClient_createHelperConnection__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = [v6 currentProcessHandle];
    v8 = [v7 hasCloudSyncEntitlement];

    if (v8)
    {
      v9 = +[CHLogServer sharedInstance];
      v10 = [v9 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect to the SyncHelper", v13, 2u);
      }

      [v6 createDataStore];
      [v6 moveCallsFromTempDatabase];
    }

    else
    {
      v11 = +[CHLogServer sharedInstance];
      v12 = [v11 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __45__CallDBManagerClient_createHelperConnection__block_invoke_cold_2();
      }

      [v6 setHelperConnection:0];
    }

    objc_sync_exit(v6);
  }
}

void __45__CallDBManagerClient_createHelperConnection__block_invoke_64(uint64_t a1)
{
  v2 = +[CHLogServer sharedInstance];
  v3 = [v2 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__CallDBManagerClient_createHelperConnection__block_invoke_64_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    [v6 setHelperConnection:0];
    objc_sync_exit(v6);
  }
}

- (void)createTemporary
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"ch.calldbm"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CallDBManagerClient *)self tempDBLocation:0];
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "createTemporary client: %{public}@", buf, 0xCu);
  }

  v29 = 0;
  v7 = [(CallDBManagerClient *)self tempDBLocation:&v29];
  if (v29 == 1)
  {
    v16 = +[CHLogServer sharedInstance];
    v17 = [v16 logHandleForDomain:"ch.calldbm"];

    v18 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CallDBManagerClient *)&v29 createPermanent];
    }

    [(CallDBManagerClient *)self pokeSyncHelperToInitDB];
  }

  else if (v29)
  {
    v19 = +[CHLogServer sharedInstance];
    v20 = [v19 logHandleForDomain:"ch.calldbm"];

    v21 = v20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = getDBLErrorCodeAsString(v29);
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_1C3E90000, v21, OS_LOG_TYPE_DEFAULT, "Got error code: %{public}@ while getting temporary data store database location", buf, 0xCu);
    }
  }

  else
  {
    v8 = [CallDBMetaInfo alloc];
    v9 = [v7 URLByDeletingLastPathComponent];
    v10 = [(CallDBMetaInfo *)v8 initWithURL:v9];

    v11 = [(CallDBMetaInfo *)v10 readDatabaseVersion:1];
    if (v11 == 42)
    {
      v12 = +[CallDBManager modelURL];
      v13 = [DBManager isDataStoreAtURLInitialized:v7 withModelAtURL:v12];

      if (v13)
      {
        v14 = +[CHLogServer sharedInstance];
        v15 = [v14 logHandleForDomain:"ch.calldbm"];

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CallDBManagerClient createTemporary];
        }
      }

      else
      {
        v27 = [(CallDBManager *)self dbManager];
        v28 = [v27 addDataStoreAtLocation:v7 isEncrypted:0];

        if (v28)
        {
          [(CallDBManager *)self handleTemporaryCreated];
        }
      }
    }

    else
    {
      v23 = v11;
      v24 = +[CHLogServer sharedInstance];
      v25 = [v24 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v31 = v23;
        v32 = 2048;
        v33 = 42;
        _os_log_impl(&dword_1C3E90000, v25, OS_LOG_TYPE_DEFAULT, "Temporary database version: %ld is not the same as current version: %ld", buf, 0x16u);
      }

      [(CallDBManagerClient *)self pokeSyncHelperToInitDB];
      [(CallDBManager *)self setNotifyDataStoreChangeReason:1];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)validatePermDatabase
{
  v8 = 0;
  v2 = [(CallDBManagerClient *)self permDBLocation:&v8];
  v3 = 0;
  if (!v8)
  {
    v4 = [CallDBMetaInfo alloc];
    v5 = [v2 URLByDeletingLastPathComponent];
    v6 = [(CallDBMetaInfo *)v4 initWithURL:v5];

    v3 = [(CallDBMetaInfo *)v6 validateInfo:0];
  }

  return v3;
}

- (BOOL)validateTempDatabase
{
  v8 = 0;
  v2 = [(CallDBManagerClient *)self tempDBLocation:&v8];
  v3 = 0;
  if (!v8)
  {
    v4 = [CallDBMetaInfo alloc];
    v5 = [v2 URLByDeletingLastPathComponent];
    v6 = [(CallDBMetaInfo *)v4 initWithURL:v5];

    v3 = [(CallDBMetaInfo *)v6 validateInfo:1];
  }

  return v3;
}

- (void)pokeSyncHelperToInitDB
{
  [(CallDBManagerClient *)self createHelperConnection];
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "Poking sync helper to initialize data store", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5 = [(CallDBManagerClient *)self helperConnection];
  v6 = [v5 remoteObjectProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CallDBManagerClient_pokeSyncHelperToInitDB__block_invoke;
  v7[3] = &unk_1E81DBFA8;
  objc_copyWeak(&v8, buf);
  [v6 bootUp:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __45__CallDBManagerClient_pokeSyncHelperToInitDB__block_invoke(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = getBootUpResultAsString(a2);
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Boot up result: %{public}@", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (!a2)
  {
    v11 = WeakRetained;
    objc_sync_enter(v11);
    if (([v11 shouldCreateTemporary] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ([v11 validatePermDatabase])
    {
      [v11 createTemporary];
      goto LABEL_16;
    }

    v14 = +[CHLogServer sharedInstance];
    v13 = [v14 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __45__CallDBManagerClient_pokeSyncHelperToInitDB__block_invoke_cold_1();
    }

    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v10 = WeakRetained;
    objc_sync_enter(v10);
    if (([v10 shouldCreatePermanent] & 1) == 0)
    {
LABEL_16:
      objc_sync_exit(v9);

      goto LABEL_17;
    }

    if ([v10 validatePermDatabase])
    {
      [v10 createPermanent];
      goto LABEL_16;
    }

    v12 = +[CHLogServer sharedInstance];
    v13 = [v12 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __45__CallDBManagerClient_pokeSyncHelperToInitDB__block_invoke_cold_2();
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)permDBLocation:(unsigned __int8 *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "CallDBManagerClient: fetching permDBURL", &v11, 2u);
  }

  v6 = [CallDBManager getDBLocationIsSandboxed:1 isTemporary:0 error:a3];
  v7 = +[CHLogServer sharedInstance];
  v8 = [v7 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "CallDBManagerClient: permDBURL: %@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)willMoveCallsFromTempDatabase
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __45__CallDBManagerClient_createHelperConnection__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end