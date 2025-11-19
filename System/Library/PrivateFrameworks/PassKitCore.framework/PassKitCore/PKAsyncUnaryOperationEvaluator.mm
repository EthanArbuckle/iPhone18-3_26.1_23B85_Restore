@interface PKAsyncUnaryOperationEvaluator
- (BOOL)_performOperation;
- (BOOL)isCanceled;
- (id)_initWithOperations:(id)a3 input:(id)a4;
- (id)evaluateWithCompletion:(id)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation PKAsyncUnaryOperationEvaluator

- (BOOL)_performOperation
{
  v3 = _performOperation_WaitingListHead();
  v4 = 0;
  v5 = MEMORY[0x1E695D930];
  v49 = *v3;
  v50 = 0;
  v48 = self;
  v36 = v49;
  v37 = v3;
  *v3 = &v48;
  v6 = *v5;
  v7 = 1;
  do
  {
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v47 = 0;
    v8 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(&self->_lock);
    if (self->_runningOperationState)
    {
      [MEMORY[0x1E695DF30] raise:v6 format:{@"PKAsyncUnaryOperationEvaluator (%p): implementation error - attempting to perform operations simultaneously.", self}];
    }

    v9 = self->_value;
    if (!self->_canceled)
    {
      if ([(NSMutableArray *)self->_operations count])
      {
        v10 = [(NSMutableArray *)self->_operations lastObject];
        if (v10)
        {
          [(NSMutableArray *)self->_operations removeLastObject];
          v11 = [[PKAsyncOperationState alloc] _init];
          runningOperationState = self->_runningOperationState;
          self->_runningOperationState = v11;

          v13 = v11;
          if (v13)
          {
            v14 = v13;
            v38 = v4;
            v15 = v6;
            os_unfair_lock_unlock(&self->_lock);
            LOBYTE(v50) = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __51__PKAsyncUnaryOperationEvaluator__performOperation__block_invoke;
            aBlock[3] = &unk_1E79E4858;
            aBlock[4] = self;
            aBlock[5] = v46;
            v16 = _Block_copy(aBlock);
            v17 = [PKDeallocationGuard alloc];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __51__PKAsyncUnaryOperationEvaluator__performOperation__block_invoke_2;
            v42[3] = &unk_1E79C44A0;
            v18 = v16;
            v44 = v18;
            v19 = v9;
            v43 = v19;
            v20 = [(PKDeallocationGuard *)v17 initWithBlock:v42];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __51__PKAsyncUnaryOperationEvaluator__performOperation__block_invoke_3;
            v39[3] = &unk_1E79CBA18;
            v21 = v20;
            v40 = v21;
            v22 = v18;
            v41 = v22;
            (v10)[2](v10, v14, v19, v39);

            v23 = 0;
            v24 = 0;
            v6 = v15;
            v4 = v38;
            goto LABEL_11;
          }

          self->_canceled = 1;
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    v24 = 5;
    v23 = 1;
    v4 = 1;
LABEL_11:

    objc_autoreleasePoolPop(v8);
    if (v50)
    {
      v25 = 4;
    }

    else
    {
      v25 = 5;
    }

    if (v23)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    v7 &= v23 | v50;
    _Block_object_dispose(v46, 8);
  }

  while (v26 != 5);
  *v37 = v36;
  if (v4)
  {
    v27 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(&self->_lock);
    v28 = self->_value;
    v29 = _Block_copy(self->_completion);
    escaped = self->_escaped;
    value = self->_value;
    self->_value = 0;

    completion = self->_completion;
    self->_completion = 0;

    operations = self->_operations;
    self->_operations = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v29)
    {
      v34 = self;
      v29[2](v29, escaped, v28, v34);
    }

    else
    {
      v34 = 0;
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v34 = 0;
  }

  return v7 & 1;
}

void __51__PKAsyncUnaryOperationEvaluator__performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __51__PKAsyncUnaryOperationEvaluator__performOperation__block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v7 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v7, 1u);
  v15 = v6;
  if (v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKAsyncUnaryOperationEvaluator (%p): operation completion must only be called once.", *(a1 + 32)}];
    goto LABEL_20;
  }

  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"PKAsyncUnaryOperationComposer: operation must maintain non-nil input."];
  }

  v8 = *_performOperation_WaitingListHead();
  v9 = *(a1 + 32);
  if (v8)
  {
    while (*v8 != v9)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
    *(v8 + 16) = 1;
    v9 = *(a1 + 32);
  }

  else
  {
LABEL_7:
    v10 = 1;
  }

  os_unfair_lock_lock(v9 + 2);
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v11 = *(*(a1 + 32) + 56);
  v12 = *(a1 + 32);
  v13 = *(v12 + 56);
  *(v12 + 56) = 0;

  if (v10)
  {
    *(*(a1 + 32) + 49) = 1;
  }

  v14 = *(a1 + 32);
  if (a3)
  {
    *(v14 + 50) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    if (v11)
    {
      [v11 _cancel];
LABEL_16:
      [v11 _invalidate];
    }
  }

  else
  {
    os_unfair_lock_unlock((v14 + 8));
    if (v11)
    {
      goto LABEL_16;
    }
  }

  if (v10)
  {
    [*(a1 + 32) _performOperation];
  }

LABEL_20:
}

- (void)dealloc
{
  if (self->_completion)
  {
    v3 = atomic_load(&self->_crashed);
    if ((v3 & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKAsyncUnaryOperationEvaluator (%p): implementation error - deallocated before pipeline completed.", self}];
    }
  }

  v4.receiver = self;
  v4.super_class = PKAsyncUnaryOperationEvaluator;
  [(PKAsyncUnaryOperationEvaluator *)&v4 dealloc];
}

- (BOOL)isCanceled
{
  os_unfair_lock_lock(&self->_lock);
  canceled = self->_canceled;
  os_unfair_lock_unlock(&self->_lock);
  return canceled;
}

- (id)_initWithOperations:(id)a3 input:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = PKAsyncUnaryOperationEvaluator;
  v8 = [(PKAsyncUnaryOperationEvaluator *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v6 count];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
      operations = v9->_operations;
      v9->_operations = v11;

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [v6 reverseObjectEnumerator];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = v9->_operations;
            v19 = _Block_copy(*(*(&v21 + 1) + 8 * v17));
            [(NSMutableArray *)v18 addObject:v19];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v15);
      }
    }

    objc_storeStrong(&v9->_value, a4);
  }

  return v9;
}

- (id)evaluateWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_started)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"PKAsyncUnaryOperationEvaluator (%p): operations may only be started once.", self}];
  }

  self->_started = 1;
  v5 = _Block_copy(v4);
  completion = self->_completion;
  self->_completion = v5;

  os_unfair_lock_unlock(&self->_lock);
  v7 = self;
  if ([(PKAsyncUnaryOperationEvaluator *)v7 _performOperation])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_canceled || (self->_canceled = 1, (runningOperationState = self->_runningOperationState) == 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = runningOperationState;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(PKAsyncOperationState *)v4 _cancel];
}

@end