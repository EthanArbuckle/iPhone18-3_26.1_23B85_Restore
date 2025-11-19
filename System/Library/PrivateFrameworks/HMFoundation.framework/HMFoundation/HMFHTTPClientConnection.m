@interface HMFHTTPClientConnection
+ (id)logCategory;
- (HMFHTTPClientConnection)initWithConnection:(id)a3;
- (HMFHTTPClientConnectionDelegate)delegate;
- (HMFNetAddress)peerAddress;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)shortDescription;
- (void)close;
- (void)connection:(id)a3 didReceiveRequest:(id)a4;
- (void)dealloc;
- (void)openWithCompletionHandler:(id)a3;
- (void)sendResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation HMFHTTPClientConnection

- (HMFHTTPClientConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HMFHTTPClientConnection;
  v6 = [(HMFHTTPClientConnection *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = HMFDispatchQueueName(v6, 0);
    v9 = dispatch_queue_create(v8, 0);
    clientQueue = v7->_clientQueue;
    v7->_clientQueue = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    pendingRespones = v7->_pendingRespones;
    v7->_pendingRespones = v11;

    objc_storeStrong(&v7->_internal, a3);
    v13 = [(HMFHTTPClientConnection *)v7 internal];
    [v13 setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(HMFHTTPClientConnection *)self internal];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HMFHTTPClientConnection;
  [(HMFHTTPClientConnection *)&v4 dealloc];
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFHTTPClientConnection *)self peerAddress];
  v6 = [v5 addressString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFHTTPClientConnection *)self peerAddress];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Address" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMFNetAddress)peerAddress
{
  v2 = [(HMFHTTPClientConnection *)self internal];
  v3 = [v2 address];

  return v3;
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMFHTTPClientConnection *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMFHTTPClientConnection_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786E6D68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__HMFHTTPClientConnection_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Opening", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) internal];
  v7 = [v6 open];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier(v10);
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to open connection", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to open connection."];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v3 = [(HMFHTTPClientConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMFHTTPClientConnection_close__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v3, block);
}

void __32__HMFHTTPClientConnection_close__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) internal];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v5);
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Closing", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 32) internal];
    [v8 close];

    v9 = [*(a1 + 32) delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) delegate];
      v12 = v11;
      if (v11)
      {
        [v11 connection:*(a1 + 32) didCloseWithError:0];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMFHTTPClientConnection *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMFHTTPClientConnection_sendResponse_completionHandler___block_invoke;
    block[3] = &unk_2786E79B0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, block);
  }
}

void __58__HMFHTTPClientConnection_sendResponse_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v6 = *(a1 + 40);
    v17 = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending response: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) internal];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    [v9 setCompletionHandler:*(a1 + 48)];
    v10 = [*(a1 + 32) internal];
    [v10 sendResponse:v9];
LABEL_12:

    goto LABEL_13;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier(v12);
    v15 = *(a1 + 40);
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_ERROR, "%{public}@The response is invalid: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (*(a1 + 48))
  {
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMFHTTPClientConnection *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMFHTTPClientConnection_connection_didReceiveRequest___block_invoke;
  block[3] = &unk_2786E73A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __56__HMFHTTPClientConnection_connection_didReceiveRequest___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier(v3);
    v6 = *(a1 + 40);
    v19 = 138543618;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received request: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [[HMFHTTPRequest alloc] initWithInternalRequest:*(a1 + 40)];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(v10);
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [v7 connection:*(a1 + 32) didReceiveRequest:v8];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier(v14);
      v17 = *(a1 + 40);
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Received unhandled request: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v8 = [[_HMFCFHTTPServerResponse alloc] initWithRequest:*(a1 + 40) statusCode:501];
    [*(a1 + 48) sendResponse:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_13 != -1)
  {
    dispatch_once(&_MergedGlobals_3_13, &__block_literal_global_36);
  }

  v3 = qword_280AFC420;

  return v3;
}

uint64_t __38__HMFHTTPClientConnection_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.HTTP.Server.Connection", @"com.apple.HMFoundation");
  v1 = qword_280AFC420;
  qword_280AFC420 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  v2 = [(HMFHTTPClientConnection *)self peerAddress];
  v3 = [v2 addressString];

  return v3;
}

- (HMFHTTPClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end