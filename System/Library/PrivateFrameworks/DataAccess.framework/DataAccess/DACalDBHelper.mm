@interface DACalDBHelper
- (BOOL)_saveDatabase:(CalDatabase *)database path:(id)path fushCaches:(BOOL)caches;
- (BOOL)closeDatabaseForAccountID:(id)d save:(BOOL)save;
- (BOOL)closeDatabaseForAuxDatabaseRef:(void *)ref save:(BOOL)save;
- (BOOL)saveDatabaseForAccountID:(id)d flushCaches:(BOOL)caches;
- (BOOL)saveDatabaseForAuxDatabaseRef:(void *)ref flushCaches:(BOOL)caches;
- (CalDatabase)_cachedDatabaseForAccountID:(id)d path:(id *)path;
- (CalDatabase)_cachedDatabaseForAuxDatabaseRef:(void *)ref path:(id *)path;
- (CalDatabase)databaseForAccountID:(id)d;
- (CalDatabase)databaseForAuxDatabaseRef:(void *)ref;
- (DACalDBHelper)initWithDatabaseInitOptions:(int)options mainDatabasePath:(id)path containerProvider:(id)provider;
- (id)_effectiveAndCanonicalMainDatabasePath;
- (id)_mainDatabasePath;
- (id)_pathForAccountID:(id)d createdDatabase:(CalDatabase *)database;
- (id)allOpenDatabases;
- (void)_closeDatabase:(CalDatabase *)database path:(id)path;
- (void)_openDatabaseForAccountID:(id)d auxDatabaseRef:(void *)ref path:(id)path clientID:(id)iD createdDatabaseToConsume:(CalDatabase *)consume;
- (void)_registerForCalendarYieldNotificationsForDB:(CalDatabase *)b;
- (void)openDatabaseForAccountID:(id)d clientID:(id)iD;
- (void)openDatabaseForAuxDatabaseRef:(void *)ref clientID:(id)d;
@end

@implementation DACalDBHelper

- (DACalDBHelper)initWithDatabaseInitOptions:(int)options mainDatabasePath:(id)path containerProvider:(id)provider
{
  pathCopy = path;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = DACalDBHelper;
  v11 = [(DACalDBHelper *)&v24 init];
  v12 = v11;
  if (v11)
  {
    v11->_initOptions = options;
    v13 = dispatch_queue_create("com.apple.dataaccessd.calDBQueue", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    v15 = objc_opt_new();
    containerPathsByAccountID = v12->_containerPathsByAccountID;
    v12->_containerPathsByAccountID = v15;

    v17 = objc_opt_new();
    containerPathsByAuxDatabaseID = v12->_containerPathsByAuxDatabaseID;
    v12->_containerPathsByAuxDatabaseID = v17;

    v19 = objc_opt_new();
    databasesByContainerPath = v12->_databasesByContainerPath;
    v12->_databasesByContainerPath = v19;

    v21 = objc_opt_new();
    connectionCountsByPath = v12->_connectionCountsByPath;
    v12->_connectionCountsByPath = v21;

    objc_storeStrong(&v12->_mainDatabasePathOverride, path);
    objc_storeStrong(&v12->_containerProviderOverride, provider);
  }

  return v12;
}

- (id)_effectiveAndCanonicalMainDatabasePath
{
  v2 = self->_mainDatabasePathOverride;
  if (!v2)
  {
    v2 = CalDatabaseCopyDirectoryPath();
  }

  v3 = [objc_opt_class() _canonicalizePath:v2];

  return v3;
}

- (id)_mainDatabasePath
{
  dispatch_assert_queue_V2(self->_queue);
  cachedMainDatabasePath = self->_cachedMainDatabasePath;
  if (!cachedMainDatabasePath)
  {
    _effectiveAndCanonicalMainDatabasePath = [(DACalDBHelper *)self _effectiveAndCanonicalMainDatabasePath];
    v5 = self->_cachedMainDatabasePath;
    self->_cachedMainDatabasePath = _effectiveAndCanonicalMainDatabasePath;

    cachedMainDatabasePath = self->_cachedMainDatabasePath;
  }

  return cachedMainDatabasePath;
}

- (void)openDatabaseForAccountID:(id)d clientID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DACalDBHelper_openDatabaseForAccountID_clientID___block_invoke;
  block[3] = &unk_278F13108;
  v12 = dCopy;
  selfCopy = self;
  v14 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(queue, block);
}

void __51__DACalDBHelper_openDatabaseForAccountID_clientID___block_invoke(uint64_t a1)
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

  [*(a1 + 40) _openDatabaseForAccountID:*(a1 + 32) auxDatabaseRef:0 path:v4 clientID:*(a1 + 48) createdDatabaseToConsume:v5];
}

- (id)_pathForAccountID:(id)d createdDatabase:(CalDatabase *)database
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSMutableDictionary *)self->_containerPathsByAccountID objectForKeyedSubscript:dCopy];
  if (!v7)
  {
    if (self->_mainDatabasePathOverride)
    {
      v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    }

    else
    {
      v8 = 0;
    }

    v9 = [objc_alloc(MEMORY[0x277CF7520]) initWithDirectoryURL:v8];
    [v9 setOptions:self->_initOptions];
    if (self->_containerProviderOverride)
    {
      [v9 setDataContainerProvider:?];
    }

    v10 = CalDatabaseCreateWithConfigurationForAccountID();
    if (v10)
    {
      v11 = v10;
      v12 = CalDatabaseCopyDirectoryPathForDatabase();
      v13 = v12;
      if (database)
      {
        *database = v11;
        if (v12)
        {
LABEL_10:
          v7 = [objc_opt_class() _canonicalizePath:v13];

          [(NSMutableDictionary *)self->_containerPathsByAccountID setObject:v7 forKeyedSubscript:dCopy];
          goto LABEL_15;
        }
      }

      else
      {
        CFRelease(v11);
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v15))
    {
      v18 = 138543362;
      v19 = dCopy;
      _os_log_impl(&dword_24844D000, v14, v15, "Failed to determine database directory path for accountID: %{public}@", &v18, 0xCu);
    }

    v7 = 0;
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)openDatabaseForAuxDatabaseRef:(void *)ref clientID:(id)d
{
  dCopy = d;
  if (!ref)
  {
    [(DACalDBHelper *)a2 openDatabaseForAuxDatabaseRef:dCopy clientID:?];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DACalDBHelper_openDatabaseForAuxDatabaseRef_clientID___block_invoke;
  block[3] = &unk_278F13378;
  v11 = dCopy;
  refCopy = ref;
  block[4] = self;
  v9 = dCopy;
  dispatch_sync(queue, block);
}

void __56__DACalDBHelper_openDatabaseForAuxDatabaseRef_clientID___block_invoke(uint64_t a1)
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
    [*(a1 + 32) _openDatabaseForAccountID:0 auxDatabaseRef:*(a1 + 48) path:v5 clientID:*(a1 + 40) createdDatabaseToConsume:v6];

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
    _os_log_impl(&dword_24844D000, v14, v15, "Failed to determine database directory path for auxDatabaseID: %{public}@", &v16, 0xCu);
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
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__DACalDBHelper_allOpenDatabases__block_invoke;
  v5[3] = &unk_278F133A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__DACalDBHelper_allOpenDatabases__block_invoke(uint64_t a1)
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
  block[2] = __38__DACalDBHelper_databaseForAccountID___block_invoke;
  block[3] = &unk_278F133D0;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

CFTypeRef __38__DACalDBHelper_databaseForAccountID___block_invoke(uint64_t a1)
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
  block[2] = __43__DACalDBHelper_databaseForAuxDatabaseRef___block_invoke;
  block[3] = &unk_278F133F8;
  block[4] = self;
  block[5] = &v7;
  block[6] = ref;
  dispatch_sync(queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __43__DACalDBHelper_databaseForAuxDatabaseRef___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cachedDatabaseForAuxDatabaseRef:*(a1 + 48) path:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)saveDatabaseForAccountID:(id)d flushCaches:(BOOL)caches
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DACalDBHelper_saveDatabaseForAccountID_flushCaches___block_invoke;
  block[3] = &unk_278F13420;
  block[4] = self;
  v12 = dCopy;
  v13 = &v16;
  v14 = a2;
  cachesCopy = caches;
  v9 = dCopy;
  dispatch_sync(queue, block);
  LOBYTE(a2) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return a2;
}

void __54__DACalDBHelper_saveDatabaseForAccountID_flushCaches___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v2 _cachedDatabaseForAccountID:v3 path:&v7];
  v5 = v7;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _saveDatabase:v4 path:v5 fushCaches:*(a1 + 64)];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"DACalDBHelper.m" lineNumber:183 description:{@"%@: tried to save a database that was never opened. accountID: %@", objc_opt_class(), *(a1 + 40)}];

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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DACalDBHelper_saveDatabaseForAuxDatabaseRef_flushCaches___block_invoke;
  block[3] = &unk_278F13448;
  block[6] = ref;
  block[7] = a2;
  block[4] = self;
  block[5] = &v9;
  cachesCopy = caches;
  dispatch_sync(queue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __59__DACalDBHelper_saveDatabaseForAuxDatabaseRef_flushCaches___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v11 = 0;
  v4 = [v2 _cachedDatabaseForAuxDatabaseRef:v3 path:&v11];
  v5 = v11;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _saveDatabase:v4 path:v5 fushCaches:*(a1 + 64)];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = *(a1 + 48);
    [v6 handleFailureInMethod:v7 object:v8 file:@"DACalDBHelper.m" lineNumber:201 description:{@"%@: tried to save a database that was never opened. auxDatabaseID: %d", v9, CalAuxDatabaseGetUID()}];

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)closeDatabaseForAccountID:(id)d save:(BOOL)save
{
  saveCopy = save;
  dCopy = d;
  v8 = !saveCopy || [(DACalDBHelper *)self saveDatabaseForAccountID:dCopy flushCaches:0];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DACalDBHelper_closeDatabaseForAccountID_save___block_invoke;
  block[3] = &unk_278F13378;
  block[4] = self;
  v13 = dCopy;
  v14 = a2;
  v10 = dCopy;
  dispatch_sync(queue, block);

  return v8;
}

void __48__DACalDBHelper_closeDatabaseForAccountID_save___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v2 _cachedDatabaseForAccountID:v3 path:&v7];
  v5 = v7;
  if (v4)
  {
    [*(a1 + 32) _closeDatabase:v4 path:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"DACalDBHelper.m" lineNumber:222 description:{@"%@: tried to close a database that was never opened. accountID: %@", objc_opt_class(), *(a1 + 40)}];
  }
}

- (BOOL)closeDatabaseForAuxDatabaseRef:(void *)ref save:(BOOL)save
{
  v7 = !save || [(DACalDBHelper *)self saveDatabaseForAuxDatabaseRef:ref flushCaches:0];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DACalDBHelper_closeDatabaseForAuxDatabaseRef_save___block_invoke;
  block[3] = &unk_278F13470;
  block[4] = self;
  block[5] = ref;
  block[6] = a2;
  dispatch_sync(queue, block);
  return v7;
}

void __53__DACalDBHelper_closeDatabaseForAuxDatabaseRef_save___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 _cachedDatabaseForAuxDatabaseRef:v3 path:&v11];
  v5 = v11;
  if (v4)
  {
    [*(a1 + 32) _closeDatabase:v4 path:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    [v6 handleFailureInMethod:v7 object:v8 file:@"DACalDBHelper.m" lineNumber:242 description:{@"%@: tried to close a database that was never opened. auxDatabaseID: %d", v9, CalAuxDatabaseGetUID()}];
  }
}

- (void)_openDatabaseForAccountID:(id)d auxDatabaseRef:(void *)ref path:(id)path clientID:(id)iD createdDatabaseToConsume:(CalDatabase *)consume
{
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  iDCopy = iD;
  dispatch_assert_queue_V2(self->_queue);
  consumeCopy = [(NSMutableDictionary *)self->_databasesByContainerPath objectForKeyedSubscript:pathCopy];

  v16 = MEMORY[0x277D03988];
  if (consumeCopy)
  {
    v17 = CalDatabaseCopyClientIdentifier();
    if (iDCopy && ([(CalDatabase *)iDCopy isEqual:v17]& 1) == 0)
    {
      [DACalDBHelper _openDatabaseForAccountID:a2 auxDatabaseRef:self path:v17 clientID:iDCopy createdDatabaseToConsume:?];
    }

    v18 = 0;
LABEL_28:
    [(NSCountedSet *)self->_connectionCountsByPath addObject:pathCopy, v40];
    v28 = [(NSCountedSet *)self->_connectionCountsByPath countForObject:pathCopy];
    v29 = DALoggingwithCategory();
    v30 = v16;
    v31 = *(v16 + 7);
    if (os_log_type_enabled(v29, v31))
    {
      *buf = 134218498;
      consumeCopy2 = consumeCopy;
      v44 = 2114;
      v45 = iDCopy;
      v46 = 2048;
      refCopy = v28;
      _os_log_impl(&dword_24844D000, v29, v31, "Cal database %p opened for %{public}@. Connection count is now %lu", buf, 0x20u);
    }

    if (v28 >= 2)
    {
      v32 = DALoggingwithCategory();
      v33 = *(v30 + 6);
      if (os_log_type_enabled(v32, v33))
      {
        *buf = 134217984;
        consumeCopy2 = v28;
        _os_log_impl(&dword_24844D000, v32, v33, "connectionCount is > 1, at %lu", buf, 0xCu);
      }
    }

    if (consume)
    {
      v34 = v18;
    }

    else
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      CFRelease(consume);
    }

    v35 = dCopy;
    goto LABEL_40;
  }

  v19 = DALoggingwithCategory();
  v20 = *(v16 + 7);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138543362;
    consumeCopy2 = iDCopy;
    _os_log_impl(&dword_24844D000, v19, v20, "Creating calendar database for clientID %{public}@", buf, 0xCu);
  }

  consumeCopy = consume;
  if (consume)
  {
    v21 = DALoggingwithCategory();
    if (os_log_type_enabled(v21, v20))
    {
      *buf = 134349056;
      consumeCopy2 = consume;
      v22 = "Using already-created calendar database %{public}p";
LABEL_24:
      _os_log_impl(&dword_24844D000, v21, v20, v22, buf, 0xCu);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v40 = dCopy;
  if (dCopy)
  {
    if (self->_mainDatabasePathOverride)
    {
      v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    }

    else
    {
      v23 = 0;
    }

    v25 = [objc_alloc(MEMORY[0x277CF7520]) initWithDirectoryURL:v23];
    [v25 setOptions:self->_initOptions];
    if (self->_containerProviderOverride)
    {
      [v25 setDataContainerProvider:?];
    }

    consumeCopy = CalDatabaseCreateWithConfigurationForAccountID();
  }

  else
  {
    if (ref)
    {
      CalGetDatabaseForRecord();
      initOptions = self->_initOptions;
      consumeCopy = CalDatabaseCreateWithAuxDatabaseRef();
      goto LABEL_21;
    }

    v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    v38 = self->_initOptions;
    containerProviderOverride = self->_containerProviderOverride;
    consumeCopy = CalDatabaseCreateWithOptionsDatabaseDirectoryURLAndContainerProvider();
  }

LABEL_21:
  v26 = DALoggingwithCategory();
  v21 = v26;
  if (consumeCopy)
  {
    if (os_log_type_enabled(v26, v20))
    {
      *buf = 134349056;
      consumeCopy2 = consumeCopy;
      v22 = "Created calendar database %{public}p";
      goto LABEL_24;
    }

LABEL_25:

    [(NSMutableDictionary *)self->_databasesByContainerPath setObject:consumeCopy forKeyedSubscript:pathCopy];
    [(DACalDBHelper *)self _registerForCalendarYieldNotificationsForDB:consumeCopy];
    if (![(CalDatabase *)iDCopy length])
    {
      v27 = @"com.apple.dataaccessd.changeinserter";

      iDCopy = v27;
    }

    v16 = MEMORY[0x277D03988];
    v18 = consume != 0;
    CalDatabaseSetClientIdentifier();
    CalDatabaseSetPropertyModificationLoggingEnabled();
    CFRelease(consumeCopy);
    v17 = 0;
    goto LABEL_28;
  }

  v37 = *(MEMORY[0x277D03988] + 3);
  v35 = v40;
  if (os_log_type_enabled(v26, v37))
  {
    *buf = 138543874;
    consumeCopy2 = v40;
    v44 = 2114;
    v45 = pathCopy;
    v46 = 2050;
    refCopy = ref;
    _os_log_impl(&dword_24844D000, v21, v37, "Failed to open database with account ID %{public}@, path %{public}@, auxDatabaseRef %{public}p", buf, 0x20u);
  }

  v17 = 0;
LABEL_40:

  v36 = *MEMORY[0x277D85DE8];
}

- (CalDatabase)_cachedDatabaseForAccountID:(id)d path:(id *)path
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (dCopy)
  {
    v7 = [(DACalDBHelper *)self _pathForAccountID:dCopy createdDatabase:0];
    if (!v7)
    {
LABEL_12:
      v12 = 0;
      if (!path)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = objc_opt_class();
    mainDatabasePathOverride = self->_mainDatabasePathOverride;
    v10 = mainDatabasePathOverride;
    if (!mainDatabasePathOverride)
    {
      v10 = CalDatabaseCopyDirectoryPath();
    }

    v11 = [v8 _canonicalizePath:v10];
    v7 = v11;
    if (mainDatabasePathOverride)
    {
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

  v12 = [(NSMutableDictionary *)self->_databasesByContainerPath objectForKeyedSubscript:v7];

  if (path)
  {
LABEL_9:
    v13 = v7;
    *path = v7;
  }

LABEL_10:

  return v12;
}

- (CalDatabase)_cachedDatabaseForAuxDatabaseRef:(void *)ref path:(id *)path
{
  dispatch_assert_queue_V2(self->_queue);
  if (ref)
  {
    UID = CalAuxDatabaseGetUID();
    containerPathsByAuxDatabaseID = self->_containerPathsByAuxDatabaseID;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:UID];
    ref = [(NSMutableDictionary *)containerPathsByAuxDatabaseID objectForKeyedSubscript:v9];

    if (ref)
    {
      v10 = [(NSMutableDictionary *)self->_databasesByContainerPath objectForKeyedSubscript:ref];

      if (!path)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = 0;
    if (path)
    {
LABEL_7:
      refCopy = ref;
      *path = ref;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (BOOL)_saveDatabase:(CalDatabase *)database path:(id)path fushCaches:(BOOL)caches
{
  cachesCopy = caches;
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(DALocalDBWatcher *)self->_watcher lastSavedCalSequenceNumberForDatabaseInContainer:pathCopy];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CF7708], 0, 0, 1u);
  v11 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v11 claimedOwnershipOfDataclasses:4];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = &stru_285AA6518;
    if (cachesCopy)
    {
      v15 = @", and flushing caches";
    }

    else
    {
      v15 = &stru_285AA6518;
    }

    watcher = self->_watcher;
    if (watcher)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@" old sequence %d", v9];
    }

    *buf = 134218498;
    databaseCopy3 = database;
    v28 = 2114;
    v29 = v15;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_24844D000, v12, v13, "Saving calendar database %p%{public}@%{public}@.", buf, 0x20u);
    if (watcher)
    {
    }
  }

  if (self->_watcher)
  {
    [(DALocalDBWatcher *)self->_watcher setLastSavedCalSequenceNumber:CalDatabaseGetSequenceNumber() forDatabaseInContainer:pathCopy];
  }

  if (cachesCopy)
  {
    v17 = CalDatabaseSaveAndFlushCaches();
    [(DACalDBHelper *)self _registerForCalendarYieldNotificationsForDB:database];
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
    [(DACalDBHelper *)self _registerForCalendarYieldNotificationsForDB:database];
    if (v20)
    {
      goto LABEL_13;
    }
  }

  v21 = DALoggingwithCategory();
  if (os_log_type_enabled(v21, v13))
  {
    v22 = &stru_285AA6518;
    if (cachesCopy)
    {
      v22 = @", and flushing caches";
    }

    *buf = 134218242;
    databaseCopy3 = database;
    v28 = 2114;
    v29 = v22;
    _os_log_impl(&dword_24844D000, v21, v13, "Saving calendar database %p%{public}@.  Save failed", buf, 0x16u);
  }

  if (self->_watcher)
  {
    v23 = DALoggingwithCategory();
    if (os_log_type_enabled(v23, v13))
    {
      *buf = 134218240;
      databaseCopy3 = database;
      v28 = 1024;
      LODWORD(v29) = v9;
      _os_log_impl(&dword_24844D000, v23, v13, "Resetting calendar database %p sequence %d", buf, 0x12u);
    }

    [(DALocalDBWatcher *)self->_watcher setLastSavedCalSequenceNumber:v9 forDatabaseInContainer:pathCopy];
  }

  v19 = 0;
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_closeDatabase:(CalDatabase *)database path:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(NSCountedSet *)self->_connectionCountsByPath countForObject:pathCopy];
  if (v7)
  {
    v8 = v7;
    [(NSCountedSet *)self->_connectionCountsByPath removeObject:pathCopy];
    if (database)
    {
      v9 = CalDatabaseCopyClientIdentifier();
    }

    else
    {
      v9 = 0;
    }

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v12))
    {
      v16 = 134218498;
      databaseCopy2 = database;
      v18 = 2048;
      v19 = v8 - 1;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_24844D000, v11, v12, "Decrementing database %p reference count. connectionCount is %lu. Client identifier is %{public}@", &v16, 0x20u);
    }

    if (v8 == 1)
    {
      v13 = DALoggingwithCategory();
      if (os_log_type_enabled(v13, v12))
      {
        v16 = 134217984;
        databaseCopy2 = database;
        _os_log_impl(&dword_24844D000, v13, v12, "Destroying calendar database %p", &v16, 0xCu);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"CalDBIsClosing" object:0];

      CalDatabaseRegisterYieldBlock();
      [(NSMutableDictionary *)self->_databasesByContainerPath setObject:0 forKeyedSubscript:pathCopy];
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      v16 = 138543362;
      databaseCopy2 = pathCopy;
      _os_log_impl(&dword_24844D000, v9, v10, "_closeDatabase called too many times with path: %{public}@", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_registerForCalendarYieldNotificationsForDB:(CalDatabase *)b
{
  if (b)
  {
    CalDatabaseRegisterYieldBlock();
  }
}

void __61__DACalDBHelper__registerForCalendarYieldNotificationsForDB___block_invoke(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24844D000, v2, v3, "Someone asked us to yield the calendar database. Bumping up all clients to UI priority", buf, 2u);
  }

  v4 = +[DAPriorityManager sharedManager];
  [v4 bumpDataclassesToUIPriority:20];

  CFRetain(*(a1 + 32));
  v5 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DACalDBHelper__registerForCalendarYieldNotificationsForDB___block_invoke_42;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

void __61__DACalDBHelper__registerForCalendarYieldNotificationsForDB___block_invoke_42(uint64_t a1)
{
  v2 = *(a1 + 32);
  CalDatabaseRegisterYieldBlock();
  v3 = *(a1 + 32);

  CFRelease(v3);
}

- (void)openDatabaseForAuxDatabaseRef:(uint64_t)a3 clientID:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DACalDBHelper.m" lineNumber:117 description:{@"NULL auxDatabaseRef when trying to open aux database for client: %@", a3}];
}

- (void)_openDatabaseForAccountID:(uint64_t)a3 auxDatabaseRef:(uint64_t)a4 path:clientID:createdDatabaseToConsume:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"DACalDBHelper.m" lineNumber:259 description:{@"Client identifier is different. Expected %@ but got %@", a3, a4}];
}

@end