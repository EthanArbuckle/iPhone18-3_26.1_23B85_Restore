@interface CRSQLiteConnection
+ (id)connectionToNewInMemoryStore;
- (BOOL)isStatementCacheTooLarge;
- (CRSQLiteConnection)initWithPath:(id)path;
- (CRSQLiteConnection)initWithPath:(id)path databaseName:(id)name;
- (const)_vfsModuleName;
- (int)beginTransactionWithType:(int)type;
- (int)commitTransaction;
- (int)open;
- (int)rollbackTransaction;
- (sqlite3_stmt)preparedStatementForPattern:(id)pattern;
- (void)clearStatementCache;
- (void)close;
- (void)dealloc;
- (void)flush;
@end

@implementation CRSQLiteConnection

- (int)commitTransaction
{
  db = self->_db;
  if (!db)
  {
    sub_100018E3C();
  }

  if (!self->_transactionCount)
  {
    return 0;
  }

  result = sub_100001444(db, "COMMIT", 0, 0, 0);
  self->_transactionCount = 0;
  return result;
}

- (void)flush
{
  [(CRSQLiteConnection *)self commitTransaction];
  CRSearchContext = self->_CRSearchContext;
  if (CRSearchContext)
  {
    sub_100001CEC(CRSearchContext);
  }

  CRPhoneSearchContext = self->_CRPhoneSearchContext;
  if (CRPhoneSearchContext)
  {
    [CRPhoneSearchContext flush];
  }

  if ([(CRSQLiteConnection *)self isStatementCacheTooLarge])
  {

    [(CRSQLiteConnection *)self clearStatementCache];
  }
}

- (int)rollbackTransaction
{
  db = self->_db;
  if (!db)
  {
    sub_100018E68();
  }

  if (!self->_transactionCount)
  {
    return 0;
  }

  result = sub_100001444(db, "ROLLBACK", 0, 0, 0);
  self->_transactionCount = 0;
  return result;
}

+ (id)connectionToNewInMemoryStore
{
  v2 = [[self alloc] initWithPath:@":memory:"];

  return v2;
}

- (CRSQLiteConnection)initWithPath:(id)path
{
  if (!path)
  {
    sub_100018910();
  }

  v6.receiver = self;
  v6.super_class = CRSQLiteConnection;
  v4 = [(CRSQLiteConnection *)&v6 init];
  if (v4)
  {
    v4->_path = [path copy];
    v4->_log = os_log_create("com.apple.contacts.recentsd", "statement-cache");
  }

  return v4;
}

- (CRSQLiteConnection)initWithPath:(id)path databaseName:(id)name
{
  if (!name)
  {
    sub_10001893C();
  }

  v5 = [path stringByAppendingPathComponent:name];

  return [(CRSQLiteConnection *)self initWithPath:v5];
}

- (void)dealloc
{
  if (self->_db)
  {
    sub_100018968();
  }

  statementCache = self->_statementCache;
  if (statementCache)
  {
    CFRelease(statementCache);
  }

  ICUSearchContext = self->_ICUSearchContext;
  if (ICUSearchContext)
  {
    sub_100018074(ICUSearchContext, a2);
  }

  CRSearchContext = self->_CRSearchContext;
  if (CRSearchContext)
  {
    sub_100013928(CRSearchContext);
  }

  CRPhoneSearchContext = self->_CRPhoneSearchContext;
  if (CRPhoneSearchContext)
  {
  }

  v7.receiver = self;
  v7.super_class = CRSQLiteConnection;
  [(CRSQLiteConnection *)&v7 dealloc];
}

- (const)_vfsModuleName
{
  if (qword_100034350 != -1)
  {
    sub_100018994();
  }

  return [@"CoreRecentsVFS" UTF8String];
}

- (int)open
{
  if (self->_db)
  {
    sub_1000189A8();
  }

  uTF8String = [(NSString *)self->_path UTF8String];
  _vfsModuleName = [(CRSQLiteConnection *)self _vfsModuleName];
  ppDb = 0;
  [(NSString *)self->_path stringByDeletingLastPathComponent];
  if (sqlite3_open_v2(uTF8String, &ppDb, 6, _vfsModuleName))
  {
    CPFileBuildDirectoriesToPath();
    if (sqlite3_open_v2(uTF8String, &ppDb, 6, _vfsModuleName))
    {
      chmod(uTF8String, 0x180u);
      v5 = sqlite3_open_v2(uTF8String, &ppDb, 6, _vfsModuleName);
      if (v5)
      {
        v6 = v5;
        v7 = [NSString stringWithFormat:@"opening database %s", uTF8String];
LABEL_33:
        CRLogSQLiteError(ppDb, v7);
        sqlite3_close(ppDb);
        return v6;
      }
    }
  }

  if (!self->_ICUSearchContext)
  {
    self->_ICUSearchContext = sub_100018070(0, 3);
  }

  if (!self->_CRSearchContext)
  {
    self->_CRSearchContext = sub_100013914();
  }

  if (!self->_CRPhoneSearchContext)
  {
    self->_CRPhoneSearchContext = sub_100013DB8();
  }

  v8 = sqlite3_extended_result_codes(ppDb, 1);
  if (v8)
  {
    v6 = v8;
    v7 = @"enabling extended error codes";
    goto LABEL_33;
  }

  function = sqlite3_create_function(ppDb, "icusearch", 3, 1, self->_ICUSearchContext, sub_1000137F4, 0, 0);
  if (function)
  {
    v6 = function;
    v7 = @"creating custom icusearch function";
    goto LABEL_33;
  }

  v10 = sqlite3_create_function(ppDb, "cpsearch", 3, 1, self->_CRSearchContext, sub_100013980, 0, 0);
  if (v10)
  {
    v6 = v10;
    v7 = @"creating custom cpsearch function";
    goto LABEL_33;
  }

  v11 = sqlite3_create_function(ppDb, "phonesearch", 3, 1, self->_CRPhoneSearchContext, sub_100013DC8, 0, 0);
  if (v11)
  {
    v6 = v11;
    v7 = @"creating custom phonesearch function";
    goto LABEL_33;
  }

  busy = sqlite3_busy_timeout(ppDb, 0x7FFFFFFF);
  if (busy)
  {
    v6 = busy;
    v7 = @"setting busy timeout";
    goto LABEL_33;
  }

  v13 = sub_100001444(ppDb, "PRAGMA page_size = 4096;", 0, 0, 0);
  if (v13)
  {
    v6 = v13;
    v7 = @"setting page_size";
    goto LABEL_33;
  }

  v14 = sub_100001444(ppDb, "PRAGMA auto_vacuum = 1;", 0, 0, 0);
  if (v14)
  {
    v6 = v14;
    v7 = @"setting auto_vacuum";
    goto LABEL_33;
  }

  v15 = sub_100001444(ppDb, "PRAGMA cache_size = 100;", 0, 0, 0);
  if (v15)
  {
    v6 = v15;
    v7 = @"setting cache_size";
    goto LABEL_33;
  }

  v16 = sub_100001444(ppDb, "PRAGMA journal_mode = WAL;", 0, 0, 0);
  if (v16)
  {
    v6 = v16;
    v7 = @"setting journal_mode";
    goto LABEL_33;
  }

  v17 = sub_100001444(ppDb, "PRAGMA foreign_keys = ON;", 0, 0, 0);
  if (v17)
  {
    v6 = v17;
    v7 = @"setting foreign_keys";
    goto LABEL_33;
  }

  v6 = 0;
  if (ppDb)
  {
    self->_db = ppDb;
  }

  return v6;
}

- (void)close
{
  if (self->_db)
  {
    v3 = +[CRLogging log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      db = self->_db;
      v5 = 134217984;
      v6 = db;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing sqlite connection %p", &v5, 0xCu);
    }

    [(CRSQLiteConnection *)self clearStatementCache];
    sqlite3_close(self->_db);
    self->_db = 0;
  }
}

- (BOOL)isStatementCacheTooLarge
{
  statementCache = self->_statementCache;
  if (statementCache)
  {
    Count = CFDictionaryGetCount(statementCache);
    if (Count < 3001)
    {
      LOBYTE(statementCache) = 0;
    }

    else
    {
      v5 = Count;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
      {
        sub_1000189D4(v5, log);
      }

      LOBYTE(statementCache) = 1;
    }
  }

  return statementCache;
}

- (void)clearStatementCache
{
  statementCache = self->_statementCache;
  if (statementCache)
  {
    CFDictionaryApplyFunction(statementCache, sub_100011790, 0);
    v4 = self->_statementCache;

    CFDictionaryRemoveAllValues(v4);
  }
}

- (sqlite3_stmt)preparedStatementForPattern:(id)pattern
{
  if (!self->_db)
  {
    sub_100018D8C();
  }

  value = 0;
  +[NSDate timeIntervalSinceReferenceDate];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100018A4C();
  }

  statementCache = self->_statementCache;
  if (!statementCache)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100018AC0();
    }

    statementCache = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    self->_statementCache = statementCache;
  }

  ValueIfPresent = CFDictionaryGetValueIfPresent(statementCache, pattern, &value);
  v7 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
  if (ValueIfPresent)
  {
    if (v7)
    {
      sub_100018B00();
    }
  }

  else
  {
    if (v7)
    {
      sub_100018B40();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    sqlite3_prepare_v2(self->_db, [pattern UTF8String], -1, &value, 0);
    +[NSDate timeIntervalSinceReferenceDate];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100018B80();
    }

    if (value)
    {
      CFDictionarySetValue(self->_statementCache, pattern, value);
    }

    else
    {
      CRLogSQLiteError(self->_db, [NSString stringWithFormat:@"preparing statement for query %@", pattern]);
      v8 = sqlite3_errcode(self->_db);
      if (v8 == 10)
      {
        v11 = 0;
        sqlite3_file_control(self->_db, 0, 4, &v11);
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100018C84(&v11);
        }
      }

      else
      {
        v9 = v8;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100018C08(v9);
        }
      }
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100018D04();
  }

  return value;
}

- (int)beginTransactionWithType:(int)type
{
  db = self->_db;
  if (!db)
  {
    sub_100018E10();
  }

  transactionCount = self->_transactionCount;
  if (transactionCount)
  {
    if (self->_transactionType != type)
    {
      sub_100018DB8();
    }

    goto LABEL_4;
  }

  if (type >= 3)
  {
    sub_100018DE4();
  }

  result = sub_100001444(db, (&off_10002D378)[type], 0, 0, 0);
  self->_transactionType = type;
  if (!result)
  {
    transactionCount = self->_transactionCount;
LABEL_4:
    result = 0;
    self->_transactionCount = transactionCount + 1;
  }

  return result;
}

@end