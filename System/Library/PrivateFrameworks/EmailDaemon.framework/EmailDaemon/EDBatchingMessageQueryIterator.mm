@interface EDBatchingMessageQueryIterator
- (EDBatchingMessageQueryIterator)initWithMessagePersistence:(id)persistence query:(id)query batchSize:(int64_t)size firstBatchSize:(int64_t)batchSize limit:(int64_t)limit handler:(id)handler;
- (id)_deduplicateMessages:(id)messages;
- (void)_callHandlerWithError:(id)error;
- (void)_callHandlerWithMessages:(id)messages;
- (void)_processMessages:(id)messages forceFlush:(BOOL)flush;
- (void)addMessage:(id)message withDatabaseID:(int64_t)d;
- (void)flush;
@end

@implementation EDBatchingMessageQueryIterator

- (void)flush
{
  if (([(EFManualCancelationToken *)self->_cancelationToken isCanceled]& 1) == 0)
  {
    drain = [(EFQueue *)self->_messageQueue drain];
    if ([drain count])
    {
      [(EDBatchingMessageQueryIterator *)self _processMessages:drain forceFlush:1];
    }

    else if (self->_batchedMessages)
    {
      [(EDBatchingMessageQueryIterator *)self _callHandlerWithMessages:?];
      [(NSMutableArray *)self->_batchedMessages removeAllObjects];
    }

    os_unfair_lock_lock(&self->_handlerLock);
    handler = self->_handler;
    self->_handler = 0;

    os_unfair_lock_unlock(&self->_handlerLock);
  }
}

- (EDBatchingMessageQueryIterator)initWithMessagePersistence:(id)persistence query:(id)query batchSize:(int64_t)size firstBatchSize:(int64_t)batchSize limit:(int64_t)limit handler:(id)handler
{
  persistenceCopy = persistence;
  queryCopy = query;
  handlerCopy = handler;
  v45.receiver = self;
  v45.super_class = EDBatchingMessageQueryIterator;
  v18 = [(EDBatchingMessageQueryIterator *)&v45 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messagePersistence, persistence);
    v20 = MEMORY[0x1E699ADA0];
    predicate = [queryCopy predicate];
    mailboxPersistence = [persistenceCopy mailboxPersistence];
    v23 = [v20 mailboxScopeForPredicate:predicate withMailboxTypeResolver:mailboxPersistence];
    mailboxScope = v19->_mailboxScope;
    v19->_mailboxScope = v23;

    v25 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v19->_cancelationToken;
    v19->_cancelationToken = v25;

    v19->_remaining = limit;
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    seenGlobalMessages = v19->_seenGlobalMessages;
    v19->_seenGlobalMessages = v27;

    v29 = _Block_copy(handlerCopy);
    handler = v19->_handler;
    v19->_handler = v29;

    v19->_handlerLock._os_unfair_lock_opaque = 0;
    if (size >= limit)
    {
      sizeCopy = limit;
    }

    else
    {
      sizeCopy = size;
    }

    v19->_batchSize = sizeCopy;
    objc_initWeak(&location, v19);
    v32 = MEMORY[0x1E699B798];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __106__EDBatchingMessageQueryIterator_initWithMessagePersistence_query_batchSize_firstBatchSize_limit_handler___block_invoke;
    v42[3] = &unk_1E8250808;
    objc_copyWeak(&v43, &location);
    v33 = [v32 tokenWithCancelationBlock:v42];
    if (batchSize <= 0)
    {
      batchSizeCopy = size;
    }

    else
    {
      batchSizeCopy = batchSize;
    }

    if (batchSizeCopy < limit)
    {
      limit = batchSizeCopy;
    }

    v35 = v19->_cancelationToken;
    v19->_cancelationToken = v33;

    v36 = MEMORY[0x1E699B888];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __106__EDBatchingMessageQueryIterator_initWithMessagePersistence_query_batchSize_firstBatchSize_limit_handler___block_invoke_2;
    v40[3] = &unk_1E8250830;
    objc_copyWeak(&v41, &location);
    v37 = [v36 bufferedQueueWithCapacity:limit batchHandler:v40];
    messageQueue = v19->_messageQueue;
    v19->_messageQueue = v37;

    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __106__EDBatchingMessageQueryIterator_initWithMessagePersistence_query_batchSize_firstBatchSize_limit_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 22);
    v2 = *&v3[16]._os_unfair_lock_opaque;
    *&v3[16]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 22);
    WeakRetained = v3;
  }
}

void __106__EDBatchingMessageQueryIterator_initWithMessagePersistence_query_batchSize_firstBatchSize_limit_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processMessages:v6 forceFlush:0];
  if (!WeakRetained[9])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:WeakRetained[10]];
    v5 = WeakRetained[9];
    WeakRetained[9] = v4;
  }
}

- (void)_processMessages:(id)messages forceFlush:(BOOL)flush
{
  messagesCopy = messages;
  v7 = [(EDBatchingMessageQueryIterator *)self _deduplicateMessages:messagesCopy];
  v8 = v7;
  if (self->_remaining && [v7 count] > self->_remaining)
  {
    v9 = [v8 subarrayWithRange:0];

    v8 = v9;
  }

  if (([(EFManualCancelationToken *)self->_cancelationToken isCanceled]& 1) != 0)
  {
    v10 = v8;
  }

  else
  {
    if ([v8 count])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__EDBatchingMessageQueryIterator__processMessages_forceFlush___block_invoke;
      v13[3] = &unk_1E8250858;
      v13[4] = self;
      v10 = [v8 ef_filter:v13];

      self->_remaining -= [v10 count];
      batchedMessages = self->_batchedMessages;
      if (batchedMessages)
      {
        [(NSMutableArray *)batchedMessages addObjectsFromArray:v10];
        if (flush || [(NSMutableArray *)self->_batchedMessages count]>= self->_batchSize || self->_remaining <= 0)
        {
          [(EDBatchingMessageQueryIterator *)self _callHandlerWithMessages:self->_batchedMessages];
          [(NSMutableArray *)self->_batchedMessages removeAllObjects];
        }
      }

      else
      {
        [(EDBatchingMessageQueryIterator *)self _callHandlerWithMessages:v10];
      }
    }

    else
    {
      v10 = v8;
      if (!v8)
      {
        v12 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Couldn't get messages for persisted messages"];
        [(EDBatchingMessageQueryIterator *)self _callHandlerWithError:v12];

        v10 = 0;
      }
    }

    if (self->_remaining <= 0)
    {
      [(EDBatchingMessageQueryIterator *)self cancel];
    }
  }
}

uint64_t __62__EDBatchingMessageQueryIterator__processMessages_forceFlush___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 objectID];
  v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "globalMessageID")}];

  v6 = [*(*(a1 + 32) + 56) containsObject:v5];
  if ((v6 & 1) == 0)
  {
    [*(*(a1 + 32) + 56) addObject:v5];
  }

  return v6 ^ 1u;
}

- (void)addMessage:(id)message withDatabaseID:(int64_t)d
{
  messageCopy = message;
  if (([(EFManualCancelationToken *)self->_cancelationToken isCanceled]& 1) == 0)
  {
    v6 = MEMORY[0x1E699B848];
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    v8 = [v6 pairWithFirst:v7 second:messageCopy];

    [(EFQueue *)self->_messageQueue enqueue:v8];
  }
}

- (id)_deduplicateMessages:(id)messages
{
  v27 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v3 = objc_opt_new();
  v21 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = messagesCopy;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AD98];
        second = [v8 second];
        objectID = [second objectID];
        v12 = [v9 numberWithLongLong:{objc_msgSend(objectID, "globalMessageID")}];

        v13 = [v3 objectForKeyedSubscript:v12];
        if (!v13)
        {
          v14 = objc_alloc_init(_EDCombinedMessageInfo);
          [v3 setObject:v14 forKeyedSubscript:v12];
          v13 = v14;
          [v21 addObject:v14];
        }

        second2 = [v8 second];
        first = [v8 first];
        [v13 addMessage:second2 withDatabaseID:{objc_msgSend(first, "longLongValue")}];
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v17 = [v21 ef_compactMap:&__block_literal_global_77];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __55__EDBatchingMessageQueryIterator__deduplicateMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deduplicatedMessage];

  return v2;
}

- (void)_callHandlerWithMessages:(id)messages
{
  messagesCopy = messages;
  os_unfair_lock_lock(&self->_handlerLock);
  v4 = _Block_copy(self->_handler);
  os_unfair_lock_unlock(&self->_handlerLock);
  if (v4)
  {
    v4[2](v4, messagesCopy, 0);
  }
}

- (void)_callHandlerWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_handlerLock);
  v4 = _Block_copy(self->_handler);
  os_unfair_lock_unlock(&self->_handlerLock);
  if (v4)
  {
    v4[2](v4, 0, errorCopy);
  }
}

@end