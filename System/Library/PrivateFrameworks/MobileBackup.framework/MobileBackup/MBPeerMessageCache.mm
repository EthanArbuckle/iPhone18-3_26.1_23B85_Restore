@interface MBPeerMessageCache
- (BOOL)shouldHandleNewRequestForTask:(id)a3 transactionID:(id)a4 responseHandler:(id)a5;
- (MBPeerMessageCache)init;
- (void)finishedHandlingTask:(id)a3 response:(id)a4 responseError:(id)a5;
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

- (BOOL)shouldHandleNewRequestForTask:(id)a3 transactionID:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_cacheLock);
  v11 = [(MBPeerMessageCache *)self currentTransactionsByTask];
  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = [v12 isEqualToString:v9];

  v14 = [(MBPeerMessageCache *)self successResponses];
  v15 = v14;
  if (v13)
  {
    v16 = [v14 objectForKeyedSubscript:v8];

    v17 = [(MBPeerMessageCache *)self failureResponses];
    v18 = [v17 objectForKeyedSubscript:v8];

    if (v16 | v18)
    {
      v10[2](v10, v16, v18);
      os_unfair_lock_unlock(&self->_cacheLock);
    }

    else
    {
      v23 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
      v24 = [v23 objectForKeyedSubscript:v8];

      if (!v24)
      {
        __assert_rtn("[MBPeerMessageCache shouldHandleNewRequestForTask:transactionID:responseHandler:]", "MBPeerMessageCache.m", 62, "cachedResponseHandler != nil");
      }

      v25 = [MBError errorWithCode:1 description:@"Burned response handler. Request was resent."];
      (v24)[2](v24, 0, v25);

      v26 = objc_retainBlock(v10);
      v27 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
      [v27 setObject:v26 forKeyedSubscript:v8];

      os_unfair_lock_unlock(&self->_cacheLock);
    }
  }

  else
  {
    [v14 setObject:0 forKeyedSubscript:v8];

    v19 = [(MBPeerMessageCache *)self failureResponses];
    [v19 setObject:0 forKeyedSubscript:v8];

    v20 = objc_retainBlock(v10);
    v21 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
    [v21 setObject:v20 forKeyedSubscript:v8];

    v22 = [(MBPeerMessageCache *)self currentTransactionsByTask];
    [v22 setObject:v9 forKeyedSubscript:v8];

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v13 ^ 1;
}

- (void)finishedHandlingTask:(id)a3 response:(id)a4 responseError:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_cacheLock);
  v10 = [(MBPeerMessageCache *)self successResponses];
  [v10 setObject:v8 forKeyedSubscript:v14];

  v11 = [(MBPeerMessageCache *)self failureResponses];
  [v11 setObject:v9 forKeyedSubscript:v14];

  v12 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
  v13 = [v12 objectForKeyedSubscript:v14];

  if (!v13)
  {
    __assert_rtn("[MBPeerMessageCache finishedHandlingTask:response:responseError:]", "MBPeerMessageCache.m", 86, "cachedResponseHandler != nil");
  }

  (v13)[2](v13, v8, v9);
  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)reset
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(MBPeerMessageCache *)self successResponses];
  [v3 removeAllObjects];

  v4 = [(MBPeerMessageCache *)self failureResponses];
  [v4 removeAllObjects];

  v5 = [(MBPeerMessageCache *)self mostRecentResponseHandlers];
  [v5 removeAllObjects];

  v6 = [(MBPeerMessageCache *)self currentTransactionsByTask];
  [v6 removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

@end