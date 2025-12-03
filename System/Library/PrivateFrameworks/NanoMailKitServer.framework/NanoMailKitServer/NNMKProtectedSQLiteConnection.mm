@interface NNMKProtectedSQLiteConnection
- (NNMKProtectedSQLiteConnection)initWithUnprotectedDatabaseFileName:(id)name protectedDatabaseFileName:(id)fileName inDirectory:(id)directory protectedDatabaseName:(id)databaseName errorCode:(int *)code;
- (id)_vfsModuleName;
- (int)attachProtectedDatabase;
- (void)detachProtectedDatabase;
@end

@implementation NNMKProtectedSQLiteConnection

- (NNMKProtectedSQLiteConnection)initWithUnprotectedDatabaseFileName:(id)name protectedDatabaseFileName:(id)fileName inDirectory:(id)directory protectedDatabaseName:(id)databaseName errorCode:(int *)code
{
  fileNameCopy = fileName;
  directoryCopy = directory;
  databaseNameCopy = databaseName;
  v15 = [directoryCopy stringByAppendingPathComponent:name];
  v20.receiver = self;
  v20.super_class = NNMKProtectedSQLiteConnection;
  v16 = [(NNMKSQLiteConnection *)&v20 initWithPath:v15 errorCode:code];
  if (v16)
  {
    v17 = [directoryCopy stringByAppendingPathComponent:fileNameCopy];
    protectedDatabasePath = v16->_protectedDatabasePath;
    v16->_protectedDatabasePath = v17;

    objc_storeStrong(&v16->_protectedDatabaseName, databaseName);
    v16->_protectedDatabaseAttached = 0;
  }

  return v16;
}

- (int)attachProtectedDatabase
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self->_protectedDatabaseAttached)
  {
    v4 = MEMORY[0x277CCACA8];
    protectedDatabasePath = self->_protectedDatabasePath;
    _vfsModuleName = [(NNMKProtectedSQLiteConnection *)self _vfsModuleName];
    v7 = [v4 stringWithFormat:@"ATTACH DATABASE file:%@?vfs=%@ AS %@", protectedDatabasePath, _vfsModuleName, self->_protectedDatabaseName];

    v8 = [(NNMKSQLiteConnection *)self executeSQL:v7];
    if (v8)
    {
      v2 = v8;
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA %@.journal_mode = WAL", self->_protectedDatabaseName];;
      v2 = [(NNMKSQLiteConnection *)self executeSQL:v9];

      if (!v2)
      {
        self->_protectedDatabaseAttached = 1;
        v13 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Protected database attached.", buf, 2u);
          v2 = 0;
        }

        goto LABEL_8;
      }
    }

    v10 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_protectedDatabasePath;
      v15 = v10;
      lastErrorMessage = [(NNMKSQLiteConnection *)self lastErrorMessage];
      *buf = 138543874;
      v18 = v14;
      v19 = 1024;
      v20 = v2;
      v21 = 2114;
      v22 = lastErrorMessage;
      _os_log_error_impl(&dword_25B19F000, v15, OS_LOG_TYPE_ERROR, "Error attaching protected database. Path: %{public}@, Error Code: %d, Error Message: %{public}@", buf, 0x1Cu);
    }

LABEL_8:

    goto LABEL_9;
  }

  v2 = 0;
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)detachProtectedDatabase
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  lastErrorMessage = [a2 lastErrorMessage];
  v8[0] = 67109378;
  v8[1] = a3;
  v9 = 2114;
  v10 = lastErrorMessage;
  _os_log_error_impl(&dword_25B19F000, selfCopy, OS_LOG_TYPE_ERROR, "Error detaching protected database (Error Code: %d, Error Message: %{public}@).", v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_vfsModuleName
{
  uTF8String = [@"VFS-nanomaild-Protected" UTF8String];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__NNMKProtectedSQLiteConnection__vfsModuleName__block_invoke;
  v5[3] = &unk_279935D28;
  v5[4] = self;
  v5[5] = uTF8String;
  if (_vfsModuleName_vfsCreationOnceToken != -1)
  {
    dispatch_once(&_vfsModuleName_vfsCreationOnceToken, v5);
  }

  return @"VFS-nanomaild-Protected";
}

uint64_t __47__NNMKProtectedSQLiteConnection__vfsModuleName__block_invoke(uint64_t a1)
{
  __defaultVFS = sqlite3_vfs_find(0);
  v2 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F0040C767261AuLL);
  __protectionVFS = v2;
  v3 = __defaultVFS;
  v5 = *(__defaultVFS + 16);
  v4 = *(__defaultVFS + 32);
  *v2 = *__defaultVFS;
  v2[1] = v5;
  v2[2] = v4;
  v6 = *(v3 + 96);
  v8 = *(v3 + 48);
  v7 = *(v3 + 64);
  v2[5] = *(v3 + 80);
  v2[6] = v6;
  v2[3] = v8;
  v2[4] = v7;
  v10 = *(v3 + 128);
  v9 = *(v3 + 144);
  v11 = *(v3 + 112);
  *(v2 + 20) = *(v3 + 160);
  v2[8] = v10;
  v2[9] = v9;
  v2[7] = v11;
  *(v2 + 1) = *(v3 + 4);
  *(v2 + 3) = strdup(*(a1 + 40));
  *v2 = 1;
  *(v2 + 5) = __protectedVFSxOpen;
  *(v2 + 4) = *(a1 + 32);

  return sqlite3_vfs_register(v2, 0);
}

@end