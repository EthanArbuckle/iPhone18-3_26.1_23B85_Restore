@interface MBSQLiteDB
- (BOOL)_invalidate:(id *)a3;
- (BOOL)_openWithFlags:(int)a3 usePQLBatching:(BOOL)a4 error:(id *)a5;
- (BOOL)_removeDatabaseAtPath:(id)a3 error:(id *)a4;
- (BOOL)close:(id *)a3;
- (BOOL)executeStatements:(id)a3 error:(id *)a4;
- (BOOL)executeWithError:(id *)a3 sql:(id)a4;
- (BOOL)groupInTransaction:(id *)a3 transaction:(id)a4;
- (BOOL)performWithConnection:(id *)a3 accessor:(id)a4;
- (MBSQLiteDB)initWithPath:(id)a3 readOnly:(BOOL)a4 shouldDeleteOnFailureToOpen:(BOOL)a5 usePQLBatching:(BOOL)a6 schemaCurrentVersion:(int)a7 schemaMinDatabaseVersionForUpgrade:(int)a8 error:(id *)a9 schemaUpgrades:(id)a10;
- (id)_invalidatedError;
- (id)fetchObjectOfClass:(Class)a3 error:(id *)a4 sql:(id)a5;
- (id)fetchSQL:(id)a3;
- (id)openReadOnlyInstance:(Class)a3 error:(id *)a4;
- (unint64_t)fetchCountWithError:(id *)a3 sql:(id)a4;
- (void)_perform:(id)a3;
- (void)_removeCorruptDatabaseWithError:(id)a3;
- (void)_removeCorruptDatabaseWithError:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation MBSQLiteDB

- (MBSQLiteDB)initWithPath:(id)a3 readOnly:(BOOL)a4 shouldDeleteOnFailureToOpen:(BOOL)a5 usePQLBatching:(BOOL)a6 schemaCurrentVersion:(int)a7 schemaMinDatabaseVersionForUpgrade:(int)a8 error:(id *)a9 schemaUpgrades:(id)a10
{
  v16 = a3;
  v17 = a10;
  v48.receiver = self;
  v48.super_class = MBSQLiteDB;
  v18 = [(MBSQLiteDB *)&v48 init];
  if (!v18)
  {
    v28 = 0;
LABEL_9:
    v28 = v28;
    v30 = v28;
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v16 copy];
  path = v19->_path;
  v19->_path = v20;

  v19->_shouldDeleteOnFailureToOpen = a5;
  v19->_schemaCurrentVersion = a7;
  v19->_schemaMinDatabaseVersionForUpgrade = a8;
  objc_storeStrong(&v19->_schemaUpgrades, a10);
  v22 = objc_opt_class();
  Name = class_getName(v22);
  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create(Name, v24);
  sharedQueue = v19->_sharedQueue;
  v19->_sharedQueue = v25;

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100199DF4;
  v42 = sub_100199E04;
  v43 = 0;
  v27 = v19->_sharedQueue;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100199E0C;
  v32[3] = &unk_1003C0790;
  v36 = a4;
  v34 = &v44;
  v28 = v19;
  v37 = a6;
  v33 = v28;
  v35 = &v38;
  dispatch_sync(v27, v32);
  v29 = *(v45 + 24);
  if ((v29 & 1) == 0)
  {
    if (a9)
    {
      *a9 = v39[5];
    }

    v28 = 0;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  if (v29)
  {
    goto LABEL_9;
  }

  v30 = 0;
LABEL_10:

  return v30;
}

- (id)openReadOnlyInstance:(Class)a3 error:(id *)a4
{
  v4 = [[a3 alloc] initWithPath:self->_path readOnly:1 shouldDeleteOnFailureToOpen:self->_shouldDeleteOnFailureToOpen usePQLBatching:0 schemaCurrentVersion:self->_schemaCurrentVersion schemaMinDatabaseVersionForUpgrade:self->_schemaMinDatabaseVersionForUpgrade error:a4 schemaUpgrades:0];

  return v4;
}

- (BOOL)close:(id *)a3
{
  dispatch_assert_queue_not_V2(self->_sharedQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100199DF4;
  v17 = sub_100199E04;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  sharedQueue = self->_sharedQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A0F4;
  block[3] = &unk_1003BD340;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v13;
  dispatch_sync(sharedQueue, block);
  v6 = *(v10 + 24);
  if (a3 && (v10[3] & 1) == 0)
  {
    *a3 = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

- (BOOL)_invalidate:(id *)a3
{
  dispatch_assert_queue_V2(self->_sharedQueue);
  pdb = self->_pdb;
  if (pdb)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_100199DF4;
    v31 = sub_100199E04;
    v32 = pdb;
    v6 = self->_pdb;
    self->_pdb = 0;

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100199DF4;
    v25 = sub_100199E04;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v34 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Invalidating cache connection %p", buf, 0xCu);
      _MBLog();
    }

    v8 = [v28[5] serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019A4A0;
    block[3] = &unk_1003C07B8;
    block[4] = &v27;
    block[5] = &v17;
    block[6] = &v21;
    dispatch_sync(v8, block);

    if ((v18[3] & 1) == 0)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v28[5];
        v11 = v22[5];
        *buf = 134218242;
        v34 = v10;
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to close the PQL connection %p: %@", buf, 0x16u);
        v14 = v28[5];
        v15 = v22[5];
        _MBLog();
      }

      if (a3)
      {
        *a3 = v22[5];
      }
    }

    v12 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)dealloc
{
  pdb = self->_pdb;
  if (pdb)
  {
    v4 = pdb;
    v5 = self->_pdb;
    self->_pdb = 0;

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v15 = path;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);
      v10 = self->_path;
      _MBLog();
    }

    v8 = [(PQLConnection *)v4 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019A73C;
    block[3] = &unk_1003BC0B0;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);
  }

  v11.receiver = self;
  v11.super_class = MBSQLiteDB;
  [(MBSQLiteDB *)&v11 dealloc];
}

- (void)_removeCorruptDatabaseWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedQueue = self->_sharedQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A80C;
  block[3] = &unk_1003BD9D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedQueue, block);
}

- (void)_removeCorruptDatabaseWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 151, "error");
  }

  v5 = v4;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v6 = [(MBSQLiteDB *)self path];
  if (!v6)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 154, "path");
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v33 = v7;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The database at %@ is corrupted and will be removed: %@", buf, 0x16u);
    _MBLog();
  }

  if (!MBIsInternalInstall())
  {
    v29 = 0;
    v26 = [(MBSQLiteDB *)self _removeDatabaseAtPath:v7 error:&v29];
    v20 = v29;
    if (v26)
    {
LABEL_24:

      goto LABEL_25;
    }

    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v7;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to delete the database at %@: %@", buf, 0x16u);
LABEL_22:
      _MBLog();
    }

LABEL_23:

    goto LABEL_24;
  }

  v9 = [(NSString *)self->_path stringByDeletingLastPathComponent];
  if (!v9)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 161, "dir");
  }

  v10 = v9;
  v11 = [(NSString *)self->_path lastPathComponent];
  v12 = [v11 stringByDeletingPathExtension];
  v13 = [NSString stringWithFormat:@"%@_corrupted.db", v12];
  v14 = [v10 stringByAppendingPathComponent:v13];

  if (!v14)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 163, "destinationPath");
  }

  v31 = 0;
  v15 = [MBSQLiteFileHandle copySQLiteFileAtPath:v7 toPath:v14 error:&v31];
  v16 = v31;
  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v7;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to SQLite copy the database at %@: %@", buf, 0x16u);
      _MBLog();
    }
  }

  v18 = +[NSFileManager defaultManager];
  v30 = 0;
  v19 = [v18 mb_moveAsideAndMarkPurgeableDBFilesAtPath:v7 error:&v30];
  v20 = v30;

  if ((v19 & 1) == 0)
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v7;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to move aside the database at %@: %@", buf, 0x16u);
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v21 = [v5 domain];
  v22 = [v21 isEqualToString:PQLSqliteErrorDomain];

  if (!v22)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Removed database, error: %@", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_24;
  }

  if ([v5 code]!= 13)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v23 = [v5 code];
      v24 = [v5 extendedSqliteCode];
      v25 = [v5 description];
      *buf = 134218498;
      v33 = v23;
      v34 = 2048;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Removed database, code:%ld, extendedCode:%ld, description:%@", buf, 0x20u);

      [v5 code];
      [v5 extendedSqliteCode];
      v28 = [v5 description];
      _MBLog();
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)_openWithFlags:(int)a3 usePQLBatching:(BOOL)a4 error:(id *)a5
{
  v40 = a4;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v7 = self->_path;
  v8 = 0;
  v9 = 0;
  v39 = a3;
  v10 = a3 & 1;
  v11 = 1;
  v38 = PQLSqliteErrorDomain;
  while (1)
  {
    v12 = v11;

    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v14 = [(NSString *)v7 stringByDeletingLastPathComponent];
      v15 = +[NSFileManager defaultManager];
      v46[0] = NSFileOwnerAccountName;
      v46[1] = NSFileGroupOwnerAccountName;
      v47[0] = @"mobile";
      v47[1] = @"mobile";
      v16 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
      v43 = 0;
      v17 = [v15 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:v16 error:&v43];
      v13 = v43;

      if ((v17 & 1) == 0)
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          path = self->_path;
          *buf = 138412546;
          *v45 = path;
          *&v45[8] = 2112;
          *&v45[10] = v13;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create the directory at %@: %@", buf, 0x16u);
          v34 = self->_path;
          _MBLog();
        }

        v8 = v13;
        goto LABEL_37;
      }
    }

    v42 = v13;
    v18 = [(MBSQLiteDB *)self _makePQLConnectionWithFlags:v39 usePQLBatching:v40 error:&v42, v33, v35, v36];
    v8 = v42;

    if (v18 || v10)
    {
      break;
    }

    v20 = [v8 domain];
    if ([v20 isEqualToString:v38])
    {
      v21 = [v8 code]== 13;

      if (v21)
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v45 = 30;
          *&v45[4] = 2114;
          *&v45[6] = v8;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Sleeping for %d seconds: %{public}@", buf, 0x12u);
          _MBLog();
        }

        sleep(0x1Eu);
        goto LABEL_37;
      }
    }

    else
    {
    }

    if (self->_shouldDeleteOnFailureToOpen)
    {
      v41 = 0;
      v22 = [(MBSQLiteDB *)self _removeDatabaseAtPath:v7 error:&v41];
      v23 = v41;
      if ((v22 & 1) == 0)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          *v45 = v9;
          *&v45[4] = 2112;
          *&v45[6] = v7;
          *&v45[14] = 2112;
          *&v45[16] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove the DB on attempt %d opening at %@: %@", buf, 0x1Cu);
          v35 = v7;
          v36 = v23;
          v33 = v9;
          _MBLog();
        }
      }
    }

    else
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v45 = v9;
        *&v45[4] = 2112;
        *&v45[6] = v7;
        *&v45[14] = 2112;
        *&v45[16] = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Not deleting DB on attempt %d opening at %@: %@", buf, 0x1Cu);
        v35 = v7;
        v36 = v8;
        v33 = v9;
        _MBLog();
      }
    }

    if (!v8)
    {
      __assert_rtn("[MBSQLiteDB _openWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 240, "localError");
    }

    v11 = 0;
    v9 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (!v18)
  {
LABEL_37:
    if (!v8)
    {
      __assert_rtn("[MBSQLiteDB _openWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 248, "localError");
    }

LABEL_38:
    if (a5)
    {
      v31 = v8;
      v18 = 0;
      *a5 = v8;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_41;
  }

  self->_readOnly = v10;
  objc_storeStrong(&self->_pdb, v18);
  v25 = MBGetDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    if (v10)
    {
      v26 = "o";
    }

    else
    {
      v26 = "w";
    }

    *v45 = v26;
    *&v45[8] = 2112;
    *&v45[10] = v18;
    *&v45[18] = 2112;
    *&v45[20] = v7;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Opened r/%s PQL connection %@ at path %@", buf, 0x20u);
    _MBLog();
  }

LABEL_41:
  return v18 != 0;
}

- (BOOL)_removeDatabaseAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBSQLiteDB _removeDatabaseAtPath:error:]", "MBSQLiteDB.m", 418, "path");
  }

  if (!a4)
  {
    __assert_rtn("[MBSQLiteDB _removeDatabaseAtPath:error:]", "MBSQLiteDB.m", 419, "error");
  }

  v7 = v6;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Deleting DB at %@", buf, 0xCu);
    v31 = v7;
    _MBLog();
  }

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
        *a4 = v12;
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
    v32 = a4;
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
              *v32 = v12;

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

- (BOOL)performWithConnection:(id *)a3 accessor:(id)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100199DF4;
  v17 = sub_100199E04;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019C6F8;
  v8[3] = &unk_1003C0828;
  v9 = self;
  v11 = &v13;
  v12 = &v19;
  v5 = a4;
  v10 = v5;
  [(MBSQLiteDB *)v9 _perform:v8];
  if (a3 && (v20[3] & 1) == 0)
  {
    *a3 = v14[5];
  }

  v6 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (void)_perform:(id)a3
{
  block = a3;
  specific = dispatch_get_specific(self);
  v5 = [(PQLConnection *)self->_pdb serialQueue];
  v6 = v5;
  if (specific == self)
  {
    dispatch_assert_queue_V2(v5);

    v7 = objc_autoreleasePoolPush();
    block[2]();
  }

  else
  {
    dispatch_assert_queue_not_V2(v5);

    v7 = objc_autoreleasePoolPush();
    v8 = [(PQLConnection *)self->_pdb serialQueue];
    dispatch_sync(v8, block);
  }

  objc_autoreleasePoolPop(v7);
}

- (BOOL)groupInTransaction:(id *)a3 transaction:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019C920;
  v8[3] = &unk_1003C0850;
  v9 = a4;
  v6 = v9;
  LOBYTE(a3) = [(MBSQLiteDB *)self performWithConnection:a3 accessor:v8];

  return a3;
}

- (id)_invalidatedError
{
  path = self->_path;
  v3 = objc_opt_class();
  return [MBError errorWithCode:16 path:path format:@"%s database is closed", class_getName(v3)];
}

- (BOOL)executeWithError:(id *)a3 sql:(id)a4
{
  v11 = &v12;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019CA38;
  v8[3] = &unk_1003C0878;
  v9 = a4;
  v10 = &v11;
  v6 = v9;
  LOBYTE(a3) = [(MBSQLiteDB *)self performWithConnection:a3 accessor:v8];

  return a3;
}

- (id)fetchObjectOfClass:(Class)a3 error:(id *)a4 sql:(id)a5
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100199DF4;
  v21 = sub_100199E04;
  v22 = 0;
  v16 = &v24;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019CBF4;
  v11[3] = &unk_1003C08A0;
  v13 = &v17;
  v14 = a3;
  v7 = a5;
  v12 = v7;
  v15 = &v16;
  if ([(MBSQLiteDB *)self performWithConnection:a4 accessor:v11])
  {
    v8 = v18[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (unint64_t)fetchCountWithError:(id *)a3 sql:(id)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100199DF4;
  v22 = sub_100199E04;
  v23 = 0;
  v17 = &v24;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10019CDEC;
  v13 = &unk_1003C08C8;
  v15 = &v18;
  v6 = a4;
  v14 = v6;
  v16 = &v17;
  if ([(MBSQLiteDB *)self performWithConnection:a3 accessor:&v10]&& (v7 = v19[5]) != 0)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v18, 8);
  return v8;
}

- (BOOL)executeStatements:(id)a3 error:(id *)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019CF3C;
  v8[3] = &unk_1003C08F0;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [(MBSQLiteDB *)self performWithConnection:a4 accessor:v8];

  return a4;
}

- (id)fetchSQL:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100199DF4;
  v21 = sub_100199E04;
  v22 = 0;
  v15 = 0;
  v16 = &v24;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019D0C8;
  v11[3] = &unk_1003C08C8;
  v13 = &v17;
  v4 = a3;
  v12 = v4;
  v14 = &v16;
  v5 = [(MBSQLiteDB *)self performWithConnection:&v15 accessor:v11];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    v7 = v18[5];
    v18[5] = 0;
  }

  v8 = [MBSQLiteResultSet alloc];
  v9 = [(MBSQLiteResultSet *)v8 _initWithDatabase:self creationError:v6 resultSet:v18[5]];

  _Block_object_dispose(&v17, 8);

  return v9;
}

@end