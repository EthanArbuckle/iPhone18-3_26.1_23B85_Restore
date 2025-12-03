@interface HDIDSPersistentDictionary
- (BOOL)_reallyOpenDB;
- (HDIDSPersistentDictionary)initWithURL:(id)l objectClass:(Class)class;
- (id)_objectFromData:(uint64_t)data;
- (id)objectForKey:(id)key;
- (uint64_t)_openDB;
- (void)_handleError:(void *)error format:(uint64_t)format;
- (void)_obliterateWithReason:(uint64_t)reason preserveCopy:(int)copy generateStackshot:;
- (void)_recordMappingOfRequest:(void *)request toResponse:;
- (void)_recordMessage:(void *)message deviceID:(int)d type:(int)type outgoing:(int)outgoing request:(uint64_t)request length:;
- (void)dealloc;
- (void)didCancel:(id)cancel;
- (void)didFinishSending:(id)sending;
- (void)didReceiveError:(id)error forMessageID:(id)d;
- (void)didReceiveResponse:(id)response toRequest:(id)request deviceID:(id)d type:(int)type length:(int64_t)length;
- (void)didSendResponse:(id)response toRequest:(id)request deviceID:(id)d type:(int)type length:(int64_t)length;
- (void)enumerateObjectsSortedByExpirationDate:(id)date;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key expires:(double)expires;
@end

@implementation HDIDSPersistentDictionary

- (uint64_t)_openDB
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  uRLByDeletingLastPathComponent = [*(self + 16) URLByDeletingLastPathComponent];
  v29 = 0;
  v4 = [v2 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v29];
  v5 = v29;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v24 = v6;
      absoluteString = [uRLByDeletingLastPathComponent absoluteString];
      *buf = 138543618;
      v36 = absoluteString;
      v37 = 2114;
      v38 = v5;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "failed to create directory '%{public}@': %{public}@", buf, 0x16u);
    }
  }

  if (![(HDIDSPersistentDictionary *)self _reallyOpenDB])
  {
    goto LABEL_31;
  }

  v7 = *(self + 24);
  v28 = v5;
  v8 = [v7 userVersionWithDatabaseName:0 error:&v28];
  v9 = v28;

  if (v8 != 3)
  {
    if (v8 < 1)
    {
      if (v8 < 0)
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v36 = v9;
          _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to look up existing schema version for IDS persistent database: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      [*(self + 24) close];
      v10 = *(self + 24);
      *(self + 24) = 0;

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Re-creating IDS persistent database with version %ld", v8];
      [(HDIDSPersistentDictionary *)self _obliterateWithReason:v11 preserveCopy:0 generateStackshot:0];

      if (![(HDIDSPersistentDictionary *)self _reallyOpenDB])
      {
        v30 = 0;
        goto LABEL_7;
      }
    }

    v27 = v9;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [&unk_283CAEA70 countByEnumeratingWithState:&v31 objects:buf count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(&unk_283CAEA70);
          }

          if (![*(self + 24) executeUncachedSQL:*(*(&v31 + 1) + 8 * v16) error:&v27 bindingHandler:0 enumerationHandler:0])
          {
            v17 = 0;
            goto LABEL_24;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [&unk_283CAEA70 countByEnumeratingWithState:&v31 objects:buf count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1;
LABEL_24:
    v5 = v27;

    if (v17)
    {
      v18 = *(self + 24);
      v26 = v5;
      v19 = [v18 setUserVersion:3 withDatabaseName:0 error:&v26];
      v9 = v26;

      if ((v19 & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v36 = v9;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Failed to update schema version for IDS persistent database: %{public}@", buf, 0xCu);
        }
      }

      goto LABEL_6;
    }

    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v5;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "failed to create schema: %{public}@", buf, 0xCu);
    }

    [*(self + 24) close];
LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

LABEL_6:
  v30 = 1;
LABEL_7:
  v5 = v9;
LABEL_32:

  result = v30;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_reallyOpenDB
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(self + 24))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__reallyOpenDB object:self file:@"HDIDSPersistentDictionary.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"_database == nil"}];
  }

  v2 = [objc_alloc(MEMORY[0x277D10B30]) initWithDatabaseURL:*(self + 16)];
  v3 = *(self + 24);
  *(self + 24) = v2;

  v4 = *(self + 24);
  v11 = 0;
  v5 = [v4 openWithError:&v11];
  v6 = v11;
  if (v5)
  {
    [*(self + 24) close];
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_fault_impl(&dword_228986000, v7, OS_LOG_TYPE_FAULT, "Failed to create database for IDS persistent storage (%d): %{public}@", buf, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (HDIDSPersistentDictionary)initWithURL:(id)l objectClass:(Class)class
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"databaseURL"}];
  }

  if (([(objc_class *)class supportsSecureCoding]& 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"[objectClass supportsSecureCoding]"}];
  }

  v27.receiver = self;
  v27.super_class = HDIDSPersistentDictionary;
  v9 = [(HDIDSPersistentDictionary *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseURL, l);
    v10->_objectClass = class;
    if (([(HDIDSPersistentDictionary *)v10 _openDB]& 1) == 0)
    {
      database = v10->_database;
      v10->_database = 0;

      [(HDIDSPersistentDictionary *)v10 _obliterateWithReason:0 preserveCopy:1 generateStackshot:?];
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v12 = v10->_database;
    v21[4] = &v23;
    v22 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__HDIDSPersistentDictionary_initWithURL_objectClass___block_invoke;
    v21[3] = &unk_27861B8B0;
    v13 = [(HDSQLiteDatabase *)v12 performIntegrityCheckOnDatabase:@"main" error:&v22 integrityErrorHandler:v21];
    v14 = v22;
    if (v13)
    {
      if (*(v24 + 24) == 1)
      {
        [(HDSQLiteDatabase *)v10->_database close];
        v15 = v10->_database;
        v10->_database = 0;

        [(HDIDSPersistentDictionary *)v10 _obliterateWithReason:0 preserveCopy:1 generateStackshot:?];
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v29 = v14;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "Failed to check IDS message database integrity: %{public}@", buf, 0xCu);
      }
    }

    if (!v10->_database)
    {

      v10 = 0;
    }

    _Block_object_dispose(&v23, 8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_obliterateWithReason:(uint64_t)reason preserveCopy:(int)copy generateStackshot:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!self)
  {
    goto LABEL_15;
  }

  v8 = _HDIsUnitTesting;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = copy == 0;
  }

  if (v11)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v12 = *(self + 16);
    v13 = v9;
    absoluteString = [v12 absoluteString];
    *buf = 138543618;
    v22 = absoluteString;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Obliterating NanoSync persistent dictionary at %{public}@: %{public}@", buf, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v19 = *(self + 16);
    v13 = v9;
    absoluteString = [v19 absoluteString];
    *buf = 138543618;
    v22 = absoluteString;
    v23 = 2114;
    v24 = v7;
    _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Obliterating NanoSync persistent dictionary at %{public}@: %{public}@", buf, 0x16u);
  }

LABEL_11:
  v16 = *(self + 24);
  if (v16 && [v16 isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__obliterateWithReason_preserveCopy_generateStackshot_ object:self file:@"HDIDSPersistentDictionary.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"(_database == nil) || ([_database isOpen] == NO)"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager hd_removeSQLiteDatabaseAtURL:*(self + 16) preserveCopy:reason];

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

void __53__HDIDSPersistentDictionary_initWithURL_objectClass___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Found integrity issues in IDS message database: %{public}@.", &v6, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(HDIDSPersistentDictionary *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDIDSPersistentDictionary;
  [(HDIDSPersistentDictionary *)&v3 dealloc];
}

- (void)_handleError:(void *)error format:(uint64_t)format
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = v11;
  if (self && v11)
  {
    v13 = MEMORY[0x277CCACA8];
    errorCopy = error;
    v15 = [[v13 alloc] initWithFormat:errorCopy arguments:&a9];

    _HKInitializeLogging();
    v16 = MEMORY[0x277CCC328];
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = v15;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
    }

    if ([v12 hd_isDatabaseCorruptionError])
    {
      [*(self + 24) close];
      v18 = *(self + 24);
      *(self + 24) = 0;

      [(HDIDSPersistentDictionary *)self _obliterateWithReason:0 preserveCopy:1 generateStackshot:?];
      if (([(HDIDSPersistentDictionary *)self _openDB]& 1) == 0)
      {
        _HKInitializeLogging();
        v19 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "failed to re-create database", buf, 2u);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(id)object forKey:(id)key expires:(double)expires
{
  objectCopy = object;
  keyCopy = key;
  v11 = keyCopy;
  if (objectCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  database = self->_database;
  v29 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__HDIDSPersistentDictionary_setObject_forKey_expires___block_invoke;
  v24[3] = &unk_2786144E0;
  v13 = v11;
  expiresCopy = expires;
  v25 = v13;
  selfCopy = self;
  v14 = objectCopy;
  v27 = v14;
  v15 = [(HDSQLiteDatabase *)database executeSQL:@"INSERT OR REPLACE INTO key_value_store (key error:expiration bindingHandler:value) VALUES (? enumerationHandler:?, ?)", &v29, v24, 0];
  v21 = v29;
  if ((v15 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v21 format:@"failed to store value for key '%@'", v16, v17, v18, v19, v20, v13];
  }
}

void __54__HDIDSPersistentDictionary_setObject_forKey_expires___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_double(a2, 2, *(a1 + 56));
  if (*(a1 + 40))
  {
    v5 = *(a1 + 48);
    v6 = MEMORY[0x277CCAAB0];
    v7 = v5;
    v8 = [[v6 alloc] initRequiringSecureCoding:1];
    [v7 encodeWithCoder:v8];

    v9 = [v8 encodedData];
  }

  else
  {
    v9 = 0;
  }

  HDSQLiteBindFoundationValueToStatement();
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__59;
  v26 = __Block_byref_object_dispose__59;
  v27 = 0;
  database = self->_database;
  v21 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__HDIDSPersistentDictionary_objectForKey___block_invoke;
  v19[3] = &unk_278614860;
  v7 = keyCopy;
  v20 = v7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__HDIDSPersistentDictionary_objectForKey___block_invoke_2;
  v18[3] = &unk_278614620;
  v18[4] = &v22;
  v8 = [(HDSQLiteDatabase *)database executeSQL:@"SELECT value FROM key_value_store WHERE key = ?" error:&v21 bindingHandler:v19 enumerationHandler:v18];
  v14 = v21;
  if ((v8 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v14 format:@"failed to lookup value for key '%@'", v9, v10, v11, v12, v13, v7];
  }

  v15 = [(HDIDSPersistentDictionary *)self _objectFromData:?];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __42__HDIDSPersistentDictionary_objectForKey___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)_objectFromData:(uint64_t)data
{
  v2 = 0;
  if (data && a2)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = a2;
    v6 = [[v4 alloc] initForReadingFromData:v5 error:0];

    v2 = [objc_alloc(*(data + 8)) initWithCoder:v6];
    [v6 finishDecoding];
  }

  return v2;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  database = self->_database;
  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HDIDSPersistentDictionary_removeObjectForKey___block_invoke;
  v16[3] = &unk_278614860;
  v7 = keyCopy;
  v17 = v7;
  v8 = [(HDSQLiteDatabase *)database executeSQL:@"DELETE FROM key_value_store WHERE key = ?" error:&v18 bindingHandler:v16 enumerationHandler:0];
  v14 = v18;
  if ((v8 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v14 format:@"failed to delete value for key '%@'", v9, v10, v11, v12, v13, v7];
  }
}

- (void)removeAllObjects
{
  database = self->_database;
  v12 = 0;
  v4 = [(HDSQLiteDatabase *)database executeSQL:@"DELETE FROM key_value_store" error:&v12 bindingHandler:0 enumerationHandler:0];
  v10 = v12;
  if ((v4 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v10 format:@"failed to delete all keys and values", v5, v6, v7, v8, v9, v11];
  }
}

- (void)enumerateObjectsSortedByExpirationDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = @"iterator";
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSPersistentDictionary.m" lineNumber:256 description:@"Invalid parameter not satisfying: %@"];
  }

  database = self->_database;
  v19 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HDIDSPersistentDictionary_enumerateObjectsSortedByExpirationDate___block_invoke;
  v17[3] = &unk_27861B8D8;
  v7 = dateCopy;
  v17[4] = self;
  v18 = v7;
  v8 = [(HDSQLiteDatabase *)database executeSQL:@"SELECT key error:value bindingHandler:expiration FROM key_value_store ORDER BY expiration ASC" enumerationHandler:&v19, 0, v17];
  v14 = v19;
  if ((v8 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v14 format:@"failed to iterate over all keys and values", v9, v10, v11, v12, v13, v16];
  }
}

BOOL __68__HDIDSPersistentDictionary_enumerateObjectsSortedByExpirationDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C90](a2, 0);
  v5 = MEMORY[0x22AAC6C30](a2, 1);
  v6 = MEMORY[0x22AAC6C50](a2, 2);
  v10 = 0;
  v7 = *(a1 + 40);
  v8 = [(HDIDSPersistentDictionary *)*(a1 + 32) _objectFromData:v5];
  (*(v7 + 16))(v7, v4, v8, &v10, v6);

  LOBYTE(v7) = v10;
  return (v7 & 1) == 0;
}

- (void)_recordMessage:(void *)message deviceID:(int)d type:(int)type outgoing:(int)outgoing request:(uint64_t)request length:
{
  v59 = *MEMORY[0x277D85DE8];
  v13 = a2;
  messageCopy = message;
  if (self)
  {
    Current = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219522;
      v46 = Current;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = messageCopy;
      v51 = 1024;
      dCopy = d;
      v53 = 1024;
      typeCopy = type;
      v55 = 1024;
      outgoingCopy = outgoing;
      v57 = 2048;
      requestCopy = request;
      _os_log_debug_impl(&dword_228986000, v16, OS_LOG_TYPE_DEBUG, "#IDSMessage (%lf) message='%@' deviceID:'%@' type=%d outgoing=%d request=%d length=%lld", buf, 0x3Cu);
    }

    v17 = *(self + 24);
    v44 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __82__HDIDSPersistentDictionary__recordMessage_deviceID_type_outgoing_request_length___block_invoke;
    v36[3] = &unk_27861B900;
    v37 = v13;
    dCopy2 = d;
    v39 = Current;
    typeCopy2 = type;
    outgoingCopy2 = outgoing;
    requestCopy2 = request;
    v38 = messageCopy;
    v18 = [v17 executeSQL:@"INSERT OR IGNORE INTO message_records (uuid error:type bindingHandler:timestamp enumerationHandler:{outgoing, is_request, length, device_id) VALUES (?, ?, ?, ?, ?, ?, ?)", &v44, v36, 0}];
    v24 = v44;
    if ((v18 & 1) == 0)
    {
      [(HDIDSPersistentDictionary *)self _handleError:v24 format:@"failed to record message event", v19, v20, v21, v22, v23, v34[0]];
    }

    v25 = *(self + 24);
    v35 = v24;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __82__HDIDSPersistentDictionary__recordMessage_deviceID_type_outgoing_request_length___block_invoke_2;
    v34[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    *&v34[4] = Current;
    v26 = [v25 executeSQL:@"DELETE FROM message_records WHERE timestamp < ?" error:&v35 bindingHandler:v34 enumerationHandler:0];
    v27 = v35;

    if ((v26 & 1) == 0)
    {
      [(HDIDSPersistentDictionary *)self _handleError:v27 format:@"failed to prune message event database", v28, v29, v30, v31, v32, v34[0]];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HDIDSPersistentDictionary__recordMessage_deviceID_type_outgoing_request_length___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int(a2, 2, *(a1 + 64));
  sqlite3_bind_double(a2, 3, *(a1 + 48));
  sqlite3_bind_int(a2, 4, *(a1 + 68));
  sqlite3_bind_int(a2, 5, *(a1 + 69));
  sqlite3_bind_int64(a2, 6, *(a1 + 56));
  v5 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

- (void)_recordMappingOfRequest:(void *)request toResponse:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  requestCopy = request;
  if (self)
  {
    Current = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v24 = Current;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = requestCopy;
      _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "#IDSMessage (%lf) request='%@' response='%@'", buf, 0x20u);
    }

    v9 = *(self + 24);
    v22 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__HDIDSPersistentDictionary__recordMappingOfRequest_toResponse___block_invoke;
    v19[3] = &unk_278613038;
    v20 = v5;
    v21 = requestCopy;
    v10 = [v9 executeSQL:@"INSERT INTO request_response_mappings (request error:response) VALUES (? bindingHandler:?)" enumerationHandler:{&v22, v19, 0}];
    v16 = v22;
    if ((v10 & 1) == 0)
    {
      [(HDIDSPersistentDictionary *)self _handleError:v16 format:@"failed to record message response mapping", v11, v12, v13, v14, v15, v18];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HDIDSPersistentDictionary__recordMappingOfRequest_toResponse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

- (void)didSendResponse:(id)response toRequest:(id)request deviceID:(id)d type:(int)type length:(int64_t)length
{
  requestCopy = request;
  responseCopy = response;
  [(HDIDSPersistentDictionary *)self _recordMessage:responseCopy deviceID:d type:type outgoing:1 request:0 length:length];
  [(HDIDSPersistentDictionary *)self _recordMappingOfRequest:requestCopy toResponse:responseCopy];
}

- (void)didReceiveResponse:(id)response toRequest:(id)request deviceID:(id)d type:(int)type length:(int64_t)length
{
  requestCopy = request;
  responseCopy = response;
  [(HDIDSPersistentDictionary *)self _recordMessage:responseCopy deviceID:d type:type outgoing:0 request:0 length:length];
  [(HDIDSPersistentDictionary *)self _recordMappingOfRequest:requestCopy toResponse:responseCopy];
}

- (void)didFinishSending:(id)sending
{
  v26 = *MEMORY[0x277D85DE8];
  sendingCopy = sending;
  Current = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v23 = Current;
    v24 = 2112;
    v25 = sendingCopy;
    _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "#IDSMessage (%lf) sent message='%@'", buf, 0x16u);
  }

  database = self->_database;
  v21 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__HDIDSPersistentDictionary_didFinishSending___block_invoke;
  v18[3] = &unk_278613B58;
  v20 = Current;
  v8 = sendingCopy;
  v19 = v8;
  v9 = [(HDSQLiteDatabase *)database executeSQL:@"UPDATE message_records SET send_timestamp=? WHERE uuid=?" error:&v21 bindingHandler:v18 enumerationHandler:0];
  v15 = v21;
  if ((v9 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v15 format:@"failed to record message sent", v10, v11, v12, v13, v14, v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __46__HDIDSPersistentDictionary_didFinishSending___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_double(a2, 1, *(a1 + 40));
  v3 = *(a1 + 32);

  return HDSQLiteBindFoundationValueToStatement();
}

- (void)didReceiveError:(id)error forMessageID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dCopy = d;
  Current = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
  {
    v21 = v9;
    domain = [errorCopy domain];
    *buf = 134218754;
    v29 = Current;
    v30 = 2112;
    v31 = dCopy;
    v32 = 2112;
    v33 = domain;
    v34 = 2048;
    code = [errorCopy code];
    _os_log_debug_impl(&dword_228986000, v21, OS_LOG_TYPE_DEBUG, "#IDSMessage (%lf) message='%@' error domain='%@' code=%ld", buf, 0x2Au);
  }

  database = self->_database;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__HDIDSPersistentDictionary_didReceiveError_forMessageID___block_invoke;
  v23[3] = &unk_2786199F8;
  v11 = errorCopy;
  v24 = v11;
  v26 = Current;
  v12 = dCopy;
  v25 = v12;
  v13 = [(HDSQLiteDatabase *)database executeSQL:@"UPDATE message_records SET error_domain=? error:error_code=? bindingHandler:error_timestamp=? WHERE uuid=?" enumerationHandler:&v27, v23, 0];
  v19 = v27;
  if ((v13 & 1) == 0)
  {
    [(HDIDSPersistentDictionary *)self _handleError:v11 format:@"failed to record message error", v14, v15, v16, v17, v18, v23[0]];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HDIDSPersistentDictionary_didReceiveError_forMessageID___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) domain];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 2, [*(a1 + 32) code]);
  sqlite3_bind_double(a2, 3, *(a1 + 48));
  v5 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

- (void)didCancel:(id)cancel
{
  cancelCopy = cancel;
  if ([cancelCopy count])
  {
    Current = CFAbsoluteTimeGetCurrent();
    database = self->_database;
    v18 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__HDIDSPersistentDictionary_didCancel___block_invoke;
    v15[3] = &unk_27861B928;
    v16 = cancelCopy;
    v17 = Current;
    v7 = [(HDSQLiteDatabase *)database performTransactionWithType:1 error:&v18 usingBlock:v15];
    v13 = v18;
    if ((v7 & 1) == 0)
    {
      [(HDIDSPersistentDictionary *)self _handleError:v13 format:@"failed to mark messages as canceled", v8, v9, v10, v11, v12, v14];
    }
  }
}

uint64_t __39__HDIDSPersistentDictionary_didCancel___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [objc_alloc(MEMORY[0x277D10B98]) initWithSQL:@"UPDATE message_records SET canceled=1 WHERE uuid=?" database:v5];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 40);
          *buf = 134218242;
          v24 = v14;
          v25 = 2112;
          v26 = v12;
          _os_log_debug_impl(&dword_228986000, v13, OS_LOG_TYPE_DEBUG, "#IDSMessage (%lf) canceled message='%@'", buf, 0x16u);
        }

        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __39__HDIDSPersistentDictionary_didCancel___block_invoke_427;
        v18[3] = &unk_278614860;
        v18[4] = v12;
        if (![v6 performStatementWithError:a3 bindingHandler:v18])
        {
          v15 = 0;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v15 = 1;
  }

  else
  {
    v15 = 1;
  }

LABEL_14:

  [v6 finish];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __83__HDIDSPersistentDictionary_messageIDsForPendingOutgoingMessagesWithType_deviceID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C90](a2, 0);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

@end