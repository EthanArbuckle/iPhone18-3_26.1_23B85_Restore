@interface _OSBatchingQueue
+ (id)queueWithName:(id)a3 maxBatchingDelay:(double)a4 maxQueueDepth:(unint64_t)a5 queue:(id)a6 workItemsHandler:(id)a7;
- (_OSBatchingQueue)initWithName:(id)a3 maxBatchingDelay:(double)a4 maxQueueDepth:(unint64_t)a5 queue:(id)a6 workItemsHandler:(id)a7;
- (void)addWorkItem:(id)a3;
- (void)unprotectedExecuteWorkItems;
@end

@implementation _OSBatchingQueue

- (_OSBatchingQueue)initWithName:(id)a3 maxBatchingDelay:(double)a4 maxQueueDepth:(unint64_t)a5 queue:(id)a6 workItemsHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v40.receiver = self;
  v40.super_class = _OSBatchingQueue;
  v15 = [(_OSBatchingQueue *)&v40 init];
  v16 = v15;
  if (v15)
  {
    v15->_maxDelay = a4;
    v17 = 4;
    if (a5)
    {
      v17 = a5;
    }

    v15->_maxQueueDepth = v17;
    v18 = MEMORY[0x24C1BF860](v14);
    workHandler = v16->_workHandler;
    v16->_workHandler = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    workItems = v16->_workItems;
    v16->_workItems = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (v13)
    {
      v23 = v13;
    }

    else
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dasbatchingqueue.executionqueue.%s", objc_msgSend(v12, "UTF8String")];
      v25 = [v24 UTF8String];

      v23 = dispatch_queue_create(v25, v22);
    }

    executionQueue = v16->_executionQueue;
    v16->_executionQueue = v23;

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dasbatchingqueue.syncqueue.%s", objc_msgSend(v12, "UTF8String")];
    v28 = [v27 UTF8String];

    v29 = dispatch_queue_create(v28, v22);
    syncQueue = v16->_syncQueue;
    v16->_syncQueue = v29;

    v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v16->_syncQueue);
    timer = v16->_timer;
    v16->_timer = v31;

    v33 = v16->_timer;
    dispatch_set_qos_class_fallback();
    v34 = v16->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __87___OSBatchingQueue_initWithName_maxBatchingDelay_maxQueueDepth_queue_workItemsHandler___block_invoke;
    handler[3] = &unk_278EEDD58;
    v39 = v16;
    dispatch_source_set_event_handler(v34, handler);
    v35 = v16->_timer;
    v36 = dispatch_time(0, (a4 * 1000000000.0));
    dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, (a4 / 10.0 * 1000000000.0));
  }

  return v16;
}

+ (id)queueWithName:(id)a3 maxBatchingDelay:(double)a4 maxQueueDepth:(unint64_t)a5 queue:(id)a6 workItemsHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a3;
  v14 = [objc_alloc(objc_opt_class()) initWithName:v13 maxBatchingDelay:a5 maxQueueDepth:v12 queue:v11 workItemsHandler:a4];

  return v14;
}

- (void)unprotectedExecuteWorkItems
{
  v3 = os_transaction_create();
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:self->_workItems];
  if ([v4 count])
  {
    executionQueue = self->_executionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___OSBatchingQueue_unprotectedExecuteWorkItems__block_invoke;
    block[3] = &unk_278EEDD80;
    v7 = v3;
    v8 = self;
    v9 = v4;
    dispatch_async(executionQueue, block);
    [(NSMutableArray *)self->_workItems removeAllObjects];
    dispatch_suspend(self->_timer);
  }
}

- (void)addWorkItem:(id)a3
{
  v4 = a3;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32___OSBatchingQueue_addWorkItem___block_invoke;
  v7[3] = &unk_278EEDCE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(syncQueue, v7);
}

@end