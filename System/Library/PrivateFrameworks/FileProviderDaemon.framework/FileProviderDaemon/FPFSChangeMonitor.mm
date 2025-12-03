@interface FPFSChangeMonitor
- (BOOL)_activateSubscription:(id)subscription error:(id *)error;
- (BOOL)_queueEvents:(id)events markSelfEncountered:(BOOL)encountered;
- (BOOL)activateSubscription:(id)subscription error:(id *)error;
- (BOOL)handleFSEvent:(id)event indexInBatch:(unsigned int)batch batchSize:(unsigned int)size;
- (BOOL)hasBufferedEvents;
- (BOOL)setUpStreamForReason:(int64_t)reason error:(id *)error;
- (FPFSChangeMonitor)initWithLabel:(id)label workloop:(id)workloop shouldWatchRoot:(BOOL)root;
- (double)latency;
- (fpfs_fsevent_stream)_createStreamNamed:(id)named since:(unint64_t)since;
- (id)description;
- (unint64_t)oldestStartingPoint;
- (void)_cancel;
- (void)_close;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)deliverBarrierEvents;
- (void)disableSubscription:(id)subscription;
- (void)foreachSubscriptionInState:(unint64_t)state apply:(id)apply;
- (void)processFseventBatch;
- (void)queueEvents:(id)events markSelfEncountered:(BOOL)encountered;
- (void)resetWithReason:(int64_t)reason newFSEventID:(unint64_t)d;
- (void)resume;
- (void)suspend;
@end

@implementation FPFSChangeMonitor

- (BOOL)hasBufferedEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processQueue = self->_processQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__FPFSChangeMonitor_hasBufferedEvents__block_invoke;
  v5[3] = &unk_1E83BF3B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__FPFSChangeMonitor_hasBufferedEvents__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (FPFSChangeMonitor)initWithLabel:(id)label workloop:(id)workloop shouldWatchRoot:(BOOL)root
{
  v49 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  workloopCopy = workloop;
  v47.receiver = self;
  v47.super_class = FPFSChangeMonitor;
  v10 = [(FPFSChangeMonitor *)&v47 init];
  v11 = v10;
  if (v10)
  {
    atomic_store(1u, &v10->_suspendCount);
    bzero(__str, 0x400uLL);
    v12 = labelCopy;
    snprintf(__str, 0x400uLL, "%s: fsevents-stream", [labelCopy UTF8String]);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create(__str, v14);
    streamQueue = v11->_streamQueue;
    v11->_streamQueue = v15;

    v17 = labelCopy;
    snprintf(__str, 0x400uLL, "%s: fsevents-process", [labelCopy UTF8String]);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_UTILITY, 0);
    v20 = dispatch_queue_create(__str, v19);
    processQueue = v11->_processQueue;
    v11->_processQueue = v20;

    objc_storeStrong(&v11->_delegationQueue, workloop);
    v22 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v11->_delegationQueue);
    fseventsProcessSource = v11->_fseventsProcessSource;
    v11->_fseventsProcessSource = v22;

    v24 = fpfs_current_log();
    objc_storeStrong(&v11->_log, v24);
    v25 = v11->_fseventsProcessSource;
    dispatch_set_qos_class_fallback();
    objc_initWeak(&location, v11);
    v26 = v11->_fseventsProcessSource;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FPFSChangeMonitor_initWithLabel_workloop_shouldWatchRoot___block_invoke;
    block[3] = &unk_1E83BEA30;
    v27 = v24;
    v44 = v27;
    objc_copyWeak(&v45, &location);
    v28 = v26;
    v29 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v28, v29);

    v30 = +[FPDConfigurationStore defaultStore];
    v11->_maxFSEventQueueSize = [v30 maxFSEventQueueSize];

    v31 = +[FPDConfigurationStore defaultStore];
    v11->_fseventProcessBatchSize = [v31 fseventProcessBatchSize];

    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11->_maxFSEventQueueSize];
    fseventsToProcess = v11->_fseventsToProcess;
    v11->_fseventsToProcess = v32;

    v34 = getenv("FPFS_FSCHANGEMONITOR_NODELAY");
    v36 = 0;
    if (v34)
    {
      if ((v35 = v34, *v34 == 49) && !v34[1] || !strcasecmp(v34, "true") || !strcasecmp(v35, "yes"))
      {
        v36 = 1;
      }
    }

    v11->_createNoDelay = v36;
    v11->_shouldWatchRoot = root;
    v11->_optimizeOutOwnEvents = 1;
    v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    subscriptions = v11->_subscriptions;
    v11->_subscriptions = v37;

    v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    pendingBarrierEvents = v11->_pendingBarrierEvents;
    v11->_pendingBarrierEvents = v39;

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  v41 = *MEMORY[0x1E69E9840];
  return v11;
}

void __60__FPFSChangeMonitor_initWithLabel_workloop_shouldWatchRoot___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = fpfs_adopt_log();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained processFseventBatch];

  __fp_pop_log();
}

- (void)dealloc
{
  volume = self->_volume;
  self->_volume = 0;

  streamQueue = self->_streamQueue;
  self->_streamQueue = 0;

  processQueue = self->_processQueue;
  self->_processQueue = 0;

  delegationQueue = self->_delegationQueue;
  self->_delegationQueue = 0;

  fseventsProcessSource = self->_fseventsProcessSource;
  if (fseventsProcessSource)
  {
    dispatch_source_cancel(fseventsProcessSource);
    dispatch_activate(self->_fseventsProcessSource);
    v8 = self->_fseventsProcessSource;
    self->_fseventsProcessSource = 0;
  }

  v9.receiver = self;
  v9.super_class = FPFSChangeMonitor;
  [(FPFSChangeMonitor *)&v9 dealloc];
}

- (BOOL)_activateSubscription:(id)subscription error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  if ([subscriptionCopy isActivated])
  {
    [FPFSChangeMonitor _activateSubscription:error:];
  }

  [subscriptionCopy setIsActivated:1];
  volume = self->_volume;
  if (volume)
  {
LABEL_5:
    eventStreamUUID = [(FPFSVolume *)volume eventStreamUUID];
    eventStreamUUID2 = [subscriptionCopy eventStreamUUID];
    if (!eventStreamUUID2)
    {
      goto LABEL_27;
    }

    v14 = eventStreamUUID2;
    eventStreamUUID3 = [subscriptionCopy eventStreamUUID];
    v16 = [eventStreamUUID isEqual:eventStreamUUID3];

    if (v16)
    {
      goto LABEL_27;
    }

    v17 = self->_volume;
    v32 = 0;
    v18 = [(FPFSVolume *)v17 getFSEventStreamConfigWithError:&v32];
    v19 = v32;
    v20 = v19;
    if (!v18 && v19)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        fp_prettyDescription = [v20 fp_prettyDescription];
        *buf = 138412290;
        v34 = fp_prettyDescription;
        v23 = 12;
        _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_INFO, "[INFO] Unable to check for FSEvent purge : %@", buf, 0xCu);
      }

      else
      {
        v23 = 12;
      }

LABEL_26:

      delegate = [subscriptionCopy delegate];
      [delegate subscription:subscriptionCopy handleResetWithReason:v23];

LABEL_27:
      [subscriptionCopy setEventStreamUUID:eventStreamUUID];
      v24 = [(FPFSChangeMonitor *)self setUpStreamForReason:3 error:error];

      goto LABEL_28;
    }

    if (([v18 historyPurged] & 1) == 0)
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_INFO, "[INFO] No purge detected, performing stream reset", buf, 2u);
      }

      v23 = 4;
      goto LABEL_26;
    }

    previousStreamUUID = [v18 previousStreamUUID];
    eventStreamUUID4 = [subscriptionCopy eventStreamUUID];
    if ([previousStreamUUID isEqual:eventStreamUUID4])
    {
      lastPurgedEventID = [v18 lastPurgedEventID];
      lastDeliveredEventID = [subscriptionCopy lastDeliveredEventID];

      if (lastPurgedEventID < lastDeliveredEventID)
      {
        v21 = fp_current_or_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_INFO, "[INFO] Purge detected which doesn't require stream reset", buf, 2u);
        }

        v23 = 11;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_INFO, "[INFO] Purge detected which does require stream reset", buf, 2u);
    }

    v23 = 13;
    goto LABEL_26;
  }

  v8 = objc_alloc_init(FPFSVolume);
  root = [subscriptionCopy root];
  v10 = [(FPFSVolume *)v8 setupForPath:root error:error];

  if (v10)
  {
    v11 = self->_volume;
    self->_volume = v8;

    volume = self->_volume;
    goto LABEL_5;
  }

  v24 = 0;
LABEL_28:

  v30 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)activateSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isActivated = selfCopy->_isActivated;
  if (!isActivated)
  {
    selfCopy->_isActivated = 1;
  }

  v9 = [(FPFSChangeMonitor *)selfCopy _activateSubscription:subscriptionCopy error:error];
  objc_sync_exit(selfCopy);

  if (!isActivated)
  {
    [(FPFSChangeMonitor *)selfCopy resume];
  }

  [(FPFSChangeMonitor *)selfCopy resume];

  return v9;
}

- (void)disableSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_subscriptions count])
  {
    [(NSMutableArray *)selfCopy->_subscriptions removeObject:subscriptionCopy];
  }

  v5 = [(NSMutableArray *)selfCopy->_subscriptions count];
  if (!v5)
  {
    selfCopy->_isActivated = 0;
  }

  isActivated = [subscriptionCopy isActivated];
  objc_sync_exit(selfCopy);

  if (v5)
  {
    if (isActivated)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [(FPFSChangeMonitor *)selfCopy suspend];
  if ((isActivated & 1) == 0)
  {
LABEL_7:
    [(FPFSChangeMonitor *)selfCopy resume];
  }

LABEL_8:
}

- (void)foreachSubscriptionInState:(unint64_t)state apply:(id)apply
{
  v25 = *MEMORY[0x1E69E9840];
  applyCopy = apply;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableArray *)selfCopy->_subscriptions copy];
  objc_sync_exit(selfCopy);
  p_isa = &selfCopy->super.isa;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = v14;
        objc_sync_enter(v16);
        if (([v16 state] & state) != 0 && (applyCopy[2](applyCopy, v16) & 1) == 0)
        {
          objc_sync_exit(v16);

          objc_autoreleasePoolPop(v15);
          v17 = v10;
          goto LABEL_15;
        }

        if ([v16 state] == 4)
        {
          [v7 addObject:v16];
        }

        objc_sync_exit(v16);

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if ([v7 count])
  {
    v17 = p_isa;
    objc_sync_enter(v17);
    [p_isa[12] removeObjectsInArray:v7];
    objc_sync_exit(v17);
LABEL_15:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (unint64_t)oldestStartingPoint
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__FPFSChangeMonitor_oldestStartingPoint__block_invoke;
  v4[3] = &unk_1E83C0DE8;
  v4[4] = &v5;
  [(FPFSChangeMonitor *)self foreachSubscriptionInState:3 apply:v4];
  if (v6[3])
  {
    v2 = v6[3];
  }

  else
  {
    v2 = -1;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__FPFSChangeMonitor_oldestStartingPoint__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastDeliveredEventID];
  if (v3 != -1)
  {
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 24) - 1 >= v3)
    {
      *(v4 + 24) = v3;
    }
  }

  return 1;
}

- (double)latency
{
  if (self->_createNoDelay)
  {
    return 0.0;
  }

  v3 = +[FPDConfigurationStore defaultStore];
  [v3 fseventsAggregationDelay];
  v5 = v4;

  return v5;
}

- (fpfs_fsevent_stream)_createStreamNamed:(id)named since:(unint64_t)since
{
  createNoDelay = self->_createNoDelay;
  subscriptions = self->_subscriptions;
  namedCopy = named;
  v9 = [(NSMutableArray *)subscriptions valueForKey:@"root"];
  path = [(NSURL *)self->_barrierFolderURL path];
  if (path)
  {
    v11 = [v9 arrayByAddingObject:path];

    v9 = v11;
  }

  self->_isProcessingHistory = since != -1;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FPFSChangeMonitor _createStreamNamed:v9 since:&self->_isProcessingHistory];
  }

  if (createNoDelay)
  {
    v13 = 499;
  }

  else
  {
    v13 = 497;
  }

  uTF8String = [namedCopy UTF8String];
  [(FPFSChangeMonitor *)self latency];
  v16 = fpfs_fsevent_stream_open(uTF8String, fseventsCallback, self, v9, since, v13, self->_streamQueue, v15);

  return v16;
}

- (BOOL)setUpStreamForReason:(int64_t)reason error:(id *)error
{
  self->_drainEvents = 0;
  v5 = [(FPFSChangeMonitor *)self oldestStartingPoint:reason];
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FPFSChangeMonitor setUpStreamForReason:error:];
  }

  stream = self->_stream;
  if (stream)
  {
    fpfs_fsevent_stream_close(stream);
    self->_stream = 0;
  }

  v8 = [(FPFSChangeMonitor *)self _createStreamNamed:@"com.apple.fpfs.fsevents" since:v5];
  self->_stream = v8;
  return v8 != 0;
}

- (BOOL)_queueEvents:(id)events markSelfEncountered:(BOOL)encountered
{
  encounteredCopy = encountered;
  eventsCopy = events;
  if ([(NSMutableArray *)self->_fseventsToProcess count])
  {
    v7 = [(NSMutableArray *)self->_fseventsToProcess objectAtIndexedSubscript:0];
    v8 = [v7 flags] & 0xE;

    if (v8)
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [FPFSChangeMonitor _queueEvents:markSelfEncountered:];
      }

LABEL_23:
      v18 = 0;
      goto LABEL_24;
    }
  }

  v10 = [eventsCopy objectAtIndexedSubscript:0];
  v11 = [v10 flags] & 0xE;

  if (v11)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPFSChangeMonitor _queueEvents:markSelfEncountered:];
    }

    [(NSMutableArray *)self->_fseventsToProcess removeAllObjects];
    fseventsToProcess = self->_fseventsToProcess;
    v14 = [eventsCopy objectAtIndexedSubscript:0];
    [(NSMutableArray *)fseventsToProcess addObject:v14];

    dispatch_source_merge_data(self->_fseventsProcessSource, 1uLL);
    goto LABEL_23;
  }

  if (encounteredCopy)
  {
    if (self->_hasMarkSelf)
    {
      v15 = [(NSMutableArray *)self->_fseventsToProcess count];
      if (v15 >= 1)
      {
        v16 = (v15 & 0x7FFFFFFF) + 1;
        while (1)
        {
          v17 = [(NSMutableArray *)self->_fseventsToProcess objectAtIndexedSubscript:v16 - 2];
          if (([v17 flags] & 0x80000) != 0)
          {
            break;
          }

          if (--v16 <= 1)
          {
            goto LABEL_19;
          }
        }

        [(NSMutableArray *)self->_fseventsToProcess removeObjectAtIndex:v16 - 2];
      }
    }

    else
    {
      self->_hasMarkSelf = 1;
    }
  }

LABEL_19:
  if ([(NSMutableArray *)self->_fseventsToProcess count]>= self->_maxFSEventQueueSize)
  {
    [FPFSChangeMonitor _queueEvents:markSelfEncountered:];
  }

  [(NSMutableArray *)self->_fseventsToProcess addObjectsFromArray:eventsCopy];
  if ([(NSMutableArray *)self->_fseventsToProcess count])
  {
    dispatch_source_merge_data(self->_fseventsProcessSource, 1uLL);
  }

  if ([(NSMutableArray *)self->_fseventsToProcess count]< self->_maxFSEventQueueSize)
  {
    goto LABEL_23;
  }

  v20 = fp_current_or_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] We still have too many events in the queue, blocking until events are flushed", v21, 2u);
  }

  v18 = 1;
LABEL_24:

  return v18;
}

- (void)queueEvents:(id)events markSelfEncountered:(BOOL)encountered
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    processQueue = self->_processQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__FPFSChangeMonitor_queueEvents_markSelfEncountered___block_invoke;
    block[3] = &unk_1E83C0E10;
    v12 = &v14;
    block[4] = self;
    v11 = eventsCopy;
    encounteredCopy = encountered;
    dispatch_sync(processQueue, block);
    if (*(v15 + 24) == 1)
    {
      delegationQueue = self->_delegationQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__FPFSChangeMonitor_queueEvents_markSelfEncountered___block_invoke_2;
      v9[3] = &unk_1E83BE068;
      v9[4] = self;
      dispatch_async_and_wait(delegationQueue, v9);
    }

    _Block_object_dispose(&v14, 8);
  }
}

uint64_t __53__FPFSChangeMonitor_queueEvents_markSelfEncountered___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queueEvents:*(a1 + 40) markSelfEncountered:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)processFseventBatch
{
  v35 = *MEMORY[0x1E69E9840];
  log = self->_log;
  v29 = fpfs_adopt_log();
  dispatch_assert_queue_V2(self->_delegationQueue);
  v4 = self->_processQueue;
  if (v4)
  {
    v5 = fssync_default_log();
    v6 = os_signpost_id_generate(v5);

    v7 = fssync_default_log();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = [(NSMutableArray *)self->_fseventsToProcess count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v9;
      _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FS: event batch", "count %llu", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__15;
    v33 = __Block_byref_object_dispose__15;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    [(FPFSChangeMonitor *)self foreachSubscriptionInState:2 apply:&__block_literal_global_23];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FPFSChangeMonitor_processFseventBatch__block_invoke_2;
    block[3] = &unk_1E83C0E58;
    block[4] = self;
    block[5] = &buf;
    block[6] = &v25;
    dispatch_sync(v4, block);
    v10 = [*(*(&buf + 1) + 40) count];
    v11 = v10;
    if (v10)
    {
      v12 = 0;
      v13 = v10 - 1;
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [*(*(&buf + 1) + 40) objectAtIndexedSubscript:v12];
        v16 = [(FPFSChangeMonitor *)self handleFSEvent:v15 indexInBatch:v12 batchSize:v11];

        objc_autoreleasePoolPop(v14);
      }

      while (v13 != v12++ && v16);
    }

    [(FPFSChangeMonitor *)self foreachSubscriptionInState:2 apply:&__block_literal_global_21_0];
    if (*(v26 + 24) == 1)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __40__FPFSChangeMonitor_processFseventBatch__block_invoke_4;
      v23[3] = &unk_1E83BE068;
      v23[4] = self;
      dispatch_async(v4, v23);
    }

    v19 = fssync_default_log();
    v20 = v19;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v20, OS_SIGNPOST_INTERVAL_END, v6, "FS: event batch", "", v22, 2u);
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&buf, 8);
  }

  __fp_pop_log();
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __40__FPFSChangeMonitor_processFseventBatch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 subscriptionWillHandleBatchOfEvents:v2];

  return 1;
}

uint64_t __40__FPFSChangeMonitor_processFseventBatch__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v4 = [*(v2 + 56) count];
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = [*(*(a1 + 32) + 56) subarrayWithRange:{0, v3}];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 56) removeObjectsInRange:{0, v3}];
  *(*(a1 + 32) + 85) = 0;
  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  v9 = *(*(a1 + 32) + 86);
  objc_sync_exit(v8);

  if (v9 == 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = *(*(a1 + 32) + 56);
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (([*(*(&v17 + 1) + 8 * i) flags] & 0x80000) != 0)
          {
            *(*(a1 + 32) + 85) = 1;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __40__FPFSChangeMonitor_processFseventBatch__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 subscriptionDidHandleBatchOfEvents:v2];

  return 1;
}

void __40__FPFSChangeMonitor_processFseventBatch__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    dispatch_source_merge_data(v1, 1uLL);
  }
}

- (void)deliverBarrierEvents
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__FPFSChangeMonitor_deliverBarrierEvents__block_invoke;
  v11[3] = &unk_1E83C0E80;
  v11[4] = self;
  v11[5] = &v12;
  [(FPFSChangeMonitor *)self foreachSubscriptionInState:2 apply:v11];
  v3 = [(NSMutableArray *)self->_pendingBarrierEvents count];
  if (v3 != v13[3])
  {
    v4 = [(NSMutableArray *)self->_pendingBarrierEvents count];
    v5 = v13[3];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "";
      if ((v4 - v5) > 1)
      {
        v7 = "s";
      }

      *buf = 134218242;
      v17 = v4 - v5;
      v18 = 2080;
      v19 = v7;
      _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] %lu barrier event%s not delivered, dropping!", buf, 0x16u);
    }
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  pendingBarrierEvents = self->_pendingBarrierEvents;
  self->_pendingBarrierEvents = v8;

  _Block_object_dispose(&v12, 8);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __41__FPFSChangeMonitor_deliverBarrierEvents__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 104);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 didProcessBarrierEventUUID:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          v9 = fp_current_or_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            __41__FPFSChangeMonitor_deliverBarrierEvents__block_invoke_cold_1();
          }

          ++*(*(*(a1 + 40) + 8) + 24);
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)handleFSEvent:(id)event indexInBatch:(unsigned int)batch batchSize:(unsigned int)size
{
  v61 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  path = [eventCopy path];
  eventID = [eventCopy eventID];
  fileID = [eventCopy fileID];
  docID = [eventCopy docID];
  flags = [eventCopy flags];
  v11 = [eventCopy additionalDebugFlagsForHistoricalStream:self->_isProcessingHistory] | flags;
  v40 = [MEMORY[0x1E696AEC0] fpfs_initWithFSEventsFlags:v11];
  v12 = fssync_default_log();
  spid = os_signpost_id_generate(v12);

  v13 = fssync_default_log();
  v14 = v13;
  v15 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    fp_prettyPath = [path fp_prettyPath];
    *buf = 138413314;
    *&buf[4] = fp_prettyPath;
    *&buf[12] = 2048;
    *&buf[14] = fileID;
    *&buf[22] = 1024;
    *v56 = docID;
    *&v56[4] = 2112;
    *&v56[6] = v40;
    *&v56[14] = 2048;
    *&v56[16] = eventID;
    _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "FS: event", "path %@ fileID %llu docID %u flags %@ eventID %llu", buf, 0x30u);
  }

  section = __fp_create_section();
  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    fp_prettyPath2 = [path fp_prettyPath];
    *buf = 134219778;
    *&buf[4] = section;
    *&buf[12] = 1024;
    *&buf[14] = batch + 1;
    *&buf[18] = 1024;
    *&buf[20] = size;
    *v56 = 2112;
    *&v56[2] = fp_prettyPath2;
    *&v56[10] = 2048;
    *&v56[12] = fileID;
    *&v56[20] = 1024;
    *&v56[22] = docID;
    v57 = 2112;
    v58 = v40;
    v59 = 2048;
    v60 = eventID;
    v37 = fp_prettyPath2;
    _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Dequeueing event: %u/%u path:'%@' fileID:%llu docID:%u flags:%@ id:%llu", buf, 0x46u);
  }

  if ((v11 & 8) != 0)
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_INFO, "[INFO] fsevents id wrapped", buf, 2u);
    }

    [(FPFSChangeMonitor *)self resetWithReason:5 newFSEventID:-1];
    v26 = fssync_default_log();
    v27 = v26;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v27, OS_SIGNPOST_INTERVAL_END, spid, "FS: event", "", buf, 2u);
    }

    goto LABEL_32;
  }

  if ((v11 & 0x10) != 0)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_INFO, "[INFO] done processing history", buf, 2u);
    }

    self->_isProcessingHistory = 0;
    [(FPFSChangeMonitor *)self deliverBarrierEvents];
  }

  if ((v11 & 4) != 0)
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v28, OS_LOG_TYPE_INFO, "[INFO] kernel dropped an event", buf, 2u);
    }

    [(FPFSChangeMonitor *)self resetWithReason:10 newFSEventID:-1];
    v29 = fssync_default_log();
    v27 = v29;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v27, OS_SIGNPOST_INTERVAL_END, spid, "FS: event", "", buf, 2u);
    }

    goto LABEL_32;
  }

  if ((v11 & 2) != 0)
  {
    if (self->_isProcessingHistory)
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_INFO, "[INFO] dropped event during the processing of the historical stream", buf, 2u);
      }

      [(FPFSChangeMonitor *)self resetWithReason:8 newFSEventID:-1];
      v33 = fssync_default_log();
      v27 = v33;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v27, OS_SIGNPOST_INTERVAL_END, spid, "FS: event", "", buf, 2u);
      }
    }

    else
    {
      if (self->_plannedRescan)
      {
        goto LABEL_13;
      }

      v34 = fp_current_or_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_INFO, "[INFO] dropped event during the processing of the live stream", buf, 2u);
      }

      [(FPFSChangeMonitor *)self resetWithReason:9 newFSEventID:0];
      v35 = fssync_default_log();
      v27 = v35;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v27, OS_SIGNPOST_INTERVAL_END, spid, "FS: event", "", buf, 2u);
      }
    }

LABEL_32:

    v24 = 0;
    goto LABEL_33;
  }

LABEL_13:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56[0] = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke;
  v44[3] = &unk_1E83C0EA8;
  v51 = v11;
  v49 = eventID;
  v45 = eventCopy;
  selfCopy = self;
  v19 = path;
  v47 = v19;
  v48 = buf;
  v50 = fileID;
  v52 = docID;
  [(FPFSChangeMonitor *)self foreachSubscriptionInState:2 apply:v44];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      fp_prettyPath3 = [v19 fp_prettyPath];
      [FPFSChangeMonitor handleFSEvent:fp_prettyPath3 indexInBatch:v54 batchSize:v20];
    }
  }

  v22 = fssync_default_log();
  v23 = v22;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v43 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v23, OS_SIGNPOST_INTERVAL_END, spid, "FS: event", "", v43, 2u);
  }

  _Block_object_dispose(buf, 8);
  v24 = 1;
LABEL_33:
  __fp_leave_section_Debug();

  v30 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![v3 ignoreOwnEvents] || (*(a1 + 82) & 8) == 0)
  {
    v5 = [*(a1 + 32) barrierUUID];
    if (v5)
    {
      if (*(*(a1 + 40) + 87) == 1)
      {
        v6 = fp_current_or_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_3();
        }

        [*(*(a1 + 40) + 104) addObject:v5];
        goto LABEL_29;
      }

      if ((*(a1 + 81) & 1) == 0)
      {
LABEL_29:
        v9 = 0;
        goto LABEL_37;
      }

      if ([v3 didProcessBarrierEventUUID:v5])
      {
        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __41__FPFSChangeMonitor_deliverBarrierEvents__block_invoke_cold_1();
        }

        goto LABEL_29;
      }

LABEL_36:
      v9 = 1;
      goto LABEL_37;
    }

    if ((*(a1 + 80) & 2) != 0)
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_4();
      }

      v18 = [v3 delegate];
      [v18 subscriptionHandleDroppedEvent:v3];

      goto LABEL_36;
    }

    v7 = *(a1 + 48);
    v8 = [v3 root];
    LODWORD(v7) = [v7 hasPrefix:v8];

    v9 = 1;
    if (!v7)
    {
LABEL_37:

      goto LABEL_38;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    if ((*(*(a1 + 40) + 87) & 1) != 0 || (*(a1 + 80) & 0xB01) == 0 || ([*(a1 + 32) rawFlags] & 0x80000) != 0 || (v10 = *(a1 + 48), objc_msgSend(v3, "root"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = objc_msgSend(v10, "isEqualToString:", v11), v11, !v10))
    {
LABEL_33:
      *&v25.st_dev = __fp_create_section();
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_7();
      }

      v20 = [v3 delegate];
      [v20 subscription:v3 handleEventAtPath:*(a1 + 48) targetItemID:*(a1 + 72) docID:*(a1 + 84) eventID:*(a1 + 64) flags:*(a1 + 80)];

      [v3 didProcessEventID:*(a1 + 64)];
      __fp_leave_section_Debug();
      goto LABEL_36;
    }

    memset(&v25, 0, sizeof(v25));
    v12 = [v3 root];
    if (lstat([v12 fileSystemRepresentation], &v25) < 0)
    {
      v23 = *__error() == 2;

      if (v23)
      {
LABEL_16:
        st_ino = v25.st_ino;
        if (st_ino != [v3 rootFileID])
        {
          v24 = fp_current_or_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_6(v3, &v25.st_ino, v24);
          }

          exit(1);
        }

        if ((*(a1 + 80) & 0xA01) != 0)
        {
          v14 = fp_current_or_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = v3;
            _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] %@ root needs deep-scan", buf, 0xCu);
          }

          [*(a1 + 40) resetWithReason:6 newFSEventID:-1];
          goto LABEL_29;
        }

        goto LABEL_33;
      }

      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_5(v3, v12);
      }
    }

    goto LABEL_16;
  }

  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_1(v3, a1);
  }

  [v3 didProcessEventID:*(a1 + 64)];
  v9 = 1;
LABEL_38:
  objc_autoreleasePoolPop(v4);

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)description
{
  v3 = atomic_load(&self->_suspendCount);
  if (v3 <= 0)
  {
    v4 = @"running";
  }

  else
  {
    v4 = @"suspended";
  }

  if (self->_isCancelled)
  {
    v5 = @"cancelled";
  }

  else
  {
    v5 = v4;
  }

  v6 = atomic_load(&self->_resetCount);
  if (v6 >= 1)
  {
    v7 = atomic_load(&self->_resetCount);
    v5 = [(__CFString *)v5 stringByAppendingFormat:@" reset:%d", v7];
  }

  if (self->_stream)
  {
    v8 = [(__CFString *)v5 stringByAppendingFormat:@" [open stream]"];

    v5 = v8;
  }

  v9 = [(NSMutableArray *)self->_subscriptions valueForKey:@"root"];
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = [v9 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"<%@: %p %@ roots: %@>", v11, self, v5, v12];

  return v13;
}

- (void)_close
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_processQueue);
  [(FPFSChangeMonitor *)self suspend];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fseventsProcessSource = selfCopy->_fseventsProcessSource;
  if (fseventsProcessSource)
  {
    dispatch_resume(fseventsProcessSource);
    v5 = selfCopy->_fseventsProcessSource;
    selfCopy->_fseventsProcessSource = 0;
  }

  stream = selfCopy->_stream;
  if (stream)
  {
    fpfs_fsevent_stream_close(stream);
    selfCopy->_stream = 0;
    selfCopy->_drainEvents = 1;
  }

  v7 = [(NSMutableArray *)selfCopy->_subscriptions copy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) dispose];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)selfCopy->_subscriptions removeAllObjects];
  volume = selfCopy->_volume;
  selfCopy->_volume = 0;

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  *a2 = 134218242;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = self;
  selfCopy = self;
  _os_log_debug_impl(&dword_1CEFC7000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx closing the %@", a2, 0x16u);
}

void __26__FPFSChangeMonitor_close__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__FPFSChangeMonitor_close__block_invoke_2;
  block[3] = &unk_1E83BE068;
  block[4] = v1;
  dispatch_sync(v2, block);
}

- (void)resetWithReason:(int64_t)reason newFSEventID:(unint64_t)d
{
  v16 = *MEMORY[0x1E69E9840];
  log = self->_log;
  v14 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    [(FPFSChangeMonitor *)v9 resetWithReason:reason newFSEventID:v15, v8];
  }

  if (!atomic_fetch_add(&self->_resetCount, 1u))
  {
    [(FPFSChangeMonitor *)self suspend];
  }

  v10 = dispatch_time(0, 2000000000);
  streamQueue = self->_streamQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke;
  v13[3] = &unk_1E83C0EF0;
  v13[4] = self;
  v13[5] = d;
  v13[6] = reason;
  dispatch_after(v10, streamQueue, v13);
  __fp_pop_log();

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke(uint64_t result)
{
  if (atomic_fetch_add((*(result + 32) + 8), 0xFFFFFFFF) <= 1)
  {
    v1 = result;
    section = __fp_create_section();
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_cold_1();
    }

    *(*(v1 + 32) + 81) = 1;
    v3 = *(v1 + 32);
    v4 = *(v3 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_48;
    v5[3] = &unk_1E83C0EF0;
    v5[4] = v3;
    v6 = *(v1 + 40);
    dispatch_async_and_wait(v4, v5);
    [*(v1 + 32) resume];
    return __fp_leave_section_Debug();
  }

  return result;
}

void __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_2;
  block[3] = &unk_1E83C0EF0;
  block[4] = v1;
  v4 = *(a1 + 40);
  dispatch_sync(v2, block);
}

uint64_t __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_2(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_2_cold_1();
  }

  if (*(a1 + 40) || (v6 = [*(a1 + 32) oldestStartingPoint], *(a1 + 40)) || v6 == -1)
  {
    [*(a1 + 32) deliverBarrierEvents];
    [*(a1 + 32) setPlannedRescan:1];
    v3 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_49;
    v7[3] = &__block_descriptor_48_e32_B16__0__FPFSChangeSubscription_8l;
    v8 = *(a1 + 40);
    [v3 foreachSubscriptionInState:2 apply:v7];
  }

  v4 = *(a1 + 32);
  if (v4[2])
  {
    fpfs_fsevent_stream_close(v4[2]);
    *(*(a1 + 32) + 16) = 0;
    v4 = *(a1 + 32);
  }

  return [v4 setUpStreamForReason:*(a1 + 48) error:0];
}

uint64_t __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLastDeliveredEventID:v3];
  v5 = [v4 delegate];
  [v5 subscription:v4 handleResetWithReason:*(a1 + 40)];

  return 1;
}

- (void)suspend
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cancel
{
  dispatch_assert_queue_V2(self->_processQueue);
  if (!self->_isCancelled)
  {
    self->_isCancelled = 1;
    atomic_fetch_add(&self->_resetCount, 1u);
    stream = self->_stream;
    if (stream)
    {
      fpfs_fsevent_stream_suspend(stream);
    }

    fseventsProcessSource = self->_fseventsProcessSource;
    if (fseventsProcessSource)
    {

      dispatch_source_cancel(fseventsProcessSource);
    }
  }
}

- (void)cancel
{
  streamQueue = self->_streamQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__FPFSChangeMonitor_cancel__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(streamQueue, block);
}

void __27__FPFSChangeMonitor_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__FPFSChangeMonitor_cancel__block_invoke_2;
  block[3] = &unk_1E83BE068;
  block[4] = v1;
  dispatch_async_and_wait(v2, block);
}

- (void)_createStreamNamed:(uint64_t)a1 since:(_BYTE *)a2 .cold.1(uint64_t a1, _BYTE *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setUpStreamForReason:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queueEvents:markSelfEncountered:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queueEvents:markSelfEncountered:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__FPFSChangeMonitor_deliverBarrierEvents__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleFSEvent:(void *)a1 indexInBatch:(uint8_t *)buf batchSize:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Uninteresting path: %{public}@ - ignored", buf, 0xCu);
}

void __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 64);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_5(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a1 root];
  v4 = *__error();
  v6 = 138412546;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Cannot stat root at '%@' after fsevent:%{errno}d", &v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

void __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_6(void *a1, uint64_t *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  [a1 rootFileID];
  v5 = *a2;
  OUTLINED_FUNCTION_1_0();
  v9 = 2048;
  v10 = v6;
  _os_log_fault_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_FAULT, "[CRIT] The root fileID changed from %llu to %llu", v8, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __58__FPFSChangeMonitor_handleFSEvent_indexInBatch_batchSize___block_invoke_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)resetWithReason:(uint64_t)a3 newFSEventID:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if ((a2 - 1) > 0xC)
  {
    v6 = @"unspecified reason";
  }

  else
  {
    v6 = off_1E83C0F80[a2 - 1];
  }

  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v6;
  v7 = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] resetting the %@ because of %@", a3, 0x16u);
}

void __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __50__FPFSChangeMonitor_resetWithReason_newFSEventID___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end