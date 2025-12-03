@interface HDDatabaseJournalDatabase
+ (uint64_t)_getIDForString:(void *)string database:(uint64_t)database error:;
+ (uint64_t)_openDatabase:(uint64_t)database error:;
- (BOOL)appendData:(id)data entryClass:(Class)class error:(id *)error;
- (BOOL)createAndOpenForWritingWithError:(id *)error;
- (BOOL)isOpen;
- (BOOL)openForReadingWithError:(id *)error;
- (BOOL)removeWithError:(id *)error;
- (HDDatabaseJournalDatabase)init;
- (HDDatabaseJournalDatabase)initWithURL:(id)l;
- (NSString)description;
- (NSString)journalPath;
- (NSString)name;
- (double)modificationTime;
- (id)_getIdentifierAndCreationDate:(uint64_t)date error:;
- (id)getIdentifierAndCreationDate:(id *)date error:(id *)error;
- (int64_t)size;
- (unsigned)enumerateEntriesWithProfile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler;
- (void)_clearCachedProperties;
- (void)_createDatabaseConnectionWithURL:(uint64_t)l;
- (void)_faultCachedProperties;
- (void)close;
- (void)dealloc;
@end

@implementation HDDatabaseJournalDatabase

- (HDDatabaseJournalDatabase)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabaseJournalDatabase)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = HDDatabaseJournalDatabase;
  v5 = [(HDDatabaseJournalDatabase *)&v11 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathComponent:@"journaldb.sqlite"];
    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    size = v5->_size;
    v5->_size = 0;

    modificationDate = v5->_modificationDate;
    v5->_modificationDate = 0;

    v5->_enumeratedBytesThreshold = 0x40000;
  }

  return v5;
}

- (void)dealloc
{
  [(HDDatabaseJournalDatabase *)self close];
  v3.receiver = self;
  v3.super_class = HDDatabaseJournalDatabase;
  [(HDDatabaseJournalDatabase *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  path = [(NSURL *)self->_databaseURL path];
  isOpen = [(HDDatabaseJournalDatabase *)self isOpen];
  v6 = @"closed";
  if (isOpen)
  {
    v6 = @"open";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@)", path, v6];

  return v7;
}

- (id)getIdentifierAndCreationDate:(id *)date error:(id *)error
{
  if (![(HDDatabaseJournalDatabase *)self isOpen])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Cannot get identifier for %@", self}];
  }

  return [(HDDatabaseJournalDatabase *)self _getIdentifierAndCreationDate:date error:error];
}

- (id)_getIdentifierAndCreationDate:(uint64_t)date error:
{
  if (self)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__111;
    v18 = __Block_byref_object_dispose__111;
    v19 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = *(self + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HDDatabaseJournalDatabase__getIdentifierAndCreationDate_error___block_invoke_2;
    v9[3] = &unk_278615C30;
    v9[4] = &v14;
    v9[5] = &v10;
    if ([v5 executeSQL:@"SELECT value error:modification_date FROM key_value_store WHERE key = ?" bindingHandler:date enumerationHandler:{&__block_literal_global_402, v9}])
    {
      v6 = v15[5];
      if (v6)
      {
        if (a2)
        {
          *a2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v11[3]];
          v6 = v15[5];
        }

        v7 = v6;
        goto LABEL_9;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:date code:100 format:@"No database identifier has been set"];
    }

    v7 = 0;
LABEL_9:
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (NSString)name
{
  uRLByDeletingLastPathComponent = [(NSURL *)self->_databaseURL URLByDeletingLastPathComponent];
  lastPathComponent = [uRLByDeletingLastPathComponent lastPathComponent];

  return lastPathComponent;
}

- (NSString)journalPath
{
  uRLByDeletingLastPathComponent = [(NSURL *)self->_databaseURL URLByDeletingLastPathComponent];
  v2URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
  path = [v2URLByDeletingLastPathComponent path];

  return path;
}

- (BOOL)isOpen
{
  database = self->_database;
  if (database)
  {
    LOBYTE(database) = [(HDSQLiteDatabase *)database isOpen];
  }

  return database;
}

- (int64_t)size
{
  size = self->_size;
  if (!size)
  {
    [(HDDatabaseJournalDatabase *)self _faultCachedProperties];
    size = self->_size;
  }

  return [(NSNumber *)size integerValue];
}

- (void)_faultCachedProperties
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *MEMORY[0x277CBE838];
    v3 = *MEMORY[0x277CBE7B0];
    v33[0] = *MEMORY[0x277CBE838];
    v33[1] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    selfCopy = self;
    v32[0] = *(self + 8);
    uRLByDeletingPathExtension = [v32[0] URLByDeletingPathExtension];
    v6 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"sqlite-wal"];
    v32[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v10 = v9;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v27 + 1) + 8 * i) resourceValuesForKeys:v4 error:0];
          v17 = [v16 objectForKeyedSubscript:v2];
          v18 = [v16 objectForKeyedSubscript:v3];
          if (v17)
          {
            v13 += [v17 integerValue];
          }

          if (v18)
          {
            [v18 timeIntervalSinceReferenceDate];
            if (v10 < v19)
            {
              v10 = v19;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    v21 = *(selfCopy + 24);
    *(selfCopy + 24) = v20;

    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v10];
    v23 = *(selfCopy + 32);
    *(selfCopy + 32) = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (double)modificationTime
{
  modificationDate = self->_modificationDate;
  if (!modificationDate)
  {
    [(HDDatabaseJournalDatabase *)self _faultCachedProperties];
    modificationDate = self->_modificationDate;
  }

  [(NSDate *)modificationDate timeIntervalSinceReferenceDate];
  return result;
}

- (BOOL)appendData:(id)data entryClass:(Class)class error:(id *)error
{
  dataCopy = data;
  if ([(HDDatabaseJournalDatabase *)self isOpen])
  {
    [(HDDatabaseJournalDatabase *)self _clearCachedProperties];
    database = self->_database;
    v10 = dataCopy;
    v11 = database;
    v12 = objc_opt_self();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__HDDatabaseJournalDatabase__appendData_entryClass_database_error___block_invoke;
    v16[3] = &unk_278622E60;
    v18 = v12;
    classCopy = class;
    v17 = v10;
    v13 = v10;
    v14 = [(HDSQLiteDatabase *)v11 performTransactionWithType:1 error:error usingBlock:v16];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Cannot append data because journal database is not open"];
    v14 = 0;
  }

  return v14;
}

- (void)_clearCachedProperties
{
  if (self)
  {
    [*(self + 8) removeAllCachedResourceValues];
    v2 = *(self + 24);
    *(self + 24) = 0;

    v3 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (void)close
{
  database = self->_database;
  self->_database = 0;
  v3 = database;

  [(HDSQLiteDatabase *)v3 close];
}

- (BOOL)createAndOpenForWritingWithError:(id *)error
{
  if ([(HDDatabaseJournalDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    path = [(NSURL *)self->_databaseURL path];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournalDatabase.m" lineNumber:141 description:{@"Cannot create and open %@ because it is already open", path}];
  }

  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  uRLByDeletingLastPathComponent = [(NSURL *)self->_databaseURL URLByDeletingLastPathComponent];
  v8 = [v6 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

  if (!v8)
  {
    goto LABEL_7;
  }

  [(HDDatabaseJournalDatabase *)self _createDatabaseConnectionWithURL:?];
  if (([HDDatabaseJournalDatabase _openDatabase:error error:?]& 1) == 0)
  {
    [(HDDatabaseJournalDatabase *)self close];
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  [(HDDatabaseJournalDatabase *)self _clearCachedProperties];
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)_createDatabaseConnectionWithURL:(uint64_t)l
{
  if (l)
  {
    v3 = MEMORY[0x277D10B30];
    v4 = a2;
    v5 = [[v3 alloc] initWithDatabaseURL:v4];

    v6 = *(l + 16);
    *(l + 16) = v5;

    [*(l + 16) setFileProtectionType:*MEMORY[0x277CCA198]];
    v7 = _Block_copy(*(l + 64));
    if (v7)
    {
      v8 = v7;
      (*(v7 + 2))(v7, l);
      v7 = v8;
    }
  }
}

+ (uint64_t)_openDatabase:(uint64_t)database error:
{
  v4 = a2;
  objc_opt_self();
  if (![v4 openWithError:database])
  {
    v6 = v4;
    objc_opt_self();
    v12 = 0;
    v7 = v6;
    objc_opt_self();
    v8 = [v7 userVersionWithDatabaseName:0 error:&v12];

    v9 = v12;
    if (v8 == 1)
    {
LABEL_4:
      v5 = 1;
LABEL_10:

      goto LABEL_11;
    }

    if (v8 < 0)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:database code:100 description:@"Unable to read schema version" underlyingError:v9];
    }

    else
    {
      if (!v8)
      {
        v11 = v7;
        objc_opt_self();
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60__HDDatabaseJournalDatabase__createSchemaForDatabase_error___block_invoke;
        v13[3] = &unk_278622E38;
        v14 = &unk_283CAF730;
        v5 = [v11 performTransactionWithType:1 error:database usingBlock:v13];

        if (!v5)
        {
          goto LABEL_10;
        }

        goto LABEL_4;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:database code:116 format:{@"Journal database schema version '%ld' greater than current '%ld'", v8, 1}];
    }

    v5 = 0;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (unsigned)enumerateEntriesWithProfile:(id)profile transaction:(id)transaction error:(id *)error handler:(id)handler
{
  v83 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  if ([(HDDatabaseJournalDatabase *)self isOpen])
  {
    v54 = handlerCopy;
    v57 = 0;
    v55 = [(HDDatabaseJournalDatabase *)self _getIdentifierAndCreationDate:&v57 error:?];
    v53 = v57;
    if (v55)
    {
      v11 = profileCopy;
      if (self)
      {
        unitTesting_keyValueDomainOverride = self->_unitTesting_keyValueDomainOverride;
        if (!unitTesting_keyValueDomainOverride)
        {
          unitTesting_keyValueDomainOverride = self->_keyValueDomain;
          if (!unitTesting_keyValueDomainOverride)
          {
            v13 = MEMORY[0x277CCACA8];
            journalPath = [(HDDatabaseJournalDatabase *)self journalPath];
            lastPathComponent = [journalPath lastPathComponent];
            v16 = [v13 stringWithFormat:@"JournalDatabase-%@", lastPathComponent];

            v17 = [[HDKeyValueDomain alloc] initWithCategory:100 domainName:v16 profile:v11];
            keyValueDomain = self->_keyValueDomain;
            self->_keyValueDomain = v17;

            unitTesting_keyValueDomainOverride = self->_keyValueDomain;
          }
        }

        v19 = unitTesting_keyValueDomainOverride;
      }

      else
      {
        v19 = 0;
      }

      v75[0] = @"IDENTIFIER";
      v75[1] = @"anchor";
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
      v21 = [(HDKeyValueDomain *)v19 valuesForKeys:v20 error:error];
      v22 = v21;
      if (!v21)
      {
        v31 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v23 = [v21 objectForKeyedSubscript:@"anchor"];
      longLongValue = [v23 longLongValue];

      v52 = [v22 objectForKeyedSubscript:@"IDENTIFIER"];
      if ([v55 isEqualToString:v52])
      {
        v25 = longLongValue;
      }

      else
      {
        v25 = 0;
      }

      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_INFO, "Enumerate %@ from anchor %lld", buf, 0x16u);
      }

      enumeratedBytesThreshold = self->_enumeratedBytesThreshold;
      v28 = self->_database;
      v51 = v54;
      objc_opt_self();
      v29 = v28;
      objc_opt_self();
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0;
      v64 = MEMORY[0x277D85DD0];
      v65 = 3221225472;
      v66 = __61__HDDatabaseJournalDatabase__maxEntryAnchorInDatabase_error___block_invoke;
      v67 = &unk_278614620;
      v68 = &v69;
      if ([(HDSQLiteDatabase *)v29 executeSQL:@"SELECT MAX(ROWID) FROM entries" error:error bindingHandler:0 enumerationHandler:&v64])
      {
        v30 = v70[3];
      }

      else
      {
        v30 = -1;
      }

      _Block_object_dispose(&v69, 8);

      if (v30 < 0)
      {

LABEL_49:
        v31 = 0;
LABEL_50:

        goto LABEL_51;
      }

      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = 0;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = v25;
      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v63 = 3;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __103__HDDatabaseJournalDatabase__enumerateEntriesInDatabase_anchor_enumeratedBytesThreshold_error_handler___block_invoke;
      v59[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
      v59[4] = v25;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __103__HDDatabaseJournalDatabase__enumerateEntriesInDatabase_anchor_enumeratedBytesThreshold_error_handler___block_invoke_2;
      v77 = &unk_278622E88;
      v79 = &v69;
      v80 = &v64;
      v37 = v36;
      v81 = &v60;
      v82 = enumeratedBytesThreshold;
      v38 = v37;
      v78 = v37;
      if (([(HDSQLiteDatabase *)v29 executeSQL:@"SELECT entries.ROWID AS anchor error:string bindingHandler:size enumerationHandler:data FROM entries INNER JOIN unique_strings ON unique_strings.ROWID = entries.class_name WHERE anchor > ? ORDER BY anchor ASC", error, v59, buf]& 1) != 0)
      {
        v39 = [v38 count];
        v25 = v70[3];
        if (v39)
        {
          v40 = *(v65 + 24);
          v58 = 0;
          v31 = (*(v51 + 2))(v51, v38, v40, v25 >= v30, &v58);
          v41 = v58;
          if (v31 - 3 >= 2)
          {
            v44 = v41;
            v45 = v44;
            if (v44)
            {
              if (error)
              {
                v46 = v44;
                *error = v45;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v25 = v70[3];
LABEL_47:

            _Block_object_dispose(&v60, 8);
            _Block_object_dispose(&v69, 8);
            _Block_object_dispose(&v64, 8);

            if (v31 - 3 > 1)
            {
              goto LABEL_50;
            }

            v74[0] = v55;
            v73[0] = @"IDENTIFIER";
            v73[1] = @"anchor";
            v47 = [MEMORY[0x277CCABB0] numberWithLongLong:v25];
            v74[1] = v47;
            v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];

            LODWORD(v47) = [(HDKeyValueDomain *)v19 setValuesWithDictionary:v48 error:error];
            if (v47)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

          v25 = v70[3];
          if (v31 != 3)
          {
            v31 = 4;
            goto LABEL_47;
          }
        }
      }

      else if ((*(v61 + 6) - 3) < 2)
      {
        v31 = 0;
        goto LABEL_47;
      }

      v31 = *(v61 + 6);
      goto LABEL_47;
    }

    v56 = 0;
    if (self)
    {
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = 0;
      database = self->_database;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__HDDatabaseJournalDatabase__hasEmptySchemaWithError___block_invoke;
      v77 = &unk_278614620;
      v78 = &v64;
      if (([(HDSQLiteDatabase *)database executeSQL:@"SELECT COUNT(*) FROM sqlite_master" error:&v56 bindingHandler:0 enumerationHandler:buf]& 1) != 0)
      {
        v33 = *(v65 + 24);
        _Block_object_dispose(&v64, 8);
        v19 = v56;
        if (v33 < 1)
        {
          v31 = 3;
LABEL_53:

          handlerCopy = v54;
          goto LABEL_54;
        }

        v34 = v53;
        v20 = v34;
        if (v34)
        {
          if (error)
          {
            v35 = v34;
            v31 = 0;
            *error = v20;
LABEL_52:

            goto LABEL_53;
          }

          _HKLogDroppedError();
        }

LABEL_58:
        v31 = 0;
        goto LABEL_52;
      }

      _Block_object_dispose(&v64, 8);
      v42 = v56;
      v20 = v42;
      if (v42)
      {
        if (error)
        {
          v43 = v42;
          v31 = 0;
          *error = v20;
        }

        else
        {
          _HKLogDroppedError();
          v31 = 0;
        }

        v19 = v20;
        goto LABEL_52;
      }
    }

    else
    {
      v20 = 0;
    }

    v19 = 0;
    goto LABEL_58;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Cannot enumerate data because journal database is not open"];
  v31 = 0;
LABEL_54:

  v49 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)openForReadingWithError:(id *)error
{
  if ([(HDDatabaseJournalDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    path = [(NSURL *)self->_databaseURL path];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournalDatabase.m" lineNumber:245 description:{@"Cannot open %@ because it is already open", path}];
  }

  [(HDDatabaseJournalDatabase *)self _createDatabaseConnectionWithURL:?];
  v6 = [HDDatabaseJournalDatabase _openDatabase:error error:?];
  if ((v6 & 1) == 0)
  {
    [(HDDatabaseJournalDatabase *)self close];
  }

  return v6;
}

- (BOOL)removeWithError:(id *)error
{
  if ([(HDDatabaseJournalDatabase *)self isOpen])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    path = [(NSURL *)self->_databaseURL path];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseJournalDatabase.m" lineNumber:265 description:{@"Cannot remove %@ because it is still open", path}];
  }

  [(HDDatabaseJournalDatabase *)self _clearCachedProperties];
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  uRLByDeletingLastPathComponent = [(NSURL *)self->_databaseURL URLByDeletingLastPathComponent];
  v8 = [v6 removeItemAtURL:uRLByDeletingLastPathComponent error:error];

  return v8;
}

uint64_t __60__HDDatabaseJournalDatabase__createSchemaForDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 executeSQLStatements:*(a1 + 32) error:a3] && objc_msgSend(v5, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"INSERT OR IGNORE INTO key_value_store (key, value, modification_date) VALUES (?, ?, ?)", a3, &__block_literal_global_119, 0))
  {
    v6 = [v5 setUserVersion:1 withDatabaseName:0 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __60__HDDatabaseJournalDatabase__createSchemaForDatabase_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindStringToStatement();
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  HDSQLiteBindStringToStatement();

  Current = CFAbsoluteTimeGetCurrent();

  return sqlite3_bind_double(a2, 3, Current);
}

uint64_t __67__HDDatabaseJournalDatabase__appendData_entryClass_database_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 currentOSBuild];
  v9 = [(HDDatabaseJournalDatabase *)v6 _getIDForString:v8 database:v5 error:a3];

  if (v9 < 1 || (v10 = *(a1 + 40), NSStringFromClass(*(a1 + 48)), v11 = objc_claimAutoreleasedReturnValue(), v12 = [(HDDatabaseJournalDatabase *)v10 _getIDForString:v11 database:v5 error:a3], v11, v12 < 1))
  {
    v17 = 0;
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = v5;
    objc_opt_self();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__HDDatabaseJournalDatabase__insertData_osBuildStringID_classNameStringID_database_error___block_invoke;
    v19[3] = &unk_278619A20;
    v21 = v9;
    v22 = v12;
    v20 = v14;
    v16 = v14;
    v17 = [v15 executeSQL:@"INSERT INTO entries (os_build error:class_name bindingHandler:size enumerationHandler:{data) VALUES (?, ?, ?, ?)", a3, v19, 0}];
  }

  return v17;
}

+ (uint64_t)_getIDForString:(void *)string database:(uint64_t)database error:
{
  v6 = a2;
  stringCopy = string;
  objc_opt_self();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HDDatabaseJournalDatabase__getIDForString_database_error___block_invoke;
  v15[3] = &unk_278614860;
  v8 = v6;
  v16 = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HDDatabaseJournalDatabase__getIDForString_database_error___block_invoke_2;
  v14[3] = &unk_278614620;
  v14[4] = &v17;
  if ([stringCopy executeSQL:@"SELECT ROWID FROM unique_strings WHERE string = ?" error:database bindingHandler:v15 enumerationHandler:v14])
  {
    longLongValue = v18[3];
    if (longLongValue <= 0)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__HDDatabaseJournalDatabase__getIDForString_database_error___block_invoke_3;
      v12[3] = &unk_278614860;
      v13 = v8;
      if ([stringCopy executeSQL:@"INSERT INTO unique_strings (string) VALUES (?)" error:database bindingHandler:v12 enumerationHandler:0])
      {
        lastInsertRowID = [stringCopy lastInsertRowID];
        longLongValue = [lastInsertRowID longLongValue];
      }

      else
      {
        longLongValue = -1;
      }
    }
  }

  else
  {
    longLongValue = -1;
  }

  _Block_object_dispose(&v17, 8);
  return longLongValue;
}

uint64_t __90__HDDatabaseJournalDatabase__insertData_osBuildStringID_classNameStringID_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) length]);
  v4 = *(a1 + 32);

  return HDSQLiteBindFoundationValueToStatement();
}

BOOL __103__HDDatabaseJournalDatabase__enumerateEntriesInDatabase_anchor_enumeratedBytesThreshold_error_handler___block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C90](a2, 1);
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6C30](a2, 3);
  *(*(a1[6] + 8) + 24) += v5;
  v7 = a1[4];
  v8 = [[HDJournalChapterItem alloc] initWithEntryClassName:v4 serializedEntryData:v6];
  [v7 addObject:v8];

  v9 = *(*(a1[6] + 8) + 24);
  v10 = a1[8];
  if (v9 >= v10)
  {
    *(*(a1[7] + 8) + 24) = 4;
  }

  v11 = v9 < v10;

  return v11;
}

uint64_t __65__HDDatabaseJournalDatabase__getIdentifierAndCreationDate_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C90](a2, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C50](a2, 1);
  return 1;
}

@end