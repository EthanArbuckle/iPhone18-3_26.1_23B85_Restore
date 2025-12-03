@interface NRMockXPCProxy
- (id)methodSignatureForSelector:(SEL)selector;
- (uint64_t)initWithBlahBlahBlahTarget:(void *)target queue:(char)queue async:;
- (void)forwardInvocation:(id)invocation;
@end

@implementation NRMockXPCProxy

- (uint64_t)initWithBlahBlahBlahTarget:(void *)target queue:(char)queue async:
{
  targetCopy = target;
  if (self)
  {
    objc_storeWeak((self + 24), a2);
    objc_storeStrong((self + 8), target);
    *(self + 16) = queue;
    selfCopy = self;
  }

  return self;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = [WeakRetained methodSignatureForSelector:selector];

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_async)
  {
    [invocationCopy retainArguments];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__NRMockXPCProxy_forwardInvocation___block_invoke;
    block[3] = &unk_1E86DAE00;
    v6 = v11;
    v11[0] = invocationCopy;
    v11[1] = v12;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__NRMockXPCProxy_forwardInvocation___block_invoke_2;
    v8[3] = &unk_1E86DAE00;
    v6 = v9;
    v9[0] = invocationCopy;
    v9[1] = v12;
    dispatch_sync(v7, v8);
  }

  _Block_object_dispose(v12, 8);
}

@end