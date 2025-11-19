@interface MFMailMessageLibraryMailboxURLMigrationStep
- (BOOL)_renameMailboxDataFolders:(sqlite3 *)a3;
- (BOOL)_renameMailboxURLsForMailAccount:(id)a3 inSQLiteDB:(sqlite3 *)a4;
- (BOOL)_updateMailboxURLsInSQLitedb:(sqlite3 *)a3 withOldURLToNewURLMap:(id)a4;
- (BOOL)performMigrationStep;
- (MFMailMessageLibraryMailboxURLMigrationStep)initWithSQLiteConnection:(id)a3;
- (void)_purgeFoldersMatchingPatterns:(id)a3;
@end

@implementation MFMailMessageLibraryMailboxURLMigrationStep

- (MFMailMessageLibraryMailboxURLMigrationStep)initWithSQLiteConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMailMessageLibraryMailboxURLMigrationStep;
  v6 = [(MFMailMessageLibraryMailboxURLMigrationStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sqliteConnection, a3);
  }

  return v7;
}

- (BOOL)performMigrationStep
{
  v3 = [(EDPersistenceDatabaseConnection *)self->_sqliteConnection sqlDB];

  return [(MFMailMessageLibraryMailboxURLMigrationStep *)self _renameMailboxDataFolders:v3];
}

- (BOOL)_renameMailboxDataFolders:(sqlite3 *)a3
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
        v9 = [v7 uniqueID];
        v10 = [v7 hostname];
        v11 = [v7 username];
        v12 = [v8 legacyPathForAccountIdentifier:v9 withHostname:v10 username:v11];

        if (v12)
        {
          v13 = [v7 defaultPath];
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v7 ef_publicDescription];
            *buf = 138543874;
            v45 = v15;
            v46 = 2112;
            v47 = v12;
            v48 = 2112;
            v49 = v13;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Start Migrating Mailbox FilePath for Account %{public}@ from %@ to %@...", buf, 0x20u);
          }

          v39 = 1;
          v16 = [MEMORY[0x1E696AC08] defaultManager];
          if ([v16 fileExistsAtPath:v12 isDirectory:&v39])
          {
            v38 = 0;
            v17 = [v16 moveItemAtPath:v12 toPath:v13 error:&v38];
            v18 = v38;
            if ((v17 & 1) == 0)
            {
              v19 = MFLogGeneral();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v29 = [v18 ef_publicDescription];
                *buf = 138412802;
                v45 = v12;
                v46 = 2112;
                v47 = v13;
                v48 = 2114;
                v49 = v29;
                _os_log_error_impl(&dword_1B0389000, v19, OS_LOG_TYPE_ERROR, "#MobileMailMigrator Failed to Rename Path from %@ to %@ Due to Error %{public}@. Deleting the legacyMailboxPath.", buf, 0x20u);
              }

              [v16 removeItemAtPath:v12 error:0];
            }
          }

          v20 = MFLogGeneral();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v7 ef_publicDescription];
            *buf = 138543362;
            v45 = v21;
            _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Finished Migrating Mailbox FilePath for Account: %{public}@", buf, 0xCu);
          }

          v22 = MFLogGeneral();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v7 ef_publicDescription];
            *buf = 138543362;
            v45 = v23;
            _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Start Migrating Mailbox URLs for Account: %{public}@", buf, 0xCu);
          }

          v5 = [(MFMailMessageLibraryMailboxURLMigrationStep *)self _renameMailboxURLsForMailAccount:v7 inSQLiteDB:a3];
          v24 = MFLogGeneral();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v7 ef_publicDescription];
            *buf = 138543618;
            v45 = v25;
            v46 = 1024;
            LODWORD(v47) = v5;
            _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: Finish Migrating Mailbox URLs for Account: %{public}@ with result %d", buf, 0x12u);
          }

          v26 = [v7 username];

          if (v26)
          {
            v27 = [v7 username];
            [v34 addObject:v27];
          }
        }

        else
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v7 ef_publicDescription];
            *buf = 138543362;
            v45 = v28;
            _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator: No Legacy Path For Account %{public}@, skipping migration...", buf, 0xCu);
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

- (BOOL)_renameMailboxURLsForMailAccount:(id)a3 inSQLiteDB:(sqlite3 *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 legacySQLExpressionToMatchAllMailboxes];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 ef_SQLExpression];
  v10 = [v8 stringWithFormat:@"SELECT url FROM mailboxes WHERE %@", v9];
  v11 = [v10 UTF8String];

  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  v12 = sqlite3_prepare_v2(a4, v11, -1, &ppStmt, 0);
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
      v20 = [v6 URLStringFromLegacyURLString:v18];
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
        v30 = [v6 ef_publicDescription];
        *buf = 138543362;
        v35 = v30;
        _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator No Mailboxes found for account %{public}@ to migrate.", buf, 0xCu);
      }
    }

    else
    {
      v25 = MFLogGeneral();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 ef_publicDescription];
        v27 = [v14 allKeys];
        v28 = [v14 allValues];
        *buf = 138543874;
        v35 = v26;
        v36 = 2112;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "#MobileMailMigrator For Account %{public}@ Renaming Mailboxes From URL %@ To %@", buf, 0x20u);
      }

      v22 = [(MFMailMessageLibraryMailboxURLMigrationStep *)self _updateMailboxURLsInSQLitedb:a4 withOldURLToNewURLMap:v14];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)_updateMailboxURLsInSQLitedb:(sqlite3 *)a3 withOldURLToNewURLMap:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v5 allKeys];
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
        v10 = [v5 objectForKey:v9];
        v11 = v10;
        v12 = [v10 UTF8String];
        v13 = v9;
        v14 = sqlite3_mprintf("UPDATE mailboxes SET url = '%q' WHERE url = '%q';", v12, [v9 UTF8String]);
        v15 = sqlite3_exec(a3, v14, 0, 0, 0);
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

- (void)_purgeFoldersMatchingPatterns:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MFMailMessageLibraryMailboxURLMigrationStep__purgeFoldersMatchingPatterns___block_invoke;
  block[3] = &unk_1E7AA25C0;
  v7 = v3;
  v5 = v3;
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