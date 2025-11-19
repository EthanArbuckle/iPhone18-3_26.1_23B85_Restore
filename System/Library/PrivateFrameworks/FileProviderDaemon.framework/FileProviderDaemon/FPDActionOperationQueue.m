@interface FPDActionOperationQueue
- (FPDActionOperationQueue)initWithMoveInfo:(id)a3;
- (id)dequeue;
- (void)cancel;
- (void)dumpStateTo:(id)a3;
- (void)enqueue:(id)a3;
- (void)finishedEnqueuing;
@end

@implementation FPDActionOperationQueue

- (FPDActionOperationQueue)initWithMoveInfo:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FPDActionOperationQueue;
  v5 = [(FPDActionOperationQueue *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, [v4 qos], 0);
    v8 = dispatch_queue_create("FileProvider.move-queue", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = objc_opt_new();
    fifo = v5->_fifo;
    v5->_fifo = v10;

    v5->_maxLength = 128;
    if ([v4 _t_moveQueueWidth])
    {
      maxLength = [v4 _t_moveQueueWidth];
      v5->_maxLength = maxLength;
    }

    else
    {
      maxLength = v5->_maxLength;
    }

    v13 = dispatch_semaphore_create(maxLength);
    enqueueSema = v5->_enqueueSema;
    v5->_enqueueSema = v13;

    v15 = dispatch_semaphore_create(0);
    dequeueSema = v5->_dequeueSema;
    v5->_dequeueSema = v15;
  }

  return v5;
}

- (void)enqueue:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FPDActionOperationQueue_enqueue___block_invoke;
  block[3] = &unk_1E83BF3B0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);
  if ((v11[3] & 1) == 0)
  {
    dispatch_semaphore_wait(self->_enqueueSema, 0xFFFFFFFFFFFFFFFFLL);
    v6 = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__FPDActionOperationQueue_enqueue___block_invoke_2;
    v7[3] = &unk_1E83BE158;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(v6, v7);
  }

  _Block_object_dispose(&v10, 8);
}

void __35__FPDActionOperationQueue_enqueue___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 40);
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  dispatch_semaphore_signal(*(*(v1 - 1) + 40));
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__FPDActionOperationQueue_enqueue___block_invoke_2_cold_1(v1, v2);
  }
}

- (id)dequeue
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPDActionOperationQueue_dequeue__block_invoke;
  block[3] = &unk_1E83BF3B0;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(queue, block);
  v4 = 0;
  if ((v16[3] & 1) == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__4;
    v12 = __Block_byref_object_dispose__4;
    v13 = 0;
    dispatch_semaphore_wait(self->_dequeueSema, 0xFFFFFFFFFFFFFFFFLL);
    v5 = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__FPDActionOperationQueue_dequeue__block_invoke_2;
    v7[3] = &unk_1E83BF3D8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v5, v7);
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  _Block_object_dispose(&v15, 8);

  return v4;
}

void __34__FPDActionOperationQueue_dequeue__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) != 1)
  {
LABEL_4:
    dispatch_semaphore_signal(*(v2 + 32));
    v3 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:0];
    v4 = a1 + 40;
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v3;

    [*(*(a1 + 32) + 24) removeObjectAtIndex:0];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __34__FPDActionOperationQueue_dequeue__block_invoke_2_cold_1(v4, v7);
    }

    return;
  }

  if ([*(v2 + 24) count])
  {
    v2 = *(a1 + 32);
    goto LABEL_4;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)finishedEnqueuing
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__FPDActionOperationQueue_finishedEnqueuing__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(queue, block);
}

intptr_t __44__FPDActionOperationQueue_finishedEnqueuing__block_invoke(intptr_t result)
{
  *(*(result + 32) + 48) = 1;
  v1 = *(*(result + 32) + 16);
  if (v1)
  {
    v2 = result;
    do
    {
      result = dispatch_semaphore_signal(*(*(v2 + 32) + 40));
      --v1;
    }

    while (v1);
  }

  return result;
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDActionOperationQueue_cancel__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(queue, block);
}

intptr_t __33__FPDActionOperationQueue_cancel__block_invoke(intptr_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 49) & 1) == 0)
  {
    v2 = result;
    if (*(v1 + 16))
    {
      v3 = 0;
      do
      {
        result = dispatch_semaphore_signal(*(v1 + 32));
        ++v3;
        v1 = *(v2 + 32);
        v4 = *(v1 + 16);
      }

      while (v3 < v4);
      if (v4)
      {
        do
        {
          result = dispatch_semaphore_signal(*(*(v2 + 32) + 40));
          --v4;
        }

        while (v4);
        v1 = *(v2 + 32);
      }
    }

    *(v1 + 48) = 1;
    *(*(v2 + 32) + 49) = 1;
  }

  return result;
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  [v4 write:@"+ queue\n"];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FPDActionOperationQueue_dumpStateTo___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __39__FPDActionOperationQueue_dumpStateTo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    [*(a1 + 40) startAttributes:2];
    [*(a1 + 40) write:@"  done\n"];
    [*(a1 + 40) reset];
    v2 = *(a1 + 32);
  }

  if (*(v2 + 49) == 1)
  {
    [*(a1 + 40) write:@"  cancelled\n"];
  }

  [*(a1 + 40) write:@"  FIFO:\n"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) write:{@"   %@\n", *(*(&v10 + 1) + 8 * v7++)}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  result = [*(a1 + 40) write:@"\n"];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __35__FPDActionOperationQueue_enqueue___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] queue: enqueued %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __34__FPDActionOperationQueue_dequeue__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] queue: dequeued %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end