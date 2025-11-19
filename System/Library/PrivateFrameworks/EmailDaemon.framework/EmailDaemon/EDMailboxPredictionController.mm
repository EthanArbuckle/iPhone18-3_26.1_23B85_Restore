@interface EDMailboxPredictionController
+ (OS_os_log)log;
- (EDMailboxPredictionController)initWithMessagePersistence:(id)a3 mailboxPersistence:(id)a4 hookRegistry:(id)a5 userProfileProvider:(id)a6;
- (id)_accountsForMessages:(id)a3;
- (id)_createPredictor;
- (id)_processPredictionForMessages:(id)a3;
- (id)predictMailboxForMovingObjectIDs:(id)a3 completionHandler:(id)a4;
- (void)_invalidateCacheForAddedMessage:(id)a3;
- (void)_predictMailboxForMovingMessages:(id)a3 cancelationToken:(id)a4 completionHandler:(id)a5;
@end

@implementation EDMailboxPredictionController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EDMailboxPredictionController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_52 != -1)
  {
    dispatch_once(&log_onceToken_52, block);
  }

  v2 = log_log_52;

  return v2;
}

void __36__EDMailboxPredictionController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_52;
  log_log_52 = v1;
}

- (EDMailboxPredictionController)initWithMessagePersistence:(id)a3 mailboxPersistence:(id)a4 hookRegistry:(id)a5 userProfileProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = EDMailboxPredictionController;
  v15 = [(EDMailboxPredictionController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mailboxPersistence, a4);
    objc_storeStrong(&v16->_messagePersistence, a3);
    objc_storeStrong(&v16->_userProfileProvider, a6);
    objc_storeStrong(&v16->_messagePersistence, a3);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_get_global_queue(0, 0);
    v19 = dispatch_queue_create_with_target_V2("com.apple.mail.MailboxPrediction.processing", v17, v18);
    processingQueue = v16->_processingQueue;
    v16->_processingQueue = v19;

    objc_storeStrong(&v16->_hookRegistry, a5);
    v21 = [(EDMailboxPredictionController *)v16 _createPredictor];
    cachingPredictor = v16->_cachingPredictor;
    v16->_cachingPredictor = v21;

    [v13 registerMessageChangeHookResponder:v16];
  }

  return v16;
}

- (id)predictMailboxForMovingObjectIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  if ([v6 count] < 4)
  {
    v9 = v6;
  }

  else
  {
    v9 = [v6 subarrayWithRange:{0, 3}];
  }

  v10 = v9;
  v11 = [(EDMailboxPredictionController *)self processingQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__EDMailboxPredictionController_predictMailboxForMovingObjectIDs_completionHandler___block_invoke;
  v18[3] = &unk_1E8253348;
  v18[4] = self;
  v19 = v10;
  v12 = v8;
  v20 = v12;
  v21 = v7;
  v13 = v7;
  v14 = v10;
  dispatch_async(v11, v18);

  v15 = v21;
  v16 = v12;

  return v12;
}

void __84__EDMailboxPredictionController_predictMailboxForMovingObjectIDs_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messagePersistence];
  v3 = [v2 persistedMessagesForObjectIDs:*(a1 + 40) requireProtectedData:0];

  [*(a1 + 32) _predictMailboxForMovingMessages:v3 cancelationToken:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)_predictMailboxForMovingMessages:(id)a3 cancelationToken:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] >= 4)
  {
    v11 = [v8 subarrayWithRange:{0, 3}];

    v8 = v11;
  }

  v12 = [v8 ef_map:&__block_literal_global_43];
  v13 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Predicting move mailbox for messages: %{public}@", buf, 0xCu);
  }

  if (([v9 isCanceled] & 1) == 0)
  {
    v14 = [(EDMailboxPredictionController *)self _processPredictionForMessages:v8];
    if (v14)
    {
      v15 = +[EDMailboxPredictionController log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Found mailbox for moving message(s).", buf, 2u);
      }

      v16 = [(EDMailboxPredictionController *)self mailboxPersistence];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __101__EDMailboxPredictionController__predictMailboxForMovingMessages_cancelationToken_completionHandler___block_invoke_6;
      v19[3] = &unk_1E8253398;
      v20 = v14;
      v21 = v10;
      [v16 allMailboxesWithCompletionHandler:v19];
    }

    else
    {
      v17 = +[EDMailboxPredictionController log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [EDMailboxPredictionController _predictMailboxForMovingMessages:v17 cancelationToken:? completionHandler:?];
      }

      (*(v10 + 2))(v10, 0);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

id __101__EDMailboxPredictionController__predictMailboxForMovingMessages_cancelationToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

void __101__EDMailboxPredictionController__predictMailboxForMovingMessages_cancelationToken_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__EDMailboxPredictionController__predictMailboxForMovingMessages_cancelationToken_completionHandler___block_invoke_2;
  v8[3] = &unk_1E8253370;
  v9 = *(a1 + 32);
  v4 = [v3 ef_firstObjectPassingTest:v8];
  v5 = +[EDMailboxPredictionController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 ef_publicDescription];
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Found mailbox '%{public}@'.", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __101__EDMailboxPredictionController__predictMailboxForMovingMessages_cancelationToken_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_processPredictionForMessages:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMailboxPredictionController *)self processingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EDMailboxPredictionController *)self cachingPredictor];
  v7 = [v6 predictMailboxIDsForMessages:v4 limit:7];
  v8 = [v7 ef_compactMap:&__block_literal_global_11];

  if ([v8 count])
  {
    v9 = [(EDMailboxPredictionController *)self _accountsForMessages:v4];
    if ([v9 count]== 1)
    {
      v10 = [v9 anyObject];
      v11 = [v10 identifier];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __63__EDMailboxPredictionController__processPredictionForMessages___block_invoke_14;
      v19[3] = &unk_1E82533C0;
      v19[4] = v11;
      v12 = [v8 ef_filter:v19];
      v13 = +[EDMailboxPredictionController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 count];
        v15 = [v8 count];
        *buf = 67109376;
        v21 = v14;
        v22 = 1024;
        v23 = v15;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Found %u mailbox(es) for moving message(s). Filtered from %u.", buf, 0xEu);
      }

      v16 = [v12 firstObject];
    }

    else
    {
      v11 = +[EDMailboxPredictionController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v21 = [v9 count];
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%u accounts. No prediction for moving message(s).", buf, 8u);
      }

      v16 = 0;
    }
  }

  else
  {
    v9 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Found no mailbox for moving message(s).", buf, 2u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id __63__EDMailboxPredictionController__processPredictionForMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:a2];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __63__EDMailboxPredictionController__processPredictionForMessages___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = [a2 url];
  v4 = [v3 host];

  v5 = [v4 ef_caseInsensitiveIsEqualToString:*(a1 + 32)];
  return v5;
}

- (id)_accountsForMessages:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) account];
        if (v9)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_invalidateCacheForAddedMessage:(id)a3
{
  v4 = a3;
  v5 = [(EDMailboxPredictionController *)self processingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__EDMailboxPredictionController__invalidateCacheForAddedMessage___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__EDMailboxPredictionController__invalidateCacheForAddedMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachingPredictor];
  [v2 invalidatePredictionsAffectedByMessage:*(a1 + 40)];
}

- (id)_createPredictor
{
  v3 = [EDHeuristicsMailboxPredictor alloc];
  v4 = [(EDMailboxPredictionController *)self userProfileProvider];
  v5 = [(EDMailboxPredictionController *)self messagePersistence];
  v6 = [(EDMailboxPredictionController *)self mailboxPersistence];
  v7 = [(EDHeuristicsMailboxPredictor *)v3 initWithUserProfileProvider:v4 messagePersistence:v5 mailboxPersistence:v6 parameters:&unk_1F45E70B8];

  v8 = [[EDCachingMailboxPredictor alloc] initWithPredictor:v7];

  return v8;
}

@end