@interface EDConversationMultipleRemoteStorage
+ (OS_os_log)log;
- (BOOL)isInitialized;
- (BOOL)synchronize;
- (EDConversationMultipleRemoteStorage)initWithDelegate:(id)delegate;
- (EDConversationRemoteStorageDelegate)delegate;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryRepresentation;
- (id)storageName;
- (void)_handleStorageReady:(id)ready;
- (void)_saveChanges:(id)changes fromStorage:(id)storage toStorage:(id)toStorage synchronize:(BOOL)synchronize;
- (void)conversationRemoteStorage:(id)storage didChangeEntries:(id)entries reason:(int64_t)reason;
- (void)conversationRemoteStorageDidInitialize:(id)initialize;
- (void)refresh;
- (void)removeDictionaryForKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
@end

@implementation EDConversationMultipleRemoteStorage

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDConversationMultipleRemoteStorage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_29 != -1)
  {
    dispatch_once(&log_onceToken_29, block);
  }

  v2 = log_log_29;

  return v2;
}

void __42__EDConversationMultipleRemoteStorage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_29;
  log_log_29 = v1;
}

- (EDConversationMultipleRemoteStorage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = EDConversationMultipleRemoteStorage;
  v5 = [(EDConversationMultipleRemoteStorage *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_create("com.apple.mail.EDConversationMultipleRemoteStorage", 0);
    privateQueue = v6->_privateQueue;
    v6->_privateQueue = v7;

    v9 = v6->_privateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__EDConversationMultipleRemoteStorage_initWithDelegate___block_invoke;
    block[3] = &unk_1E8250260;
    v12 = v6;
    dispatch_sync(v9, block);
  }

  return v6;
}

void __56__EDConversationMultipleRemoteStorage_initWithDelegate___block_invoke(uint64_t a1)
{
  v6 = [[EDConversationRemoteKVSStorage alloc] initWithDelegate:*(a1 + 32)];
  [*(a1 + 32) setKvsStorage:?];

  v7 = [[EDConversationRemoteCloudKitStorage alloc] initWithDelegate:*(a1 + 32)];
  [*(a1 + 32) setCloudKitStorage:?];

  v2 = [EDTransactionService alloc];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  v5 = [(EDTransactionService *)v2 initWithServiceName:?];
  [*(a1 + 32) setDataReplicationTransaction:v5];
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EDConversationMultipleRemoteStorage_dictionaryForKey___block_invoke;
  block[3] = &unk_1E8251C08;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(privateQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__EDConversationMultipleRemoteStorage_dictionaryForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cloudKitStorage];
  v2 = [v5 dictionaryForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__EDConversationMultipleRemoteStorage_dictionaryRepresentation__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __63__EDConversationMultipleRemoteStorage_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cloudKitStorage];
  v2 = [v5 dictionaryRepresentation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeDictionaryForKey:(id)key
{
  keyCopy = key;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EDConversationMultipleRemoteStorage_removeDictionaryForKey___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(privateQueue, v7);
}

void __62__EDConversationMultipleRemoteStorage_removeDictionaryForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) kvsStorage];
  [v2 removeDictionaryForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) cloudKitStorage];
  [v3 removeDictionaryForKey:*(a1 + 40)];
}

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__EDConversationMultipleRemoteStorage_setDictionary_forKey___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v12 = dictionaryCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = dictionaryCopy;
  dispatch_sync(privateQueue, block);
}

void __60__EDConversationMultipleRemoteStorage_setDictionary_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) kvsStorage];
  [v2 setDictionary:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = [*(a1 + 32) cloudKitStorage];
  [v3 setDictionary:*(a1 + 40) forKey:*(a1 + 48)];
}

- (BOOL)synchronize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__EDConversationMultipleRemoteStorage_synchronize__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __50__EDConversationMultipleRemoteStorage_synchronize__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) kvsStorage];
  if ([v3 synchronize])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) cloudKitStorage];
    *(*(*(a1 + 40) + 8) + 24) = [v2 synchronize];
  }
}

- (void)refresh
{
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EDConversationMultipleRemoteStorage_refresh__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_sync(privateQueue, block);
}

void __46__EDConversationMultipleRemoteStorage_refresh__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) kvsStorage];
  [v2 refresh];

  v3 = [*(a1 + 32) cloudKitStorage];
  [v3 refresh];
}

- (BOOL)isInitialized
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__EDConversationMultipleRemoteStorage_isInitialized__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__EDConversationMultipleRemoteStorage_isInitialized__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) kvsStorage];
  if ([v3 isInitialized])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) cloudKitStorage];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isInitialized];
  }
}

- (id)storageName
{
  v3 = MEMORY[0x1E696AEC0];
  kvsStorage = [(EDConversationMultipleRemoteStorage *)self kvsStorage];
  cloudKitStorage = [(EDConversationMultipleRemoteStorage *)self cloudKitStorage];
  v6 = [v3 stringWithFormat:@"Multiple Storages: [%@, %@]", kvsStorage, cloudKitStorage];

  return v6;
}

- (void)conversationRemoteStorage:(id)storage didChangeEntries:(id)entries reason:(int64_t)reason
{
  storageCopy = storage;
  entriesCopy = entries;
  cloudKitStorage = [(EDConversationMultipleRemoteStorage *)self cloudKitStorage];

  if (cloudKitStorage == storageCopy)
  {
    dataReplicationTransaction = [(EDConversationMultipleRemoteStorage *)self dataReplicationTransaction];
    startTransaction = [dataReplicationTransaction startTransaction];
  }

  else
  {
    startTransaction = 0;
  }

  privateQueue = [(EDConversationMultipleRemoteStorage *)self privateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__EDConversationMultipleRemoteStorage_conversationRemoteStorage_didChangeEntries_reason___block_invoke;
  block[3] = &unk_1E8251C58;
  v18 = storageCopy;
  selfCopy = self;
  v21 = startTransaction;
  reasonCopy = reason;
  v20 = entriesCopy;
  v14 = startTransaction;
  v15 = entriesCopy;
  v16 = storageCopy;
  dispatch_async(privateQueue, block);
}

void __89__EDConversationMultipleRemoteStorage_conversationRemoteStorage_didChangeEntries_reason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) kvsStorage];

  if (v2 == v3)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v9 kvsStorage];
    v8 = [*(a1 + 40) cloudKitStorage];
    [v9 _saveChanges:v10 fromStorage:v11 toStorage:v8 synchronize:1];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) cloudKitStorage];

    if (v4 != v5)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11 = [v6 cloudKitStorage];
    v8 = [*(a1 + 40) kvsStorage];
    [v6 _saveChanges:v7 fromStorage:v11 toStorage:v8 synchronize:1];
  }

LABEL_6:
  v12 = [*(a1 + 40) delegate];
  [v12 conversationRemoteStorage:*(a1 + 32) didChangeEntries:*(a1 + 48) reason:*(a1 + 64)];

  if (*(a1 + 56))
  {
    v13 = [*(a1 + 40) dataReplicationTransaction];
    [v13 endTransaction:*(a1 + 56)];
  }
}

- (void)conversationRemoteStorageDidInitialize:(id)initialize
{
  initializeCopy = initialize;
  privateQueue = [(EDConversationMultipleRemoteStorage *)self privateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__EDConversationMultipleRemoteStorage_conversationRemoteStorageDidInitialize___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = initializeCopy;
  v6 = initializeCopy;
  dispatch_async(privateQueue, v7);
}

uint64_t __78__EDConversationMultipleRemoteStorage_conversationRemoteStorageDidInitialize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataReplicationTransaction];
  v3 = [v2 hasPendingTransactions];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __78__EDConversationMultipleRemoteStorage_conversationRemoteStorageDidInitialize___block_invoke_cold_1(v5);
    }

    v6 = [*(a1 + 32) dataReplicationTransaction];
    [v6 resetPendingTransactions];

    v7 = *(a1 + 32);
    v8 = [v7 cloudKitStorage];
    v9 = [*(a1 + 32) kvsStorage];
    [v7 _replicateAllContentFromStore:v8 toStore:v9 synchronize:1];

    v10 = *(a1 + 32);
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __78__EDConversationMultipleRemoteStorage_conversationRemoteStorageDidInitialize___block_invoke_cold_2(v11);
    }
  }

  return [*(a1 + 32) _handleStorageReady:*(a1 + 40)];
}

- (void)_saveChanges:(id)changes fromStorage:(id)storage toStorage:(id)toStorage synchronize:(BOOL)synchronize
{
  synchronizeCopy = synchronize;
  v42 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  storageCopy = storage;
  toStorageCopy = toStorage;
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v34 = [changesCopy count];
    v35 = 2114;
    v36 = storageCopy;
    v37 = 2114;
    v38 = toStorageCopy;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_INFO, "Replicating %lu changes from %{public}@ to %{public}@", buf, 0x20u);
  }

  v25 = synchronizeCopy;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [changesCopy allKeys];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [changesCopy objectForKeyedSubscript:v15];
        v17 = [toStorageCopy dictionaryForKey:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [toStorageCopy removeDictionaryForKey:v15];
          v12 = 1;
        }

        else
        {
          v18 = [v16 objectForKeyedSubscript:@"last-modified"];
          v19 = [v17 objectForKeyedSubscript:@"last-modified"];
          v20 = v18 > v19;

          if (v20)
          {
            v21 = [v16 mutableCopy];
            [toStorageCopy setDictionary:v21 forKey:v15];

            v22 = [objc_opt_class() log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138544130;
              v34 = v15;
              v35 = 2114;
              v36 = storageCopy;
              v37 = 2114;
              v38 = toStorageCopy;
              v39 = 2114;
              v40 = toStorageCopy;
              _os_log_debug_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEBUG, "Change %{public}@ replicated from %{public}@ to %{public}@, because %{public}@ entry is more recent.", buf, 0x2Au);
            }

            v12 = 1;
          }

          else
          {
            v22 = [objc_opt_class() log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138544130;
              v34 = v15;
              v35 = 2114;
              v36 = storageCopy;
              v37 = 2114;
              v38 = toStorageCopy;
              v39 = 2114;
              v40 = toStorageCopy;
              _os_log_debug_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEBUG, "Ignoring change with Key %{public}@ from %{public}@ to %{public}@, because %{public}@ entry is more recent.", buf, 0x2Au);
            }
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v11);

    if ((v12 & v25) == 1)
    {
      [toStorageCopy synchronize];
    }
  }

  else
  {
  }

  v23 = [objc_opt_class() log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v34 = storageCopy;
    v35 = 2114;
    v36 = toStorageCopy;
    _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_INFO, "Finished replicating changes from %{public}@ to %{public}@", buf, 0x16u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleStorageReady:(id)ready
{
  readyCopy = ready;
  cloudKitStorage = self->_cloudKitStorage;
  if (cloudKitStorage == readyCopy && ![(EDConversationRemoteCloudKitStorage *)cloudKitStorage isMigratedFromKVSStorage])
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "CloudKitStorage finished initializing. Starting migrating content from KVS to CloudKit", buf, 2u);
    }

    [(EDConversationMultipleRemoteStorage *)self _replicateAllContentFromStore:self->_kvsStorage toStore:self->_cloudKitStorage synchronize:0];
    [(EDConversationRemoteCloudKitStorage *)self->_cloudKitStorage setMigratedFromKVSStorage:1];
    [(EDConversationRemoteCloudKitStorage *)self->_cloudKitStorage synchronize];
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Finished migrating content from KVS to CloudKit", v11, 2u);
    }
  }

  if ([(EDConversationRemoteCloudKitStorage *)self->_cloudKitStorage isInitialized])
  {
    if ([(EDConversationRemoteStorage *)self->_kvsStorage isInitialized])
    {
      delegate = [(EDConversationMultipleRemoteStorage *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [(EDConversationMultipleRemoteStorage *)self delegate];
        [delegate2 conversationRemoteStorageDidInitialize:self];
      }
    }
  }
}

- (EDConversationRemoteStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end