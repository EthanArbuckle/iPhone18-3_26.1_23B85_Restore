@interface MBiTunesStorePlugin
- (BOOL)_mkdir:(id)_mkdir;
- (id)backingUpSQLiteFileCopyAtPath:(id)path temporaryPath:(id)temporaryPath;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBiTunesStorePlugin

- (id)backingUpSQLiteFileCopyAtPath:(id)path temporaryPath:(id)temporaryPath
{
  pathCopy = path;
  temporaryPathCopy = temporaryPath;
  if ([pathCopy isEqualToString:@"/var/mobile/Library/com.apple.itunesstored/kvs.sqlitedb"])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = pathCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deleting unneeded domains from %@", buf, 0xCu);
      _MBLog();
    }

    *buf = 0;
    sqlite3_open_v2([temporaryPathCopy fileSystemRepresentation], buf, 2, 0);
    v8 = [NSString stringWithFormat:@"delete from kvs_value where domain not in ('%@', '%@') vacuum;", @"com.apple.itunesstored", @"com.apple.mobile.iTunes.store"];;
    sqlite3_exec(*buf, [v8 UTF8String], 0, 0, 0);
    sqlite3_close(*buf);
  }

  return 0;
}

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  if ([engineCopy restoresPrimaryAccount])
  {
    settingsContext = [engineCopy settingsContext];
    shouldRestoreSystemFiles = [settingsContext shouldRestoreSystemFiles];

    v10 = MBGetDefaultLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if ((shouldRestoreSystemFiles & 1) == 0)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not restoring iTunesStore KeyValueStore since system files weren't restored", buf, 2u);
        _MBLog();
      }

      goto LABEL_27;
    }

    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Restoring iTunesStore KeyValueStore", buf, 2u);
      _MBLog();
    }

    persona = [engineCopy persona];
    if (!persona)
    {
      __assert_rtn("[MBiTunesStorePlugin endingRestoreWithPolicy:engine:]", "MBiTunesStorePlugin.m", 64, "persona");
    }

    v13 = persona;
    v14 = +[MBiTunesStoreKVS iTunesStoreKVS];
    userIncompleteRestoreDirectory = [v13 userIncompleteRestoreDirectory];
    v16 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/mobile/Library/com.apple.itunesstored"];

    userIncompleteRestoreDirectory2 = [v13 userIncompleteRestoreDirectory];
    v18 = [userIncompleteRestoreDirectory2 stringByAppendingPathComponent:@"/var/mobile/Library/com.apple.itunesstored/kvs.sqlitedb"];

    knownAccountsByDSID = [v14 knownAccountsByDSID];
    v19 = +[NSFileManager defaultManager];
    v20 = [v19 fileExistsAtPath:v18];

    v34 = v16;
    v35 = v18;
    if (v20)
    {
      v38 = 0;
      v21 = [MBSQLiteFileHandle copySQLiteFileAtPath:v18 toPath:@"/var/mobile/Library/com.apple.itunesstored/kvs.sqlitedb" timeout:&v38 error:10.0];
      v10 = v38;
      if ((v21 & 1) == 0)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v10;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error copying iTMS KVS db from backup to local path: %@", buf, 0xCu);
          _MBLog();
        }

LABEL_26:

LABEL_27:
        goto LABEL_28;
      }
    }

    else
    {
      [v14 removeAllValues];
      v10 = 0;
    }

    properties = [engineCopy properties];
    lockdownKeys = [properties lockdownKeys];
    v22 = [lockdownKeys objectForKeyedSubscript:@"com.apple.itunesstored"];

    if ([v22 count])
    {
      [v14 setValuesWithDictionary:v22 forDomain:@"com.apple.itunesstored"];
    }

    else
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = @"com.apple.itunesstored";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No keys found in %@ lockdown domain", buf, 0xCu);
        v33 = @"com.apple.itunesstored";
        _MBLog();
      }
    }

    knownAccountsByDSID2 = [v14 knownAccountsByDSID];
    v27 = [MBiTunesStoreKVS mergeKnownAccountsByDSID:knownAccountsByDSID into:knownAccountsByDSID2];
    allValues = [v27 allValues];
    [v14 setKnownAccounts:allValues];

    v16 = v34;
    if ([(MBiTunesStorePlugin *)self _mkdir:v34])
    {
      v37 = v10;
      v29 = [MBSQLiteFileHandle copySQLiteFileAtPath:@"/var/mobile/Library/com.apple.itunesstored/kvs.sqlitedb" toPath:v35 timeout:&v37 error:10.0];
      v30 = v37;

      if ((v29 & 1) == 0)
      {
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Error copying iTMS KVS db from local to backup path: %@", buf, 0xCu);
          _MBLog();
        }
      }

      v16 = v34;
    }

    else
    {
      v30 = v10;
    }

    v10 = v30;
    goto LABEL_26;
  }

LABEL_28:

  return 0;
}

- (BOOL)_mkdir:(id)_mkdir
{
  _mkdirCopy = _mkdir;
  v18 = 0;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:_mkdirCopy isDirectory:&v18];

  if (!v5)
  {
    if (v18)
    {
      v6 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v8 = +[NSFileManager defaultManager];
    v17 = 0;
    v9 = [v8 removeItemAtPath:_mkdirCopy error:&v17];
    v6 = v17;

    if ((v9 & 1) == 0)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = _mkdirCopy;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error removing directory: %@: %@", buf, 0x16u);
        goto LABEL_12;
      }

LABEL_13:

      v7 = 0;
      goto LABEL_14;
    }

LABEL_7:
    v10 = v6;
    v11 = +[NSFileManager defaultManager];
    v12 = MBMobileFileAttributes();
    v16 = v6;
    v7 = 1;
    v13 = [v11 createDirectoryAtPath:_mkdirCopy withIntermediateDirectories:1 attributes:v12 error:&v16];
    v6 = v16;

    if (v13)
    {
      goto LABEL_14;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = _mkdirCopy;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error creating directory: %@: %@", buf, 0x16u);
LABEL_12:
      _MBLog();
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = 0;
  v7 = 1;
LABEL_14:

  return v7;
}

@end