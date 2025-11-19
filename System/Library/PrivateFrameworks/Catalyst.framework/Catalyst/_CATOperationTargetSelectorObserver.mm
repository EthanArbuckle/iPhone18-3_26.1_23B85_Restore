@interface _CATOperationTargetSelectorObserver
- (SEL)selector;
- (_CATOperationTargetSelectorObserver)init;
- (_CATOperationTargetSelectorObserver)initWithTarget:(id)a3 selector:(SEL)a4 events:(unint64_t)a5 userInfo:(id)a6 delegateQueue:(id)a7;
- (void)invokeActionWithOperation:(id)a3;
- (void)operationDidFinish:(id)a3;
- (void)operationDidProgress:(id)a3;
- (void)operationDidStart:(id)a3;
@end

@implementation _CATOperationTargetSelectorObserver

- (_CATOperationTargetSelectorObserver)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CATOperation.m" lineNumber:673 description:{@"%@: %@ is unavailable", v6, v7}];

  return 0;
}

- (_CATOperationTargetSelectorObserver)initWithTarget:(id)a3 selector:(SEL)a4 events:(unint64_t)a5 userInfo:(id)a6 delegateQueue:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (v13)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_CATOperationTargetSelectorObserver initWithTarget:selector:events:userInfo:delegateQueue:];
    if (a4)
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
    objc_storeStrong(&v16->_target, a3);
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0;
    }

    v17->_selector = v18;
    v17->_events = a5;
    objc_storeStrong(&v17->_userInfo, a6);
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a4);
    v22 = [v19 stringWithFormat:@"%@.%p.%p.%@", v20, v17, v13, v21];
    v23 = dispatch_queue_create([v22 UTF8String], 0);
    delegateQueue = v17->_delegateQueue;
    v17->_delegateQueue = v23;

    v25 = v17->_delegateQueue;
    if (v15)
    {
      dispatch_set_target_queue(v17->_delegateQueue, v15);
    }

    else
    {
      v26 = dispatch_get_global_queue(21, 0);
      dispatch_set_target_queue(v25, v26);
    }
  }

  return v17;
}

- (void)operationDidStart:(id)a3
{
  v4 = a3;
  if (([(_CATOperationTargetSelectorObserver *)self events]& 1) != 0)
  {
    [(_CATOperationTargetSelectorObserver *)self invokeActionWithOperation:v4];
  }
}

- (void)operationDidProgress:(id)a3
{
  v4 = a3;
  if (([(_CATOperationTargetSelectorObserver *)self events]& 8) != 0)
  {
    [(_CATOperationTargetSelectorObserver *)self invokeActionWithOperation:v4];
  }
}

- (void)operationDidFinish:(id)a3
{
  v8 = a3;
  if (([(_CATOperationTargetSelectorObserver *)self events]& 4) != 0)
  {
    v5 = [v8 error];
    v4 = v5 != 0;
  }

  else
  {
    v4 = 0;
  }

  if (([(_CATOperationTargetSelectorObserver *)self events]& 2) != 0)
  {
    v7 = [v8 error];
    v6 = v7 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v4 || v6)
  {
    [(_CATOperationTargetSelectorObserver *)self invokeActionWithOperation:v8];
  }
}

- (void)invokeActionWithOperation:(id)a3
{
  v4 = a3;
  v5 = [(_CATOperationTargetSelectorObserver *)self delegateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___CATOperationTargetSelectorObserver_invokeActionWithOperation___block_invoke;
  v8[3] = &unk_278DA7470;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_2;
  block[3] = &unk_278DA7208;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
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