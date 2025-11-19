@interface CNObserver
+ (CNObserver)observerWithCompletionHandler:(id)a3;
+ (CNObserver)observerWithResultBlock:(id)a3;
+ (CNObserver)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
+ (CNObserver)observerWithWeakTarget:(id)a3 resultSelector:(SEL)a4;
+ (id)blockObserverOfClass:(Class)a3 withResultBlock:(id)a4 completionBlock:(id)a5 failureBlock:(id)a6;
+ (void)sendArray:(id)a3 error:(id)a4 toObserver:(id)a5;
+ (void)sendArray:(id)a3 error:(id)a4 toObserver:(id)a5 untilCanceled:(id)a6;
+ (void)sendObserver:(id)a3 resultsOfBlock:(id)a4;
+ (void)sendResult:(id)a3 error:(id)a4 toObserver:(id)a5;
@end

@implementation CNObserver

+ (CNObserver)observerWithWeakTarget:(id)a3 resultSelector:(SEL)a4
{
  v6 = a3;
  objc_initWeak(&location, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__CNObserver_observerWithWeakTarget_resultSelector___block_invoke;
  v9[3] = &unk_1E6ED8550;
  objc_copyWeak(v10, &location);
  v10[1] = a4;
  v7 = [a1 observerWithResultBlock:v9];
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

+ (CNObserver)observerWithResultBlock:(id)a3
{
  v3 = a3;
  v4 = [[_CNBlockObserver alloc] initWithResultBlock:v3 completionBlock:0 failureBlock:0];

  return v4;
}

+ (CNObserver)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 blockObserverOfClass:objc_opt_class() withResultBlock:v10 completionBlock:v9 failureBlock:v8];

  return v11;
}

+ (id)blockObserverOfClass:(Class)a3 withResultBlock:(id)a4 completionBlock:(id)a5 failureBlock:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[a3 alloc] initWithResultBlock:v11 completionBlock:v10 failureBlock:v9];

  return v12;
}

+ (CNObserver)observerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CNObserver_observerWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E6ED6988;
  v16 = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__CNObserver_observerWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E6ED52C0;
  v13 = v16;
  v14 = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__CNObserver_observerWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E6ED6510;
  v11 = v14;
  v6 = v14;
  v7 = v16;
  v8 = [a1 observerWithResultBlock:v15 completionBlock:v12 failureBlock:v10];

  return v8;
}

+ (void)sendArray:(id)a3 error:(id)a4 toObserver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CNCancelationToken);
  [a1 sendArray:v10 error:v9 toObserver:v8 untilCanceled:v11];
}

+ (void)sendArray:(id)a3 error:(id)a4 toObserver:(id)a5 untilCanceled:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a4)
  {
    [v9 observerDidFailWithError:a4];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CNObserver_sendArray_error_toObserver_untilCanceled___block_invoke;
    v12[3] = &unk_1E6ED6988;
    v11 = v9;
    v13 = v11;
    [a3 _cn_each:v12 untilCancelled:v10];
    if (([v10 isCanceled] & 1) == 0)
    {
      [v11 observerDidComplete];
    }
  }
}

+ (void)sendResult:(id)a3 error:(id)a4 toObserver:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    [v8 observerDidFailWithError:v7];
  }

  else
  {
    if (v10)
    {
      [v8 observerDidReceiveResult:v10];
    }

    [v9 observerDidComplete];
  }
}

+ (void)sendObserver:(id)a3 resultsOfBlock:(id)a4
{
  v10 = 0;
  v6 = *(a4 + 2);
  v7 = a3;
  v8 = v6(a4, &v10);
  v9 = v10;
  [a1 sendArray:v8 error:v9 toObserver:v7];
}

@end