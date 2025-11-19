@interface EDConversationRemoteCloudKitStorage
+ (OS_os_log)log;
+ (id)cloudKitAPSTopics;
- (BOOL)isMigratedFromKVSStorage;
- (BOOL)synchronize;
- (EDConversationRemoteCloudKitStorage)initWithDelegate:(id)a3;
- (EDConversationRemoteStorageDelegate)delegate;
- (id)_controlInManagedObjectContext:(id)a3;
- (id)_conversationInfoWithObjectId:(id)a3 managedObjectContext:(id)a4;
- (id)_conversationInfoWithUUID:(id)a3 managedObjectContext:(id)a4;
- (id)_conversationInfosWithUUID:(id)a3 managedObjectContext:(id)a4;
- (id)_transactionHistorySinceToken:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)allConversationInfosInManagedObjectContext:(id)a3;
- (id)dictionaryForConversationInfo:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)dictionaryRepresentation;
- (id)entityForConversationDictionary:(id)a3 key:(id)a4 managedObjectContext:(id)a5;
- (id)enumerateChangeHistorySinceToken:(id)a3 managedObjectContext:(id)a4 usingBlock:(id)a5;
- (id)storageName;
- (void)_addOrUpdateConversationInfo:(id)a3 managedObjectContext:(id)a4;
- (void)_handleDidResetSyncDataNotification:(id)a3;
- (void)_handleDuplicationsForConversationUUIDs:(id)a3 managedObjectContext:(id)a4;
- (void)_handlePushNotification:(id)a3;
- (void)_handleWillResetSyncDataNotification:(id)a3;
- (void)_initialSetup;
- (void)_recoverHistoryToken;
- (void)_removeConversationInfoWithId:(id)a3 managedObjectContext:(id)a4;
- (void)_removeConversationInfoWithObjectId:(id)a3 save:(BOOL)a4 managedObjectContext:(id)a5;
- (void)_requestExportWithManagedObjectContext:(id)a3;
- (void)_requestFirstSyncWithManagedObjectContext:(id)a3;
- (void)_requestImportWithManagedObjectContext:(id)a3;
- (void)_retrieveChangesSinceLastRequestInManagedObjectContext:(id)a3;
- (void)_updateConversationInfo:(id)a3 withAnotherConversationInfo:(id)a4;
- (void)persistHistoryToken;
- (void)refresh;
- (void)removeDictionaryForKey:(id)a3;
- (void)setDictionary:(id)a3 forKey:(id)a4;
- (void)setMigratedFromKVSStorage:(BOOL)a3;
@end

@implementation EDConversationRemoteCloudKitStorage

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDConversationRemoteCloudKitStorage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_32 != -1)
  {
    dispatch_once(&log_onceToken_32, block);
  }

  v2 = log_log_32;

  return v2;
}

void __42__EDConversationRemoteCloudKitStorage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_32;
  log_log_32 = v1;
}

- (EDConversationRemoteCloudKitStorage)initWithDelegate:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = EDConversationRemoteCloudKitStorage;
  v5 = [(EDConversationRemoteCloudKitStorage *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Initializing Conversation CloudKit Storage", buf, 2u);
    }

    v8 = [EDTransactionService alloc];
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@-Export", v11];
    v13 = [(EDTransactionService *)v8 initWithServiceName:v12];
    [(EDConversationRemoteCloudKitStorage *)v6 setExportTransaction:v13];

    v14 = [EDTransactionService alloc];
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"%@-Import", v17];
    v19 = [(EDTransactionService *)v14 initWithServiceName:v18];
    [(EDConversationRemoteCloudKitStorage *)v6 setImportTransaction:v19];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v6 selector:sel__handleWillResetSyncDataNotification_ name:*MEMORY[0x1E695D2E0] object:0];
    [v20 addObserver:v6 selector:sel__handleDidResetSyncDataNotification_ name:*MEMORY[0x1E695D2D0] object:0];
    [v20 addObserver:v6 selector:sel__handlePushNotification_ name:@"EDConversationRemoteCloudKitStoragePushNotificationName" object:0];
    v21 = objc_alloc_init(EDCloudMirroringPersistentStore);
    mirroringPersistentStore = v6->_mirroringPersistentStore;
    v6->_mirroringPersistentStore = v21;

    [(EDConversationRemoteCloudKitStorage *)v6 _initialSetup];
  }

  return v6;
}

- (void)_initialSetup
{
  v3 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke;
  v4[3] = &unk_1E8251DD0;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

void __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) exportTransaction];
  v5 = [v4 hasPendingTransactions];

  if (v5)
  {
    v6 = [*(a1 + 32) exportTransaction];
    [v6 resetPendingTransactions];

    v7 = *(a1 + 32);
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_cold_1(v8);
    }

    v9 = [*(a1 + 32) mirroringPersistentStore];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_36;
    v27[3] = &unk_1E8251DD0;
    v27[4] = *(a1 + 32);
    [v9 performBlock:v27];
  }

  v10 = [*(a1 + 32) importTransaction];
  v11 = [v10 hasPendingTransactions];

  if (v11)
  {
    v12 = [*(a1 + 32) importTransaction];
    [v12 resetPendingTransactions];

    v13 = *(a1 + 32);
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_cold_2(v14);
    }

    v15 = [*(a1 + 32) mirroringPersistentStore];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_38;
    v26[3] = &unk_1E8251DD0;
    v26[4] = *(a1 + 32);
    [v15 performBlock:v26];
  }

  v16 = [*(a1 + 32) _controlInManagedObjectContext:v3];
  v17 = [v16 migratedFromKVSStorage];

  v18 = *(a1 + 32);
  if (v17)
  {
    [v18 setInitialized:1];
    v19 = [*(a1 + 32) delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }

    v21 = [*(a1 + 32) delegate];
    [v21 conversationRemoteStorageDidInitialize:*(a1 + 32)];
  }

  else
  {
    v21 = [v18 mirroringPersistentStore];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_2;
    v25[3] = &unk_1E8251DD0;
    v25[4] = *(a1 + 32);
    [v21 performBlock:v25];
  }

LABEL_14:
  [*(a1 + 32) _recoverHistoryToken];
  v22 = [*(a1 + 32) historyToken];

  if (!v22)
  {
    v23 = [*(a1 + 32) mirroringPersistentStore];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__EDConversationRemoteCloudKitStorage__initialSetup__block_invoke_3;
    v24[3] = &unk_1E8251DD0;
    v24[4] = *(a1 + 32);
    [v23 performBlock:v24];
  }
}

- (void)setDictionary:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__EDConversationRemoteCloudKitStorage_setDictionary_forKey___block_invoke;
  v11[3] = &unk_1E8251DF8;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performBlockAndWait:v11];
}

void __60__EDConversationRemoteCloudKitStorage_setDictionary_forKey___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) entityForConversationDictionary:*(a1 + 40) key:*(a1 + 48) managedObjectContext:v3];
  v5 = *(a1 + 32);
  v6 = [v4 conversationUUID];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v5 _handleDuplicationsForConversationUUIDs:v7 managedObjectContext:v3];

  [*(a1 + 32) _addOrUpdateConversationInfo:v4 managedObjectContext:v3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeDictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EDConversationRemoteCloudKitStorage_removeDictionaryForKey___block_invoke;
  v7[3] = &unk_1E8251E20;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlockAndWait:v7];
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  v5 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__EDConversationRemoteCloudKitStorage_dictionaryForKey___block_invoke;
  v9[3] = &unk_1E8251E48;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__EDConversationRemoteCloudKitStorage_dictionaryForKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) _conversationInfoWithUUID:*(a1 + 40) managedObjectContext:?];
  v4 = [*(a1 + 32) dictionaryForConversationInfo:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)dictionaryRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v3 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__EDConversationRemoteCloudKitStorage_dictionaryRepresentation__block_invoke;
  v6[3] = &unk_1E8251E70;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __63__EDConversationRemoteCloudKitStorage_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) allConversationInfosInManagedObjectContext:v3];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [*(a1 + 32) dictionaryForConversationInfo:{v12, v18}];
        v14 = [v12 conversationUUID];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)synchronize
{
  v3 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__EDConversationRemoteCloudKitStorage_synchronize__block_invoke;
  v5[3] = &unk_1E8251DD0;
  v5[4] = self;
  [v3 performBlockAndWait:v5];

  return 1;
}

- (void)refresh
{
  v3 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__EDConversationRemoteCloudKitStorage_refresh__block_invoke;
  v4[3] = &unk_1E8251DD0;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

- (void)_requestExportWithManagedObjectContext:(id)a3
{
  v4 = [(EDConversationRemoteCloudKitStorage *)self exportTransaction];
  v5 = [v4 startTransaction];

  objc_initWeak(&location, self);
  v6 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__EDConversationRemoteCloudKitStorage__requestExportWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E8251E98;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [v6 requestExportWithCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __78__EDConversationRemoteCloudKitStorage__requestExportWithManagedObjectContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained exportTransaction];
  [v2 endTransaction:*(a1 + 32)];
}

- (void)_requestImportWithManagedObjectContext:(id)a3
{
  v4 = a3;
  if ([(EDConversationRemoteCloudKitStorage *)self isInitialized])
  {
    v5 = [(EDConversationRemoteCloudKitStorage *)self importTransaction];
    v6 = [v5 startTransaction];

    objc_initWeak(&location, self);
    v7 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke;
    v9[3] = &unk_1E8251E98;
    objc_copyWeak(&v11, &location);
    v8 = v6;
    v10 = v8;
    [v7 requestImportWithCompletionBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(EDConversationRemoteCloudKitStorage *)self _requestFirstSyncWithManagedObjectContext:v4];
  }
}

void __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained mirroringPersistentStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke_2;
  v6[3] = &unk_1E8251EC0;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  v8 = a2;
  [v5 performBlock:v6];
}

void __78__EDConversationRemoteCloudKitStorage__requestImportWithManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) importTransaction];
  [v3 endTransaction:*(a1 + 40)];

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _retrieveChangesSinceLastRequestInManagedObjectContext:v4];
  }
}

- (void)_requestFirstSyncWithManagedObjectContext:(id)a3
{
  objc_initWeak(&location, self);
  v4 = [(EDConversationRemoteCloudKitStorage *)self importTransaction];
  v5 = [v4 startTransaction];

  v6 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E8251E98;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [v6 requestImportWithCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained importTransaction];
  [v5 endTransaction:*(a1 + 32)];

  v6 = [WeakRetained mirroringPersistentStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke_2;
  v7[3] = &unk_1E8251EE8;
  v7[4] = WeakRetained;
  v8 = a2;
  [v6 performBlock:v7];
}

void __81__EDConversationRemoteCloudKitStorage__requestFirstSyncWithManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "First request import arrived. Success: %lu", &v11, 0xCu);
  }

  if (*(a1 + 40) == 1 && ([*(a1 + 32) isInitialized] & 1) == 0)
  {
    [*(a1 + 32) setInitialized:1];
    v7 = [*(a1 + 32) delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 conversationRemoteStorageDidInitialize:*(a1 + 32)];
    }

    [*(a1 + 32) _retrieveChangesSinceLastRequestInManagedObjectContext:v3];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handlePushNotification:(id)a3
{
  v4 = a3;
  v5 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__EDConversationRemoteCloudKitStorage__handlePushNotification___block_invoke;
  v7[3] = &unk_1E8251E20;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 performBlock:v7];
}

void __63__EDConversationRemoteCloudKitStorage__handlePushNotification___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695B9D8];
  v5 = [*(a1 + 32) userInfo];
  v6 = [v4 notificationFromRemoteNotificationDictionary:v5];

  v7 = *(a1 + 40);
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_INFO, "APS Push received - %{public}@", &v10, 0xCu);
  }

  [*(a1 + 40) _requestImportWithManagedObjectContext:v3];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)storageName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isMigratedFromKVSStorage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__EDConversationRemoteCloudKitStorage_isMigratedFromKVSStorage__block_invoke;
  v5[3] = &unk_1E8251F10;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v3) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__EDConversationRemoteCloudKitStorage_isMigratedFromKVSStorage__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _controlInManagedObjectContext:?];
  *(*(*(a1 + 40) + 8) + 24) = [v3 migratedFromKVSStorage];
}

- (void)setMigratedFromKVSStorage:(BOOL)a3
{
  v5 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke;
  v6[3] = &unk_1E8251EE8;
  v6[4] = self;
  v7 = a3;
  [v5 performBlockAndWait:v6];
}

void __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke(uint64_t a1, void *a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _controlInManagedObjectContext:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CloudKitControl" inManagedObjectContext:v3];
  }

  [v4 setMigratedFromKVSStorage:*(a1 + 40)];
  v10[0] = 0;
  v5 = [v3 save:v10];
  v6 = v10[0];
  if ((v5 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke_cold_1();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)cloudKitAPSTopics
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = cloudKitAPSTopics_cloudKitAPSTopics;
  if (!cloudKitAPSTopics_cloudKitAPSTopics)
  {
    v7[0] = @"com.apple.icloud-container.com.apple.mobilemail";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4 = cloudKitAPSTopics_cloudKitAPSTopics;
    cloudKitAPSTopics_cloudKitAPSTopics = v3;

    v2 = cloudKitAPSTopics_cloudKitAPSTopics;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)entityForConversationDictionary:(id)a3 key:(id)a4 managedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfoWithUUID:v9 managedObjectContext:v10];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"ConversationInfo" inManagedObjectContext:v10];
  }

  [v11 setConversationUUID:v9];
  v12 = [v8 objectForKeyedSubscript:@"flags"];
  v13 = [v12 unsignedLongLongValue];

  [v11 setNotifyMe:v13 & 1];
  [v11 setMuted:(v13 >> 2) & 1];
  v14 = [v8 objectForKeyedSubscript:@"message-ids"];
  [v11 setMessageIds:v14];

  v15 = MEMORY[0x1E695DF00];
  v16 = [v8 objectForKeyedSubscript:@"last-modified"];
  [v16 doubleValue];
  v17 = [v15 dateWithTimeIntervalSince1970:?];
  [v11 setLastModified:v17];

  return v11;
}

- (id)dictionaryForConversationInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v3 muted])
    {
      v5 = 4;
    }

    else
    {
      v5 = [v3 notifyMe];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    [v4 setObject:v6 forKeyedSubscript:@"flags"];

    v7 = [v3 messageIds];
    [v4 setObject:v7 forKeyedSubscript:@"message-ids"];

    v8 = MEMORY[0x1E696AD98];
    v9 = [v3 lastModified];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    [v4 setObject:v10 forKeyedSubscript:@"last-modified"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)persistHistoryToken
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to archive history token - Error: %{public}@", v5);
}

- (void)_recoverHistoryToken
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to unarchive history token - Error: %{public}@", v5);
}

- (void)_handleDuplicationsForConversationUUIDs:(id)a3 managedObjectContext:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v6;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (!v9)
  {
LABEL_24:

    goto LABEL_25;
  }

  v10 = 0;
  v24 = *v34;
  v25 = v9;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v34 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfosWithUUID:*(*(&v33 + 1) + 8 * i) managedObjectContext:v7];
      if ([v26 count] >= 2)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = [v26 subarrayWithRange:{1, objc_msgSend(v26, "count") - 1}];
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v12)
        {
          v13 = *v30;
          do
          {
            v14 = 0;
            do
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v29 + 1) + 8 * v14);
              v16 = [objc_opt_class() log];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v18 = [v15 conversationUUID];
                v19 = [v15 objectID];
                *buf = 138543618;
                v38 = v18;
                v39 = 2114;
                v40 = v19;
                _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Deleting duplicated object. %{public}@, %{public}@", buf, 0x16u);
              }

              v17 = [v15 objectID];
              [(EDConversationRemoteCloudKitStorage *)self _removeConversationInfoWithObjectId:v17 save:0 managedObjectContext:v7];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v12);
        }

        v10 = 1;
      }
    }

    v25 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  }

  while (v25);

  if (v10)
  {
    v28 = 0;
    v20 = [v7 save:&v28];
    v8 = v28;
    if ((v20 & 1) == 0)
    {
      v21 = [objc_opt_class() log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDConversationRemoteCloudKitStorage _handleDuplicationsForConversationUUIDs:managedObjectContext:];
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_conversationInfoWithUUID:(id)a3 managedObjectContext:(id)a4
{
  v4 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfosWithUUID:a3 managedObjectContext:a4];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_conversationInfosWithUUID:(id)a3 managedObjectContext:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[EDConversationInfo fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"conversationUUID == %@", v5];
  [v7 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"lastModified" ascending:0];
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v7 setSortDescriptors:v10];

  v16 = 0;
  v11 = [v6 executeFetchRequest:v7 error:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _conversationInfosWithUUID:managedObjectContext:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_addOrUpdateConversationInfo:(id)a3 managedObjectContext:(id)a4
{
  v10[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10[0] = 0;
  v6 = [a4 save:v10];
  v7 = v10[0];
  if ((v6 & 1) == 0)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v5 conversationUUID];
      objc_claimAutoreleasedReturnValue();
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _addOrUpdateConversationInfo:managedObjectContext:];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateConversationInfo:(id)a3 withAnotherConversationInfo:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v8 setNotifyMe:{objc_msgSend(v5, "notifyMe")}];
  [v8 setMuted:{objc_msgSend(v5, "muted")}];
  v6 = [v5 messageIds];
  [v8 setMessageIds:v6];

  v7 = [v5 lastModified];
  [v8 setLastModified:v7];
}

- (void)_removeConversationInfoWithId:(id)a3 managedObjectContext:(id)a4
{
  v13[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDConversationRemoteCloudKitStorage *)self _conversationInfoWithUUID:v6 managedObjectContext:v7];
  if (v8)
  {
    [v7 deleteObject:v8];
    v13[0] = 0;
    v9 = [v7 save:v13];
    v10 = v13[0];
    if ((v9 & 1) == 0)
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v10 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDConversationRemoteCloudKitStorage _removeConversationInfoWithId:managedObjectContext:];
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_removeConversationInfoWithObjectId:(id)a3 save:(BOOL)a4 managedObjectContext:(id)a5
{
  v6 = a4;
  v17[8] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v17[0] = 0;
  v9 = [v8 existingObjectWithID:v7 error:v17];
  v10 = v17[0];
  if (v10)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _removeConversationInfoWithObjectId:save:managedObjectContext:];
    }
  }

  if (v9)
  {
    [v8 deleteObject:v9];
    if (v6)
    {
      v16 = 0;
      v12 = [v8 save:&v16];
      v13 = v16;
      if ((v12 & 1) == 0)
      {
        v14 = [objc_opt_class() log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [v13 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDConversationRemoteCloudKitStorage _removeConversationInfoWithId:managedObjectContext:];
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)allConversationInfosInManagedObjectContext:(id)a3
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[EDConversationInfo fetchRequest];
  v10[0] = 0;
  v5 = [v3 executeFetchRequest:v4 error:v10];
  v6 = v10[0];
  if (v6)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage allConversationInfosInManagedObjectContext:];
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_controlInManagedObjectContext:(id)a3
{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[EDCloudKitControl fetchRequest];
  v11[0] = 0;
  v5 = [v3 executeFetchRequest:v4 error:v11];
  v6 = v11[0];
  v7 = [v5 firstObject];
  if (!v5)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _controlInManagedObjectContext:];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_handleWillResetSyncDataNotification:(id)a3
{
  v4 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__EDConversationRemoteCloudKitStorage__handleWillResetSyncDataNotification___block_invoke;
  v5[3] = &unk_1E8251DD0;
  v5[4] = self;
  [v4 performBlock:v5];
}

void __76__EDConversationRemoteCloudKitStorage__handleWillResetSyncDataNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "CoreData will reset sync couldKit data", v7, 2u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 conversationRemoteStorageWillResetData:*(a1 + 32)];
  }
}

- (void)_handleDidResetSyncDataNotification:(id)a3
{
  v4 = [(EDConversationRemoteCloudKitStorage *)self mirroringPersistentStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__EDConversationRemoteCloudKitStorage__handleDidResetSyncDataNotification___block_invoke;
  v5[3] = &unk_1E8251DD0;
  v5[4] = self;
  [v4 performBlock:v5];
}

void __75__EDConversationRemoteCloudKitStorage__handleDidResetSyncDataNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "CoreData did reset sync couldKit data", v7, 2u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 conversationRemoteStorageDidResetData:*(a1 + 32)];
  }
}

- (void)_retrieveChangesSinceLastRequestInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(EDConversationRemoteCloudKitStorage *)self historyToken];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(EDConversationRemoteCloudKitStorage *)self historyToken];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke;
  v14[3] = &unk_1E8251F38;
  v8 = v4;
  v15 = v8;
  v16 = self;
  v17 = &v18;
  v9 = [(EDConversationRemoteCloudKitStorage *)self enumerateChangeHistorySinceToken:v7 managedObjectContext:v8 usingBlock:v14];
  [(EDConversationRemoteCloudKitStorage *)self setHistoryToken:v9];

  if ([v19[5] count])
  {
    v10 = [v19[5] allKeys];
    [(EDConversationRemoteCloudKitStorage *)self _handleDuplicationsForConversationUUIDs:v10 managedObjectContext:v8];

    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "Finished handling core data changes", v13, 2u);
    }

    v12 = [(EDConversationRemoteCloudKitStorage *)self delegate];
    [v12 conversationRemoteStorage:self didChangeEntries:v19[5] reason:v6];
  }

  [(EDConversationRemoteCloudKitStorage *)self persistHistoryToken];

  _Block_object_dispose(&v18, 8);
}

void __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v3 = [v33 author];
  v4 = [v3 componentsSeparatedByString:@"."];

  v32 = v4;
  v5 = [v4 firstObject];
  v6 = [*(a1 + 32) transactionAuthor];
  LOBYTE(v4) = [v5 isEqualToString:v6];

  if ((v4 & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_INFO, "Started handling core data changes", buf, 2u);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = [v33 changes];
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v10)
    {
      v11 = *v41;
      do
      {
        v12 = 0;
        do
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 changeType];
          if (!v15)
          {
            v27 = *(a1 + 40);
            v28 = [v13 changedObjectID];
            v19 = [v27 _conversationInfoWithObjectId:v28 managedObjectContext:*(a1 + 32)];

            v29 = *(a1 + 40);
            if (!v19)
            {
              v20 = [objc_opt_class() log];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_4(&v38, v39);
              }

              goto LABEL_30;
            }

            v24 = [objc_opt_class() log];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v45 = v19;
              _os_log_debug_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEBUG, "EDConversationInfo added. %{public}@", buf, 0xCu);
            }

LABEL_19:

            v20 = [*(a1 + 40) dictionaryForConversationInfo:v19];
            v25 = *(*(*(a1 + 48) + 8) + 40);
            v26 = [v19 conversationUUID];
            [v25 setObject:v20 forKeyedSubscript:v26];

            goto LABEL_30;
          }

          if (v15 == 1)
          {
            v21 = *(a1 + 40);
            v22 = [v13 changedObjectID];
            v19 = [v21 _conversationInfoWithObjectId:v22 managedObjectContext:*(a1 + 32)];

            v23 = *(a1 + 40);
            if (!v19)
            {
              v20 = [objc_opt_class() log];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_3(&v36, v37);
              }

              goto LABEL_30;
            }

            v24 = [objc_opt_class() log];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v45 = v19;
              _os_log_debug_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEBUG, "EDConversationInfo updated/inserted. %{public}@", buf, 0xCu);
            }

            goto LABEL_19;
          }

          if (v15 != 2)
          {
            goto LABEL_31;
          }

          v16 = *(a1 + 40);
          v17 = [objc_opt_class() log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [v13 changedObjectID];
            objc_claimAutoreleasedReturnValue();
            __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_1();
          }

          v18 = [v13 tombstone];
          v19 = [v18 objectForKeyedSubscript:@"conversationUUID"];

          if (v19)
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [*(*(*(a1 + 48) + 8) + 40) setObject:v20 forKeyedSubscript:v19];
          }

          else
          {
            v30 = *(a1 + 40);
            v20 = [objc_opt_class() log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_2(&v34, v35);
            }
          }

LABEL_30:

LABEL_31:
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)enumerateChangeHistorySinceToken:(id)a3 managedObjectContext:(id)a4 usingBlock:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v29 = 0;
  v11 = [(EDConversationRemoteCloudKitStorage *)self _transactionHistorySinceToken:v10 managedObjectContext:a4 error:&v29];
  v12 = v29;
  v13 = v10;
  if (v11)
  {
    v13 = v10;
    if ([v11 count])
    {
      v23 = v12;
      v28 = 0;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v13 = v10;
      if (v15)
      {
        v16 = *v25;
        v13 = v10;
LABEL_5:
        v17 = 0;
        v18 = v13;
        while (1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * v17);
          v9[2](v9, v19, &v28);
          v13 = [v19 token];

          if (v28)
          {
            break;
          }

          ++v17;
          v18 = v13;
          if (v15 == v17)
          {
            v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v12 = v23;
    }
  }

  if (v12 && [v12 code] == 134301)
  {
    v20 = 0;
  }

  else
  {
    v20 = v13;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_transactionHistorySinceToken:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v18[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:v7];
  [v9 setResultType:5];
  v18[0] = 0;
  v10 = [v8 executeRequest:v9 error:v18];
  v11 = v18[0];
  v12 = v11;
  if (a5)
  {
    v13 = v11;
    *a5 = v12;
  }

  if (v10 && [v10 resultType] == 5)
  {
    v14 = [v10 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v15 = [objc_opt_class() log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDConversationRemoteCloudKitStorage _transactionHistorySinceToken:v14 managedObjectContext:v15 error:?];
    }
  }

  else
  {
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _transactionHistorySinceToken:managedObjectContext:error:];
    }
  }

  v14 = 0;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_conversationInfoWithObjectId:(id)a3 managedObjectContext:(id)a4
{
  v15[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15[0] = 0;
  v6 = [a4 existingObjectWithID:v5 error:v15];
  v7 = v15[0];
  if (v7)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDConversationRemoteCloudKitStorage _conversationInfoWithObjectId:managedObjectContext:];
    }
  }

  if (v6 && ([v6 entity], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"ConversationInfo"), v10, v9, v11))
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (EDConversationRemoteStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__EDConversationRemoteCloudKitStorage_setMigratedFromKVSStorage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to save Control - Error: %{public}@", v5);
}

- (void)_handleDuplicationsForConversationUUIDs:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to save _handleDuplicationsForConversationUUIDs - Error: %{public}@", v5);
}

- (void)_conversationInfosWithUUID:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to fetching EDConversationInfo with ID: %{public}@ - Error: %{public}@", v4, v5);
}

- (void)_addOrUpdateConversationInfo:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_0_0(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to save EDConversationInfo %{public}@ - Error: %{public}@", v5, v6);
}

- (void)_removeConversationInfoWithId:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to delete EDConversationInfo %{public}@ - Error: %{public}@", v4, v5);
}

- (void)_removeConversationInfoWithObjectId:save:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed fetching EDConversationInfo to remove. ObjectId: %{public}@ - Error: %{public}@", v4, v5);
}

- (void)allConversationInfosInManagedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to fetching allConversationInfos- Error: %{public}@", v5);
}

- (void)_controlInManagedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to fetching cloudKitControl: %{public}@", v5);
}

void __94__EDConversationRemoteCloudKitStorage__retrieveChangesSinceLastRequestInManagedObjectContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "EDConversationInfo deleted. %{public}@", v4, 0xCu);
}

- (void)_transactionHistorySinceToken:(uint64_t)a1 managedObjectContext:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "persistentHistoryResult.result is not an array. Ignoring it %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_transactionHistorySinceToken:managedObjectContext:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to fetch change history (%{public}@.)", v5);
}

- (void)_conversationInfoWithObjectId:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed fetching EDConversationInfo. ObjectId: %{public}@ - Error: %{public}@", v4, v5);
}

@end