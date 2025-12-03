@interface DOCOperationBuffer
- (DOCOperationBuffer)initWithLabel:(id)label targetQueue:(id)queue;
- (OS_dispatch_queue)queue;
- (void)buffer:(id)buffer;
- (void)signal;
@end

@implementation DOCOperationBuffer

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (!queue)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_queue)
    {
      label = [(DOCOperationBuffer *)selfCopy label];
      v6 = [@"com.apple.DocumentManager.operationBuffer." stringByAppendingString:label];
      v7 = dispatch_queue_create([v6 UTF8String], 0);

      targetQueue = [(DOCOperationBuffer *)selfCopy targetQueue];
      dispatch_set_target_queue(v7, targetQueue);

      dispatch_suspend(v7);
      v9 = self->_queue;
      self->_queue = v7;
    }

    objc_sync_exit(selfCopy);

    queue = self->_queue;
  }

  return queue;
}

- (void)signal
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(DOCOperationBuffer *)self locked])
  {
    [(DOCOperationBuffer *)self setLocked:0];
    v3 = os_log_create("com.apple.DocumentManager", "PointsOfInterest");
    v4 = os_signpost_id_generate(v3);
    v5 = v3;
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_249340000, v6, OS_SIGNPOST_EVENT, v4, "Files-PostLaunchBuffer unlocked", "", v8, 2u);
    }

    queue = [(DOCOperationBuffer *)self queue];
    dispatch_resume(queue);
  }
}

- (DOCOperationBuffer)initWithLabel:(id)label targetQueue:(id)queue
{
  labelCopy = label;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = DOCOperationBuffer;
  v8 = [(DOCOperationBuffer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DOCOperationBuffer *)v8 setLocked:1];
    [(DOCOperationBuffer *)v9 setLabel:labelCopy];
    [(DOCOperationBuffer *)v9 setTargetQueue:queueCopy];
  }

  return v9;
}

- (void)buffer:(id)buffer
{
  bufferCopy = buffer;
  queue = [(DOCOperationBuffer *)self queue];
  dispatch_async(queue, bufferCopy);
}

@end