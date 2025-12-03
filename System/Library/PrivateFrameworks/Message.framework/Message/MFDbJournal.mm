@interface MFDbJournal
+ (id)_journalForMailbox:(id)mailbox;
+ (id)legacyJournal;
+ (int64_t)mergeAllJournalsUsingConnection:(id)connection;
+ (void)initialize;
- (BOOL)_markMailboxForReconciliation:(BOOL)reconciliation connection:(id)connection;
- (MFDbJournal)initWithMailbox:(id)mailbox;
- (int)_processJournalFile:(id)file connection:(id)connection;
- (int64_t)mergeUsingConnection:(id)connection;
- (void)dealloc;
@end

@implementation MFDbJournal

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = _journals;
    _journals = v2;
  }
}

- (MFDbJournal)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v13.receiver = self;
  v13.super_class = MFDbJournal;
  v6 = [(MFDbJournal *)&v13 init];
  v7 = v6;
  if (v6)
  {
    pthread_mutex_init(&v6->_lock, 0);
    v7->_fd = -1;
    objc_storeStrong(&v7->_mailbox, mailbox);
    fullPath = [mailboxCopy fullPath];
    v9 = fullPath;
    if (fullPath)
    {
      [fullPath stringByAppendingPathComponent:@"Journal"];
    }

    else
    {
      NSTemporaryDirectory();
    }
    v10 = ;
    path = v7->_path;
    v7->_path = v10;
  }

  return v7;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = MFDbJournal;
  [(MFDbJournal *)&v4 dealloc];
}

+ (id)_journalForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = _journals;
  objc_sync_enter(v4);
  v5 = [_journals objectForKey:mailboxCopy];
  if (!v5)
  {
    v5 = [[MFDbJournal alloc] initWithMailbox:mailboxCopy];
    [_journals setObject:v5 forKey:mailboxCopy];
  }

  objc_sync_exit(v4);

  return v5;
}

+ (id)legacyJournal
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
  v3 = [v2 stringByAppendingPathComponent:@"Mail"];

  v4 = [v3 stringByAppendingPathComponent:@"Vault"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4 isDirectory:0];

  if (v6)
  {
    v7 = [[MFDbJournal alloc] initWithMailbox:0];
    objc_storeStrong(&v7->_path, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_processJournalFile:(id)file connection:(id)connection
{
  v40 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  connectionCopy = connection;
  v34 = -1431655766;
  v35 = -1431655766;
  v7 = NSPageSize();
  v8 = EDLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    *v37 = fileCopy;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "processing journal file %@", &v36, 0xCu);
  }

  v9 = malloc_type_malloc(v7, 0xA5A8FB7DuLL);
  if (!v9)
  {
    __assert_rtn("[MFDbJournal _processJournalFile:connection:]", "MFDbJournal.m", 140, "buf && failed to allocate buffer during journal merge");
  }

  v10 = fileCopy;
  v11 = open([fileCopy fileSystemRepresentation], 0);
  v12 = v11;
  if (v11 == -1)
  {
    v21 = fileCopy;
    v22 = EDLibraryLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      v36 = 67109890;
      *v37 = v31;
      *&v37[4] = 2112;
      *&v37[6] = @"opening journal file";
      *&v37[14] = 2112;
      *&v37[16] = v21;
      v38 = 2080;
      v39 = v33;
      _os_log_error_impl(&dword_1B0389000, v22, OS_LOG_TYPE_ERROR, "Error %d %@ at path %@: %s", &v36, 0x26u);
    }

    goto LABEL_22;
  }

  v13 = read(v11, &v34, 4uLL);
  if (v13 != 4)
  {
    v21 = EDLibraryLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 134218240;
      *v37 = 4;
      *&v37[8] = 2048;
      *&v37[10] = v13;
      v23 = "read wrong number of version bytes from journal, expected: %lu actual: %zd";
      v24 = v21;
      v25 = 22;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v34 == 1)
  {
    while (1)
    {
      if (read(v12, &v35, 4uLL) < 1)
      {
        v26 = 0;
        goto LABEL_23;
      }

      v14 = v35;
      v15 = v35 + 4;
      if (v15 > v7)
      {
        v16 = malloc_type_realloc(v9, v35 + 4, 0xE82589C2uLL);
        if (!v16)
        {
          v21 = EDLibraryLog();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          LOWORD(v36) = 0;
          v23 = "realloc failed when merging journal with database";
          v24 = v21;
          v25 = 2;
LABEL_21:
          _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, v23, &v36, v25);
          goto LABEL_22;
        }

        v14 = v35;
        v9 = v16;
        v7 = v15;
      }

      v17 = read(v12, v9, v14);
      v18 = v17;
      if (v17 != v35)
      {
        v21 = EDLibraryLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 134218240;
          *v37 = v35;
          *&v37[8] = 2048;
          *&v37[10] = v18;
          _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "read wrong number of bytes from journal, expected: %lu actual: %zd", &v36, 0x16u);
        }

        goto LABEL_22;
      }

      *(v9 + v17) = 0;
      v19 = sqlite3_exec([connectionCopy sqlDB], v9, 0, 0, 0);
      if (v19)
      {
        sqlDB = [connectionCopy sqlDB];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"executing SQL statement from journal (%s)", v9];
        MFLogSQLiteError(sqlDB, v19, v21);
        goto LABEL_22;
      }
    }
  }

  v21 = EDLibraryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109376;
    *v37 = 1;
    *&v37[4] = 2048;
    *&v37[6] = v34;
    v23 = "found journal file of wrong version, expected: %d actual: %lu";
    v24 = v21;
    v25 = 18;
    goto LABEL_21;
  }

LABEL_22:

  v26 = 1;
LABEL_23:
  free(v9);
  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

  if (v26)
  {
    v27 = *__error();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = -1;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (int64_t)mergeAllJournalsUsingConnection:(id)connection
{
  v49 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[MFDbJournal legacyJournal];
  v29 = v5;
  if (v5)
  {
    [array addObject:v5];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v6 = [connectionCopy preparedStatementForQueryString:@"SELECT url FROM mailboxes WHERE reconcile = '1'"];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __47__MFDbJournal_mergeAllJournalsUsingConnection___block_invoke;
  v43[3] = &unk_1E7AA3610;
  v7 = array2;
  v44 = v7;
  v42 = 0;
  v30 = v6;
  v8 = [v6 executeUsingBlock:v43 error:&v42];
  v9 = v42;
  v31 = v9;
  if ((v8 & 1) == 0)
  {
    [connectionCopy handleError:v9 message:@"getting mailboxes to be reconciled"];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [MailAccount mailboxUidFromActiveAccountsForURL:v14];
        if (v15)
        {
          v16 = [self _journalForMailbox:v15];
          if ([v15 mailboxType] == 7)
          {
            [array insertObject:v16 atIndex:0];
          }

          else
          {
            [array addObject:v16];
          }
        }

        else
        {
          v16 = EDLibraryLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v14;
            _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Could not find mailbox for %@", buf, 0xCu);
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = array;
  v17 = 0;
  v18 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v18)
  {
    v19 = *v35;
LABEL_20:
    v20 = 0;
    while (1)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v34 + 1) + 8 * v20);
      v22 = [v21 mergeUsingConnection:connectionCopy];
      v23 = _journals;
      objc_sync_enter(v23);
      if (v21[2])
      {
        [_journals removeObjectForKey:?];
      }

      objc_sync_exit(v23);

      v17 |= v22;
      if (v17)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
        if (v18)
        {
          goto LABEL_20;
        }

        break;
      }
    }
  }

  v24 = EDLibraryLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = MFDBJournalMergeResultString(v17);
    *buf = 138412290;
    v47 = v25;
    _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "MFProtectedDatabaseMergeResult %@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

void __47__MFDbJournal_mergeAllJournalsUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (int64_t)mergeUsingConnection:(id)connection
{
  v63 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  pthread_mutex_lock(&self->_lock);
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
    self->_fd = -1;
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy2 = self;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:selfCopy->_path error:0];

  [v8 sortedArrayUsingFunction:_sortFilenamesAlphabetically context:0];
  v61 = 0u;
  v62 = 0u;
  v9 = memset(v60, 0, sizeof(v60));
  v10 = [v9 countByEnumeratingWithState:v60 objects:&buf count:16];
  if (v10)
  {
    v11 = **&v60[16];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (**&v60[16] != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(NSString *)selfCopy->_path stringByAppendingPathComponent:*(*&v60[8] + 8 * i)];
        [array addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:v60 objects:&buf count:16];
    }

    while (v10);
  }

  if (![array count])
  {
    v14 = EDLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "No journal files found", &buf, 2u);
    }

    goto LABEL_40;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v15)
  {
LABEL_40:

    v38 = 0;
    goto LABEL_44;
  }

  obj = v14;
  v47 = *v53;
  v17 = *MEMORY[0x1E696A3B8];
  *&v16 = 138412546;
  v43 = v16;
LABEL_13:
  v18 = 0;
  while (1)
  {
    if (*v53 != v47)
    {
      objc_enumerationMutation(obj);
    }

    v19 = *(*(&v52 + 1) + 8 * v18);
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = [defaultManager2 attributesOfItemAtPath:v19 error:0];

    v22 = [v21 objectForKeyedSubscript:v17];
    v23 = [v22 integerValue] > 0;

    if (!v23)
    {
      v29 = EDLibraryLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "Skipping empty journal file %@", &buf, 0xCu);
      }

      goto LABEL_35;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v58 = 0x2020000000;
    v59 = -1431655766;
    v50[6] = &buf;
    v51 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __36__MFDbJournal_mergeUsingConnection___block_invoke;
    v50[3] = &unk_1E7AA3FC8;
    v50[4] = selfCopy;
    v50[5] = v19;
    v24 = [connectionCopy performWithOptions:3 transactionError:&v51 block:v50];
    v25 = v51;
    v26 = v25;
    if (*(*(&buf + 1) + 24))
    {
      v27 = EDLibraryLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*(&buf + 1) + 24);
        v37 = strerror(v36);
        *v60 = 138412802;
        *&v60[4] = v19;
        *&v60[12] = 1024;
        *&v60[14] = v36;
        *&v60[18] = 2080;
        *&v60[20] = v37;
        _os_log_error_impl(&dword_1B0389000, v27, OS_LOG_TYPE_ERROR, "An error occurred while processing %@ (error %d: %s)", v60, 0x1Cu);
      }

      v28 = *(*(&buf + 1) + 24) == 1;
LABEL_31:
      if (v28)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      goto LABEL_34;
    }

    if ((v24 & 1) == 0)
    {
      code = [v25 code];
      v35 = EDLibraryLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v60 = v43;
        *&v60[4] = v19;
        *&v60[12] = 1024;
        *&v60[14] = code;
        _os_log_error_impl(&dword_1B0389000, v35, OS_LOG_TYPE_ERROR, "An error occurred while committing transaction for %@ (sqlite error %d)", v60, 0x12u);
      }

      v28 = code == 778;
      goto LABEL_31;
    }

    v30 = EDLibraryLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 138412290;
      *&v60[4] = v19;
      _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "Successfully reconciled journal file %@", v60, 0xCu);
    }

    v31 = MFRemoveItemAtPath();
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager3 createFileAtPath:v19 contents:0 attributes:0];

    v33 = 0;
LABEL_34:

    _Block_object_dispose(&buf, 8);
    if (v33)
    {
      break;
    }

LABEL_35:
    if (v15 == ++v18)
    {
      v15 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v15)
      {
        goto LABEL_13;
      }

      v14 = obj;
      goto LABEL_40;
    }
  }

  if (v33 == 1)
  {
    v38 = 1;
    goto LABEL_46;
  }

  v38 = 2;
LABEL_44:
  path = selfCopy->_path;
  v40 = MFRemoveItemAtPath();
  if (selfCopy->_mailbox)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __36__MFDbJournal_mergeUsingConnection___block_invoke_55;
    v48[3] = &unk_1E7AA3D10;
    v48[4] = selfCopy;
    v49 = connectionCopy;
    [v49 performWithOptions:3 transactionError:0 block:v48];
  }

LABEL_46:
  pthread_mutex_unlock(&selfCopy2->_lock);

  v41 = *MEMORY[0x1E69E9840];
  return v38;
}

BOOL __36__MFDbJournal_mergeUsingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _processJournalFile:*(a1 + 40) connection:v3];
  v4 = *(*(*(a1 + 48) + 8) + 24) == 0;

  return v4;
}

- (BOOL)_markMailboxForReconciliation:(BOOL)reconciliation connection:(id)connection
{
  reconciliationCopy = reconciliation;
  v6 = [connection preparedStatementForQueryString:@"UPDATE mailboxes SET reconcile = ? WHERE url = ?"];
  compiled = [v6 compiled];
  v8 = compiled;
  if (compiled)
  {
    if (reconciliationCopy)
    {
      v9 = "1";
    }

    else
    {
      v9 = "0";
    }

    sqlite3_bind_text(compiled, 1, v9, 1, 0);
    uRLString = [(MFMailboxUid *)self->_mailbox URLString];
    sqlite3_bind_text(v8, 2, [uRLString UTF8String], -1, 0);

    v11 = sqlite3_step(v8) == 101;
  }

  else
  {
    v11 = 0;
  }

  sqlite3_reset(v8);

  return v11;
}

@end