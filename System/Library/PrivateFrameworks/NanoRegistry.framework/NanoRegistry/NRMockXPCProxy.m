@interface NRMockXPCProxy
- (id)methodSignatureForSelector:(SEL)a3;
- (uint64_t)initWithBlahBlahBlahTarget:(void *)a3 queue:(char)a4 async:;
- (void)forwardInvocation:(id)a3;
@end

@implementation NRMockXPCProxy

- (uint64_t)initWithBlahBlahBlahTarget:(void *)a3 queue:(char)a4 async:
{
  v8 = a3;
  if (a1)
  {
    objc_storeWeak((a1 + 24), a2);
    objc_storeStrong((a1 + 8), a3);
    *(a1 + 16) = a4;
    v9 = a1;
  }

  return a1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = [WeakRetained methodSignatureForSelector:a3];

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy_;
  v12[4] = __Block_byref_object_dispose_;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_async)
  {
    [v4 retainArguments];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__NRMockXPCProxy_forwardInvocation___block_invoke;
    block[3] = &unk_1E86DAE00;
    v6 = v11;
    v11[0] = v4;
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
    v9[0] = v4;
    v9[1] = v12;
    dispatch_sync(v7, v8);
  }

  _Block_object_dispose(v12, 8);
}

@end