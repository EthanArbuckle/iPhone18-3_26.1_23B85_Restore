@interface PDSQueueProxy
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (PDSQueueProxy)initWithTarget:(id)target queue:(id)queue mode:(unint64_t)mode;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation PDSQueueProxy

- (PDSQueueProxy)initWithTarget:(id)target queue:(id)queue mode:(unint64_t)mode
{
  targetCopy = target;
  queueCopy = queue;
  v11 = queueCopy;
  if (targetCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    [PDSQueueProxy initWithTarget:queue:mode:];
    if (!self)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [PDSQueueProxy initWithTarget:queue:mode:];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    objc_storeStrong(&self->_target, target);
    objc_storeStrong(&self->_queue, queue);
    self->_mode = mode;
  }

LABEL_5:

  return self;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  target = [(PDSQueueProxy *)self target];
  v6 = [target conformsToProtocol:protocolCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  target = [(PDSQueueProxy *)self target];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  target = [(PDSQueueProxy *)self target];
  v5 = [target methodSignatureForSelector:selector];

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  mode = [(PDSQueueProxy *)self mode];
  if (!mode)
  {
    queue = [(PDSQueueProxy *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__PDSQueueProxy_forwardInvocation___block_invoke_2;
    v8[3] = &unk_2799F8360;
    v7 = v9;
    v9[0] = invocationCopy;
    v9[1] = self;
    dispatch_sync(queue, v8);
    goto LABEL_5;
  }

  if (mode == 1)
  {
    [invocationCopy retainArguments];
    queue = [(PDSQueueProxy *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PDSQueueProxy_forwardInvocation___block_invoke;
    block[3] = &unk_2799F8360;
    v7 = v11;
    v11[0] = invocationCopy;
    v11[1] = self;
    dispatch_async(queue, block);
LABEL_5:
  }
}

void __35__PDSQueueProxy_forwardInvocation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) target];
  [v1 invokeWithTarget:v2];
}

void __35__PDSQueueProxy_forwardInvocation___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) target];
  [v1 invokeWithTarget:v2];
}

- (void)initWithTarget:queue:mode:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"target" object:? file:? lineNumber:? description:?];
}

- (void)initWithTarget:queue:mode:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

@end