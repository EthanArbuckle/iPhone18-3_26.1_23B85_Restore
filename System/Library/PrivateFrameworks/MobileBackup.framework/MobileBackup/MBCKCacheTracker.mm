@interface MBCKCacheTracker
- (BOOL)_removeDatabaseAtPath:(id)path error:(id *)error;
- (BOOL)_resetDatabaseForAccount:(id)account error:(id *)error;
- (BOOL)resetDatabaseForAccount:(id)account error:(id *)error;
- (MBCKCacheTracker)initWithCacheDirectory:(id)directory;
- (MBCKCacheTracker)initWithPath:(id)path;
- (id)cacheCreationDate;
- (id)openCacheWithAccessType:(int)type cached:(BOOL)cached error:(id *)error;
- (void)_addCache:(id)cache;
- (void)_closeCache:(id)cache;
- (void)_invalidateConnections;
- (void)_removeCache:(id)cache;
- (void)_removeCorruptDatabaseWithError:(id)error;
@end

@implementation MBCKCacheTracker

- (MBCKCacheTracker)initWithPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[MBCKCacheTracker initWithPath:]", "MBCKCache.m", 73, "path");
  }

  v6 = pathCopy;
  v15.receiver = self;
  v15.super_class = MBCKCacheTracker;
  v7 = [(MBCKCacheTracker *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_path, path);
    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    sharedQueue = v8->_sharedQueue;
    v8->_sharedQueue = v12;
  }

  return v8;
}

- (MBCKCacheTracker)initWithCacheDirectory:(id)directory
{
  directoryCopy = directory;
  if (!directoryCopy)
  {
    __assert_rtn("[MBCKCacheTracker initWithCacheDirectory:]", "MBCKCache.m", 83, "cacheDirectory");
  }

  v5 = directoryCopy;
  if (qword_1004216A0 != -1)
  {
    dispatch_once(&qword_1004216A0, &stru_1003BDB78);
  }

  v6 = [v5 stringByAppendingPathComponent:@"cloudkit_cache.db"];
  v7 = [(MBCKCacheTracker *)self initWithPath:v6];

  return v7;
}

- (id)cacheCreationDate
{
  path = [(MBCKCacheTracker *)self path];
  if (!path)
  {
    __assert_rtn("[MBCKCacheTracker cacheCreationDate]", "MBCKCache.m", 103, "path");
  }

  v3 = path;
  v4 = +[NSFileManager defaultManager];
  v8 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v8];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:NSFileCreationDate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)openCacheWithAccessType:(int)type cached:(BOOL)cached error:(id *)error
{
  if ((type - 3) <= 0xFFFFFFFD)
  {
    __assert_rtn("[MBCKCacheTracker openCacheWithAccessType:cached:error:]", "MBCKCache.m", 113, "accessType == MBCKCacheAccessTypeReadWrite || accessType == MBCKCacheAccessTypeReadOnly");
  }

  if (!error)
  {
    __assert_rtn("[MBCKCacheTracker openCacheWithAccessType:cached:error:]", "MBCKCache.m", 114, "error");
  }

  dispatch_assert_queue_not_V2(self->_sharedQueue);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000BE7F8;
  v27 = sub_1000BE808;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000BE7F8;
  v21 = sub_1000BE808;
  v22 = 0;
  sharedQueue = self->_sharedQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BE810;
  v14[3] = &unk_1003BDBA0;
  cachedCopy = cached;
  typeCopy = type;
  v14[4] = self;
  v14[5] = &v17;
  v14[6] = &v23;
  dispatch_sync(sharedQueue, v14);
  v10 = v18[5];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = v24[5];
    if (!v12)
    {
      __assert_rtn("[MBCKCacheTracker openCacheWithAccessType:cached:error:]", "MBCKCache.m", 158, "localError");
    }

    *error = v12;
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v10;
}

- (void)_addCache:(id)cache
{
  cacheCopy = cache;
  dispatch_assert_queue_V2(self->_sharedQueue);
  connections = self->_connections;
  if (!connections)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    v6 = self->_connections;
    self->_connections = v5;

    connections = self->_connections;
  }

  [(NSHashTable *)connections addObject:cacheCopy];
}

- (void)_removeCache:(id)cache
{
  sharedQueue = self->_sharedQueue;
  cacheCopy = cache;
  dispatch_assert_queue_V2(sharedQueue);
  [(NSHashTable *)self->_connections removeObject:cacheCopy];

  connections = self->_connections;
  if (connections && ![(NSHashTable *)connections count])
  {
    v7 = self->_connections;
    self->_connections = 0;
  }
}

- (void)_closeCache:(id)cache
{
  cacheCopy = cache;
  dispatch_assert_queue_not_V2(self->_sharedQueue);
  if (cacheCopy)
  {
    sharedQueue = self->_sharedQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BECE0;
    v6[3] = &unk_1003BC060;
    v7 = cacheCopy;
    selfCopy = self;
    dispatch_sync(sharedQueue, v6);
  }
}

- (void)_invalidateConnections
{
  dispatch_assert_queue_V2(self->_sharedQueue);
  objectEnumerator = [(NSHashTable *)self->_connections objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v4 = nextObject;
    do
    {
      [v4 _invalidate];
      nextObject2 = [objectEnumerator nextObject];

      v4 = nextObject2;
    }

    while (nextObject2);
  }

  connections = self->_connections;
  self->_connections = 0;
}

- (BOOL)_removeDatabaseAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[MBCKCacheTracker _removeDatabaseAtPath:error:]", "MBCKCache.m", 198, "path");
  }

  if (!error)
  {
    __assert_rtn("[MBCKCacheTracker _removeDatabaseAtPath:error:]", "MBCKCache.m", 199, "error");
  }

  v7 = pathCopy;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing the cache db at %@", buf, 0xCu);
    v31 = v7;
    _MBLog();
  }

  [(MBCKCacheTracker *)self _invalidateConnections];
  v9 = +[NSFileManager defaultManager];
  if ([v9 fileExistsAtPath:v7])
  {
    v38 = 0;
    v10 = [v9 removeItemAtPath:v7 error:&v38];
    v11 = v38;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      if ([v11 code] != 4 || (objc_msgSend(v12, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", NSCocoaErrorDomain), v13, (v14 & 1) == 0))
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = v7;
          v42 = 2112;
          v43 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
          _MBLog();
        }

        v16 = v12;
        v17 = 0;
        *error = v12;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  MBSQLiteJournalSuffixes();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v37 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    errorCopy = error;
    v21 = *v35;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v7 stringByAppendingString:{*(*(&v34 + 1) + 8 * i), v31}];

        if ([v9 fileExistsAtPath:v23])
        {
          v33 = 0;
          v24 = [v9 removeItemAtPath:v23 error:&v33];
          v25 = v33;
          v12 = v25;
          if ((v24 & 1) == 0)
          {
            if ([v25 code] != 4 || (objc_msgSend(v12, "domain"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", NSCocoaErrorDomain), v26, (v27 & 1) == 0))
            {
              v28 = MBGetDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v41 = v23;
                v42 = 2112;
                v43 = v12;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
                _MBLog();
              }

              v29 = v12;
              *errorCopy = v12;

              v17 = 0;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v12 = 0;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_30:

LABEL_31:
  return v17;
}

- (void)_removeCorruptDatabaseWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    __assert_rtn("[MBCKCacheTracker _removeCorruptDatabaseWithError:]", "MBCKCache.m", 253, "error");
  }

  v5 = errorCopy;
  dispatch_assert_queue_V2(self->_sharedQueue);
  path = [(MBCKCacheTracker *)self path];
  if (!path)
  {
    __assert_rtn("[MBCKCacheTracker _removeCorruptDatabaseWithError:]", "MBCKCache.m", 256, "path");
  }

  v7 = path;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v30 = v7;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The database at %@ is corrupted and will be removed: %@", buf, 0x16u);
    v24 = v7;
    v25 = v5;
    _MBLog();
  }

  [(MBCKCacheTracker *)self _invalidateConnections];
  if (MBIsInternalInstall())
  {
    v9 = MBGetCacheDir();
    if (!v9)
    {
      __assert_rtn("[MBCKCacheTracker _removeCorruptDatabaseWithError:]", "MBCKCache.m", 265, "dir");
    }

    v10 = v9;
    v11 = [v9 stringByAppendingPathComponent:@"cloudkit_cache_corrupted.db"];
    if (!v11)
    {
      __assert_rtn("[MBCKCacheTracker _removeCorruptDatabaseWithError:]", "MBCKCache.m", 267, "destinationPath");
    }

    v12 = v11;
    v28 = 0;
    v13 = [MBSQLiteFileHandle copySQLiteFileAtPath:v7 toPath:v11 error:&v28];
    v14 = v28;
    if ((v13 & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = v7;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to copy the SQLite file at %@: %@", buf, 0x16u);
        v24 = v7;
        v25 = v14;
        _MBLog();
      }
    }
  }

  v27 = 0;
  v16 = [(MBCKCacheTracker *)self _removeDatabaseAtPath:v7 error:&v27, v24, v25];
  v17 = v27;
  if ((v16 & 1) == 0)
  {
    v20 = MBGetDefaultLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

      goto LABEL_23;
    }

    *buf = 138412546;
    v30 = v7;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to delete the database at %@: %@", buf, 0x16u);
LABEL_21:
    _MBLog();
    goto LABEL_22;
  }

  if (!MBIsInternalInstall())
  {
    goto LABEL_23;
  }

  domain = [v5 domain];
  v19 = [domain isEqualToString:PQLSqliteErrorDomain];

  if (!v19)
  {
    v20 = MBGetDefaultLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Removed cache database: %@", buf, 0xCu);
    goto LABEL_21;
  }

  if ([v5 code] != 13)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      code = [v5 code];
      extendedSqliteCode = [v5 extendedSqliteCode];
      v23 = [v5 description];
      *buf = 134218498;
      v30 = code;
      v31 = 2048;
      v32 = extendedSqliteCode;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Removed cache database, code:%ld, extendedCode:%ld, description:%@", buf, 0x20u);

      [v5 code];
      [v5 extendedSqliteCode];
      v26 = [v5 description];
      _MBLog();
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (BOOL)_resetDatabaseForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!error)
  {
    __assert_rtn("[MBCKCacheTracker _resetDatabaseForAccount:error:]", "MBCKCache.m", 289, "error");
  }

  v7 = accountCopy;
  dispatch_assert_queue_V2(self->_sharedQueue);
  path = [(MBCKCacheTracker *)self path];
  if (!path)
  {
    __assert_rtn("[MBCKCacheTracker _resetDatabaseForAccount:error:]", "MBCKCache.m", 292, "path");
  }

  v9 = path;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting the cache db at %{public}@", buf, 0xCu);
    v21 = v9;
    _MBLog();
  }

  persona = [v7 persona];
  [persona setPreferencesValue:0 forKey:@"SyncZoneFetched"];

  [(MBCKCacheTracker *)self _invalidateConnections];
  if (MBIsInternalInstall())
  {
    stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
    if (!stringByDeletingLastPathComponent)
    {
      __assert_rtn("[MBCKCacheTracker _resetDatabaseForAccount:error:]", "MBCKCache.m", 307, "dir");
    }

    v13 = stringByDeletingLastPathComponent;
    v14 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"cloudkit_cache_previous.db"];
    if (!v14)
    {
      __assert_rtn("[MBCKCacheTracker _resetDatabaseForAccount:error:]", "MBCKCache.m", 309, "destinationPath");
    }

    v15 = v14;
    v23 = 0;
    v16 = [MBSQLiteFileHandle copySQLiteFileAtPath:v9 toPath:v14 error:&v23];
    v17 = v23;
    if ((v16 & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = v9;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to copy the SQLite file at %{public}@: %{public}@", buf, 0x16u);
        v21 = v9;
        v22 = v17;
        _MBLog();
      }
    }
  }

  v19 = [(MBCKCacheTracker *)self _removeDatabaseAtPath:v9 error:error, v21, v22];

  return v19;
}

- (BOOL)resetDatabaseForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  dispatch_assert_queue_not_V2(self->_sharedQueue);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000BE7F8;
  v23 = sub_1000BE808;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  sharedQueue = self->_sharedQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BFAE8;
  v11[3] = &unk_1003BDFC8;
  v13 = &v15;
  v11[4] = self;
  v8 = accountCopy;
  v12 = v8;
  v14 = &v19;
  dispatch_sync(sharedQueue, v11);
  if (v16[3])
  {
    LOBYTE(error) = 1;
  }

  else
  {
    v9 = v20[5];
    if (!v9)
    {
      __assert_rtn("[MBCKCacheTracker resetDatabaseForAccount:error:]", "MBCKCache.m", 328, "localError");
    }

    if (error)
    {
      *error = v9;
      LOBYTE(error) = *(v16 + 24);
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return error & 1;
}

@end