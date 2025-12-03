@interface EFObserver
+ (EFObserver)observerWithCompletionHandler:(id)handler;
+ (EFObserver)observerWithResultBlock:(id)block;
+ (EFObserver)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
@end

@implementation EFObserver

+ (EFObserver)observerWithResultBlock:(id)block
{
  blockCopy = block;
  v4 = [[_EFBlockObserver alloc] initWithResultBlock:blockCopy completionBlock:0 failureBlock:0];

  return v4;
}

+ (EFObserver)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  failureBlockCopy = failureBlock;
  v10 = [[_EFBlockObserver alloc] initWithResultBlock:blockCopy completionBlock:completionBlockCopy failureBlock:failureBlockCopy];

  return v10;
}

+ (EFObserver)observerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[EFPromise promise];
  future = [v4 future];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__EFObserver_observerWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E8248620;
  v6 = handlerCopy;
  v17 = v6;
  [future addSuccessBlock:v16];

  future2 = [v4 future];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__EFObserver_observerWithCompletionHandler___block_invoke_2;
  v14 = &unk_1E8248988;
  v8 = v6;
  v15 = v8;
  [future2 addFailureBlock:&v11];

  resultsObserverAdapter = [v4 resultsObserverAdapter];

  return resultsObserverAdapter;
}

@end