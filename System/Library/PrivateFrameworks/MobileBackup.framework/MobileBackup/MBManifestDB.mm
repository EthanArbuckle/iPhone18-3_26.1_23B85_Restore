@interface MBManifestDB
+ (MBManifestDB)manifestDBWithDrive:(id)a3 sourcePath:(id)a4 properties:(id)a5 domainManager:(id)a6 keybag:(id)a7 error:(id *)a8;
- (BOOL)_checkPassword:(id)a3 withPasswordHash:(id)a4 andSalt:(id)a5;
- (BOOL)_isNotFoundError:(id)a3;
- (BOOL)_setupCacheWithError:(id *)a3;
- (BOOL)_setupConnectionWithError:(id *)a3;
- (BOOL)checkWithError:(id *)a3;
- (BOOL)closeAndRemoveFileWithError:(id *)a3;
- (BOOL)closeWithError:(id *)a3;
- (BOOL)containsFileID:(id)a3 error:(id *)a4;
- (BOOL)containsPlaceholderForFileID:(id)a3 error:(id *)a4;
- (BOOL)containsRegularFileForFileID:(id)a3 error:(id *)a4;
- (BOOL)encrypted;
- (BOOL)hasUnverifiedFilesWithError:(id *)a3;
- (BOOL)openWithError:(id *)a3;
- (BOOL)setPasswordHashForPassword:(id)a3 salt:(id)a4 withError:(id *)a5;
- (BOOL)setupEncryptionWithPassword:(id)a3 withError:(id *)a4;
- (BOOL)uploadToPath:(id)a3 withDrive:(id)a4 keybag:(id)a5 error:(id *)a6;
- (MBManifestDB)initWithPath:(id)a3 properties:(id)a4 domainManager:(id)a5;
- (id)_enumerateObjectsOfClass:(Class)a3 withCallback:(id)a4 format:(id)a5;
- (id)_executeSQL:(id)a3;
- (id)_fetchObjectOfClass:(Class)a3 withError:(id *)a4 format:(id)a5;
- (id)_newConnection:(id)a3;
- (id)_passwordHashWithPassword:(id)a3 salt:(id)a4;
- (id)addFile:(id)a3 flags:(unint64_t)a4;
- (id)addPlaceholderForFile:(id)a3 flags:(unint64_t)a4;
- (id)enumerateFiles:(id)a3 includeUninstalled:(BOOL)a4;
- (id)fetchFileWithID:(id)a3 error:(id *)a4;
- (id)fetchPropertyWithName:(id)a3 class:(Class)a4 error:(id *)a5;
- (id)getEncryptedFileHandleWithKeybag:(id)a3 error:(id *)a4;
- (id)removeFileWithID:(id)a3;
- (id)removeFilesNotAlreadyUploaded;
- (id)setFlags:(unint64_t)a3 forFileID:(id)a4;
- (id)setFlags:(unint64_t)a3 mask:(unint64_t)a4 forFileID:(id)a5;
- (id)unsetAlreadyUploadedFlags;
- (id)unsetVerifiedFlags;
- (unint64_t)flagsForFileID:(id)a3 error:(id *)a4;
- (void)_checkEncryption;
- (void)_performOnDBQueue:(id)a3;
- (void)dealloc;
- (void)flush;
@end

@implementation MBManifestDB

+ (MBManifestDB)manifestDBWithDrive:(id)a3 sourcePath:(id)a4 properties:(id)a5 domainManager:(id)a6 keybag:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = MBTemporaryPath();
  if ([v15 encrypted] && (objc_msgSend(v15, "manifestEncryptionKey"), v19 = objc_claimAutoreleasedReturnValue(), v19, !v17) && v19)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "No keybag available to decrypt manifest", buf, 2u);
      _MBLog();
    }

    if (a8)
    {
      [MBError errorWithCode:1 format:@"No keybag available to decrypt encrypted manifest"];
      *a8 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    if ([v15 encrypted])
    {
      v22 = [v15 manifestEncryptionKey];

      v23 = &__NSDictionary0__struct;
      if (v17 && v22)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Decrypting manifest database", buf, 2u);
          _MBLog();
        }

        v25 = objc_alloc_init(MBManifestDBDownloadHelper);
        [(MBManifestDBDownloadHelper *)v25 setKeybag:v17];
        [(MBManifestDBDownloadHelper *)v25 setProperties:v15];
        v37 = @"FileHandleFactory";
        v38 = v25;
        v23 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      }
    }

    else
    {
      v23 = &__NSDictionary0__struct;
    }

    v32 = 0;
    v26 = [v13 downloadFileAtPath:v14 toPath:v18 options:v23 error:&v32];
    v27 = v32;
    if ((v26 & 1) == 0)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to download manifest db from backup: %@", buf, 0xCu);
        _MBLog();
      }

      if (a8)
      {
        v29 = v27;
        *a8 = v27;
      }
    }

    v21 = [[MBManifestDB alloc] initWithPath:v18 properties:v15 domainManager:v16];
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v14;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "ManifestDB: downloading %@ to %@", buf, 0x16u);
      _MBLog();
    }
  }

  return v21;
}

- (MBManifestDB)initWithPath:(id)a3 properties:(id)a4 domainManager:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = MBManifestDB;
  v13 = [(MBManifestDB *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_path, a3);
    objc_storeStrong(&v14->_domainManager, a5);
    objc_storeStrong(&v14->_properties, a4);
    if (!v14->_properties)
    {
      v15 = objc_alloc_init(MBProperties);
      properties = v14->_properties;
      v14->_properties = v15;
    }

    encryptedFileHandle = v14->_encryptedFileHandle;
    v14->_encryptedFileHandle = 0;

    if (!v14->_domainManager)
    {
      v21 = +[NSAssertionHandler currentHandler];
      [v21 handleFailureInMethod:a2 object:v14 file:@"MBManifestDB.m" lineNumber:156 description:@"DomainManager must not be nil"];
    }

    v18 = dispatch_queue_create("com.apple.MobileBackup.MBManifestDBCallback", &_dispatch_queue_attr_concurrent);
    callbackQueue = v14->_callbackQueue;
    v14->_callbackQueue = v18;
  }

  return v14;
}

- (void)dealloc
{
  v3 = self->_pdb;
  pdb = self->_pdb;
  self->_pdb = 0;

  if (v3)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v13 = path;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);
      v8 = self->_path;
      _MBLog();
    }

    v7 = [(PQLConnection *)v3 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002301FC;
    block[3] = &unk_1003BC0B0;
    v11 = v3;
    dispatch_async(v7, block);
  }

  v9.receiver = self;
  v9.super_class = MBManifestDB;
  [(MBManifestDB *)&v9 dealloc];
}

- (BOOL)openWithError:(id *)a3
{
  if (!self->_pdb)
  {
    v4 = [[NSString alloc] initWithFormat:@"ManifestDB-%lu", -[MBManifestDB hash](self, "hash")];
    v6 = [(NSString *)self->_path stringByDeletingLastPathComponent];
    v9 = +[NSFileManager defaultManager];
    v21[0] = NSFileOwnerAccountName;
    v21[1] = NSFileGroupOwnerAccountName;
    v22[0] = @"mobile";
    v22[1] = @"mobile";
    v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    LODWORD(a3) = [v9 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v10 error:a3];

    if (a3)
    {
      v11 = [(MBManifestDB *)self _newConnection:v4];
      pdb = self->_pdb;
      self->_pdb = v11;

      v18 = 0;
      v13 = [(MBManifestDB *)self _setupCacheWithError:&v18];
      v14 = v18;
      if (v13)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100230494;
        v17[3] = &unk_1003BC0B0;
        v17[4] = self;
        [(MBManifestDB *)self _performOnDBQueue:v17];

        goto LABEL_2;
      }

      v15 = self->_pdb;
      self->_pdb = 0;
    }

    v7 = 0;
    goto LABEL_10;
  }

LABEL_2:
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MBManifestDB *)self path];
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ManifestDB: opening %@", buf, 0xCu);

    v6 = [(MBManifestDB *)self path];
    _MBLog();
    v7 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)closeWithError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1002307A4;
  v21 = sub_1002307B4;
  v22 = 0;
  v5 = [(MBManifestDB *)self pql_database];

  if (v5)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002307BC;
    v16[3] = &unk_1003BCFA0;
    v16[4] = self;
    v16[5] = &v23;
    v16[6] = &v17;
    [(MBManifestDB *)self _performOnDBQueue:v16];
    v6 = [(MBManifestDB *)self path];
    v7 = [v6 stringByAppendingString:@"-shm"];

    v8 = +[NSFileManager defaultManager];
    [v8 removeItemAtPath:v7 error:0];

    pdb = self->_pdb;
    self->_pdb = 0;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MBManifestDB *)self path];
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ManifestDB: closing %@", buf, 0xCu);
    }

    v15 = [(MBManifestDB *)self path];
    _MBLog();
  }

  v13 = *(v24 + 24);
  if (a3 && (v24[3] & 1) == 0)
  {
    *a3 = v18[5];
    v13 = *(v24 + 24);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v13 & 1;
}

- (BOOL)closeAndRemoveFileWithError:(id *)a3
{
  v5 = [(MBManifestDB *)self closeWithError:?];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [(MBManifestDB *)self path];
    v8 = [v6 removeItemAtPath:v7 error:a3];

    if (v8)
    {
      encryptedFileHandle = self->_encryptedFileHandle;
      self->_encryptedFileHandle = 0;

      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(MBManifestDB *)self path];
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ManifestDB: removing %@", buf, 0xCu);

        v13 = [(MBManifestDB *)self path];
        _MBLog();
      }

      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)checkWithError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1002307A4;
  v15 = sub_1002307B4;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100230B10;
  v6[3] = &unk_1003BCFA0;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(MBManifestDB *)self _performOnDBQueue:v6];
  v4 = *(v8 + 24);
  if (a3 && (v8[3] & 1) == 0)
  {
    *a3 = v12[5];
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4 & 1;
}

- (void)flush
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100230C18;
  v2[3] = &unk_1003BC0B0;
  v2[4] = self;
  [(MBManifestDB *)self _performOnDBQueue:v2];
}

- (BOOL)uploadToPath:(id)a3 withDrive:(id)a4 keybag:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MBManifestDB *)self properties];
  v14 = [v13 encrypted];

  if (!v14)
  {
    v19 = &__NSDictionary0__struct;
    goto LABEL_7;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    *buf = 138412290;
    v32 = path;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Setting up the upload of an encrypted manifest database located at %@", buf, 0xCu);
    v28 = self->_path;
    _MBLog();
  }

  v17 = objc_alloc_init(MBManifestDBUploadHelper);
  v18 = [(MBManifestDB *)self getEncryptedFileHandleWithKeybag:v12 error:a6];
  [(MBManifestDBUploadHelper *)v17 setFileHandle:v18];

  if (self->_encryptedFileHandle)
  {
    v35 = @"FileHandleFactory";
    v36 = v17;
    v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

LABEL_7:
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_path;
      *buf = 138412546;
      v32 = v21;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ManifestDB: uploading manifest database from path %@ to path %@", buf, 0x16u);
      v29 = self->_path;
      _MBLog();
    }

    v22 = self->_path;
    v30 = 0;
    v23 = [v11 uploadFileAtPath:v22 toPath:v10 options:v19 error:&v30];
    v24 = v30;
    if (v23)
    {
      v25 = 1;
    }

    else if (a6)
    {
      v24 = v24;
      v25 = 0;
      *a6 = v24;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_17;
  }

  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Can't upload without a file handle to the db", buf, 2u);
    _MBLog();
  }

  v24 = 0;
  v25 = 0;
  v19 = &__NSDictionary0__struct;
LABEL_17:

  return v25;
}

- (id)getEncryptedFileHandleWithKeybag:(id)a3 error:(id *)a4
{
  if (self->_encryptedFileHandle)
  {
    v5 = MBGetDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    p_path = &self->_path;
    path = self->_path;
    *buf = 138412290;
    v15 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Using existing cached file handle for manifest DB at path %@", buf, 0xCu);
  }

  else
  {
    p_path = &self->_path;
    v8 = [MBEncryptedFileHandle encryptedFileHandleForBackupWithPath:self->_path keybag:a3 error:a4];
    encryptedFileHandle = self->_encryptedFileHandle;
    self->_encryptedFileHandle = v8;

    v5 = MBGetDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v10 = *p_path;
    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Acquiring and caching a new encrypted file handle for manifest DB at path %@", buf, 0xCu);
  }

  v13 = *p_path;
  _MBLog();
LABEL_7:

  v11 = self->_encryptedFileHandle;

  return v11;
}

- (id)_newConnection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PQLConnection);
  [v4 setSqliteErrorHandler:&stru_1003C21A0];
  v5 = [v4 sqliteErrorHandler];
  [v4 setAutoRollbackHandler:v5];

  [v4 setLabel:v3];
  v6 = +[MBBehaviorOptions sharedOptions];
  [v4 setTraced:{objc_msgSend(v6, "sqlTrace")}];

  [v4 setCrashIfUsedAfterClose:1];
  [v4 setStatementCacheMaxCount:30];
  return v4;
}

- (BOOL)_setupConnectionWithError:(id *)a3
{
  v5 = [(MBManifestDB *)self pql_database];
  v6 = [NSURL fileURLWithPath:self->_path];
  v7 = [v5 openAtURL:v6 withFlags:6 error:a3];

  if (v7)
  {
    v8 = [(MBManifestDB *)self pql_database];
    v9 = [v8 setupPragmas];

    if (v9)
    {
      return 1;
    }

    v11 = [(MBManifestDB *)self pql_database];
    [v11 close:a3];
  }

  pdb = self->_pdb;
  self->_pdb = 0;

  return 0;
}

- (BOOL)_setupCacheWithError:(id *)a3
{
  v5 = [(MBManifestDB *)self _setupConnectionWithError:?];
  if (v5)
  {
    v6 = [(MBManifestDB *)self pql_database];
    v7 = [v6 userVersion];
    v8 = [v7 unsignedIntValue];

    v9 = [(MBManifestDB *)self pql_database];
    v10 = v9;
    if (v8 < 2)
    {
      v11 = [v9 url];

      *v50 = 61;
      v12 = [(MBManifestDB *)self pql_database];
      v13 = sqlite3_file_control([v12 dbHandle], 0, 101, v50);

      v14 = [(MBManifestDB *)self pql_database];
      v15 = [v14 close:a3];

      if ((v15 & 1) == 0)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *a3;
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Can't close db: %@", buf, 0xCu);
          v43 = *a3;
          _MBLog();
        }
      }

      if (v13)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v11;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to truncate database at %@: %d", buf, 0x12u);
          v43 = v11;
          v44 = v13;
          _MBLog();
        }

        v19 = v11;
        if (unlink([v11 fileSystemRepresentation]) < 0)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = *__error();
            *buf = 138412546;
            *&buf[4] = v11;
            *&buf[12] = 1024;
            *&buf[14] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to unlink %@: %{errno}d", buf, 0x12u);
            v43 = v11;
            v44 = *__error();
            _MBLog();
          }
        }
      }

      v22 = [(MBManifestDB *)self _setupConnectionWithError:a3, v43, v44];

      if (v22)
      {
        v23 = [(MBManifestDB *)self pql_database];
        [v23 execute:@"PRAGMA cache_size = 250"];

        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v8;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Migrating manifest database from version %d to %d", buf, 0xEu);
          v43 = v8;
          v44 = 2;
          _MBLog();
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v8;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Migrating database from version %d to %d", buf, 0xEu);
          v43 = v8;
          v44 = 2;
          _MBLog();
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v57 = sub_1002307A4;
        v58 = sub_1002307B4;
        v59 = 0;
        v26 = [(MBManifestDB *)self pql_database];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100231BBC;
        v46[3] = &unk_1003C21F8;
        v47 = 0;
        v48 = v8;
        v49 = 2;
        v46[4] = self;
        v46[5] = buf;
        v27 = [v26 performWithFlags:10 action:v46];

        if (v27)
        {
          v28 = [(MBManifestDB *)self pql_database];
          [v28 setUserVersion:2];

          v29 = [(MBManifestDB *)self pql_database];
          v30 = [v29 userVersion];
          [v30 unsignedIntValue];

          _Block_object_dispose(buf, 8);
LABEL_22:
          v31 = [(MBManifestDB *)self pql_database:v43];
          v32 = +[MBBehaviorOptions sharedOptions];
          [v32 sqlBatchTime];
          v34 = v33;
          v35 = +[MBBehaviorOptions sharedOptions];
          [v31 useBatchingWithDelay:objc_msgSend(v35 changeCount:{"sqlBatchCount"), v34}];

          v36 = [(MBManifestDB *)self pql_database];
          [v36 useSerialQueue];

          v37 = [(MBManifestDB *)self pql_database];
          v38 = [v37 serialQueue];
          dispatch_queue_set_specific(v38, self, self, 0);

          LOBYTE(v5) = 1;
          return v5;
        }

        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = *(*&buf[8] + 40);
          *v50 = 67109634;
          v51 = v8;
          v52 = 1024;
          v53 = 2;
          v54 = 2112;
          v55 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Migration from version %d to %d failed, error:%@", v50, 0x18u);
          v45 = *(*&buf[8] + 40);
          _MBLog();
        }

        v41 = [(MBManifestDB *)self pql_database];
        [v41 close:0];

        if (a3)
        {
          *a3 = *(*&buf[8] + 40);
        }

        _Block_object_dispose(buf, 8);
      }

      LOBYTE(v5) = 0;
      return v5;
    }

    [v9 execute:@"PRAGMA cache_size = 250"];

    goto LABEL_22;
  }

  return v5;
}

- (void)_performOnDBQueue:(id)a3
{
  v4 = a3;
  if (dispatch_get_specific(self) == self)
  {
    v7 = objc_autoreleasePoolPush();
    v4[2](v4);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(PQLConnection *)v5->_pdb serialQueue];
    dispatch_assert_queue_not_V2(v6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100231E64;
    block[3] = &unk_1003BCB38;
    v9 = v4;
    dispatch_sync(v6, block);

    objc_sync_exit(v5);
  }
}

- (BOOL)_isNotFoundError:(id)a3
{
  v3 = a3;
  if ([v3 code] == 12)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:PQLSqliteErrorDomain];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_executeSQL:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1002307A4;
  v16 = sub_1002307B4;
  v17 = 0;
  v11 = &v19;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10023206C;
  v6[3] = &unk_1003C1D38;
  v7 = self;
  v3 = a3;
  v9 = &v12;
  v10 = &v11;
  v8 = v3;
  [(MBManifestDB *)v7 _performOnDBQueue:v6];
  v4 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)_enumerateObjectsOfClass:(Class)a3 withCallback:(id)a4 format:(id)a5
{
  v8 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1002307A4;
  v24 = sub_1002307B4;
  v25 = 0;
  v19 = &v27;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100232288;
  v13[3] = &unk_1003C2248;
  v13[4] = self;
  v9 = a5;
  v14 = v9;
  v17 = &v19;
  v18 = a3;
  v10 = v8;
  v15 = v10;
  v16 = &v20;
  [(MBManifestDB *)self _performOnDBQueue:v13];
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (id)_fetchObjectOfClass:(Class)a3 withError:(id *)a4 format:(id)a5
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1002307A4;
  v28 = sub_1002307B4;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1002307A4;
  v22 = sub_1002307B4;
  v23 = 0;
  v17 = &v31;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100232714;
  v10[3] = &unk_1003C2270;
  v13 = &v18;
  v11 = self;
  v15 = a3;
  v6 = a5;
  v16 = &v17;
  v12 = v6;
  v14 = &v24;
  [(MBManifestDB *)v11 _performOnDBQueue:v10];
  v7 = v19[5];
  if (a4 && !v7)
  {
    *a4 = v25[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (void)_checkEncryption
{
  if ([(MBManifestDB *)self encrypted])
  {
    v3 = [(MBManifestDB *)self passwordData];

    if (!v3)
    {
      v7 = [MBException alloc];
      v8 = @"Manifest is encrypted but no password set";
      v9 = 207;
LABEL_8:
      objc_exception_throw([v7 initWithCode:v9 format:v8]);
    }
  }

  v4 = [(MBManifestDB *)self passwordData];
  if (v4)
  {
    v5 = v4;
    v6 = [(MBManifestDB *)self passwordHash];

    if (!v6)
    {
      v7 = [MBException alloc];
      v8 = @"Password is set but no password hash available";
      v9 = 1;
      goto LABEL_8;
    }
  }
}

- (BOOL)_checkPassword:(id)a3 withPasswordHash:(id)a4 andSalt:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 | v9)
  {
    if (!v8 || v9)
    {
      if (v8 || !v9)
      {
        v13 = [v8 dataUsingEncoding:4];
        v11 = [(MBManifestDB *)self _passwordHashWithPassword:v13 salt:v10];

        if ([v9 isEqualToData:v11])
        {
          v12 = 1;
LABEL_18:

          goto LABEL_19;
        }

        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v9 base64EncodedStringWithOptions:0];
          v16 = [v11 base64EncodedStringWithOptions:0];
          *buf = 138412546;
          v21 = v15;
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Password does not match password hash (%@ != %@)", buf, 0x16u);

          v17 = [v9 base64EncodedStringWithOptions:0];
          v19 = [v11 base64EncodedStringWithOptions:0];
          _MBLog();
        }
      }

      else
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Password not set but there is a password hash", buf, 2u);
          goto LABEL_11;
        }
      }
    }

    else
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Password set but no available password hash", buf, 2u);
LABEL_11:
        _MBLog();
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  v12 = 1;
LABEL_19:

  return v12;
}

- (id)_passwordHashWithPassword:(id)a3 salt:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 appendData:v5];

  v7 = +[MBDigest sha256];
  v8 = [v7 digestForData:v6];

  return v8;
}

- (BOOL)setupEncryptionWithPassword:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting up encryption for manifest database", buf, 2u);
    _MBLog();
  }

  v8 = [(MBManifestDB *)self passwordData];
  if (!v8)
  {
LABEL_8:
    v31 = 0;
    v14 = [(MBManifestDB *)self fetchPropertyWithName:@"passwordHash" class:objc_opt_class() error:&v31];
    v15 = v31;
    if (v15)
    {
      v16 = v15;
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to fetch password hash from database: %@", buf, 0xCu);
        _MBLog();
      }

      if (a4)
      {
        v18 = v16;
        v13 = 0;
        *a4 = v16;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_43;
    }

    v30 = 0;
    v19 = [(MBManifestDB *)self fetchPropertyWithName:@"salt" class:objc_opt_class() error:&v30];
    v16 = v30;
    if (v16)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch salt from database: %@", buf, 0xCu);
        _MBLog();
      }

      if (a4)
      {
        v21 = v16;
        v13 = 0;
        *a4 = v16;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

LABEL_41:
      v13 = 0;
      goto LABEL_42;
    }

    if (!v14 || v19)
    {
      if (!v14 || !v19 || [(MBManifestDB *)self _checkPassword:v6 withPasswordHash:v14 andSalt:v19])
      {
        v25 = [v6 dataUsingEncoding:4];
        v13 = v25 != 0;
        if (v25)
        {
          [(MBManifestDB *)self setSalt:v19];
          v26 = [(MBManifestDB *)self salt];

          if (v26)
          {
            [(MBManifestDB *)self setPasswordData:v25];
          }
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to encode password", buf, 2u);
            _MBLog();
          }

          if (a4)
          {
            *a4 = [MBError errorWithCode:207 format:@"Failed to encode password"];
          }
        }

        goto LABEL_42;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Password does not match existing manifest password hash", buf, 2u);
        _MBLog();
      }

      if (!a4)
      {
        goto LABEL_41;
      }

      v23 = @"Password does not match existing manifest password hash";
      v24 = 207;
    }

    else
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Inconsistent encryption settings in database: password hash without salt", buf, 2u);
        _MBLog();
      }

      if (!a4)
      {
        goto LABEL_41;
      }

      v23 = @"Inconsistent encryption settings in manifest database";
      v24 = 205;
    }

    [MBError errorWithCode:v24 format:v23];
    *a4 = v13 = 0;
    goto LABEL_42;
  }

  v9 = v8;
  v10 = [(MBManifestDB *)self passwordHash];
  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(MBManifestDB *)self salt];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = 1;
LABEL_44:

  return v13;
}

- (BOOL)setPasswordHashForPassword:(id)a3 salt:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(MBManifestDB *)self _passwordHashWithPassword:v8 salt:v9];
    if (v10)
    {
      v11 = [(MBManifestDB *)self setPropertyWithName:@"passwordHash" value:v10];
      v12 = v11 == 0;
      if (v11)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to store password hash in database: %@", buf, 0xCu);
          _MBLog();
        }

        if (a5)
        {
          v14 = v11;
          *a5 = v11;
        }
      }

      else
      {
        [(MBManifestDB *)self setPasswordHash:v10];
      }
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to generate password hash", buf, 2u);
        _MBLog();
      }

      if (a5)
      {
        [MBError errorWithCode:1 format:@"Failed to generate password hash"];
        *a5 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else if (a5)
  {
    [MBError errorWithCode:207 format:@"Cannot set password hash without a password"];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)encrypted
{
  v3 = [(MBManifestDB *)self passwordData];
  if (v3)
  {
    v4 = [(MBManifestDB *)self salt];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)addFile:(id)a3 flags:(unint64_t)a4
{
  v6 = a3;
  v7 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [v6 mode]) | a4;
  v8 = v6;
  v9 = [v8 fileID];
  v10 = [v9 string];
  v11 = [v8 domain];
  v12 = [v11 name];
  v13 = [v8 relativePath];
  v14 = [(MBManifestDB *)self _executeSQL:@"INSERT OR REPLACE INTO Files (fileID, domain, relativePath, flags, file) VALUES (%@, %@, %@, %lu, %@)", v10, v12, v13, v7, v8];

  return v14;
}

- (id)addPlaceholderForFile:(id)a3 flags:(unint64_t)a4
{
  v6 = [a3 fileID];
  v7 = [v6 string];
  v8 = [(MBManifestDB *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, flags) VALUES (%@, %lu)", v7, a4];

  return v8;
}

- (id)removeFileWithID:(id)a3
{
  v4 = [a3 string];
  v5 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE fileID = %@", v4];

  return v5;
}

- (id)setFlags:(unint64_t)a3 mask:(unint64_t)a4 forFileID:(id)a5
{
  v8 = a5;
  v9 = [v8 string];
  v10 = [(MBManifestDB *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, flags) VALUES (%@, %lu)", v9, a3];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [v8 string];
    v11 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = ((flags & %lu) | %lu) WHERE fileID = %@", a4, a3, v12];
  }

  return v11;
}

- (id)setFlags:(unint64_t)a3 forFileID:(id)a4
{
  v6 = a4;
  v7 = [v6 string];
  v8 = [(MBManifestDB *)self _executeSQL:@"INSERT OR IGNORE INTO Files (fileID, flags) VALUES (%@, %lu)", v7, a3];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v6 string];
    v9 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags | %lu) WHERE fileID = %@", a3, v10];
  }

  return v9;
}

- (unint64_t)flagsForFileID:(id)a3 error:(id *)a4
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1002307A4;
  v16[4] = sub_1002307B4;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002337BC;
  v7[3] = &unk_1003C2298;
  v8 = self;
  v4 = a3;
  v9 = v4;
  v10 = &v12;
  v11 = v16;
  [(MBManifestDB *)v8 _performOnDBQueue:v7];
  v5 = v13[3];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  return v5;
}

- (BOOL)containsFileID:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1002307A4;
  v21 = sub_1002307B4;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100233A2C;
  v8[3] = &unk_1003C2298;
  v9 = self;
  v5 = a3;
  v10 = v5;
  v11 = &v13;
  v12 = &v17;
  [(MBManifestDB *)v9 _performOnDBQueue:v8];
  if (a4)
  {
    *a4 = v18[5];
  }

  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (BOOL)containsPlaceholderForFileID:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1002307A4;
  v21 = sub_1002307B4;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100233CA0;
  v8[3] = &unk_1003C2298;
  v9 = self;
  v5 = a3;
  v10 = v5;
  v11 = &v13;
  v12 = &v17;
  [(MBManifestDB *)v9 _performOnDBQueue:v8];
  if (a4)
  {
    *a4 = v18[5];
  }

  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (BOOL)containsRegularFileForFileID:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1002307A4;
  v21 = sub_1002307B4;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100233F14;
  v8[3] = &unk_1003C2298;
  v9 = self;
  v5 = a3;
  v10 = v5;
  v11 = &v13;
  v12 = &v17;
  [(MBManifestDB *)v9 _performOnDBQueue:v8];
  if (a4)
  {
    *a4 = v18[5];
  }

  v6 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)fetchFileWithID:(id)a3 error:(id *)a4
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1002307A4;
  v18[4] = sub_1002307B4;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1002307A4;
  v16 = sub_1002307B4;
  v17 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002341A8;
  v7[3] = &unk_1003C2298;
  v8 = self;
  v4 = a3;
  v9 = v4;
  v10 = v18;
  v11 = &v12;
  [(MBManifestDB *)v8 _performOnDBQueue:v7];
  v5 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);

  return v5;
}

- (BOOL)hasUnverifiedFilesWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1002307A4;
  v17 = sub_1002307B4;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002346E8;
  v8[3] = &unk_1003BCFA0;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v13;
  [(MBManifestDB *)self _performOnDBQueue:v8];
  if (*(v10 + 24) == 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002347EC;
    v7[3] = &unk_1003BC0B0;
    v7[4] = self;
    [(MBManifestDB *)self _performOnDBQueue:v7];
  }

  if (a3)
  {
    *a3 = v14[5];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5;
}

- (id)unsetVerifiedFlags
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unsetting all verified file flags", buf, 2u);
    _MBLog();
  }

  v4 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags & ~%lu) WHERE flags & %lu != 0", 32, 32];;

  return v4;
}

- (id)removeFilesNotAlreadyUploaded
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing files not already uploaded from manifest", buf, 2u);
    _MBLog();
  }

  v4 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE (flags & %lu) = 0 AND (flags & %lu) = 0", 8, 128];
  if (!v4)
  {
    v4 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE (flags & %lu) = %lu", 16, 16];
    if (!v4)
    {
      v4 = [(MBManifestDB *)self _executeSQL:@"DELETE FROM Files WHERE file IS NULL"];
    }
  }

  v5 = v4;

  return v5;
}

- (id)unsetAlreadyUploadedFlags
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unsetting all already uploaded file flags", buf, 2u);
    _MBLog();
  }

  v4 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags & ~%lu) WHERE flags & %lu != 0", 8, 8];;
  if (!v4)
  {
    v4 = [(MBManifestDB *)self _executeSQL:@"UPDATE Files SET flags = (flags & ~%lu) WHERE flags & %lu != 0", 128, 128];;
  }

  return v4;
}

- (id)enumerateFiles:(id)a3 includeUninstalled:(BOOL)a4
{
  v5 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1002307A4;
  v29 = sub_1002307B4;
  v30 = 0;
  [(MBManifestDB *)self flush];
  v6 = [[NSString alloc] initWithFormat:@"ManifestDB-%lu-enumerator", -[MBManifestDB hash](self, "hash")];
  v7 = [(MBManifestDB *)self _newConnection:v6];
  v8 = [NSURL fileURLWithPath:self->_path];
  v9 = (v26 + 5);
  obj = v26[5];
  v10 = [v7 openAtURL:v8 withFlags:1 error:&obj];
  objc_storeStrong(v9, obj);

  if (v10)
  {
    [v7 useSerialQueue];
    v11 = [v7 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100234F48;
    block[3] = &unk_1003C22C0;
    v12 = v7;
    v20 = v12;
    v21 = self;
    v23 = &v25;
    v22 = v5;
    dispatch_sync(v11, block);

    v13 = [v12 serialQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002354B4;
    v16[3] = &unk_1003BC088;
    v17 = v12;
    v18 = &v25;
    dispatch_sync(v13, v16);

    v14 = v26[5];
  }

  else
  {
    v14 = v26[5];
  }

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (id)fetchPropertyWithName:(id)a3 class:(Class)a4 error:(id *)a5
{
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1002307A4;
  v30 = sub_1002307B4;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1002307A4;
  v24 = sub_1002307B4;
  v25 = 0;
  v9 = [(MBManifestDB *)self pql_database];
  v10 = [v9 serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002357D0;
  block[3] = &unk_1003C22E8;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = &v20;
  v18 = &v26;
  v19 = a4;
  dispatch_sync(v10, block);

  v12 = v21[5];
  if (a5 && !v12)
  {
    *a5 = v27[5];
    v12 = v21[5];
  }

  v13 = v12;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

@end