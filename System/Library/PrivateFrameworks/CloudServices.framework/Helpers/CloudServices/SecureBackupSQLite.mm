@interface SecureBackupSQLite
+ (sqlite3)openDBWithURL:(id)a3 truncate:(BOOL)a4;
- (BOOL)addItem:(id)a3 withKey:(id)a4 forClass:(id)a5 error:(id *)a6;
- (BOOL)removeItemWithKey:(id)a3 error:(id *)a4;
- (BOOL)sqliteExec:(id)a3;
- (NSData)keybag;
- (NSData)keybagDigest;
- (NSData)manifestHash;
- (SecureBackupSQLite)initWithURL:(id)a3 recordID:(id)a4;
- (id)sqliteErrorForDB:(sqlite3 *)a3;
- (int64_t)sqliteExecInteger:(id)a3;
- (void)closeDB;
- (void)enumerateKeysAndItemsUsingBlock:(id)a3;
- (void)resetDBWithKeybag:(id)a3;
@end

@implementation SecureBackupSQLite

+ (sqlite3)openDBWithURL:(id)a3 truncate:(BOOL)a4
{
  v4 = a3;
  ppDb = 0;
  if (sqlite3_open_v2([v4 fileSystemRepresentation], &ppDb, 6, 0))
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100048798(v4, &ppDb);
    }
  }

  else
  {
    if (_sqlite3_maintain_load_factor())
    {
      v6 = CloudServicesLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100048820();
      }
    }

    v10 = 0;
    if (!sqlite3_exec(ppDb, "pragma journal_mode = WAL;CREATE TABLE IF NOT EXISTS items(hash BLOB PRIMARY KEY NOT NULL,class TEXT NOT NULL, data BLOB NOT NULL);CREATE TABLE IF NOT EXISTS keybag(digest BLOB PRIMARY KEY NOT NULL,recordID TEXT NOT NULL,data BLOB NOT NULL,timestamp DATETIME DEFAULT CURRENT_TIMESTAMP);", 0, 0, &v10))
    {
      v8 = ppDb;
      goto LABEL_14;
    }

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004889C(v4, &v10);
    }

    sqlite3_free(v10);
  }

  sqlite3_close(ppDb);
  v8 = 0;
LABEL_14:

  return v8;
}

- (SecureBackupSQLite)initWithURL:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SecureBackupSQLite;
  v8 = [(SecureBackupSQLite *)&v16 init];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [v6 URLByAppendingPathComponent:@"backup"];
  v10 = [v9 URLByAppendingPathExtension:@"sqlite3"];
  url = v8->_url;
  v8->_url = v10;

  if (v8->_url)
  {
    v12 = [objc_opt_class() openDBWithURL:v8->_url truncate:0];
    v8->_db = v12;
    if (v8->_url && v12 != 0)
    {
      objc_storeStrong(&v8->_recordID, a4);
LABEL_9:
      v14 = v8;
      goto LABEL_10;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)sqliteErrorForDB:(sqlite3 *)a3
{
  v4 = [NSString stringWithUTF8String:sqlite3_errmsg(a3)];
  v5 = v4;
  if (v4)
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:sqlite3_errcode(a3) userInfo:v6];

  return v7;
}

- (BOOL)addItem:(id)a3 withKey:(id)a4 forClass:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  ppStmt = 0;
  v13 = [(SecureBackupSQLite *)self db];
  if (sqlite3_prepare_v2(v13, "INSERT OR IGNORE INTO items (hash, class, data) VALUES (?, ?, ?);", -1, &ppStmt, 0))
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100048914();
    }

    goto LABEL_23;
  }

  if (sqlite3_bind_blob64(ppStmt, 1, [v11 bytes], objc_msgSend(v11, "length"), 0))
  {
    v15 = CloudServicesLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (sqlite3_bind_text(ppStmt, 2, [v12 UTF8String], -1, 0))
  {
    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100048A3C();
    }

    goto LABEL_17;
  }

  if (sqlite3_bind_blob64(ppStmt, 3, [v10 bytes], objc_msgSend(v10, "length"), 0))
  {
    v15 = CloudServicesLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      if (a6)
      {
        [(SecureBackupSQLite *)self sqliteErrorForDB:v13];
        *a6 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_20;
    }

LABEL_6:
    sub_1000489A8();
    goto LABEL_17;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100048AD0();
    }

    goto LABEL_17;
  }

  v16 = 1;
LABEL_20:
  if (!sqlite3_finalize(ppStmt))
  {
    goto LABEL_26;
  }

  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100048B64();
  }

LABEL_23:

  if (a6)
  {
    [(SecureBackupSQLite *)self sqliteErrorForDB:v13];
    *a6 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_26:

  return v16;
}

- (BOOL)removeItemWithKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  ppStmt = 0;
  v7 = [(SecureBackupSQLite *)self db];
  if (sqlite3_prepare_v2(v7, "DELETE FROM items where hash = ?;", -1, &ppStmt, 0))
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100048BF8();
    }

    goto LABEL_21;
  }

  if (sqlite3_bind_blob64(ppStmt, 1, [v6 bytes], objc_msgSend(v6, "length"), 0))
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000489A8();
    }
  }

  else
  {
    if (sqlite3_step(ppStmt) == 101)
    {
      if (sqlite3_changes(v7) != 1)
      {
        v10 = CloudServicesLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100048C8C(v6, self);
        }
      }

      v11 = 1;
      goto LABEL_18;
    }

    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100048AD0();
    }
  }

  if (a4)
  {
    [(SecureBackupSQLite *)self sqliteErrorForDB:v7];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  if (!sqlite3_finalize(ppStmt))
  {
    goto LABEL_24;
  }

  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100048B64();
  }

LABEL_21:

  if (a4)
  {
    [(SecureBackupSQLite *)self sqliteErrorForDB:v7];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_24:

  return v11;
}

- (NSData)manifestHash
{
  ppStmt = 0;
  if (sqlite3_prepare_v2([(SecureBackupSQLite *)self db], "SELECT hash from items ORDER BY hash;", -1, &ppStmt, 0))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100048BF8();
    }

    v3 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v3 = objc_alloc_init(NSMutableData);
  while (1)
  {
    v4 = sqlite3_step(ppStmt);
    if ((v4 - 102) < 0xFFFFFFFE)
    {
      break;
    }

    if (v4 != 100)
    {
      goto LABEL_13;
    }

    v5 = sqlite3_column_blob(ppStmt, 0);
    if (v5)
    {
      [v3 appendBytes:v5 length:{sqlite3_column_bytes(ppStmt, 0)}];
    }
  }

  v6 = CloudServicesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100048AD0();
  }

LABEL_13:
  if (sqlite3_finalize(ppStmt))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100048B64();
    }

    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

- (NSData)keybagDigest
{
  ppStmt = 0;
  if (sqlite3_prepare_v2([(SecureBackupSQLite *)self db], "SELECT digest from keybag;", -1, &ppStmt, 0))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100048D38();
    }

    v3 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v4 = sqlite3_step(ppStmt);
  if (v4 == 100)
  {
    v3 = sqlite3_column_blob(ppStmt, 0);
    if (v3)
    {
      v3 = [[NSData alloc] initWithBytes:v3 length:{sqlite3_column_bytes(ppStmt, 0)}];
    }
  }

  else
  {
    if (v4 != 101)
    {
      v5 = CloudServicesLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100048AD0();
      }
    }

    v3 = 0;
  }

  if (sqlite3_finalize(ppStmt))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100048B64();
    }

    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

- (NSData)keybag
{
  ppStmt = 0;
  if (sqlite3_prepare_v2([(SecureBackupSQLite *)self db], "SELECT data from keybag;", -1, &ppStmt, 0))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100048DD8();
    }

    v3 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v4 = sqlite3_step(ppStmt);
  if (v4 == 100)
  {
    v3 = sqlite3_column_blob(ppStmt, 0);
    if (v3)
    {
      v3 = [[NSData alloc] initWithBytes:v3 length:{sqlite3_column_bytes(ppStmt, 0)}];
    }
  }

  else
  {
    if (v4 != 101)
    {
      v5 = CloudServicesLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100048AD0();
      }
    }

    v3 = 0;
  }

  if (sqlite3_finalize(ppStmt))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100048B64();
    }

    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

- (void)enumerateKeysAndItemsUsingBlock:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2([(SecureBackupSQLite *)self db], "SELECT hash, class, data from items;", -1, &ppStmt, 0))
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100048BF8();
    }

LABEL_19:

    goto LABEL_20;
  }

  v6 = sqlite3_step(ppStmt);
  if ((v6 - 102) < 0xFFFFFFFE)
  {
LABEL_13:
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100048AD0();
    }
  }

  else
  {
    while (v6 == 100)
    {
      v7 = sqlite3_column_blob(ppStmt, 0);
      if (v7)
      {
        v7 = [[NSData alloc] initWithBytes:v7 length:{sqlite3_column_bytes(ppStmt, 0)}];
      }

      v8 = sqlite3_column_text(ppStmt, 1);
      if (v8)
      {
        v8 = [[NSString alloc] initWithUTF8String:v8];
      }

      v9 = sqlite3_column_blob(ppStmt, 2);
      if (v9)
      {
        v9 = [[NSData alloc] initWithBytes:v9 length:{sqlite3_column_bytes(ppStmt, 2)}];
      }

      v4[2](v4, v7, v8, v9);

      v6 = sqlite3_step(ppStmt);
      if ((v6 - 102) < 0xFFFFFFFE)
      {
        goto LABEL_13;
      }
    }
  }

  if (sqlite3_finalize(ppStmt))
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100048B64();
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (BOOL)sqliteExec:(id)a3
{
  v4 = a3;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SecureBackupSQLite sqliteExec:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  errmsg = 0;
  v6 = sqlite3_exec(-[SecureBackupSQLite db](self, "db"), [v4 UTF8String], 0, 0, &errmsg);
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(SecureBackupSQLite *)self url];
      *buf = 138412802;
      v12 = v4;
      v13 = 2112;
      v14 = v9;
      v15 = 2080;
      v16 = errmsg;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ on %@ failed: %s", buf, 0x20u);
    }

    sqlite3_free(errmsg);
  }

  return v6 == 0;
}

- (void)resetDBWithKeybag:(id)a3
{
  v4 = a3;
  errmsg = 0;
  v5 = [(SecureBackupSQLite *)self db];
  if (!sqlite3_exec(v5, "DROP TABLE items; DROP TABLE keybag;", 0, 0, &errmsg))
  {
    if (sqlite3_exec(v5, "pragma journal_mode = WAL;CREATE TABLE IF NOT EXISTS items(hash BLOB PRIMARY KEY NOT NULL,class TEXT NOT NULL, data BLOB NOT NULL);CREATE TABLE IF NOT EXISTS keybag(digest BLOB PRIMARY KEY NOT NULL,recordID TEXT NOT NULL,data BLOB NOT NULL,timestamp DATETIME DEFAULT CURRENT_TIMESTAMP);", 0, 0, &errmsg))
    {
      v6 = CloudServicesLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100048F14();
      }

      goto LABEL_7;
    }

    v7 = [v4 sha1Digest];
    pStmt = 0;
    if (sqlite3_prepare_v2(v5, "INSERT INTO keybag (digest, recordID, data) VALUES (?, ?, ?);", -1, &pStmt, 0))
    {
      v8 = CloudServicesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100048914();
      }

LABEL_34:
      goto LABEL_8;
    }

    if (sqlite3_bind_blob64(pStmt, 1, [v7 bytes], objc_msgSend(v7, "length"), 0))
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        sub_1000489A8();
      }
    }

    else
    {
      v10 = pStmt;
      v11 = [(SecureBackupSQLite *)self recordID];
      LODWORD(v10) = sqlite3_bind_text(v10, 2, [v11 UTF8String], -1, 0);

      if (v10)
      {
        v9 = CloudServicesLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100048A3C();
        }

        goto LABEL_25;
      }

      if (sqlite3_bind_blob64(pStmt, 3, [v4 bytes], objc_msgSend(v4, "length"), 0))
      {
        v9 = CloudServicesLog();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      if (sqlite3_step(pStmt) == 101)
      {
        goto LABEL_26;
      }

      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100048AD0();
      }
    }

LABEL_25:

LABEL_26:
    if (sqlite3_finalize(pStmt))
    {
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100048B64();
      }

      if (sqlite3_close(v5))
      {
        v13 = CloudServicesLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100048FB0(self);
        }
      }

      [(SecureBackupSQLite *)self setDb:0];
    }

    goto LABEL_34;
  }

  v6 = CloudServicesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100048E78();
  }

LABEL_7:

  sqlite3_free(errmsg);
LABEL_8:
}

- (int64_t)sqliteExecInteger:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[SecureBackupSQLite db](self, "db"), [v4 UTF8String], -1, &ppStmt, 0))
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100048BF8();
    }

    v6 = -1;
LABEL_16:

    goto LABEL_17;
  }

  v6 = -1;
  while (1)
  {
    v7 = sqlite3_step(ppStmt);
    if ((v7 - 102) <= 0xFFFFFFFD)
    {
      break;
    }

    if (v7 != 100)
    {
      goto LABEL_13;
    }

    v8 = sqlite3_column_int(ppStmt, 0);
    v6 = v8;
    if (v8 == -1)
    {
      v6 = -1;
      goto LABEL_13;
    }
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100048AD0();
  }

LABEL_13:
  if (sqlite3_finalize(ppStmt))
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100048B64();
    }

    goto LABEL_16;
  }

LABEL_17:

  return v6;
}

- (void)closeDB
{
  if (sqlite3_close([(SecureBackupSQLite *)self db]))
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100048FB0(self);
    }
  }

  [(SecureBackupSQLite *)self setDb:0];
}

@end