@interface MFPersistenceDatabaseConnection_iOS
- (BOOL)performWithOptions:(unint64_t)a3 transactionError:(id *)a4 block:(id)a5;
- (int)configureSQLConnection;
- (uint64_t)_handleProtectedDataIOError;
- (void)_handleBusyError;
- (void)_handleCorruptDatabase;
- (void)_handleFullDatabase;
- (void)_handleIOError;
- (void)_handleInvalidDatabaseIOError;
- (void)_handleProtectedDataIOError;
- (void)_logFileSystemStats;
- (void)dealloc;
- (void)handleSQLResult:(int)a3 message:(id)a4;
@end

@implementation MFPersistenceDatabaseConnection_iOS

- (void)dealloc
{
  ICUSearchContext = self->_ICUSearchContext;
  if (ICUSearchContext)
  {
    freeICUSearchContext(ICUSearchContext, a2);
  }

  v4.receiver = self;
  v4.super_class = MFPersistenceDatabaseConnection_iOS;
  [(EDPersistenceDatabaseConnection *)&v4 dealloc];
}

- (int)configureSQLConnection
{
  v3 = [(EDPersistenceDatabaseConnection *)self sqlDB];
  function = sqlite3_extended_result_codes(v3, 1);
  if (function)
  {
    v5 = @"enabling extended error codes";
  }

  else
  {
    inited = initICUSearchContext();
    self->_ICUSearchContext = inited;
    function = sqlite3_create_function(v3, "icusearch", 3, 1, inited, ICUSearch, 0, 0);
    if (function)
    {
      v5 = @"creating custom icusearch function";
    }

    else
    {
      v7 = objc_alloc_init(_MFSearchMatcherContext);
      CPSearchContext = self->_CPSearchContext;
      self->_CPSearchContext = v7;

      function = sqlite3_create_function(v3, "cpsearch", 3, 1, self->_CPSearchContext, CPSearch, 0, 0);
      if (function)
      {
        v5 = @"creating custom cpsearch function";
      }

      else
      {
        function = sqlite3_exec_retry(v3, "PRAGMA cache_size = 1000;", 0, 0, 0);
        if (function)
        {
          v5 = @"setting cache_size";
        }

        else
        {
          v12.receiver = self;
          v12.super_class = MFPersistenceDatabaseConnection_iOS;
          function = [(EDPersistenceDatabaseConnection *)&v12 configureSQLConnection];
          if (!function)
          {
            v5 = 0;
            goto LABEL_12;
          }

          v9 = MEMORY[0x1E696AEC0];
          v10 = [(EDPersistenceDatabaseConnection *)self fullPath];
          v5 = [v9 stringWithFormat:@"configuring sql connection for %@", v10];
        }
      }
    }
  }

  MFLogSQLiteError(v3, function, v5);
LABEL_12:

  return function;
}

- (BOOL)performWithOptions:(unint64_t)a3 transactionError:(id *)a4 block:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = MFPersistenceDatabaseConnection_iOS;
  v9 = [(EDPersistenceDatabaseConnection *)&v14 performWithOptions:a3 transactionError:a4 block:v8];
  if (!v9)
  {
    v10 = +[(EDPersistenceDatabaseConnection *)MFPersistenceDatabaseConnection_iOS];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Resetting mailbox cache after database transaction failed", v13, 2u);
    }

    v11 = +[MFMailMessageLibrary defaultInstance];
    [v11 reloadMailboxCacheWithConnection:self];
  }

  return v9;
}

- (void)handleSQLResult:(int)a3 message:(id)a4
{
  v7 = a4;
  v6 = [(EDPersistenceDatabaseConnection *)self sqlDB];
  if ((a3 - 100) >= 2 && a3)
  {
    MFLogSQLiteError(v6, a3, v7);
  }

  if (a3 <= 0xAu)
  {
    if (a3 == 5)
    {
      [(MFPersistenceDatabaseConnection_iOS *)self _handleBusyError];
    }

    else if (a3 == 10)
    {
      if ([(EDPersistenceDatabaseConnection *)self protectedDatabaseAttached])
      {
        [(MFPersistenceDatabaseConnection_iOS *)self _handleProtectedDataIOError];
      }

      else if ([(EDPersistenceDatabaseConnection *)self sqlDB])
      {
        [(MFPersistenceDatabaseConnection_iOS *)self _handleIOError];
      }

      else
      {
        [(MFPersistenceDatabaseConnection_iOS *)self _handleInvalidDatabaseIOError];
      }
    }
  }

  else
  {
    if (a3 == 26)
    {
LABEL_8:
      [(MFPersistenceDatabaseConnection_iOS *)self _handleCorruptDatabase];
      goto LABEL_18;
    }

    if (a3 != 13)
    {
      if (a3 != 11)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    [(MFPersistenceDatabaseConnection_iOS *)self _handleFullDatabase];
  }

LABEL_18:
}

- (void)_handleCorruptDatabase
{
  if (a1)
  {
    +[MFMailMessageLibrary removeLibraryOnNextLaunch];
    v2 = MFUserAgent();
    v3 = [v2 isMobileMail];

    if (v3)
    {
      [a1 close];
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [MFPersistenceDatabaseConnection_iOS _handleCorruptDatabase];
      }

      qword_1EB6E7CF0 = "database corrupt";
      __assert_rtn("[MFPersistenceDatabaseConnection_iOS _handleCorruptDatabase]", "MFPersistenceDatabaseConnection_iOS.m", 130, "0 && database corrupt");
    }
  }
}

- (void)_handleFullDatabase
{
  if (a1)
  {
    [(MFPersistenceDatabaseConnection_iOS *)a1 _logFileSystemStats];
    v2 = MFUserAgent();
    v3 = [v2 isMobileMail];

    if (v3)
    {
      [a1 close];
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [MFPersistenceDatabaseConnection_iOS _handleFullDatabase];
      }

      qword_1EB6E7CF0 = "file system out of space";
      __assert_rtn("[MFPersistenceDatabaseConnection_iOS _handleFullDatabase]", "MFPersistenceDatabaseConnection_iOS.m", 135, "0 && file system out of space");
    }
  }
}

- (uint64_t)_handleProtectedDataIOError
{
  v12 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  v2 = [MEMORY[0x1E699B7B0] currentDevice];
  if ([v2 isInternal])
  {

LABEL_5:
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = EFContentProtectionDumpDiagnosticState();
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#Warning %@", &v10, 0xCu);
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [MFPersistenceDatabaseConnection_iOS _handleProtectedDataIOError];
    }

    goto LABEL_10;
  }

  v3 = EFIsSeedBuild();

  if (v3)
  {
    goto LABEL_5;
  }

LABEL_10:
  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    MEMORY[0x1B27299E0]();
    v8 = EFContentProtectionStateDescription();
    [(MFPersistenceDatabaseConnection_iOS *)v8 _handleProtectedDataIOError];
  }

  result = [v1 setHadIOError:1];
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_handleInvalidDatabaseIOError
{
  if (a1)
  {
    v2 = MFUserAgent();
    v3 = [v2 isMobileMail];

    if (v3)
    {
      [a1 close];
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [MFPersistenceDatabaseConnection_iOS _handleInvalidDatabaseIOError];
      }

      qword_1EB6E7CF0 = "database I/O error, missing sqlDB pointer";
      __assert_rtn("[MFPersistenceDatabaseConnection_iOS _handleInvalidDatabaseIOError]", "MFPersistenceDatabaseConnection_iOS.m", 159, "0 && database I/O error, missing sqlDB pointer");
    }
  }
}

- (void)_handleIOError
{
  if (a1)
  {
    v2 = MFUserAgent();
    v3 = [v2 isMobileMail];

    if (v3)
    {
      [a1 close];
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [MFPersistenceDatabaseConnection_iOS _handleIOError];
      }

      qword_1EB6E7CF0 = "database I/O error";
      __assert_rtn("[MFPersistenceDatabaseConnection_iOS _handleIOError]", "MFPersistenceDatabaseConnection_iOS.m", 163, "0 && database I/O error");
    }
  }
}

- (void)_handleBusyError
{
  if (a1)
  {
    v2 = MFUserAgent();
    v3 = [v2 isMobileMail];

    if (v3)
    {
      [a1 close];
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [MFPersistenceDatabaseConnection_iOS _handleBusyError];
      }

      qword_1EB6E7CF0 = "SQLITE_BUSY";
      __assert_rtn("[MFPersistenceDatabaseConnection_iOS _handleBusyError]", "MFPersistenceDatabaseConnection_iOS.m", 167, "0 && SQLITE_BUSY");
    }
  }
}

- (void)_logFileSystemStats
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a2;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_DEFAULT, "#Warning %@/%@ bytes (free/total)", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleProtectedDataIOError
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Got back IO error with protected database attached.  Protection state = %{public}@", buf, 0xCu);
}

@end