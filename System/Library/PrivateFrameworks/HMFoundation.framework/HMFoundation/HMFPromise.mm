@interface HMFPromise
- (BOOL)fulfillWithNoValue;
- (BOOL)fulfillWithValue:(id)value;
- (BOOL)rejectWithError:(id)error;
- (BOOL)resolveWithFuture:(id)future;
- (id)errorOnlyResolverBlock;
- (id)resolverBlock;
- (id)voidResolverBlock;
- (uint64_t)resolveWithOutcome:(void *)outcome;
- (void)_addCompletion:(uint64_t)completion;
- (void)dealloc;
@end

@implementation HMFPromise

- (BOOL)fulfillWithNoValue
{
  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:0];
  }

  return self;
}

- (void)dealloc
{
  __swp(self + 24, &self->_resolved);
  if (((self + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_future);
    if (WeakRetained || self->_completion)
    {
      v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:18];
      [(HMFAsyncFuture *)WeakRetained _resolveWithState:v4 value:?];
      completion = self->_completion;
      if (completion)
      {
        completion[2](completion, 0, v4);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = HMFPromise;
  [(HMFPromise *)&v6 dealloc];
}

- (uint64_t)resolveWithOutcome:(void *)outcome
{
  outcomeCopy = outcome;
  if (self && (atomic_exchange((self + 24), 1u) & 1) == 0)
  {
    outcomeIfSettled = a2;
    if (a2 == 3)
    {
      outcomeIfSettled = [outcome outcomeIfSettled];
      v8 = v7;
      if (outcomeIfSettled)
      {
        v9 = v7;

        outcomeCopy = v9;
      }

      else
      {
        outcomeIfSettled = 3;
      }
    }

    WeakRetained = objc_loadWeakRetained((self + 8));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      if (![(HMFAsyncFuture *)WeakRetained _resolveWithState:outcomeIfSettled value:outcomeCopy])
      {
        v5 = 0;
LABEL_23:

        goto LABEL_24;
      }

      objc_storeWeak((self + 8), 0);
    }

    v12 = _Block_copy(*(self + 16));
    if (v12)
    {
      v13 = *(self + 16);
      *(self + 16) = 0;

      if (outcomeIfSettled == 1)
      {
        v15 = 0;
        v14 = outcomeCopy;
      }

      else
      {
        if (outcomeIfSettled != 2)
        {
          if (outcomeIfSettled == 3)
          {
            v5 = [(HMFAsyncFuture *)outcomeCopy _callOrAddCompletionBlock:v12];
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_22;
        }

        v14 = 0;
        v15 = outcomeCopy;
      }

      (*(v12 + 2))(v12, v14, v15);
    }

    v5 = 1;
LABEL_22:

    goto LABEL_23;
  }

  v5 = 0;
LABEL_24:

  return v5;
}

- (void)_addCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = _Block_copy(*(completion + 16));
    v5 = v4;
    if (v4)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __29__HMFPromise__addCompletion___block_invoke;
      v10[3] = &unk_2786E6DE0;
      v11 = v4;
      v12 = v3;
      v8 = _Block_copy(v10);
      v9 = *(completion + 16);
      *(completion + 16) = v8;

      v7 = v11;
    }

    else
    {
      v6 = _Block_copy(v3);
      v7 = *(completion + 16);
      *(completion + 16) = v6;
    }
  }
}

void __29__HMFPromise__addCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v9 = a2;
  v6(v5, v9, v7);
  v8 = *(a1 + 32);
  *(a1 + 32) = 0;

  (*(*(a1 + 40) + 16))();
}

- (BOOL)fulfillWithValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:valueCopy];
  }

  else
  {
  }

  return self;
}

- (BOOL)rejectWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    hmfUnspecifiedError = errorCopy;
  }

  else
  {
    hmfUnspecifiedError = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
  }

  v7 = hmfUnspecifiedError;

  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:v7];
  }

  else
  {
  }

  return self;
}

- (BOOL)resolveWithFuture:(id)future
{
  futureCopy = future;
  if (!futureCopy)
  {
    _HMFPreconditionFailure(@"future");
  }

  v5 = futureCopy;
  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:futureCopy];
  }

  else
  {
  }

  return self;
}

- (id)resolverBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HMFPromise_Convenience__resolverBlock__block_invoke;
  aBlock[3] = &unk_2786E7300;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __40__HMFPromise_Convenience__resolverBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v10;
  }

  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = v7;
  if (v6)
  {
    [(HMFPromise *)v6 resolveWithOutcome:v8, v9];
  }

  else
  {
  }
}

- (id)errorOnlyResolverBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HMFPromise_Convenience__errorOnlyResolverBlock__block_invoke;
  aBlock[3] = &unk_2786E6C38;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __49__HMFPromise_Convenience__errorOnlyResolverBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = 2;
    if (v4)
    {
LABEL_3:
      [(HMFPromise *)v4 resolveWithOutcome:v6, v7];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_3;
    }
  }

LABEL_6:
}

- (id)voidResolverBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__HMFPromise_Convenience__voidResolverBlock__block_invoke;
  aBlock[3] = &unk_2786E6C80;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __44__HMFPromise_Convenience__voidResolverBlock__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [(HMFPromise *)result resolveWithOutcome:0];
  }

  return result;
}

@end