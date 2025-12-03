@interface GCOperation
+ (id)alloc;
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)_checkFinished:(BOOL)finished;
- (BOOL)_runSynchronouslyIfNeeded;
- (BOOL)_setState:(int64_t)state result:(id)result error:(id)error;
- (GCOperation)initWithError:(id)error;
- (GCOperation)initWithResult:(id)result;
- (id).cxx_construct;
- (id)activate;
- (id)debugDescription;
- (id)initCancelled;
- (id)initOnQueue:(id)queue withOptions:(unsigned int)options;
- (id)startAsynchronously;
- (void)_startAsynchronouslyIfNeeded;
- (void)setAsyncBlock:(id)block;
- (void)setLabel:(id)label;
- (void)setSyncBlock:(id)block;
@end

@implementation GCOperation

+ (id)allocWithZone:(_NSZone *)zone
{
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v3);
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___GCOperation;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
}

+ (id)alloc
{
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    +[GCFuture futureWithBlock:];
  }

  pthread_setspecific(__creatorFrameKey(void)::key, v2);
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___GCOperation;
  return objc_msgSendSuper2(&v5, sel_allocWithZone_, 0);
}

- (GCOperation)initWithResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1408 description:{@"Invalid parameter not satisfying: %s", "result != nil"}];
  }

  v10.receiver = self;
  v10.super_class = GCFuture;
  v7 = [(GCFuture *)&v10 init];
  *(v7 + 2) = 0;
  v7[12] = -2;
  v7[12] = 2;
  objc_storeStrong(v7 + 2, result);
  atomic_store(1u, v7 + 14);
  ContinuationList::drainContinuations_takesLock((v7 + 72), v7);

  return v7;
}

- (GCOperation)initWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1421 description:{@"Invalid parameter not satisfying: %s", "error != nil"}];
  }

  v10.receiver = self;
  v10.super_class = GCFuture;
  v7 = [(GCFuture *)&v10 init];
  *(v7 + 2) = 0;
  v7[12] = -2;
  v7[12] = 1;
  objc_storeStrong(v7 + 2, error);
  atomic_store(1u, v7 + 14);
  ContinuationList::drainContinuations_takesLock((v7 + 72), v7);

  return v7;
}

- (id)initCancelled
{
  v5.receiver = self;
  v5.super_class = GCFuture;
  v2 = [(GCFuture *)&v5 init];
  *(v2 + 2) = 0;
  v2[12] = -2;
  v2[12] = 0;
  v3 = *(v2 + 2);
  *(v2 + 2) = 0;

  atomic_store(1u, v2 + 14);
  atomic_store(1u, v2 + 15);
  ContinuationList::drainContinuations_takesLock((v2 + 72), v2);
  return v2;
}

- (id)initOnQueue:(id)queue withOptions:(unsigned int)options
{
  optionsCopy = options;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = GCFuture;
  v8 = [(GCFuture *)&v15 init];
  *(v8 + 2) = 0;
  *(v8 + 12) = -2;
  *(v8 + 12) = -2;
  atomic_store(0, v8 + 14);
  if (__creatorFrameKey(void)::onceToken != -1)
  {
    [_GCAsyncFuture _initOnQueue:withOptions:block:];
  }

  *(v8 + 13) = pthread_getspecific(__creatorFrameKey(void)::key);
  if ((optionsCopy & 0x100) != 0)
  {
    *(v8 + 13) |= 1u;
  }

  objc_storeStrong(v8 + 4, queue);
  if ((optionsCopy & 2) != 0)
  {
    v12 = *(v8 + 7);
    *(v8 + 7) = 0;

    if ((optionsCopy & 4) == 0)
    {
      v11 = 0;
      goto LABEL_10;
    }

LABEL_11:
    v13 = pthread_self();
    pthread_get_qos_class_np(v13, v8 + 16, v8 + 17);
    goto LABEL_12;
  }

  v9 = voucher_copy();
  v10 = *(v8 + 7);
  *(v8 + 7) = v9;

  if ((optionsCopy & 4) != 0)
  {
    goto LABEL_11;
  }

  v11 = 21;
LABEL_10:
  *(v8 + 16) = v11;
  *(v8 + 17) = 0;
LABEL_12:

  return v8;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v5.receiver = self;
  v5.super_class = GCOperation;
  [(GCFuture *)&v5 setLabel:labelCopy];
  if (self->_continuations._continuations.tqh_last)
  {
    [labelCopy UTF8String];
    dispatch_queue_set_label_nocopy();
  }
}

- (void)setAsyncBlock:(id)block
{
  blockCopy = block;
  if (atomic_load_explicit(&self->super._state + 2, memory_order_acquire))
  {
    [GCOperation setAsyncBlock:];
  }

  v7 = blockCopy;
  v5 = [blockCopy copy];
  targetQueue = self->_targetQueue;
  self->_targetQueue = v5;
}

- (void)setSyncBlock:(id)block
{
  blockCopy = block;
  if (atomic_load_explicit(&self->super._state + 2, memory_order_acquire))
  {
    [GCOperation setSyncBlock:];
  }

  v7 = blockCopy;
  v5 = [blockCopy copy];
  asyncBlock = self->_asyncBlock;
  self->_asyncBlock = v5;
}

- (id)activate
{
  if (!*(self + 5) && !*(self + 6))
  {
    [GCOperation activate];
  }

  atomic_store(1u, self + 14);
  return self;
}

- (id)startAsynchronously
{
  activate = [(GCOperation *)self activate];
  [(GCOperation *)self _startAsynchronouslyIfNeeded];
  return self;
}

- (void)_startAsynchronouslyIfNeeded
{
  *self = MEMORY[0x1E69E9820];
  self[1] = 3221225472;
  self[2] = __43__GCOperation__startAsynchronouslyIfNeeded__block_invoke;
  self[3] = &unk_1E8415218;
  self[5] = a2;
  self[4] = a3;
  v7 = _Block_copy(self);
  v8 = *(a4 + 64);
  if (*(a4 + 56))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 21;
  }

  if (!v9)
  {
    if (v8 && v8 != 21)
    {
      v11 = *(a4 + 68);
      v10 = dispatch_block_create_with_voucher_and_qos_class();
    }

    else
    {
      v10 = dispatch_block_create_with_voucher();
    }

    v12 = v10;

    v7 = v12;
  }

  dispatch_async(*(a4 + 88), v7);
}

void __43__GCOperation__startAsynchronouslyIfNeeded__block_invoke_293(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__GCOperation__startAsynchronouslyIfNeeded__block_invoke_294;
    block[3] = &unk_1E8415268;
    v10 = &v12;
    v3 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v9 = v3;
    v11 = &v18;
    dispatch_async_and_wait(v2, block);
    v4 = v9;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = (*(*(a1 + 48) + 16))();
    objc_storeStrong(&v23, 0);
    v4 = v13[5];
    v13[5] = v6;
  }

  if (atomic_load_explicit((*(a1 + 40) + 15), memory_order_acquire))
  {
    [*(a1 + 40) _setState:0 result:0 error:0];
  }

  else
  {
    v7 = v13[5];
    if (v7)
    {
      [*(a1 + 40) _setState:2 result:v7 error:0];
    }

    else
    {
      if (!v19[5])
      {
        __43__GCOperation__startAsynchronouslyIfNeeded__block_invoke_293_cold_1();
      }

      [*(a1 + 40) _setState:1 result:0 error:?];
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

void __43__GCOperation__startAsynchronouslyIfNeeded__block_invoke_294(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = (*(v2 + 16))();
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_runSynchronouslyIfNeeded
{
  if (self)
  {
    if ((atomic_load_explicit((self + 14), memory_order_acquire) & 1) == 0)
    {
      [GCOperation _runSynchronouslyIfNeeded];
    }

    os_unfair_lock_lock_with_options();
    if (*(self + 12) == 254)
    {
      v2 = _Block_copy(*(self + 48));
      v3 = v2 != 0;
      if (!v2)
      {
        os_unfair_lock_unlock((self + 8));
        [(GCOperation *)self _startAsynchronouslyIfNeeded];
LABEL_20:

        return v3;
      }

      *(self + 12) = -1;
      v4 = *(self + 32);
      v5 = v4;
      if (*(self + 13))
      {

        v5 = 0;
      }

      v6 = dispatch_queue_attr_make_initially_inactive(0);
      v7 = dispatch_queue_create(0, v6);
      v8 = *(self + 88);
      *(self + 88) = v7;

      v9 = *(self + 88);
      [*(self + 24) UTF8String];
      dispatch_queue_set_label_nocopy();
      dispatch_activate(*(self + 88));
      v10 = dispatch_get_current_queue();
      v11 = *(self + 96);
      *(self + 96) = v10;

      *(self + 13) &= ~2u;
      os_unfair_lock_unlock((self + 8));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__GCOperation__runSynchronouslyIfNeeded__block_invoke;
      aBlock[3] = &unk_1E8415290;
      v12 = v5;
      v21 = v12;
      selfCopy = self;
      v23 = v2;
      v13 = _Block_copy(aBlock);
      v14 = *(self + 64);
      if (!*(self + 56) && v14 == 21)
      {
LABEL_19:
        dispatch_async_and_wait(*(self + 88), v13);

        goto LABEL_20;
      }

      if (v14)
      {
        if (v14 != 21)
        {
          v17 = *(self + 68);
          v16 = dispatch_block_create_with_voucher_and_qos_class();
          goto LABEL_18;
        }

        v15 = DISPATCH_BLOCK_ASSIGN_CURRENT;
      }

      else
      {
        v15 = DISPATCH_BLOCK_DETACHED;
      }

      v16 = dispatch_block_create(v15, v13);
LABEL_18:
      v18 = v16;

      v13 = v18;
      goto LABEL_19;
    }

    os_unfair_lock_unlock((self + 8));
  }

  return 0;
}

void __40__GCOperation__runSynchronouslyIfNeeded__block_invoke(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__GCOperation__runSynchronouslyIfNeeded__block_invoke_2;
    block[3] = &unk_1E8415268;
    v10 = &v12;
    v3 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v9 = v3;
    v11 = &v18;
    dispatch_async_and_wait(v2, block);
    v4 = v9;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = (*(*(a1 + 48) + 16))();
    objc_storeStrong(&v23, 0);
    v4 = v13[5];
    v13[5] = v6;
  }

  if (atomic_load_explicit((*(a1 + 40) + 15), memory_order_acquire))
  {
    [*(a1 + 40) _setState:0 result:0 error:0];
  }

  else
  {
    v7 = v13[5];
    if (v7)
    {
      [*(a1 + 40) _setState:2 result:v7 error:0];
    }

    else
    {
      if (!v19[5])
      {
        __43__GCOperation__startAsynchronouslyIfNeeded__block_invoke_293_cold_1();
      }

      [*(a1 + 40) _setState:1 result:0 error:?];
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

void __40__GCOperation__runSynchronouslyIfNeeded__block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = (*(v2 + 16))();
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_checkFinished:(BOOL)finished
{
  if ((atomic_load_explicit(&self->super._state + 2, memory_order_acquire) & 1) == 0)
  {
    [GCOperation _startAsynchronouslyIfNeeded];
  }

  if (finished)
  {
    if (![(GCOperation *)self _runSynchronouslyIfNeeded])
    {
      os_unfair_lock_lock_with_options();
      if (self->_continuations._continuations.tqh_first)
      {
        v4 = self->_privateQueue;
        os_unfair_lock_unlock(&self->super._lock);
        if (!v4)
        {
          [GCOperation _checkFinished:];
        }

        if ((*(&self->super._state + 1) & 2) != 0)
        {
          dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          dispatch_async_and_wait(self->_continuations._continuations.tqh_last, &__block_literal_global_298);
        }
      }

      else
      {
        os_unfair_lock_unlock(&self->super._lock);
      }
    }

    return 1;
  }

  else
  {
    os_unfair_lock_lock_with_options();
    v5 = self->_continuations._continuations.tqh_first == 0;
    os_unfair_lock_unlock(&self->super._lock);
  }

  return v5;
}

- (BOOL)_setState:(int64_t)state result:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = GCOperation;
  v10 = [(GCFuture *)&v13 _setState:state result:resultCopy error:errorCopy];
  if (v10)
  {
    ContinuationList::drainContinuations_takesLock(&self->_qos, &self->super);
    syncBlock = self->_syncBlock;
    self->_syncBlock = 0;

    if ((*(&self->super._state + 1) & 2) != 0)
    {
      dispatch_group_leave(self->_privateQueue);
    }
  }

  return v10;
}

- (id)debugDescription
{
  v4.receiver = self;
  v4.super_class = GCOperation;
  v2 = [(GCFuture *)&v4 debugDescription];

  return v2;
}

void __106__GCOperation__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  v8 = *(a1 + 72);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__GCOperation__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2;
  v11[3] = &unk_1E8415128;
  v9 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11[4] = v4;
  v12 = v3;
  v13 = v9;
  v10 = v3;
  [v4 observeFinishOnQueue:v5 withOptions:v6 qosClass:v7 relativePriority:v8 block:v11];
}

void __106__GCOperation__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  if (v10 > 2 || v10 == a2)
  {
    v12 = v8;
    v13 = *(a1 + 48);
    v14 = [*(a1 + 40) future];
    v20 = v12;
    v15 = (*(v13 + 16))(v13, a2, v7, v14 + 15, &v20);
    v16 = v20;

    v17 = [*(a1 + 40) future];
    LOBYTE(v14) = atomic_load_explicit(v17 + 15, memory_order_acquire);

    if (v14)
    {
      v18 = [*(a1 + 40) future];
      [v18 _setState:0 result:0 error:0];
    }

    else if (v15)
    {
      v18 = [*(a1 + 40) future];
      [v18 _setState:2 result:v15 error:0];
    }

    else
    {
      if (!v12)
      {
        __103__GCFuture__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_2_cold_1();
      }

      v18 = [*(a1 + 40) future];
      [v18 _setState:1 result:0 error:v16];
    }
  }

  else
  {
    v19 = [*(a1 + 40) future];
    [v19 _setState:a2 result:v7 error:v8];
  }
}

id __106__GCOperation__thenSynchronouslyRequiringState_onQueue_withOptions_qosClass_relativePriority_label_block___block_invoke_3(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v6 = [*(a1 + 32) waitUntilFinished];
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 == 2)
  {
    if (v6 == 1)
    {
      goto LABEL_14;
    }

    if (v6)
    {
LABEL_9:
      *a3 = [*(a1 + 32) error];
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) result];
      v7 = (*(v9 + 16))(v9, v7, v10, a2, a3);

      goto LABEL_15;
    }

LABEL_12:
    atomic_store(1u, a2);
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    if (v6 == 2)
    {
LABEL_13:
      v7 = [*(a1 + 32) result];
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  [*(a1 + 32) error];
  *a3 = v7 = 0;
LABEL_15:

  return v7;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = self + 72;
  return self;
}

- (void)_checkFinished:.cold.1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

@end