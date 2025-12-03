@interface IOGPUMetalIOCommandQueue
- (IOGPUMetalIOCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor;
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (void)_submitAvailableCommands:(void *)commands;
- (void)dealloc;
- (void)didComplete:(id)complete withStatus:(int64_t)status;
- (void)enqueueBarrier;
- (void)enqueueCommandBuffer:(id)buffer;
- (void)launchIOGPUIOThreads;
- (void)setLabel:(id)label;
- (void)submitAvailableCommands;
@end

@implementation IOGPUMetalIOCommandQueue

- (IOGPUMetalIOCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor
{
  v22.receiver = self;
  v22.super_class = IOGPUMetalIOCommandQueue;
  v6 = [_MTLIOCommandQueue initWithDevice:sel_initWithDevice_descriptor_ descriptor:?];
  if (v6)
  {
    *(v6 + 49) = device;
    deviceRef = [device deviceRef];
    maxCommandBufferCount = [descriptor maxCommandBufferCount];
    v9 = *MEMORY[0x1E6974368];
    v10 = IOGPUIOCommandQueueCreate(deviceRef, maxCommandBufferCount, *&v6[*MEMORY[0x1E6974378]], *&v6[v9]);
    *(v6 + 50) = v10;
    if (v10 && (v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0), v12 = dispatch_queue_create("com.Metal.IOSubmissionQueueDispatch", v11), (*(v6 + 70) = v12) != 0) && (v13 = dispatch_queue_create("com.Metal.IOCompletionQueueDispatch", v11), (*(v6 + 71) = v13) != 0))
    {
      dispatch_release(v11);
      IOGPUIOCommandQueueSetDispatchQueue(*(v6 + 50), *(v6 + 71));
      *(v6 + 52) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v6 + 53) = objc_alloc_init(MEMORY[0x1E695DF70]);
      pthread_mutex_init((v6 + 432), 0);
      pthread_mutex_init((v6 + 496), 0);
      v14 = dispatch_source_create(MEMORY[0x1E69E96B0], 0, 0, *(v6 + 70));
      *(v6 + 72) = v14;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3052000000;
      v21[3] = __Block_byref_object_copy_;
      v21[4] = __Block_byref_object_dispose_;
      v21[5] = v6;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __54__IOGPUMetalIOCommandQueue_initWithDevice_descriptor___block_invoke;
      handler[3] = &unk_1E8362A38;
      handler[4] = v21;
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(*(v6 + 72));
      v15 = *&v6[v9];
      v16 = MTLIOQosClassForPriority();
      v17 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v16, 0);
      *(v6 + 73) = dispatch_queue_create("com.Metal.IOThreads", v17);
      dispatch_release(v17);
      if (*(v6 + 73))
      {
        v18 = dispatch_queue_attr_make_with_qos_class(0, v16, 0);
        *(v6 + 74) = dispatch_queue_create("com.Metal.IODecompressionQueueDispatch", v18);
        dispatch_release(v18);
        if (*(v6 + 74))
        {
          [v6 launchIOGPUIOThreads];
          *(v6 + 75) = IOGPUIOCommandQueueGetGlobalTraceObjectID(*(v6 + 50));
          _Block_object_dispose(v21, 8);
          return v6;
        }
      }

      _Block_object_dispose(v21, 8);
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  ioThreadDispatch = self->_ioThreadDispatch;
  if (ioThreadDispatch)
  {
    dispatch_release(ioThreadDispatch);
    self->_ioThreadDispatch = 0;
  }

  decompressionQueue = self->_decompressionQueue;
  if (decompressionQueue)
  {
    dispatch_release(decompressionQueue);
    self->_decompressionQueue = 0;
  }

  self->_pendingQueue = 0;
  self->_submittedQueue = 0;
  commandQueueEventSource = self->_commandQueueEventSource;
  if (commandQueueEventSource)
  {
    dispatch_source_cancel(commandQueueEventSource);
    dispatch_release(self->_commandQueueEventSource);
    self->_commandQueueEventSource = 0;
  }

  completionQueueDispatch = self->_completionQueueDispatch;
  if (completionQueueDispatch)
  {
    dispatch_release(completionQueueDispatch);
    self->_completionQueueDispatch = 0;
  }

  submissionQueueDispatch = self->_submissionQueueDispatch;
  if (submissionQueueDispatch)
  {
    dispatch_release(submissionQueueDispatch);
    self->_submissionQueueDispatch = 0;
  }

  IOGPUIOCommandQueueRelease(self->_ioCommandQueueRef);

  self->_gpuQueue = 0;
  self->_device = 0;
  v8.receiver = self;
  v8.super_class = IOGPUMetalIOCommandQueue;
  [(_MTLIOCommandQueue *)&v8 dealloc];
}

- (id)commandBuffer
{
  v3 = [IOGPUMetalIOCommandBuffer alloc];
  v4 = [(IOGPUMetalIOCommandBuffer *)v3 initWithQueue:self resourceList:*(&self->super.super.super.isa + *MEMORY[0x1E6974370]) retained:1];

  return v4;
}

- (id)commandBufferWithUnretainedReferences
{
  v3 = [IOGPUMetalIOCommandBuffer alloc];
  v4 = [(IOGPUMetalIOCommandBuffer *)v3 initWithQueue:self resourceList:*(&self->super.super.super.isa + *MEMORY[0x1E6974370]) retained:0];

  return v4;
}

- (void)enqueueCommandBuffer:(id)buffer
{
  pthread_mutex_lock(&self->_pendingQueueLock);
  [(NSMutableArray *)self->_pendingQueue addObject:buffer];
  pthread_mutex_unlock(&self->_pendingQueueLock);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974378]) == 1)
  {

    [(IOGPUMetalIOCommandQueue *)self enqueueBarrier];
  }
}

- (void)enqueueBarrier
{
  pthread_mutex_lock(&self->_pendingQueueLock);
  [(NSMutableArray *)self->_pendingQueue lastObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(NSMutableArray *)self->_pendingQueue addObject:@"Barrier"];
  }

  pthread_mutex_unlock(&self->_pendingQueueLock);

  [(_MTLIOCommandQueue *)self returnActiveScratchBuffersToPool];
}

- (void)didComplete:(id)complete withStatus:(int64_t)status
{
  [complete didCompleteWithStatus:status];
  pthread_mutex_lock(&self->_submittedQueueLock);
  [(NSMutableArray *)self->_submittedQueue removeObject:complete];

  pthread_mutex_unlock(&self->_submittedQueueLock);
}

- (void)_submitAvailableCommands:(void *)commands
{
  v25[4] = *MEMORY[0x1E69E9840];
  v5 = (*(commands + 1) - *commands) >> 3;
  v6 = v5;
  MEMORY[0x1EEE9AC00](self, a2);
  v8 = (v22 - v7);
  bzero(v22 - v7, v9 + 8);
  *v8 = v5;
  v22[0] = v8;
  if (v5)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v22[1] = v25;
    v13 = v10 + 3;
    do
    {
      v14 = *(*commands + v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v13 + 1) = 0;
        *(v13 - 1) = 0;
      }

      else
      {
        if (([v14 isCommitted] & 1) == 0)
        {
          [IOGPUMetalIOCommandQueue _submitAvailableCommands:];
        }

        *(v13 - 1) = *(v14 + 392);
        *v13 = *(*(v14 + 312) + 128);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        v25[0] = __53__IOGPUMetalIOCommandQueue__submitAvailableCommands___block_invoke;
        v25[1] = &unk_1E8362A60;
        v25[2] = self;
        v25[3] = v14;
        *(v13 + 1) = _Block_copy(aBlock);
        *(v13 + 12) = [v14 hasFollowOnWork];
        v15 = atomic_load((v14 + 384));
        pthread_mutex_lock(&self->_submittedQueueLock);
        [(NSMutableArray *)self->_submittedQueue addObject:v14];
        pthread_mutex_unlock(&self->_submittedQueueLock);
        [v14 globalTraceObjectID];
        v12 += v15 + 1;
        if (*__globalGPUCommPage)
        {
          [(MTLDevice *)self->_device globalTraceObjectID];
          globalTraceObjectID = self->_globalTraceObjectID;
          IOGPUDeviceTraceEvent();
        }
      }

      v13 += 6;
      v11 += 8;
    }

    while (8 * v6 != v11);
  }

  else
  {
    v12 = 0;
  }

  if (IOGPUIOCommandQueueSubmitIOCommands(self->_ioCommandQueueRef, v22[0], v12))
  {
    v17 = v6 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = (v22[0] + 4);
    do
    {
      v19 = *v18;
      if (*v18)
      {
        completionQueueDispatch = self->_completionQueueDispatch;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__IOGPUMetalIOCommandQueue__submitAvailableCommands___block_invoke_2;
        block[3] = &unk_1E8362A88;
        block[4] = v19;
        dispatch_async(completionQueueDispatch, block);
      }

      v18 += 3;
      --v6;
    }

    while (v6);
  }

  *(commands + 1) = *commands;
  v21 = *MEMORY[0x1E69E9840];
}

void __53__IOGPUMetalIOCommandQueue__submitAvailableCommands___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

- (void)submitAvailableCommands
{
  selfCopy = self;
  __p = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    pthread_mutex_lock(&self->_pendingQueueLock);
    v3 = [(NSMutableArray *)self->_pendingQueue count];
    v4 = 0;
    if (v3)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        selfCopy = [(NSMutableArray *)self->_pendingQueue objectAtIndex:v4, selfCopy];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = selfCopy;
          std::vector<NSObject *>::push_back[abi:ne200100](&__p, &selfCopy);
        }

        else
        {
          if (![selfCopy isCommitted])
          {
            goto LABEL_14;
          }

          v8 = selfCopy;
          v9 = atomic_load(selfCopy + 96);
          if ([v8 validateNotificationCount])
          {
            if ((v9 + v5) >> 13)
            {
              goto LABEL_14;
            }

            v10 = selfCopy;
            std::vector<NSObject *>::push_back[abi:ne200100](&__p, &selfCopy);
            v5 += v9 + 1;
          }
        }

        v6 = ++v4 < v3;
      }

      while (v3 != v4);
      v6 = 0;
      LODWORD(v4) = v3;
    }

    else
    {
      v6 = 0;
    }

LABEL_14:
    [(NSMutableArray *)self->_pendingQueue removeObjectsInRange:0, v4, selfCopy];
    pthread_mutex_unlock(&self->_pendingQueueLock);
    if (__p == v14)
    {
      break;
    }

    [(IOGPUMetalIOCommandQueue *)self _submitAvailableCommands:&__p];
    if (__p != v14)
    {
      __assert_rtn("[IOGPUMetalIOCommandQueue submitAvailableCommands]", "IOGPUMetalIOCommandQueue.mm", 550, "submitCommands.empty()");
    }
  }

  while (v6);

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

- (void)setLabel:(id)label
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalIOCommandQueue;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [(MTLDevice *)self->_device deviceRef];
    globalTraceObjectID = self->_globalTraceObjectID;
    v7 = *MEMORY[0x1E6974358];
    v8 = *(&self->super.super.super.isa + v7);
    [label cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, globalTraceObjectID, v8);
  }
}

- (void)launchIOGPUIOThreads
{
  v2 = *MEMORY[0x1E6974360];
  if (*(&self->super.super.super.isa + v2))
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E9820];
    do
    {
      ioThreadDispatch = self->_ioThreadDispatch;
      block[0] = v5;
      block[1] = 3221225472;
      block[2] = __48__IOGPUMetalIOCommandQueue_launchIOGPUIOThreads__block_invoke;
      block[3] = &unk_1E8362AB0;
      block[4] = self;
      dispatch_async(ioThreadDispatch, block);
      v4 = (v4 + 1);
    }

    while (v4 < *(&self->super.super.super.isa + v2));
  }
}

uint64_t __48__IOGPUMetalIOCommandQueue_launchIOGPUIOThreads__block_invoke(uint64_t a1)
{
  do
  {
    result = IOGPUIOCommandQueuePerformIO(*(*(a1 + 32) + 400));
  }

  while (result != -536870165);
  return result;
}

@end