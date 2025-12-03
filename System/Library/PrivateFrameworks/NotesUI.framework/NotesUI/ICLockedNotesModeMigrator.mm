@interface ICLockedNotesModeMigrator
+ (ICLockedNotesModeMigrator)sharedMigrator;
- (BOOL)account:(id)account hasNotesLockedWithMode:(signed __int16)mode;
- (BOOL)account:(id)account supportsMode:(signed __int16)mode;
- (ICLockedNotesModeMigrator)initWithWorkerContext:(id)context;
- (id)lockedNotesInAccount:(id)account;
- (id)unsafelyMigrateNote:(id)note;
- (id)unsafelyMigrateNotes:(id)notes progress:(id)progress;
- (void)authenticationStateDidAuthenticate:(id)authenticate;
- (void)authenticationStateDidDeauthenticate:(id)deauthenticate;
- (void)migrateLockedNotesInAccount:(id)account toMode:(signed __int16)mode window:(id)window completionHandler:(id)handler;
- (void)migrateNote:(id)note completionHandler:(id)handler;
- (void)migrateNoteToV1NeoIfNeeded:(id)needed completionHandler:(id)handler;
- (void)presentBackwardsCompatibilityAlertIfNeededForAccount:(id)account mode:(signed __int16)mode window:(id)window confirmHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)presentDivergedModeAlertForNote:(id)note mode:(signed __int16)mode window:(id)window completionHandler:(id)handler;
- (void)presentLockedNotesLearnMoreViewForAccount:(id)account window:(id)window;
- (void)presentLockedNotesMigrationPromptIfNeededForAccount:(id)account window:(id)window completionHandler:(id)handler;
- (void)presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:(id)account window:(id)window completionHandler:(id)handler;
- (void)presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:(id)account window:(id)window completionHandler:(id)handler;
- (void)showMigrationPromptAndMigrateIfNeededForAccount:(id)account window:(id)window;
@end

@implementation ICLockedNotesModeMigrator

- (ICLockedNotesModeMigrator)initWithWorkerContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ICLockedNotesModeMigrator;
  v6 = [(ICLockedNotesModeMigrator *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workerContext, context);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.notes.locked-notes-mode-migrator", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E69B7470];
    mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
    [defaultCenter addObserver:v7 selector:sel_authenticationStateDidAuthenticate_ name:v13 object:mEMORY[0x1E69B76D0]];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *MEMORY[0x1E69B7478];
    mEMORY[0x1E69B76D0]2 = [MEMORY[0x1E69B76D0] sharedState];
    [defaultCenter2 addObserver:v7 selector:sel_authenticationStateDidDeauthenticate_ name:v16 object:mEMORY[0x1E69B76D0]2];
  }

  return v7;
}

+ (ICLockedNotesModeMigrator)sharedMigrator
{
  if (sharedMigrator_onceToken != -1)
  {
    +[ICLockedNotesModeMigrator sharedMigrator];
  }

  v3 = sharedMigrator_sharedMigrator;

  return v3;
}

void __43__ICLockedNotesModeMigrator_sharedMigrator__block_invoke()
{
  v0 = [MEMORY[0x1E69B7800] sharedContext];
  v3 = [v0 workerManagedObjectContext];

  v1 = [[ICLockedNotesModeMigrator alloc] initWithWorkerContext:v3];
  v2 = sharedMigrator_sharedMigrator;
  sharedMigrator_sharedMigrator = v1;
}

- (void)migrateLockedNotesInAccount:(id)account toMode:(signed __int16)mode window:(id)window completionHandler:(id)handler
{
  modeCopy = mode;
  accountCopy = account;
  windowCopy = window;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator migrateLockedNotesInAccount:accountCopy toMode:? window:? completionHandler:?];
  }

  if (modeCopy)
  {
    [accountCopy setResolvedLockedNotesMode:modeCopy];
    managedObjectContext = [accountCopy managedObjectContext];
    [managedObjectContext ic_saveWithLogDescription:@"Saved after setting locked notes mode"];

    v15 = [[ICLongRunningTaskController alloc] initWithWindow:windowCopy intervalBeforeOpeningProgressDialog:1.0];
    v16 = __ICLocalizedFrameworkString_impl(@"Changing Method…", @"Changing Method…", 0, 1);
    [(ICLongRunningTaskController *)v15 setProgressString:v16];

    [(ICLongRunningTaskController *)v15 setIndeterminate:1];
    [(ICLongRunningTaskController *)v15 setShouldShowCircularProgress:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke;
    v20[3] = &unk_1E8469148;
    v20[4] = self;
    v21 = accountCopy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke_4;
    v18[3] = &unk_1E8469B88;
    v19 = handlerCopy;
    [(ICLongRunningTaskController *)v15 startTask:v20 completionBlock:v18];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICLockedNotesModeMigrator migrateLockedNotesInAccount:accountCopy toMode:? window:? completionHandler:?];
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AE38]);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v15);
    }
  }
}

void __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke_2;
  block[3] = &unk_1E8468D98;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  dispatch_sync(v4, block);
}

void __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  v3 = [*(a1 + 40) workerContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke_3;
  v6[3] = &unk_1E8468D98;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 performBlockAndWait:v6];
}

void __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) workerContext];
  [v2 refreshAllObjects];

  v3 = [*(a1 + 32) workerContext];
  v7 = [v3 objectWithID:*(a1 + 40)];

  v4 = [*(a1 + 32) lockedNotesInAccount:v7];
  v5 = [*(a1 + 32) unsafelyMigrateNotes:v4 progress:*(a1 + 48)];
  v6 = [*(a1 + 32) workerContext];
  [v6 ic_saveWithLogDescription:@"Saved after migrating notes"];
}

uint64_t __89__ICLockedNotesModeMigrator_migrateLockedNotesInAccount_toMode_window_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)migrateNote:(id)note completionHandler:(id)handler
{
  noteCopy = note;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator migrateNote:noteCopy completionHandler:?];
  }

  queue = [(ICLockedNotesModeMigrator *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICLockedNotesModeMigrator_migrateNote_completionHandler___block_invoke;
  block[3] = &unk_1E846BA48;
  v13 = noteCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = noteCopy;
  dispatch_async(queue, block);
}

void __59__ICLockedNotesModeMigrator_migrateNote_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  v3 = [*(a1 + 40) workerContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ICLockedNotesModeMigrator_migrateNote_completionHandler___block_invoke_2;
  v6[3] = &unk_1E846BA48;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 performBlockAndWait:v6];
}

void __59__ICLockedNotesModeMigrator_migrateNote_completionHandler___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) workerContext];
  [v2 refreshAllObjects];

  v3 = [*(a1 + 32) workerContext];
  v4 = [v3 objectWithID:*(a1 + 40)];

  v5 = *(a1 + 32);
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 unsafelyMigrateNotes:v6 progress:0];

  v8 = [*(a1 + 32) workerContext];
  [v8 ic_saveWithLogDescription:@"Saved after migrating note"];

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = [v7 firstObject];
    (*(v9 + 16))(v9, v10);
  }
}

- (void)migrateNoteToV1NeoIfNeeded:(id)needed completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator migrateNoteToV1NeoIfNeeded:neededCopy completionHandler:?];
  }

  if (([neededCopy isPasswordProtected] & 1) == 0)
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    shortLoggingDescription = [neededCopy shortLoggingDescription];
    v30 = 138412290;
    v31 = shortLoggingDescription;
    v18 = "Not migrating note to v1 Neo because it's not password-protected {note: %@}";
LABEL_15:
    _os_log_impl(&dword_1D4171000, v16, OS_LOG_TYPE_INFO, v18, &v30, 0xCu);

    goto LABEL_16;
  }

  account = [neededCopy account];
  accountData = [account accountData];
  supportsV1Neo = [accountData supportsV1Neo];

  if ((supportsV1Neo & 1) == 0)
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    shortLoggingDescription = [neededCopy shortLoggingDescription];
    v30 = 138412290;
    v31 = shortLoggingDescription;
    v18 = "Not migrating note to v1 Neo because its account doesn't support it {note: %@}";
    goto LABEL_15;
  }

  account2 = [neededCopy account];
  cryptoStrategy = [account2 cryptoStrategy];
  v1NeoStrategy = [cryptoStrategy v1NeoStrategy];
  isAuthenticated = [v1NeoStrategy isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    shortLoggingDescription = [neededCopy shortLoggingDescription];
    v30 = 138412290;
    v31 = shortLoggingDescription;
    v18 = "Not migrating note to v1 Neo because its account isn't authenticated for v1 Neo {note: %@}";
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69B7728] cipherVersionForObject:neededCopy])
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICLockedNotesModeMigrator migrateNoteToV1NeoIfNeeded:neededCopy completionHandler:?];
    }
  }

  else
  {
    account3 = [neededCopy account];
    cryptoStrategy2 = [account3 cryptoStrategy];
    v21 = [cryptoStrategy2 hasSameKeyAsObject:neededCopy];

    if (v21)
    {
      attachments = [neededCopy attachments];
      v23 = [attachments ic_containsObjectPassingTest:&__block_literal_global_40];

      if (!v23)
      {
        authenticatedAt = [(ICLockedNotesModeMigrator *)self authenticatedAt];
        modificationDate = [neededCopy modificationDate];
        v26 = [authenticatedAt ic_isLaterThanDate:modificationDate];

        v27 = os_log_create("com.apple.notes", "Crypto");
        v28 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [ICLockedNotesModeMigrator migrateNoteToV1NeoIfNeeded:neededCopy completionHandler:?];
          }

          if (handlerCopy)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            shortLoggingDescription2 = [neededCopy shortLoggingDescription];
            v30 = 138412290;
            v31 = shortLoggingDescription2;
            _os_log_impl(&dword_1D4171000, v28, OS_LOG_TYPE_INFO, "Migrating note to v1 Neo… {note: %@}", &v30, 0xCu);
          }

          [(ICLockedNotesModeMigrator *)self migrateNote:neededCopy completionHandler:handlerCopy];
        }

        goto LABEL_18;
      }

      v16 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [ICLockedNotesModeMigrator migrateNoteToV1NeoIfNeeded:neededCopy completionHandler:?];
      }
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [ICLockedNotesModeMigrator migrateNoteToV1NeoIfNeeded:neededCopy completionHandler:?];
      }
    }
  }

LABEL_16:

  if (handlerCopy)
  {
LABEL_17:
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_18:
}

- (id)unsafelyMigrateNotes:(id)notes progress:(id)progress
{
  v47 = *MEMORY[0x1E69E9840];
  notesCopy = notes;
  progressCopy = progress;
  v8 = *MEMORY[0x1E69DDA98];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v33 = [v8 beginBackgroundTaskWithName:v10 expirationHandler:&__block_literal_global_42_0];

  mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
  [mEMORY[0x1E69B76D0] beginBlockingDeauthentication];

  array = [MEMORY[0x1E695DF70] array];
  [progressCopy setTotalUnitCount:{objc_msgSend(notesCopy, "count")}];
  v12 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(notesCopy, "count")}];
    *buf = 138412290;
    v41 = v13;
    _os_log_impl(&dword_1D4171000, v12, OS_LOG_TYPE_INFO, "Migrating locked notes… {#notes: %@}", buf, 0xCu);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = notesCopy;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    obj = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [(ICLockedNotesModeMigrator *)self unsafelyMigrateNote:v19];
        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        if (v20)
        {
          [array addObject:v20];
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:@"ICLockedNotesModeMigratorDidMigrateNote" object:self];

          mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
          crossProcessChangeCoordinator = [mEMORY[0x1E69B7800] crossProcessChangeCoordinator];
          [crossProcessChangeCoordinator postCrossProcessNotificationName:@"ICLockedNotesModeMigratorDidMigrateNote"];
        }

        v24 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          shortLoggingDescription = [v19 shortLoggingDescription];
          shortLoggingDescription2 = [v20 shortLoggingDescription];
          *buf = 138412802;
          v41 = shortLoggingDescription;
          v42 = 2112;
          v43 = shortLoggingDescription2;
          v44 = 2112;
          v45 = progressCopy;
          _os_log_impl(&dword_1D4171000, v24, OS_LOG_TYPE_INFO, "Migrated note {note: %@, newNote: %@, progress: %@}", buf, 0x20u);
        }
      }

      v14 = obj;
      v16 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v16);
  }

  mEMORY[0x1E69B76D0]2 = [MEMORY[0x1E69B76D0] sharedState];
  [mEMORY[0x1E69B76D0]2 endBlockingDeauthentication];

  [*MEMORY[0x1E69DDA98] endBackgroundTask:v33];
  v28 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(array, "count")}];
    *buf = 138412546;
    v41 = v29;
    v42 = 2112;
    v43 = v30;
    _os_log_impl(&dword_1D4171000, v28, OS_LOG_TYPE_INFO, "Migrated locked notes {#notes: %@, #migratedNotes: %@}", buf, 0x16u);
  }

  v31 = [array copy];

  return v31;
}

void __59__ICLockedNotesModeMigrator_unsafelyMigrateNotes_progress___block_invoke()
{
  v0 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __59__ICLockedNotesModeMigrator_unsafelyMigrateNotes_progress___block_invoke_cold_1();
  }

  v1 = [MEMORY[0x1E69B76D0] sharedState];
  [v1 endBlockingDeauthentication];
}

- (id)unsafelyMigrateNote:(id)note
{
  v20 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator unsafelyMigrateNote:noteCopy];
  }

  v5 = [MEMORY[0x1E69B7728] cipherVersionForObject:noteCopy];
  v6 = [MEMORY[0x1E69B7728] userSelectedCipherVersionForObject:noteCopy];
  if (([noteCopy isPasswordProtected] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [noteCopy shortLoggingDescription];
      v18 = 138412290;
      v19 = shortLoggingDescription;
      v9 = "Cannot migrate note because it's not password-protected — skipping {note: %@}";
      goto LABEL_9;
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  if (v6 == v5)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [noteCopy shortLoggingDescription];
      v18 = 138412290;
      v19 = shortLoggingDescription;
      v9 = "Note doesn't require migration — skipping {note: %@}";
LABEL_9:
      _os_log_impl(&dword_1D4171000, v7, OS_LOG_TYPE_INFO, v9, &v18, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (([noteCopy isAuthenticated] & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    shortLoggingDescription = [noteCopy shortLoggingDescription];
    v18 = 138412290;
    v19 = shortLoggingDescription;
    v9 = "Cannot migrate note because it's not authenticated — skipping {note: %@}";
    goto LABEL_9;
  }

  account = [noteCopy account];
  isAuthenticated = [account isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    shortLoggingDescription = [noteCopy shortLoggingDescription];
    v18 = 138412290;
    v19 = shortLoggingDescription;
    v9 = "Cannot migrate note because its account is not authenticated — skipping {note: %@}";
    goto LABEL_9;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [MEMORY[0x1E69B77F0] duplicateNote:noteCopy isPasswordProtected:1 removeOriginalNote:1];
  v10 = v15;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICLockedNotesModeMigrator unsafelyMigrateNote:noteCopy];
    }
  }

  objc_autoreleasePoolPop(v14);
LABEL_11:

  return v10;
}

- (BOOL)account:(id)account supportsMode:(signed __int16)mode
{
  modeCopy = mode;
  accountCopy = account;
  v6 = accountCopy;
  if (modeCopy >= 2)
  {
    if (modeCopy != 2)
    {
      goto LABEL_9;
    }

    if (![accountCopy canPasswordProtectNotes])
    {
      LOBYTE(modeCopy) = 0;
      goto LABEL_9;
    }

    if ([v6 accountType] == 3)
    {
      LOBYTE(modeCopy) = 1;
      goto LABEL_9;
    }

    isPrimaryiCloudAccount = [v6 isPrimaryiCloudAccount];
  }

  else
  {
    isPrimaryiCloudAccount = [accountCopy canPasswordProtectNotes];
  }

  LOBYTE(modeCopy) = isPrimaryiCloudAccount;
LABEL_9:

  return modeCopy & 1;
}

- (BOOL)account:(id)account hasNotesLockedWithMode:(signed __int16)mode
{
  v5 = [(ICLockedNotesModeMigrator *)self lockedNotesInAccount:account];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__ICLockedNotesModeMigrator_account_hasNotesLockedWithMode___block_invoke;
  v7[3] = &__block_descriptor_34_e23_B32__0__ICNote_8Q16_B24l;
  modeCopy = mode;
  LOBYTE(mode) = [v5 ic_containsObjectPassingTest:v7];

  return mode;
}

BOOL __60__ICLockedNotesModeMigrator_account_hasNotesLockedWithMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x1E69B7728] shouldAuthenticateWithCustomPasswordForObject:v3] && *(a1 + 32) == 1)
  {
    v4 = 1;
  }

  else if ([MEMORY[0x1E69B7728] shouldAuthenticateWithDevicePasswordForObject:v3])
  {
    v4 = *(a1 + 32) == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)lockedNotesInAccount:(id)account
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E69B7700];
  accountCopy = account;
  predicateForVisibleObjects = [v4 predicateForVisibleObjects];
  predicateForPasswordProtectedObjects = [MEMORY[0x1E69B7700] predicateForPasswordProtectedObjects];
  v17[1] = predicateForPasswordProtectedObjects;
  v8 = MEMORY[0x1E69B77F0];
  identifier = [accountCopy identifier];
  v10 = [v8 predicateForNotesInAccountWithIdentifier:identifier];
  v17[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v12 = [v3 andPredicateWithSubpredicates:v11];

  v13 = MEMORY[0x1E69B77F0];
  managedObjectContext = [accountCopy managedObjectContext];

  v15 = [v13 notesMatchingPredicate:v12 context:managedObjectContext];

  return v15;
}

- (void)presentBackwardsCompatibilityAlertIfNeededForAccount:(id)account mode:(signed __int16)mode window:(id)window confirmHandler:(id)handler cancelHandler:(id)cancelHandler
{
  modeCopy = mode;
  accountCopy = account;
  windowCopy = window;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v15 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentBackwardsCompatibilityAlertIfNeededForAccount:accountCopy mode:? window:? confirmHandler:? cancelHandler:?];
  }

  if (modeCopy == 2)
  {
    mEMORY[0x1E69B7708] = [MEMORY[0x1E69B7708] sharedController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __123__ICLockedNotesModeMigrator_presentBackwardsCompatibilityAlertIfNeededForAccount_mode_window_confirmHandler_cancelHandler___block_invoke;
    v19[3] = &unk_1E846D4E0;
    v20 = accountCopy;
    v22 = handlerCopy;
    v23 = cancelHandlerCopy;
    v21 = windowCopy;
    [mEMORY[0x1E69B7708] messageForAccount:v20 minimumNotesVersion:9 completionHandler:v19];
  }

  else if (modeCopy == 1)
  {
    v16 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICLockedNotesModeMigrator presentBackwardsCompatibilityAlertIfNeededForAccount:mode:window:confirmHandler:cancelHandler:];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, windowCopy);
    }
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICLockedNotesModeMigrator presentBackwardsCompatibilityAlertIfNeededForAccount:mode:window:confirmHandler:cancelHandler:];
    }

    if (cancelHandlerCopy)
    {
      (*(cancelHandlerCopy + 2))(cancelHandlerCopy, windowCopy);
    }
  }
}

void __123__ICLockedNotesModeMigrator_presentBackwardsCompatibilityAlertIfNeededForAccount_mode_window_confirmHandler_cancelHandler___block_invoke(id *a1, void *a2)
{
  v10 = a2;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[5];
  *&v7 = v3;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v7;
  v12 = v8;
  v9 = v10;
  performBlockOnMainThread();
}

void __123__ICLockedNotesModeMigrator_presentBackwardsCompatibilityAlertIfNeededForAccount_mode_window_confirmHandler_cancelHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = os_log_create("com.apple.notes", "Crypto");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __123__ICLockedNotesModeMigrator_presentBackwardsCompatibilityAlertIfNeededForAccount_mode_window_confirmHandler_cancelHandler___block_invoke_2_cold_1();
    }

    v5 = [ICAuthenticationAlert devicePasswordIncompatibleConfirmationAlertWithAccount:a1[5] incompatibilityMessage:a1[4]];
    [v5 setActionHandler:a1[7]];
    [v5 setDismissHandler:a1[8]];
    [v5 presentInWindow:a1[6] completionHandler:0];
  }

  else
  {
    if (v4)
    {
      __123__ICLockedNotesModeMigrator_presentBackwardsCompatibilityAlertIfNeededForAccount_mode_window_confirmHandler_cancelHandler___block_invoke_2_cold_2();
    }

    v6 = a1[7];
    if (v6)
    {
      (*(v6 + 16))(v6, a1[6]);
    }
  }
}

- (void)presentDivergedModeAlertForNote:(id)note mode:(signed __int16)mode window:(id)window completionHandler:(id)handler
{
  modeCopy = mode;
  noteCopy = note;
  windowCopy = window;
  handlerCopy = handler;
  v12 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentDivergedModeAlertForNote:noteCopy mode:? window:? completionHandler:?];
  }

  if (modeCopy == 2)
  {
    mEMORY[0x1E69B7708] = [MEMORY[0x1E69B7708] sharedController];
    account = [noteCopy account];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__ICLockedNotesModeMigrator_presentDivergedModeAlertForNote_mode_window_completionHandler___block_invoke;
    v19[3] = &unk_1E8469B10;
    v20 = noteCopy;
    v21 = windowCopy;
    v22 = handlerCopy;
    [mEMORY[0x1E69B7708] messageForAccount:account minimumNotesVersion:9 completionHandler:v19];
  }

  else if (modeCopy == 1)
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICLockedNotesModeMigrator presentDivergedModeAlertForNote:mode:window:completionHandler:];
    }

    account2 = [noteCopy account];
    v15 = [ICAuthenticationAlert updateDivergedDevicePasswordModeActionAlertWithAccount:account2];

    [v15 presentInWindow:windowCopy completionHandler:handlerCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICLockedNotesModeMigrator presentDivergedModeAlertForNote:mode:window:completionHandler:];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

void __91__ICLockedNotesModeMigrator_presentDivergedModeAlertForNote_mode_window_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v4 = v3;
  performBlockOnMainThread();
}

void __91__ICLockedNotesModeMigrator_presentDivergedModeAlertForNote_mode_window_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __91__ICLockedNotesModeMigrator_presentDivergedModeAlertForNote_mode_window_completionHandler___block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 32) account];
  v4 = [ICAuthenticationAlert updateDivergedCustomPasswordModeActionAlertWithAccount:v3 incompatibilityMessage:*(a1 + 40)];

  [v4 presentInWindow:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:(id)account window:(id)window completionHandler:(id)handler
{
  accountCopy = account;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:accountCopy window:? completionHandler:?];
  }

  if ([(ICLockedNotesModeMigrator *)self account:accountCopy supportsMode:2])
  {
    [NSClassFromString(&cfstr_Iclockednotesw.isa) presentForAccount:accountCopy skipsAlerts:1 window:windowCopy completion:handlerCopy];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICLockedNotesModeMigrator presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:window:completionHandler:];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, [accountCopy resolvedLockedNotesMode]);
    }
  }
}

- (void)presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:(id)account window:(id)window completionHandler:(id)handler
{
  accountCopy = account;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:accountCopy window:? completionHandler:?];
  }

  if ([(ICLockedNotesModeMigrator *)self account:accountCopy supportsMode:2])
  {
    [NSClassFromString(&cfstr_Iclockednotess.isa) presentForAccount:accountCopy skipsAlerts:1 window:windowCopy completion:handlerCopy];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICLockedNotesModeMigrator presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:window:completionHandler:];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, [accountCopy resolvedLockedNotesMode]);
    }
  }
}

- (void)presentLockedNotesMigrationPromptIfNeededForAccount:(id)account window:(id)window completionHandler:(id)handler
{
  accountCopy = account;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentLockedNotesMigrationPromptIfNeededForAccount:accountCopy window:? completionHandler:?];
  }

  if (![(ICLockedNotesModeMigrator *)self account:accountCopy supportsMode:2])
  {
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICLockedNotesModeMigrator presentLockedNotesMigrationPromptIfNeededForAccount:window:completionHandler:];
    }

    goto LABEL_9;
  }

  accountData = [accountCopy accountData];
  lockedNotesMode = [accountData lockedNotesMode];

  if (!lockedNotesMode)
  {
    if ([MEMORY[0x1E69B77F0] countOfVisiblePasswordProtectedNotesInAccount:accountCopy] || objc_msgSend(accountCopy, "hasPassphraseSet"))
    {
      if (![ICAuthenticationAlert shouldPresentSwitchToDevicePasswordPromptForAccount:accountCopy])
      {
        v14 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [ICLockedNotesModeMigrator presentLockedNotesMigrationPromptIfNeededForAccount:window:completionHandler:];
        }

        goto LABEL_9;
      }

      [ICAuthenticationAlert markSwitchToDevicePasswordPromptPresentedForAccount:accountCopy];
      v15 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICLockedNotesModeMigrator presentLockedNotesMigrationPromptIfNeededForAccount:window:completionHandler:];
      }

      v16 = NSClassFromString(&cfstr_Iclockednotess.isa);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __106__ICLockedNotesModeMigrator_presentLockedNotesMigrationPromptIfNeededForAccount_window_completionHandler___block_invoke;
      v22[3] = &unk_1E846D508;
      v23 = handlerCopy;
      [(objc_class *)v16 presentForAccount:accountCopy skipsAlerts:0 window:windowCopy completion:v22];
      v17 = v23;
    }

    else
    {
      v18 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [ICLockedNotesModeMigrator presentLockedNotesMigrationPromptIfNeededForAccount:window:completionHandler:];
      }

      v19 = NSClassFromString(&cfstr_Iclockednotesw.isa);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __106__ICLockedNotesModeMigrator_presentLockedNotesMigrationPromptIfNeededForAccount_window_completionHandler___block_invoke_59;
      v20[3] = &unk_1E846D508;
      v21 = handlerCopy;
      [(objc_class *)v19 presentForAccount:accountCopy skipsAlerts:0 window:windowCopy completion:v20];
      v17 = v21;
    }

    goto LABEL_11;
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentLockedNotesMigrationPromptIfNeededForAccount:window:completionHandler:];
  }

LABEL_9:

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, [accountCopy resolvedLockedNotesMode]);
  }

LABEL_11:
}

uint64_t __106__ICLockedNotesModeMigrator_presentLockedNotesMigrationPromptIfNeededForAccount_window_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __106__ICLockedNotesModeMigrator_presentLockedNotesMigrationPromptIfNeededForAccount_window_completionHandler___block_invoke_59(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)showMigrationPromptAndMigrateIfNeededForAccount:(id)account window:(id)window
{
  accountCopy = account;
  windowCopy = window;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ICLockedNotesModeMigrator_showMigrationPromptAndMigrateIfNeededForAccount_window___block_invoke;
  v10[3] = &unk_1E846D558;
  objc_copyWeak(&v13, &location);
  v8 = accountCopy;
  v11 = v8;
  v9 = windowCopy;
  v12 = v9;
  [(ICLockedNotesModeMigrator *)self presentLockedNotesMigrationPromptIfNeededForAccount:v8 window:v9 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __84__ICLockedNotesModeMigrator_showMigrationPromptAndMigrateIfNeededForAccount_window___block_invoke(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a2 == 2 && WeakRetained)
  {
    v10 = WeakRetained;
    v5 = [a1[4] accountData];
    v6 = [v5 lockedNotesMode];

    if (!v6)
    {
      v7 = [ICAuthenticationPrompt promptForChangingMode:2 account:a1[4]];
      v8 = +[ICAuthentication shared];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __84__ICLockedNotesModeMigrator_showMigrationPromptAndMigrateIfNeededForAccount_window___block_invoke_2;
      v11[3] = &unk_1E846D530;
      v9 = a1[5];
      v12 = a1[4];
      v14 = 2;
      v13 = a1[5];
      [v8 authenticateWithPrompt:v7 displayWindow:v9 completionHandler:v11];
    }
  }

  else
  {
  }
}

void __84__ICLockedNotesModeMigrator_showMigrationPromptAndMigrateIfNeededForAccount_window___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v12 = v2;
    v13 = v3;
    v5 = +[ICLockedNotesModeMigrator sharedMigrator];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__ICLockedNotesModeMigrator_showMigrationPromptAndMigrateIfNeededForAccount_window___block_invoke_3;
    v9[3] = &unk_1E8469148;
    v10 = v7;
    v11 = *(a1 + 40);
    [v5 migrateLockedNotesInAccount:v10 toMode:v6 window:v8 completionHandler:v9];
  }
}

void __84__ICLockedNotesModeMigrator_showMigrationPromptAndMigrateIfNeededForAccount_window___block_invoke_3(uint64_t a1)
{
  v2 = [ICAuthenticationAlert switchedModeInfoAlertWithAccount:*(a1 + 32)];
  [v2 presentInWindow:*(a1 + 40) completionHandler:0];
}

- (void)presentLockedNotesLearnMoreViewForAccount:(id)account window:(id)window
{
  windowCopy = window;
  accountCopy = account;
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICLockedNotesModeMigrator presentLockedNotesLearnMoreViewForAccount:window:];
  }

  [NSClassFromString(&cfstr_Iclockednotesl.isa) presentForAccount:accountCopy window:windowCopy];
}

- (void)authenticationStateDidAuthenticate:(id)authenticate
{
  authenticatedAt = [(ICLockedNotesModeMigrator *)self authenticatedAt];

  if (!authenticatedAt)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [(ICLockedNotesModeMigrator *)self setAuthenticatedAt:v5];
  }
}

- (void)authenticationStateDidDeauthenticate:(id)deauthenticate
{
  mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
  isAuthenticated = [mEMORY[0x1E69B76D0] isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {

    [(ICLockedNotesModeMigrator *)self setAuthenticatedAt:0];
  }
}

- (void)migrateLockedNotesInAccount:(void *)a1 toMode:window:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  v2 = NSStringFromAccountDataLockedNotesMode();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

- (void)migrateLockedNotesInAccount:(void *)a1 toMode:window:completionHandler:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1D4171000, v2, v3, "Cannot migrate locked notes to unknown mode {account: %@}", v4, v5, v6, v7, v8);
}

- (void)migrateNote:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)migrateNoteToV1NeoIfNeeded:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)migrateNoteToV1NeoIfNeeded:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)migrateNoteToV1NeoIfNeeded:(void *)a1 completionHandler:.cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)migrateNoteToV1NeoIfNeeded:(void *)a1 completionHandler:.cold.4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)migrateNoteToV1NeoIfNeeded:(void *)a1 completionHandler:.cold.5(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unsafelyMigrateNote:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)unsafelyMigrateNote:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1D4171000, v2, v3, "Failed to migrate note — skipping {note: %@}", v4, v5, v6, v7, v8);
}

- (void)presentBackwardsCompatibilityAlertIfNeededForAccount:(void *)a1 mode:window:confirmHandler:cancelHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  v2 = NSStringFromAccountDataLockedNotesMode();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

- (void)presentDivergedModeAlertForNote:(void *)a1 mode:window:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  v2 = NSStringFromAccountDataLockedNotesMode();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

- (void)presentLockedNotesWelcomeMigrationPromptIfSupportedForAccount:(void *)a1 window:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)presentLockedNotesSwitchMigrationPromptIfSupportedForAccount:(void *)a1 window:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)presentLockedNotesMigrationPromptIfNeededForAccount:(void *)a1 window:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

@end