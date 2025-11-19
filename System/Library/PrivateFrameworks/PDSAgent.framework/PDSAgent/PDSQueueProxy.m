@interface PDSQueueProxy
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (PDSQueueProxy)initWithTarget:(id)a3 queue:(id)a4 mode:(unint64_t)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation PDSQueueProxy

- (PDSQueueProxy)initWithTarget:(id)a3 queue:(id)a4 mode:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
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
    objc_storeStrong(&self->_target, a3);
    objc_storeStrong(&self->_queue, a4);
    self->_mode = a5;
  }

LABEL_5:

  return self;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(PDSQueueProxy *)self target];
  v6 = [v5 conformsToProtocol:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(PDSQueueProxy *)self target];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(PDSQueueProxy *)self target];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(PDSQueueProxy *)self mode];
  if (!v5)
  {
    v6 = [(PDSQueueProxy *)self queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__PDSQueueProxy_forwardInvocation___block_invoke_2;
    v8[3] = &unk_2799F8360;
    v7 = v9;
    v9[0] = v4;
    v9[1] = self;
    dispatch_sync(v6, v8);
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    [v4 retainArguments];
    v6 = [(PDSQueueProxy *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PDSQueueProxy_forwardInvocation___block_invoke;
    block[3] = &unk_2799F8360;
    v7 = v11;
    v11[0] = v4;
    v11[1] = self;
    dispatch_async(v6, block);
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