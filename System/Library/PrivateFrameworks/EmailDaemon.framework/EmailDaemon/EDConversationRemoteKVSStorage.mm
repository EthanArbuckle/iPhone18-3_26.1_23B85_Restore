@interface EDConversationRemoteKVSStorage
+ (OS_os_log)log;
- (BOOL)synchronize;
- (EDConversationRemoteKVSStorage)initWithDelegate:(id)delegate;
- (EDConversationRemoteStorageDelegate)delegate;
- (id)dictionaryForKey:(id)key;
- (id)dictionaryRepresentation;
- (id)storageName;
- (id)subsetOfMessageIDsToSyncFromMessageIDString:(id)string;
- (void)_storeChangedExternally:(id)externally;
- (void)removeDictionaryForKey:(id)key;
- (void)setDictionary:(id)dictionary forKey:(id)key;
@end

@implementation EDConversationRemoteKVSStorage

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDConversationRemoteKVSStorage_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_33 != -1)
  {
    dispatch_once(&log_onceToken_33, block);
  }

  v2 = log_log_33;

  return v2;
}

void __37__EDConversationRemoteKVSStorage_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_33;
  log_log_33 = v1;
}

- (EDConversationRemoteKVSStorage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = EDConversationRemoteKVSStorage;
  v5 = [(EDConversationRemoteKVSStorage *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Initializing Conversation KVS storage", buf, 2u);
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v8 = [MEMORY[0x1E696AFB8] additionalStoreWithIdentifier:@"com.apple.mail.threadinfo"];
    kvStore = v5->_kvStore;
    v5->_kvStore = v8;

    v10 = dispatch_queue_create("com.apple.mail.EDConversationRemoteKVSStorage", 0);
    privateQueue = v5->_privateQueue;
    v5->_privateQueue = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__storeChangedExternally_ name:*MEMORY[0x1E696A9E8] object:v6->_kvStore];
    v13 = v6->_privateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__EDConversationRemoteKVSStorage_initWithDelegate___block_invoke;
    block[3] = &unk_1E8250260;
    v16 = v6;
    dispatch_async(v13, block);
  }

  return v6;
}

void __51__EDConversationRemoteKVSStorage_initWithDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInitialized:1];
  v3 = [*(a1 + 32) delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 conversationRemoteStorageDidInitialize:*(a1 + 32)];
  }
}

- (void)setDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__EDConversationRemoteKVSStorage_setDictionary_forKey___block_invoke;
  block[3] = &unk_1E8250720;
  v12 = dictionaryCopy;
  selfCopy = self;
  v14 = keyCopy;
  v9 = keyCopy;
  v10 = dictionaryCopy;
  dispatch_sync(privateQueue, block);
}

void __55__EDConversationRemoteKVSStorage_setDictionary_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"message-ids"];
    v6 = [v3 subsetOfMessageIDsToSyncFromMessageIDString:v4];

    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"message-ids"];
    v5 = [*(a1 + 40) kvStore];
    [v5 setDictionary:*(a1 + 32) forKey:*(a1 + 48)];
  }

  else
  {
    v6 = [*(a1 + 40) kvStore];
    [v6 removeObjectForKey:*(a1 + 48)];
  }
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__EDConversationRemoteKVSStorage_dictionaryRepresentation__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__EDConversationRemoteKVSStorage_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) kvStore];
  v2 = [v5 dictionaryRepresentation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__EDConversationRemoteKVSStorage_dictionaryForKey___block_invoke;
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

void __51__EDConversationRemoteKVSStorage_dictionaryForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) kvStore];
  v2 = [v5 dictionaryForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeDictionaryForKey:(id)key
{
  keyCopy = key;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EDConversationRemoteKVSStorage_removeDictionaryForKey___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(privateQueue, v7);
}

void __57__EDConversationRemoteKVSStorage_removeDictionaryForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) kvStore];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (BOOL)synchronize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EDConversationRemoteKVSStorage_synchronize__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __45__EDConversationRemoteKVSStorage_synchronize__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) kvStore];
  *(*(*(a1 + 40) + 8) + 24) = [v2 synchronize];

  v3 = *(a1 + 32);
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = [*(a1 + 32) kvStore];
    v7 = v6;
    v8 = @"failed";
    if (v5)
    {
      v8 = @"succeeded";
    }

    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Synchronizing with KVS store %@: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)storageName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)subsetOfMessageIDsToSyncFromMessageIDString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [stringCopy componentsSeparatedByString:@" "];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__EDConversationRemoteKVSStorage_subsetOfMessageIDsToSyncFromMessageIDString___block_invoke;
  v9[3] = &unk_1E8251F60;
  v6 = v4;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];
  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

uint64_t __78__EDConversationRemoteKVSStorage_subsetOfMessageIDsToSyncFromMessageIDString___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addObject:a2];
  if (a3 >= 5)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_storeChangedExternally:(id)externally
{
  externallyCopy = externally;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke;
  v7[3] = &unk_1E8250128;
  v8 = externallyCopy;
  selfCopy = self;
  v6 = externallyCopy;
  dispatch_async(privateQueue, v7);
}

void __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v35 = [*(a1 + 32) object];
  v31 = [*v2 userInfo];
  v3 = [v31 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  v4 = [v3 unsignedIntegerValue];

  v34 = [v31 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
  v5 = *(a1 + 40);
  v6 = [objc_opt_class() log];
  v32 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown change reason (%lu)", v4];
    }

    else
    {
      v7 = off_1E8251FA8[v4];
    }

    *buf = 138412546;
    v44 = v7;
    v45 = 2112;
    v46 = v34;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Received external KVS change event: %@, changed keys=%@", buf, 0x16u);
  }

  if (v4 != 2)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v34, "count")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke_30;
    aBlock[3] = &unk_1E8251F88;
    v30 = v10;
    v41 = v30;
    v11 = _Block_copy(aBlock);
    if ([v34 count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = v34;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v13)
      {
        v14 = *v37;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            v17 = [v35 dictionaryForKey:v16];
            v18 = v17;
            if (!v17)
            {
              v1 = [MEMORY[0x1E695DFB0] null];
              v18 = v1;
            }

            v11[2](v11, v16, v18, 0);
            if (!v17)
            {
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v12 = [v35 dictionaryRepresentation];
      [v12 enumerateKeysAndObjectsUsingBlock:v11];
    }

    if (v32 >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown change reason (%lu)", v32];
      v20 = a1;
      v19 = v21;
    }

    else
    {
      v19 = off_1E8251FA8[v32];
      v20 = a1;
    }

    v22 = *(v20 + 40);
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = v19;
      v45 = 2112;
      v46 = v30;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    if (v32)
    {
      v24 = a1;
      if (v32 == 1)
      {
        v25 = 1;
LABEL_36:
        v28 = [*(v24 + 40) delegate];
        [v28 conversationRemoteStorage:*(v24 + 40) didChangeEntries:v30 reason:v25];

        v9 = v30;
        goto LABEL_37;
      }

      v26 = *(a1 + 40);
      v27 = [objc_opt_class() log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v19;
        _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "Unknown change reason: %@", buf, 0xCu);
      }

      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    v24 = a1;
    goto LABEL_36;
  }

  v8 = *(a1 + 40);
  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "iCloud Key Value Store Over-Quota…", buf, 2u);
  }

LABEL_37:

  v29 = *MEMORY[0x1E69E9840];
}

void __58__EDConversationRemoteKVSStorage__storeChangedExternally___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (EDConversationRemoteStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end