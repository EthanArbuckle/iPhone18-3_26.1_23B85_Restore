@interface _CATOperationTargetSelectorObserver
- (SEL)selector;
- (_CATOperationTargetSelectorObserver)init;
- (_CATOperationTargetSelectorObserver)initWithTarget:(id)target selector:(SEL)selector events:(unint64_t)events userInfo:(id)info delegateQueue:(id)queue;
- (void)invokeActionWithOperation:(id)operation;
- (void)operationDidFinish:(id)finish;
- (void)operationDidProgress:(id)progress;
- (void)operationDidStart:(id)start;
@end

@implementation _CATOperationTargetSelectorObserver

- (_CATOperationTargetSelectorObserver)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CATOperation.m" lineNumber:673 description:{@"%@: %@ is unavailable", v6, v7}];

  return 0;
}

- (_CATOperationTargetSelectorObserver)initWithTarget:(id)target selector:(SEL)selector events:(unint64_t)events userInfo:(id)info delegateQueue:(id)queue
{
  targetCopy = target;
  infoCopy = info;
  queueCopy = queue;
  if (targetCopy)
  {
    if (selector)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_CATOperationTargetSelectorObserver initWithTarget:selector:events:userInfo:delegateQueue:];
    if (selector)
    {
      goto LABEL_3;
    }
  }

  [_CATOperationTargetSelectorObserver initWithTarget:selector:events:userInfo:delegateQueue:];
LABEL_3:
  v28.receiver = self;
  v28.super_class = _CATOperationTargetSelectorObserver;
  v16 = [(_CATOperationTargetSelectorObserver *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_target, target);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v17->_selector = selectorCopy;
    v17->_events = events;
    objc_storeStrong(&v17->_userInfo, info);
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(selector);
    v22 = [v19 stringWithFormat:@"%@.%p.%p.%@", v20, v17, targetCopy, v21];
    v23 = dispatch_queue_create([v22 UTF8String], 0);
    delegateQueue = v17->_delegateQueue;
    v17->_delegateQueue = v23;

    v25 = v17->_delegateQueue;
    if (queueCopy)
    {
      dispatch_set_target_queue(v17->_delegateQueue, queueCopy);
    }

    else
    {
      v26 = dispatch_get_global_queue(21, 0);
      dispatch_set_target_queue(v25, v26);
    }
  }

  return v17;
}

- (void)operationDidStart:(id)start
{
  startCopy = start;
  if (([(_CATOperationTargetSelectorObserver *)self events]& 1) != 0)
  {
    [(_CATOperationTargetSelectorObserver *)self invokeActionWithOperation:startCopy];
  }
}

- (void)operationDidProgress:(id)progress
{
  progressCopy = progress;
  if (([(_CATOperationTargetSelectorObserver *)self events]& 8) != 0)
  {
    [(_CATOperationTargetSelectorObserver *)self invokeActionWithOperation:progressCopy];
  }
}

- (void)operationDidFinish:(id)finish
{
  finishCopy = finish;
  if (([(_CATOperationTargetSelectorObserver *)self events]& 4) != 0)
  {
    error = [finishCopy error];
    v4 = error != 0;
  }

  else
  {
    v4 = 0;
  }

  if (([(_CATOperationTargetSelectorObserver *)self events]& 2) != 0)
  {
    error2 = [finishCopy error];
    v6 = error2 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v4 || v6)
  {
    [(_CATOperationTargetSelectorObserver *)self invokeActionWithOperation:finishCopy];
  }
}

- (void)invokeActionWithOperation:(id)operation
{
  operationCopy = operation;
  delegateQueue = [(_CATOperationTargetSelectorObserver *)self delegateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___CATOperationTargetSelectorObserver_invokeActionWithOperation___block_invoke;
  v8[3] = &unk_278DA7470;
  v8[4] = self;
  v9 = operationCopy;
  v6 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v11 = v6;
  v7 = operationCopy;
  dispatch_async(delegateQueue, block);
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)initWithTarget:selector:events:userInfo:delegateQueue:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"target" object:? file:? lineNumber:? description:?];
}

- (void)initWithTarget:selector:events:userInfo:delegateQueue:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"sel" object:? file:? lineNumber:? description:?];
}

@end