@interface EFObserver
+ (EFObserver)observerWithCompletionHandler:(id)a3;
+ (EFObserver)observerWithResultBlock:(id)a3;
+ (EFObserver)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
@end

@implementation EFObserver

+ (EFObserver)observerWithResultBlock:(id)a3
{
  v3 = a3;
  v4 = [[_EFBlockObserver alloc] initWithResultBlock:v3 completionBlock:0 failureBlock:0];

  return v4;
}

+ (EFObserver)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[_EFBlockObserver alloc] initWithResultBlock:v7 completionBlock:v8 failureBlock:v9];

  return v10;
}

+ (EFObserver)observerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[EFPromise promise];
  v5 = [v4 future];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__EFObserver_observerWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E8248620;
  v6 = v3;
  v17 = v6;
  [v5 addSuccessBlock:v16];

  v7 = [v4 future];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__EFObserver_observerWithCompletionHandler___block_invoke_2;
  v14 = &unk_1E8248988;
  v8 = v6;
  v15 = v8;
  [v7 addFailureBlock:&v11];

  v9 = [v4 resultsObserverAdapter];

  return v9;
}

@end