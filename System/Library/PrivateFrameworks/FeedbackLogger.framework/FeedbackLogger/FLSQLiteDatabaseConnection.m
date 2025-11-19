@interface FLSQLiteDatabaseConnection
- (BOOL)open;
- (FLSQLiteDatabaseConnection)initWithStorePath:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation FLSQLiteDatabaseConnection

- (void)close
{
  v9 = *MEMORY[0x277D85DE8];
  db = self->_db;
  if (db)
  {
    v4 = sqlite3_close_v2(db);
    if (v4)
    {
      v5 = v4;
      v6 = [(FLSQLiteDatabaseConnection *)self log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_error_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_ERROR, "SQLite close connection failed: %d", v8, 8u);
      }
    }
  }

  self->_db = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)open
{
  v17 = *MEMORY[0x277D85DE8];
  p_db = &self->_db;
  if (self->_db)
  {
    v4 = [(FLSQLiteDatabaseConnection *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FLSQLiteDatabaseConnection *)self storePath];
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_DEFAULT, "Re-using already opened SQLite store %@", &v15, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v4 = [(FLSQLiteDatabaseConnection *)self storePath];
    v7 = sqlite3_open_v2([v4 UTF8String], p_db, 3211270, 0);
    v6 = v7 == 0;
    if (v7)
    {
      v8 = v7;
      [(FLSQLiteDatabaseConnection *)self close];
      v9 = [(FLSQLiteDatabaseConnection *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109120;
        LODWORD(v16) = v8;
        _os_log_error_impl(&dword_24AB3F000, v9, OS_LOG_TYPE_ERROR, "SQLite open failed: %d", &v15, 8u);
      }
    }

    else
    {
      busy = sqlite3_busy_timeout(*p_db, 5000);
      if (busy)
      {
        v11 = busy;
        v12 = [(FLSQLiteDatabaseConnection *)self log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = 67109120;
          LODWORD(v16) = v11;
          _os_log_error_impl(&dword_24AB3F000, v12, OS_LOG_TYPE_ERROR, "SQLite set busy timeout failed: %d", &v15, 8u);
        }
      }

      v9 = [(FLSQLiteDatabaseConnection *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_24AB3F000, v9, OS_LOG_TYPE_DEFAULT, "Opened SQLite store %@", &v15, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  [(FLSQLiteDatabaseConnection *)self close];
  v3.receiver = self;
  v3.super_class = FLSQLiteDatabaseConnection;
  [(FLSQLiteDatabaseConnection *)&v3 dealloc];
}

- (FLSQLiteDatabaseConnection)initWithStorePath:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLSQLiteDatabaseConnection;
  v5 = [(FLSQLiteDatabaseConnection *)&v13 init];
  if (v5)
  {
    v6 = [v4 stringByRemovingPercentEncoding];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    [(FLSQLiteDatabaseConnection *)v5 setStorePath:v8];

    v9 = [v4 stringByDeletingLastPathComponent];
    v10 = [v9 lastPathComponent];

    v11 = flAnnotatedLogForObject(v5, v10);
    [(FLSQLiteDatabaseConnection *)v5 setLog:v11];
  }

  return v5;
}

@end