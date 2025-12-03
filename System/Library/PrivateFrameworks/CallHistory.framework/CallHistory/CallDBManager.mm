@interface CallDBManager
+ (id)getDBLocationIsSandboxed:(BOOL)sandboxed isTemporary:(BOOL)temporary error:(unsigned __int8 *)error;
+ (id)modelURL;
- (BOOL)notifyDataStoreChanged;
- (BOOL)shouldCreatePermanent;
- (CallDBManager)init;
- (CallDBManager)initWithDeviceObserver:(id)observer;
- (id)createManagedObjectContext;
- (id)permDBLocation:(unsigned __int8 *)location;
- (id)tempDBLocation:(unsigned __int8 *)location;
- (void)createDataStore;
- (void)createPermanent;
- (void)createTemporary;
- (void)didChangeBootLockEnabledForDeviceObserver:(id)observer;
- (void)handlePermanentCreated;
- (void)moveCallsFromTempDatabase;
@end

@implementation CallDBManager

- (CallDBManager)init
{
  v3 = objc_alloc_init(CHDeviceObserver);
  v4 = [(CallDBManager *)self initWithDeviceObserver:v3];

  return v4;
}

- (id)createManagedObjectContext
{
  dbManager = [(CallDBManager *)self dbManager];
  createManagedObjectContext = [dbManager createManagedObjectContext];

  return createManagedObjectContext;
}

- (BOOL)shouldCreatePermanent
{
  v6 = 0;
  v3 = [(CallDBManager *)self permDBLocation:&v6];
  v4 = 1;
  if (v3 && !v6 && [(CallDBManager *)self dataStoreType])
  {
    v4 = [(CallDBManager *)self dataStoreType]== 2;
  }

  return v4;
}

+ (id)modelURL
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLForResource:@"CallHistory" withExtension:@"momd"];
  }

  else
  {
    v5 = +[CHLogServer sharedInstance];
    v6 = [v5 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[(CallDBManager *)v6];
    }

    v4 = 0;
  }

  return v4;
}

- (void)createDataStore
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceObserver = [(CallDBManager *)selfCopy deviceObserver];
  isBootLockEnabled = [deviceObserver isBootLockEnabled];

  if (isBootLockEnabled)
  {
    if ([(CallDBManager *)selfCopy shouldCreateTemporary])
    {
      dbManager = [(CallDBManager *)selfCopy dbManager];
      fPersistentStoreCoordinator = [dbManager fPersistentStoreCoordinator];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __32__CallDBManager_createDataStore__block_invoke;
      v18[3] = &unk_1E81DBF38;
      v18[4] = selfCopy;
      [fPersistentStoreCoordinator performBlockAndWait:v18];

      v7 = +[CHLogServer sharedInstance];
      v8 = [v7 logHandleForDomain:"ch.calldbm"];

      v9 = v8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = getBoolAsString([(CallDBManager *)selfCopy dataStoreType]== 0);
        *buf = 138543362;
        v20 = v10;
        _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "Initialized temporary data store: %{public}@", buf, 0xCu);
      }

LABEL_8:
    }
  }

  else if ([(CallDBManager *)selfCopy shouldCreatePermanent])
  {
    dbManager2 = [(CallDBManager *)selfCopy dbManager];
    fPersistentStoreCoordinator2 = [dbManager2 fPersistentStoreCoordinator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __32__CallDBManager_createDataStore__block_invoke_42;
    v17[3] = &unk_1E81DBF38;
    v17[4] = selfCopy;
    [fPersistentStoreCoordinator2 performBlockAndWait:v17];

    v13 = +[CHLogServer sharedInstance];
    v14 = [v13 logHandleForDomain:"ch.calldbm"];

    v9 = v14;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = getBoolAsString([(CallDBManager *)selfCopy dataStoreType]== 1);
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "Initialized permanent data store: %{public}@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handlePermanentCreated
{
  dbManager = [(CallDBManager *)self dbManager];
  v4 = [(CallDBManager *)self tempDBLocation:0];
  [dbManager removeDataStoreAtLocation:v4];

  [(CallDBManager *)self setDataStoreType:1];

  [(CallDBManager *)self moveCallsFromTempDatabase];
}

- (BOOL)notifyDataStoreChanged
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStoreType = [(CallDBManager *)selfCopy dataStoreType];
  if (dataStoreType)
  {
    if (dataStoreType != 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (![(CallDBManager *)selfCopy notifyDataStoreChangeReason])
    {
      v5 = 1;
      goto LABEL_11;
    }

    v4 = [(CallDBManager *)selfCopy notifyDataStoreChangeReason]== 2;
  }

  else
  {
    v4 = [(CallDBManager *)selfCopy notifyDataStoreChangeReason]== 1;
  }

  v5 = v4;
LABEL_11:
  objc_sync_exit(selfCopy);

  return v5;
}

- (CallDBManager)initWithDeviceObserver:(id)observer
{
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = CallDBManager;
  v6 = [(CallDBManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_dataStoreType = 2;
    v8 = +[CallDBManager modelURL];
    v9 = [DBManager instanceWithModelURL:v8];
    dbManager = v7->_dbManager;
    v7->_dbManager = v9;

    v7->_notifyDataStoreChangeReason = 3;
    if ([observerCopy isBootLockEnabled])
    {
      objc_storeStrong(&v7->_deviceObserver, observer);
      [(CHDelegateManager *)v7->_deviceObserver addDelegate:v7 queue:MEMORY[0x1E69E96A0]];
    }
  }

  return v7;
}

- (void)createPermanent
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1C3E90000, v2, v3, "%{public}@ in a subclass is not overridden", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)createTemporary
{
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"ch.calldbm"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CallDBManager *)a2 createPermanent];
  }
}

- (id)tempDBLocation:(unsigned __int8 *)location
{
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CallDBManager *)a2 createPermanent];
  }

  return 0;
}

- (id)permDBLocation:(unsigned __int8 *)location
{
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CallDBManager *)a2 createPermanent];
  }

  return 0;
}

- (void)moveCallsFromTempDatabase
{
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"ch.calldbm"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CallDBManager *)a2 createPermanent];
  }
}

+ (id)getDBLocationIsSandboxed:(BOOL)sandboxed isTemporary:(BOOL)temporary error:(unsigned __int8 *)error
{
  temporaryCopy = temporary;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (sandboxed)
  {
    getAppSupportDirSandboxed(@"CallHistoryDB", error);
  }

  else
  {
    getAppSupportDir();
  }
  v9 = ;
  v10 = @"CallHistory";
  if (temporaryCopy)
  {
    v10 = @"CallHistoryTemp";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@.%@", @"CallHistoryDB", v10, @"storedata"];
  v12 = [v9 URLByAppendingPathComponent:v11];

  path = [v12 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (error && (v14 & 1) == 0)
  {
    *error = 1;
  }

  return v12;
}

- (void)didChangeBootLockEnabledForDeviceObserver:(id)observer
{
  observerCopy = observer;
  [(CallDBManager *)self createDataStore];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceObserver = [(CallDBManager *)selfCopy deviceObserver];
  isBootLockEnabled = [deviceObserver isBootLockEnabled];

  if ((isBootLockEnabled & 1) == 0)
  {
    [(CallDBManager *)selfCopy setDeviceObserver:0];
  }

  objc_sync_exit(selfCopy);
}

@end