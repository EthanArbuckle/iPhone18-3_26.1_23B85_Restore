@interface ML3DatabaseRecoveryOperation
- (ML3DatabaseRecoveryOperation)initWithDatabaseFilePath:(id)a3;
- (id)_createSQLiteErrorWithCode:(int)a3 description:(id)a4;
- (id)_lastCorruptionRestoreAttemptDate;
- (void)_recreateDatabaseWithCompletion:(id)a3;
- (void)_updateLastCorruptionRestoreAttemptDate;
- (void)main;
@end

@implementation ML3DatabaseRecoveryOperation

- (void)_recreateDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Asking service to recreate database...", buf, 2u);
  }

  v6 = +[MLMediaLibraryService sharedMediaLibraryService];
  path = self->_path;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__ML3DatabaseRecoveryOperation__recreateDatabaseWithCompletion___block_invoke;
  v9[3] = &unk_278764F50;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 recreateDatabaseAtPath:path withCompletionHandler:v9];
}

void __64__ML3DatabaseRecoveryOperation__recreateDatabaseWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(*(a1 + 32) + 248);
      v10 = 138543362;
      v11 = v8;
      v9 = "[ML3DatabaseRecoveryOperation] Successfully recreated database at path %{public}@";
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, v9, &v10, 0xCu);
    }
  }

  else if (v7)
  {
    v10 = 138543362;
    v11 = v5;
    v9 = "[ML3DatabaseRecoveryOperation] Failed to recreate database. %{public}@";
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

- (void)_updateLastCorruptionRestoreAttemptDate
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v3 setObject:v2 forKey:@"LastCorruptionRestoreAttempt"];
}

- (id)_lastCorruptionRestoreAttemptDate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"LastCorruptionRestoreAttempt"];

  return v3;
}

- (id)_createSQLiteErrorWithCode:(int)a3 description:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v4 errorWithDomain:@"NSSQLiteErrorDomain" code:v5 userInfo:v8];

  return v9;
}

- (void)main
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "[ML3DatabaseRecoveryOperation] Starting recovery operation...", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:self->_path] && MSVDeviceOSIsInternalInstall())
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3DatabaseRecoveryOperation] Internal device. Backing up database file for analysis...", buf, 2u);
    }

    v6 = [(NSString *)self->_path stringByAppendingPathExtension:@"bak"];
    path = self->_path;
    v14 = 0;
    ML3CopyDatabase(path, v6, &v14);
    v8 = v14;
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138543362;
        v16 = v8;
        v11 = "[ML3DatabaseRecoveryOperation] Error backing up database file: %{public}@";
LABEL_12:
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else if (v10)
    {
      *buf = 138543362;
      v16 = v6;
      v11 = "[ML3DatabaseRecoveryOperation] Successfully backed up database file to %{public}@";
      goto LABEL_12;
    }
  }

  [(ML3DatabaseRecoveryOperation *)self _recreateDatabaseWithCompletion:&__block_literal_global_21863];

  v12 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = 0;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "[ML3DatabaseRecoveryOperation] Recovery operation complete. err=%{public}@", buf, 0xCu);
  }

  error = self->_error;
  self->_error = 0;
}

- (ML3DatabaseRecoveryOperation)initWithDatabaseFilePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3DatabaseRecoveryOperation;
  v5 = [(ML3DatabaseRecoveryOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

@end