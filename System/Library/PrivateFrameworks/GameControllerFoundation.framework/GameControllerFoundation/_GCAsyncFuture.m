@interface _GCAsyncFuture
- (BOOL)_setState:(int64_t)a3 result:(id)a4 error:(id)a5;
- (id).cxx_construct;
- (id)_initOnQueue:(char)a3 withOptions:(void *)a4 block:;
- (id)debugDescription;
@end

@implementation _GCAsyncFuture

- (id)_initOnQueue:(char)a3 withOptions:(void *)a4 block:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel__initOnQueue_withOptions_block_ object:a1 file:@"GCFuture.mm" lineNumber:1237 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
    }

    v25.receiver = a1;
    v25.super_class = GCFuture;
    v10 = objc_msgSendSuper2(&v25, sel_init);
    *(v10 + 2) = 0;
    *(v10 + 12) = -2;
    *(v10 + 12) = -1;
    atomic_store(1u, v10 + 14);
    if (__creatorFrameKey(void)::onceToken != -1)
    {
      [_GCAsyncFuture _initOnQueue:withOptions:block:];
    }

    *(v10 + 8) = pthread_getspecific(__creatorFrameKey(void)::key);
    v11 = dispatch_group_create();
    v12 = *(v10 + 4);
    *(v10 + 4) = v11;

    dispatch_group_enter(*(v10 + 4));
    if ((a3 & 2) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = voucher_copy();
    }

    v14 = *(v10 + 5);
    *(v10 + 5) = v13;

    v15 = [[GCPromise alloc] initWithFuture:v10];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49___GCAsyncFuture__initOnQueue_withOptions_block___block_invoke;
    aBlock[3] = &unk_1E8415218;
    v23 = v15;
    v24 = v9;
    v16 = v15;
    v17 = _Block_copy(aBlock);
    if (!v7)
    {
      dispatch_block_perform((a3 & 2), v17);
LABEL_17:
      a1 = v10;

      goto LABEL_18;
    }

    if ((a3 & 2) != 0)
    {
      v18 = DISPATCH_BLOCK_DETACHED;
    }

    else
    {
      if ((a3 & 4) == 0)
      {
LABEL_16:
        dispatch_async(v7, v17);
        goto LABEL_17;
      }

      v18 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT;
    }

    v19 = dispatch_block_create(v18, v17);

    v17 = v19;
    goto LABEL_16;
  }

LABEL_18:

  return a1;
}

- (BOOL)_setState:(int64_t)a3 result:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _GCAsyncFuture;
  v10 = [(GCFuture *)&v13 _setState:a3 result:v8 error:v9];
  if (v10)
  {
    ContinuationList::drainContinuations_takesLock(&self->_creationVoucher, &self->super);
    condGroup = self->_condGroup;
    self->_condGroup = 0;

    dispatch_group_leave(&self->super._label->super);
  }

  return v10;
}

- (id)debugDescription
{
  v4.receiver = self;
  v4.super_class = _GCAsyncFuture;
  v2 = [(GCFuture *)&v4 debugDescription];

  return v2;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = self + 48;
  return self;
}

@end