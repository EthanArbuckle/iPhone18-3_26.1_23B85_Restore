@interface HMFPromise
- (BOOL)fulfillWithNoValue;
- (BOOL)fulfillWithValue:(id)a3;
- (BOOL)rejectWithError:(id)a3;
- (BOOL)resolveWithFuture:(id)a3;
- (id)errorOnlyResolverBlock;
- (id)resolverBlock;
- (id)voidResolverBlock;
- (uint64_t)resolveWithOutcome:(void *)a3;
- (void)_addCompletion:(uint64_t)a1;
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

- (uint64_t)resolveWithOutcome:(void *)a3
{
  v3 = a3;
  if (a1 && (atomic_exchange((a1 + 24), 1u) & 1) == 0)
  {
    v6 = a2;
    if (a2 == 3)
    {
      v6 = [a3 outcomeIfSettled];
      v8 = v7;
      if (v6)
      {
        v9 = v7;

        v3 = v9;
      }

      else
      {
        v6 = 3;
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      if (![(HMFAsyncFuture *)WeakRetained _resolveWithState:v6 value:v3])
      {
        v5 = 0;
LABEL_23:

        goto LABEL_24;
      }

      objc_storeWeak((a1 + 8), 0);
    }

    v12 = _Block_copy(*(a1 + 16));
    if (v12)
    {
      v13 = *(a1 + 16);
      *(a1 + 16) = 0;

      if (v6 == 1)
      {
        v15 = 0;
        v14 = v3;
      }

      else
      {
        if (v6 != 2)
        {
          if (v6 == 3)
          {
            v5 = [(HMFAsyncFuture *)v3 _callOrAddCompletionBlock:v12];
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_22;
        }

        v14 = 0;
        v15 = v3;
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

- (void)_addCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = _Block_copy(*(a1 + 16));
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
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;

      v7 = v11;
    }

    else
    {
      v6 = _Block_copy(v3);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;
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

- (BOOL)fulfillWithValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:v4];
  }

  else
  {
  }

  return self;
}

- (BOOL)rejectWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
  }

  v7 = v6;

  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:v7];
  }

  else
  {
  }

  return self;
}

- (BOOL)resolveWithFuture:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure(@"future");
  }

  v5 = v4;
  if (self)
  {
    LOBYTE(self) = [(HMFPromise *)self resolveWithOutcome:v4];
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