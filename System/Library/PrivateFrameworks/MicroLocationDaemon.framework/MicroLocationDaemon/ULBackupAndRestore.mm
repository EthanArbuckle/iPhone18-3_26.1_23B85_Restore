@interface ULBackupAndRestore
- (BOOL)_clearTempBackupDirectory:(id)a3;
- (BOOL)_createBackupDbPathWithAttributes:(id)a3;
- (BOOL)_createTempBackupDirectoryIfNotExists:(id)a3;
- (BOOL)_didReceiveCancel:(function<BOOL)(;
- (BOOL)_exportiCloudBackupTransactionWithCancelFunc:(function<BOOL)(;
- (BOOL)_importiCloudBackupTransaction;
- (BOOL)_setClassBAttributeToFile:(id)a3;
- (BOOL)exportiCloudBackupWithCancelFunc:(function<BOOL)(;
- (BOOL)importiCloudBackup;
- (ULBackupAndRestore)initWithDbStore:(ULDatabaseStoreInterface *)a3 andDbManagement:(ULDatabaseManagementInterface *)a4;
- (id)_getTempBackupDatabaseDirectoryClearCurrent:(BOOL)a3 createNew:(BOOL)a4;
- (id)getBackupDatabasePath;
- (uint64_t)_importiCloudBackupTransaction;
- (unint64_t)_getFileSize:(id)a3;
- (void)_deleteTempDb:(id)a3;
- (void)deleteBackupFiles;
@end

@implementation ULBackupAndRestore

- (ULBackupAndRestore)initWithDbStore:(ULDatabaseStoreInterface *)a3 andDbManagement:(ULDatabaseManagementInterface *)a4
{
  v9.receiver = self;
  v9.super_class = ULBackupAndRestore;
  v6 = [(ULBackupAndRestore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ULBackupAndRestore *)v6 setDbStore:a3];
    [(ULBackupAndRestore *)v7 setDbManagement:a4];
  }

  return v7;
}

- (BOOL)exportiCloudBackupWithCancelFunc:(function<BOOL)(
{
  v19[4] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D28868] isMac])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v5 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v14) = 0;
    v6 = "Export iCloud backup - activity disabled for macos";
LABEL_21:
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, v6, &v14, 2u);
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if ((ULSettings::get<ULSettings::EnableCloudBackup>() & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v5 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v14) = 0;
    v6 = "#Warning Tried to export db for iCloud backup, but iCloud backup feature is disabled";
    goto LABEL_21;
  }

  v7 = [(ULBackupAndRestore *)self dbManagement];
  if (((*(v7->var0 + 7))(v7) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v5 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    LOWORD(v14) = 0;
    v6 = "Export iCloud backup - aborted due to database not valid (possible migration pending)";
    goto LABEL_21;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Export iCloud backup", &v14, 2u);
  }

  v9 = +[ULEventLog shared];
  [v9 log:@"Cloud Backup Export Event"];

  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = +[ULTransactionManager shared];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = __55__ULBackupAndRestore_exportiCloudBackupWithCancelFunc___block_invoke;
  v18[3] = &unk_286A556C8;
  v18[4] = self;
  v18[5] = &v14;
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v19, a3);
  [v10 performUnderTransaction:@"com.apple.milod.exportiCloudBackup" block:v18];

  v11 = *(v15 + 24);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v19);
  _Block_object_dispose(&v14, 8);
LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t __55__ULBackupAndRestore_exportiCloudBackupWithCancelFunc___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = [v2 _exportiCloudBackupTransactionWithCancelFunc:v5];
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)importiCloudBackup
{
  if ([MEMORY[0x277D28868] isMac])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v3 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v4 = "Import iCloud backup - activity disabled for macos";
LABEL_16:
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
LABEL_17:
    v8 = 1;
    return v8 & 1;
  }

  if ((ULSettings::get<ULSettings::EnableCloudBackup>() & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v3 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v4 = "#Warning Tried to import db from iCloud restored backup, but iCloud backup feature is disabled";
    goto LABEL_16;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Import iCloud backup", buf, 2u);
  }

  v6 = +[ULEventLog shared];
  [v6 log:@"Cloud Backup Import Event"];

  *buf = 0;
  v12 = buf;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = +[ULTransactionManager shared];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ULBackupAndRestore_importiCloudBackup__block_invoke;
  v10[3] = &unk_2798D44D8;
  v10[4] = self;
  v10[5] = buf;
  [v7 performUnderTransaction:@"com.apple.milod.importiCloudBackup" block:v10];

  v8 = v12[24];
  _Block_object_dispose(buf, 8);
  return v8 & 1;
}

uint64_t __40__ULBackupAndRestore_importiCloudBackup__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _importiCloudBackupTransaction];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)deleteBackupFiles
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [(ULBackupAndRestore *)self getBackupDatabasePath];
  [v5 removeItemAtPath:v3 error:0];
  v4 = [(ULBackupAndRestore *)self _getTempBackupDatabaseDirectoryClearCurrent:1 createNew:0];
}

- (id)getBackupDatabasePath
{
  v2 = [(ULBackupAndRestore *)self dbStore];
  v3 = (*(v2->var0 + 2))(v2);
  v4 = [v3 storesDirectory];

  v5 = [v4 URLByAppendingPathComponent:@"miloBackup.db"];
  v6 = [v5 path];

  return v6;
}

- (BOOL)_exportiCloudBackupTransactionWithCancelFunc:(function<BOOL)(
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] date];
  [(ULBackupAndRestore *)self _getTempBackupDatabaseDirectoryClearCurrent:1 createNew:1];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)_importiCloudBackupTransaction
{
  v35[0] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(ULBackupAndRestore *)self getBackupDatabasePath];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [(ULBackupAndRestore *)self _getTempBackupDatabaseDirectoryClearCurrent:1 createNew:1];
    if (v7)
    {
      v8 = [_TtC19MicroLocationDaemon10ULKeychain retrieveSymmetricKey:@"com.apple.milod.security.database.backup"];
      if (v8)
      {
        v25 = [(ULBackupAndRestore *)self _getFileSize:v4];
        v9 = +[ULPersistenceManager defaultLocalStoreFilename];
        v26 = [v7 stringByAppendingPathComponent:v9];

        if ([_TtC19MicroLocationDaemon12ULEncryption decryptFile:v4 destinationPath:v26 keyLabel:@"com.apple.milod.security.database.backup" keychainClass:objc_opt_class()])
        {
          operator new();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "Failed to decrypt restored backup file", buf, 2u);
        }

        v18 = [(ULBackupAndRestore *)self dbStore];
        v19 = (*(v18->var0 + 15))(v18);
        v27 = cl::chrono::CFAbsoluteTimeClock::now();
        ULMigrationDO::ULMigrationDO(v34, 9, &v27);
        *buf = 0;
        *v29 = 0;
        *&v29[8] = 0;
        std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(buf, v34, v35, 1uLL);
        [v19 insertDataObjects:buf];
        if (*buf)
        {
          *v29 = *buf;
          operator delete(*buf);
        }

        v11 = 0;
        [(ULBackupAndRestore *)self _deleteTempDb:v26];
        [v3 timeIntervalSinceNow];
        v21 = v20;
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
        }

        v22 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290051;
          *v29 = 2082;
          *&v29[2] = "";
          *&v29[10] = 1025;
          *&v29[12] = 0;
          *&v29[16] = 2049;
          *&v29[18] = -v21;
          v30 = 2113;
          v31 = v4;
          v32 = 2049;
          v33 = v25;
          _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MiLo import from iCloud restored backup, result:%{private}hhd, duration [s]:%{private}f, file path:%{private, location:escape_only}@, file size [B]:%{private}llu}", buf, 0x36u);
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
        }

        v15 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "Failed to get key for backup decryption", buf, 2u);
        }

        v16 = [(ULBackupAndRestore *)self dbStore];
        v26 = (*(v16->var0 + 15))(v16);
        v27 = cl::chrono::CFAbsoluteTimeClock::now();
        ULMigrationDO::ULMigrationDO(v34, 8, &v27);
        *buf = 0;
        *v29 = 0;
        *&v29[8] = 0;
        std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(buf, v34, v35, 1uLL);
        [v26 insertDataObjects:buf];
        if (*buf)
        {
          *v29 = *buf;
          operator delete(*buf);
        }

        v11 = 0;
      }
    }

    else
    {
      v12 = [(ULBackupAndRestore *)self dbStore];
      v13 = (*(v12->var0 + 15))(v12);
      v27 = cl::chrono::CFAbsoluteTimeClock::now();
      ULMigrationDO::ULMigrationDO(v34, 10, &v27);
      *buf = 0;
      *v29 = 0;
      *&v29[8] = 0;
      std::vector<ULMigrationDO>::__init_with_size[abi:ne200100]<ULMigrationDO const*,ULMigrationDO const*>(buf, v34, v35, 1uLL);
      [v13 insertDataObjects:buf];
      if (*buf)
      {
        *v29 = *buf;
        operator delete(*buf);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "Failed to get temp backup directory", buf, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v29 = 2082;
      *&v29[2] = "";
      *&v29[10] = 2113;
      *&v29[12] = v4;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Skipping Microlocation iCloud restore. Restored backup file does not exist, filePath:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v11 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_deleteTempDb:(id)a3
{
  v4 = a3;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 removeItemAtPath:v4 error:0];
}

- (unint64_t)_getFileSize:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v11];
  v6 = v11;
  v7 = [v5 fileSize];

  if (v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2113;
      v17 = v3;
      v18 = 2113;
      v19 = v6;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Failed to get file size, filePath:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_clearTempBackupDirectory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = +[ULPersistenceManager defaultLocalStoreFilename];
  v6 = [v3 stringByAppendingPathComponent:v5];

  if (![v4 fileExistsAtPath:v6])
  {
    v8 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  v7 = [v4 removeItemAtPath:v6 error:&v14];
  v8 = v14;
  if (v7)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289539;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = v6;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to remove existing temp database, filePath:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
  }

  v10 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289539;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = v6;
    v21 = 2114;
    v22 = v8;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to remove existing temp database", "{msg%{public}.0s:Failed to remove existing temp database, filePath:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v11 = 0;
LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_createTempBackupDirectoryIfNotExists:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:511];
    v22 = *MEMORY[0x277CCA180];
    v23[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = 0;
    v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v7 error:&v13];
    v8 = v13;

    if ((v5 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289539;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2113;
        v19 = v3;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create temp backup directory, directory:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
      }

      v10 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289539;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2113;
        v19 = v3;
        v20 = 2114;
        v21 = v8;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create temp backup directory", "{msg%{public}.0s:Failed to create temp backup directory, directory:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_getTempBackupDatabaseDirectoryClearCurrent:(BOOL)a3 createNew:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = NSTemporaryDirectory();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:493];
  v32 = *MEMORY[0x277CCA180];
  v33[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v23 = 0;
  v11 = [v7 setAttributes:v10 ofItemAtPath:v8 error:&v23];
  v12 = v23;

  if (v11)
  {
    v13 = [v8 stringByAppendingPathComponent:@"com.apple.milod"];
    v14 = [v13 stringByAppendingPathComponent:@"miloTempBackup"];

    if ((!v5 || [(ULBackupAndRestore *)self _clearTempBackupDirectory:v14]) && (!v4 || [(ULBackupAndRestore *)self _createTempBackupDirectoryIfNotExists:v14]))
    {
      v14 = v14;
      v15 = v14;
      goto LABEL_16;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v8;
      v18 = [v8 UTF8String];
      *buf = 68289539;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2081;
      v29 = v18;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to set attributes for directory, directory:%{private, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v19 = v8;
      v20 = [v8 UTF8String];
      *buf = 68289539;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2081;
      v29 = v20;
      v30 = 2114;
      v31 = v12;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to set attributes for directory", "{msg%{public}.0s:Failed to set attributes for directory, directory:%{private, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
    }
  }

  v15 = 0;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_createBackupDbPathWithAttributes:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = *MEMORY[0x277CCA1B0];
  v18[0] = *MEMORY[0x277CCA198];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v7 = [v5 createFileAtPath:v4 contents:0 attributes:v6];

  if (v7)
  {
    v8 = [(ULBackupAndRestore *)self _setExcludeFromBackupAttribute:v4 withValue:1];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v12[0] = 68289283;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2113;
      v16 = v4;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to create file at path, filename:%{private, location:escape_only}@}", v12, 0x1Cu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_setClassBAttributeToFile:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = *MEMORY[0x277CCA1B0];
  v22[0] = *MEMORY[0x277CCA198];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v12 = 0;
  v6 = [v4 setAttributes:v5 ofItemAtPath:v3 error:&v12];
  v7 = v12;

  if ((v6 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = v3;
      v19 = 2113;
      v20 = v7;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to set attribute for path, path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore _exportiCloudBackupTransactionWithCancelFunc:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = v3;
      v19 = 2113;
      v20 = v7;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to set attribute for path", "{msg%{public}.0s:Failed to set attribute for path, path:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_didReceiveCancel:(function<BOOL)(
{
  v11 = *MEMORY[0x277D85DE8];
  f = a3->__f_.__f_;
  if (!f)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = (*(*f + 48))(f, a2);
  if (v4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupAndRestore exportiCloudBackupWithCancelFunc:];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 68289026;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Export backup - activity cancelled}", v8, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)_importiCloudBackupTransaction
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end