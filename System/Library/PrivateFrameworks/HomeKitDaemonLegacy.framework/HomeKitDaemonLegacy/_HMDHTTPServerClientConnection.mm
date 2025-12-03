@interface _HMDHTTPServerClientConnection
+ (id)shortDescription;
- (BOOL)isConnected;
- (_HMDHTTPServerClientConnection)init;
- (_HMDHTTPServerClientConnection)initWithDevice:(id)device;
- (id)dequeueRequest;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)removeCompletionHandlerForTransactionIdentifier:(id)identifier;
- (id)shortDescription;
- (void)_reallySendMessage:(id)message timeout:(double)timeout completionHandler:(id)handler;
- (void)addCompletionHandler:(id)handler forTransactionIdentifier:(id)identifier;
- (void)invalidate;
- (void)queueRequest:(id)request;
- (void)sendMessage:(id)message timeout:(double)timeout completionHandler:(id)handler;
- (void)setConnection:(id)connection;
@end

@implementation _HMDHTTPServerClientConnection

- (void)_reallySendMessage:(id)message timeout:(double)timeout completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  dequeueRequest = [(_HMDHTTPServerClientConnection *)self dequeueRequest];
  if (dequeueRequest)
  {
    v42 = 0;
    v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:messageCopy format:100 options:0 error:&v42];
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
        shortDescription = [(_HMDHTTPServerClientConnection *)self shortDescription];
        *buf = 138543874;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = shortDescription;
        *&buf[22] = 2112;
        v44 = v11;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to serialize response message with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v12 = 400;
    }

    v22 = [dequeueRequest responseWithStatusCode:v12];
    v23 = [v22 mutableCopy];

    if (v10)
    {
      [v23 setBody:v10];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v23 setHeaderValue:uUIDString forHeaderKey:@"Transaction-Identifier"];

    v26 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:timeout];
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
    v27 = uUID;
    v37 = v27;
    v39 = buf;
    v28 = v23;
    v38 = v28;
    [v26 addExecutionBlock:v36];
    if (handlerCopy)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __79___HMDHTTPServerClientConnection__reallySendMessage_timeout_completionHandler___block_invoke_57;
      v32[3] = &unk_27972AD30;
      objc_copyWeak(&v35, &location);
      v33 = handlerCopy;
      v34 = buf;
      [v26 setCompletionBlock:v32];

      objc_destroyWeak(&v35);
    }

    transactionOperationQueue = [(_HMDHTTPServerClientConnection *)self transactionOperationQueue];
    [transactionOperationQueue addOperation:v26];

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
    shortDescription2 = [(_HMDHTTPServerClientConnection *)self shortDescription];
    device = [(_HMDHTTPServerClientConnection *)self device];
    *buf = 138543874;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = shortDescription2;
    *&buf[22] = 2112;
    v44 = device;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unable to send message to device, %@, there is no queued request", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (handlerCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication Failure." reason:@"There is no queued request to send the message." suggestion:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
LABEL_16:
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message timeout:(double)timeout completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:timeout];
  objc_initWeak(&location, v12);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72___HMDHTTPServerClientConnection_sendMessage_timeout_completionHandler___block_invoke;
  v24[3] = &unk_27972AC90;
  objc_copyWeak(v27, &location);
  v27[1] = v11;
  v27[2] = *&timeout;
  v24[4] = self;
  v13 = messageCopy;
  v25 = v13;
  v14 = handlerCopy;
  v26 = v14;
  [v12 addExecutionBlock:v24];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __72___HMDHTTPServerClientConnection_sendMessage_timeout_completionHandler___block_invoke_2;
  v20 = &unk_279730E50;
  objc_copyWeak(&v23, &location);
  selfCopy = self;
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
  receiveMessageRequests = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
  firstObject = [receiveMessageRequests firstObject];

  receiveMessageRequests2 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
  [receiveMessageRequests2 removeObject:firstObject];

  receiveMessageRequests3 = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
  if ([receiveMessageRequests3 count])
  {
  }

  else
  {
    requestOperationQueue = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    isSuspended = [requestOperationQueue isSuspended];

    if ((isSuspended & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        shortDescription = [(_HMDHTTPServerClientConnection *)self shortDescription];
        v17 = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = shortDescription;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Suspending the request queue as there are no more queued requests", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      requestOperationQueue2 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
      [requestOperationQueue2 setSuspended:1];

      lostConnectionTimer = [(_HMDHTTPServerClientConnection *)self lostConnectionTimer];
      [lostConnectionTimer resume];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)queueRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    receiveMessageRequests = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
    [receiveMessageRequests addObject:requestCopy];

    requestOperationQueue = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    isSuspended = [requestOperationQueue isSuspended];

    if (isSuspended)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        shortDescription = [(_HMDHTTPServerClientConnection *)self shortDescription];
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = shortDescription;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Resuming the request queue as there are queued requests", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      requestOperationQueue2 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
      [requestOperationQueue2 setSuspended:0];
    }

    lostConnectionTimer = [(_HMDHTTPServerClientConnection *)self lostConnectionTimer];
    [lostConnectionTimer suspend];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connection = [(_HMDHTTPServerClientConnection *)self connection];
  v7 = [connectionCopy isEqual:connection];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_connection, connection);
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [(_HMDHTTPServerClientConnection *)self shortDescription];
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = shortDescription;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Received new connection, removing all queued requests and suspending the request queue", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    receiveMessageRequests = [(_HMDHTTPServerClientConnection *)self receiveMessageRequests];
    [receiveMessageRequests removeAllObjects];

    requestOperationQueue = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    [requestOperationQueue setSuspended:1];

    lostConnectionTimer = [(_HMDHTTPServerClientConnection *)self lostConnectionTimer];
    v15 = lostConnectionTimer;
    if (connectionCopy)
    {
      [lostConnectionTimer suspend];
    }

    else
    {
      [lostConnectionTimer resume];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)removeCompletionHandlerForTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers objectForKeyedSubscript:identifierCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers removeObjectForKey:identifierCopy];
  }

  v6 = _Block_copy(v5);

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)addCompletionHandler:(id)handler forTransactionIdentifier:(id)identifier
{
  handlerCopy = handler;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v7 = [handlerCopy copy];
  v8 = _Block_copy(v7);
  [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers setObject:v8 forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isConnected
{
  connection = [(_HMDHTTPServerClientConnection *)self connection];
  v3 = connection != 0;

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  device = [(_HMDHTTPServerClientConnection *)self device];
  connection = [(_HMDHTTPServerClientConnection *)self connection];
  v9 = connection;
  if (pointer)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v11 = [v5 stringWithFormat:@"<%@ %@, Device = %@, Connection = %@>", shortDescription, device, v9, v10];
  }

  else
  {
    v11 = [v5 stringWithFormat:@"<%@ %@, Device = %@, Connection = %@>", shortDescription, device, connection, &stru_286509E58];
  }

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  device = [(_HMDHTTPServerClientConnection *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v8;
}

- (void)invalidate
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Operation cancelled." reason:@"The client connection is no longer valid." suggestion:0];
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers allValues];
  [(NSMutableDictionary *)self->_pendingTransactionCompletionHandlers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    shortDescription = [(_HMDHTTPServerClientConnection *)self shortDescription];
    v7 = [allValues count];
    requestOperationQueue = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
    operationCount = [requestOperationQueue operationCount];
    transactionOperationQueue = [(_HMDHTTPServerClientConnection *)self transactionOperationQueue];
    *buf = 138544386;
    v27 = v20;
    v28 = 2112;
    v29 = shortDescription;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = operationCount;
    v34 = 2048;
    operationCount2 = [transactionOperationQueue operationCount];
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Invalidating: outstanding pendingHandlers=%lu, requests=%lu, transactions=%lu", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = allValues;
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

  requestOperationQueue2 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
  [requestOperationQueue2 cancelAllOperationsWithError:v3];

  requestOperationQueue3 = [(_HMDHTTPServerClientConnection *)self requestOperationQueue];
  [requestOperationQueue3 setSuspended:0];

  transactionOperationQueue2 = [(_HMDHTTPServerClientConnection *)self transactionOperationQueue];
  [transactionOperationQueue2 cancelAllOperationsWithError:v3];

  v18 = *MEMORY[0x277D85DE8];
}

- (_HMDHTTPServerClientConnection)initWithDevice:(id)device
{
  deviceCopy = device;
  v26.receiver = self;
  v26.super_class = _HMDHTTPServerClientConnection;
  v6 = [(_HMDHTTPServerClientConnection *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    receiveMessageRequests = v7->_receiveMessageRequests;
    v7->_receiveMessageRequests = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingTransactionCompletionHandlers = v7->_pendingTransactionCompletionHandlers;
    v7->_pendingTransactionCompletionHandlers = dictionary;

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