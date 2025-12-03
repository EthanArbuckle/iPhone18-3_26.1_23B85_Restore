@interface EDCategoryMigrator
+ (OS_os_log)log;
+ (void)initializeIfNeededWithCategoryPersistence:(id)persistence categorizer:(id)categorizer messagePersistence:(id)messagePersistence activityPersistence:(id)activityPersistence;
+ (void)migrateCategoryForQuery:(id)query cancelationToken:(id)token reason:(int64_t)reason progressHandler:(id)handler completion:(id)completion;
- (EDCategoryMigrator)initWithCategoryPersistence:(id)persistence categorizer:(id)categorizer messagePersistence:(id)messagePersistence activityPersistence:(id)activityPersistence;
- (void)_categorizeMessageBatch:(id)batch cancelationToken:(id)token reason:(int64_t)reason;
- (void)_categorizeMessagesForQuery:(id)query cancelationToken:(id)token progressHandler:(id)handler completion:(id)completion;
- (void)_endCategorization;
- (void)_migrateCategoryForQuery:(id)query cancelationToken:(id)token reason:(int64_t)reason progressHandler:(id)handler completion:(id)completion;
- (void)_updateCategorizationActivityForMessageBatch:(id)batch isFinished:(BOOL)finished cancelationToken:(id)token;
@end

@implementation EDCategoryMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__EDCategoryMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_20 != -1)
  {
    dispatch_once(&log_onceToken_20, block);
  }

  v2 = log_log_20;

  return v2;
}

void __25__EDCategoryMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_20;
  log_log_20 = v1;
}

+ (void)initializeIfNeededWithCategoryPersistence:(id)persistence categorizer:(id)categorizer messagePersistence:(id)messagePersistence activityPersistence:(id)activityPersistence
{
  persistenceCopy = persistence;
  categorizerCopy = categorizer;
  messagePersistenceCopy = messagePersistence;
  activityPersistenceCopy = activityPersistence;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __115__EDCategoryMigrator_initializeIfNeededWithCategoryPersistence_categorizer_messagePersistence_activityPersistence___block_invoke;
  v18[3] = &unk_1E8250AB8;
  v19 = persistenceCopy;
  v20 = categorizerCopy;
  v21 = messagePersistenceCopy;
  v22 = activityPersistenceCopy;
  v13 = initializeIfNeededWithCategoryPersistence_categorizer_messagePersistence_activityPersistence__once;
  v14 = activityPersistenceCopy;
  v15 = messagePersistenceCopy;
  v16 = categorizerCopy;
  v17 = persistenceCopy;
  if (v13 != -1)
  {
    dispatch_once(&initializeIfNeededWithCategoryPersistence_categorizer_messagePersistence_activityPersistence__once, v18);
  }
}

void __115__EDCategoryMigrator_initializeIfNeededWithCategoryPersistence_categorizer_messagePersistence_activityPersistence___block_invoke(void *a1)
{
  v1 = [[EDCategoryMigrator alloc] initWithCategoryPersistence:a1[4] categorizer:a1[5] messagePersistence:a1[6] activityPersistence:a1[7]];
  v2 = sDefaultInstance;
  sDefaultInstance = v1;
}

+ (void)migrateCategoryForQuery:(id)query cancelationToken:(id)token reason:(int64_t)reason progressHandler:(id)handler completion:(id)completion
{
  queryCopy = query;
  tokenCopy = token;
  handlerCopy = handler;
  completionCopy = completion;
  if (queryCopy)
  {
    [sDefaultInstance _migrateCategoryForQuery:queryCopy cancelationToken:tokenCopy reason:reason progressHandler:handlerCopy completion:completionCopy];
  }
}

- (EDCategoryMigrator)initWithCategoryPersistence:(id)persistence categorizer:(id)categorizer messagePersistence:(id)messagePersistence activityPersistence:(id)activityPersistence
{
  persistenceCopy = persistence;
  categorizerCopy = categorizer;
  messagePersistenceCopy = messagePersistence;
  activityPersistenceCopy = activityPersistence;
  v30.receiver = self;
  v30.super_class = EDCategoryMigrator;
  v15 = [(EDCategoryMigrator *)&v30 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.CategoryMigrator.writer" qualityOfService:9];
    categorizationWriterScheduler = v15->_categorizationWriterScheduler;
    v15->_categorizationWriterScheduler = v16;

    objc_storeStrong(&v15->_categoryPersistence, persistence);
    objc_storeStrong(&v15->_messagePersistence, messagePersistence);
    objc_storeStrong(&v15->_categorizer, categorizer);
    haveAccessToDb = v15->_haveAccessToDb;
    v15->_haveAccessToDb = 0;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_BACKGROUND, 0);

    v21 = dispatch_queue_create(0, v20);
    categorizationQueue = v15->_categorizationQueue;
    v15->_categorizationQueue = v21;

    v23 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    categorizationQueueLock = v15->_categorizationQueueLock;
    v15->_categorizationQueueLock = v23;

    objc_storeStrong(&v15->_activityPersistence, activityPersistence);
    v25 = objc_alloc(MEMORY[0x1E699B7F0]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [v25 initWithObject:v26];
    activityForMailboxID = v15->_activityForMailboxID;
    v15->_activityForMailboxID = v27;
  }

  return v15;
}

- (void)_migrateCategoryForQuery:(id)query cancelationToken:(id)token reason:(int64_t)reason progressHandler:(id)handler completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tokenCopy = token;
  handlerCopy = handler;
  completionCopy = completion;
  if (!self->_haveAccessToDb)
  {
    categoryPersistence = self->_categoryPersistence;
    v36 = 0;
    v17 = [(EDCategoryPersistence *)categoryPersistence requestProtectedDatabaseBackgroundProcessingForDuration:&v36 error:14400.0];
    v18 = v36;
    haveAccessToDb = self->_haveAccessToDb;
    self->_haveAccessToDb = v17;

    if (v18)
    {
      v20 = +[EDCategoryMigrator log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v18 description];
        *buf = 138412290;
        v38 = v21;
        _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Category migrator failed to obtain background processing permission : %@", buf, 0xCu);
      }
    }
  }

  self->_reason = reason;
  objc_initWeak(buf, self);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __98__EDCategoryMigrator__migrateCategoryForQuery_cancelationToken_reason_progressHandler_completion___block_invoke;
  v34[3] = &unk_1E8251748;
  v34[4] = self;
  objc_copyWeak(&v35, buf);
  [tokenCopy addCancelationBlock:v34];
  categorizationQueue = self->_categorizationQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __98__EDCategoryMigrator__migrateCategoryForQuery_cancelationToken_reason_progressHandler_completion___block_invoke_3;
  v28[3] = &unk_1E8251770;
  objc_copyWeak(&v33, buf);
  v29 = tokenCopy;
  v30 = queryCopy;
  v31 = completionCopy;
  v32 = handlerCopy;
  v23 = handlerCopy;
  v24 = queryCopy;
  v25 = completionCopy;
  v26 = tokenCopy;
  dispatch_async(categorizationQueue, v28);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(buf);
  v27 = *MEMORY[0x1E69E9840];
}

void __98__EDCategoryMigrator__migrateCategoryForQuery_cancelationToken_reason_progressHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) categorizationQueueLock];
  [v2 lock];

  [*(a1 + 32) setNumBatchesQueued:0];
  v3 = [*(a1 + 32) categorizationQueueLock];
  [v3 unlockWithCondition:0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained categorizationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__EDCategoryMigrator__migrateCategoryForQuery_cancelationToken_reason_progressHandler_completion___block_invoke_2;
    block[3] = &unk_1E8250260;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

void __98__EDCategoryMigrator__migrateCategoryForQuery_cancelationToken_reason_progressHandler_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isCanceled])
    {
      v3 = +[EDCategoryMigrator log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v10 = 134217984;
        v11 = v4;
        _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Migration was canceled using token:%p. Returning early", &v10, 0xCu);
      }

      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = [MEMORY[0x1E696ABC0] ef_cancelledError];
        (*(v5 + 16))(v5, v6);
      }
    }

    else
    {
      v7 = +[EDCategoryMigrator log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v10 = 134218242;
        v11 = WeakRetained;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Starting EDCategoryMigrator:<%p> with Query: %@", &v10, 0x16u);
      }

      [WeakRetained _categorizeMessagesForQuery:*(a1 + 40) cancelationToken:*(a1 + 32) progressHandler:*(a1 + 56) completion:*(a1 + 48)];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_endCategorization
{
  v3 = +[EDCategoryMigrator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling Category migrator.", v5, 2u);
  }

  [(EFCancelable *)self->_haveAccessToDb cancel];
  haveAccessToDb = self->_haveAccessToDb;
  self->_haveAccessToDb = 0;
}

- (void)_categorizeMessagesForQuery:(id)query cancelationToken:(id)token progressHandler:(id)handler completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tokenCopy = token;
  handlerCopy = handler;
  completionCopy = completion;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDCategoryMigrator.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v13 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.categoryMigrator.categorizeMessages"];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  messagePersistence = [(EDCategoryMigrator *)self messagePersistence];
  v15 = [messagePersistence countOfMessagesMatchingQuery:queryCopy];

  v54 = v15;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v30 = objc_opt_new();
  v16 = +[EDCategoryMigrator log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = queryCopy;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Category migrator querying for messages to recategorize with query:%@", &buf, 0xCu);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  [(EDCategoryMigrator *)self setNumBatchesQueued:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  messagePersistence2 = [(EDCategoryMigrator *)self messagePersistence];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __94__EDCategoryMigrator__categorizeMessagesForQuery_cancelationToken_progressHandler_completion___block_invoke;
  v37[3] = &unk_1E8251798;
  p_buf = &buf;
  v18 = v30;
  v43 = v46;
  v38 = v18;
  selfCopy = self;
  v19 = tokenCopy;
  v40 = v19;
  v44 = &v47;
  v20 = handlerCopy;
  v41 = v20;
  v45 = &v51;
  [messagePersistence2 iteratePersistedMessagesMatchingQuery:queryCopy limit:0x7FFFFFFFFFFFFFFFLL cancelationToken:v19 requireProtectedData:1 handler:v37];

  if (![v19 isCanceled])
  {
    if ([v18 count])
    {
      v23 = [v18 copy];
      [(EDCategoryMigrator *)self _categorizeMessageBatch:v23 cancelationToken:v19 reason:self->_reason];
      v24 = [v23 count];
      v48[3] += v24;
      if (v20)
      {
        v25 = [EDCategorizationProgress alloc];
        v26 = [(EDCategorizationProgress *)v25 initWithTotalMessagesToCategorize:v52[3] categorizedMessages:v48[3]];
        (*(v20 + 2))(v20, v26);
      }
    }

    [v13 invalidate];
    if (completionCopy)
    {
      categorizationWriterScheduler = [(EDCategoryMigrator *)self categorizationWriterScheduler];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __94__EDCategoryMigrator__categorizeMessagesForQuery_cancelationToken_progressHandler_completion___block_invoke_28;
      v33[3] = &unk_1E82517C0;
      v34 = completionCopy;
      v35 = &buf;
      [categorizationWriterScheduler performBlock:v33];
    }

    ef_cancelledError = +[EDCategoryMigrator log];
    if (os_log_type_enabled(ef_cancelledError, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&dword_1C61EF000, ef_cancelledError, OS_LOG_TYPE_DEFAULT, "Category migrator finished categorizing all messages for query", v36, 2u);
    }

    goto LABEL_18;
  }

  v21 = +[EDCategoryMigrator log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Migration was canceled. Returning early", v36, 2u);
  }

  [v13 invalidate];
  if (completionCopy)
  {
    ef_cancelledError = [MEMORY[0x1E696ABC0] ef_cancelledError];
    (*(completionCopy + 2))(completionCopy, ef_cancelledError);
LABEL_18:
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  v28 = *MEMORY[0x1E69E9840];
}

void __94__EDCategoryMigrator__categorizeMessagesForQuery_cancelationToken_progressHandler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    v7 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 ef_publicDescription];
      __94__EDCategoryMigrator__categorizeMessagesForQuery_cancelationToken_progressHandler_completion___block_invoke_cold_1(v8, &v15, v7);
    }

LABEL_9:

    goto LABEL_10;
  }

  [*(a1 + 32) addObjectsFromArray:v5];
  if ([*(a1 + 32) count] >= 0x64)
  {
    v9 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 72) + 8);
      v11 = *(v10 + 24) + 1;
      *(v10 + 24) = v11;
      v15 = 134217984;
      v16 = v11;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Category migrator reached maximum batch size batchCount:%ld", &v15, 0xCu);
    }

    v7 = [*(a1 + 32) copy];
    [*(a1 + 32) removeAllObjects];
    [*(a1 + 40) _categorizeMessageBatch:v7 cancelationToken:*(a1 + 48) reason:{objc_msgSend(*(a1 + 40), "reason")}];
    *(*(*(a1 + 80) + 8) + 24) += [v7 count];
    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = [[EDCategorizationProgress alloc] initWithTotalMessagesToCategorize:*(*(*(a1 + 88) + 8) + 24) categorizedMessages:*(*(*(a1 + 80) + 8) + 24)];
      (*(v12 + 16))(v12, v13);
    }

    goto LABEL_9;
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_categorizeMessageBatch:(id)batch cancelationToken:(id)token reason:(int64_t)reason
{
  v28 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  tokenCopy = token;
  [(EDCategoryMigrator *)self _updateCategorizationActivityForMessageBatch:batchCopy isFinished:0 cancelationToken:tokenCopy];
  v11 = +[EDCategoryMigrator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [batchCopy count];
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Category migrator recategorizing %lu messages to match current categorization version.", buf, 0xCu);
  }

  categorizer = [(EDCategoryMigrator *)self categorizer];
  v13 = [categorizer categorizeMessages:batchCopy reason:reason];

  if (v13)
  {
    categorizationQueueLock = [(EDCategoryMigrator *)self categorizationQueueLock];
    [categorizationQueueLock lockWhenCondition:0];

    [(EDCategoryMigrator *)self setNumBatchesQueued:[(EDCategoryMigrator *)self numBatchesQueued]+ 1];
    if ([(EDCategoryMigrator *)self numBatchesQueued]== 2)
    {
      categorizationQueueLock2 = [(EDCategoryMigrator *)self categorizationQueueLock];
      [categorizationQueueLock2 unlockWithCondition:1];
    }

    else
    {
      categorizationQueueLock2 = [(EDCategoryMigrator *)self categorizationQueueLock];
      [categorizationQueueLock2 unlock];
    }

    categorizationWriterScheduler = [(EDCategoryMigrator *)self categorizationWriterScheduler];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__EDCategoryMigrator__categorizeMessageBatch_cancelationToken_reason___block_invoke;
    v19[3] = &unk_1E82517E8;
    v24 = a2;
    v20 = tokenCopy;
    selfCopy = self;
    v22 = v13;
    reasonCopy = reason;
    v23 = batchCopy;
    [categorizationWriterScheduler performBlock:v19];

    v16 = v20;
  }

  else
  {
    v16 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Category migrator failed to successfully categorize message batch", buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __70__EDCategoryMigrator__categorizeMessageBatch_cancelationToken_reason___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCanceled])
  {
    v2 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v15 = 138543362;
      v16 = v3;
      _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - token canceled", &v15, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 40) categoryPersistence];
    v5 = [v4 persistCategorizationResultMap:*(a1 + 48) userInitiated:*(a1 + 72) == 3];

    [*(a1 + 40) _updateCategorizationActivityForMessageBatch:*(a1 + 56) isFinished:1 cancelationToken:*(a1 + 32)];
    v6 = +[EDCategoryMigrator log];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Category migrator successfully categorized a batch of messages", &v15, 2u);
      }
    }

    else
    {
      if (v7)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Category migrator failed to successfully recategorize messages", &v15, 2u);
      }

      v8 = *(a1 + 32);
      if (v8)
      {
        [v8 cancel];
      }
    }

    v9 = [*(a1 + 40) categorizationQueueLock];
    [v9 lock];

    v11 = *(a1 + 40);
    v10 = (a1 + 40);
    [v11 setNumBatchesQueued:{objc_msgSend(v11, "numBatchesQueued") - 1}];
    v12 = [*v10 numBatchesQueued] == 1;
    v13 = [*v10 categorizationQueueLock];
    v2 = v13;
    if (v12)
    {
      [v13 unlockWithCondition:0];
    }

    else
    {
      [v13 unlock];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateCategorizationActivityForMessageBatch:(id)batch isFinished:(BOOL)finished cancelationToken:(id)token
{
  batchCopy = batch;
  tokenCopy = token;
  if (EMBlackPearlIsFeatureEnabled())
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke;
    v19[3] = &unk_1E8251810;
    v11 = v10;
    v20 = v11;
    [batchCopy enumerateObjectsUsingBlock:v19];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2;
    aBlock[3] = &unk_1E8251860;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2_41;
    v14[3] = &unk_1E82518D8;
    v14[4] = self;
    finishedCopy = finished;
    v15 = tokenCopy;
    v16 = v12;
    v13 = v12;
    [v11 enumerateObjectsUsingBlock:v14];
  }
}

void __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_alloc(MEMORY[0x1E699AD20]);
  v4 = [v7 mailbox];
  v5 = [v4 URL];
  v6 = [v3 initWithURL:v5];

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v6 = [*(a1 + 32) activityForMailboxID];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_3;
  v17[3] = &unk_1E8251838;
  v19 = &v20;
  v7 = v5;
  v18 = v7;
  [v6 performWhileLocked:v17];

  if (v21[5])
  {
    v8 = [*(a1 + 32) activityPersistence];
    v9 = [v21[5] objectID];
    [v8 activityWithID:v9 finishedWithError:0];

    v10 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"was cancelled";
      if (a3)
      {
        v11 = @"finished";
      }

      *buf = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Categorization progress for mailbox %@ %@", buf, 0x16u);
    }

    v12 = [*(a1 + 32) activityForMailboxID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_39;
    v15[3] = &unk_1E8250D20;
    v16 = v7;
    [v12 performWhileLocked:v15];

    v13 = v16;
  }

  else
  {
    v13 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2_cold_1(v7, v13);
    }
  }

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2_41(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v4 = [*(a1 + 32) activityForMailboxID];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_3_42;
  v21[3] = &unk_1E8251838;
  v23 = &v24;
  v5 = v3;
  v22 = v5;
  [v4 performWhileLocked:v21];

  if (v25[5])
  {
    if (*(a1 + 56))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E699A6B8]];
    v7 = [*(a1 + 32) activityPersistence];
    v8 = [v7 startActivityOfType:3 userInfo:v6];
    v9 = v25[5];
    v25[5] = v8;

    v10 = +[EDCategoryMigrator log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Starting categorization progress for mailbox %@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) activityForMailboxID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_43;
    v18[3] = &unk_1E8251888;
    v12 = v5;
    v19 = v12;
    v20 = &v24;
    [v11 performWhileLocked:v18];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2_44;
    v15[3] = &unk_1E82518B0;
    v13 = *(a1 + 40);
    v17 = *(a1 + 48);
    v16 = v12;
    [v13 addCancelationBlock:v15];
  }

  _Block_object_dispose(&v24, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_3_42(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __94__EDCategoryMigrator__categorizeMessagesForQuery_cancelationToken_progressHandler_completion___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Category migrator query failed with error %{public}@", buf, 0xCu);
}

void __95__EDCategoryMigrator__updateCategorizationActivityForMessageBatch_isFinished_cancelationToken___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Could not find a categorization progress activity for mailbox %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end