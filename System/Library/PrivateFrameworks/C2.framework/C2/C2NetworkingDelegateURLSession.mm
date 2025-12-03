@interface C2NetworkingDelegateURLSession
+ (id)sessionWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
- (C2NetworkingDelegate)networkingDelegate;
- (NSURLSessionDelegate)sessionDelegate;
- (id)dataTaskWithRequest:(id)request;
- (void)invalidateAndCancel;
@end

@implementation C2NetworkingDelegateURLSession

+ (id)sessionWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  configurationCopy = configuration;
  v10 = objc_alloc_init(C2NetworkingDelegateURLSession);
  [(C2NetworkingDelegateURLSession *)v10 setSessionDelegate:delegateCopy];

  [(C2NetworkingDelegateURLSession *)v10 setConfiguration:configurationCopy];
  [(C2NetworkingDelegateURLSession *)v10 setDelegateQueue:queueCopy];

  return v10;
}

- (id)dataTaskWithRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(C2NetworkingDelegateURLSessionDataTask);
  [(C2NetworkingDelegateURLSessionDataTask *)v5 setSession:self];
  [(C2NetworkingDelegateURLSessionDataTask *)v5 setCurrentRequest:requestCopy];
  [(C2NetworkingDelegateURLSessionDataTask *)v5 setOriginalRequest:requestCopy];

  return v5;
}

- (void)invalidateAndCancel
{
  delegateQueue = [(C2NetworkingDelegateURLSession *)self delegateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__C2NetworkingDelegateURLSession_invalidateAndCancel__block_invoke;
  v5[3] = &unk_278D400A0;
  v5[4] = self;
  [delegateQueue addOperationWithBlock:v5];

  delegateQueue2 = [(C2NetworkingDelegateURLSession *)self delegateQueue];
  [delegateQueue2 waitUntilAllOperationsAreFinished];
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