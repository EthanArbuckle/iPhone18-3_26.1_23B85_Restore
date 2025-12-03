@interface TransactionLog
+ (id)serializeTransaction:(id)transaction;
- (TransactionLog)initWithFileName:(id)name withDescription:(const char *)description;
- (id)getDefaultLogDirectory;
- (id)getNTransactions:(unint64_t)transactions;
- (id)getNTransactionsSync:(unint64_t)sync;
- (id)getSomeTransactions;
- (id)getTransactions;
- (unint64_t)getTransactionCount;
- (void)append:(id)append;
- (void)appendSync:(id)sync;
- (void)appendTransactionSync:(id)sync withFileHandle:(id)handle;
- (void)clear;
- (void)clearSync;
- (void)createLogDirectoryAndFile;
- (void)initializeTransactionCountSync;
- (void)migrateFromKeyedArchiverSync;
- (void)readFileOffset;
- (void)readTransactionsProcessed:(unint64_t)processed;
- (void)readTransactionsProcessedSync:(unint64_t)sync;
- (void)writeFileOffset;
@end

@implementation TransactionLog

- (id)getDefaultLogDirectory
{
  v2 = getMobileUserLibraryDirectoryPath();
  v3 = [v2 URLByAppendingPathComponent:@"CallHistoryTransactions"];
  path = [v3 path];

  return path;
}

- (void)createLogDirectoryAndFile
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000231E4;
  v2[3] = &unk_100050FA0;
  v2[4] = self;
  [(TransactionLog *)self execute:v2];
}

- (void)initializeTransactionCountSync
{
  v3 = 0;
  do
  {
    v4 = objc_autoreleasePoolPush();
    getSomeTransactionsSync = [(TransactionLog *)self getSomeTransactionsSync];
    v6 = [getSomeTransactionsSync count];

    v3 += v6;
    objc_autoreleasePoolPop(v4);
  }

  while (v6);
  [(TransactionLog *)self setTransactionCount:v3];

  [(TransactionLog *)self readFileOffset];
}

- (TransactionLog)initWithFileName:(id)name withDescription:(const char *)description
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = TransactionLog;
  v7 = [(TransactionLog *)&v16 initWithName:description];
  v8 = v7;
  if (v7)
  {
    getDefaultLogDirectory = [(TransactionLog *)v7 getDefaultLogDirectory];
    defaultLogDirectory = v8->_defaultLogDirectory;
    v8->_defaultLogDirectory = getDefaultLogDirectory;

    v11 = [nameCopy stringByAppendingString:@".log"];
    defaultLogFileName = v8->_defaultLogFileName;
    v8->_defaultLogFileName = v11;

    v13 = [(NSString *)v8->_defaultLogDirectory stringByAppendingPathComponent:v8->_defaultLogFileName];
    path = v8->_path;
    v8->_path = v13;

    v8->_transactionCount = 0;
    [(TransactionLog *)v8 readFileOffset];
    [(TransactionLog *)v8 createLogDirectoryAndFile];
  }

  return v8;
}

- (void)readFileOffset
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:self->_path];
  v5 = v4;
  if (v4)
  {
    self->_fileOffset = [v4 unsignedLongLongValue];
  }

  else
  {
    self->_fileOffset = 0;
    logHandle = [(TransactionLog *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Could not find file offset key in the preferences", v7, 2u);
    }
  }
}

- (void)writeFileOffset
{
  v5 = [NSNumber numberWithUnsignedLongLong:[(TransactionLog *)self fileOffset]];
  v3 = +[NSUserDefaults standardUserDefaults];
  path = [(TransactionLog *)self path];
  [v3 setObject:v5 forKey:path];

  [v3 synchronize];
}

- (void)append:(id)append
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000237F0;
  v4[3] = &unk_100050E90;
  selfCopy = self;
  appendCopy = append;
  v3 = appendCopy;
  [(TransactionLog *)selfCopy executeSync:v4];
}

- (void)appendSync:(id)sync
{
  syncCopy = sync;
  path = [(TransactionLog *)self path];
  v6 = [NSFileHandle fileHandleForWritingAtPath:path];

  if (!v6)
  {
    logHandle = [(TransactionLog *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003464C(self);
    }

LABEL_29:

    goto LABEL_30;
  }

  [v6 seekToEndOfFile];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = syncCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(TransactionLog *)self appendTransactionSync:*(*(&v30 + 1) + 8 * i) withFileHandle:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v9);
  }

  [v6 synchronizeFile];
  -[TransactionLog setTransactionCount:](self, "setTransactionCount:", [v7 count] + -[TransactionLog transactionCount](self, "transactionCount"));
  if ([(TransactionLog *)self transactionCount])
  {
    logHandle = objc_opt_new();
    v13 = [NSNumber numberWithUnsignedInteger:[(TransactionLog *)self transactionCount]];
    [logHandle setObject:v13 forKeyedSubscript:@"kCHTransactionCountKey"];

    logHandle2 = [(TransactionLog *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      transactionCount = [(TransactionLog *)self transactionCount];
      transactionCount2 = [(TransactionLog *)self transactionCount];
      v17 = "s";
      if (transactionCount2 == 1)
      {
        v17 = "";
      }

      *buf = 134218242;
      v36 = transactionCount;
      v37 = 2080;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Now have %lu transaction%s", buf, 0x16u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      v22 = off_100050F08;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v26 + 1) + 8 * j);
          if ([v24 transactionType] == 1)
          {
            goto LABEL_27;
          }

          if ([v24 transactionType] == 2)
          {
            v22 = off_100050F10;
LABEL_27:
            [logHandle setObject:&__kCFBooleanTrue forKeyedSubscript:*v22];
            goto LABEL_28;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"kCallHistoryTransactionAddedNotification" object:0 userInfo:logHandle];

    goto LABEL_29;
  }

LABEL_30:
}

- (void)clear
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100023BFC;
  v2[3] = &unk_100050FA0;
  v2[4] = self;
  [(TransactionLog *)self executeSync:v2];
}

- (void)clearSync
{
  logHandle = [(TransactionLog *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    path = [(TransactionLog *)self path];
    v7 = 138543362;
    v8 = path;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Truncating file %{public}@", &v7, 0xCu);
  }

  path2 = [(TransactionLog *)self path];
  v6 = [NSFileHandle fileHandleForWritingAtPath:path2];

  [v6 truncateFileAtOffset:0];
  [(TransactionLog *)self setTransactionCount:0];
  [(TransactionLog *)self setFileOffset:0];
  [(TransactionLog *)self writeFileOffset];
}

- (id)getNTransactions:(unint64_t)transactions
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023DA4;
  v5[3] = &unk_1000518F8;
  v5[4] = self;
  v5[5] = transactions;
  v3 = [(TransactionLog *)self executeSyncWithResult:v5];

  return v3;
}

- (id)getSomeTransactions
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023E30;
  v4[3] = &unk_100051920;
  v4[4] = self;
  v2 = [(TransactionLog *)self executeSyncWithResult:v4];

  return v2;
}

- (id)getNTransactionsSync:(unint64_t)sync
{
  v22 = objc_opt_new();
  path = [(TransactionLog *)self path];
  v6 = [NSFileHandle fileHandleForReadingAtPath:path];

  seekToEndOfFile = [v6 seekToEndOfFile];
  [v6 seekToFileOffset:{-[TransactionLog fileOffset](self, "fileOffset")}];
  fileOffset = [(TransactionLog *)self fileOffset];
  v10 = fileOffset;
  if (sync && fileOffset < seekToEndOfFile)
  {
    v11 = sync - 1;
    *&v9 = 67109120;
    v21 = v9;
    do
    {
      v23 = 0;
      v12 = [v6 readDataOfLength:{4, v21}];
      v13 = &v10[[v12 length]];
      [v12 getBytes:&v23 length:4];
      logHandle = [(TransactionLog *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v21;
        LODWORD(v25) = v23;
        _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Reading transaction of %u bytes", buf, 8u);
      }

      v15 = [v6 readDataOfLength:v23];
      v10 = &v13[[v15 length]];
      v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:0];
      [v22 addObject:v16];

      v17 = v11-- != 0;
    }

    while (v17 && v10 < seekToEndOfFile);
  }

  [(TransactionLog *)self setFileOffset:v10];
  logHandle2 = [(TransactionLog *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v22 count];
    *buf = 134217984;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Returning %lu transactions", buf, 0xCu);
  }

  return v22;
}

- (void)readTransactionsProcessed:(unint64_t)processed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000241A0;
  v3[3] = &unk_100051948;
  v3[4] = self;
  v3[5] = processed;
  [(TransactionLog *)self executeSync:v3];
}

- (void)readTransactionsProcessedSync:(unint64_t)sync
{
  path = [(TransactionLog *)self path];
  v7 = [NSFileHandle fileHandleForReadingAtPath:path];

  seekToEndOfFile = [v7 seekToEndOfFile];
  if ([(TransactionLog *)self fileOffset]>= seekToEndOfFile)
  {
    [(TransactionLog *)self clearSync];
  }

  else
  {
    [(TransactionLog *)self setTransactionCount:[(TransactionLog *)self transactionCount]- sync];
    [(TransactionLog *)self writeFileOffset];
  }
}

- (id)getTransactions
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000242E4;
  v4[3] = &unk_100051920;
  v4[4] = self;
  v2 = [(TransactionLog *)self executeSyncWithResult:v4];

  return v2;
}

- (unint64_t)getTransactionCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000243AC;
  v4[3] = &unk_100051290;
  v4[4] = self;
  v4[5] = &v5;
  [(TransactionLog *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)migrateFromKeyedArchiverSync
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(NSString *)self->_defaultLogDirectory stringByAppendingPathComponent:@"tx.log"];
  if ([v3 fileExistsAtPath:v4])
  {
    v36 = 0;
    v5 = [v3 attributesOfItemAtPath:v4 error:&v36];
    v6 = v36;
    if (v6)
    {
      logHandle7 = v6;
      logHandle = [(TransactionLog *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100034744();
      }

      goto LABEL_40;
    }

    v9 = [v5 valueForKey:@"NSFileSize"];
    logHandle = v9;
    if (v9)
    {
      v10 = [v9 longValue]<= 0x100000;
      logHandle2 = [(TransactionLog *)self logHandle];
      v12 = os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        if (v12)
        {
          longValue = [logHandle longValue];
          *buf = 134218240;
          v38 = longValue;
          v39 = 2048;
          v40 = 0x100000;
          _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Old transaction log is %ld bytes, above maximum limit of %ld", buf, 0x16u);
        }

        goto LABEL_27;
      }

      if (v12)
      {
        longValue2 = [logHandle longValue];
        *buf = 134217984;
        v38 = longValue2;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Old transaction log is %ld bytes, proceeding with migration", buf, 0xCu);
      }

      v14 = objc_opt_class();
      v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
      v16 = [NSData dataWithContentsOfFile:v4];
      v17 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v16 error:0];

      logHandle3 = [(TransactionLog *)self logHandle];
      v19 = os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          v20 = [v17 count];
          *buf = 134217984;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Migrating %lu transactions", buf, 0xCu);
        }

        path = [(TransactionLog *)self path];
        v22 = [NSFileHandle fileHandleForWritingAtPath:path];

        [v22 seekToEndOfFile];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        logHandle2 = v17;
        v23 = [logHandle2 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v23)
        {
          v24 = *v33;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v33 != v24)
              {
                objc_enumerationMutation(logHandle2);
              }

              [(TransactionLog *)self appendTransactionSync:*(*(&v32 + 1) + 8 * i) withFileHandle:v22];
            }

            v23 = [logHandle2 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v23);
        }

        [v22 synchronizeFile];
LABEL_27:

        logHandle4 = [(TransactionLog *)self logHandle];
        if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v38 = v4;
          _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Removing old transaction log at %{public}@", buf, 0xCu);
        }

        v31 = 0;
        [v3 removeItemAtPath:v4 error:&v31];
        logHandle7 = v31;
        logHandle5 = [(TransactionLog *)self logHandle];
        v30 = logHandle5;
        if (logHandle7)
        {
          if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_ERROR))
          {
            sub_10003481C();
          }

          goto LABEL_40;
        }

        if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Cleared local transaction log", buf, 2u);
        }

        goto LABEL_39;
      }

      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Did not find transactions to migrate", buf, 2u);
      }
    }

    else
    {
      logHandle6 = [(TransactionLog *)self logHandle];
      if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_ERROR))
      {
        sub_100034888();
      }
    }

LABEL_39:
    logHandle7 = 0;
LABEL_40:

    goto LABEL_41;
  }

  logHandle7 = [(TransactionLog *)self logHandle];
  if (os_log_type_enabled(logHandle7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, logHandle7, OS_LOG_TYPE_DEFAULT, "Old transaction log at %{public}@ does not exist, skipping migration", buf, 0xCu);
  }

LABEL_41:
}

+ (id)serializeTransaction:(id)transaction
{
  v7 = 0;
  v3 = [transaction archivedDataWithError:&v7];
  v6 = [v3 length];
  v4 = [NSMutableData dataWithBytes:&v6 length:4];
  [v4 appendData:v3];

  return v4;
}

- (void)appendTransactionSync:(id)sync withFileHandle:(id)handle
{
  syncCopy = sync;
  handleCopy = handle;
  v8 = [TransactionLog serializeTransaction:syncCopy];
  [handleCopy writeData:v8];
  logHandle = [(TransactionLog *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v8 length];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Wrote %lu bytes of transaction to file", &v10, 0xCu);
  }
}

@end