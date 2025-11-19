@interface C2NetworkingDelegateURLSession
+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (C2NetworkingDelegate)networkingDelegate;
- (NSURLSessionDelegate)sessionDelegate;
- (id)dataTaskWithRequest:(id)a3;
- (void)invalidateAndCancel;
@end

@implementation C2NetworkingDelegateURLSession

+ (id)sessionWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(C2NetworkingDelegateURLSession);
  [(C2NetworkingDelegateURLSession *)v10 setSessionDelegate:v8];

  [(C2NetworkingDelegateURLSession *)v10 setConfiguration:v9];
  [(C2NetworkingDelegateURLSession *)v10 setDelegateQueue:v7];

  return v10;
}

- (id)dataTaskWithRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(C2NetworkingDelegateURLSessionDataTask);
  [(C2NetworkingDelegateURLSessionDataTask *)v5 setSession:self];
  [(C2NetworkingDelegateURLSessionDataTask *)v5 setCurrentRequest:v4];
  [(C2NetworkingDelegateURLSessionDataTask *)v5 setOriginalRequest:v4];

  return v5;
}

- (void)invalidateAndCancel
{
  v3 = [(C2NetworkingDelegateURLSession *)self delegateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__C2NetworkingDelegateURLSession_invalidateAndCancel__block_invoke;
  v5[3] = &unk_278D400A0;
  v5[4] = self;
  [v3 addOperationWithBlock:v5];

  v4 = [(C2NetworkingDelegateURLSession *)self delegateQueue];
  [v4 waitUntilAllOperationsAreFinished];
}

void __53__C2NetworkingDelegateURLSession_invalidateAndCancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionDelegate];
  [v2 URLSession:*(a1 + 32) didBecomeInvalidWithError:0];
}

- (C2NetworkingDelegate)networkingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkingDelegate);

  return WeakRetained;
}

- (NSURLSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

@end