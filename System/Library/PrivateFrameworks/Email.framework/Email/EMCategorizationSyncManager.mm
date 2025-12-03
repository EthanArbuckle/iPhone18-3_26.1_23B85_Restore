@interface EMCategorizationSyncManager
- (EMCategorizationSyncManager)initWithMailboxCategoryCloudStorage:(id)storage mailboxRepository:(id)repository accountRepository:(id)accountRepository;
- (id)primaryIcloudMailboxFuture;
- (void)categoryCloudStorage:(id)storage didChangeLastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate forCategoryType:(id)type inMailboxWithExternalURL:(id)l originator:(unint64_t)originator;
- (void)categoryRulesController:(id)controller didReceiveNewOldTimestamps:(id)timestamps;
- (void)loadiCloudMCCKit;
@end

@implementation EMCategorizationSyncManager

void ___ef_log_EMCategorizationSyncManager_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMCategorizationSyncManager");
  v1 = _ef_log_EMCategorizationSyncManager_log;
  _ef_log_EMCategorizationSyncManager_log = v0;
}

- (EMCategorizationSyncManager)initWithMailboxCategoryCloudStorage:(id)storage mailboxRepository:(id)repository accountRepository:(id)accountRepository
{
  storageCopy = storage;
  repositoryCopy = repository;
  accountRepositoryCopy = accountRepository;
  v19.receiver = self;
  v19.super_class = EMCategorizationSyncManager;
  v12 = [(EMCategorizationSyncManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mailboxCategoryCloudStorage, storage);
    objc_storeStrong(&v13->_mailboxRepository, repository);
    objc_storeStrong(&v13->_accountRepository, accountRepository);
    [(EMMailboxCategoryCloudStorage *)v13->_mailboxCategoryCloudStorage addCloudStorageObserver:v13];
    [(EMCategorizationSyncManager *)v13 loadiCloudMCCKit];
    v14 = MEMORY[0x1E699B978];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.icloudSyncScheduler", objc_opt_class()];
    v16 = [v14 serialDispatchQueueSchedulerWithName:v15];
    icloudSyncScheduler = v13->_icloudSyncScheduler;
    v13->_icloudSyncScheduler = v16;
  }

  return v13;
}

- (void)loadiCloudMCCKit
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getMCCCategoryRulesControllerClass_softClass;
  v13 = getMCCCategoryRulesControllerClass_softClass;
  if (!getMCCCategoryRulesControllerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getMCCCategoryRulesControllerClass_block_invoke;
    v9[3] = &unk_1E826C010;
    v9[4] = &v10;
    __getMCCCategoryRulesControllerClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = objc_alloc_init(v3);
  rulesController = self->_rulesController;
  self->_rulesController = v5;

  v7 = self->_rulesController;
  if (v7)
  {
    [(MCCCategoryRulesController *)v7 setDelegate:self];
    [(MCCCategoryRulesController *)self->_rulesController registerForWebRuleNotifications];
    v8 = _ef_log_EMCategorizationSyncManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_INFO, "Initiated MCCCategoryRulesController and registered for new/old notifications", v9, 2u);
    }
  }

  else
  {
    v8 = _ef_log_EMCategorizationSyncManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EMCategorizationSyncManager *)v8 loadiCloudMCCKit];
    }
  }
}

- (void)categoryRulesController:(id)controller didReceiveNewOldTimestamps:(id)timestamps
{
  timestampsCopy = timestamps;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke;
  v8[3] = &unk_1E826C148;
  v9 = timestampsCopy;
  selfCopy = self;
  v7 = timestampsCopy;
  dispatch_async(v6, v8);
}

void __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _ef_log_EMCategorizationSyncManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_INFO, "MCCCategoryRulesController didReceiveNewOldTimestamps: %@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) primaryIcloudMailboxFuture];
    objc_initWeak(buf, *(a1 + 40));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke_20;
    v6[3] = &unk_1E826C540;
    objc_copyWeak(&v8, buf);
    v7 = *(a1 + 32);
    [v4 addSuccessBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    v4 = _ef_log_EMCategorizationSyncManager();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke_cold_1((a1 + 32), v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke_2;
    v7[3] = &unk_1E826C518;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DF00];
  [v6 doubleValue];
  v8 = [v7 dateWithTimeIntervalSince1970:?];
  v9 = EMCategoryTypeFromString(v5);
  v10 = _ef_log_EMCategorizationSyncManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_INFO, "Syncing category: %@ with timestamp: %@", &v15, 0x16u);
  }

  v11 = [*(a1 + 32) mailboxCategoryCloudStorage];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v13 = [*(a1 + 40) externalURL];
  [v11 setIfNeededLastSeenDate:v8 lastSeenDisplayDate:v8 forCategoryType:v12 inMailboxWithExternalURL:v13 originator:1];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)categoryCloudStorage:(id)storage didChangeLastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate forCategoryType:(id)type inMailboxWithExternalURL:(id)l originator:(unint64_t)originator
{
  displayDateCopy = displayDate;
  typeCopy = type;
  lCopy = l;
  if (originator == 1)
  {
    primaryIcloudMailboxFuture = _ef_log_EMCategorizationSyncManager();
    if (os_log_type_enabled(primaryIcloudMailboxFuture, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, primaryIcloudMailboxFuture, OS_LOG_TYPE_INFO, "Received Last Seend date change, ignoring it as the originator is webmail.", buf, 2u);
    }
  }

  else
  {
    primaryIcloudMailboxFuture = [(EMCategorizationSyncManager *)self primaryIcloudMailboxFuture];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke;
    v19 = &unk_1E826C568;
    v20 = lCopy;
    selfCopy = self;
    v22 = typeCopy;
    v23 = displayDateCopy;
    [primaryIcloudMailboxFuture addSuccessBlock:&v16];
    [primaryIcloudMailboxFuture addFailureBlock:&__block_literal_global_30, v16, v17, v18, v19];
  }
}

void __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v10 = _ef_log_EMCategorizationSyncManager();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Skipping syncing, no primary iCloud Mailbox found.";
LABEL_8:
    _os_log_impl(&dword_1C6655000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    goto LABEL_9;
  }

  v5 = [v3 externalURL];
  v6 = [v5 absoluteString];
  v7 = [*(a1 + 32) absoluteString];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    v10 = _ef_log_EMCategorizationSyncManager();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Skipping syncing, not a primary iCloud mailbox change";
    goto LABEL_8;
  }

  v9 = *(*(a1 + 40) + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke_25;
  v12[3] = &unk_1E826C148;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  [v9 performBlock:v12];

  v10 = v13;
LABEL_9:
}

void __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke_25(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = EMStringFromCategoryType([*(a1 + 32) unsignedIntegerValue]);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getMCCSecretAgentControllerClass_softClass;
  v14 = getMCCSecretAgentControllerClass_softClass;
  if (!getMCCSecretAgentControllerClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getMCCSecretAgentControllerClass_block_invoke;
    v10[3] = &unk_1E826C010;
    v10[4] = &v11;
    __getMCCSecretAgentControllerClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = objc_alloc_init(v3);
  v15 = v2;
  v6 = MEMORY[0x1E696AD98];
  [*(a1 + 40) timeIntervalSince1970];
  v7 = [v6 numberWithDouble:?];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v5 syncNewOldCategoryTimestamps:v8];

  v9 = *MEMORY[0x1E69E9840];
}

void __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ef_log_EMCategorizationSyncManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke_27_cold_1(v2, v3);
  }
}

- (id)primaryIcloudMailboxFuture
{
  promise = [MEMORY[0x1E699B868] promise];
  accountRepository = [(EMCategorizationSyncManager *)self accountRepository];
  receivingAccounts = [accountRepository receivingAccounts];
  v6 = [receivingAccounts ef_firstObjectPassingTest:&__block_literal_global_34];

  if (v6)
  {
    v7 = [EMMailbox predicateForPrimaryMailboxWithAccount:v6];
    v8 = [EMQuery alloc];
    v9 = [(EMQuery *)v8 initWithTargetClass:objc_opt_class() predicate:v7 sortDescriptors:MEMORY[0x1E695E0F0]];
    mailboxRepository = [(EMCategorizationSyncManager *)self mailboxRepository];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__EMCategorizationSyncManager_primaryIcloudMailboxFuture__block_invoke_2;
    v15[3] = &unk_1E826C5B0;
    v16 = promise;
    [mailboxRepository performQuery:v9 completionHandler:v15];
  }

  else
  {
    v11 = _ef_log_EMCategorizationSyncManager();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_INFO, "No primary iCloud account has found.", v14, 2u);
    }

    v7 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"No primary iCloud account was found." userInfo:0];
    [promise finishWithError:v7];
  }

  future = [promise future];

  return future;
}

void __57__EMCategorizationSyncManager_primaryIcloudMailboxFuture__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  if (!v6)
  {
    v7 = _ef_log_EMCategorizationSyncManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_INFO, "No primary iCloud mailbox has found.", v8, 2u);
    }
  }

  [*(a1 + 32) finishWithResult:v6 error:v5];
}

void __82__EMCategorizationSyncManager_categoryRulesController_didReceiveNewOldTimestamps___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Unable to save New/Old timestamps. Categories: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __146__EMCategorizationSyncManager_categoryCloudStorage_didChangeLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke_27_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Failed to get primary iCloud mailbox: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end