@interface ENAdvertisementSQLiteStore
+ ($8B507D830E6EE36862B76123793C2CB9)advertisementForSQLiteStatement:(SEL)a3;
+ (BOOL)isStore:(id)a3;
+ (BOOL)isTemporaryStore:(id)a3;
+ (BOOL)removeAllDatabaseFilesWithDatabasePath:(id)a3;
+ (BOOL)removeAllStoresFromDiskWithFolderPath:(id)a3;
+ (BOOL)removeAllTemporaryStoresFromDiskWithFolderPath:(id)a3 lastModifiedBeforeDate:(id)a4;
+ (BOOL)storesPresentInFolderPath:(id)a3;
+ (BOOL)temporaryStoresPresentInFolderPath:(id)a3;
+ (id)centralStoreInFolderPath:(id)a3 error:(id *)a4;
+ (id)errorForSQLiteResult:(int)a3;
+ (id)statementStringForStatementType:(unint64_t)a3;
+ (id)storePathsInFolderPath:(id)a3;
+ (id)temporaryStoreInFolderPath:(id)a3 error:(id *)a4;
+ (id)temporaryStorePathsInFolderPath:(id)a3;
+ (id)temporaryStoresInFolderPath:(id)a3;
+ (void)enumerateTemporaryStoresInFolderPath:(id)a3 handler:(id)a4;
- (BOOL)cloneStoreTo:(id)a3;
- (BOOL)connectToDatabaseAndReturnError:(id *)a3;
- (BOOL)importContentsOfStore:(id)a3 error:(id *)a4;
- (BOOL)purgeAdvertismentsRecordedPriorToDate:(id)a3 error:(id *)a4;
- (BOOL)purgeAndRemoveFromDisk:(BOOL)a3;
- (BOOL)refreshStoredAdvertismentCountWithError:(id *)a3;
- (BOOL)saveContactTracingAdvertisementBuffer:(id *)a3 count:(unint64_t)a4 error:(id *)a5;
- (ENAdvertisementSQLiteStore)initWithPath:(id)a3 error:(id *)a4;
- (id)beaconCountMetricsWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5;
- (id)queryFilterWithBufferSize:(unint64_t)a3 hashCount:(unint64_t)a4 attenuationThreshold:(unsigned __int8)a5;
- (int)beginDatabaseTransaction;
- (int)bindAdvertisement:(id *)a3 toSQLiteStatement:(sqlite3_stmt *)a4;
- (int)bindRPIBuffer:(const void *)a3 count:(unint64_t)a4 validityBuffer:(const void *)a5 validRPICount:(unint64_t)a6 toSQLiteStatement:(sqlite3_stmt *)a7;
- (int)checkpointWAL;
- (int)closeDatabase;
- (int)configureDatabase;
- (int)endDatabaseTransaction;
- (int)enumerateAdvertisments:(id)a3;
- (int)initializeAdvertisementTable;
- (int)initializePreparedStatements;
- (int)initializeRPIBufferModule;
- (int)migrateDatabase;
- (int)openDatabase;
- (int)rollbackDatabaseTransaction;
- (int)setVersionCurrent;
- (sqlite3_stmt)preparedStatementOfType:(unint64_t)a3;
- (uint64_t)beginDatabaseTransaction;
- (uint64_t)checkpointWAL;
- (uint64_t)endDatabaseTransaction;
- (uint64_t)initializeAdvertisementTable;
- (uint64_t)initializePreparedStatements;
- (uint64_t)initializeRPIBufferModule;
- (uint64_t)migrateDatabase;
- (uint64_t)rollbackDatabaseTransaction;
- (unint64_t)getAdvertisementsMatchingRPIBuffer:(const void *)a3 count:(unint64_t)a4 validityBuffer:(const void *)a5 validRPICount:(unint64_t)a6 matchingAdvertisementBuffer:(id *)a7 error:(id *)a8;
- (void)dealloc;
- (void)disconnectFromDatabase;
- (void)enumeratePreparedStatements:(id)a3;
@end

@implementation ENAdvertisementSQLiteStore

+ (id)centralStoreInFolderPath:(id)a3 error:(id *)a4
{
  v5 = [a3 stringByAppendingPathComponent:@"en_advertisements.db"];
  v6 = [[ENAdvertisementSQLiteStore alloc] initWithPath:v5 error:a4];

  return v6;
}

+ (id)temporaryStoreInFolderPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 temporaryStorePathsInFolderPath:v6];
  v8 = [v7 count];

  if (v8 < 0xA)
  {
    v10 = MEMORY[0x277CCACA0];
    v11 = [MEMORY[0x277CCAD70] UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 stringWithFormat:@"%s%@.db", "tmp_en_advertisements_", v12];

    v14 = [v6 stringByAppendingPathComponent:v13];
    v9 = [[ENAdvertisementSQLiteStore alloc] initWithPath:v14];
  }

  else
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      +[ENAdvertisementSQLiteStore temporaryStoreInFolderPath:error:];
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else if (a4)
    {
LABEL_6:
      [MEMORY[0x277CCA9B0] errorWithDomain:@"ENAdvertisementStoreErrorDomain" code:7 userInfo:0];
      *a4 = v9 = 0;
      goto LABEL_10;
    }

    v9 = 0;
  }

LABEL_10:

  return v9;
}

+ (BOOL)isTemporaryStore:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"tmp_en_advertisements_"])
  {
    v4 = [v3 hasSuffix:@".db"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isStore:(id)a3
{
  v4 = a3;
  if ([a1 isCentralStore:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 isTemporaryStore:v4];
  }

  return v5;
}

+ (id)temporaryStorePathsInFolderPath:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA08] defaultManager];
  v23 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v23];
  v7 = v23;

  v8 = objc_alloc_init(MEMORY[0x277CBEB10]);
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([a1 isTemporaryStore:{v15, v19}])
          {
            v16 = [v4 stringByAppendingPathComponent:v15];
            [v8 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v12);
    }

    goto LABEL_18;
  }

  if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementSQLiteStore *)v7 temporaryStorePathsInFolderPath:?];
    v10 = v24;
LABEL_18:
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)temporaryStoresPresentInFolderPath:(id)a3
{
  v3 = [a1 temporaryStorePathsInFolderPath:a3];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)temporaryStoresInFolderPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a1 temporaryStorePathsInFolderPath:{v4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (gLogCategory_ENAdvertisementSQLiteStore <= 40 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          [ENAdvertisementSQLiteStore temporaryStoresInFolderPath:v11];
        }

        v12 = [[ENAdvertisementSQLiteStore alloc] initWithPath:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v13 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v8 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)enumerateTemporaryStoresInFolderPath:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a1 temporaryStorePathsInFolderPath:a3];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (gLogCategory_ENAdvertisementSQLiteStore <= 40 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          [ENAdvertisementSQLiteStore enumerateTemporaryStoresInFolderPath:v12 handler:?];
        }

        v13 = [[ENAdvertisementSQLiteStore alloc] initWithPath:v12];
        if (v13)
        {
          v16 = 0;
          v6[2](v6, v13, &v16);
          if (v16)
          {

            goto LABEL_20;
          }
        }

        else if (gLogCategory_ENAdvertisementSQLiteStore <= 90 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          [ENAdvertisementSQLiteStore enumerateTemporaryStoresInFolderPath:v12 handler:?];
        }

        ++v11;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v9 = v14;
    }

    while (v14);
  }

LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)storePathsInFolderPath:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA08] defaultManager];
  v23 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v23];
  v7 = v23;

  v8 = objc_alloc_init(MEMORY[0x277CBEB10]);
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([a1 isStore:{v15, v19}])
          {
            v16 = [v4 stringByAppendingPathComponent:v15];
            [v8 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v12);
    }

    goto LABEL_18;
  }

  if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementSQLiteStore *)v7 storePathsInFolderPath:?];
    v10 = v24;
LABEL_18:
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)storesPresentInFolderPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [a1 storePathsInFolderPath:v4];
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ENAdvertisementSQLiteStore)initWithPath:(id)a3 error:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ENAdvertisementSQLiteStore;
  v8 = [(ENAdvertisementSQLiteStore *)&v12 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_databasePath, a3), ![(ENAdvertisementSQLiteStore *)v9 connectToDatabaseAndReturnError:a4]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_database)
  {
    [(ENAdvertisementSQLiteStore *)self disconnectFromDatabase];
  }

  v3.receiver = self;
  v3.super_class = ENAdvertisementSQLiteStore;
  [(ENAdvertisementSQLiteStore *)&v3 dealloc];
}

- (BOOL)importContentsOfStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (gLogCategory_ENAdvertisementSQLiteStore <= 50 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore importContentsOfStore:v6 error:?];
  }

  v7 = [v6 storedAdvertisementCount];
  v8 = v7;
  if (v7 && [v7 unsignedIntValue] <= 0x4CB)
  {
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = 1228;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v10 = malloc_type_calloc(v9, 0x28uLL, 0x10000400A747E1EuLL);
  v11 = v10;
  if (v10)
  {
    if (v20[3])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __58__ENAdvertisementSQLiteStore_importContentsOfStore_error___block_invoke;
      v18[3] = &unk_278FD2B40;
      v18[4] = self;
      v18[5] = &v23;
      v18[8] = v10;
      v18[9] = a4;
      v18[6] = &v19;
      v18[7] = v9;
      v12 = [v6 enumerateAdvertisments:v18];
      v13 = *(v20 + 24);
      if (v12)
      {
        v13 = 0;
      }

      *(v20 + 24) = v13;
      if (v13 == 1)
      {
        v14 = v24[3] % v9;
        if (v14)
        {
          v15 = [(ENAdvertisementSQLiteStore *)self saveContactTracingAdvertisementBuffer:v11 count:v14 error:a4];
          *(v20 + 24) = v15;
        }
      }
    }
  }

  else
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    *(v20 + 24) = 0;
  }

  free(v11);
  v16 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v16;
}

uint64_t __58__ENAdvertisementSQLiteStore_importContentsOfStore_error___block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 24) % *(a1 + 56);
  v3 = *(a1 + 64) + 40 * v2;
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 32) = *(a2 + 4);
  *v3 = v4;
  *(v3 + 16) = v5;
  ++*(*(*(a1 + 40) + 8) + 24);
  if (v2 != *(a1 + 56) - 1)
  {
    return 1;
  }

  v7 = *(a1 + 72);
  if ([*(a1 + 32) saveContactTracingAdvertisementBuffer:*(a1 + 64) count:? error:?])
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  return result;
}

+ (id)statementStringForStatementType:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_278FD2BA8[a3];
  }
}

- (BOOL)connectToDatabaseAndReturnError:(id *)a3
{
  [(NSString *)self->_databasePath UTF8String];
  if (gLogCategory_ENAdvertisementSQLiteStore <= 50 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
  }

  v5 = [(ENAdvertisementSQLiteStore *)self openDatabase];
  if (v5)
  {
    v6 = v5;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
    {
      if (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize())
      {
        [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
      }

LABEL_41:
      if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
      {
        [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
      }
    }
  }

  else
  {
    v7 = [(ENAdvertisementSQLiteStore *)self configureDatabase];
    if (v7)
    {
      v6 = v7;
      if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
      {
        if (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize())
        {
          [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
        }

        goto LABEL_41;
      }
    }

    else
    {
      v8 = [(ENAdvertisementSQLiteStore *)self migrateDatabase];
      if (v8)
      {
        v6 = v8;
        if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
        {
          if (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize())
          {
            [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
          }

          goto LABEL_41;
        }
      }

      else
      {
        v9 = [(ENAdvertisementSQLiteStore *)self initializeAdvertisementTable];
        if (v9)
        {
          v6 = v9;
          if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
          {
            if (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize())
            {
              [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
            }

            goto LABEL_41;
          }
        }

        else
        {
          v10 = [(ENAdvertisementSQLiteStore *)self initializeRPIBufferModule];
          if (v10)
          {
            v6 = v10;
            if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
            {
              if (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize())
              {
                [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
              }

              goto LABEL_41;
            }
          }

          else
          {
            v11 = [(ENAdvertisementSQLiteStore *)self initializePreparedStatements];
            if (!v11)
            {
              v15 = 0;
              if ([(ENAdvertisementSQLiteStore *)self refreshStoredAdvertismentCountWithError:&v15])
              {
                return 1;
              }

              if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
              {
                [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
              }

              v6 = 1;
              goto LABEL_41;
            }

            v6 = v11;
            if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
            {
              if (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize())
              {
                [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
              }

              goto LABEL_41;
            }
          }
        }
      }
    }
  }

  if (v6 == 26 || v6 == 11)
  {
    if (gLogCategory_ENAdvertisementSQLiteStore <= 50 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
    }

    if (![(ENAdvertisementSQLiteStore *)self purgeAndRemoveFromDisk:0]&& gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore connectToDatabaseAndReturnError:];
    }
  }

  else
  {
    [(ENAdvertisementSQLiteStore *)self closeDatabase];
  }

  if (!a3)
  {
    return 0;
  }

  v13 = [objc_opt_class() errorForSQLiteResult:v6];
  v14 = v13;
  result = 0;
  *a3 = v13;
  return result;
}

- (void)disconnectFromDatabase
{
  [(ENAdvertisementSQLiteStore *)self enumeratePreparedStatements:&__block_literal_global_8];
  free(self->_preparedStatements);
  self->_preparedStatements = 0;

  [(ENAdvertisementSQLiteStore *)self closeDatabase];
}

- (int)openDatabase
{
  v3 = [(NSString *)self->_databasePath UTF8String];

  return sqlite3_open_v2(v3, &self->_database, 2097158, 0);
}

- (int)closeDatabase
{
  database = self->_database;
  if (database)
  {
    v4 = sqlite3_close(database);
    if (v4)
    {
      if (gLogCategory_ENAdvertisementSQLiteStore <= 90 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
      {
        [(ENAdvertisementSQLiteStore *)self closeDatabase];
      }
    }

    else
    {
      self->_database = 0;
    }
  }

  else
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore closeDatabase];
    }

    return 1;
  }

  return v4;
}

- (int)configureDatabase
{
  [(NSString *)self->_databasePath UTF8String];
  if (gLogCategory_ENAdvertisementSQLiteStore <= 50 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore configureDatabase];
  }

  if (sqlite3_busy_timeout(self->_database, 600000) && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore configureDatabase];
  }

  v3 = sqlite3_exec(self->_database, "pragma auto_vacuum = 1;", 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
LABEL_15:
      LogPrintF_safe();
    }
  }

  else
  {
    v4 = sqlite3_exec(self->_database, "pragma journal_mode=WAL;", 0, 0, 0);
    if (v4 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_15;
    }
  }

  return v4;
}

- (int)migrateDatabase
{
  ppStmt = 0;
  v3 = sqlite3_prepare(self->_database, "pragma user_version;", -1, &ppStmt, 0);
  if (v3)
  {
    v4 = v3;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore migrateDatabase];
    }

    if (v4 != 100)
    {
LABEL_16:
      sqlite3_finalize(ppStmt);
      return v4;
    }
  }

  else
  {
    v5 = sqlite3_step(ppStmt);
    if (v5 != 100)
    {
      v4 = v5;
      if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
      {
        [ENAdvertisementSQLiteStore migrateDatabase];
      }

      goto LABEL_16;
    }
  }

  v6 = sqlite3_column_int(ppStmt, 0);
  sqlite3_finalize(ppStmt);
  v4 = 0;
  if (v6 != 2)
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore migrateDatabase];
    }

    return [(ENAdvertisementSQLiteStore *)self migrateFromVersion:v6];
  }

  return v4;
}

- (int)setVersionCurrent
{
  v3 = [MEMORY[0x277CCACA0] stringWithFormat:@"pragma user_version=%d", 2];;
  v4 = [v3 UTF8String];

  database = self->_database;

  return sqlite3_exec(database, v4, 0, 0, 0);
}

- (int)initializeAdvertisementTable
{
  p_database = &self->_database;
  v3 = sqlite3_exec(self->_database, [CFSTR(""CREATE TABLE IF NOT EXISTS en_advertisements(rpi BLOB encrypted_aem BLOB], 0, 0, 0);
  if (v3)
  {
    v4 = v3;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore initializeAdvertisementTable];
    }
  }

  else
  {
    v4 = sqlite3_exec(*p_database, [@"CREATE INDEX IF NOT EXISTS timestamp ON en_advertisements(timestamp);" UTF8String], 0, 0, 0);
    if (v4 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore initializeAdvertisementTable];
    }
  }

  return v4;
}

- (int)initializeRPIBufferModule
{
  v2 = ct_sqlite_rpi_buffer_init(self->_database);
  if (v2 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore initializeRPIBufferModule];
  }

  return v2;
}

- (int)initializePreparedStatements
{
  v3 = malloc_type_malloc(0x28uLL, 0x2004093837F09uLL);
  self->_preparedStatements = v3;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [objc_opt_class() statementStringForStatementType:v5];
      v7 = [v6 UTF8String];

      v8 = sqlite3_prepare(self->_database, v7, -1, &self->_preparedStatements[v4], 0);
      if (v8)
      {
        break;
      }

      ++v5;
      ++v4;
      if (v5 == 5)
      {
        return 0;
      }
    }

    v9 = v8;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore initializePreparedStatements];
    }

    free(self->_preparedStatements);
    self->_preparedStatements = 0;
  }

  else
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore initializePreparedStatements];
    }

    return 7;
  }

  return v9;
}

- (void)enumeratePreparedStatements:(id)a3
{
  if (self->_preparedStatements)
  {
    for (i = 0; i != 5; ++i)
    {
      (*(a3 + 2))(a3, self->_preparedStatements[i], i);
    }
  }
}

+ (id)errorForSQLiteResult:(int)a3
{
  v5 = 0;
  if (a3 <= 10)
  {
    switch(a3)
    {
      case 1:
        v6 = 1;
        break;
      case 5:
        v6 = 5;
        break;
      case 10:
        v6 = 4;
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a3 > 22)
  {
    if (a3 == 23)
    {
      v6 = 6;
      goto LABEL_16;
    }

    if (a3 != 26)
    {
      goto LABEL_17;
    }
  }

  else if (a3 != 11)
  {
    if (a3 != 13)
    {
      goto LABEL_17;
    }

    v6 = 2;
    goto LABEL_16;
  }

  v6 = 3;
LABEL_16:
  v5 = [MEMORY[0x277CCA9B0] errorWithDomain:@"ENAdvertisementStoreErrorDomain" code:v6 userInfo:{0, v3}];
LABEL_17:

  return v5;
}

- (int)beginDatabaseTransaction
{
  v2 = sqlite3_exec(self->_database, "BEGIN EXCLUSIVE TRANSACTION;", 0, 0, 0);
  if (v2 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore beginDatabaseTransaction];
  }

  return v2;
}

- (int)endDatabaseTransaction
{
  v2 = sqlite3_exec(self->_database, "COMMIT;", 0, 0, 0);
  if (v2 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore endDatabaseTransaction];
  }

  return v2;
}

- (int)rollbackDatabaseTransaction
{
  v2 = sqlite3_exec(self->_database, "ROLLBACK;", 0, 0, 0);
  if (v2 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore rollbackDatabaseTransaction];
  }

  return v2;
}

- (int)checkpointWAL
{
  v2 = sqlite3_exec(self->_database, "pragma wal_checkpoint(TRUNCATE);", 0, 0, 0);
  if (v2 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore checkpointWAL];
  }

  return v2;
}

- (sqlite3_stmt)preparedStatementOfType:(unint64_t)a3
{
  v3 = self->_preparedStatements[a3];
  sqlite3_reset(v3);
  return v3;
}

+ ($8B507D830E6EE36862B76123793C2CB9)advertisementForSQLiteStatement:(SEL)a3
{
  retstr->var1 = 0;
  *(&retstr->var1 + 1) = sqlite3_column_int64(a4, 2);
  HIDWORD(retstr->var2) = sqlite3_column_int64(a4, 8);
  LOWORD(retstr->var3) = sqlite3_column_int64(a4, 9);
  HIWORD(retstr->var3) = sqlite3_column_int(a4, 3);
  LOBYTE(retstr->var4) = sqlite3_column_int(a4, 4);
  HIBYTE(retstr->var4) = sqlite3_column_int(a4, 5);
  LOBYTE(retstr->var5) = sqlite3_column_int(a4, 6) != 0;
  HIBYTE(retstr->var5) = sqlite3_column_int(a4, 7);
  retstr->var0 = *sqlite3_column_blob(a4, 0);
  v6 = sqlite3_column_bytes(a4, 1);
  result = sqlite3_column_blob(a4, 1);
  if (v6 == 4)
  {
    retstr->var1 = *result->var0.var0;
  }

  else if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
  {
    if (gLogCategory__ENAdvertisementSQLiteStore != -1)
    {
      return +[ENAdvertisementSQLiteStore advertisementForSQLiteStatement:];
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return +[ENAdvertisementSQLiteStore advertisementForSQLiteStatement:];
    }
  }

  return result;
}

- (int)bindAdvertisement:(id *)a3 toSQLiteStatement:(sqlite3_stmt *)a4
{
  v6 = sqlite3_bind_blob(a4, 1, a3, 16, 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    v7 = v6;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
    }
  }

  else
  {
    v8 = sqlite3_bind_blob(a4, 2, &a3->var1, 4, 0xFFFFFFFFFFFFFFFFLL);
    if (v8)
    {
      v7 = v8;
      if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
      {
        [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
      }
    }

    else
    {
      v9 = sqlite3_bind_int64(a4, 3, *(&a3->var1 + 1));
      if (v9)
      {
        v7 = v9;
        if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
        }
      }

      else
      {
        v10 = sqlite3_bind_int(a4, 4, HIWORD(a3->var3));
        if (v10)
        {
          v7 = v10;
          if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
          {
            [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
          }
        }

        else
        {
          v11 = sqlite3_bind_int(a4, 5, SLOBYTE(a3->var4));
          if (v11)
          {
            v7 = v11;
            if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
            {
              [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
            }
          }

          else
          {
            v12 = sqlite3_bind_int(a4, 6, SHIBYTE(a3->var4));
            if (v12)
            {
              v7 = v12;
              if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
              {
                [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
              }
            }

            else
            {
              v13 = sqlite3_bind_int(a4, 7, LOBYTE(a3->var5));
              if (v13)
              {
                v7 = v13;
                if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
                {
                  [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
                }
              }

              else
              {
                v7 = sqlite3_bind_int(a4, 8, HIBYTE(a3->var5));
                if (v7 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
                {
                  [ENAdvertisementSQLiteStore bindAdvertisement:toSQLiteStatement:];
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (BOOL)refreshStoredAdvertismentCountWithError:(id *)a3
{
  v5 = [(ENAdvertisementSQLiteStore *)self preparedStatementOfType:1];
  v6 = [(ENAdvertisementSQLiteStore *)self beginDatabaseTransaction];
  if (v6 == 100)
  {
    goto LABEL_4;
  }

  v7 = v6;
  if (!v6)
  {
    v8 = sqlite3_step(v5);
    if (v8 == 100)
    {
LABEL_4:
      v9 = [MEMORY[0x277CCABA8] numberWithInt:{sqlite3_column_int(v5, 0)}];
      storedAdvertisementCount = self->_storedAdvertisementCount;
      self->_storedAdvertisementCount = v9;

      v11 = 1;
      goto LABEL_11;
    }

    v7 = v8;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore refreshStoredAdvertismentCountWithError:];
    }
  }

  v12 = self->_storedAdvertisementCount;
  self->_storedAdvertisementCount = 0;

  if (a3)
  {
    [objc_opt_class() errorForSQLiteResult:v7];
    *a3 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_11:
  [(ENAdvertisementSQLiteStore *)self endDatabaseTransaction];
  sqlite3_reset(v5);
  return v11;
}

- (BOOL)saveContactTracingAdvertisementBuffer:(id *)a3 count:(unint64_t)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = [(ENAdvertisementSQLiteStore *)self preparedStatementOfType:0];
  v10 = [(ENAdvertisementSQLiteStore *)self beginDatabaseTransaction];
  if (!v10)
  {
    if (!a4)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v14 = a4;
    while (1)
    {
      v15 = *a3->var1.var0;
      v20[0] = a3->var0;
      v20[1] = v15;
      v21 = *&a3->var3;
      v16 = [(ENAdvertisementSQLiteStore *)self bindAdvertisement:v20 toSQLiteStatement:v9];
      if (v16)
      {
        break;
      }

      v17 = sqlite3_step(v9);
      if (v17 != 101)
      {
        v10 = v17;
        if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          [ENAdvertisementSQLiteStore saveContactTracingAdvertisementBuffer:count:error:];
        }

        goto LABEL_2;
      }

      sqlite3_clear_bindings(v9);
      sqlite3_reset(v9);
      a3 = (a3 + 40);
      if (!--v14)
      {
        goto LABEL_3;
      }
    }

    v10 = v16;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore saveContactTracingAdvertisementBuffer:count:error:];
    }
  }

LABEL_2:
  if (v10 == 101)
  {
LABEL_3:
    v10 = [(ENAdvertisementSQLiteStore *)self endDatabaseTransaction];
    storedAdvertisementCount = self->_storedAdvertisementCount;
    if (storedAdvertisementCount)
    {
      v12 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:{a4 + -[NSNumber unsignedIntValue](storedAdvertisementCount, "unsignedIntValue")}];
      v13 = self->_storedAdvertisementCount;
      self->_storedAdvertisementCount = v12;

      if (!a5)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_13:
  if (![(ENAdvertisementSQLiteStore *)self rollbackDatabaseTransaction]|| gLogCategory__ENAdvertisementSQLiteStore > 90 || gLogCategory__ENAdvertisementSQLiteStore == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_17;
  }

  [ENAdvertisementSQLiteStore saveContactTracingAdvertisementBuffer:count:error:];
  if (!a5)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v10)
  {
    *a5 = [objc_opt_class() errorForSQLiteResult:v10];
  }

LABEL_20:
  sqlite3_reset(v9);
  result = v10 == 0;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)enumerateAdvertisments:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ENAdvertisementSQLiteStore *)self preparedStatementOfType:2];
  if (![(ENAdvertisementSQLiteStore *)self beginDatabaseTransaction])
  {
    while (1)
    {
      v9 = sqlite3_step(v5);
      if (v9 != 100)
      {
        break;
      }

      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v10 = objc_opt_class();
      if (v10)
      {
        [v10 advertisementForSQLiteStatement:v5];
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }

      v11 = v4[2];
      v12[0] = v14;
      v12[1] = v15;
      v13 = v16;
      if ((v11(v4, v12) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    if (v9 != 101 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore enumerateAdvertisments:];
    }
  }

LABEL_2:
  v6 = [(ENAdvertisementSQLiteStore *)self endDatabaseTransaction];
  sqlite3_reset(v5);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)queryFilterWithBufferSize:(unint64_t)a3 hashCount:(unint64_t)a4 attenuationThreshold:(unsigned __int8)a5
{
  v6 = [[ENQueryFilter alloc] initWithBufferSize:a3 hashCount:a4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__ENAdvertisementSQLiteStore_queryFilterWithBufferSize_hashCount_attenuationThreshold___block_invoke;
  v9[3] = &unk_278FD2B88;
  v7 = v6;
  v10 = v7;
  if ([(ENAdvertisementSQLiteStore *)self enumerateAdvertisments:v9])
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore queryFilterWithBufferSize:hashCount:attenuationThreshold:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)beaconCountMetricsWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[ENBeaconCountMetrics alloc] initWithStartDate:v9 endDate:v8 windowDuration:a5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__ENAdvertisementSQLiteStore_beaconCountMetricsWithStartDate_endDate_windowDuration___block_invoke;
  v13[3] = &unk_278FD2B88;
  v11 = v10;
  v14 = v11;
  if ([(ENAdvertisementSQLiteStore *)self enumerateAdvertisments:v13])
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore beaconCountMetricsWithStartDate:endDate:windowDuration:];
    }

    v11 = 0;
  }

  return v11;
}

uint64_t __85__ENAdvertisementSQLiteStore_beaconCountMetricsWithStartDate_endDate_windowDuration___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [ENAdvertisement alloc];
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  v6 = [(ENAdvertisement *)v4 initWithStructRepresentation:v9];
  [*(a1 + 32) addAdvertisement:v6];

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (int)bindRPIBuffer:(const void *)a3 count:(unint64_t)a4 validityBuffer:(const void *)a5 validRPICount:(unint64_t)a6 toSQLiteStatement:(sqlite3_stmt *)a7
{
  v8 = a6;
  v10 = a4;
  v12 = sqlite3_bind_pointer(a7, 1, a3, "ct_sqlite_rpi_buffer", 0);
  if (v12)
  {
    v13 = v12;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
LABEL_18:
      sqlite3_errmsg(self->_database);
      sqlite3_extended_errcode(self->_database);
      LogPrintF_safe();
    }
  }

  else
  {
    v14 = sqlite3_bind_pointer(a7, 2, a5, "ct_sqlite_rpi_validity_buffer", 0);
    if (v14)
    {
      v13 = v14;
      if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = sqlite3_bind_int(a7, 3, v10);
      if (v15)
      {
        v13 = v15;
        if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = sqlite3_bind_int(a7, 4, v8);
        if (v13 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_18;
        }
      }
    }
  }

  return v13;
}

- (unint64_t)getAdvertisementsMatchingRPIBuffer:(const void *)a3 count:(unint64_t)a4 validityBuffer:(const void *)a5 validRPICount:(unint64_t)a6 matchingAdvertisementBuffer:(id *)a7 error:(id *)a8
{
  v35 = *MEMORY[0x277D85DE8];
  v15 = [(ENAdvertisementSQLiteStore *)self storedAdvertisementCount];
  if (v15)
  {
  }

  else if (![(ENAdvertisementSQLiteStore *)self refreshStoredAdvertismentCountWithError:a8])
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore getAdvertisementsMatchingRPIBuffer:count:validityBuffer:validRPICount:matchingAdvertisementBuffer:error:];
    }

    goto LABEL_21;
  }

  v16 = [(ENAdvertisementSQLiteStore *)self storedAdvertisementCount];
  v17 = [v16 unsignedIntValue];

  v18 = malloc_type_calloc(v17, 0x28uLL, 0x10000400A747E1EuLL);
  if (v18)
  {
    v19 = v18;
    v20 = [(ENAdvertisementSQLiteStore *)self preparedStatementOfType:3];
    v21 = [(ENAdvertisementSQLiteStore *)self bindRPIBuffer:a3 count:a4 validityBuffer:a5 validRPICount:a6 toSQLiteStatement:v20];
    if (v21)
    {
      v22 = v21;
      if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
      {
        [ENAdvertisementSQLiteStore getAdvertisementsMatchingRPIBuffer:? count:? validityBuffer:? validRPICount:? matchingAdvertisementBuffer:? error:?];
      }
    }

    else
    {
      v22 = [(ENAdvertisementSQLiteStore *)self beginDatabaseTransaction];
      if (!v22)
      {
        v23 = 0;
        while (1)
        {
          v24 = sqlite3_step(v20);
          if (v24 != 100)
          {
            break;
          }

          if (v23 < v17)
          {
            v28 = objc_opt_class();
            if (v28)
            {
              [v28 advertisementForSQLiteStatement:v20];
            }

            else
            {
              v34 = 0;
              v32 = 0u;
              v33 = 0u;
            }

            v29 = v19 + 40 * v23++;
            *(v29 + 4) = v34;
            *v29 = v32;
            *(v29 + 1) = v33;
          }

          else
          {
            v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
            v26 = [v25 isSensitiveLoggingAllowed];

            if (v26 && gLogCategory_ENAdvertisementSQLiteStore <= 90 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
            {
              [ENAdvertisementSQLiteStore getAdvertisementsMatchingRPIBuffer:count:validityBuffer:validRPICount:matchingAdvertisementBuffer:error:];
            }

            storedAdvertisementCount = self->_storedAdvertisementCount;
            self->_storedAdvertisementCount = 0;
          }
        }

        v22 = v24;
        if (v24 == 101)
        {
          goto LABEL_17;
        }

        if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
        {
          [ENAdvertisementSQLiteStore getAdvertisementsMatchingRPIBuffer:count:validityBuffer:validRPICount:matchingAdvertisementBuffer:error:];
        }

        goto LABEL_39;
      }
    }

    if (v22 == 101)
    {
      v23 = 0;
LABEL_17:
      *a7 = v19;
LABEL_42:
      [(ENAdvertisementSQLiteStore *)self endDatabaseTransaction:v32];
      sqlite3_clear_bindings(v20);
      sqlite3_reset(v20);
      goto LABEL_43;
    }

LABEL_39:
    free(v19);
    *a7 = 0;
    if (a8)
    {
      [objc_opt_class() errorForSQLiteResult:v22];
      *a8 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_42;
  }

  if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore getAdvertisementsMatchingRPIBuffer:count:validityBuffer:validRPICount:matchingAdvertisementBuffer:error:];
  }

LABEL_21:
  v23 = 0;
LABEL_43:
  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)purgeAdvertismentsRecordedPriorToDate:(id)a3 error:(id *)a4
{
  [a3 timeIntervalSince1970];
  v7 = v6;
  if (gLogCategory_ENAdvertisementSQLiteStore <= 50 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore purgeAdvertismentsRecordedPriorToDate:? error:?];
  }

  v8 = [(ENAdvertisementSQLiteStore *)self preparedStatementOfType:4];
  v9 = [(ENAdvertisementSQLiteStore *)self beginDatabaseTransaction];
  if (v9)
  {
LABEL_5:
    if (v9 == 101)
    {
      goto LABEL_6;
    }

LABEL_17:
    if ([(ENAdvertisementSQLiteStore *)self rollbackDatabaseTransaction]&& gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore purgeAdvertismentsRecordedPriorToDate:error:];
      if (v9)
      {
        goto LABEL_22;
      }
    }

    else if (v9)
    {
      goto LABEL_22;
    }

LABEL_26:
    [(ENAdvertisementSQLiteStore *)self checkpointWAL];
    goto LABEL_27;
  }

  v10 = sqlite3_bind_double(v8, 1, v7);
  if (v10)
  {
    v9 = v10;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore purgeAdvertismentsRecordedPriorToDate:error:];
    }

    goto LABEL_5;
  }

  v11 = sqlite3_step(v8);
  if (v11 != 101)
  {
    v9 = v11;
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementSQLiteStore purgeAdvertismentsRecordedPriorToDate:error:];
    }

    goto LABEL_17;
  }

LABEL_6:
  v9 = [(ENAdvertisementSQLiteStore *)self endDatabaseTransaction];
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (a4)
  {
    *a4 = [objc_opt_class() errorForSQLiteResult:v9];
  }

LABEL_27:
  if (![(ENAdvertisementSQLiteStore *)self refreshStoredAdvertismentCountWithError:a4]&& gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore purgeAdvertismentsRecordedPriorToDate:error:];
  }

  sqlite3_reset(v8);
  return v9 == 0;
}

+ (BOOL)removeAllDatabaseFilesWithDatabasePath:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA08] defaultManager];
  v27 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v20 = v7;
  if ((v7 & 1) == 0 && gLogCategory_ENAdvertisementSQLiteStore <= 90 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementSQLiteStore *)v3 removeAllDatabaseFilesWithDatabasePath:v6];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [&unk_285D6E548 allKeys];
  v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = [v3 stringByAppendingString:v12];
        if ([v4 fileExistsAtPath:v13])
        {
          v22 = v6;
          v14 = [v4 removeItemAtPath:v13 error:&v22];
          v15 = v22;

          if (v14)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            v6 = 0;
          }

          else
          {
            if (gLogCategory_ENAdvertisementSQLiteStore <= 90 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
            {
              [(ENAdvertisementSQLiteStore *)v12 removeAllDatabaseFilesWithDatabasePath:v13, v15];
            }

            v20 = 0;
            v6 = v15;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      v9 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

- (BOOL)purgeAndRemoveFromDisk:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_ENAdvertisementSQLiteStore <= 50 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore purgeAndRemoveFromDisk:?];
  }

  if (self->_database && _sqlite3_db_truncate())
  {
    if (gLogCategory__ENAdvertisementSQLiteStore <= 90)
    {
      if (gLogCategory__ENAdvertisementSQLiteStore == -1)
      {
        v5 = _LogCategory_Initialize();
        if (!v5)
        {
LABEL_11:
          if (!v3)
          {
            return v5;
          }

          goto LABEL_12;
        }
      }

      [ENAdvertisementSQLiteStore purgeAndRemoveFromDisk:];
    }

    LOBYTE(v5) = 0;
    goto LABEL_11;
  }

  LOBYTE(v5) = 1;
  if (!v3)
  {
    return v5;
  }

LABEL_12:
  [(ENAdvertisementSQLiteStore *)self disconnectFromDatabase];
  v6 = objc_opt_class();
  databasePath = self->_databasePath;

  LOBYTE(v5) = [v6 removeAllDatabaseFilesWithDatabasePath:databasePath];
  return v5;
}

- (BOOL)cloneStoreTo:(id)a3
{
  v4 = [a3 stringByAppendingPathComponent:@"en_advertisements.db"];
  [v4 UTF8String];
  database = self->_database;
  v6 = _sqlite3_db_copy();
  if (v6 && gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementSQLiteStore cloneStoreTo:];
  }

  return v6 == 0;
}

+ (BOOL)removeAllStoresFromDiskWithFolderPath:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a1 storePathsInFolderPath:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (([a1 removeAllDatabaseFilesWithDatabasePath:v10] & 1) == 0)
        {
          if (gLogCategory_ENAdvertisementSQLiteStore <= 90 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
          {
            [ENAdvertisementSQLiteStore removeAllStoresFromDiskWithFolderPath:v10];
          }

          v8 = 0;
        }

        ++v9;
      }

      while (v6 != v9);
      v11 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

  else
  {
    v8 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

+ (BOOL)removeAllTemporaryStoresFromDiskWithFolderPath:(id)a3 lastModifiedBeforeDate:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v25 = a4;
  v6 = [a1 temporaryStorePathsInFolderPath:a3];
  v7 = [MEMORY[0x277CCAA08] defaultManager];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v8)
  {
    v12 = 1;
    goto LABEL_34;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v30;
  v24 = *MEMORY[0x277CCA148];
  v12 = 1;
  do
  {
    v13 = 0;
    do
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      v28 = v10;
      v15 = [v7 attributesOfItemAtPath:v14 error:&v28];
      v16 = v28;

      if (v15)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = [v15 objectForKey:v24];
        if ([v18 compare:v25] == -1)
        {
          if (gLogCategory_ENAdvertisementSQLiteStore <= 40 && (gLogCategory_ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
          {
            [ENAdvertisementSQLiteStore removeAllTemporaryStoresFromDiskWithFolderPath:v14 lastModifiedBeforeDate:?];
          }

          v19 = [MEMORY[0x277CCAA08] defaultManager];
          v27 = 0;
          v20 = [v19 removeItemAtPath:v14 error:&v27];
          v16 = v27;

          if (!v20 || v16)
          {
            if (gLogCategory__ENAdvertisementSQLiteStore <= 90 && (gLogCategory__ENAdvertisementSQLiteStore != -1 || _LogCategory_Initialize()))
            {
              [ENAdvertisementSQLiteStore removeAllTemporaryStoresFromDiskWithFolderPath:v16 lastModifiedBeforeDate:?];
            }

            v12 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        if (gLogCategory_ENAdvertisementSQLiteStore > 90 || gLogCategory_ENAdvertisementSQLiteStore == -1 && !_LogCategory_Initialize())
        {
          v12 = 0;
          goto LABEL_26;
        }

        [(ENAdvertisementSQLiteStore *)v14 removeAllTemporaryStoresFromDiskWithFolderPath:v16 lastModifiedBeforeDate:&v33];
        v12 = 0;
        v18 = v33;
      }

LABEL_26:
      v10 = v16;

      ++v13;
    }

    while (v9 != v13);
    v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    v9 = v21;
  }

  while (v21);

LABEL_34:
  v22 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

+ (uint64_t)temporaryStorePathsInFolderPath:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 localizedDescription];
  *a2 = v3;
  [v3 UTF8String];
  return LogPrintF_safe();
}

+ (uint64_t)storePathsInFolderPath:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 localizedDescription];
  *a2 = v3;
  [v3 UTF8String];
  return LogPrintF_safe();
}

- (void)importContentsOfStore:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [*(a1 + 32) UTF8String];
  v4 = [a2 databasePath];
  v3 = v4;
  [v4 UTF8String];
  LogPrintF_safe();
}

- (uint64_t)migrateDatabase
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)migrateFromVersion:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)migrateFromVersion:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)initializeAdvertisementTable
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)initializeRPIBufferModule
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)initializePreparedStatements
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)beginDatabaseTransaction
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)endDatabaseTransaction
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)rollbackDatabaseTransaction
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)checkpointWAL
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.5()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.6()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.7()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)bindAdvertisement:toSQLiteStatement:.cold.8()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)refreshStoredAdvertismentCountWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)saveContactTracingAdvertisementBuffer:count:error:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)saveContactTracingAdvertisementBuffer:count:error:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)saveContactTracingAdvertisementBuffer:count:error:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)enumerateAdvertisments:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)queryFilterWithBufferSize:hashCount:attenuationThreshold:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)beaconCountMetricsWithStartDate:endDate:windowDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)getAdvertisementsMatchingRPIBuffer:(uint64_t)a1 count:validityBuffer:validRPICount:matchingAdvertisementBuffer:error:.cold.2(uint64_t a1)
{
  sqlite3_errmsg(*(a1 + 8));
  sqlite3_extended_errcode(*(a1 + 8));
  return LogPrintF_safe();
}

- (uint64_t)getAdvertisementsMatchingRPIBuffer:count:validityBuffer:validRPICount:matchingAdvertisementBuffer:error:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)purgeAdvertismentsRecordedPriorToDate:error:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)purgeAdvertismentsRecordedPriorToDate:error:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)purgeAdvertismentsRecordedPriorToDate:error:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*(v0 + 8));
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

+ (void)removeAllDatabaseFilesWithDatabasePath:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 UTF8String];
  v3 = [a2 localizedDescription];
  [v3 UTF8String];
  LogPrintF_safe();
}

+ (void)removeAllDatabaseFilesWithDatabasePath:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v5 = [&unk_285D6E548 objectForKey:a1];
  [v5 UTF8String];
  [a2 UTF8String];
  v6 = [a3 localizedDescription];
  [v6 UTF8String];
  LogPrintF_safe();
}

- (uint64_t)purgeAndRemoveFromDisk:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

- (uint64_t)cloneStoreTo:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  sqlite3_errmsg(*v0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_6();
  return LogPrintF_safe();
}

+ (void)removeAllTemporaryStoresFromDiskWithFolderPath:(void *)a1 lastModifiedBeforeDate:.cold.2(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  LogPrintF_safe();
}

+ (uint64_t)removeAllTemporaryStoresFromDiskWithFolderPath:(void *)a3 lastModifiedBeforeDate:.cold.3(void *a1, void *a2, void *a3)
{
  [a1 UTF8String];
  v5 = [a2 localizedDescription];
  *a3 = v5;
  [v5 UTF8String];
  return LogPrintF_safe();
}

@end