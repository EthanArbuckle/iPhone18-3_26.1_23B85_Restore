@interface EDMailboxProvider
- (EDAccountsProvider)accountsProvider;
- (EDMailboxProvider)initWithAccountsProvider:(id)a3;
- (EDMailboxProviderDelegate)delegate;
- (NSSet)allMailboxObjectIDs;
- (id)_transformMailbox:(id)a3 legacyMailboxToMailboxMap:(id)a4 objectIDToLegacyMailboxMap:(id)a5;
- (id)allMailboxes;
- (id)legacyMailboxForObjectID:(id)a3;
- (id)legacyMailboxesForObjectIDs:(id)a3;
- (id)mailboxForObjectID:(id)a3;
- (id)mailboxFromLegacyMailbox:(id)a3;
- (id)mailboxObjectIDsForMailboxType:(int64_t)a3;
- (id)mailboxesFromLegacyMailboxes:(id)a3;
- (int64_t)mailboxTypeForMailboxObjectID:(id)a3;
- (void)_fetchMailboxesForAccount:(id)a3 kind:(int64_t)a4;
- (void)_invalidateCache;
- (void)_mailboxInvalidated:(id)a3;
- (void)_populateCache;
- (void)endDeferringInvalidation;
- (void)enumerateAccountsWithBlock:(id)a3;
- (void)fetchMailboxesWithKind:(int64_t)a3;
- (void)test_tearDown;
@end

@implementation EDMailboxProvider

- (void)_invalidateCache
{
  dispatch_assert_queue_V2(self->_mailboxCacheQueue);
  v3 = [(EDMailboxProvider *)self legacyMailboxToMailboxMap];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EDMailboxProvider *)self objectIDToLegacyMailboxMap];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(EDMailboxProvider *)self allMailboxCache];
      v4 = v6 != 0;
    }
  }

  [(EDMailboxProvider *)self setLegacyMailboxToMailboxMap:0];
  [(EDMailboxProvider *)self setObjectIDToLegacyMailboxMap:0];
  [(EDMailboxProvider *)self setAllMailboxCache:0];
  self->_needsToInvalidate = 0;
  if (v4)
  {
    v7 = _ef_log_EDMailboxProvider();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "_invalidateCache invalidated", buf, 2u);
    }
  }

  v8 = [(EDMailboxProvider *)self delegate];
  if (v8)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(EDMailboxProvider *)self observerScheduler];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__EDMailboxProvider__invalidateCache__block_invoke;
    v11[3] = &unk_1E8250260;
    v12 = v8;
    [v10 performBlock:v11];
  }
}

- (EDMailboxProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

_BYTE *__45__EDMailboxProvider_endDeferringInvalidation__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[12] == 1)
  {
    return [result _invalidateCache];
  }

  return result;
}

- (void)endDeferringInvalidation
{
  if (atomic_fetch_add(&self->_deferringInvalidationCount, 0xFFFFFFFF) == 1)
  {
    block[5] = v2;
    block[6] = v3;
    mailboxCacheQueue = self->_mailboxCacheQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__EDMailboxProvider_endDeferringInvalidation__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(mailboxCacheQueue, block);
  }
}

- (id)allMailboxes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  mailboxCacheQueue = self->_mailboxCacheQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__EDMailboxProvider_allMailboxes__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mailboxCacheQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__EDMailboxProvider_allMailboxes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allMailboxCache];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) _populateCache];
    v5 = [*(a1 + 32) allMailboxCache];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void ___ef_log_EDMailboxProvider_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDMailboxProvider");
  v1 = _ef_log_EDMailboxProvider_log;
  _ef_log_EDMailboxProvider_log = v0;
}

- (void)_populateCache
{
  v23 = *MEMORY[0x1E69E9840];
  [(EDMailboxProvider *)self beginDeferringInvalidation];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v5 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __35__EDMailboxProvider__populateCache__block_invoke;
  v16 = &unk_1E82533E8;
  v17 = self;
  v6 = v4;
  v18 = v6;
  v7 = v5;
  v19 = v7;
  v8 = v3;
  v20 = v8;
  [(EDMailboxProvider *)self enumerateAccountsWithBlock:&v13];
  [(EDMailboxProvider *)self setLegacyMailboxToMailboxMap:v6, v13, v14, v15, v16, v17];
  [(EDMailboxProvider *)self setObjectIDToLegacyMailboxMap:v7];
  v9 = [v8 copy];
  [(EDMailboxProvider *)self setAllMailboxCache:v9];

  [(EDMailboxProvider *)self endDeferringInvalidation];
  v10 = _ef_log_EDMailboxProvider();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 count];
    *buf = 134217984;
    v22 = v11;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "populated cache: %lu", buf, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __35__EDMailboxProvider__populateCache__block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [a2 rootMailbox];
  v7 = [v5 _transformMailbox:v6 legacyMailboxToMailboxMap:*(a1 + 40) objectIDToLegacyMailboxMap:*(a1 + 48)];

  [*(a1 + 56) addObjectsFromArray:v7];

  objc_autoreleasePoolPop(v4);
}

- (EDMailboxProvider)initWithAccountsProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = EDMailboxProvider;
  v5 = [(EDMailboxProvider *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accountsProvider, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mail.EDMailboxProviderQueue", v7);
    mailboxCacheQueue = v6->_mailboxCacheQueue;
    v6->_mailboxCacheQueue = v8;

    v10 = MEMORY[0x1E699B978];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 serialDispatchQueueSchedulerWithName:v12 qualityOfService:17];
    observerScheduler = v6->_observerScheduler;
    v6->_observerScheduler = v13;
  }

  return v6;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDMailboxProvider.m" lineNumber:43 description:{@"%s can only be called from unit tests", "-[EDMailboxProvider test_tearDown]"}];
  }

  dispatch_sync(self->_mailboxCacheQueue, &__block_literal_global_10_0);
  v4 = [(EDMailboxProvider *)self observerScheduler];
  [v4 performSyncBlock:&__block_literal_global_12];
}

- (void)enumerateAccountsWithBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accountsProvider);
  v6 = [WeakRetained mailAccounts];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v4[2](v4, v11);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_transformMailbox:(id)a3 legacyMailboxToMailboxMap:(id)a4 objectIDToLegacyMailboxMap:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(EDMailboxProvider *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxProvider _transformMailbox:legacyMailboxToMailboxMap:objectIDToLegacyMailboxMap:]", "EDMailboxProvider.m", 104, "0");
}

- (void)fetchMailboxesWithKind:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__EDMailboxProvider_fetchMailboxesWithKind___block_invoke;
  v3[3] = &unk_1E8253410;
  v3[4] = self;
  v3[5] = a3;
  [(EDMailboxProvider *)self enumerateAccountsWithBlock:v3];
}

- (void)_fetchMailboxesForAccount:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  [(EDMailboxProvider *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxProvider _fetchMailboxesForAccount:kind:]", "EDMailboxProvider.m", 114, "0");
}

- (id)mailboxFromLegacyMailbox:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [(EDMailboxProvider *)self mailboxesFromLegacyMailboxes:v6];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)mailboxesFromLegacyMailboxes:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  mailboxCacheQueue = self->_mailboxCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EDMailboxProvider_mailboxesFromLegacyMailboxes___block_invoke;
  block[3] = &unk_1E8253460;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mailboxCacheQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__EDMailboxProvider_mailboxesFromLegacyMailboxes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyMailboxToMailboxMap];

  if (!v2)
  {
    [*(a1 + 32) _populateCache];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__EDMailboxProvider_mailboxesFromLegacyMailboxes___block_invoke_2;
  v7[3] = &unk_1E8253438;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = [v3 ef_compactMap:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __50__EDMailboxProvider_mailboxesFromLegacyMailboxes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) legacyMailboxToMailboxMap];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (id)mailboxForObjectID:(id)a3
{
  v4 = [(EDMailboxProvider *)self legacyMailboxForObjectID:a3];
  if (v4)
  {
    v5 = [(EDMailboxProvider *)self mailboxFromLegacyMailbox:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)legacyMailboxForObjectID:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [(EDMailboxProvider *)self legacyMailboxesForObjectIDs:v6];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)legacyMailboxesForObjectIDs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  mailboxCacheQueue = self->_mailboxCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDMailboxProvider_legacyMailboxesForObjectIDs___block_invoke;
  block[3] = &unk_1E8253460;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mailboxCacheQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__EDMailboxProvider_legacyMailboxesForObjectIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIDToLegacyMailboxMap];

  if (!v2)
  {
    [*(a1 + 32) _populateCache];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__EDMailboxProvider_legacyMailboxesForObjectIDs___block_invoke_2;
  v7[3] = &unk_1E8253488;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = [v3 ef_compactMap:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __49__EDMailboxProvider_legacyMailboxesForObjectIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectIDToLegacyMailboxMap];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (void)_mailboxInvalidated:(id)a3
{
  mailboxCacheQueue = self->_mailboxCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EDMailboxProvider__mailboxInvalidated___block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(mailboxCacheQueue, block);
}

_BYTE *__41__EDMailboxProvider__mailboxInvalidated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isDeferringInvalidation];
  result = *(a1 + 32);
  if (v2)
  {
    if ((result[12] & 1) == 0)
    {
      v4 = _ef_log_EDMailboxProvider();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "_needsToInvalidate = YES", v5, 2u);
      }

      result = *(a1 + 32);
    }

    result[12] = 1;
  }

  else
  {

    return [result _invalidateCache];
  }

  return result;
}

- (NSSet)allMailboxObjectIDs
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(EDMailboxProvider *)self allMailboxes];
  v5 = [v4 ef_mapSelector:sel_objectID];
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (id)mailboxObjectIDsForMailboxType:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(EDMailboxProvider *)self allMailboxes];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          v11 = [v10 objectID];
          [v5 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int64_t)mailboxTypeForMailboxObjectID:(id)a3
{
  v3 = [(EDMailboxProvider *)self mailboxForObjectID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
  }

  else
  {
    v5 = -500;
  }

  return v5;
}

- (EDAccountsProvider)accountsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_accountsProvider);

  return WeakRetained;
}

@end