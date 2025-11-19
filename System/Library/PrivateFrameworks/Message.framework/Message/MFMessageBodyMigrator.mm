@interface MFMessageBodyMigrator
+ (OS_os_log)log;
- (BOOL)_mailboxHasUnmigratedFiles:(id)a3;
- (MFMailMessageLibrary)library;
- (MFMessageBodyMigrator)initWithLibrary:(id)a3;
- (id)_directoryContentsForPath:(id)a3;
- (id)_filesForMessage:(id)a3;
- (id)legacyAttachmentDirectoryForMessage:(id)a3;
- (void)_migrateAllFilesForMailbox:(id)a3;
- (void)_migrateDataFilesForMessage:(id)a3;
- (void)migrateBodyForMessageIfNecessary:(id)a3;
- (void)startMigratingBodies;
@end

@implementation MFMessageBodyMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MFMessageBodyMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_20 != -1)
  {
    dispatch_once(&log_onceToken_20, block);
  }

  v2 = log_log_20;

  return v2;
}

void __28__MFMessageBodyMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_20;
  log_log_20 = v1;
}

- (MFMessageBodyMigrator)initWithLibrary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MFMessageBodyMigrator;
  v5 = [(MFMessageBodyMigrator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_library, v4);
    v7 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:5];
    directoryContentCache = v6->_directoryContentCache;
    v6->_directoryContentCache = v7;

    v9 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.MFMessageBodyMigrator" qualityOfService:9];
    backgroundMigrationScheduler = v6->_backgroundMigrationScheduler;
    v6->_backgroundMigrationScheduler = v9;

    v11 = objc_opt_new();
    mailboxesToCheck = v6->_mailboxesToCheck;
    v6->_mailboxesToCheck = v11;

    v13 = [v4 database];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessageBodyMigrator initWithLibrary:]"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__MFMessageBodyMigrator_initWithLibrary___block_invoke;
    v17[3] = &unk_1E7AA43C8;
    v15 = v6;
    v18 = v15;
    [v13 __performReadWithCaller:v14 usingBlock:v17];

    v15->_upgradeLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

uint64_t __41__MFMessageBodyMigrator_initWithLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"url" table:@"mailboxes"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__MFMessageBodyMigrator_initWithLibrary___block_invoke_2;
  v6[3] = &unk_1E7AA3610;
  v7 = *(a1 + 32);
  [v3 executeSelectStatement:v4 withBlock:v6 error:0];

  return 1;
}

void __41__MFMessageBodyMigrator_initWithLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"url"];
  v5 = [v3 stringValue];

  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v5];
  if (v4)
  {
    [*(*(a1 + 32) + 40) addObject:v4];
  }
}

- (void)startMigratingBodies
{
  v3 = [(MFMessageBodyMigrator *)self backgroundMigrationScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MFMessageBodyMigrator_startMigratingBodies__block_invoke;
  v4[3] = &unk_1E7AA25C0;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __45__MFMessageBodyMigrator_startMigratingBodies__block_invoke(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 32);
    os_unfair_lock_lock(v2 + 2);
    v3 = [*(a1 + 32) mailboxesToCheck];
    v4 = [v3 firstObject];

    os_unfair_lock_unlock(v2 + 2);
    v5 = *(a1 + 32);
    if (!v4)
    {
      break;
    }

    if ([v5 _mailboxHasUnmigratedFiles:v4])
    {
      [*(a1 + 32) _migrateAllFilesForMailbox:v4];
    }
  }

  v6 = [v5 library];
  [v6 bodyMigrationFinished];
}

- (void)migrateBodyForMessageIfNecessary:(id)a3
{
  v6 = a3;
  v4 = [v6 mailbox];
  v5 = [(MFMessageBodyMigrator *)self _mailboxHasUnmigratedFiles:v4];

  if (v5)
  {
    [(MFMessageBodyMigrator *)self _migrateDataFilesForMessage:v6];
  }
}

- (void)_migrateDataFilesForMessage:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v42 = [MEMORY[0x1E696AC08] defaultManager];
  v37 = [(MFMessageBodyMigrator *)self _filesForMessage:v43];
  if ([v37 count])
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [v43 mailbox];
    v6 = [v5 fullPath];
    v7 = [v6 stringByAppendingPathComponent:@"Messages"];
    v41 = [v4 fileURLWithPath:v7];

    v38 = [v43 account];
    v8 = [(MFMessageBodyMigrator *)self library];
    v36 = [v8 messageBasePathForAccount:v38];

    [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:objc_msgSend(v43 basePath:"globalMessageID") purgeable:{v36, objc_msgSend(v38, "supportsPurge")}];
    v35 = self;
    v40 = v51 = 0;
    LOBYTE(v8) = [v42 createDirectoryAtURL:? withIntermediateDirectories:? attributes:? error:?];
    v9 = 0;
    if ((v8 & 1) == 0)
    {
      v10 = +[MFMessageBodyMigrator log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(MFMessageBodyMigrator *)v9 _migrateDataFilesForMessage:v10];
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v37;
    v11 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v11)
    {
      v12 = *v48;
      do
      {
        v13 = 0;
        v14 = v9;
        do
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * v13);
          v16 = [v43 externalID];
          v17 = [v15 substringFromIndex:{objc_msgSend(v16, "length") + 1}];

          v18 = @"full.emlx";
          if (([v17 isEqualToString:@"emlx"] & 1) == 0)
          {
            v18 = v17;
          }

          v19 = [v41 URLByAppendingPathComponent:v15];
          v20 = [v40 URLByAppendingPathComponent:v18];
          v46 = v14;
          v21 = [v42 moveItemAtURL:v19 toURL:v20 error:&v46];
          v9 = v46;

          if ((v21 & 1) == 0)
          {
            v22 = +[MFMessageBodyMigrator log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v53 = v9;
              _os_log_error_impl(&dword_1B0389000, v22, OS_LOG_TYPE_ERROR, "Got error %@ creating body file directory", buf, 0xCu);
            }
          }

          ++v13;
          v14 = v9;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v11);
    }

    v23 = [(MFMessageBodyMigrator *)v35 legacyAttachmentDirectoryForMessage:v43];
    v24 = [v23 path];
    v25 = [v42 fileExistsAtPath:v24];

    if (v25)
    {
      v26 = -[MFMessageBodyMigrator _legacyAttachmentDataDirectoryURLForGlobalMessageID:basePath:purgeable:](v35, "_legacyAttachmentDataDirectoryURLForGlobalMessageID:basePath:purgeable:", [v43 globalMessageID], v36, objc_msgSend(v38, "supportsPurge"));
      v27 = [v26 URLByDeletingLastPathComponent];
      v45 = v9;
      v28 = [v42 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v45];
      v29 = v45;

      if ((v28 & 1) == 0)
      {
        v30 = +[MFMessageBodyMigrator log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(MFMessageBodyMigrator *)v29 _migrateDataFilesForMessage:v30];
        }
      }

      v44 = v29;
      v31 = [v42 moveItemAtURL:v23 toURL:v26 error:&v44];
      v32 = v44;

      if ((v31 & 1) == 0)
      {
        v33 = +[MFMessageBodyMigrator log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [(MFMessageBodyMigrator *)v32 _migrateDataFilesForMessage:v23, v33];
        }
      }
    }

    else
    {
      v32 = v9;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (BOOL)_mailboxHasUnmigratedFiles:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_upgradeLock);
  v5 = [(MFMessageBodyMigrator *)self mailboxesToCheck];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 fullPath];
    v8 = [v7 stringByAppendingPathComponent:@"Messages"];

    v9 = [(MFMessageBodyMigrator *)self _directoryContentsForPath:v8];
    if ([v9 count])
    {
      goto LABEL_4;
    }

    v10 = [v4 fullPath];
    v11 = [v10 stringByAppendingPathComponent:@"Attachments"];

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v12 contentsOfDirectoryAtPath:v11 error:0];
    v14 = [v13 count];

    if (v14)
    {
LABEL_4:
      v15 = 1;
    }

    else
    {
      v17 = [(MFMessageBodyMigrator *)self mailboxesToCheck];
      [v17 removeObject:v4];

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(&self->_upgradeLock);

  return v15;
}

- (void)_migrateAllFilesForMailbox:(id)a3
{
  v4 = a3;
  v5 = [MFMessageCriterion criterionForMailbox:v4];
  v6 = [(MFMessageBodyMigrator *)self library];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MFMessageBodyMigrator__migrateAllFilesForMailbox___block_invoke;
  v10[3] = &unk_1E7AA66A8;
  v10[4] = self;
  [v6 iterateMessagesMatchingCriterion:v5 options:6297663 handler:v10];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v4 fullPath];
  [v7 removeItemAtPath:v8 error:0];

  os_unfair_lock_lock(&self->_upgradeLock);
  v9 = [(MFMessageBodyMigrator *)self mailboxesToCheck];
  [v9 removeObject:v4];

  os_unfair_lock_unlock(&self->_upgradeLock);
}

- (id)_filesForMessage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 externalID];
  if (v5)
  {
    v6 = [v4 mailbox];
    v7 = [v6 fullPath];
    v8 = [v7 stringByAppendingPathComponent:@"Messages"];

    v9 = [(MFMessageBodyMigrator *)self _directoryContentsForPath:v8];
    if ([v9 count])
    {
      os_unfair_lock_lock(&self->_upgradeLock);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __42__MFMessageBodyMigrator__filesForMessage___block_invoke;
      v14[3] = &unk_1E7AA66D0;
      v15 = v5;
      v10 = [v9 ef_filter:v14];
      [v9 removeObjectsInArray:v10];

      os_unfair_lock_unlock(&self->_upgradeLock);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = +[MFMessageBodyMigrator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 ef_publicDescription];
      [(MFMessageBodyMigrator *)v11 _filesForMessage:buf, v8];
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)legacyAttachmentDirectoryForMessage:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DFF8];
  v5 = [v3 mailbox];
  v6 = [v5 fullPath];
  v7 = [v6 stringByAppendingPathComponent:@"Attachments"];
  v8 = [v4 fileURLWithPath:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "libraryID")}];
  v10 = [v9 stringValue];
  v11 = [v8 URLByAppendingPathComponent:v10];

  return v11;
}

- (id)_directoryContentsForPath:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageBodyMigrator *)self directoryContentCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MFMessageBodyMigrator__directoryContentsForPath___block_invoke;
  v9[3] = &unk_1E7AA66F8;
  v6 = v4;
  v10 = v6;
  v7 = [v5 objectForKey:v6 generator:v9];

  return v7;
}

id __51__MFMessageBodyMigrator__directoryContentsForPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 contentsOfDirectoryAtPath:*(a1 + 32) error:0];
  v4 = [v3 mutableCopy];

  return v4;
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (void)_migrateDataFilesForMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Got error %@ creating body file directory", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_migrateDataFilesForMessage:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Got error %@ creating attachment parent directory", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_migrateDataFilesForMessage:(os_log_t)log .cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Got error %@ moving attachment directory %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_filesForMessage:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "No externalID for message %{public}@", buf, 0xCu);
}

@end