@interface MFMailMessageLibraryMailboxURLMigrationStep
- (BOOL)_renameMailboxDataFolders:(sqlite3 *)folders;
- (BOOL)_renameMailboxURLsForMailAccount:(id)account inSQLiteDB:(sqlite3 *)b;
- (BOOL)_updateMailboxURLsInSQLitedb:(sqlite3 *)litedb withOldURLToNewURLMap:(id)map;
- (BOOL)performMigrationStep;
- (MFMailMessageLibraryMailboxURLMigrationStep)initWithSQLiteConnection:(id)connection;
- (void)_purgeFoldersMatchingPatterns:(id)patterns;
@end

@implementation MFMailMessageLibraryMailboxURLMigrationStep

- (MFMailMessageLibraryMailboxURLMigrationStep)initWithSQLiteConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFMailMessageLibraryMailboxURLMigrationStep;
  v6 = [(MFMailMessageLibraryMailboxURLMigrationStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sqliteConnection, connection);
  }

  return v7;
}

- (BOOL)performMigrationStep
{
  sqlDB = [(EDPersistenceDatabaseConnection *)self->_sqliteConnection sqlDB];

  return [(MFMailMessageLibraryMailboxURLMigrationStep *)self _renameMailboxDataFolders:sqlDB];
}

- (BOOL)_renameMailboxDataFolders:(sqlite3 *)folders
{
  v51 = *MEMORY[0x1E69E9840];
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = +[MailAccount mailAccounts];
  v3 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v3)
  {
    v4 = *v41;
    LOBYTE(v5) = 1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v41 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = objc_opt_class();
        uniqueID = [v7 uniqueID];
        hostname = [v7 hostname];
        username = [v7 username];
        v12 = [v8 legacyPathForAccountIdentifier:uniqueID withHostname:hostname username:username];

        if (v12)
        {
          defaultPath = [v7 defaultPath];
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription = [v7 ef_publicDescription];
            *buf = 138543874;
            v45 = ef_publicDescription;
            v46 = 2112;
            v47 = v12;
            v48 = 2112;
            v49 = defaultPath;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Start Migrating Mailbox FilePath for Account %{public}@ from %@ to %@...", buf, 0x20u);
          }

          v39 = 1;
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          if ([defaultManager fileExistsAtPath:v12 isDirectory:&v39])
          {
            v38 = 0;
            v17 = [defaultManager moveItemAtPath:v12 toPath:defaultPath error:&v38];
            v18 = v38;
            if ((v17 & 1) == 0)
            {
              v19 = MFLogGeneral();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                ef_publicDescription2 = [v18 ef_publicDescription];
                *buf = 138412802;
                v45 = v12;
                v46 = 2112;
                v47 = defaultPath;
                v48 = 2114;
                v49 = ef_publicDescription2;
                _os_log_error_impl(&dword_1B0389000, v19, OS_LOG_TYPE_ERROR, "#MobileMailMigrator Failed to Rename Path from %@ to %@ Due to Error %{public}@. Deleting the legacyMailboxPath.", buf, 0x20u);
              }

              [defaultManager removeItemAtPath:v12 error:0];
            }
          }

          v20 = MFLogGeneral();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription3 = [v7 ef_publicDescription];
            *buf = 138543362;
            v45 = ef_publicDescription3;
            _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Finished Migrating Mailbox FilePath for Account: %{public}@", buf, 0xCu);
          }

          v22 = MFLogGeneral();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription4 = [v7 ef_publicDescription];
            *buf = 138543362;
            v45 = ef_publicDescription4;
            _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Start Migrating Mailbox URLs for Account: %{public}@", buf, 0xCu);
          }

          v5 = [(MFMailMessageLibraryMailboxURLMigrationStep *)self _renameMailboxURLsForMailAccount:v7 inSQLiteDB:folders];
          v24 = MFLogGeneral();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription5 = [v7 ef_publicDescription];
            *buf = 138543618;
            v45 = ef_publicDescription5;
            v46 = 1024;
            LODWORD(v47) = v5;
            _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Finish Migrating Mailbox URLs for Account: %{public}@ with result %d", buf, 0x12u);
          }

          username2 = [v7 username];

          if (username2)
          {
            username3 = [v7 username];
            [v34 addObject:username3];
          }
        }

        else
        {
          defaultPath = MFLogGeneral();
          if (os_log_type_enabled(defaultPath, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription6 = [v7 ef_publicDescription];
            *buf = 138543362;
            v45 = ef_publicDescription6;
            _os_log_impl(&dword_1B0389000, defaultPath, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: No Legacy Path For Account %{public}@, skipping migration...", buf, 0xCu);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v3);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  v30 = MFLogGeneral();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Starting Purge of Orphaned Mailboxes...", buf, 2u);
  }

  if ([v34 count])
  {
    [(MFMailMessageLibraryMailboxURLMigrationStep *)self _purgeFoldersMatchingPatterns:v34];
  }

  v31 = MFLogGeneral();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Finished Purge of Orphaned Mailboxes...", buf, 2u);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_renameMailboxURLsForMailAccount:(id)account inSQLiteDB:(sqlite3 *)b
{
  v40 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  legacySQLExpressionToMatchAllMailboxes = [accountCopy legacySQLExpressionToMatchAllMailboxes];
  v8 = MEMORY[0x1E696AEC0];
  ef_SQLExpression = [legacySQLExpressionToMatchAllMailboxes ef_SQLExpression];
  v10 = [v8 stringWithFormat:@"SELECT url FROM mailboxes WHERE %@", ef_SQLExpression];
  uTF8String = [v10 UTF8String];

  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  v12 = sqlite3_prepare_v2(b, uTF8String, -1, &ppStmt, 0);
  v13 = v12;
  if (!ppStmt || v12)
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v35) = v13;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator Could not migrate Mailbox URLs due to sqlite error: (%d)", buf, 8u);
    }

    v22 = 0;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    while (1)
    {
      v15 = sqlite3_step(ppStmt);
      v16 = v15;
      if (v15 != 100)
      {
        break;
      }

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      v18 = [v17 initWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = [accountCopy URLStringFromLegacyURLString:v18];
      v21 = [v19 initWithString:v20];

      if ([v18 length])
      {
        if ([v21 length])
        {
          [v14 setObject:v21 forKey:v18];
        }
      }
    }

    v22 = v15 == 101;
    sqlite3_finalize(ppStmt);
    if (v16 != 101 || (-[NSObject allKeys](v14, "allKeys"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 count] == 0, v23, v24))
    {
      v29 = MFLogGeneral();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [accountCopy ef_publicDescription];
        *buf = 138543362;
        v35 = ef_publicDescription;
        _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator No Mailboxes found for account %{public}@ to migrate.", buf, 0xCu);
      }
    }

    else
    {
      v25 = MFLogGeneral();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [accountCopy ef_publicDescription];
        allKeys = [v14 allKeys];
        allValues = [v14 allValues];
        *buf = 138543874;
        v35 = ef_publicDescription2;
        v36 = 2112;
        v37 = allKeys;
        v38 = 2112;
        v39 = allValues;
        _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator For Account %{public}@ Renaming Mailboxes From URL %@ To %@", buf, 0x20u);
      }

      v22 = [(MFMailMessageLibraryMailboxURLMigrationStep *)self _updateMailboxURLsInSQLitedb:b withOldURLToNewURLMap:v14];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)_updateMailboxURLsInSQLitedb:(sqlite3 *)litedb withOldURLToNewURLMap:(id)map
{
  v31 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [mapCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [mapCopy objectForKey:v9];
        v11 = v10;
        uTF8String = [v10 UTF8String];
        v13 = v9;
        v14 = sqlite3_mprintf("UPDATE mailboxes SET url = '%q' WHERE url = '%q';", uTF8String, [v9 UTF8String]);
        v15 = sqlite3_exec(litedb, v14, 0, 0, 0);
        if (v15)
        {
          v16 = MFLogGeneral();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v25 = v9;
            v26 = 2112;
            v27 = v10;
            v28 = 1024;
            v29 = v15;
            _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator Updating mailbox table from Old URL %@ to New URL %@ failed with sqlite code (%d).", buf, 0x1Cu);
          }
        }

        sqlite3_free(v14);
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_purgeFoldersMatchingPatterns:(id)patterns
{
  patternsCopy = patterns;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MFMailMessageLibraryMailboxURLMigrationStep__purgeFoldersMatchingPatterns___block_invoke;
  block[3] = &unk_1E7AA25C0;
  v7 = patternsCopy;
  v5 = patternsCopy;
  dispatch_async(v4, block);
}

void __77__MFMailMessageLibraryMailboxURLMigrationStep__purgeFoldersMatchingPatterns___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = MEMORY[0x1E695DFF8];
  v3 = +[MailAccount defaultAccountDirectory];
  v22 = [v2 fileURLWithPath:v3];

  v4 = *MEMORY[0x1E695DB78];
  v38[0] = *MEMORY[0x1E695DB78];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v21 = [v24 enumeratorAtURL:v22 includingPropertiesForKeys:v5 options:5 errorHandler:0];

  v6 = [*(a1 + 32) allObjects];
  v23 = [v6 componentsJoinedByString:@"|"];

  v25 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v23 options:1 error:0];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v21;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v28 = 0;
        v11 = [v10 getResourceValue:&v28 forKey:v4 error:0];
        v12 = v28;
        v13 = v12;
        if (v11 && [v12 BOOLValue])
        {
          v14 = [v10 absoluteString];
          v15 = [v10 absoluteString];
          v16 = [v25 numberOfMatchesInString:v15 options:0 range:{0, objc_msgSend(v14, "length")}];

          if (v16)
          {
            v17 = MFLogGeneral();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v10;
              _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator Purging Orphaned Mailbox storage at Directory URL %@", buf, 0xCu);
            }

            v27 = 0;
            [v24 removeItemAtURL:v10 error:&v27];
            v18 = v27;
            if (v18)
            {
              v19 = MFLogGeneral();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v34 = v10;
                v35 = 2112;
                v36 = v18;
                _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator Unable to delete Orphaned Mailbox storage at Directory URL %@ due to Error: %@.", buf, 0x16u);
              }
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end