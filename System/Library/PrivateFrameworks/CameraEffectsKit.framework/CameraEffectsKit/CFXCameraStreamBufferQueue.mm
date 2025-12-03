@interface CFXCameraStreamBufferQueue
- (BOOL)enqueue:(id)enqueue;
- (CFXCameraStreamBufferQueue)initWithMaxCapacity:(unint64_t)capacity;
- (double)headBufferTimestamp;
- (id)dequeue;
- (unint64_t)count;
@end

@implementation CFXCameraStreamBufferQueue

- (CFXCameraStreamBufferQueue)initWithMaxCapacity:(unint64_t)capacity
{
  self->_maxCapacity = capacity;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  outputBuffers = self->_outputBuffers;
  self->_outputBuffers = v4;

  v6 = JFXCreateDispatchQueue(self, @"bufferQueueAccessQueue", 0);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v6;

  return self;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessQueue = [(CFXCameraStreamBufferQueue *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__CFXCameraStreamBufferQueue_count__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __35__CFXCameraStreamBufferQueue_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputBuffers];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)dequeue
{
  if ([(CFXCameraStreamBufferQueue *)self count])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy_;
    v11 = __Block_byref_object_dispose_;
    v12 = 0;
    accessQueue = [(CFXCameraStreamBufferQueue *)self accessQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__CFXCameraStreamBufferQueue_dequeue__block_invoke;
    v6[3] = &unk_278D79C60;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(accessQueue, v6);

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __37__CFXCameraStreamBufferQueue_dequeue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputBuffers];
  v3 = [v2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) outputBuffers];
  [v6 removeObjectAtIndex:0];
}

- (BOOL)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  v5 = [(CFXCameraStreamBufferQueue *)self count];
  maxCapacity = [(CFXCameraStreamBufferQueue *)self maxCapacity];
  if (v5 < maxCapacity)
  {
    accessQueue = [(CFXCameraStreamBufferQueue *)self accessQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__CFXCameraStreamBufferQueue_enqueue___block_invoke;
    v9[3] = &unk_278D79C88;
    v9[4] = self;
    v10 = enqueueCopy;
    dispatch_sync(accessQueue, v9);
  }

  return v5 < maxCapacity;
}

void __38__CFXCameraStreamBufferQueue_enqueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputBuffers];
  [v2 addObject:*(a1 + 40)];
}

- (double)headBufferTimestamp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessQueue = [(CFXCameraStreamBufferQueue *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CFXCameraStreamBufferQueue_headBufferTimestamp__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __49__CFXCameraStreamBufferQueue_headBufferTimestamp__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) outputBuffers];
  v2 = [v4 firstObject];
  [v2 timestamp];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

@end