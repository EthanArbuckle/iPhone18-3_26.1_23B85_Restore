@interface ICCryptoConvergenceController
+ (ICCryptoConvergenceController)sharedController;
- (BOOL)convergeAttachmentsInNoteWithID:(id)a3 configuration:(id)a4;
- (BOOL)convergeNotesInAccountWithID:(id)a3 configuration:(id)a4 progress:(id)a5;
- (BOOL)unsafelyConvergeAttachment:(id)a3 configuration:(id)a4;
- (BOOL)unsafelyConvergeAttachmentsInNote:(id)a3 configuration:(id)a4;
- (BOOL)unsafelyConvergeNote:(id)a3 configuration:(id)a4;
- (BOOL)unsafelyConvergeNotesInAccount:(id)a3 configuration:(id)a4;
- (ICCryptoConvergenceController)initWithWorkerContext:(id)a3;
- (void)authenticationStateDidDeauthenticate:(id)a3;
- (void)cancelAndWaitWithReason:(id)a3;
@end

@implementation ICCryptoConvergenceController

- (ICCryptoConvergenceController)initWithWorkerContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ICCryptoConvergenceController;
  v6 = [(ICCryptoConvergenceController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workerContext, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = +[ICAuthenticationState sharedState];
    [v8 addObserver:v7 selector:sel_authenticationStateDidDeauthenticate_ name:@"ICAuthenticationStateDidDeauthenticateNotification" object:v9];
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

- (BOOL)convergeNotesInAccountWithID:(id)a3 configuration:(id)a4 progress:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 copy];
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(ICCryptoConvergenceController *)v11 progress];
  if (v12 && (v13 = [v10 isUserInitiated], v12, (v13 & 1) == 0))
  {
    objc_sync_exit(v11);

    v18 = 0;
  }

  else
  {
    v14 = [(ICCryptoConvergenceController *)v11 progress];

    if (v14)
    {
      [(ICCryptoConvergenceController *)v11 cancelAndWaitWithReason:@"User-initiated operation"];
    }

    v15 = [(ICCryptoConvergenceController *)v11 progress];

    if (v15)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.progress) == nil)" functionName:"-[ICCryptoConvergenceController convergeNotesInAccountWithID:configuration:progress:]" simulateCrash:1 showAlert:0 format:{@"Expected nil value for '%s'", "self.progress"}];
    }

    v16 = v9;
    if (!v9)
    {
      v16 = objc_alloc_init(MEMORY[0x277CCAC48]);
    }

    [(ICCryptoConvergenceController *)v11 setProgress:v16];
    if (!v9)
    {
    }

    objc_sync_exit(v11);

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v17 = [(ICCryptoConvergenceController *)v11 workerContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__ICCryptoConvergenceController_convergeNotesInAccountWithID_configuration_progress___block_invoke;
    v20[3] = &unk_2781960A8;
    v20[4] = v11;
    v21 = v8;
    v22 = v10;
    v23 = &v24;
    [v17 performBlockAndWait:v20];

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

- (BOOL)unsafelyConvergeNotesInAccount:(id)a3 configuration:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:v6 configuration:?];
  }

  if (([v6 isAuthenticated] & 1) == 0)
  {
    v9 = [v7 passphrase];
    v10 = [v9 length];

    if (v10)
    {
      v11 = +[ICAuthenticationState sharedState];
      [v11 beginBlockingDeauthentication];

      v12 = [v6 cryptoStrategy];
      v13 = [v7 passphrase];
      [v12 authenticateWithPassphrase:v13];

      v14 = +[ICAuthenticationState sharedState];
      [v14 endBlockingDeauthentication];
    }
  }

  v15 = [v7 v1MainKey];
  if (v15)
  {
    [v7 setV1MainKey:v15];
  }

  else
  {
    v16 = +[ICAuthenticationState sharedState];
    v17 = [v6 identifier];
    v18 = [v16 cachedMainKeyForIdentifier:v17];
    [v7 setV1MainKey:v18];
  }

  v19 = [v7 v1NeoMainKey];
  if (v19)
  {
    [v7 setV1NeoMainKey:v19];
  }

  else
  {
    v20 = +[ICAuthenticationState sharedState];
    v21 = [v6 accountData];
    v22 = [v21 identifier];
    v23 = [v20 cachedMainKeyForIdentifier:v22];
    [v7 setV1NeoMainKey:v23];
  }

  v24 = [v7 v1MainKey];
  if (v24)
  {
  }

  else
  {
    v25 = [v7 v1NeoMainKey];

    if (!v25)
    {
      v50 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:v6 configuration:?];
      }

      v32 = 0;
      obj = v50;
      goto LABEL_38;
    }
  }

  v26 = [v6 passwordProtectedNotes];
  v27 = [v26 count];
  v28 = [(ICCryptoConvergenceController *)self progress];
  [v28 setTotalUnitCount:v27];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v26;
  v29 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v29)
  {
    v32 = 1;
    goto LABEL_35;
  }

  v30 = v29;
  v31 = *v55;
  v32 = 1;
  v52 = v6;
  while (2)
  {
    v33 = v7;
    for (i = 0; i != v30; ++i)
    {
      if (*v55 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v54 + 1) + 8 * i);
      v36 = [(ICCryptoConvergenceController *)self progress];
      v37 = [v36 isCancelled];

      if (v37)
      {
        v49 = os_log_create("com.apple.notes", "Crypto");
        v6 = v52;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:v52 configuration:?];
        }

        v7 = v33;
        goto LABEL_35;
      }

      v38 = +[ICAuthenticationState sharedState];
      [v38 beginBlockingDeauthentication];

      v39 = +[ICAuthenticationState sharedState];
      v40 = [v39 isAuthenticated];

      if (v40)
      {
        v41 = [(ICCryptoConvergenceController *)self unsafelyConvergeNote:v35 configuration:v33];
        v42 = +[ICAuthenticationState sharedState];
        [v42 endBlockingDeauthentication];

        if (v41)
        {
          v43 = [(ICCryptoConvergenceController *)self workerContext];
          v44 = [v35 shortLoggingDescription];
          v45 = [v43 ic_saveWithLogDescription:{@"Saved after converging note {note: %@}", v44}];

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

      v43 = [(ICCryptoConvergenceController *)self workerContext];
      [v43 rollback];
      v45 = 0;
LABEL_28:

      v32 &= v45;
      v48 = [(ICCryptoConvergenceController *)self progress];
      [v48 setCompletedUnitCount:{objc_msgSend(v48, "completedUnitCount") + 1}];
    }

    v30 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    v6 = v52;
    v7 = v33;
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
    [ICCryptoConvergenceController unsafelyConvergeNotesInAccount:v6 configuration:v32 & 1];
  }

LABEL_38:
  return v32 & 1;
}

- (BOOL)unsafelyConvergeNote:(id)a3 configuration:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [ICCryptoStrategyFactory cipherVersionForObject:v5];
  v8 = 0x277CCA000uLL;
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = *MEMORY[0x277CBE1B0];
  v11 = [v5 managedObjectContext];
  v12 = [v9 addObserverForName:v10 object:v11 queue:0 usingBlock:&__block_literal_global_28];

  v13 = [v6 passphrase];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 v1MainKey];
    if (!v15 || v7)
    {
      goto LABEL_6;
    }

    v16 = [v6 passphrase];
    if ([v5 isPassphraseCorrect:v16])
    {

LABEL_6:
      goto LABEL_7;
    }

    v32 = [v5 cryptoStrategy];
    v33 = [v6 v1MainKey];
    v34 = [v32 mainKeyDecryptsPrimaryData:v33];

    v8 = 0x277CCA000;
    if (v34)
    {
      v35 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v5 shortLoggingDescription];
        v52 = 138412290;
        v53 = v36;
        _os_log_impl(&dword_214D51000, v35, OS_LOG_TYPE_INFO, "Fixing v1 note crypto goo using account main key… {note: %@}", &v52, 0xCu);
      }

      v37 = [v6 v1MainKey];
      v38 = [v37 metadata];
      v39 = [v38 passphraseSalt];
      [v5 setCryptoSalt:v39];

      v40 = [v6 v1MainKey];
      v41 = [v40 metadata];
      [v5 setCryptoIterationCount:{objc_msgSend(v41, "passphraseIterationCount")}];

      v42 = [v6 v1MainKey];
      v43 = [v42 metadata];
      v44 = [v43 passphraseHint];
      [v5 setPasswordHint:v44];

      [v5 updateChangeCountWithReason:@"Fixed v1 Crypto Goo"];
    }
  }

LABEL_7:
  if ([v6 shouldConvergeObject:v5])
  {
    v17 = [v6 v1MainKey];
    v18 = v17;
    if (!v17 || v7)
    {
    }

    else
    {
      v19 = [v5 cryptoStrategy];
      v20 = [v6 v1MainKey];
      v21 = [v19 mainKeyDecryptsPrimaryData:v20];

      if ((v21 & 1) == 0)
      {
        objc_opt_class();
        v22 = [v5 cryptoStrategy];
        v23 = ICCheckedDynamicCast();
        v24 = [v6 v1MainKey];
        v25 = [v23 rewrapWithMainKey:v24];

        v26 = os_log_create("com.apple.notes", "Crypto");
        v27 = v26;
        if (v25)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [ICCryptoConvergenceController unsafelyConvergeNote:v5 configuration:?];
          }

LABEL_26:
          v28 = 1;
LABEL_32:

LABEL_33:
          goto LABEL_34;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ICCryptoConvergenceController unsafelyConvergeNote:v5 configuration:?];
        }

        goto LABEL_31;
      }
    }

    v27 = [v6 v1NeoMainKey];
    v28 = 1;
    if (!v27 || v7 != 2)
    {
      goto LABEL_33;
    }

    v29 = [v5 cryptoStrategy];
    v30 = [v6 v1NeoMainKey];
    v31 = [v29 mainKeyDecryptsPrimaryData:v30];

    if ((v31 & 1) == 0)
    {
      objc_opt_class();
      v45 = [v5 cryptoStrategy];
      v46 = ICCheckedDynamicCast();
      v47 = [v6 v1NeoMainKey];
      v48 = [v46 rewrapWithMainKey:v47];

      v49 = os_log_create("com.apple.notes", "Crypto");
      v27 = v49;
      if (v48)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          [ICCryptoConvergenceController unsafelyConvergeNote:v5 configuration:?];
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [ICCryptoConvergenceController unsafelyConvergeNote:v5 configuration:?];
      }

LABEL_31:
      v28 = 0;
      goto LABEL_32;
    }
  }

  v28 = 1;
LABEL_34:
  v50 = [*(v8 + 2968) defaultCenter];
  [v50 removeObserver:v12];

  return v28;
}

- (BOOL)convergeAttachmentsInNoteWithID:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(ICCryptoConvergenceController *)self workerContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ICCryptoConvergenceController_convergeAttachmentsInNoteWithID_configuration___block_invoke;
  v12[3] = &unk_2781960F0;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v15 = &v16;
  v10 = v7;
  v14 = v10;
  [v8 performBlockAndWait:v12];

  LOBYTE(v8) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v8;
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

- (BOOL)unsafelyConvergeAttachmentsInNote:(id)a3 configuration:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeAttachmentsInNote:v6 configuration:?];
  }

  if (([v6 isPasswordProtected] & 1) == 0)
  {
    v17 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICCryptoConvergenceController unsafelyConvergeAttachmentsInNote:v6 configuration:?];
    }

    goto LABEL_12;
  }

  v9 = +[ICAuthenticationState sharedState];
  [v9 beginBlockingDeauthentication];

  if (([v6 isAuthenticated] & 1) == 0)
  {
    v10 = [v7 passphrase];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v6 cryptoStrategy];
      v13 = [v7 passphrase];
      v14 = [v12 authenticateWithPassphrase:v13];

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
  v16 = [v6 identifier];
  v17 = [v15 cachedMainKeyForIdentifier:v16];

  v18 = [v7 v1MainKey];
  if (v18)
  {
    [v7 setV1MainKey:v18];
  }

  else
  {
    v20 = [v17 metadata];
    if ([v20 cipherVersion])
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    [v7 setV1MainKey:v21];
  }

  v22 = [v7 v1NeoMainKey];
  if (v22)
  {
    [v7 setV1NeoMainKey:v22];
  }

  else
  {
    v23 = [v17 metadata];
    if ([v23 cipherVersion] == 2)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    [v7 setV1NeoMainKey:v24];
  }

  v25 = [v6 attachments];
  v26 = [v25 copy];
  v27 = [v6 inlineAttachments];
  v28 = [v27 copy];
  v29 = [v26 setByAddingObjectsFromSet:v28];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __81__ICCryptoConvergenceController_unsafelyConvergeAttachmentsInNote_configuration___block_invoke;
  v53[3] = &unk_278196118;
  v48 = v7;
  v30 = v7;
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
    v46 = v6;
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
        v38 = [(ICCryptoConvergenceController *)self workerContext];
        v39 = v38;
        if (v37)
        {
          v40 = [v36 shortLoggingDescription];
          v41 = [v39 ic_saveWithLogDescription:{@"Saved after converging attachment {attachment: %@}", v40}];
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
          [v38 rollback];
          v19 = 0;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v33);
    v17 = v45;
    v6 = v46;
  }

  else
  {
    v19 = 1;
  }

  v42 = +[ICAuthenticationState sharedState];
  [v42 endBlockingDeauthentication];

  v43 = os_log_create("com.apple.notes", "Crypto");
  v7 = v48;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [ICCryptoConvergenceController unsafelyConvergeAttachmentsInNote:v6 configuration:v19];
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

- (BOOL)unsafelyConvergeAttachment:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [ICCryptoStrategyFactory cipherVersionForObject:v5];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277CBE1B0];
  v10 = [v5 managedObjectContext];
  v11 = [v8 addObserverForName:v9 object:v10 queue:0 usingBlock:&__block_literal_global_44];

  v12 = [v6 v1MainKey];
  v13 = v12;
  if (!v12 || v7)
  {
  }

  else
  {
    v14 = [v5 cryptoStrategy];
    v15 = [v6 v1MainKey];
    v16 = [v14 mainKeyDecryptsPrimaryData:v15];

    if ((v16 & 1) == 0)
    {
      objc_opt_class();
      v17 = [v5 cryptoStrategy];
      v18 = ICCheckedDynamicCast();
      v19 = [v6 v1MainKey];
      v20 = [v18 rewrapWithMainKey:v19];

      v21 = os_log_create("com.apple.notes", "Crypto");
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [ICCryptoConvergenceController unsafelyConvergeAttachment:v5 configuration:?];
        }

LABEL_14:

        goto LABEL_16;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICCryptoConvergenceController unsafelyConvergeAttachment:v5 configuration:?];
      }

      goto LABEL_21;
    }
  }

  v23 = [v6 v1NeoMainKey];
  v24 = v23;
  if (!v23 || v7 != 2)
  {

    goto LABEL_16;
  }

  v25 = [v5 cryptoStrategy];
  v26 = [v6 v1NeoMainKey];
  v27 = [v25 mainKeyDecryptsPrimaryData:v26];

  if ((v27 & 1) == 0)
  {
    objc_opt_class();
    v28 = [v5 cryptoStrategy];
    v29 = ICCheckedDynamicCast();
    v30 = [v6 v1NeoMainKey];
    v31 = [v29 rewrapWithMainKey:v30];

    v32 = os_log_create("com.apple.notes", "Crypto");
    v22 = v32;
    if (v31)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [ICCryptoConvergenceController unsafelyConvergeAttachment:v5 configuration:?];
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ICCryptoConvergenceController unsafelyConvergeAttachment:v5 configuration:?];
    }

LABEL_21:

    v33 = 0;
    goto LABEL_22;
  }

LABEL_16:
  v33 = 1;
LABEL_22:
  v34 = [MEMORY[0x277CCAB98] defaultCenter];
  [v34 removeObserver:v11];

  return v33;
}

- (void)cancelAndWaitWithReason:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v12 = v4;
    v13 = 2080;
    v14 = "[ICCryptoConvergenceController cancelAndWaitWithReason:]";
    v15 = 1024;
    v16 = 347;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling converging notes… {reason: %@}%s:%d", buf, 0x1Cu);
  }

  v6 = [(ICCryptoConvergenceController *)self progress];
  [v6 cancel];

  v7 = [(ICCryptoConvergenceController *)self workerContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke;
  v9[3] = &unk_278194B00;
  v10 = v4;
  v8 = v4;
  [v7 performBlockAndWait:v9];
}

void __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__ICCryptoConvergenceController_cancelAndWaitWithReason___block_invoke_cold_1(a1, v2);
  }
}

- (void)authenticationStateDidDeauthenticate:(id)a3
{
  v3 = +[ICAuthenticationState sharedState];
  v4 = [v3 isAuthenticated];

  if ((v4 & 1) == 0)
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