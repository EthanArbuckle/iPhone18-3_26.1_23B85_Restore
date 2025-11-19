@interface EDMessageQueryEvaluator
+ (OS_os_log)log;
- (EDMessageQueryEvaluator)initWithQuery:(id)a3 messagePersistence:(id)a4 filterMessagesByID:(BOOL)a5;
- (NSArray)persistentIDsForFilterSet;
- (id)filterMessages:(id)a3 unmatchedMessages:(id *)a4;
- (id)transformAndFilterMessages:(id)a3;
- (id)transformMessages:(id)a3;
- (id)transformMessages:(id)a3 includeDeleted:(BOOL)a4;
- (void)addMessagesToFilterSet:(id)a3;
- (void)removeMessagesFromFilterSet:(id)a3;
@end

@implementation EDMessageQueryEvaluator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__EDMessageQueryEvaluator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_63 != -1)
  {
    dispatch_once(&log_onceToken_63, block);
  }

  v2 = log_log_63;

  return v2;
}

void __30__EDMessageQueryEvaluator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_63;
  log_log_63 = v1;
}

- (EDMessageQueryEvaluator)initWithQuery:(id)a3 messagePersistence:(id)a4 filterMessagesByID:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = EDMessageQueryEvaluator;
  v11 = [(EDMessageQueryEvaluator *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_messageQuery, a3);
    objc_storeStrong(&v12->_messagePersistence, a4);
    v13 = MEMORY[0x1E699ADA0];
    v14 = [(EMQuery *)v12->_messageQuery predicate];
    v15 = [(EDMessagePersistence *)v12->_messagePersistence mailboxPersistence];
    v16 = [v13 mailboxScopeForPredicate:v14 withMailboxTypeResolver:v15];
    mailboxScope = v12->_mailboxScope;
    v12->_mailboxScope = v16;

    if (v5)
    {
      v18 = objc_alloc(MEMORY[0x1E699B7F0]);
      v19 = objc_alloc_init(MEMORY[0x1E699B810]);
      v20 = [v18 initWithObject:v19];
      returnedMessageDatabaseIDs = v12->_returnedMessageDatabaseIDs;
      v12->_returnedMessageDatabaseIDs = v20;

      v22 = [MEMORY[0x1E696AE18] ef_matchEverythingPredicate];
      filterPredicate = v12->_filterPredicate;
      v12->_filterPredicate = v22;
    }

    else
    {
      v24 = MEMORY[0x1E699ADA0];
      filterPredicate = [v9 predicate];
      v25 = [v24 predicateStrippingSpotlightOnlyTerms:filterPredicate];
      v26 = v12->_filterPredicate;
      v12->_filterPredicate = v25;
    }
  }

  return v12;
}

- (NSArray)persistentIDsForFilterSet
{
  v3 = objc_opt_new();
  v4 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];

  if (v4)
  {
    v5 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__EDMessageQueryEvaluator_persistentIDsForFilterSet__block_invoke;
    v9[3] = &unk_1E8254C78;
    v6 = v3;
    v10 = v6;
    [v5 performWhileLocked:v9];

    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __52__EDMessageQueryEvaluator_persistentIDsForFilterSet__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__EDMessageQueryEvaluator_persistentIDsForFilterSet__block_invoke_2;
  v3[3] = &unk_1E8254C50;
  v4 = *(a1 + 32);
  [a2 enumerateIndexesUsingBlock:v3];
}

void __52__EDMessageQueryEvaluator_persistentIDsForFilterSet__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (void)addMessagesToFilterSet:(id)a3
{
  v4 = a3;
  v5 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];

  if (v5)
  {
    v6 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__EDMessageQueryEvaluator_addMessagesToFilterSet___block_invoke;
    v7[3] = &unk_1E8254C78;
    v8 = v4;
    [v6 performWhileLocked:v7];
  }
}

void __50__EDMessageQueryEvaluator_addMessagesToFilterSet___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) persistedMessageID];
        [v3 addIndex:{objc_msgSend(v8, "databaseID")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeMessagesFromFilterSet:(id)a3
{
  v4 = a3;
  v5 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];

  if (v5)
  {
    v6 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__EDMessageQueryEvaluator_removeMessagesFromFilterSet___block_invoke;
    v7[3] = &unk_1E8254C78;
    v8 = v4;
    [v6 performWhileLocked:v7];
  }
}

void __55__EDMessageQueryEvaluator_removeMessagesFromFilterSet___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) persistedMessageID];
        [v3 removeIndex:{objc_msgSend(v8, "databaseID")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)transformAndFilterMessages:(id)a3
{
  v3 = [(EDMessageQueryEvaluator *)self transformAndFilterMessages:a3 includeDeleted:0];

  return v3;
}

- (id)transformMessages:(id)a3
{
  v3 = [(EDMessageQueryEvaluator *)self transformMessages:a3 includeDeleted:0];

  return v3;
}

- (id)transformMessages:(id)a3 includeDeleted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];

  if (v7)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__25;
    v26 = __Block_byref_object_dispose__25;
    v27 = 0;
    v8 = [(EDMessageQueryEvaluator *)self returnedMessageDatabaseIDs];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __60__EDMessageQueryEvaluator_transformMessages_includeDeleted___block_invoke;
    v19 = &unk_1E8254CA0;
    v21 = &v22;
    v9 = v6;
    v20 = v9;
    [v8 performWhileLocked:&v16];

    v6 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  v10 = [(EDMessageQueryEvaluator *)self messagePersistence:v16];
  v11 = [(EDMessageQueryEvaluator *)self mailboxScope];
  v12 = [v10 messagesForPersistedMessages:v6 mailboxScope:v11];

  if (v4)
  {
    v13 = v12;
  }

  else
  {
    v13 = [v12 ef_filter:&__block_literal_global_56];
  }

  v14 = v13;

  return v14;
}

void __60__EDMessageQueryEvaluator_transformMessages_includeDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__EDMessageQueryEvaluator_transformMessages_includeDeleted___block_invoke_2;
  v9[3] = &unk_1E8251360;
  v10 = v3;
  v5 = v3;
  v6 = [v4 ef_filter:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __60__EDMessageQueryEvaluator_transformMessages_includeDeleted___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 persistedMessageID];
  v4 = [v2 containsIndex:{objc_msgSend(v3, "databaseID")}];

  return v4;
}

uint64_t __60__EDMessageQueryEvaluator_transformMessages_includeDeleted___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (id)filterMessages:(id)a3 unmatchedMessages:(id *)a4
{
  v19[8] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(EDMessageQueryEvaluator *)self messageQuery];
  v8 = [v7 predicate];

  v9 = [(EDMessageQueryEvaluator *)self messageQuery];
  v10 = [v9 sortDescriptors];

  if (a4)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__EDMessageQueryEvaluator_filterMessages_unmatchedMessages___block_invoke;
    v19[3] = &unk_1E8250858;
    v19[4] = self;
    v11 = [v6 ef_partition:v19];
    v12 = [v11 second];
    *a4 = [v12 sortedArrayUsingDescriptors:v10];

    v13 = [v11 first];
    v14 = [v13 sortedArrayUsingDescriptors:v10];
  }

  else
  {
    v15 = [(EDMessageQueryEvaluator *)self filterPredicate];
    v16 = [v6 filteredArrayUsingPredicate:v15];
    v14 = [v16 sortedArrayUsingDescriptors:v10];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __60__EDMessageQueryEvaluator_filterMessages_unmatchedMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) filterPredicate];
  v5 = [v4 evaluateWithObject:v3];

  return v5;
}

- (void)filterMessages:(uint8_t *)buf unmatchedMessages:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Exception occured: %{public}@\nSymbols:\n%{public}@", buf, 0x16u);
}

@end