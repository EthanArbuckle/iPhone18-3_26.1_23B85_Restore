@interface MFMessageAttachmentMigrator
+ (BOOL)migrateMaildropFileForMessage:(id)message mailDropMetadata:(id)metadata;
+ (OS_os_log)log;
- (BOOL)_checkContentProtectionState;
- (BOOL)_isMigratingAttachmentsOnThread;
- (BOOL)_messageHasAttachmentsToMigrate:(id)migrate;
- (BOOL)_migrateAttachmentsForMessage:(id)message connection:(id)connection;
- (MFMailMessageLibrary)library;
- (MFMessageAttachmentMigrator)initWithLibrary:(id)library;
- (void)_setMigratingAttachmentsOnThread:(BOOL)thread;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)migrateAttachmentsForMessageIfNecessary:(id)necessary;
- (void)startMigratingAttachments;
@end

@implementation MFMessageAttachmentMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MFMessageAttachmentMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_19 != -1)
  {
    dispatch_once(&log_onceToken_19, block);
  }

  v2 = log_log_19;

  return v2;
}

void __34__MFMessageAttachmentMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_19;
  log_log_19 = v1;
}

- (MFMessageAttachmentMigrator)initWithLibrary:(id)library
{
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = MFMessageAttachmentMigrator;
  v5 = [(MFMessageAttachmentMigrator *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_library, libraryCopy);
    v7 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.MFMessageAttachmentMigrator" qualityOfService:9];
    backgroundMigrationScheduler = v6->_backgroundMigrationScheduler;
    v6->_backgroundMigrationScheduler = v7;

    v6->_upgradeLock._os_unfair_lock_opaque = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.message.MFMessageAttachmentMigrator.contentProtectionQueue", v9);
    contentProtectionQueue = v6->_contentProtectionQueue;
    v6->_contentProtectionQueue = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    migrationState = v6->_migrationState;
    v6->_migrationState = v12;
  }

  return v6;
}

- (void)startMigratingAttachments
{
  backgroundMigrationScheduler = [(MFMessageAttachmentMigrator *)self backgroundMigrationScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke;
  v4[3] = &unk_1E7AA25C0;
  v4[4] = self;
  [backgroundMigrationScheduler performBlock:v4];
}

void __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E699B810] indexSet];
  v2 = [*(a1 + 32) library];
  v17 = [v2 database];

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessageAttachmentMigrator startMigratingAttachments]_block_invoke"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke_2;
  v22[3] = &unk_1E7AA43C8;
  v4 = v16;
  v23 = v4;
  [v17 __performReadWithCaller:v3 usingBlock:v22];

  v5 = +[MFMessageAttachmentMigrator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Found %lu messages to migrate", &buf, 0xCu);
  }

  v7 = *(*(a1 + 32) + 32);
  EFRegisterContentProtectionObserver();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  [*(a1 + 32) _checkContentProtectionState];
  [*(a1 + 32) _setMigratingAttachmentsOnThread:1];
  do
  {
    v8 = [*(a1 + 32) migrationState];
    [v8 lockWhenCondition:0];

    v9 = [*(a1 + 32) migrationState];
    [v9 unlock];

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessageAttachmentMigrator startMigratingAttachments]_block_invoke"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke_2_25;
    v18[3] = &unk_1E7AA3FC8;
    p_buf = &buf;
    v11 = v4;
    v12 = *(a1 + 32);
    v19 = v11;
    v20 = v12;
    [v17 __performWriteWithCaller:v10 usingBlock:v18];
  }

  while (*(*(&buf + 1) + 24) != 0x7FFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _setMigratingAttachmentsOnThread:0];
  v13 = *(a1 + 32);
  EFUnregisterContentProtectionObserver();
  v14 = [*(a1 + 32) library];
  [v14 attachmentMigrationFinished];

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 preparedStatementForQueryString:@"SELECT ROWID FROM messages WHERE (((flags&(63<<10))>>10) BETWEEN 1 AND 62) AND global_message_id NOT IN (SELECT DISTINCT global_message_id FROM message_attachments)"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke_3;
  v5[3] = &unk_1E7AA3610;
  v6 = *(a1 + 32);
  [v3 executeUsingBlock:v5 error:0];

  return 1;
}

void __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"ROWID"];
  v4 = [v3 databaseIDValue];

  [*(a1 + 32) addIndex:v4];
}

uint64_t __56__MFMessageAttachmentMigrator_startMigratingAttachments__block_invoke_2_25(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = objc_autoreleasePoolPush();
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) indexGreaterThanIndex:*(*(*(a1 + 48) + 8) + 24)];
    if (*(*(*(a1 + 48) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [*(a1 + 40) library];
      v9 = [v8 messageWithLibraryID:*(*(*(a1 + 48) + 8) + 24) options:4227087 inMailbox:0];

      if (v9)
      {
        if ([*(a1 + 40) _migrateAttachmentsForMessage:v9 connection:v3])
        {
          v7 = 1;
          goto LABEL_11;
        }

        v5 = 0;
      }

      if ([*(a1 + 40) _checkContentProtectionState])
      {
        v7 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v7 = 0;
      --*(*(*(a1 + 48) + 8) + 24);
LABEL_11:
      v5 = 1;
      goto LABEL_12;
    }

    v7 = 0;
LABEL_13:
    objc_autoreleasePoolPop(v6);
    if (!v7)
    {
      break;
    }

    v10 = [*(a1 + 40) migrationState];
    v11 = [v10 tryLockWhenCondition:0];

    if (!v11)
    {
      break;
    }

    v12 = [*(a1 + 40) migrationState];
    [v12 unlock];

    ++v4;
  }

  while (v4 != 500);
  v13 = +[MFMessageAttachmentMigrator log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"unsuccessful";
    if (v5)
    {
      v14 = @"successful";
    }

    v17 = 134218242;
    v18 = v4;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Migration for %lu messages was %@", &v17, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (void)migrateAttachmentsForMessageIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (![(MFMessageAttachmentMigrator *)self _isMigratingAttachmentsOnThread])
  {
    [(MFMessageAttachmentMigrator *)self _setMigratingAttachmentsOnThread:1];
    if ([(MFMessageAttachmentMigrator *)self _messageHasAttachmentsToMigrate:necessaryCopy])
    {
      library = [(MFMessageAttachmentMigrator *)self library];
      database = [library database];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMessageAttachmentMigrator migrateAttachmentsForMessageIfNecessary:]"];
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __71__MFMessageAttachmentMigrator_migrateAttachmentsForMessageIfNecessary___block_invoke;
      v11 = &unk_1E7AA3D10;
      selfCopy = self;
      v13 = necessaryCopy;
      [database __performWriteWithCaller:v7 usingBlock:&v8];
    }

    [(MFMessageAttachmentMigrator *)self _setMigratingAttachmentsOnThread:0, v8, v9, v10, v11, selfCopy];
  }
}

uint64_t __71__MFMessageAttachmentMigrator_migrateAttachmentsForMessageIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _migrateAttachmentsForMessage:*(a1 + 40) connection:v3];
  v5 = +[MFMessageAttachmentMigrator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) ef_publicDescription];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Did on demand migration for message %{public}@, success = %d", &v9, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_messageHasAttachmentsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  library = [(MFMessageAttachmentMigrator *)self library];
  account = [migrateCopy account];
  v7 = [library messageBasePathForAccount:account];

  v8 = MEMORY[0x1E699B5B0];
  globalMessageID = [migrateCopy globalMessageID];
  account2 = [migrateCopy account];
  v11 = [v8 messageDataDirectoryURLForGlobalMessageID:globalMessageID basePath:v7 purgeable:{objc_msgSend(account2, "supportsPurge")}];

  v12 = [v11 URLByAppendingPathComponent:@"Attachments"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v12 path];
  LOBYTE(globalMessageID) = [defaultManager fileExistsAtPath:path];

  return globalMessageID;
}

- (BOOL)_migrateAttachmentsForMessage:(id)message connection:(id)connection
{
  v77 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  library = [(MFMessageAttachmentMigrator *)self library];
  v62 = messageCopy;
  account = [messageCopy account];
  v56 = [library messageBasePathForAccount:account];

  v8 = MEMORY[0x1E699B5B0];
  globalMessageID = [messageCopy globalMessageID];
  account2 = [messageCopy account];
  v11 = [v8 messageDataDirectoryURLForGlobalMessageID:globalMessageID basePath:v56 purgeable:{objc_msgSend(account2, "supportsPurge")}];

  v53 = v11;
  v59 = [v11 URLByAppendingPathComponent:@"Attachments"];
  v54 = +[MFAttachmentManager defaultManager];
  library2 = [(MFMessageAttachmentMigrator *)self library];
  persistence = [library2 persistence];
  attachmentPersistenceManager = [persistence attachmentPersistenceManager];

  [v54 attachmentsForMessage:messageCopy withSchemes:0];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v14 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v14)
  {
    v57 = *v67;
    do
    {
      v60 = v14;
      for (i = 0; i != v60; ++i)
      {
        if (*v67 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = _os_activity_create(&dword_1B0389000, "Migrate message attachment", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
        state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
        v61 = v17;
        os_activity_scope_enter(v17, &state);
        v18 = +[MFMessageAttachmentMigrator log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription = [v62 ef_publicDescription];
          ef_publicDescription2 = [v16 ef_publicDescription];
          *buf = 138412546;
          v71 = ef_publicDescription;
          v72 = 2112;
          v73 = ef_publicDescription2;
          _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Migrating message %@ attachment %@", buf, 0x16u);
        }

        v21 = objc_alloc(MEMORY[0x1E699B590]);
        globalMessageID2 = [v62 globalMessageID];
        fileName = [v16 fileName];
        part = [v16 part];
        partNumber = [part partNumber];
        mailDropMetadata = [v16 mailDropMetadata];
        directUrl = [mailDropMetadata directUrl];
        v63 = [v21 initWithGlobalMessageID:globalMessageID2 name:fileName mimePart:partNumber attachmentID:0 remoteURL:directUrl];

        v28 = v59;
        part2 = [v16 part];
        partNumber2 = [part2 partNumber];

        if (partNumber2)
        {
          part3 = [v16 part];
          partNumber3 = [part3 partNumber];
          v33 = [v28 URLByAppendingPathComponent:partNumber3];

          v28 = v33;
        }

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v28 path];
        v36 = [defaultManager contentsOfDirectoryAtPath:path error:0];
        firstObject = [v36 firstObject];

        if (firstObject)
        {
          v38 = [v28 URLByAppendingPathComponent:firstObject];
          v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v56];
          v64 = 0;
          v40 = [attachmentPersistenceManager persistAttachmentWithURL:v38 attachmentMetadata:v63 basePath:v39 error:&v64];
          v41 = v64;

          if (v40)
          {
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            [defaultManager2 removeItemAtURL:v38 error:0];

            [v16 updatePath];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:@"LibraryMessageAttachmentDataBecameAvailableNotification" object:v62];
          }
        }

        else
        {
          v44 = +[MFMessageAttachmentMigrator log];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription3 = [v62 ef_publicDescription];
            ef_publicDescription4 = [v16 ef_publicDescription];
            *buf = 138412546;
            v71 = ef_publicDescription3;
            v72 = 2112;
            v73 = ef_publicDescription4;
            _os_log_impl(&dword_1B0389000, v44, OS_LOG_TYPE_DEFAULT, "No attachment file for message %@ attachment %@. Persisting attachment metadata", buf, 0x16u);
          }

          v40 = [attachmentPersistenceManager persistAttachmentMetadata:v63];
          v41 = 0;
        }

        v47 = +[MFMessageAttachmentMigrator log];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          if (v40)
          {
            v48 = @"Successfully";
          }

          else
          {
            v48 = @"Unsuccessfully";
          }

          ef_publicDescription5 = [v62 ef_publicDescription];
          ef_publicDescription6 = [v16 ef_publicDescription];
          *buf = 138412802;
          v71 = v48;
          v72 = 2112;
          v73 = ef_publicDescription5;
          v74 = 2112;
          v75 = ef_publicDescription6;
          _os_log_impl(&dword_1B0389000, v47, OS_LOG_TYPE_DEFAULT, "%@ migrated message %@ attachment %@", buf, 0x20u);
        }

        os_activity_scope_leave(&state);
      }

      v14 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v14);
  }

  else
  {
    LOBYTE(v40) = 1;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v40;
}

- (BOOL)_checkContentProtectionState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  contentProtectionQueue = [(MFMessageAttachmentMigrator *)self contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MFMessageAttachmentMigrator__checkContentProtectionState__block_invoke;
  block[3] = &unk_1E7AA65C8;
  block[4] = &v11;
  dispatch_sync(contentProtectionQueue, block);

  v4 = *(v12 + 24);
  if ((v4 & 1) == 0)
  {
    migrationState = [(MFMessageAttachmentMigrator *)self migrationState];
    [migrationState lock];

    migrationState2 = [(MFMessageAttachmentMigrator *)self migrationState];
    [migrationState2 unlockWithCondition:1];

    v7 = +[MFMessageAttachmentMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Protected Index unavailable", v9, 2u);
    }
  }

  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __59__MFMessageAttachmentMigrator__checkContentProtectionState__block_invoke(uint64_t a1)
{
  result = EFProtectedDataAvailable();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_setMigratingAttachmentsOnThread:(BOOL)thread
{
  threadCopy = thread;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  if (threadCopy)
  {
    [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"com.apple.mail.attachmentMigrator"];
  }

  else
  {
    [threadDictionary removeObjectForKey:@"com.apple.mail.attachmentMigrator"];
  }
}

- (BOOL)_isMigratingAttachmentsOnThread
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"com.apple.mail.attachmentMigrator"];
  LOBYTE(currentThread) = v4 != 0;

  return currentThread;
}

+ (BOOL)migrateMaildropFileForMessage:(id)message mailDropMetadata:(id)metadata
{
  v39 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  metadataCopy = metadata;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = messageCopy;
    v36 = +[MFMailMessageLibrary defaultInstance];
    account = [v7 account];
    v35 = [v36 messageBasePathForAccount:account];

    v9 = MEMORY[0x1E699B5B0];
    globalMessageID = [v7 globalMessageID];
    account2 = [v7 account];
    v12 = [v9 messageDataDirectoryURLForGlobalMessageID:globalMessageID basePath:v35 purgeable:{objc_msgSend(account2, "supportsPurge")}];

    v34 = v12;
    v13 = [v12 URLByAppendingPathComponent:@"Attachments"];
    fileName = [metadataCopy fileName];
    ef_sanitizedFileName = [fileName ef_sanitizedFileName];
    v16 = [v13 URLByAppendingPathComponent:ef_sanitizedFileName];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v16 path];
    LODWORD(v9) = [defaultManager fileExistsAtPath:path];

    if (v9)
    {
      persistence = [v36 persistence];
      attachmentPersistenceManager = [persistence attachmentPersistenceManager];

      v21 = objc_alloc(MEMORY[0x1E699B590]);
      globalMessageID2 = [v7 globalMessageID];
      fileName2 = [metadataCopy fileName];
      directUrl = [metadataCopy directUrl];
      v25 = [v21 initWithGlobalMessageID:globalMessageID2 name:fileName2 mimePart:0 attachmentID:0 remoteURL:directUrl];

      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v35];
      v27 = [attachmentPersistenceManager persistAttachmentWithURL:v16 attachmentMetadata:v25 basePath:v26 error:0];

      if (v27)
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager2 removeItemAtURL:v16 error:0];
      }
    }

    else
    {
      v31 = +[MFMessageAttachmentMigrator log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v16;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "No file exists at this path to persist legacy file url: %@", buf, 0xCu);
      }

      LOBYTE(v27) = 0;
    }
  }

  else
  {
    v7 = +[MFMessageAttachmentMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138543362;
      v38 = v30;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Unable to migrateMaildropFileForMessage since current message with class %{public}@ is not MFLibraryMessage", buf, 0xCu);
    }

    LOBYTE(v27) = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v6 = [(MFMessageAttachmentMigrator *)self contentProtectionQueue:changed];
  dispatch_assert_queue_V2(v6);

  if (changed == 2)
  {
    v10 = +[MFMessageAttachmentMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Device about to lock", v12, 2u);
    }

    migrationState = [(MFMessageAttachmentMigrator *)self migrationState];
    [migrationState lock];

    migrationState2 = [(MFMessageAttachmentMigrator *)self migrationState];
    [migrationState2 unlockWithCondition:1];
  }

  else
  {
    if (changed)
    {
      return;
    }

    v7 = +[MFMessageAttachmentMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Protected Index became available", buf, 2u);
    }

    migrationState3 = [(MFMessageAttachmentMigrator *)self migrationState];
    [migrationState3 lock];

    migrationState2 = [(MFMessageAttachmentMigrator *)self migrationState];
    [migrationState2 unlockWithCondition:0];
  }
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

@end