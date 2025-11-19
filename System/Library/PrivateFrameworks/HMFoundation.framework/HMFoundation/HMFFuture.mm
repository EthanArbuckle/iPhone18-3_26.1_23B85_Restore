@interface HMFFuture
+ (HMFAsyncFuture)_inContext:(void *)a3 transform:(void *)a4 with:;
+ (id)_futureWithNilValue;
+ (id)_futureWithOutcome:(void *)a3;
+ (id)all:(id)a3;
+ (id)allSettled:(id)a3;
+ (id)any:(id)a3;
+ (id)anySettled:(id)a3;
+ (id)futureForOperation:(id)a3;
+ (id)futureWithDelay:(double)a3;
+ (id)futureWithDelay:(uint64_t)a3 outcome:(void *)a4;
+ (id)futureWithError:(id)a3;
+ (id)futureWithPromise:(id *)a3;
+ (id)futureWithValue:(id)a3;
+ (id)inContext:(id)a3 perform:(id)a4;
- (BOOL)isPending;
- (BOOL)waitForResult:(id *)a3 orError:(id *)a4 withTimeout:(double)a5;
- (_HMFFutureBlockOutcome)outcomeIfSettled;
- (id)description;
- (id)finally:(id)a3;
- (id)ignoreErrors;
- (id)ignoreOutcome;
- (id)ignoreResult;
- (id)inContext:(id)a3 finally:(id)a4;
- (id)inContext:(id)a3 recover:(id)a4;
- (id)inContext:(id)a3 then:(id)a4;
- (id)inContext:(id)a3 then:(id)a4 orRecover:(id)a5;
- (id)recover:(id)a3;
- (id)then:(id)a3;
- (id)then:(id)a3 orRecover:(id)a4;
- (id)timeout:(double)a3;
- (void)getResultWithCompletion:(id)a3;
@end

@implementation HMFFuture

+ (id)_futureWithNilValue
{
  objc_opt_self();
  if (_MergedGlobals_55 != -1)
  {
    dispatch_once(&_MergedGlobals_55, &__block_literal_global_2);
  }

  v0 = qword_280AFC578;

  return v0;
}

+ (id)futureWithValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [HMFFulfilledFuture alloc];
    [(HMFFulfilledFuture *)&v4->super.super.isa initWithValue:v3];
  }

  else
  {
    v4 = +[HMFFuture _futureWithNilValue];
  }

  return v4;
}

+ (id)futureWithError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [HMFRejectedFuture alloc];
    [(HMFRejectedFuture *)&v4->super.super.isa initWithError:v3];
  }

  else
  {
    objc_opt_self();
    if (qword_280AFC580 != -1)
    {
      dispatch_once(&qword_280AFC580, &__block_literal_global_4);
    }

    v4 = qword_280AFC588;
  }

  return v4;
}

uint64_t __32__HMFFuture__futureWithNilValue__block_invoke()
{
  qword_280AFC578 = [[HMFFulfilledFuture alloc] initWithValue:?];

  return MEMORY[0x2821F96F8]();
}

void __40__HMFFuture__futureWithUnspecifiedError__block_invoke()
{
  v0 = [HMFRejectedFuture alloc];
  v2 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
  [(HMFRejectedFuture *)&v0->super.super.isa initWithError:v2];
  v1 = qword_280AFC588;
  qword_280AFC588 = v0;
}

+ (id)_futureWithOutcome:(void *)a3
{
  objc_opt_self();
  switch(a2)
  {
    case 1:
      v5 = [HMFFuture futureWithValue:a3];
      goto LABEL_7;
    case 2:
      v5 = [HMFFuture futureWithError:a3];
      goto LABEL_7;
    case 3:
      v5 = a3;
LABEL_7:
      v6 = v5;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

+ (id)futureWithPromise:(id *)a3
{
  v3 = [[HMFAsyncFuture alloc] initWithPromise:a3];

  return v3;
}

+ (id)inContext:(id)a3 perform:(id)a4
{
  v5 = a4;
  v15 = 0;
  v6 = a3;
  v7 = [HMFAsyncFuture alloc];
  [(HMFAsyncFuture *)v7 initWithPromise:?];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__HMFFuture_inContext_perform___block_invoke;
  v12[3] = &unk_2786E6D68;
  v8 = v15;
  v13 = v15;
  v14 = v5;
  v9 = v5;
  v10 = v8;
  [v6 performBlock:v12];

  return v7;
}

void __31__HMFFuture_inContext_perform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  if (v1)
  {

    [(HMFPromise *)v1 resolveWithOutcome:v2, v3];
  }

  else
  {
  }
}

+ (HMFAsyncFuture)_inContext:(void *)a3 transform:(void *)a4 with:
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v19 = 0;
  v9 = [HMFAsyncFuture alloc];
  [(HMFAsyncFuture *)v9 initWithPromise:?];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__HMFFuture__inContext_transform_with___block_invoke;
  v15[3] = &unk_2786E6D90;
  v10 = v19;
  v17 = v6;
  v18 = v7;
  v16 = v19;
  v11 = v6;
  v12 = v7;
  v13 = v10;
  [v8 performBlock:v15];

  return v9;
}

void __39__HMFFuture__inContext_transform_with___block_invoke(void *a1)
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMFFuture *)self isPending];
  v5 = @"settled";
  if (v4)
  {
    v5 = @"pending";
  }

  return [v3 stringWithFormat:@"<HMFFuture %p (%@)>", self, v5];
}

- (BOOL)isPending
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (_HMFFutureBlockOutcome)outcomeIfSettled
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)getResultWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)then:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)then:(id)a3 orRecover:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)inContext:(id)a3 then:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)inContext:(id)a3 recover:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)inContext:(id)a3 then:(id)a4 orRecover:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

+ (id)futureWithDelay:(double)a3
{
  v4 = HMFFuture;
  if (HMFFuture)
  {
    v4 = [(HMFFuture *)a3 futureWithDelay:1 outcome:0];
    v3 = vars8;
  }

  return v4;
}

+ (id)futureWithDelay:(uint64_t)a3 outcome:(void *)a4
{
  objc_opt_self();
  v16 = 0;
  v7 = [HMFFuture futureWithPromise:&v16];
  v8 = dispatch_time(0, (a1 * 1000000000.0));
  v9 = dispatch_get_global_queue(21, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3254779904;
  v12[2] = __46__HMFFuture_Timeout__futureWithDelay_outcome___block_invoke;
  v12[3] = &unk_283EBCAE0;
  v13 = v16;
  v14 = a3;
  v15 = a4;
  v10 = a4;
  dispatch_after(v8, v9, v12);

  return v7;
}

- (id)timeout:(double)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (_MergedGlobals_58 != -1)
  {
    dispatch_once(&_MergedGlobals_58, &__block_literal_global_5);
  }

  v14[0] = self;
  v5 = qword_280AFC5B8;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
  }

  v8 = v7;

  if (HMFFuture)
  {
    v9 = [(HMFFuture *)a3 futureWithDelay:2 outcome:v8];
  }

  else
  {

    v9 = 0;
  }

  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [HMFFuture anySettled:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __30__HMFFuture_Timeout__timeout___block_invoke()
{
  qword_280AFC5B8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];

  return MEMORY[0x2821F96F8]();
}

void __46__HMFFuture_Timeout__futureWithDelay_outcome___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v1)
  {

    [(HMFPromise *)v1 resolveWithOutcome:v2, v3];
  }

  else
  {
  }
}

- (id)finally:(id)a3
{
  v4 = a3;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __thenBlockForFinallyBlock_block_invoke;
  v13 = &unk_2786E7350;
  v14 = v4;
  v5 = _Block_copy(&aBlock);

  aBlock = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __recoverBlockForFinallyBlock_block_invoke;
  v13 = &unk_2786E7378;
  v14 = v4;
  v6 = v4;
  v7 = _Block_copy(&aBlock);

  v8 = [(HMFFuture *)self then:v5 orRecover:v7];

  return v8;
}

- (id)inContext:(id)a3 finally:(id)a4
{
  v6 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __thenBlockForFinallyBlock_block_invoke;
  v16 = &unk_2786E7350;
  v17 = v6;
  v7 = a3;
  v8 = _Block_copy(&aBlock);

  v9 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __recoverBlockForFinallyBlock_block_invoke;
  v16 = &unk_2786E7378;
  v17 = v9;
  v10 = _Block_copy(&aBlock);

  v11 = [(HMFFuture *)self inContext:v7 then:v8 orRecover:v10];

  return v11;
}

- (id)ignoreErrors
{
  v3 = HMFCallerAsyncContext();
  v4 = [(HMFFuture *)self inContext:v3 recover:&__block_literal_global_13];

  return v4;
}

- (id)ignoreResult
{
  v3 = HMFCallerAsyncContext();
  v4 = [(HMFFuture *)self inContext:v3 then:&__block_literal_global_13];

  return v4;
}

- (id)ignoreOutcome
{
  v3 = HMFCallerAsyncContext();
  v4 = [(HMFFuture *)self inContext:v3 then:&__block_literal_global_13 orRecover:&__block_literal_global_13];

  return v4;
}

- (BOOL)waitForResult:(id *)a3 orError:(id *)a4 withTimeout:(double)a5
{
  v9 = [(HMFFuture *)self outcomeIfSettled];
  v11 = v10;
  if (v9 == 2)
  {
    v13 = *a3;
    *a3 = 0;

    objc_storeStrong(a4, v11);
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    objc_storeStrong(a3, v10);
    v12 = *a4;
    *a4 = 0;

LABEL_5:
    v14 = 1;
    goto LABEL_10;
  }

  v15 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HMFFuture_Waiting__waitForResult_orError_withTimeout___block_invoke;
  v19[3] = &unk_2786E73C8;
  v21 = a3;
  v22 = a4;
  v16 = v15;
  v20 = v16;
  [(HMFFuture *)self getResultWithCompletion:v19];
  if (a5 == 1.79769313e308)
  {
    v17 = -1;
  }

  else
  {
    v17 = dispatch_time(0, (a5 * 1000000000.0));
  }

  v14 = dispatch_semaphore_wait(v16, v17) == 0;

LABEL_10:
  return v14;
}

void __56__HMFFuture_Waiting__waitForResult_orError_withTimeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v8 = *v7;
  *v7 = v5;
  v12 = v5;

  v9 = *(a1 + 48);
  v10 = *v9;
  *v9 = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)all:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [a3 copy];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v25 = 0;
    v6 = [HMFFuture futureWithPromise:&v25];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__HMFFuture_Combinators__all___block_invoke;
    aBlock[3] = &unk_2786E7B18;
    v20 = v25;
    v22 = v24;
    v23 = v5;
    v7 = v3;
    v21 = v7;
    v8 = _Block_copy(aBlock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) getResultWithCompletion:{v8, v15}];
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v6 = [HMFFuture futureWithValue:MEMORY[0x277CBEBF8]];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

void __30__HMFFuture_Combinators__all___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) rejectWithError:v6];
  }

  else if (atomic_fetch_add((*(*(a1 + 48) + 8) + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 56)];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v19 + 1) + 8 * i) outcomeIfSettled];
          v13 = v12;
          v14 = v12;
          if (!v12)
          {
            v3 = [MEMORY[0x277CBEB68] null];
            v14 = v3;
          }

          [v7 addObject:v14];
          if (!v13)
          {
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = *(a1 + 32);
    v16 = [v7 copy];
    [v15 fulfillWithValue:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)allSettled:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [a3 copy];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v25 = 0;
    v6 = [HMFFuture futureWithPromise:&v25];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__HMFFuture_Combinators__allSettled___block_invoke;
    aBlock[3] = &unk_2786E7B18;
    v22 = v24;
    v23 = v5;
    v7 = v3;
    v20 = v7;
    v21 = v25;
    v8 = _Block_copy(aBlock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) getResultWithCompletion:{v8, v15}];
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v10);
    }

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v6 = [HMFFuture futureWithValue:MEMORY[0x277CBEBF8]];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

void __37__HMFFuture_Combinators__allSettled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v6 = a3;
  if (atomic_fetch_add((*(*(a1 + 48) + 8) + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 56)];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v19 + 1) + 8 * i) outcomeIfSettled];
          v13 = v12;
          v14 = v12;
          if (!v12)
          {
            v3 = [MEMORY[0x277CBEB68] null];
            v14 = v3;
          }

          [v7 addObject:v14];
          if (!v13)
          {
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = *(a1 + 40);
    v16 = [v7 copy];
    [v15 fulfillWithValue:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)any:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [a3 copy];
  v4 = [v3 count];
  if (!v4)
  {
    _HMFPreconditionFailure(@"count >= 1");
  }

  v5 = v4;
  v25 = 0;
  v6 = [HMFFuture futureWithPromise:&v25];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__HMFFuture_Combinators__any___block_invoke;
  aBlock[3] = &unk_2786E7B18;
  v20 = v25;
  v22 = v24;
  v23 = v5;
  v7 = v3;
  v21 = v7;
  v8 = _Block_copy(aBlock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * i) getResultWithCompletion:{v8, v15}];
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(v24, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

void __30__HMFFuture_Combinators__any___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (atomic_fetch_add((*(*(a1 + 48) + 8) + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 56)];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = *(a1 + 40);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v9)
      {
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v20 + 1) + 8 * i) outcomeIfSettled];
            v13 = v12;
            [v7 addObject:v12];
          }

          v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v9);
      }

      v14 = *(a1 + 32);
      v15 = MEMORY[0x277CCA9B8];
      v24 = @"HMFDetailedErrorsKey";
      v16 = [v7 copy];
      v25 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [v15 hmfErrorWithCode:17 userInfo:v17];
      [v14 rejectWithError:v18];
    }
  }

  else
  {
    [*(a1 + 32) fulfillWithValue:v5];
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)anySettled:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 count])
  {
    _HMFPreconditionFailure(@"futures.count >= 1");
  }

  v17 = 0;
  v4 = [HMFFuture futureWithPromise:&v17];
  v5 = [v17 resolverBlock];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) getResultWithCompletion:{v5, v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)futureForOperation:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  v4 = objc_getAssociatedObject(v3, &futureForOperation__lock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    os_unfair_lock_unlock(&futureForOperation__lock);
  }

  else
  {
    v4 = [HMFOperationFutureAdapter alloc];
    v7 = v3;
    if (v4)
    {
      v13.receiver = v4;
      v13.super_class = HMFOperationFutureAdapter;
      v4 = objc_msgSendSuper2(&v13, sel_init);
      if (v4)
      {
        v8 = [HMFFuture futureWithPromise:&v4->_promise];
        future = v4->_future;
        v4->_future = v8;

        [v7 addObserver:v4 forKeyPath:@"isFinished" options:1 context:HMFOperationFutureAdapterKVOContext];
        if ([v7 isFinished])
        {
          [(HMFOperationFutureAdapter *)v4 _handleFinishedOperation:v7];
        }
      }
    }

    objc_setAssociatedObject(v7, &futureForOperation__lock, v4, 1);
    os_unfair_lock_unlock(&futureForOperation__lock);
    if (!v4)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v10 = v4->_future;
LABEL_12:
  v11 = v10;

  return v10;
}

@end