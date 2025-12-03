@interface EDUbiquitousConversationManager
+ (OS_os_log)log;
- (BOOL)_synchronize;
- (BOOL)hasSubscribedConversations;
- (EDUbiquitousConversationManager)initWithDelegate:(id)delegate;
- (EDUbiquitousConversationManagerDelegate)delegate;
- (id)_syncKeyForConversationID:(int64_t)d;
- (id)syncKeyForUpdatedConversation:(int64_t)conversation flags:(unint64_t)flags;
- (void)_mergeServerChanges:(id)changes;
- (void)_setCloudStorageValue:(id)value forKey:(id)key;
- (void)conversationRemoteStorage:(id)storage didChangeEntries:(id)entries reason:(int64_t)reason;
- (void)performDailyExportForChangedConversations:(id)conversations;
- (void)performInitialSync;
- (void)pruneDatabasePurgingOldestEntries:(BOOL)entries;
- (void)setFlags:(unint64_t)flags forConversations:(id)conversations;
@end

@implementation EDUbiquitousConversationManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDUbiquitousConversationManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_106 != -1)
  {
    dispatch_once(&log_onceToken_106, block);
  }

  v2 = log_log_106;

  return v2;
}

void __38__EDUbiquitousConversationManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_106;
  log_log_106 = v1;
}

- (EDUbiquitousConversationManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = EDUbiquitousConversationManager;
  v5 = [(EDUbiquitousConversationManager *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    unmatchedKeys = v5->_unmatchedKeys;
    v5->_unmatchedKeys = v6;

    v8 = dispatch_queue_create("com.apple.mobilemail.UbiquitousConversationManager", 0);
    queue = v5->_queue;
    v5->_queue = v8;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)performInitialSync
{
  if (![(EDUbiquitousConversationManager *)self initialized])
  {
    v3 = [[EDConversationMultipleRemoteStorage alloc] initWithDelegate:self];
    cloudStorage = self->_cloudStorage;
    self->_cloudStorage = v3;

    delegate = [(EDUbiquitousConversationManager *)self delegate];
    syncedConversationIDsBySyncKey = [delegate syncedConversationIDsBySyncKey];
    v7 = [syncedConversationIDsBySyncKey mutableCopy];
    [(EDUbiquitousConversationManager *)self setConversationIDsBySyncKey:v7];

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__EDUbiquitousConversationManager_performInitialSync__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(queue, block);
    [(EDUbiquitousConversationManager *)self setInitialized:1];
  }
}

void __53__EDUbiquitousConversationManager_performInitialSync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 cloudStorage];
  [v1 conversationRemoteStorage:? didChangeEntries:? reason:?];
}

- (BOOL)hasSubscribedConversations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__EDUbiquitousConversationManager_hasSubscribedConversations__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __61__EDUbiquitousConversationManager_hasSubscribedConversations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationIDsBySyncKey];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

- (id)syncKeyForUpdatedConversation:(int64_t)conversation flags:(unint64_t)flags
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__51;
  v12 = __Block_byref_object_dispose__51;
  v13 = &stru_1F45B4608;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__EDUbiquitousConversationManager_syncKeyForUpdatedConversation_flags___block_invoke;
  block[3] = &unk_1E8258F90;
  block[4] = self;
  block[5] = &v8;
  block[6] = conversation;
  dispatch_sync(queue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __71__EDUbiquitousConversationManager_syncKeyForUpdatedConversation_flags___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncKeyForConversationID:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696AEC0] ef_UUID];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
    v8 = [*(a1 + 32) conversationIDsBySyncKey];
    [v8 setObject:v9 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)setFlags:(unint64_t)flags forConversations:(id)conversations
{
  v19 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v7 = +[EDUbiquitousConversationManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    flagsCopy = flags;
    v17 = 2112;
    v18 = conversationsCopy;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Setting conversation flags %llu for conversations: %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__EDUbiquitousConversationManager_setFlags_forConversations___block_invoke;
  block[3] = &unk_1E8251A78;
  v12 = conversationsCopy;
  selfCopy = self;
  flagsCopy2 = flags;
  v9 = conversationsCopy;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __61__EDUbiquitousConversationManager_setFlags_forConversations___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__EDUbiquitousConversationManager_setFlags_forConversations___block_invoke_2;
  v5[3] = &unk_1E8258FB8;
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v5[5] = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  return [*(a1 + 40) _synchronize];
}

void __61__EDUbiquitousConversationManager_setFlags_forConversations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 longLongValue];
  if (v5)
  {
    v8 = v7;
    v9 = [*(a1 + 32) cloudStorage];
    v10 = [v9 dictionaryForKey:v5];
    v11 = [v10 mutableCopy];

    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:@"flags"];
      v13 = [v12 unsignedLongLongValue];

      v14 = *(a1 + 40);
      if (v14 == v13)
      {
LABEL_19:

        goto LABEL_20;
      }

      if (v14)
      {
        v15 = +[EDUbiquitousConversationManager log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 40);
          v32 = 138412802;
          v33 = v5;
          v34 = 2048;
          v35 = v8;
          v36 = 2048;
          v37 = v16;
          _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "modifying %@ (conversationID: %lld): flags = %llu", &v32, 0x20u);
        }

        v17 = [*(a1 + 32) delegate];
        v18 = [v17 messageIDsForConversationID:v8 limit:25];

        v19 = +[EDUbiquitousConversationManager log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v18 count];
          v32 = 134217984;
          v33 = v20;
          _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "found %lu message ids for conversation", &v32, 0xCu);
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
        [v11 setObject:v21 forKeyedSubscript:@"flags"];

        v22 = [v18 componentsJoinedByString:@" "];
        [v11 setObject:v22 forKeyedSubscript:@"message-ids"];

        [*(a1 + 32) _setCloudStorageValue:v11 forKey:v5];
      }

      else
      {
        v30 = +[EDUbiquitousConversationManager log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412546;
          v33 = v5;
          v34 = 2048;
          v35 = v8;
          _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "delete %@ (conversationID: %lld)", &v32, 0x16u);
        }

        [*(a1 + 32) _setCloudStorageValue:0 forKey:v5];
        v18 = [*(a1 + 32) conversationIDsBySyncKey];
        [v18 removeObjectForKey:v5];
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
      [v11 setObject:v23 forKeyedSubscript:@"flags"];

      v24 = [*(a1 + 32) delegate];
      v18 = [v24 messageIDsForConversationID:v8 limit:25];

      v25 = +[EDUbiquitousConversationManager log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 134217984;
        v33 = [v18 count];
        _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "found %lu message ids for conversation", &v32, 0xCu);
      }

      v26 = [v18 componentsJoinedByString:@" "];
      [v11 setObject:v26 forKeyedSubscript:@"message-ids"];

      v27 = +[EDUbiquitousConversationManager log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412546;
        v33 = v5;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "creating new cloud entry %@: %@", &v32, 0x16u);
      }

      [*(a1 + 32) _setCloudStorageValue:v11 forKey:v5];
      v28 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
      v29 = [*(a1 + 32) conversationIDsBySyncKey];
      [v29 setObject:v28 forKeyedSubscript:v5];
    }

    goto LABEL_19;
  }

LABEL_20:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_setCloudStorageValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:CFAbsoluteTimeGetCurrent()];
    [valueCopy setObject:v7 forKeyedSubscript:@"last-modified"];

    cloudStorage = [(EDUbiquitousConversationManager *)self cloudStorage];
    [cloudStorage setDictionary:valueCopy forKey:keyCopy];
  }

  else
  {
    cloudStorage = [(EDUbiquitousConversationManager *)self cloudStorage];
    [cloudStorage removeDictionaryForKey:keyCopy];
  }
}

- (id)_syncKeyForConversationID:(int64_t)d
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  conversationIDsBySyncKey = [(EDUbiquitousConversationManager *)self conversationIDsBySyncKey];
  allKeys = [conversationIDsBySyncKey allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        conversationIDsBySyncKey2 = [(EDUbiquitousConversationManager *)self conversationIDsBySyncKey];
        v12 = [conversationIDsBySyncKey2 objectForKeyedSubscript:v10];
        v13 = [v12 longLongValue] == d;

        if (v13)
        {
          v14 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)_synchronize
{
  v15 = *MEMORY[0x1E69E9840];
  cloudStorage = [(EDUbiquitousConversationManager *)self cloudStorage];
  synchronize = [cloudStorage synchronize];

  v5 = +[EDUbiquitousConversationManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cloudStorage2 = [(EDUbiquitousConversationManager *)self cloudStorage];
    v7 = cloudStorage2;
    v8 = @"failed";
    if (synchronize)
    {
      v8 = @"succeeded";
    }

    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = cloudStorage2;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Synchronizing with cloud store %@: %@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return synchronize;
}

- (void)_mergeServerChanges:(id)changes
{
  v19 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v5 = +[EDUbiquitousConversationManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = changesCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Merging server changes: %@", buf, 0xCu);
  }

  conversationIDsBySyncKey = [(EDUbiquitousConversationManager *)self conversationIDsBySyncKey];
  allKeys = [conversationIDsBySyncKey allKeys];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __55__EDUbiquitousConversationManager__mergeServerChanges___block_invoke;
  v14 = &unk_1E8256300;
  selfCopy = self;
  v8 = allKeys;
  v16 = v8;
  [changesCopy enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [EDUbiquitousConversationManager log:v11];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Finished merging server changes", buf, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __55__EDUbiquitousConversationManager__mergeServerChanges___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) conversationIDsBySyncKey];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v8 longLongValue];

  v10 = [MEMORY[0x1E695DFB0] null];

  if (v10 == v6)
  {
    v23 = +[EDUbiquitousConversationManager log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134217984;
      v36 = v9;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Server change. Clearing conversation flags for conversation: %lld", &v35, 0xCu);
    }

    v24 = *(a1 + 32);
    if (v9 == *MEMORY[0x1E699A728])
    {
      v11 = [v24 unmatchedKeys];
      [v11 removeObject:v5];
    }

    else
    {
      v25 = [v24 delegate];
      [v25 setPersistenceConversationFlags:0 syncKey:0 forConversationID:v9 reason:1];

      v11 = [*(a1 + 32) conversationIDsBySyncKey];
      [v11 removeObjectForKey:v5];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v12 = [v11 objectForKeyedSubscript:@"message-ids"];
      v13 = _stringToMessageIDs(v12);

      v14 = [v11 objectForKeyedSubscript:@"flags"];
      v15 = [v14 unsignedLongLongValue];

      v16 = [*(a1 + 40) containsObject:v5];
      v17 = *(a1 + 32);
      v18 = MEMORY[0x1E699A728];
      if (v16)
      {
        v19 = [v17 delegate];
        v20 = [v19 persistenceConversationFlagsForConversationID:v9];

        v21 = +[EDUbiquitousConversationManager log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 134218496;
          v36 = v9;
          v37 = 2048;
          v38 = v15;
          v39 = 2048;
          v40 = v20;
          _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Server change. Updating conversation flags for conversation: %lld. Old flags %llu new flags %llu", &v35, 0x20u);
        }

        if (v15 == v20)
        {
          goto LABEL_25;
        }

        v22 = [*(a1 + 32) delegate];
        [v22 setPersistenceConversationFlags:v15 syncKey:v5 forConversationID:v9 reason:1];
      }

      else
      {
        v26 = [v17 delegate];
        v9 = [v26 conversationIDForMessageIDs:v13];

        v27 = +[EDUbiquitousConversationManager log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 134217984;
          v36 = v9;
          _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "Server change. Setting conversation flags for conversation: %lld", &v35, 0xCu);
        }

        if (v9 == *v18)
        {
          v28 = +[EDUbiquitousConversationManager log];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v35) = 0;
            _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "could not find a conversation that matched those message ids", &v35, 2u);
          }

          v22 = [*(a1 + 32) unmatchedKeys];
          [v22 addObject:v5];
        }

        else
        {
          v29 = +[EDUbiquitousConversationManager log];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v35 = 134217984;
            v36 = v9;
            _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "found conversation %lld", &v35, 0xCu);
          }

          v30 = [*(a1 + 32) delegate];
          [v30 setPersistenceConversationFlags:v15 syncKey:v5 forConversationID:v9 reason:1];

          v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
          v31 = [*(a1 + 32) conversationIDsBySyncKey];
          [v31 setObject:v22 forKeyedSubscript:v5];
        }
      }

LABEL_25:
      if (v9 != *v18)
      {
        v32 = +[EDUbiquitousConversationManager log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 134217984;
          v36 = v9;
          _os_log_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_DEFAULT, "Updating message ids for conversation %lld", &v35, 0xCu);
        }

        v33 = [*(a1 + 32) delegate];
        [v33 remoteMessageIDsAdded:v13 forConversationID:v9];
      }

      goto LABEL_30;
    }

    v11 = +[EDUbiquitousConversationManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__EDUbiquitousConversationManager__mergeServerChanges___block_invoke_cold_1(v11);
    }
  }

LABEL_30:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)pruneDatabasePurgingOldestEntries:(BOOL)entries
{
  entriesCopy = entries;
  v12 = *MEMORY[0x1E69E9840];
  v5 = +[EDUbiquitousConversationManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = entriesCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Pruning database. Purging oldest entries %d", buf, 8u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke;
  v8[3] = &unk_1E8256800;
  v8[4] = self;
  v9 = entriesCopy;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [*(a1 + 32) cloudStorage];
  v3 = [v2 dictionaryRepresentation];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_2;
  v36[3] = &unk_1E8251F88;
  v4 = v27;
  v37 = v4;
  v28 = v3;
  [v3 enumerateKeysAndObjectsUsingBlock:v36];
  v5 = [v3 keysOfEntriesPassingTest:&__block_literal_global_96];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  if (*(a1 + 40) == 1)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_34;
    v34[3] = &unk_1E8255B38;
    v8 = v7;
    v35 = v8;
    [v3 enumerateKeysAndObjectsUsingBlock:v34];
    v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_42_2];
    v10 = [v9 count];
    if (v10 >= 0xA)
    {
      v11 = 10;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 subarrayWithRange:{0, v11}];
    v13 = [v12 valueForKey:@"key"];
    [v4 addObjectsFromArray:v13];
  }

  v14 = [*(a1 + 32) unmatchedKeys];
  [v14 ef_removeObjectsInArray:v4];

  if ([v4 count])
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = [*(a1 + 32) conversationIDsBySyncKey];
          v22 = [v21 objectForKeyedSubscript:v20];

          if (v22)
          {
            [v15 addObject:v22];
            v23 = [*(a1 + 32) conversationIDsBySyncKey];
            [v23 removeObjectForKey:v20];
          }

          [*(a1 + 32) _setCloudStorageValue:0 forKey:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    v24 = [*(a1 + 32) delegate];
    [v24 clearConversationFlagsAndSyncKeyForConversationIDs:v15];

    [*(a1 + 32) _synchronize];
  }

  v25 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_3;
  block[3] = &unk_1E8250260;
  block[4] = *(a1 + 32);
  dispatch_async(v25, block);

  v26 = *MEMORY[0x1E69E9840];
}

void __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"flags"];
  v8 = [v7 unsignedLongLongValue];

  if (!v8)
  {
    v9 = +[EDUbiquitousConversationManager log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "deleting entry with flag value of zero: %@", &v11, 0xCu);
    }

    [*(a1 + 32) addObject:v5];
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_32(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"flags"];
    v5 = [v4 unsignedLongLongValue] == 0;
  }

  else
  {
    v6 = +[EDUbiquitousConversationManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__EDUbiquitousConversationManager__mergeServerChanges___block_invoke_cold_1(v6);
    }

    v5 = 0;
  }

  return v5;
}

void __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"last-modified"];
  v8 = *(a1 + 32);
  v11[0] = @"key";
  v11[1] = @"last-modified";
  v12[0] = v5;
  v12[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v8 addObject:v9];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_2_39(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"last-modified"];
  v6 = [v4 objectForKeyedSubscript:@"last-modified"];
  v7 = [v5 compare:v6];

  return v7;
}

void __69__EDUbiquitousConversationManager_pruneDatabasePurgingOldestEntries___block_invoke_3(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7776000.0];
  [v4 timeIntervalSince1970];
  v3 = v2;

  v5 = [*(a1 + 32) delegate];
  [v5 pruneConversationTables:v3];
}

- (void)conversationRemoteStorage:(id)storage didChangeEntries:(id)entries reason:(int64_t)reason
{
  v20 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  entriesCopy = entries;
  v10 = +[EDUbiquitousConversationManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = storageCopy;
    v18 = 2112;
    v19 = entriesCopy;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Conversation Remote Storage %{public}@ did change entries %@", buf, 0x16u);
  }

  if (reason >= 3)
  {
    if (reason == 3)
    {
      v12 = +[EDUbiquitousConversationManager log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "over quota: pruning database", buf, 2u);
      }

      [(EDUbiquitousConversationManager *)self pruneDatabasePurgingOldestEntries:1];
    }
  }

  else
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__EDUbiquitousConversationManager_conversationRemoteStorage_didChangeEntries_reason___block_invoke;
    v14[3] = &unk_1E8250128;
    v14[4] = self;
    v15 = entriesCopy;
    dispatch_async(queue, v14);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performDailyExportForChangedConversations:(id)conversations
{
  v14 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v5 = +[EDUbiquitousConversationManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = conversationsCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Perform daily export for changed conversations: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__EDUbiquitousConversationManager_performDailyExportForChangedConversations___block_invoke;
  v9[3] = &unk_1E8250128;
  v10 = conversationsCopy;
  selfCopy = self;
  v7 = conversationsCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __77__EDUbiquitousConversationManager_performDailyExportForChangedConversations___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v2)
  {
    v37 = 0;
    v3 = *v46;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v46 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v45 + 1) + 8 * i) longLongValue];
        v6 = [*(a1 + 40) _syncKeyForConversationID:v5];
        if (v6)
        {
          v7 = [*(a1 + 40) cloudStorage];
          v8 = [v7 dictionaryForKey:v6];
          v9 = [v8 mutableCopy];

          v10 = [*(a1 + 40) delegate];
          v11 = [v10 messageIDsForConversationID:v5 limit:25];

          v12 = [v11 componentsJoinedByString:@" "];
          v13 = [v9 objectForKeyedSubscript:@"message-ids"];
          if (([v13 isEqualToString:v12] & 1) == 0)
          {
            [v9 setObject:v12 forKeyedSubscript:@"message-ids"];
            [*(a1 + 40) _setCloudStorageValue:v9 forKey:v6];
            v37 = 1;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v2);

    if (v37)
    {
      [*(a1 + 40) _synchronize];
    }
  }

  else
  {
  }

  obja = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = [*(a1 + 40) unmatchedKeys];
  v14 = [v36 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v14)
  {
    v16 = *v42;
    v38 = *MEMORY[0x1E699A728];
    *&v15 = 134217984;
    v35 = v15;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v36);
        }

        v18 = *(*(&v41 + 1) + 8 * j);
        v19 = [*(a1 + 40) cloudStorage];
        v20 = [v19 dictionaryForKey:v18];

        if (v20)
        {
          v21 = [v20 objectForKeyedSubscript:@"message-ids"];
          v22 = _stringToMessageIDs(v21);

          v23 = [*(a1 + 40) delegate];
          v24 = [v23 conversationIDForMessageIDs:v22];

          if (v24 == v38)
          {
            v25 = +[EDUbiquitousConversationManager log];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "could not find a conversation that matched those message ids", buf, 2u);
            }
          }

          else
          {
            v27 = +[EDUbiquitousConversationManager log];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v35;
              v50 = v24;
              _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "found conversation %lld", buf, 0xCu);
            }

            v28 = [v20 objectForKeyedSubscript:@"flags"];
            v29 = [v28 unsignedLongLongValue];

            v30 = [*(a1 + 40) delegate];
            [v30 setPersistenceConversationFlags:v29 syncKey:v18 forConversationID:v24 reason:1];

            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v24];
            v32 = [*(a1 + 40) conversationIDsBySyncKey];
            [v32 setObject:v31 forKeyedSubscript:v18];

            [obja addObject:v18];
          }
        }

        else
        {
          v26 = +[EDUbiquitousConversationManager log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v50 = v18;
            _os_log_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEFAULT, "Removing orphaned entry from unknwown leys set: %@", buf, 0xCu);
          }

          [obja addObject:v18];
        }
      }

      v14 = [v36 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v14);
  }

  v33 = [*(a1 + 40) unmatchedKeys];
  [v33 ef_removeObjectsInArray:obja];

  v34 = *MEMORY[0x1E69E9840];
}

- (EDUbiquitousConversationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end