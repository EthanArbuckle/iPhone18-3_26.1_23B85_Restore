@interface NTKSnapshotQueue
- (NTKSnapshotQueue)initWithRequestHandler:(id)handler;
- (id)_queue_pullHighestPriorityRequestFromQueue;
- (void)_queue_processQueue;
- (void)queueRequest:(id)request;
@end

@implementation NTKSnapshotQueue

- (NTKSnapshotQueue)initWithRequestHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = NTKSnapshotQueue;
  v5 = [(NTKSnapshotQueue *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.NanoTimeKit.NTKSnapshotQueue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    array = [MEMORY[0x277CBEB18] array];
    queue_requests = v5->_queue_requests;
    v5->_queue_requests = array;

    v5->_queue_isProcessingQueue = 0;
    v10 = _Block_copy(handlerCopy);
    requestHandler = v5->_requestHandler;
    v5->_requestHandler = v10;
  }

  return v5;
}

- (void)queueRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NTKSnapshotQueue_queueRequest___block_invoke;
  block[3] = &unk_27877F610;
  objc_copyWeak(&v9, &location);
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__NTKSnapshotQueue_queueRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] addObject:*(a1 + 32)];
    [v3 _queue_processQueue];
    WeakRetained = v3;
  }
}

- (id)_queue_pullHighestPriorityRequestFromQueue
{
  dispatch_assert_queue_V2(self->_queue);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(NSMutableArray *)self->_queue_requests count])
  {
    queue_requests = self->_queue_requests;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__NTKSnapshotQueue__queue_pullHighestPriorityRequestFromQueue__block_invoke;
    v6[3] = &unk_278784C48;
    v6[4] = v11;
    v6[5] = &v7;
    [(NSMutableArray *)queue_requests enumerateObjectsUsingBlock:v6];
    v4 = [(NSMutableArray *)self->_queue_requests objectAtIndex:v8[3]];
    [(NSMutableArray *)self->_queue_requests removeObjectAtIndex:v8[3]];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

unint64_t __62__NTKSnapshotQueue__queue_pullHighestPriorityRequestFromQueue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 priority];
  if (result > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_queue_processQueue
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_queue_isProcessingQueue)
  {
    _queue_pullHighestPriorityRequestFromQueue = [(NTKSnapshotQueue *)self _queue_pullHighestPriorityRequestFromQueue];
    if (_queue_pullHighestPriorityRequestFromQueue)
    {
      self->_queue_isProcessingQueue = 1;
      v4 = self->_queue;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__NTKSnapshotQueue__queue_processQueue__block_invoke;
      aBlock[3] = &unk_27877F610;
      objc_copyWeak(&v17, &location);
      v5 = v4;
      v16 = v5;
      v6 = _Block_copy(aBlock);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __39__NTKSnapshotQueue__queue_processQueue__block_invoke_2;
      v10[3] = &unk_2787826A0;
      objc_copyWeak(&v14, &location);
      v7 = v5;
      v11 = v7;
      v12 = _queue_pullHighestPriorityRequestFromQueue;
      v8 = v6;
      v13 = v8;
      v9 = _Block_copy(v10);
      v9[2]();

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __39__NTKSnapshotQueue__queue_processQueue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_assert_queue_V2(*(a1 + 32));
    v3[24] = 0;
    [v3 _queue_processQueue];
    WeakRetained = v3;
  }
}

void __39__NTKSnapshotQueue__queue_processQueue__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v3 = WeakRetained[4];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__NTKSnapshotQueue__queue_processQueue__block_invoke_3;
    v5[3] = &unk_27877FF60;
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    (*(v3 + 16))(v3, v4, v5);
  }
}

void __39__NTKSnapshotQueue__queue_processQueue__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NTKSnapshotQueue__queue_processQueue__block_invoke_4;
  block[3] = &unk_27877E960;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

@end