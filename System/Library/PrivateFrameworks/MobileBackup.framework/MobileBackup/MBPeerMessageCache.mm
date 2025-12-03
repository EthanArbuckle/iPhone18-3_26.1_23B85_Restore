@interface MBPeerMessageCache
- (BOOL)shouldHandleNewRequestForTask:(id)task transactionID:(id)d responseHandler:(id)handler;
- (MBPeerMessageCache)init;
- (void)finishedHandlingTask:(id)task response:(id)response responseError:(id)error;
- (void)reset;
@end

@implementation MBPeerMessageCache

- (MBPeerMessageCache)init
{
  v13.receiver = self;
  v13.super_class = MBPeerMessageCache;
  v2 = [(MBPeerMessageCache *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    successResponses = v3->_successResponses;
    v3->_successResponses = v4;

    v6 = objc_opt_new();
    failureResponses = v3->_failureResponses;
    v3->_failureResponses = v6;

    v8 = objc_opt_new();
    mostRecentResponseHandlers = v3->_mostRecentResponseHandlers;
    v3->_mostRecentResponseHandlers = v8;

    v10 = objc_opt_new();
    currentTransactionsByTask = v3->_currentTransactionsByTask;
    v3->_currentTransactionsByTask = v10;
  }

  return v3;
}

- (BOOL)shouldHandleNewRequestForTask:(id)task transactionID:(id)d responseHandler:(id)handler
{
  taskCopy = task;
  dCopy = d;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_cacheLock);
  currentTransactionsByTask = [(MBPeerMessageCache *)self currentTransactionsByTask];
  v12 = [currentTransactionsByTask objectForKeyedSubscript:taskCopy];
  v13 = [v12 isEqualToString:dCopy];

  successResponses = [(MBPeerMessageCache *)self successResponses];
  v15 = successResponses;
  if (v13)
  {
    v16 = [successResponses objectForKeyedSubscript:taskCopy];

    failureResponses = [(MBPeerMessageCache *)self failureResponses];
    v18 = [failureResponses objectForKeyedSubscript:taskCopy];

    if (v16 | v18)
    {
      handlerCopy[2](handlerCopy, v16, v18);
      os_unfair_lock_unlock(&self->_cacheLock);
    }

    else
    {
      mostRecentResponseHandlers = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
      v24 = [mostRecentResponseHandlers objectForKeyedSubscript:taskCopy];

      if (!v24)
      {
        __assert_rtn("[MBPeerMessageCache shouldHandleNewRequestForTask:transactionID:responseHandler:]", "MBPeerMessageCache.m", 62, "cachedResponseHandler != nil");
      }

      v25 = [MBError errorWithCode:1 description:@"Burned response handler. Request was resent."];
      (v24)[2](v24, 0, v25);

      v26 = objc_retainBlock(handlerCopy);
      mostRecentResponseHandlers2 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
      [mostRecentResponseHandlers2 setObject:v26 forKeyedSubscript:taskCopy];

      os_unfair_lock_unlock(&self->_cacheLock);
    }
  }

  else
  {
    [successResponses setObject:0 forKeyedSubscript:taskCopy];

    failureResponses2 = [(MBPeerMessageCache *)self failureResponses];
    [failureResponses2 setObject:0 forKeyedSubscript:taskCopy];

    v20 = objc_retainBlock(handlerCopy);
    mostRecentResponseHandlers3 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
    [mostRecentResponseHandlers3 setObject:v20 forKeyedSubscript:taskCopy];

    currentTransactionsByTask2 = [(MBPeerMessageCache *)self currentTransactionsByTask];
    [currentTransactionsByTask2 setObject:dCopy forKeyedSubscript:taskCopy];

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v13 ^ 1;
}

- (void)finishedHandlingTask:(id)task response:(id)response responseError:(id)error
{
  taskCopy = task;
  responseCopy = response;
  errorCopy = error;
  os_unfair_lock_lock(&self->_cacheLock);
  successResponses = [(MBPeerMessageCache *)self successResponses];
  [successResponses setObject:responseCopy forKeyedSubscript:taskCopy];

  failureResponses = [(MBPeerMessageCache *)self failureResponses];
  [failureResponses setObject:errorCopy forKeyedSubscript:taskCopy];

  mostRecentResponseHandlers = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
  v13 = [mostRecentResponseHandlers objectForKeyedSubscript:taskCopy];

  if (!v13)
  {
    __assert_rtn("[MBPeerMessageCache finishedHandlingTask:response:responseError:]", "MBPeerMessageCache.m", 86, "cachedResponseHandler != nil");
  }

  (v13)[2](v13, responseCopy, errorCopy);
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)reset
{
  os_unfair_lock_lock(&self->_cacheLock);
  successResponses = [(MBPeerMessageCache *)self successResponses];
  [successResponses removeAllObjects];

  failureResponses = [(MBPeerMessageCache *)self failureResponses];
  [failureResponses removeAllObjects];

  mostRecentResponseHandlers = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
  [mostRecentResponseHandlers removeAllObjects];

  currentTransactionsByTask = [(MBPeerMessageCache *)self currentTransactionsByTask];
  [currentTransactionsByTask removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

@end