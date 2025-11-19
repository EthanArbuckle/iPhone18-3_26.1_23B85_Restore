@interface ML3DatabaseValidation
- (BOOL)_internalUserAgreesToRebuildUnmigratableDatabase;
- (BOOL)_performDatabasePreprocessingWithLibrary:(id)a3 error:(id *)a4;
- (BOOL)_performSchemaUpgradeWithLibrary:(id)a3 error:(id *)a4;
- (BOOL)_truncateDatabaseFileForLibrary:(id)a3 withError:(id *)a4;
- (BOOL)_validateLibraryDatabaseIfNecessary:(id)a3 withError:(id *)a4;
- (ML3DatabaseValidation)initWithLibrary:(id)a3 delegate:(id)a4 completion:(id)a5;
- (ML3DatabaseValidationDelegate)delegate;
- (void)_logDatabasePathDirectoryAttributes;
- (void)runValidation;
@end

@implementation ML3DatabaseValidation

- (ML3DatabaseValidationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_logDatabasePathDirectoryAttributes
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(ML3DatabaseValidation *)self library];
  v3 = [v2 databasePath];

  v4 = MLMobileUserHomeDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Media"];

  v6 = [v3 stringByDeletingLastPathComponent];

  if ([v6 hasPrefix:v5])
  {
    *&v7 = 138543362;
    v17 = v7;
    v8 = v6;
    do
    {
      v9 = [v8 isEqualToString:{v5, v17}];
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v10 fileExistsAtPath:v8];

      if (v11)
      {
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = 0;
        v13 = [v12 attributesOfItemAtPath:v8 error:&v18];
        v14 = v18;

        v15 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v20 = v13;
          v21 = 2114;
          v22 = v14;
          v23 = 2114;
          v24 = v8;
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "finished loading fileSystemAttributes=%{public}@ with error=%{public}@ for path=%{public}@", buf, 0x20u);
        }
      }

      else
      {
        v14 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          v20 = v8;
          _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Directory does not exist at path %{public}@", buf, 0xCu);
        }
      }

      v6 = [v8 stringByDeletingLastPathComponent];

      v8 = v6;
    }

    while ((v9 & 1) == 0);
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "database at %{public}@ is not a subdirectory of %{public}@", buf, 0x16u);
    }
  }
}

- (BOOL)_internalUserAgreesToRebuildUnmigratableDatabase
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (ML3IsProcessRunning(@"com.apple.SpringBoard") && !ML3IsProcessRunning(@"com.apple.datamigrator"))
  {
    v2 = objc_alloc_init(MEMORY[0x277D27F38]);
    [v2 setAlertHeader:@"Unmigratable Media Library"];
    [v2 setAlertMessage:{@"The media library service has detected that this device has been downgraded from a newer operating system version. The service does not support migration back to previous versions.\n\nPlease either erase-install the desired version of the operating system, or select the option to let the service rebuild your media library database. This WILL erase your media library on this device.\n\n[This dialog is shown for internal users only.]"}];
    [v2 setDefaultButtonTitle:@"Rebuild Library"];
    [v2 setAlternateButtonTitle:@"Ignore"];
    v3 = [objc_alloc(MEMORY[0x277D27F30]) initWithOptions:v2];
    v4 = dispatch_semaphore_create(0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__ML3DatabaseValidation__internalUserAgreesToRebuildUnmigratableDatabase__block_invoke;
    v8[3] = &unk_278762AC0;
    v10 = &v11;
    v5 = v4;
    v9 = v5;
    [v3 presentWithCompletion:v8];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

intptr_t __73__ML3DatabaseValidation__internalUserAgreesToRebuildUnmigratableDatabase__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 buttonIdentifier] == 1;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (BOOL)_performDatabasePreprocessingWithLibrary:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 databasePath];
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Preprocessing database for library at path %{public}@", buf, 0xCu);
  }

  v8 = [v5 coerceValidDatabaseWithError:a4];
  *(v15 + 24) = v8;
  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__ML3DatabaseValidation__performDatabasePreprocessingWithLibrary_error___block_invoke;
    v11[3] = &unk_278762A98;
    v13 = &v14;
    v12 = v5;
    [v12 performDatabaseTransactionWithBlock:v11];

    v9 = *(v15 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v9 & 1;
}

uint64_t __72__ML3DatabaseValidation__performDatabasePreprocessingWithLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) updateSortMap];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v6 = "[Preprocessing] Failed to update sort map.";
    v7 = &v11;
LABEL_11:
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    goto LABEL_12;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) createIndexes];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = 0;
    v6 = "[Preprocessing] Failed to create indexes.";
    v7 = &v10;
    goto LABEL_11;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) updateSystemPlaylistNamesForCurrentLanguageUsingConnection:v3];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v6 = "[Preprocessing] Failed to update system playlist names for current language.";
      v7 = &v9;
      goto LABEL_11;
    }

LABEL_12:

    v4 = 0;
    goto LABEL_13;
  }

  v4 = 1;
LABEL_13:

  return v4;
}

- (BOOL)_performSchemaUpgradeWithLibrary:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 databasePath];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Upgrading schema for library at path %{public}@", &v10, 0xCu);
  }

  v8 = [v5 coerceValidDatabaseWithError:a4];
  return v8;
}

- (BOOL)_validateLibraryDatabaseIfNecessary:(id)a3 withError:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__ML3DatabaseValidation__validateLibraryDatabaseIfNecessary_withError___block_invoke;
  v20[3] = &unk_278762A70;
  v22 = &v28;
  v7 = v6;
  v21 = v7;
  v23 = &v24;
  [v7 databaseConnectionAllowingWrites:0 withBlock:v20];
  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v29 + 24);
    v10 = *(v25 + 24);
    *buf = 67109376;
    *v33 = v9;
    *&v33[4] = 1024;
    *&v33[6] = v10;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "validateLibraryDatabaseIfNecessary requiresNonSchemaUpdates=%{BOOL}u, requiresSchemaOnlyUpdates=%{BOOL}u", buf, 0xEu);
  }

  if (*(v29 + 24) == 1)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 databasePath];
      *buf = 138543362;
      *v33 = v12;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Database requires preprocessing before schema updates for library at path %{public}@", buf, 0xCu);
    }

    v13 = [(ML3DatabaseValidation *)self _performDatabasePreprocessingWithLibrary:v7 error:a4];
  }

  else
  {
    if (*(v25 + 24) != 1)
    {
      goto LABEL_12;
    }

    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 databasePath];
      *buf = 138543362;
      *v33 = v15;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Database requires schema upgrades for library at path %{public}@", buf, 0xCu);
    }

    v13 = [(ML3DatabaseValidation *)self _performSchemaUpgradeWithLibrary:v7 error:a4];
  }

  if (!v13)
  {
    v16 = 0;
    goto LABEL_16;
  }

LABEL_12:
  if (([v7 isHomeSharingLibrary] & 1) == 0)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__ML3DatabaseValidation__validateLibraryDatabaseIfNecessary_withError___block_invoke_19;
    v18[3] = &unk_278766140;
    v19 = v7;
    [v19 databaseConnectionAllowingWrites:1 withBlock:v18];
  }

  v16 = 1;
LABEL_16:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

void __71__ML3DatabaseValidation__validateLibraryDatabaseIfNecessary_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 requiresNonSchemaUpdatesOnConnection:v4];
  LOBYTE(v3) = [*(a1 + 32) requiresSchemaOnlyUpdatesOnConnection:v4];

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void __71__ML3DatabaseValidation__validateLibraryDatabaseIfNecessary_withError___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 validateSortMapUnicodeVersionOnConnection:v3];
  [v3 executeUpdate:@"DELETE FROM entity_revision WHERE entity_pid=0"];
}

- (BOOL)_truncateDatabaseFileForLibrary:(id)a3 withError:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 databasePath];
    v19 = 138543362;
    v20 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "*** Truncating database files at path: %{public}@ ***", &v19, 0xCu);
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Closing all local database connections...", &v19, 2u);
  }

  v9 = [v5 connectionPool];
  [v9 closeAllConnections];
  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Notifying other clients about database deletion...", &v19, 2u);
  }

  notify_post([@"MLMediaLibraryWillDeleteDatabaseNotification" UTF8String]);
  sleep(2u);
  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Performing truncation...", &v19, 2u);
  }

  v12 = [v5 databasePath];
  v13 = ML3TruncateDatabase(v12, 1);

  v14 = os_log_create("com.apple.amp.medialibrary", "Default");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Truncation successful", &v19, 2u);
    }

    v16 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = v16;
    *a4 = v16;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Failed to truncate database files.", &v19, 2u);
  }

  v16 = [ML3MediaLibraryWriter writerErrorWithCode:301 description:@"failed to truncate database files"];
  if (a4)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v13;
}

- (void)runValidation
{
  v49 = *MEMORY[0x277D85DE8];
  v34 = [(ML3DatabaseValidation *)self library];
  v2 = [(ML3DatabaseValidation *)self delegate];
  v32 = v2;
  if (v2)
  {
    v3 = [v2 shouldValidateDatabaseForLibrary:v34];
    v4 = self;
    if (![(ML3DatabaseValidation *)self truncateBeforeValidating]&& (v3 & 1) == 0)
    {
      v5 = os_log_create("com.apple.amp.medialibrary", "Service");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Database already validated. Returning immediately.", buf, 2u);
      }

      v33 = [(ML3DatabaseValidation *)self completionHandler];
      v33[2](v33, 1, 0);
      goto LABEL_45;
    }
  }

  else
  {
    v4 = self;
    [(ML3DatabaseValidation *)self truncateBeforeValidating];
  }

  if ([(ML3DatabaseValidation *)v4 truncateBeforeValidating])
  {
    v43 = 0;
    v31 = [(ML3DatabaseValidation *)v4 _truncateDatabaseFileForLibrary:v34 withError:&v43];
    v6 = v43;
    v7 = v31;
    if (v6)
    {
      v7 = 0;
    }

    if (!v7)
    {
      v12 = v6;
      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v46 = v12;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Truncation failed with error=%{public}@", buf, 0xCu);
      }

      v11 = v12;
      if (v12)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v34 databasePath];
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Starting validation at path=%{public}@", buf, 0xCu);
  }

  v42 = 0;
  v10 = [(ML3DatabaseValidation *)self _validateLibraryDatabaseIfNecessary:v34 withError:&v42];
  v11 = v42;
  v31 = v10;
  if (v11)
  {
LABEL_19:
    v33 = v11;
    if ([v11 code] == 3 && MSVDeviceOSIsInternalInstall())
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Device is running an internal install. Asking user for permission to rebuild.", buf, 2u);
      }

      v15 = [(ML3DatabaseValidation *)self _internalUserAgreesToRebuildUnmigratableDatabase];
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "User agrees to rebuild. Deleting database and re-attempting validation.", buf, 2u);
        }

        [v34 databaseConnectionAllowingWrites:1 withBlock:&__block_literal_global_9266];
        v41 = 0;
        v31 = [(ML3DatabaseValidation *)self _validateLibraryDatabaseIfNecessary:v34 withError:&v41];
        v33 = v41;
      }

      else
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "User did not want to rebuild database. Preparing for nuclear meltdown.", buf, 2u);
        }
      }
    }

    else
    {
      v18 = [v33 domain];
      if ([v18 isEqualToString:*MEMORY[0x277CCA050]] && objc_msgSend(v33, "code") == 513)
      {
        [(ML3DatabaseValidation *)self _logDatabasePathDirectoryAttributes];
      }
    }
  }

  else
  {
    v33 = 0;
  }

  v19 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [ML3MusicLibrary pathForBaseLocationPath:250];
  [v20 addObject:v21];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v23)
  {
    v24 = *v38;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v37 + 1) + 8 * i);
        if (([v19 fileExistsAtPath:v26] & 1) == 0)
        {
          v36 = 0;
          v27 = [v19 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:&v36];
          v28 = v36;
          if ((v27 & 1) == 0)
          {
            v29 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v46 = v26;
              v47 = 2114;
              v48 = v28;
              _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, "[Validation] Failed to create directory '%{public}@'. err=%{public}@", buf, 0x16u);
            }
          }
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v23);
  }

  v30 = [(ML3DatabaseValidation *)self completionHandler];
  (v30)[2](v30, v31, v33);

LABEL_45:
}

- (ML3DatabaseValidation)initWithLibrary:(id)a3 delegate:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ML3DatabaseValidation;
  v12 = [(ML3DatabaseValidation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, a3);
    objc_storeWeak(&v13->_delegate, v10);
    v13->_truncateBeforeValidating = 0;
    v14 = [v11 copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;
  }

  return v13;
}

@end