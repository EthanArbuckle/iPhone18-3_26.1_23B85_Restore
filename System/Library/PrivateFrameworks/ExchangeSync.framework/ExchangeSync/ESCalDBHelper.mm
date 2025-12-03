@interface ESCalDBHelper
+ (void)setMainDatabasePath:(id)path containerProvider:(id)provider;
- (BOOL)_saveDatabase:(CalDatabase *)database path:(id)path fushCaches:(BOOL)caches;
- (BOOL)closeDatabaseForAccountID:(id)d save:(BOOL)save;
- (BOOL)closeDatabaseForAuxDatabaseRef:(void *)ref save:(BOOL)save;
- (BOOL)saveDatabaseForAccountID:(id)d flushCaches:(BOOL)caches;
- (BOOL)saveDatabaseForAuxDatabaseRef:(void *)ref flushCaches:(BOOL)caches;
- (CalDatabase)_cachedDatabaseForAccountID:(id)d path:(id *)path;
- (CalDatabase)_cachedDatabaseForAuxDatabaseRef:(void *)ref path:(id *)path;
- (CalDatabase)databaseForAccountID:(id)d;
- (CalDatabase)databaseForAuxDatabaseRef:(void *)ref;
- (ESCalDBHelper)initWithDatabaseInitOptions:(int)options;
- (id)_mainDatabasePath;
- (id)_pathForAccountID:(id)d createdDatabase:(CalDatabase *)database;
- (id)allOpenDatabases;
- (void)_closeDatabase:(CalDatabase *)database path:(id)path;
- (void)_openDatabaseForPath:(id)path clientID:(id)d createdDatabaseToConsume:(CalDatabase *)consume;
- (void)_registerForCalendarYieldNotificationsForDB:(CalDatabase *)b;
- (void)openDatabaseForAccountID:(id)d clientID:(id)iD;
- (void)openDatabaseForAuxDatabaseRef:(void *)ref clientID:(id)d;
@end

@implementation ESCalDBHelper

- (ESCalDBHelper)initWithDatabaseInitOptions:(int)options
{
  v17.receiver = self;
  v17.super_class = ESCalDBHelper;
  v4 = [(ESCalDBHelper *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_initOptions = options;
    v6 = dispatch_queue_create("com.apple.dataaccessd.calDBQueue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = objc_opt_new();
    containerPathsByAccountID = v5->_containerPathsByAccountID;
    v5->_containerPathsByAccountID = v8;

    v10 = objc_opt_new();
    containerPathsByAuxDatabaseID = v5->_containerPathsByAuxDatabaseID;
    v5->_containerPathsByAuxDatabaseID = v10;

    v12 = objc_opt_new();
    databasesByContainerPath = v5->_databasesByContainerPath;
    v5->_databasesByContainerPath = v12;

    v14 = objc_opt_new();
    connectionCountsByPath = v5->_connectionCountsByPath;
    v5->_connectionCountsByPath = v14;
  }

  return v5;
}

- (id)_mainDatabasePath
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_cachedMainDatabasePath)
  {
    v3 = objc_opt_class();
    v4 = _mainDatabasePathOverride;
    v5 = _mainDatabasePathOverride;
    if (!_mainDatabasePathOverride)
    {
      v5 = CalDatabaseCopyDirectoryPath();
    }

    v6 = [v3 _canonicalizePath:v5];
    cachedMainDatabasePath = self->_cachedMainDatabasePath;
    self->_cachedMainDatabasePath = v6;

    if (!v4)
    {
    }
  }

  v8 = self->_cachedMainDatabasePath;

  return v8;
}

- (void)openDatabaseForAccountID:(id)d clientID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ESCalDBHelper_openDatabaseForAccountID_clientID___block_invoke;
  block[3] = &unk_278FC6008;
  v12 = dCopy;
  selfCopy = self;
  v14 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(queue, block);
}

void __51__ESCalDBHelper_openDatabaseForAccountID_clientID___block_invoke(uint64_t a1)
{
  v6 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 _pathForAccountID:v3 createdDatabase:&v6];
    v5 = v6;
  }

  else
  {
    v4 = [v2 _mainDatabasePath];
    v5 = 0;
  }

  [*(a1 + 40) _openDatabaseForPath:v4 clientID:*(a1 + 48) createdDatabaseToConsume:v5];
}

- (id)_pathForAccountID:(id)d createdDatabase:(CalDatabase *)database
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_containerPathsByAccountID objectForKeyedSubscript:dCopy];
  if (!v7)
  {
    initOptions = self->_initOptions;
    v9 = CalDatabaseCreateWithOptionsMainDatabaseDirectoryAndContainerProviderForAccountID();
    if (v9)
    {
      v10 = v9;
      v11 = CalDatabaseCopyDirectoryPathForDatabase();
      v12 = v11;
      if (database)
      {
        *database = v10;
        if (v11)
        {
LABEL_5:
          v7 = [objc_opt_class() _canonicalizePath:v12];

          [(NSMutableDictionary *)self->_containerPathsByAccountID setObject:v7 forKeyedSubscript:dCopy];
          goto LABEL_10;
        }
      }

      else
      {
        CFRelease(v10);
        if (v12)
        {
          goto LABEL_5;
        }
      }
    }

    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v14))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&dword_24A097000, v13, v14, "Failed to determine database directory path for accountID: %{public}@", &v17, 0xCu);
    }

    v7 = 0;
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)openDatabaseForAuxDatabaseRef:(void *)ref clientID:(id)d
{
  dCopy = d;
  if (!ref)
  {
    [ESCalDBHelper openDatabaseForAuxDatabaseRef:clientID:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ESCalDBHelper_openDatabaseForAuxDatabaseRef_clientID___block_invoke;
  block[3] = &unk_278FC6030;
  v10 = dCopy;
  refCopy = ref;
  block[4] = self;
  v8 = dCopy;
  dispatch_sync(queue, block);
}

void __56__ESCalDBHelper_openDatabaseForAuxDatabaseRef_clientID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:CalAuxDatabaseGetUID()];
  v4 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
LABEL_3:
    [*(a1 + 32) _openDatabaseForPath:v5 clientID:*(a1 + 40) createdDatabaseToConsume:v6];

    goto LABEL_4;
  }

  v8 = *(a1 + 48);
  CalGetDatabaseForRecord();
  v9 = *(a1 + 48);
  v10 = *(*(a1 + 32) + 16);
  v6 = CalDatabaseCreateWithAuxDatabaseRef();
  if (v6)
  {
    v11 = CalDatabaseCopyDirectoryPathForDatabase();
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 32);
      v5 = [objc_opt_class() _canonicalizePath:v12];

      [*(*(a1 + 32) + 40) setObject:v5 forKeyedSubscript:v3];
      goto LABEL_3;
    }
  }

  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = 138543362;
    v17 = v3;
    _os_log_impl(&dword_24A097000, v14, v15, "Failed to determine database directory path for auxDatabaseID: %{public}@", &v16, 0xCu);
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_4:

  v7 = *MEMORY[0x277D85DE8];
}

- (id)allOpenDatabases
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ESCalDBHelper_allOpenDatabases__block_invoke;
  v5[3] = &unk_278FC6058;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__ESCalDBHelper_allOpenDatabases__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (CalDatabase)databaseForAccountID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ESCalDBHelper_databaseForAccountID___block_invoke;
  block[3] = &unk_278FC6080;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

CFTypeRef __38__ESCalDBHelper_databaseForAccountID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _cachedDatabaseForAccountID:*(a1 + 40) path:0];
  result = *(*(*(a1 + 48) + 8) + 24);
  if (result)
  {
    v3 = CFRetain(result);

    return CFAutorelease(v3);
  }

  return result;
}

- (CalDatabase)databaseForAuxDatabaseRef:(void *)ref
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ESCalDBHelper_databaseForAuxDatabaseRef___block_invoke;
  block[3] = &unk_278FC60A8;
  block[4] = self;
  block[5] = &v7;
  block[6] = ref;
  dispatch_sync(queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __43__ESCalDBHelper_databaseForAuxDatabaseRef___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cachedDatabaseForAuxDatabaseRef:*(a1 + 48) path:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)saveDatabaseForAccountID:(id)d flushCaches:(BOOL)caches
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ESCalDBHelper_saveDatabaseForAccountID_flushCaches___block_invoke;
  v10[3] = &unk_278FC60D0;
  v10[4] = self;
  v11 = dCopy;
  v12 = &v14;
  cachesCopy = caches;
  v8 = dCopy;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __54__ESCalDBHelper_saveDatabaseForAccountID_flushCaches___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 + 8);
  v8 = 0;
  v5 = [v2 _cachedDatabaseForAccountID:v4 path:&v8];
  v6 = v8;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _saveDatabase:v5 path:v6 fushCaches:*(a1 + 56)];
  }

  else
  {
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __54__ESCalDBHelper_saveDatabaseForAccountID_flushCaches___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)saveDatabaseForAuxDatabaseRef:(void *)ref flushCaches:(BOOL)caches
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ESCalDBHelper_saveDatabaseForAuxDatabaseRef_flushCaches___block_invoke;
  v7[3] = &unk_278FC60F8;
  v7[5] = &v9;
  v7[6] = ref;
  v7[4] = self;
  cachesCopy = caches;
  dispatch_sync(queue, v7);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __59__ESCalDBHelper_saveDatabaseForAuxDatabaseRef_flushCaches___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 + 16);
  v8 = 0;
  v5 = [v2 _cachedDatabaseForAuxDatabaseRef:v4 path:&v8];
  v6 = v8;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _saveDatabase:v5 path:v6 fushCaches:*(a1 + 56)];
  }

  else
  {
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __59__ESCalDBHelper_saveDatabaseForAuxDatabaseRef_flushCaches___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)closeDatabaseForAccountID:(id)d save:(BOOL)save
{
  saveCopy = save;
  dCopy = d;
  v7 = !saveCopy || [(ESCalDBHelper *)self saveDatabaseForAccountID:dCopy flushCaches:0];
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ESCalDBHelper_closeDatabaseForAccountID_save___block_invoke;
  v11[3] = &unk_278FC6120;
  v11[4] = self;
  v12 = dCopy;
  v9 = dCopy;
  dispatch_sync(queue, v11);

  return v7;
}

void __48__ESCalDBHelper_closeDatabaseForAccountID_save___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = *(v2 + 8);
  v7 = 0;
  v4 = [v1 _cachedDatabaseForAccountID:v3 path:&v7];
  v5 = v7;
  if (v4)
  {
    [*v2 _closeDatabase:v4 path:v5];
  }

  else
  {
    v6 = DALoggingwithCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __48__ESCalDBHelper_closeDatabaseForAccountID_save___block_invoke_cold_1();
    }
  }
}

- (BOOL)closeDatabaseForAuxDatabaseRef:(void *)ref save:(BOOL)save
{
  v6 = !save || [(ESCalDBHelper *)self saveDatabaseForAuxDatabaseRef:ref flushCaches:0];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ESCalDBHelper_closeDatabaseForAuxDatabaseRef_save___block_invoke;
  v9[3] = &unk_278FC6148;
  v9[4] = self;
  v9[5] = ref;
  dispatch_sync(queue, v9);
  return v6;
}

void __53__ESCalDBHelper_closeDatabaseForAuxDatabaseRef_save___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = *(v2 + 8);
  v7 = 0;
  v4 = [v1 _cachedDatabaseForAuxDatabaseRef:v3 path:&v7];
  v5 = v7;
  if (v4)
  {
    [*v2 _closeDatabase:v4 path:v5];
  }

  else
  {
    v6 = DALoggingwithCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __53__ESCalDBHelper_closeDatabaseForAuxDatabaseRef_save___block_invoke_cold_1();
    }
  }
}

- (void)_openDatabaseForPath:(id)path clientID:(id)d createdDatabaseToConsume:(CalDatabase *)consume
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  consumeCopy2 = [(NSMutableDictionary *)self->_databasesByContainerPath objectForKeyedSubscript:pathCopy];

  v12 = MEMORY[0x277D03988];
  if (dCopy && consumeCopy2)
  {
    if (([(CalDatabase *)dCopy isEqual:self->_clientIdentifier]& 1) == 0)
    {
      [(ESCalDBHelper *)&self->_clientIdentifier _openDatabaseForPath:a2 clientID:self createdDatabaseToConsume:dCopy];
    }

    goto LABEL_6;
  }

  if (consumeCopy2)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v21 = DALoggingwithCategory();
  v22 = *(v12 + 7);
  if (os_log_type_enabled(v21, v22))
  {
    v28 = 138543362;
    consumeCopy = dCopy;
    _os_log_impl(&dword_24A097000, v21, v22, "Creating calendar database for clientID %{public}@", &v28, 0xCu);
  }

  v13 = consume != 0;
  if (consume)
  {
    v23 = DALoggingwithCategory();
    if (os_log_type_enabled(v23, v22))
    {
      v28 = 134349056;
      consumeCopy = consume;
      _os_log_impl(&dword_24A097000, v23, v22, "Using already-created calendar database %{public}p", &v28, 0xCu);
    }

    consumeCopy2 = consume;
  }

  else
  {
    _mainDatabasePath = [(ESCalDBHelper *)self _mainDatabasePath];
    [_mainDatabasePath isEqualToString:pathCopy];

    v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    initOptions = self->_initOptions;
    consumeCopy2 = CalDatabaseCreateWithOptionsDatabaseDirectoryURLAndContainerProvider();
    v26 = DALoggingwithCategory();
    if (os_log_type_enabled(v26, v22))
    {
      v28 = 134349056;
      consumeCopy = consumeCopy2;
      _os_log_impl(&dword_24A097000, v26, v22, "Created calendar database %{public}p", &v28, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_databasesByContainerPath setObject:consumeCopy2 forKeyedSubscript:pathCopy];
  [(ESCalDBHelper *)self _registerForCalendarYieldNotificationsForDB:consumeCopy2];
  if (![(CalDatabase *)dCopy length])
  {
    v27 = @"com.apple.dataaccessd.changeinserter";

    dCopy = v27;
  }

  CalDatabaseSetClientIdentifier();
  objc_storeStrong(&self->_clientIdentifier, dCopy);
  CalDatabaseSetPropertyModificationLoggingEnabled();
  CFRelease(consumeCopy2);
LABEL_7:
  [(NSCountedSet *)self->_connectionCountsByPath addObject:pathCopy];
  v14 = [(NSCountedSet *)self->_connectionCountsByPath countForObject:pathCopy];
  v15 = DALoggingwithCategory();
  v16 = *(v12 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    v28 = 134218498;
    consumeCopy = consumeCopy2;
    v30 = 2114;
    v31 = dCopy;
    v32 = 2048;
    v33 = v14;
    _os_log_impl(&dword_24A097000, v15, v16, "Cal database %p opened for %{public}@. Connection count is now %lu", &v28, 0x20u);
  }

  if (v14 >= 2)
  {
    v17 = DALoggingwithCategory();
    v18 = *(v12 + 6);
    if (os_log_type_enabled(v17, v18))
    {
      v28 = 134217984;
      consumeCopy = v14;
      _os_log_impl(&dword_24A097000, v17, v18, "connectionCount is > 1, at %lu", &v28, 0xCu);
    }
  }

  if (consume)
  {
    v19 = v13;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    CFRelease(consume);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (CalDatabase)_cachedDatabaseForAccountID:(id)d path:(id *)path
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (dCopy)
  {
    v7 = [(ESCalDBHelper *)self _pathForAccountID:dCopy createdDatabase:0];
    if (!v7)
    {
LABEL_14:
      v14 = 0;
      if (!path)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = objc_opt_class();
    v9 = _mainDatabasePathOverride;
    v10 = _mainDatabasePathOverride;
    if (!_mainDatabasePathOverride)
    {
      v10 = CalDatabaseCopyDirectoryPath();
    }

    v11 = [v8 _canonicalizePath:v10];
    v7 = v11;
    if (v9)
    {
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    else
    {

      if (!v7)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v12, v13))
  {
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_24A097000, v12, v13, "DatabasesByContainerPath: Getting calendar database with path %@", &v18, 0xCu);
  }

  v14 = [(NSMutableDictionary *)self->_databasesByContainerPath objectForKeyedSubscript:v7];

  if (path)
  {
LABEL_11:
    v15 = v7;
    *path = v7;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (CalDatabase)_cachedDatabaseForAuxDatabaseRef:(void *)ref path:(id *)path
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!ref)
  {
    v12 = 0;
    goto LABEL_10;
  }

  UID = CalAuxDatabaseGetUID();
  containerPathsByAuxDatabaseID = self->_containerPathsByAuxDatabaseID;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:UID];
  ref = [(NSMutableDictionary *)containerPathsByAuxDatabaseID objectForKeyedSubscript:v9];

  if (!ref)
  {
    v12 = 0;
    if (!path)
    {
      goto LABEL_10;
    }

LABEL_9:
    refCopy = ref;
    *path = ref;
    goto LABEL_10;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v10, v11))
  {
    v16 = 138412290;
    refCopy2 = ref;
    _os_log_impl(&dword_24A097000, v10, v11, "DatabasesByContainerPath: Getting aux calendar database with path %@", &v16, 0xCu);
  }

  v12 = [(NSMutableDictionary *)self->_databasesByContainerPath objectForKeyedSubscript:ref];

  if (path)
  {
    goto LABEL_9;
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_saveDatabase:(CalDatabase *)database path:(id)path fushCaches:(BOOL)caches
{
  cachesCopy = caches;
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_queue);
  v9 = +[ESLocalDBWatcher sharedDBWatcher];
  v10 = [v9 lastSavedCalSequenceNumberForDatabaseInContainer:pathCopy];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CF7708], 0, 0, 1u);
  mEMORY[0x277D03790] = [MEMORY[0x277D03790] sharedGateKeeper];
  [mEMORY[0x277D03790] claimedOwnershipOfDataclasses:4];

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = &stru_285D37560;
    if (cachesCopy)
    {
      v16 = @", and flushing caches";
    }

    else
    {
      v16 = &stru_285D37560;
    }

    if (v9)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@" old sequence %d", v10];
    }

    *buf = 134218498;
    databaseCopy3 = database;
    v28 = 2114;
    v29 = v16;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&dword_24A097000, v13, v14, "Saving calendar database %p%{public}@%{public}@.", buf, 0x20u);
    if (v9)
    {
    }
  }

  if (v9)
  {
    [v9 setLastSavedCalSequenceNumber:CalDatabaseGetSequenceNumber() forDatabaseInContainer:pathCopy];
  }

  if (cachesCopy)
  {
    v17 = CalDatabaseSaveAndFlushCaches();
    [(ESCalDBHelper *)self _registerForCalendarYieldNotificationsForDB:database];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"CalDBIsClosing" object:0];

    if (v17)
    {
LABEL_13:
      v19 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    v20 = CalDatabaseSave();
    [(ESCalDBHelper *)self _registerForCalendarYieldNotificationsForDB:database];
    if (v20)
    {
      goto LABEL_13;
    }
  }

  v21 = DALoggingwithCategory();
  if (os_log_type_enabled(v21, v14))
  {
    v22 = &stru_285D37560;
    if (cachesCopy)
    {
      v22 = @", and flushing caches";
    }

    *buf = 134218242;
    databaseCopy3 = database;
    v28 = 2114;
    v29 = v22;
    _os_log_impl(&dword_24A097000, v21, v14, "Saving calendar database %p%{public}@.  Save failed", buf, 0x16u);
  }

  if (v9)
  {
    v23 = DALoggingwithCategory();
    if (os_log_type_enabled(v23, v14))
    {
      *buf = 134218240;
      databaseCopy3 = database;
      v28 = 1024;
      LODWORD(v29) = v10;
      _os_log_impl(&dword_24A097000, v23, v14, "Resetting calendar database %p sequence %d", buf, 0x12u);
    }

    [v9 setLastSavedCalSequenceNumber:v10 forDatabaseInContainer:pathCopy];
  }

  v19 = 0;
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_closeDatabase:(CalDatabase *)database path:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSCountedSet *)self->_connectionCountsByPath countForObject:pathCopy];
  if (!v7)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v15))
    {
      v17 = 138543362;
      databaseCopy = pathCopy;
      _os_log_impl(&dword_24A097000, v14, v15, "_closeDatabase called too many times with path: %{public}@", &v17, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = v7;
  [(NSCountedSet *)self->_connectionCountsByPath removeObject:pathCopy];
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v9, v10))
  {
    clientIdentifier = self->_clientIdentifier;
    v17 = 134218498;
    databaseCopy = database;
    v19 = 2048;
    v20 = v8 - 1;
    v21 = 2114;
    v22 = clientIdentifier;
    _os_log_impl(&dword_24A097000, v9, v10, "Decrementing database %p reference count. connectionCount is %lu. Client identifier is %{public}@", &v17, 0x20u);
  }

  if (v8 == 1)
  {
    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v10))
    {
      v17 = 138412290;
      databaseCopy = pathCopy;
      _os_log_impl(&dword_24A097000, v12, v10, "DatabasesByContainerPath: Destroying calendar database for path %@", &v17, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"CalDBIsClosing" object:0];

    CalDatabaseRegisterYieldBlock();
    [(NSMutableDictionary *)self->_databasesByContainerPath setObject:0 forKeyedSubscript:pathCopy];
    if (![(NSCountedSet *)self->_connectionCountsByPath count])
    {
      v14 = self->_clientIdentifier;
      self->_clientIdentifier = 0;
LABEL_11:
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_registerForCalendarYieldNotificationsForDB:(CalDatabase *)b
{
  if (b)
  {
    CalDatabaseRegisterYieldBlock();
  }
}

void __61__ESCalDBHelper__registerForCalendarYieldNotificationsForDB___block_invoke(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24A097000, v2, v3, "Someone asked us to yield the calendar database. Bumping up all clients to UI priority", buf, 2u);
  }

  v4 = [MEMORY[0x277D037B8] sharedManager];
  [v4 bumpDataclassesToUIPriority:20];

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRetain(v5);
    v6 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ESCalDBHelper__registerForCalendarYieldNotificationsForDB___block_invoke_30;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __61__ESCalDBHelper__registerForCalendarYieldNotificationsForDB___block_invoke_30(uint64_t a1)
{
  v2 = *(a1 + 32);
  CalDatabaseRegisterYieldBlock();
  v3 = *(a1 + 32);

  CFRelease(v3);
}

+ (void)setMainDatabasePath:(id)path containerProvider:(id)provider
{
  pathCopy = path;
  providerCopy = provider;
  v7 = _mainDatabasePathOverride;
  _mainDatabasePathOverride = pathCopy;
  v9 = pathCopy;

  v8 = _containerProvider;
  _containerProvider = providerCopy;
}

- (void)openDatabaseForAuxDatabaseRef:clientID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v1 file:@"ESCalDBHelper.m" lineNumber:87 description:{@"NULL auxDatabaseRef when trying to open aux database for client: %@", v0}];
}

void __54__ESCalDBHelper_saveDatabaseForAccountID_flushCaches___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4(v2);
  v4 = *v0;
  v5 = OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __59__ESCalDBHelper_saveDatabaseForAuxDatabaseRef_flushCaches___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4(v2);
  v4 = *v0;
  v5 = v3;
  CalAuxDatabaseGetUID();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

void __48__ESCalDBHelper_closeDatabaseForAccountID_save___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4(v2);
  v4 = *v0;
  v5 = OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __53__ESCalDBHelper_closeDatabaseForAuxDatabaseRef_save___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4(v2);
  v4 = *v0;
  v5 = v3;
  CalAuxDatabaseGetUID();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_openDatabaseForPath:(uint64_t)a3 clientID:(uint64_t)a4 createdDatabaseToConsume:.cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"ESCalDBHelper.m" lineNumber:225 description:{@"Client identifier is different. Expected %@ but got %@", *a1, a4}];
}

@end