@interface HMFAsyncFuture
- (BOOL)_resolveWithState:(void *)a3 value:;
- (BOOL)isPending;
- (HMFAsyncFuture)_inContext:(void *)a3 then:(void *)a4 orRecover:;
- (_HMFFutureBlockOutcome)outcomeIfSettled;
- (uint64_t)_callOrAddCompletionBlock:(uint64_t)a1;
- (uint64_t)initWithPromise:(uint64_t)a1;
@end

@implementation HMFAsyncFuture

- (uint64_t)initWithPromise:(uint64_t)a1
{
  if (a1)
  {
    v4 = [HMFPromise alloc];
    *(a1 + 12) = 0;
    *(a1 + 16) = v4;
    objc_storeWeak(&v4->_future, a1);
    v5 = *a2;
    *a2 = v4;

    v6 = a1;
  }

  return a1;
}

- (BOOL)_resolveWithState:(void *)a3 value:
{
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v7 = *(a1 + 12);
    v8 = v7 == 0;
    if (!v7)
    {
      *(a1 + 12) = a2;
      *(a1 + 16) = 0;
      objc_storeStrong((a1 + 24), a3);
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isPending
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if ((state - 1) < 2)
  {
    return 0;
  }

  if (!state)
  {
    return 1;
  }

  if (state != 3)
  {
    return 0;
  }

  value = self->_value;

  return [value isPending];
}

- (_HMFFutureBlockOutcome)outcomeIfSettled
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  switch(state)
  {
    case 3:
      v5 = [self->_value outcomeIfSettled];
      v4 = v9;
      break;
    case 2:
      v6 = self->_value;
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      }

      v4 = v8;

      v5 = 2;
      break;
    case 1:
      v4 = self->_value;
      v5 = 1;
      break;
    default:
      v5 = 0;
      v4 = 0;
      break;
  }

  v10 = v4;
  result.var1 = v10;
  result.var0 = v5;
  return result;
}

- (uint64_t)_callOrAddCompletionBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v4 = *(a1 + 12);
    if (v4)
    {
      os_unfair_lock_unlock((a1 + 8));
      switch(v4)
      {
        case 3:
          a1 = [(HMFAsyncFuture *)*(a1 + 24) _callOrAddCompletionBlock:v3];
          goto LABEL_10;
        case 2:
          (*(v3 + 2))(v3, 0, *(a1 + 24));
          break;
        case 1:
          (*(v3 + 2))(v3, *(a1 + 24), 0);
          break;
        default:
          a1 = 0;
          goto LABEL_10;
      }
    }

    else
    {
      [(HMFPromise *)*(a1 + 16) _addCompletion:v3];
      os_unfair_lock_unlock((a1 + 8));
    }

    a1 = 1;
  }

LABEL_10:

  return a1;
}

- (HMFAsyncFuture)_inContext:(void *)a3 then:(void *)a4 orRecover:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_11;
  }

  os_unfair_lock_lock_with_options();
  v10 = *(a1 + 12);
  if (!v10)
  {
    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = HMFRequireCurrentAsyncContext();
    }

    v17 = v15;
    v30 = 0;
    v11 = [HMFAsyncFuture alloc];
    [(HMFAsyncFuture *)v11 initWithPromise:?];
    v18 = *(a1 + 16);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__HMFAsyncFuture__inContext_then_orRecover___block_invoke;
    v25[3] = &unk_2786E6DB8;
    v27 = v17;
    v28 = v8;
    v19 = v30;
    v26 = v30;
    v29 = v9;
    v20 = v17;
    v21 = v19;
    [(HMFPromise *)v18 _addCompletion:v25];

    os_unfair_lock_unlock((a1 + 8));
    goto LABEL_25;
  }

  os_unfair_lock_unlock((a1 + 8));
  if (v10 == 3)
  {
    v16 = [(HMFAsyncFuture *)*(a1 + 24) _inContext:v7 then:v8 orRecover:v9];
    goto LABEL_24;
  }

  if (v10 != 2)
  {
    if (v10 == 1)
    {
      if (v8)
      {
        v11 = HMFFuture;
        if (v7)
        {
          v12 = *(a1 + 24);
          v13 = v7;
          v14 = v8;
LABEL_15:
          v16 = [HMFFuture _inContext:v13 transform:v12 with:v14];
LABEL_24:
          v11 = v16;
          goto LABEL_25;
        }

        v22 = (*(v8 + 2))(v8, *(a1 + 24));
        goto LABEL_22;
      }

LABEL_19:
      v16 = a1;
      goto LABEL_24;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_25;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  v11 = HMFFuture;
  if (v7)
  {
    v12 = *(a1 + 24);
    v13 = v7;
    v14 = v9;
    goto LABEL_15;
  }

  v22 = (*(v9 + 2))(v9, *(a1 + 24));
LABEL_22:
  if (HMFFuture)
  {
    v16 = [HMFFuture _futureWithOutcome:v22, v23];
    goto LABEL_24;
  }

LABEL_25:

  return v11;
}

void __44__HMFAsyncFuture__inContext_then_orRecover___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!*(a1 + 56))
    {
      [*(a1 + 32) rejectWithError:v6];
      goto LABEL_9;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__HMFAsyncFuture__inContext_then_orRecover___block_invoke_3;
    v10[3] = &unk_2786E6D90;
    v7 = *(a1 + 40);
    v11 = *(a1 + 32);
    v13 = *(a1 + 56);
    v12 = v6;
    [v7 performBlock:v10];

    v8 = v11;
  }

  else
  {
    if (!*(a1 + 48))
    {
      [*(a1 + 32) fulfillWithValue:v5];
      goto LABEL_9;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__HMFAsyncFuture__inContext_then_orRecover___block_invoke_2;
    v14[3] = &unk_2786E6D90;
    v9 = *(a1 + 40);
    v15 = *(a1 + 32);
    v17 = *(a1 + 48);
    v16 = v5;
    [v9 performBlock:v14];

    v8 = v15;
  }

LABEL_9:
}

void __44__HMFAsyncFuture__inContext_then_orRecover___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = (*(a1[6] + 16))(a1[6], a1[5]);
  if (v1)
  {

    [(HMFPromise *)v1 resolveWithOutcome:v2, v3];
  }

  else
  {
  }
}

void __44__HMFAsyncFuture__inContext_then_orRecover___block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = (*(a1[6] + 16))(a1[6], a1[5]);
  if (v1)
  {

    [(HMFPromise *)v1 resolveWithOutcome:v2, v3];
  }

  else
  {
  }
}

@end