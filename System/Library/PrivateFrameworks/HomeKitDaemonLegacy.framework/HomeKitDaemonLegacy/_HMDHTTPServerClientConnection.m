@interface _HMDHTTPServerClientConnection
+ (id)shortDescription;
- (BOOL)isConnected;
- (_HMDHTTPServerClientConnection)init;
- (_HMDHTTPServerClientConnection)initWithDevice:(id)a3;
- (id)dequeueRequest;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)removeCompletionHandlerForTransactionIdentifier:(id)a3;
- (id)shortDescription;
- (void)_reallySendMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)addCompletionHandler:(id)a3 forTransactionIdentifier:(id)a4;
- (void)invalidate;
- (void)queueRequest:(id)a3;
- (void)sendMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)setConnection:(id)a3;
@end

@implementation _HMDHTTPServerClientConnection

- (void)_reallySendMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v8 = a5;
  v9 = [(_HMDHTTPServerClientConnection *)self dequeueRequest];
  if (v9)
  {
    v42 = 0;
    v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v31 format:100 options:0 error:&v42];
    v11 = v42;
    if (v10)
    {
      v12 = 200;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [(_HMDHTTPServerClientConnection *)self shortDescription];
        *buf = 138543874;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        *&buf[22] = 2112;
        v44 = v11;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to serialize response message with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v12 = 400;
    }

    v22 = [v9 responseWithStatusCode:v12];
    v23 = [v22 mutableCopy];

    if (v10)
    {
      [v23 setBody:v10];
    }

    v24 = [MEMORY[0x277CCAD78] UUID];
    v25 = [v24 UUIDString];
    [v23 setHeaderValue:v25 forHeaderKey:@"Transaction-Identifier"];

    v26 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:a4];
    objc_initWeak(&location, v26);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__103983;
    v45 = __Block_byref_object_dispose__103984;
    v46 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke;
    v36[3] = &unk_27972AD08;
    objc_copyWeak(&v40, &location);
    v36[4] = self;
    v27 = v24;
    v37 = v27;
    v39 = buf;
    v28 = v23;
    v38 = v28;
    [v26 addExecutionBlock:v36];
    if (v8)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_57;
      v32[3] = &unk_27972AD30;
      objc_copyWeak(&v35, &location);
      v33 = v8;
      v34 = buf;
      [v26 setCompletionBlock:v32];

      objc_destroyWeak(&v35);
    }

    v29 = [(_HMDHTTPServerClientConnection *)self transactionOperationQueue];
    [v29 addOperation:v26];

    objc_destroyWeak(&v40);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [(_HMDHTTPServerClientConnection *)self shortDescription];
    v17 = [(_HMDHTTPServerClientConnection *)self device];
    *buf = 138543874;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v44 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unable to send message to device, %@, there is no queued request", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (v8)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication Failure." reason:@"There is no queued request to send the message." suggestion:0];
    (*(v8 + 2))(v8, 0, v11);
LABEL_16:
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:a4];
  objc_initWeak(&location, v12);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72___HMDHTTPServerClientConnection_sendMessage_timeout_completionHandler___block_invoke;
  v24[3] = &unk_27972AC90;
  objc_copyWeak(v27, &location);
  v27[1] = v11;
  v27[2] = *&a4;
  v24[4] = self;
  v13 = v8;
  v25 = v13;
  v14 = v9;
  v26 = v14;
  [v12 addExecutionBlock:v24];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __72___HMDHTTPServerClientConnection_sendMessage_timeout_completionHandler___block_invoke_2;
  v20 = &unk_279730E50;
  objc_copyWeak(&v23, &location);
  v21 = self;
  v15 = v14;
  v22 = v15;
  [v12 setCompletionBlock:&v17];
  v16 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue:v17];
  [v16 addOperation:v12];

  objc_destroyWeak(&v23);
  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

- (id)dequeueRequest
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
  v4 = [v3 firstObject];

  v5 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
  [v5 removeObject:v4];

  v6 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    v8 = [v7 isSuspended];

    if ((v8 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(_HMDHTTPServerClientConnection *)self shortDescription];
        v17 = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Suspending the request queue as there are no more queued requests", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
      [v13 setSuspended:1];

      v14 = [(_HMDHTTPServerClientConnection *)self lostConnectionTimer];
      [v14 resume];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)queueRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
    [v5 addObject:v4];

    v6 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    v7 = [v6 isSuspended];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [(_HMDHTTPServerClientConnection *)self shortDescription];
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Resuming the request queue as there are queued requests", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
      [v12 setSuspended:0];
    }

    v13 = [(_HMDHTTPServerClientConnection *)self lostConnectionTimer];
    [v13 suspend];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setConnection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(_HMDHTTPServerClientConnection *)self connection];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_connection, a3);
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(_HMDHTTPServerClientConnection *)self shortDescription];
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received new connection, removing all queued requests and suspending the request queue", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
    [v12 removeAllObjects];

    v13 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    [v13 setSuspended:1];

    v14 = [(_HMDHTTPServerClientConnection *)self lostConnectionTimer];
    v15 = v14;
    if (v5)
    {
      [v14 suspend];
    }

    else
    {
      [v14 resume];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)removeCompletionHandlerForTransactionIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers objectForKeyedSubscript:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers removeObjectForKey:v4];
  }

  v6 = _Block_copy(v5);

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)addCompletionHandler:(id)a3 forTransactionIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [v9 copy];
  v8 = _Block_copy(v7);
  [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers setObject:v8 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isConnected
{
  v2 = [(_HMDHTTPServerClientConnection *)self connection];
  v3 = v2 != 0;

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  v7 = [(_HMDHTTPServerClientConnection *)self device];
  v8 = [(_HMDHTTPServerClientConnection *)self connection];
  v9 = v8;
  if (a3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v11 = [v5 stringWithFormat:@"<%@ %@, Device = %@, Connection = %@>", v6, v7, v9, v10];
  }

  else
  {
    v11 = [v5 stringWithFormat:@"<%@ %@, Device = %@, Connection = %@>", v6, v7, v8, &stru_286509E58];
  }

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(_HMDHTTPServerClientConnection *)self device];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@", v4, v7];

  return v8;
}

- (void)invalidate
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Operation cancelled." reason:@"The client connection is no longer valid." suggestion:0];
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers allValues];
  [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v19 = [(_HMDHTTPServerClientConnection *)self shortDescription];
    v7 = [v4 count];
    v8 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    v9 = [v8 operationCount];
    v10 = [(_HMDHTTPServerClientConnection *)self transactionOperationQueue];
    *buf = 138544386;
    v27 = v20;
    v28 = 2112;
    v29 = v19;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = [v10 operationCount];
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Invalidating: outstanding pendingHandlers=%lu, requests=%lu, transactions=%lu", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v21 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
  [v15 cancelAllOperationsWithError:v3];

  v16 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
  [v16 setSuspended:0];

  v17 = [(_HMDHTTPServerClientConnection *)self transactionOperationQueue];
  [v17 cancelAllOperationsWithError:v3];

  v18 = *MEMORY[0x277D85DE8];
}

- (_HMDHTTPServerClientConnection)initWithDevice:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = _HMDHTTPServerClientConnection;
  v6 = [(_HMDHTTPServerClientConnection *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    receiveMessageRequests = v7->_receiveMessageRequests;
    v7->_receiveMessageRequests = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    pendingTransactionCompletionHandlers = v7->_pendingTransactionCompletionHandlers;
    v7->_pendingTransactionCompletionHandlers = v10;

    v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:10.0];
    lostConnectionTimer = v7->_lostConnectionTimer;
    v7->_lostConnectionTimer = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v15 = MEMORY[0x277CCACA8];
    v16 = HMDispatchQueueNameString();
    v17 = [v15 stringWithFormat:@"%s", objc_msgSend(v16, "UTF8String")];
    [(NSOperationQueue *)v14 setName:v17];

    [(NSOperationQueue *)v14 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v14 setQualityOfService:25];
    [(NSOperationQueue *)v14 setSuspended:1];
    requestOperationQueue = v7->_requestOperationQueue;
    v7->_requestOperationQueue = v14;
    v19 = v14;

    v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v21 = MEMORY[0x277CCACA8];
    v22 = HMDispatchQueueNameString();
    v23 = [v21 stringWithFormat:@"%s", objc_msgSend(v22, "UTF8String")];
    [(NSOperationQueue *)v20 setName:v23];

    [(NSOperationQueue *)v20 setQualityOfService:25];
    transactionOperationQueue = v7->_transactionOperationQueue;
    v7->_transactionOperationQueue = v20;
  }

  return v7;
}

- (_HMDHTTPServerClientConnection)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end