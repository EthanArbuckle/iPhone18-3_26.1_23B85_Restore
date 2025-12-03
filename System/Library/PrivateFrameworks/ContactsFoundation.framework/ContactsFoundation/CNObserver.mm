@interface CNObserver
+ (CNObserver)observerWithCompletionHandler:(id)handler;
+ (CNObserver)observerWithResultBlock:(id)block;
+ (CNObserver)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
+ (CNObserver)observerWithWeakTarget:(id)target resultSelector:(SEL)selector;
+ (id)blockObserverOfClass:(Class)class withResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
+ (void)sendArray:(id)array error:(id)error toObserver:(id)observer;
+ (void)sendArray:(id)array error:(id)error toObserver:(id)observer untilCanceled:(id)canceled;
+ (void)sendObserver:(id)observer resultsOfBlock:(id)block;
+ (void)sendResult:(id)result error:(id)error toObserver:(id)observer;
@end

@implementation CNObserver

+ (CNObserver)observerWithWeakTarget:(id)target resultSelector:(SEL)selector
{
  targetCopy = target;
  objc_initWeak(&location, targetCopy);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__CNObserver_observerWithWeakTarget_resultSelector___block_invoke;
  v9[3] = &unk_1E6ED8550;
  objc_copyWeak(v10, &location);
  v10[1] = selector;
  v7 = [self observerWithResultBlock:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

void __52__CNObserver_observerWithWeakTarget_resultSelector___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained methodForSelector:*(a1 + 40)];
  if (v4)
  {
    v4(WeakRetained, *(a1 + 40), v5);
  }
}

+ (CNObserver)observerWithResultBlock:(id)block
{
  blockCopy = block;
  v4 = [[_CNBlockObserver alloc] initWithResultBlock:blockCopy completionBlock:0 failureBlock:0];

  return v4;
}

+ (CNObserver)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  failureBlockCopy = failureBlock;
  completionBlockCopy = completionBlock;
  blockCopy = block;
  v11 = [self blockObserverOfClass:objc_opt_class() withResultBlock:blockCopy completionBlock:completionBlockCopy failureBlock:failureBlockCopy];

  return v11;
}

+ (id)blockObserverOfClass:(Class)class withResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  failureBlockCopy = failureBlock;
  completionBlockCopy = completionBlock;
  blockCopy = block;
  v12 = [[class alloc] initWithResultBlock:blockCopy completionBlock:completionBlockCopy failureBlock:failureBlockCopy];

  return v12;
}

+ (CNObserver)observerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CNObserver_observerWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E6ED6988;
  v16 = array;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__CNObserver_observerWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E6ED52C0;
  v13 = v16;
  v14 = handlerCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__CNObserver_observerWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E6ED6510;
  v11 = v14;
  v6 = v14;
  v7 = v16;
  v8 = [self observerWithResultBlock:v15 completionBlock:v12 failureBlock:v10];

  return v8;
}

+ (void)sendArray:(id)array error:(id)error toObserver:(id)observer
{
  observerCopy = observer;
  errorCopy = error;
  arrayCopy = array;
  v11 = objc_alloc_init(CNCancelationToken);
  [self sendArray:arrayCopy error:errorCopy toObserver:observerCopy untilCanceled:v11];
}

+ (void)sendArray:(id)array error:(id)error toObserver:(id)observer untilCanceled:(id)canceled
{
  observerCopy = observer;
  canceledCopy = canceled;
  if (error)
  {
    [observerCopy observerDidFailWithError:error];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CNObserver_sendArray_error_toObserver_untilCanceled___block_invoke;
    v12[3] = &unk_1E6ED6988;
    v11 = observerCopy;
    v13 = v11;
    [array _cn_each:v12 untilCancelled:canceledCopy];
    if (([canceledCopy isCanceled] & 1) == 0)
    {
      [v11 observerDidComplete];
    }
  }
}

+ (void)sendResult:(id)result error:(id)error toObserver:(id)observer
{
  resultCopy = result;
  errorCopy = error;
  observerCopy = observer;
  v9 = observerCopy;
  if (errorCopy)
  {
    [observerCopy observerDidFailWithError:errorCopy];
  }

  else
  {
    if (resultCopy)
    {
      [observerCopy observerDidReceiveResult:resultCopy];
    }

    [v9 observerDidComplete];
  }
}

+ (void)sendObserver:(id)observer resultsOfBlock:(id)block
{
  v10 = 0;
  v6 = *(block + 2);
  observerCopy = observer;
  v8 = v6(block, &v10);
  v9 = v10;
  [self sendArray:v8 error:v9 toObserver:observerCopy];
}

@end