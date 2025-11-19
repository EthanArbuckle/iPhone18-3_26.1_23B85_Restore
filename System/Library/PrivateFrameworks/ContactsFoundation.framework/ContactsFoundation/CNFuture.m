@interface CNFuture
+ (CNFuture)futureWithBlock:(id)a3;
+ (CNFuture)futureWithBlock:(id)a3 scheduler:(id)a4;
+ (CNFuture)futureWithBlock:(id)a3 scheduler:(id)a4 schedulerProvider:(id)a5;
+ (CNFuture)futureWithBlock:(id)a3 schedulerProvider:(id)a4;
+ (CNFuture)futureWithError:(id)a3;
+ (CNFuture)futureWithResult:(id)a3;
+ (id)_joinMany:(id)a3;
+ (id)chain:(id)a3;
+ (id)flatMap:(id)a3 withBlock:(id)a4 schedulerProvider:(id)a5;
+ (id)future;
+ (id)join:(id)a3;
+ (id)lazyFutureWithBlock:(id)a3;
+ (id)promiseFuture;
+ (id)recover:(id)a3 withBlock:(id)a4 schedulerProvider:(id)a5;
+ (id)sequence:(id)a3;
+ (void)finishPromise:(id)a3 withFuture:(id)a4;
- (BOOL)cancel;
- (BOOL)finishWithError:(id)a3;
- (BOOL)finishWithResult:(id)a3;
- (CNFuture)init;
- (CNFuture)initWithImpl:(id)a3;
- (CNFuture)initWithSchedulerProvider:(id)a3;
- (NSString)description;
- (id)flatMap:(id)a3;
- (id)recover:(id)a3;
- (id)result:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)a3 scheduler:(id)a4;
- (void)addSuccessBlock:(id)a3 scheduler:(id)a4;
@end

@implementation CNFuture

+ (id)promiseFuture
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (CNFuture)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(CNFuture *)self initWithSchedulerProvider:v3];

  return v4;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  [(CNFutureImpl *)self->_impl updateDescriptionWithBuilder:v3];
  v4 = [v3 build];

  return v4;
}

+ (id)future
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (CNFuture)futureWithResult:(id)a3
{
  v4 = a3;
  v5 = [[_CNConstantFutureImpl alloc] initWithResult:v4];

  v6 = [[a1 alloc] initWithImpl:v5];

  return v6;
}

+ (CNFuture)futureWithError:(id)a3
{
  v4 = a3;
  v5 = [[_CNFailedFutureImpl alloc] initWithError:v4];

  v6 = [[a1 alloc] initWithImpl:v5];

  return v6;
}

+ (CNFuture)futureWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 futureWithBlock:v4 schedulerProvider:v5];

  return v6;
}

+ (CNFuture)futureWithBlock:(id)a3 scheduler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNSchedulerProvider defaultProvider];
  v9 = [a1 futureWithBlock:v7 scheduler:v6 schedulerProvider:v8];

  return v9;
}

+ (CNFuture)futureWithBlock:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNScheduler immediateScheduler];
  v9 = [a1 futureWithBlock:v7 scheduler:v8 schedulerProvider:v6];

  return v9;
}

+ (CNFuture)futureWithBlock:(id)a3 scheduler:(id)a4 schedulerProvider:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CNPromise);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __56__CNFuture_futureWithBlock_scheduler_schedulerProvider___block_invoke;
  v16 = &unk_1E6ED52C0;
  v17 = v8;
  v18 = v6;
  v9 = v8;
  v10 = v6;
  [v7 performBlock:&v13];

  v11 = [(CNPromise *)v9 future:v13];

  return v11;
}

void __56__CNFuture_futureWithBlock_scheduler_schedulerProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

+ (id)lazyFutureWithBlock:(id)a3
{
  v4 = [_CNBlockFutureImpl lazyImplWithBlock:a3];
  v5 = [[a1 alloc] initWithImpl:v4];

  return v5;
}

+ (id)flatMap:(id)a3 withBlock:(id)a4 schedulerProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[CNPromise alloc] initWithSchedulerProvider:v9];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__CNFuture_flatMap_withBlock_schedulerProvider___block_invoke;
  v22[3] = &unk_1E6ED7A88;
  v24 = v8;
  v25 = a1;
  v12 = v11;
  v23 = v12;
  v13 = v8;
  [v10 addSuccessBlock:v22];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __48__CNFuture_flatMap_withBlock_schedulerProvider___block_invoke_2;
  v20 = &unk_1E6ED5A30;
  v21 = v12;
  v14 = v12;
  [v10 addFailureBlock:&v17];
  v15 = [(CNPromise *)v14 future:v17];
  [v15 addCalculationDependency:v10];

  return v15;
}

void __48__CNFuture_flatMap_withBlock_schedulerProvider___block_invoke(uint64_t a1)
{
  v3 = (*(*(a1 + 40) + 16))();
  [*(a1 + 48) finishPromise:*(a1 + 32) withFuture:v3];
  v2 = [*(a1 + 32) future];
  [v2 addCalculationDependency:v3];
}

+ (id)recover:(id)a3 withBlock:(id)a4 schedulerProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[CNPromise alloc] initWithSchedulerProvider:v9];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __48__CNFuture_recover_withBlock_schedulerProvider___block_invoke;
  v24[3] = &unk_1E6ED6988;
  v12 = v11;
  v25 = v12;
  [v10 addSuccessBlock:v24];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __48__CNFuture_recover_withBlock_schedulerProvider___block_invoke_2;
  v20 = &unk_1E6ED7AB0;
  v22 = v8;
  v23 = a1;
  v21 = v12;
  v13 = v12;
  v14 = v8;
  [v10 addFailureBlock:&v17];
  v15 = [(CNPromise *)v13 future:v17];
  [v15 addCalculationDependency:v10];

  return v15;
}

void __48__CNFuture_recover_withBlock_schedulerProvider___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 48) finishPromise:*(a1 + 32) withFuture:v2];
}

+ (void)finishPromise:(id)a3 withFuture:(id)a4
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__CNFuture_finishPromise_withFuture___block_invoke;
  v11[3] = &unk_1E6ED6988;
  v6 = v5;
  v12 = v6;
  v7 = a4;
  [v7 addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__CNFuture_finishPromise_withFuture___block_invoke_2;
  v9[3] = &unk_1E6ED5A30;
  v10 = v6;
  v8 = v6;
  [v7 addFailureBlock:v9];
}

+ (id)chain:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v4 _cn_tail];

  if (off_1EF43E9E8(&__block_literal_global_5, v6))
  {
    v7 = v5;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __18__CNFuture_chain___block_invoke;
    v15[3] = &unk_1E6ED7AD8;
    v17 = a1;
    v8 = v6;
    v16 = v8;
    v9 = [v5 flatMap:v15];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __18__CNFuture_chain___block_invoke_2;
    v12[3] = &unk_1E6ED7B00;
    v14 = a1;
    v13 = v8;
    v10 = [v9 recover:v12];

    v7 = v10;
  }

  return v7;
}

id __18__CNFuture_chain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = off_1EF440208(&__block_literal_global_9_0, v3);
  v5 = *(a1 + 40);
  if (v4)
  {
    [v5 chain:*(a1 + 32)];
  }

  else
  {
    [v5 futureWithResult:v3];
  }
  v6 = ;

  return v6;
}

+ (id)sequence:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v3))
  {
    v4 = [CNFuture futureWithResult:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [v3 firstObject];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v3;
    v7 = [v3 _cn_tail];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        v12 = v6;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * v11);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __21__CNFuture_sequence___block_invoke;
          v20[3] = &unk_1E6ED7B28;
          v21 = v5;
          v22 = v13;
          v6 = [v12 flatMap:v20];

          ++v11;
          v12 = v6;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __21__CNFuture_sequence___block_invoke_2;
    v18[3] = &unk_1E6ED7B50;
    v19 = v5;
    v14 = v5;
    v4 = [v6 flatMap:v18];

    v3 = v17;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

id __21__CNFuture_sequence___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 40);

  return v3;
}

CNFuture *__21__CNFuture_sequence___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 32);

  return [CNFuture futureWithResult:v3];
}

+ (id)join:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 == 1)
  {
    v5 = [v3 firstObject];
    v6 = [CNFuture _joinOne:v5];
  }

  else
  {
    if (v4)
    {
      [CNFuture _joinMany:v3];
    }

    else
    {
      +[CNFuture _joinZero];
    }
    v6 = ;
  }

  return v6;
}

id __21__CNFuture__joinOne___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v8 count:1];
  v5 = [CNFuture futureWithResult:v4, v8, v9];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_joinMany:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(CNPromise);
  v5 = [CNScheduler synchronousSerialDispatchQueueWithName:@"com.apple.contacts.future.join"];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [v3 mutableCopy];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __22__CNFuture__joinMany___block_invoke;
  v24[3] = &unk_1E6ED7BE8;
  v8 = v6;
  v25 = v8;
  v9 = v7;
  v26 = v9;
  v10 = v4;
  v27 = v10;
  v11 = v5;
  v28 = v11;
  [v3 enumerateObjectsUsingBlock:v24];
  v12 = [(CNPromise *)v10 future];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addCalculationDependency:{*(*(&v20 + 1) + 8 * i), v20}];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

void __22__CNFuture__joinMany___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = [MEMORY[0x1E695DFB0] null];
  [v6 addObject:v7];

  objc_initWeak(&location, v5);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __22__CNFuture__joinMany___block_invoke_2;
  v13[3] = &unk_1E6ED7B98;
  objc_copyWeak(v17, &location);
  v14 = a1[5];
  v15 = a1[4];
  v17[1] = a3;
  v16 = a1[6];
  [v5 addSuccessBlock:v13 scheduler:a1[7]];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __22__CNFuture__joinMany___block_invoke_3;
  v8[3] = &unk_1E6ED7BC0;
  v9 = a1[7];
  objc_copyWeak(&v12, &location);
  v10 = a1[5];
  v11 = a1[6];
  [v5 addFailureBlock:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __22__CNFuture__joinMany___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) indexOfObject:WeakRetained];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [*(a1 + 40) replaceObjectAtIndex:*(a1 + 64) withObject:v6];
    [*(a1 + 32) removeObjectAtIndex:v5];
    if (off_1EF43E9E8(&__block_literal_global_5, *(a1 + 32)))
    {
      [*(a1 + 48) finishWithResult:*(a1 + 40)];
    }
  }
}

void __22__CNFuture__joinMany___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __22__CNFuture__joinMany___block_invoke_4;
  v16[3] = &unk_1E6ED6800;
  objc_copyWeak(&v19, (a1 + 56));
  v17 = *(a1 + 40);
  v6 = v4;
  v18 = v6;
  [v5 performBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  [*(a1 + 48) finishWithError:v3];
  objc_destroyWeak(&v19);

  v11 = *MEMORY[0x1E69E9840];
}

void __22__CNFuture__joinMany___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[4] indexOfObject:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1[4] removeObjectAtIndex:v2];
    [a1[5] setArray:a1[4]];
    [a1[4] removeAllObjects];
  }
}

- (CNFuture)initWithSchedulerProvider:(id)a3
{
  v4 = a3;
  v5 = [[_CNBlockFutureImpl alloc] initWithSchedulerProvider:v4];

  v6 = [(CNFuture *)self initWithImpl:v5];
  return v6;
}

- (CNFuture)initWithImpl:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CNFuture;
  v6 = [(CNFuture *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    calculationDependencies = v7->_calculationDependencies;
    v7->_calculationDependencies = v8;

    v10 = v7;
  }

  return v7;
}

- (id)result:(id *)a3
{
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(CNFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
  v7 = [(CNFuture *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (BOOL)cancel
{
  impl = self->_impl;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = self->_impl;

  return [(CNFutureImpl *)v4 cancel];
}

- (BOOL)finishWithResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNFuture finishWithResult:v5];
    }

    v6 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNFuture finishWithResult:];
    }

    CNFutureThrowProtocolExceptionWithReason(@"result must be non-nil", 0);
  }

  v7 = [(CNFuture *)self finishWithResult:v4 error:0];

  return v7;
}

- (BOOL)finishWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNFuture finishWithError:v5];
    }

    v6 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNFuture finishWithResult:];
    }

    CNFutureThrowProtocolExceptionWithReason(@"error must be non-nil", 0);
  }

  v7 = [(CNFuture *)self finishWithResult:0 error:v4];

  return v7;
}

- (void)addSuccessBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CNFuture_addSuccessBlock_scheduler___block_invoke;
  v10[3] = &unk_1E6ED6A78;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(CNFuture *)self addSuccessBlock:v10];
}

void __38__CNFuture_addSuccessBlock_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CNFuture_addSuccessBlock_scheduler___block_invoke_2;
  v7[3] = &unk_1E6ED52C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)addFailureBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CNFuture_addFailureBlock_scheduler___block_invoke;
  v10[3] = &unk_1E6ED69D8;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(CNFuture *)self addFailureBlock:v10];
}

void __38__CNFuture_addFailureBlock_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CNFuture_addFailureBlock_scheduler___block_invoke_2;
  v7[3] = &unk_1E6ED52C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (id)flatMap:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(CNFuture *)self flatMap:v4 schedulerProvider:v5];

  return v6;
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [(CNFuture *)self recover:v4 schedulerProvider:v5];

  return v6;
}

- (void)_flushCompletionBlocks
{
  impl = self->_impl;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_impl;

    [(CNFutureImpl *)v4 _flushCompletionBlocks];
  }
}

- (void)finishWithResult:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_0(&dword_1859F0000, v1, v2, "Call stack: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

@end