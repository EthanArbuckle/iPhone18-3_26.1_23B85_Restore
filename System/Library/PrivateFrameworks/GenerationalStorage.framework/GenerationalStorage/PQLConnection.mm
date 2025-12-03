@interface PQLConnection
- (BOOL)_gotoV4;
- (BOOL)_initializeDB;
- (BOOL)_installFunctions;
- (BOOL)_setupDBIfNeeded;
- (BOOL)_setupPragmas;
- (BOOL)_setupPragmasNotUpsetAboutWAL_17553237;
- (BOOL)_upgradeDB:(int64_t)b;
- (BOOL)openAtPath:(id)path isReadOnly:(BOOL)only error:(id *)error;
- (NSError)translatedError;
- (id)loadLibraryState;
- (void)setCorruptionHandler:(id)handler;
@end

@implementation PQLConnection

- (void)setCorruptionHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D240;
  v6[3] = &unk_100040F78;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(PQLConnection *)self setSqliteErrorHandler:v6];
  sqliteErrorHandler = [(PQLConnection *)self sqliteErrorHandler];
  [(PQLConnection *)self setAutoRollbackHandler:sqliteErrorHandler];
}

- (NSError)translatedError
{
  lastError = [(PQLConnection *)self lastError];
  v3 = sub_10000D39C(lastError);

  return v3;
}

- (BOOL)_initializeDB
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D6A8;
  v3[3] = &unk_100040FA0;
  v3[4] = self;
  return [(PQLConnection *)self performWithFlags:10 action:v3];
}

- (BOOL)_gotoV4
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DA34;
  v3[3] = &unk_100040FA0;
  v3[4] = self;
  return [(PQLConnection *)self performWithFlags:10 action:v3];
}

- (BOOL)_upgradeDB:(int64_t)b
{
  if (b <= 2)
  {
    if (b == 1)
    {
      _gotoV2 = [(PQLConnection *)self _gotoV2];
      if (!_gotoV2)
      {
        return _gotoV2;
      }
    }

    else if (b != 2)
    {
      goto LABEL_12;
    }

    _gotoV2 = [(PQLConnection *)self _gotoV3];
    if (!_gotoV2)
    {
      return _gotoV2;
    }

    goto LABEL_10;
  }

  if (b == 3)
  {
LABEL_10:
    _gotoV2 = [(PQLConnection *)self _gotoV4];
    if (!_gotoV2)
    {
      return _gotoV2;
    }

    goto LABEL_11;
  }

  if (b == 4)
  {
LABEL_11:
    _gotoV2 = [(PQLConnection *)self _gotoV5];
    if (!_gotoV2)
    {
      return _gotoV2;
    }
  }

LABEL_12:
  userVersion = [(PQLConnection *)self userVersion];
  intValue = [userVersion intValue];

  if (intValue == 5)
  {
    LOBYTE(_gotoV2) = 1;
  }

  else
  {
    v7 = [NSError errorWithSqliteCode:24 andMessage:@"invalid user version"];
    [(PQLConnection *)self setLastError:v7];

    LOBYTE(_gotoV2) = 0;
  }

  return _gotoV2;
}

- (BOOL)_setupDBIfNeeded
{
  userVersion = [(PQLConnection *)self userVersion];
  longLongValue = [userVersion longLongValue];

  if (longLongValue)
  {

    return [(PQLConnection *)self _upgradeDB:?];
  }

  else
  {

    return [(PQLConnection *)self _initializeDB];
  }
}

- (BOOL)_setupPragmasNotUpsetAboutWAL_17553237
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000DF40;
  v3[3] = &unk_100040FA0;
  v3[4] = self;
  return [(PQLConnection *)self performWithFlags:2 action:v3];
}

- (BOOL)_setupPragmas
{
  v3 = [(PQLConnection *)self fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA locking_mode = exclusive"];
  if (([v3 isEqualToString:@"exclusive"] & 1) == 0)
  {
    v10 = [NSError errorWithSqliteCode:2 andMessage:@"cannot set locking_mode to exclusive"];
    [(PQLConnection *)self setLastError:v10];

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (![(PQLConnection *)self _setupPragmasNotUpsetAboutWAL]|| ![(PQLConnection *)self execute:@"PRAGMA temp_store = MEMORY"]|| ![(PQLConnection *)self execute:@"PRAGMA cache_size = 128"]|| ![(PQLConnection *)self execute:@"PRAGMA cache_spill = 512"])
  {
    goto LABEL_13;
  }

  if ([(PQLConnection *)self _vacuumMode]!= 2)
  {
    v4 = sub_100003164();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PQLConnection *)self url];
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Database %@ isn't in incremental vacuum mode, doing the conversion now", &v13, 0xCu);
    }

    [(PQLConnection *)self execute:@"PRAGMA auto_vacuum = incremental"];
    [(PQLConnection *)self execute:@"VACUUM"];
    _vacuumMode = [(PQLConnection *)self _vacuumMode];
    v7 = sub_100003164();
    v8 = v7;
    if (_vacuumMode == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(PQLConnection *)self url];
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] Database %@ successfully converted to incremental vacuum mode", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, 0x90u))
    {
      sub_1000272F8(self, v8);
    }
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (BOOL)_installFunctions
{
  if (![(PQLConnection *)self registerFunction:@"gs_path_exists" nArgs:1 handler:&stru_100041060]|| ![(PQLConnection *)self registerFunction:@"gs_path_not_exists" nArgs:1 handler:&stru_100041080])
  {
    return 0;
  }

  return [(PQLConnection *)self registerFunction:@"gs_is_prunable" nArgs:2 handler:&stru_1000410A0];
}

- (BOOL)openAtPath:(id)path isReadOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  memset(&v29, 0, sizeof(v29));
  v8 = [path stringByAppendingPathComponent:@"db.sqlite"];
  v9 = [NSURL URLWithString:v8];
  v10 = +[GSUserDefaults defaults];
  -[PQLConnection setTraced:](self, "setTraced:", [v10 BOOLForKey:@"db.trace" byDefault:0]);

  if (!lstat([v8 fileSystemRepresentation], &v29))
  {
    if (v29.st_nlink == 1)
    {
      v28 = 0;
      v15 = [(PQLConnection *)self openAtURL:v9 withFlags:2 error:&v28];
      v16 = v28;
      v11 = v16;
      if (v15)
      {
        goto LABEL_23;
      }

      if (error)
      {
        *error = sub_10000D39C(v16);
      }

      v17 = sub_100003164();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_100027458();
      }

      goto LABEL_34;
    }

    v18 = +[NSFileManager defaultManager];
    [v18 removeItemAtPath:v8 error:0];

    v19 = sub_100003164();
    if (os_log_type_enabled(v19, 0x90u))
    {
      sub_1000273E4();
    }

LABEL_16:
    if (onlyCopy)
    {
      v11 = [NSString stringWithFormat:@"No valid database and storage is read-only"];
      v20 = sub_100003164();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1000274C0();
      }

      if (error)
      {
        v14 = sub_10000F0F8(111, v11, 0);
        goto LABEL_21;
      }

LABEL_35:
      v21 = 0;
      goto LABEL_36;
    }

    v27 = 0;
    v22 = [(PQLConnection *)self openAtURL:v9 sharedCache:0 error:&v27];
    v23 = v27;
    v11 = v23;
    if (v22)
    {
LABEL_23:
      [(PQLConnection *)self setAutoRollbackHandler:&stru_1000410E0];
      if ([(PQLConnection *)self _setupPragmas]&& [(PQLConnection *)self _setupDBIfNeeded]&& [(PQLConnection *)self _installFunctions])
      {
        v24 = +[GSUserDefaults defaults];
        [v24 doubleForKey:@"db.batchdelay" min:0.0 max:3.0 byDefault:0.2];
        -[PQLConnection useBatchingWithDelay:changeCount:](self, "useBatchingWithDelay:changeCount:", [v24 intForKey:@"db.batchsize" min:0 max:0x7FFFFFFFLL byDefault:10000], v25);

        v21 = 1;
        goto LABEL_36;
      }

      if (error)
      {
        *error = [(PQLConnection *)self translatedError];
      }

      [(PQLConnection *)self close:0];
      goto LABEL_35;
    }

    if (error)
    {
      *error = sub_10000D39C(v23);
    }

    v17 = sub_100003164();
    if (os_log_type_enabled(v17, 0x90u))
    {
      sub_100027458();
    }

LABEL_34:

    goto LABEL_35;
  }

  if (*__error() == 2)
  {
    goto LABEL_16;
  }

  v11 = [NSString stringWithFormat:@"Failed to access DB file at path %@", v8];
  v12 = *__error();
  v13 = sub_100003164();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10002717C(v11, v12);
  }

  if (!error)
  {
    goto LABEL_35;
  }

  v14 = sub_10000F37C(v12, v11);
LABEL_21:
  v21 = 0;
  *error = v14;
LABEL_36:

  return v21;
}

- (id)loadLibraryState
{
  v2 = [(PQLConnection *)self fetch:@"SELECT v FROM state"];
  if ([v2 next])
  {
    v3 = [v2 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
    [v2 close];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end