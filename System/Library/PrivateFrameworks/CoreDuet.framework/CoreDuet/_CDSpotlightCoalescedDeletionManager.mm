@interface _CDSpotlightCoalescedDeletionManager
- (_CDSpotlightCoalescedDeletionManager)initWithKnowledgeStore:(id)store;
- (_CDSpotlightCoalescedDeletionManager)initWithKnowledgeStore:(id)store persistencePath:(id)path delay:(double)delay;
- (void)deleteKnowledgeEventsMatchingPredicate:(id)predicate withCompletion:(id)completion;
- (void)setupCoalescingTimer;
@end

@implementation _CDSpotlightCoalescedDeletionManager

- (_CDSpotlightCoalescedDeletionManager)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v5 = +[_CDPaths systemCachesDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"_CDSpotlightCoalescedDeletionManager"];

  v7 = [(_CDSpotlightCoalescedDeletionManager *)self initWithKnowledgeStore:storeCopy persistencePath:v6 delay:5.0];
  return v7;
}

- (_CDSpotlightCoalescedDeletionManager)initWithKnowledgeStore:(id)store persistencePath:(id)path delay:(double)delay
{
  storeCopy = store;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = _CDSpotlightCoalescedDeletionManager;
  v11 = [(_CDSpotlightCoalescedDeletionManager *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_delay = delay;
    objc_storeStrong(&v11->_persistencePath, path);
    objc_storeStrong(&v12->_knowledgeStore, store);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("deletionCoalesingQueue", v13);
    deletionCoalescingQueue = v12->_deletionCoalescingQueue;
    v12->_deletionCoalescingQueue = v14;
  }

  [(_CDSpotlightCoalescedDeletionManager *)v12 setupCoalescingTimer];

  return v12;
}

- (void)setupCoalescingTimer
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke_17;
  v6[3] = &unk_1E736A7C8;
  v6[4] = self;
  v3 = MEMORY[0x193B00C50](v6, a2);
  v4 = [[_CDPersistedCoalescingTimer alloc] initWithDelay:&__block_literal_global_75 coalesceData:v3 operation:self->_persistencePath persistencePath:objc_opt_class() dataClass:@"_CDPersistedCoalescingTimer" timerName:self->_delay];
  deletionCoalescingTimer = self->_deletionCoalescingTimer;
  self->_deletionCoalescingTimer = v4;
}

- (void)deleteKnowledgeEventsMatchingPredicate:(id)predicate withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  knowledgeStore = self->_knowledgeStore;
  v17 = 0;
  v8 = [(_DKKnowledgeEventStreamDeleting *)knowledgeStore deleteAllEventsMatchingPredicate:predicate error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_CDSpotlightCoalescedDeletionManager deleteKnowledgeEventsMatchingPredicate:v9 withCompletion:v10];
    }
  }

  else
  {
    v11 = +[_CDLogging spotlightReceiverChannel];
    v10 = v11;
    if (v8)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 134217984;
      v19 = v8;
      v12 = "_CDSpotlightCoalescedDeletionManager Successfully deleted %tu knowledge events.";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v12 = "_CDSpotlightCoalescedDeletionManager No knowledge events were deleted because none of them matched the coalesced deletion operations.";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 2;
    }

    _os_log_impl(&dword_191750000, v13, v14, v12, buf, v15);
  }

LABEL_10:

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9 == 0, v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteKnowledgeEventsMatchingPredicate:(uint64_t)a1 withCompletion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "_CDSpotlightCoalescedDeletionManager Failed to delete knowledge events. Error = %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end