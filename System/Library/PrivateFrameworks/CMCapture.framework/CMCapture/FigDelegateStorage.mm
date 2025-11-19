@interface FigDelegateStorage
- (FigDelegateStorage)init;
- (OS_dispatch_queue)delegateQueue;
- (id)delegate;
- (void)dealloc;
- (void)invokeDelegateCallbackWithBlock:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation FigDelegateStorage

- (FigDelegateStorage)init
{
  v3.receiver = self;
  v3.super_class = FigDelegateStorage;
  result = [(FigDelegateStorage *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)delegate
{
  os_unfair_lock_lock(&self->_lock);
  Weak = objc_loadWeak(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);
  return Weak;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);

  v3.receiver = self;
  v3.super_class = FigDelegateStorage;
  [(FigDelegateStorage *)&v3 dealloc];
}

- (OS_dispatch_queue)delegateQueue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_delegateQueue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  if (!a3 && a4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"When setting the delegate to nil the queue must also be nil";
    goto LABEL_10;
  }

  if (a3 && !a4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Caller must provide a queue";
LABEL_10:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, a3);
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = a4;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)invokeDelegateCallbackWithBlock:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_delegateQueue;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__FigDelegateStorage_invokeDelegateCallbackWithBlock___block_invoke;
    v7[3] = &unk_1E7990390;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = *(a3 + 2);

    v6(a3, 0);
  }
}

void __54__FigDelegateStorage_invokeDelegateCallbackWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((v2 + 24));
  Weak = objc_loadWeak((v2 + 16));
  if (!Weak)
  {

    *(v2 + 8) = 0;
  }

  os_unfair_lock_unlock((v2 + 24));
  (*(v1 + 16))(v1, Weak);

  objc_autoreleasePoolPop(v3);
}

@end