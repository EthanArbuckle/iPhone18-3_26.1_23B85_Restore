@interface MNAudioSystemEventQueue
- (BOOL)empty;
- (BOOL)enqueue:(id)a3 withOptions:(unint64_t)a4 andReport:(id *)a5;
- (BOOL)full;
- (MNAudioEventQueueDelegate)delegate;
- (MNAudioSystemEventQueue)initWithCapacity:(unint64_t)a3;
- (id)_dequeue;
- (id)dequeue;
- (unint64_t)count;
- (void)_enqueue:(id)a3;
- (void)_removeEventsMatching:(id)a3;
- (void)clear;
@end

@implementation MNAudioSystemEventQueue

- (MNAudioEventQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_dequeue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11836;
  v10 = __Block_byref_object_dispose__11837;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MNAudioSystemEventQueue__dequeue__block_invoke;
  v5[3] = &unk_1E8430960;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__MNAudioSystemEventQueue__dequeue__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = [*(*(a1 + 32) + 8) firstObject];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      v9 = 138477827;
      v10 = v6;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓠ Dequeued event : %{private}@", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
  }

  else
  {
    v7 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "ⓠ Attempting to dequeue event, but events container is already empty.", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_enqueue:(id)a3
{
  v4 = a3;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MNAudioSystemEventQueue__enqueue___block_invoke;
  v7[3] = &unk_1E8430D50;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(syncQueue, v7);
}

uint64_t __36__MNAudioSystemEventQueue__enqueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = GetAudioLogForMNAudioSystemEventQueueCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138477827;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "ⓠ Enqueuing event : %{private}@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clear
{
  v3 = GetAudioLogForMNAudioSystemEventQueueCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "ⓠ Clearing the queue", buf, 2u);
  }

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MNAudioSystemEventQueue_clear__block_invoke;
  block[3] = &unk_1E8430ED8;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (id)dequeue
{
  if ([(MNAudioSystemEventQueue *)self empty])
  {
    v3 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "⒬ Trying to dequeue from an empty queue", v6, 2u);
    }

    v4 = 0;
  }

  else
  {
    v4 = [(MNAudioSystemEventQueue *)self _dequeue];
  }

  return v4;
}

- (void)_removeEventsMatching:(id)a3
{
  v4 = a3;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MNAudioSystemEventQueue__removeEventsMatching___block_invoke;
  v7[3] = &unk_1E8430D50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(syncQueue, v7);
}

void __49__MNAudioSystemEventQueue__removeEventsMatching___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__MNAudioSystemEventQueue__removeEventsMatching___block_invoke_2;
  v8[3] = &unk_1E842F2E0;
  v9 = *(a1 + 40);
  v3 = [v2 indexesOfObjectsPassingTest:v8];
  if ([v3 count])
  {
    v4 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 count];
      v6 = *(a1 + 40);
      *buf = 134218243;
      v11 = v5;
      v12 = 2113;
      v13 = v6;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓠ Removed %lu events matching event : %{private}@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 8) removeObjectsAtIndexes:v3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)enqueue:(id)a3 withOptions:(unint64_t)a4 andReport:(id *)a5
{
  v6 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([(MNAudioSystemEventQueue *)self full])
  {
    v9 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "⒬ Trying to enqueue to a full queue", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_22;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = @"MNAudioSystemError";
    v12 = v10;
    v13 = 2000;
LABEL_21:
    *a5 = [v12 errorWithDomain:@"MNAudioSystemError" code:v13 userInfo:0];

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  if (!v8)
  {
    v15 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_ERROR, "⒬ Trying to enqueue a nil event", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_22;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = @"MNAudioSystemError";
    v12 = v16;
    v13 = 2001;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v34 = v8;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "⒬ Trying to enqueue a non-MNAudioSystemEvent object : %{private}@", buf, 0xCu);
    }

    if (!a5)
    {
      goto LABEL_22;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = @"MNAudioSystemError";
    v12 = v19;
    v13 = 2002;
    goto LABEL_21;
  }

  if ((v6 & 4) != 0)
  {
    v24 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v34 = v8;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_INFO, "ⓠ Event will clear the queue before enqueuing : %{private}@", buf, 0xCu);
    }

    [(MNAudioSystemEventQueue *)self clear];
  }

  else if ((v6 & 8) != 0)
  {
    v14 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v34 = v8;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "ⓠ Event will remove duplicates before enqueuing : %{private}@", buf, 0xCu);
    }

    [(MNAudioSystemEventQueue *)self _removeEventsMatching:v8];
  }

  if ((v6 & 3) != 0)
  {
    v25 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v34 = v8;
      _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_INFO, "ⓠ Event is enqueued as an interrupt : %{private}@", buf, 0xCu);
    }

    v26 = [(MNAudioSystemEventQueue *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(MNAudioSystemEventQueue *)self delegate];
      [v28 audioSystemEventQueue:self eventWillInterrupt:v8];
    }
  }

  if (v6)
  {
    v29 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v34 = v8;
      _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_INFO, "ⓠ Enqueued event will be processed next : %{private}@", buf, 0xCu);
    }

    syncQueue = self->_syncQueue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __57__MNAudioSystemEventQueue_enqueue_withOptions_andReport___block_invoke;
    v31[3] = &unk_1E8430D50;
    v31[4] = self;
    v32 = v8;
    dispatch_async(syncQueue, v31);
  }

  else
  {
    [(MNAudioSystemEventQueue *)self _enqueue:v8];
  }

  v21 = 1;
LABEL_23:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)full
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MNAudioSystemEventQueue_full__block_invoke;
  v5[3] = &unk_1E8430960;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__MNAudioSystemEventQueue_full__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result == *(*(a1 + 32) + 16);
  return result;
}

- (BOOL)empty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MNAudioSystemEventQueue_empty__block_invoke;
  v5[3] = &unk_1E8430960;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__MNAudioSystemEventQueue_empty__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MNAudioSystemEventQueue_count__block_invoke;
  v5[3] = &unk_1E8430960;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__MNAudioSystemEventQueue_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (MNAudioSystemEventQueue)initWithCapacity:(unint64_t)a3
{
  syncQueue = self;
  if (!a3)
  {
    v10 = GetAudioLogForMNAudioSystemEventQueueCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "⒬ Trying to create a queue with a capacity of 0", buf, 2u);
    }

    v6 = 0;
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = MNAudioSystemEventQueue;
  v5 = [(MNAudioSystemEventQueue *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_capacity = a3;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5->_capacity];
    container = v6->_container;
    v6->_container = v7;

    v9 = geo_dispatch_queue_create();
    syncQueue = v6->_syncQueue;
    v6->_syncQueue = v9;
LABEL_7:
  }

  return v6;
}

@end