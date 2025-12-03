@interface ICCryptoConvergenceController
+ (ICCryptoConvergenceController)sharedController;
- (BOOL)convergeAttachmentsInNoteWithID:(id)d configuration:(id)configuration;
- (BOOL)convergeNotesInAccountWithID:(id)d configuration:(id)configuration progress:(id)progress;
- (BOOL)unsafelyConvergeAttachment:(id)attachment configuration:(id)configuration;
- (BOOL)unsafelyConvergeAttachmentsInNote:(id)note configuration:(id)configuration;
- (BOOL)unsafelyConvergeNote:(id)note configuration:(id)configuration;
- (BOOL)unsafelyConvergeNotesInAccount:(id)account configuration:(id)configuration;
- (ICCryptoConvergenceController)initWithWorkerContext:(id)context;
- (void)authenticationStateDidDeauthenticate:(id)deauthenticate;
- (void)cancelAndWaitWithReason:(id)reason;
@end

@implementation ICCryptoConvergenceController

- (ICCryptoConvergenceController)initWithWorkerContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = ICCryptoConvergenceController;
  v6 = [(ICCryptoConvergenceController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workerContext, context);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = +[ICAuthenticationState sharedState];
    [defaultCenter addObserver:v7 selector:sel_authenticationStateDidDeauthenticate_ name:@"ICAuthenticationStateDidDeauthenticateNotification" object:v9];
  }

  return v7;
}

+ (ICCryptoConvergenceController)sharedController
{
  v2 = +[ICNoteContext hasSharedContext];
  v3 = _sharedController;
  if (v2 && _sharedController == 0)
  {
    if (sharedController_onceToken_0 != -1)
    {
      +[ICCryptoConvergenceController sharedController];
    }

    v3 = _sharedController;
  }

  return v3;
}

void __49__ICCryptoConvergenceController_sharedController__block_invoke()
{
  v0 = +[ICNoteContext sharedContext];
  v3 = [v0 workerManagedObjectContext];

  v1 = [[ICCryptoConvergenceController alloc] initWithWorkerContext:v3];
  v2 = _sharedController;
  _sharedController = v1;
}

- (BOOL)convergeNotesInAccountWithID:(id)d configuration:(id)configuration progress:(id)progress
{
  dCopy = d;
  progressCopy = progress;
  v10 = [configuration copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progress = [(ICCryptoConvergenceController *)selfCopy progress];
  if (progress && (v13 = [v10 isUserInitiated], progress, (v13 & 1) == 0))
  {
    objc_sync_exit(selfCopy);

    v18 = 0;
  }

  else
  {
    progress2 = [(ICCryptoConvergenceController *)selfCopy progress];

    if (progress2)
    {
      [(ICCryptoConvergenceController *)selfCopy cancelAndWaitWithReason:@"User-initiated operation"];
    }

    progress3 = [(ICCryptoConvergenceController *)selfCopy progress];

    if (progress3)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.progress) == nil)" functionName:"-[ICCryptoConvergenceController convergeNotesInAccountWithID:configuration:progress:]" simulateCrash:1 showAlert:0 format:{@"Expected nil value for '%s'", "self.progress"}];
    }

    v16 = progressCopy;
    if (!progressCopy)
    {
      v16 = objc_alloc_init(MEMORY[0x277CCAC48]);
    }

    [(ICCryptoConvergenceController *)selfCopy setProgress:v16];
    if (!progressCopy)
    {
    }

    objc_sync_exit(selfCopy);

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    workerContext = [(ICCryptoConvergenceController *)selfCopy workerContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__ICCryptoConvergenceController_convergeNotesInAccountWithID_configuration_progress___block_invoke;
    v20[3] = &unk_2781960A8;
    v20[4] = selfCopy;
    v21 = dCopy;
    v22 = v10;
    v23 = &v24;
    [workerContext performBlockAndWait:v20];

    v18 = *(v25 + 24);
    _Block_object_dispose(&v24, 8);
  }

  return v18 & 1;
}

void __85__ICCryptoConvergenceController_convergeNotesInAccountWithID_configuration_progress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workerContext];
  [v2 refreshAllObjects];

  objc_opt_class();
  v3 = [*(a1 + 32) workerContext];
  v4 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v5 = ICCheckedDynamicCast();

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) unsafelyConvergeNotesInAccount:v5 configuration:*(a1 + 48)];
    v6 = [*(a1 + 32) workerContext];
    [v6 refreshAllObjects];

    v7 = [*(a1 + 32) progress];

    if (!v7)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.progress) != nil)" functionName:"-[ICCryptoConvergenceController convergeNotesInAccountWithID:configuration:progress:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.progress"}];
    }

    [*(a1 + 32) setProgress:0];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __85__ICCryptoConvergenceController_convergeNotesInAccountWithID_configuration_progress___block_invoke_cold_1((a1 + 40), a1, v8);
    }
  }
}

- (BOOL)unsafelyConvergeNotesInAccount:(id)account configuration:(id)configuration
{
  v61 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  configurationCopy = configuration;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:accountCopy configuration:?];
  }

  if (([accountCopy isAuthenticated] & 1) == 0)
  {
    passphrase = [configurationCopy passphrase];
    v10 = [passphrase length];

    if (v10)
    {
      v11 = +[ICAuthenticationState sharedState];
      [v11 beginBlockingDeauthentication];

      cryptoStrategy = [accountCopy cryptoStrategy];
      passphrase2 = [configurationCopy passphrase];
      [cryptoStrategy authenticateWithPassphrase:passphrase2];

      v14 = +[ICAuthenticationState sharedState];
      [v14 endBlockingDeauthentication];
    }
  }

  v1MainKey = [configurationCopy v1MainKey];
  if (v1MainKey)
  {
    [configurationCopy setV1MainKey:v1MainKey];
  }

  else
  {
    v16 = +[ICAuthenticationState sharedState];
    identifier = [accountCopy identifier];
    v18 = [v16 cachedMainKeyForIdentifier:identifier];
    [configurationCopy setV1MainKey:v18];
  }

  v1NeoMainKey = [configurationCopy v1NeoMainKey];
  if (v1NeoMainKey)
  {
    [configurationCopy setV1NeoMainKey:v1NeoMainKey];
  }

  else
  {
    v20 = +[ICAuthenticationState sharedState];
    accountData = [accountCopy accountData];
    identifier2 = [accountData identifier];
    v23 = [v20 cachedMainKeyForIdentifier:identifier2];
    [configurationCopy setV1NeoMainKey:v23];
  }

  v1MainKey2 = [configurationCopy v1MainKey];
  if (v1MainKey2)
  {
  }

  else
  {
    v1NeoMainKey2 = [configurationCopy v1NeoMainKey];

    if (!v1NeoMainKey2)
    {
      v50 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:accountCopy configuration:?];
      }

      v32 = 0;
      obj = v50;
      goto LABEL_38;
    }
  }

  passwordProtectedNotes = [accountCopy passwordProtectedNotes];
  v27 = [passwordProtectedNotes count];
  progress = [(ICCryptoConvergenceController *)self progress];
  [progress setTotalUnitCount:v27];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = passwordProtectedNotes;
  v29 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v29)
  {
    v32 = 1;
    goto LABEL_35;
  }

  v30 = v29;
  v31 = *v55;
  v32 = 1;
  v52 = accountCopy;
  while (2)
  {
    v33 = configurationCopy;
    for (i = 0; i != v30; ++i)
    {
      if (*v55 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v54 + 1) + 8 * i);
      progress2 = [(ICCryptoConvergenceController *)self progress];
      isCancelled = [progress2 isCancelled];

      if (isCancelled)
      {
        v49 = os_log_create("com.apple.notes", "Crypto");
        accountCopy = v52;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:v52 configuration:?];
        }

        configurationCopy = v33;
        goto LABEL_35;
      }

      v38 = +[ICAuthenticationState sharedState];
      [v38 beginBlockingDeauthentication];

      v39 = +[ICAuthenticationState sharedState];
      isAuthenticated = [v39 isAuthenticated];

      if (isAuthenticated)
      {
        v41 = [(ICCryptoConvergenceController *)self unsafelyConvergeNote:v35 configuration:v33];
        v42 = +[ICAuthenticationState sharedState];
        [v42 endBlockingDeauthentication];

        if (v41)
        {
          workerContext = [(ICCryptoConvergenceController *)self workerContext];
          shortLoggingDescription = [v35 shortLoggingDescription];
          v45 = [workerContext ic_saveWithLogDescription:{@"Saved after converging note {note: %@}", shortLoggingDescription}];

          goto LABEL_28;
        }
      }

      else
      {
        v46 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          [(ICCryptoConvergenceController *)v58 unsafelyConvergeNotesInAccount:v52 configuration:&v59, v46];
        }

        v47 = +[ICAuthenticationState sharedState];
        [v47 endBlockingDeauthentication];
      }

      workerContext = [(ICCryptoConvergenceController *)self workerContext];
      [workerContext rollback];
      v45 = 0;
LABEL_28:

      v32 &= v45;
      progress3 = [(ICCryptoConvergenceController *)self progress];
      [progress3 setCompletedUnitCount:{objc_msgSend(progress3, "completedUnitCount") + 1}];
    }

    v30 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    accountCopy = v52;
    configurationCopy = v33;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v50 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:accountCopy configuration:v32 & 1];
  }

LABEL_38:
  return v32 & 1;
}

- (BOOL)unsafelyConvergeNote:(id)note configuration:(id)configuration
{
  v54 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  configurationCopy = configuration;
  v7 = [ICCryptoStrategyFactory cipherVersionForObject:noteCopy];
  v8 = 0x277CCA000uLL;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = *MEMORY[0x277CBE1B0];
  managedObjectContext = [noteCopy managedObjectContext];
  v12 = [defaultCenter addObserverForName:v10 object:managedObjectContext queue:0 usingBlock:&__block_literal_global_28];

  passphrase = [configurationCopy passphrase];
  if (passphrase)
  {
    v14 = passphrase;
    v1MainKey = [configurationCopy v1MainKey];
    if (!v1MainKey || v7)
    {
      goto LABEL_6;
    }

    passphrase2 = [configurationCopy passphrase];
    if ([noteCopy isPassphraseCorrect:passphrase2])
    {

LABEL_6:
      goto LABEL_7;
    }

    cryptoStrategy = [noteCopy cryptoStrategy];
    v1MainKey2 = [configurationCopy v1MainKey];
    v34 = [cryptoStrategy mainKeyDecryptsPrimaryData:v1MainKey2];

    v8 = 0x277CCA000;
    if (v34)
    {
      v35 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription = [noteCopy shortLoggingDescription];
        v52 = 138412290;
        v53 = shortLoggingDescription;
        _os_log_impl(&dword_214D51000, v35, OS_LOG_TYPE_INFO, "Fixing v1 note crypto goo using account main key… {note: %@}", &v52, 0xCu);
      }

      v1MainKey3 = [configurationCopy v1MainKey];
      metadata = [v1MainKey3 metadata];
      passphraseSalt = [metadata passphraseSalt];
      [noteCopy setCryptoSalt:passphraseSalt];

      v1MainKey4 = [configurationCopy v1MainKey];
      metadata2 = [v1MainKey4 metadata];
      [noteCopy setCryptoIterationCount:{objc_msgSend(metadata2, "passphraseIterationCount")}];

      v1MainKey5 = [configurationCopy v1MainKey];
      metadata3 = [v1MainKey5 metadata];
      passphraseHint = [metadata3 passphraseHint];
      [noteCopy setPasswordHint:passphraseHint];

      [noteCopy updateChangeCountWithReason:@"Fixed v1 Crypto Goo"];
    }
  }

LABEL_7:
  if ([configurationCopy shouldConvergeObject:noteCopy])
  {
    v1MainKey6 = [configurationCopy v1MainKey];
    v18 = v1MainKey6;
    if (!v1MainKey6 || v7)
    {
    }

    else
    {
      cryptoStrategy2 = [noteCopy cryptoStrategy];
      v1MainKey7 = [configurationCopy v1MainKey];
      v21 = [cryptoStrategy2 mainKeyDecryptsPrimaryData:v1MainKey7];

      if ((v21 & 1) == 0)
      {
        objc_opt_class();
        cryptoStrategy3 = [noteCopy cryptoStrategy];
        v23 = ICCheckedDynamicCast();
        v1MainKey8 = [configurationCopy v1MainKey];
        v25 = [v23 rewrapWithMainKey:v1MainKey8];

        v26 = os_log_create("com.apple.notes", "Crypto");
        v1NeoMainKey = v26;
        if (v25)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [ICCryptoConvergenceController unsafelyConvergeNote:noteCopy configuration:?];
          }

LABEL_26:
          v28 = 1;
LABEL_32:

LABEL_33:
          goto LABEL_34;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ICCryptoConvergenceController unsafelyConvergeNote:noteCopy configuration:?];
        }

        goto LABEL_31;
      }
    }

    v1NeoMainKey = [configurationCopy v1NeoMainKey];
    v28 = 1;
    if (!v1NeoMainKey || v7 != 2)
    {
      goto LABEL_33;
    }

    cryptoStrategy4 = [noteCopy cryptoStrategy];
    v1NeoMainKey2 = [configurationCopy v1NeoMainKey];
    v31 = [cryptoStrategy4 mainKeyDecryptsPrimaryData:v1NeoMainKey2];

    if ((v31 & 1) == 0)
    {
      objc_opt_class();
      cryptoStrategy5 = [noteCopy cryptoStrategy];
      v46 = ICCheckedDynamicCast();
      v1NeoMainKey3 = [configurationCopy v1NeoMainKey];
      v48 = [v46 rewrapWithMainKey:v1NeoMainKey3];

      v49 = os_log_create("com.apple.notes", "Crypto");
      v1NeoMainKey = v49;
      if (v48)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          [ICCryptoConvergenceController unsafelyConvergeNote:noteCopy configuration:?];
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [ICCryptoConvergenceController unsafelyConvergeNote:noteCopy configuration:?];
      }

LABEL_31:
      v28 = 0;
      goto LABEL_32;
    }
  }

  v28 = 1;
LABEL_34:
  defaultCenter2 = [*(v8 + 2968) defaultCenter];
  [defaultCenter2 removeObserver:v12];

  return v28;
}

- (BOOL)convergeAttachmentsInNoteWithID:(id)d configuration:(id)configuration
{
  dCopy = d;
  configurationCopy = configuration;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  workerContext = [(ICCryptoConvergenceController *)self workerContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ICCryptoConvergenceController_convergeAttachmentsInNoteWithID_configuration___block_invoke;
  v12[3] = &unk_2781960F0;
  v12[4] = self;
  v9 = dCopy;
  v13 = v9;
  v15 = &v16;
  v10 = configurationCopy;
  v14 = v10;
  [workerContext performBlockAndWait:v12];

  LOBYTE(workerContext) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return workerContext;
}

void __79__ICCryptoConvergenceController_convergeAttachmentsInNoteWithID_configuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workerContext];
  [v2 refreshAllObjects];

  objc_opt_class();
  v3 = [*(a1 + 32) workerContext];
  v4 = (a1 + 40);
  v5 = [v3 ic_existingObjectWithID:*(a1 + 40)];
  v6 = ICCheckedDynamicCast();

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) unsafelyConvergeAttachmentsInNote:v6 configuration:*(a1 + 48)];
    v7 = [*(a1 + 32) workerContext];
    [v7 refreshAllObjects];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__ICCryptoConvergenceController_convergeAttachmentsInNoteWithID_configuration___block_invoke_cold_1(v4, v7, v8);
    }
  }
}

- (BOOL)unsafelyConvergeAttachmentsInNote:(id)note configuration:(id)configuration
{
  v56 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  configurationCopy = configuration;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeAttachmentsInNote:noteCopy configuration:?];
  }

  if (([noteCopy isPasswordProtected] & 1) == 0)
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICCryptoConvergenceController unsafelyConvergeAttachmentsInNote:noteCopy configuration:?];
    }

    goto LABEL_12;
  }

  v9 = +[ICAuthenticationState sharedState];
  [v9 beginBlockingDeauthentication];

  if (([noteCopy isAuthenticated] & 1) == 0)
  {
    passphrase = [configurationCopy passphrase];
    v11 = [passphrase length];

    if (v11)
    {
      cryptoStrategy = [noteCopy cryptoStrategy];
      passphrase2 = [configurationCopy passphrase];
      v14 = [cryptoStrategy authenticateWithPassphrase:passphrase2];

      if ((v14 & 1) == 0)
      {
        v17 = +[ICAuthenticationState sharedState];
        [v17 endBlockingDeauthentication];
LABEL_12:
        v19 = 0;
        goto LABEL_41;
      }
    }
  }

  v15 = +[ICAuthenticationState sharedState];
  identifier = [noteCopy identifier];
  v17 = [v15 cachedMainKeyForIdentifier:identifier];

  v1MainKey = [configurationCopy v1MainKey];
  if (v1MainKey)
  {
    [configurationCopy setV1MainKey:v1MainKey];
  }

  else
  {
    metadata = [v17 metadata];
    if ([metadata cipherVersion])
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    [configurationCopy setV1MainKey:v21];
  }

  v1NeoMainKey = [configurationCopy v1NeoMainKey];
  if (v1NeoMainKey)
  {
    [configurationCopy setV1NeoMainKey:v1NeoMainKey];
  }

  else
  {
    metadata2 = [v17 metadata];
    if ([metadata2 cipherVersion] == 2)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    [configurationCopy setV1NeoMainKey:v24];
  }

  attachments = [noteCopy attachments];
  v26 = [attachments copy];
  inlineAttachments = [noteCopy inlineAttachments];
  v28 = [inlineAttachments copy];
  v29 = [v26 setByAddingObjectsFromSet:v28];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __81__ICCryptoConvergenceController_unsafelyConvergeAttachmentsInNote_configuration___block_invoke;
  v53[3] = &unk_278196118;
  v48 = configurationCopy;
  v30 = configurationCopy;
  v54 = v30;
  v47 = v29;
  v31 = [v29 ic_objectsPassingTest:v53];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v45 = v17;
    v46 = noteCopy;
    v34 = *v50;
    v19 = 1;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v49 + 1) + 8 * i);
        v37 = [(ICCryptoConvergenceController *)self unsafelyConvergeAttachment:v36 configuration:v30];
        workerContext = [(ICCryptoConvergenceController *)self workerContext];
        v39 = workerContext;
        if (v37)
        {
          shortLoggingDescription = [v36 shortLoggingDescription];
          v41 = [v39 ic_saveWithLogDescription:{@"Saved after converging attachment {attachment: %@}", shortLoggingDescription}];
          if (v19)
          {
            v19 = v41;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          [workerContext rollback];
          v19 = 0;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v33);
    v17 = v45;
    noteCopy = v46;
  }

  else
  {
    v19 = 1;
  }

  v42 = +[ICAuthenticationState sharedState];
  [v42 endBlockingDeauthentication];

  v43 = os_log_create("com.apple.notes", "Crypto");
  configurationCopy = v48;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeAttachmentsInNote:noteCopy configuration:v19];
  }

LABEL_41:
  return v19;
}

uint64_t __81__ICCryptoConvergenceController_unsafelyConvergeAttachmentsInNote_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 parentAttachment];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) shouldConvergeObject:v3];
  }

  return v5;
}

- (BOOL)unsafelyConvergeAttachment:(id)attachment configuration:(id)configuration
{
  attachmentCopy = attachment;
  configurationCopy = configuration;
  v7 = [ICCryptoStrategyFactory cipherVersionForObject:attachmentCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277CBE1B0];
  managedObjectContext = [attachmentCopy managedObjectContext];
  v11 = [defaultCenter addObserverForName:v9 object:managedObjectContext queue:0 usingBlock:&__block_literal_global_44];

  v1MainKey = [configurationCopy v1MainKey];
  v13 = v1MainKey;
  if (!v1MainKey || v7)
  {
  }

  else
  {
    cryptoStrategy = [attachmentCopy cryptoStrategy];
    v1MainKey2 = [configurationCopy v1MainKey];
    v16 = [cryptoStrategy mainKeyDecryptsPrimaryData:v1MainKey2];

    if ((v16 & 1) == 0)
    {
      objc_opt_class();
      cryptoStrategy2 = [attachmentCopy cryptoStrategy];
      v18 = ICCheckedDynamicCast();
      v1MainKey3 = [configurationCopy v1MainKey];
      v20 = [v18 rewrapWithMainKey:v1MainKey3];

      v21 = os_log_create("com.apple.notes", "Crypto");
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [ICCryptoConvergenceController unsafelyConvergeAttachment:attachmentCopy configuration:?];
        }

LABEL_14:

        goto LABEL_16;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICCryptoConvergenceController unsafelyConvergeAttachment:attachmentCopy configuration:?];
      }

      goto LABEL_21;
    }
  }

  v1NeoMainKey = [configurationCopy v1NeoMainKey];
  v24 = v1NeoMainKey;
  if (!v1NeoMainKey || v7 != 2)
  {

    goto LABEL_16;
  }

  cryptoStrategy3 = [attachmentCopy cryptoStrategy];
  v1NeoMainKey2 = [configurationCopy v1NeoMainKey];
  v27 = [cryptoStrategy3 mainKeyDecryptsPrimaryData:v1NeoMainKey2];

  if ((v27 & 1) == 0)
  {
    objc_opt_class();
    cryptoStrategy4 = [attachmentCopy cryptoStrategy];
    v29 = ICCheckedDynamicCast();
    v1NeoMainKey3 = [configurationCopy v1NeoMainKey];
    v31 = [v29 rewrapWithMainKey:v1NeoMainKey3];

    v32 = os_log_create("com.apple.notes", "Crypto");
    v22 = v32;
    if (v31)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [ICCryptoConvergenceController unsafelyConvergeAttachment:attachmentCopy configuration:?];
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ICCryptoConvergenceController unsafelyConvergeAttachment:attachmentCopy configuration:?];
    }

LABEL_21:

    v33 = 0;
    goto LABEL_22;
  }

LABEL_16:
  v33 = 1;
LABEL_22:
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:v11];

  return v33;
}

- (void)cancelAndWaitWithReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v12 = reasonCopy;
    v13 = 2080;
    v14 = "[ICCryptoConvergenceController cancelAndWaitWithReason:]";
    v15 = 1024;
    v16 = 347;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling converging notes… {reason: %@}%s:%d", buf, 0x1Cu);
  }

  progress = [(ICCryptoConvergenceController *)self progress];
  [progress cancel];

  workerContext = [(ICCryptoConvergenceController *)self workerContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke;
  v9[3] = &unk_278194B00;
  v10 = reasonCopy;
  v8 = reasonCopy;
  [workerContext performBlockAndWait:v9];
}

void __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke_cold_1(a1, v2);
  }
}

- (void)authenticationStateDidDeauthenticate:(id)deauthenticate
{
  v3 = +[ICAuthenticationState sharedState];
  isAuthenticated = [v3 isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v5, &__block_literal_global_51);
  }
}

void __70__ICCryptoConvergenceController_authenticationStateDidDeauthenticate___block_invoke()
{
  v0 = +[ICCryptoConvergenceController sharedController];
  [v0 cancelAndWaitWithReason:@"Notes was deauthenticated"];
}

void __85__ICCryptoConvergenceController_convergeNotesInAccountWithID_configuration_progress___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Cannot fetch account for converging notes {accountID: %@, configuration: %@}", &v5, 0x16u);
}

- (void)unsafelyConvergeNotesInAccount:(void *)a1 configuration:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)unsafelyConvergeNotesInAccount:(void *)a3 configuration:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortLoggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Not converging note because Notes is not authenticated {account: %@}", a1, 0xCu);
}

- (void)unsafelyConvergeNotesInAccount:(void *)a1 configuration:.cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unsafelyConvergeNotesInAccount:(void *)a1 configuration:(char)a2 .cold.4(void *a1, char a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a2 & 1];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
}

- (void)unsafelyConvergeNotesInAccount:(void *)a1 configuration:.cold.5(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unsafelyConvergeNote:(void *)a1 configuration:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)unsafelyConvergeNote:(void *)a1 configuration:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unsafelyConvergeNote:(void *)a1 configuration:.cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)unsafelyConvergeNote:(void *)a1 configuration:.cold.4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__ICCryptoConvergenceController_convergeAttachmentsInNoteWithID_configuration___block_invoke_cold_1(uint64_t *a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412290;
  v5 = v3;
  OUTLINED_FUNCTION_7(&dword_214D51000, a2, a3, "Cannot fetch note for converging attachments {noteID: %@}", &v4);
}

- (void)unsafelyConvergeAttachmentsInNote:(void *)a1 configuration:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)unsafelyConvergeAttachmentsInNote:(void *)a1 configuration:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)unsafelyConvergeAttachmentsInNote:(void *)a1 configuration:(char)a2 .cold.3(void *a1, char a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a2 & 1];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x26u);
}

- (void)unsafelyConvergeAttachment:(void *)a1 configuration:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)unsafelyConvergeAttachment:(void *)a1 configuration:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unsafelyConvergeAttachment:(void *)a1 configuration:.cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)unsafelyConvergeAttachment:(void *)a1 configuration:.cold.4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Cancelled converging notes {reason: %@}", &v3, 0xCu);
}

@end