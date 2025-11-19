@interface HMFHTTPServer
+ (id)logCategory;
- (HMFHTTPServer)init;
- (HMFHTTPServer)initWithServiceType:(id)a3 name:(id)a4 port:(unint64_t)a5 options:(unint64_t)a6;
- (HMFHTTPServer)initWithServiceType:(id)a3 name:(id)a4 port:(unint64_t)a5 options:(unint64_t)a6 netManager:(id)a7;
- (HMFHTTPServerDelegate)delegate;
- (NSArray)connections;
- (NSArray)requestHandlers;
- (_HMFCFHTTPServer)internal;
- (double)connectionIdleTimeout;
- (id)attributeDescriptions;
- (id)dumpState;
- (id)shortDescription;
- (unint64_t)port;
- (void)_handleClosedConnection:(id)a3;
- (void)_handleOpenedConnection:(id)a3;
- (void)_handleReceivedRequest:(id)a3 connection:(id)a4;
- (void)_stopWithError:(id)a3;
- (void)addConnection:(id)a3;
- (void)connection:(id)a3 didReceiveRequest:(id)a4;
- (void)dealloc;
- (void)registerRequestHandler:(id)a3;
- (void)removeConnection:(id)a3;
- (void)server:(id)a3 didCloseConnection:(id)a4;
- (void)server:(id)a3 didOpenConnection:(id)a4;
- (void)serverDidInvalidate:(id)a3;
- (void)setConnectionIdleTimeout:(double)a3;
- (void)setInternal:(id)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stopWithError:(id)a3;
- (void)unregisterRequestHandler:(id)a3;
@end

@implementation HMFHTTPServer

- (HMFHTTPServer)init
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

- (HMFHTTPServer)initWithServiceType:(id)a3 name:(id)a4 port:(unint64_t)a5 options:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = +[HMFNetManager sharedManager];
  v13 = [(HMFHTTPServer *)self initWithServiceType:v11 name:v10 port:a5 options:a6 netManager:v12];

  return v13;
}

- (HMFHTTPServer)initWithServiceType:(id)a3 name:(id)a4 port:(unint64_t)a5 options:(unint64_t)a6 netManager:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if ((a6 & 1) != 0 && ![v13 length])
  {
    v37 = objc_autoreleasePoolPush();
    v33 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier(v33);
      *buf = 138543362;
      v42 = v39;
      _os_log_impl(&dword_22ADEC000, v38, OS_LOG_TYPE_ERROR, "%{public}@A valid name is required for publishing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    v34 = 0;
  }

  else
  {
    v40.receiver = self;
    v40.super_class = HMFHTTPServer;
    v15 = [(HMFHTTPServer *)&v40 init];
    v16 = v15;
    if (v15)
    {
      v17 = HMFDispatchQueueName(v15, 0);
      v18 = dispatch_queue_create(v17, 0);
      clientQueue = v16->_clientQueue;
      v16->_clientQueue = v18;

      v20 = [v12 length];
      if (v20)
      {
        v21 = [v12 copy];
      }

      else
      {
        v21 = @"_http";
      }

      objc_storeStrong(&v16->_serviceType, v21);
      if (v20)
      {
      }

      v22 = [v13 copy];
      name = v16->_name;
      v16->_name = v22;

      v16->_port = a5;
      v16->_options = a6;
      v16->_connectionIdleTimeout = 15.0;
      v24 = [MEMORY[0x277CBEB18] array];
      connections = v16->_connections;
      v16->_connections = v24;

      v26 = [MEMORY[0x277CBEB18] array];
      requestHandlers = v16->_requestHandlers;
      v16->_requestHandlers = v26;

      objc_storeStrong(&v16->_netManager, a7);
      if (a6)
      {
        v28 = [HMFMutableNetService alloc];
        v29 = [(HMFHTTPServer *)v16 serviceType];
        v30 = [(HMFHTTPServer *)v16 name];
        v31 = [(HMFMutableNetService *)v28 initWithDomain:&stru_283EBDA30 type:v29 name:v30 port:[(HMFHTTPServer *)v16 port]];
        netService = v16->_netService;
        v16->_netService = v31;
      }
    }

    v33 = v16;
    v34 = v33;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(_HMFCFHTTPServer *)self->_internal invalidate];
  [(HMFMutableNetService *)self->_netService stopPublishing];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) close];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(HMFNetManager *)self->_netManager deregisterObject:self];
  v9.receiver = self;
  v9.super_class = HMFHTTPServer;
  [(HMFHTTPServer *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [v3 stringWithFormat:@"%@ %tu", v4, -[HMFHTTPServer port](self, "port")];

  return v5;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFHTTPServer *)self serviceType];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Service Type" value:v4];
  v19[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  v7 = [(HMFHTTPServer *)self name];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Name" value:v7];
  v19[1] = v8;
  v9 = [HMFAttributeDescription alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMFHTTPServer port](self, "port")}];
  v11 = [(HMFAttributeDescription *)v9 initWithName:@"Port" value:v10];
  v19[2] = v11;
  v12 = [HMFAttributeDescription alloc];
  v13 = MEMORY[0x277CCABB0];
  [(HMFHTTPServer *)self connectionIdleTimeout];
  v14 = [v13 numberWithDouble:?];
  v15 = [(HMFAttributeDescription *)v12 initWithName:@"Connection Idle Timeout" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)port
{
  v3 = [(HMFHTTPServer *)self internal];

  if (!v3)
  {
    return self->_port;
  }

  v4 = [(HMFHTTPServer *)self internal];
  v5 = [v4 port];

  return v5;
}

- (double)connectionIdleTimeout
{
  os_unfair_lock_lock_with_options();
  connectionIdleTimeout = self->_connectionIdleTimeout;
  os_unfair_lock_unlock(&self->_lock);
  return connectionIdleTimeout;
}

- (void)setConnectionIdleTimeout:(double)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_connectionIdleTimeout != a3)
  {
    self->_connectionIdleTimeout = a3;
    [(_HMFCFHTTPServer *)self->_internal setConnectionIdleTimeout:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)connections
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_connections copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addConnection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_connections addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)removeConnection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_connections removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (_HMFCFHTTPServer)internal
{
  os_unfair_lock_lock_with_options();
  v3 = self->_internal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setInternal:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  internal = self->_internal;
  self->_internal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMFHTTPServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMFHTTPServer_startWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786E6D68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__HMFHTTPServer_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v39 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = -[_HMFCFHTTPServer initWithPort:options:]([_HMFCFHTTPServer alloc], "initWithPort:options:", [*(a1 + 32) port], objc_msgSend(*(a1 + 32), "options"));
  if (v6)
  {
    [*(a1 + 32) setInternal:v6];
    v7 = [*(a1 + 32) internal];
    [v7 setDelegate:*(a1 + 32)];

    v8 = [*(a1 + 32) internal];
    [*(a1 + 32) connectionIdleTimeout];
    [v8 setConnectionIdleTimeout:?];

    if (([*(a1 + 32) options] & 4) != 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier(v10);
        *buf = 138543362;
        v39 = v12;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Enabling WoW", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [*(a1 + 32) netManager];
      [v13 registerWoWAssertionForObject:*(a1 + 32)];
    }

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier(v15);
      v18 = [*(a1 + 32) port];
      *buf = 138543618;
      v39 = v17;
      v40 = 2048;
      v41 = v18;
      _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Started server on port %tu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    objc_initWeak(&location, *(a1 + 32));
    if ([*(a1 + 32) options])
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier(v27);
        *buf = 138543362;
        v39 = v29;
        _os_log_impl(&dword_22ADEC000, v28, OS_LOG_TYPE_INFO, "%{public}@Publishing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [*(a1 + 32) netService];
      [v30 setPort:{objc_msgSend(*(a1 + 32), "port")}];

      v31 = [*(a1 + 32) netService];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __44__HMFHTTPServer_startWithCompletionHandler___block_invoke_33;
      v34[3] = &unk_2786E7F98;
      objc_copyWeak(&v36, &location);
      v32 = *(a1 + 40);
      v34[4] = *(a1 + 32);
      v35 = v32;
      [v31 startPublishingWithCompletionHandler:v34];

      objc_destroyWeak(&v36);
    }

    else
    {
      v19 = _Block_copy(*(a1 + 40));
      v20 = v19;
      if (v19)
      {
        (*(v19 + 2))(v19, 0);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier(v22);
      *buf = 138543362;
      v39 = v24;
      _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to start server", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    if (*(a1 + 40))
    {
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
      (*(*(a1 + 40) + 16))();
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __44__HMFHTTPServer_startWithCompletionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier(v6);
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to publish net service with error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(v10);
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Published", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = _Block_copy(*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMFHTTPServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__HMFHTTPServer_stopWithError___block_invoke;
  v7[3] = &unk_2786E6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_stopWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMFHTTPServer *)self internal];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier(v7);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Stopped with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMFHTTPServer *)v7 internal];
    [v10 invalidate];

    [(HMFHTTPServer *)v7 setInternal:0];
    v11 = [(HMFHTTPServer *)v7 netService];
    [v11 stopPublishing];

    v12 = [(HMFHTTPServer *)v7 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 server:v7 didStopWithError:v4];
    }
  }

  v13 = [(HMFHTTPServer *)self netManager];
  [v13 deregisterObject:self];

  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)requestHandlers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_requestHandlers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)registerRequestHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(v6);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding request handler: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)v6->_requestHandlers addObject:v4];
    os_unfair_lock_unlock(&v6->_lock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterRequestHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(v6);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing request handler: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)v6->_requestHandlers removeObject:v4];
    os_unfair_lock_unlock(&v6->_lock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleReceivedRequest:(id)a3 connection:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(v9);
      *buf = 138543874;
      v38 = v11;
      v39 = 2112;
      v40 = v6;
      v41 = 2112;
      v42 = v7;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request, %@, from connection: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMFHTTPServer *)v9 requestHandlers];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __51__HMFHTTPServer__handleReceivedRequest_connection___block_invoke;
    v34 = &unk_2786E7FC0;
    v13 = v6;
    v35 = v13;
    v14 = v7;
    v36 = v14;
    v15 = [v12 hmf_objectPassingTest:&v31];

    if (v15)
    {
      v16 = [v15 requestBlock];
      v17 = objc_autoreleasePoolPush();
      v18 = v9;
      v19 = HMFGetOSLogHandle();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (v16)
      {
        if (v20)
        {
          v21 = HMFGetLogIdentifier(v18);
          *buf = 138543874;
          v38 = v21;
          v39 = 2112;
          v40 = v15;
          v41 = 2112;
          v42 = v13;
          _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_INFO, "%{public}@Found a matching request handler, %@, for the request, %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v22 = [v13 internal];
        v23 = [v22 activity];
        [v23 markWithReason:@"Calling request handler"];

        (v16)[2](v16, v13, v14);
      }

      else
      {
        if (v20)
        {
          v28 = HMFGetLogIdentifier(v18);
          *buf = 138543874;
          v38 = v28;
          v39 = 2112;
          v40 = v15;
          v41 = 2112;
          v42 = v13;
          _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_INFO, "%{public}@Found a matching request handler, %@, for the request, %@, but there was no request block", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v29 = [v13 responseWithStatusCode:404];
        [v14 sendResponse:v29 completionHandler:0];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v9;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier(v25);
        *buf = 138543618;
        v38 = v27;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_22ADEC000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to handle request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v15 = [v13 responseWithStatusCode:{501, v31, v32, v33, v34, v35}];
      [v14 sendResponse:v15 completionHandler:0];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMFHTTPServer__handleReceivedRequest_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLPredicate];
  v5 = [*(a1 + 32) URL];
  v6 = [v4 evaluateWithObject:v5];

  if (v6 && ([v3 methodPredicate], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "method"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "evaluateWithObject:", v8), v8, v7, v9))
  {
    v10 = [v3 matchBlock];

    if (!v10 || ([v3 matchBlock], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11[2](v11, *(a1 + 32), *(a1 + 40)), v11, v12))
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_handleOpenedConnection:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMFHTTPClientConnection alloc] initWithConnection:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(v7);
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Received connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMFHTTPServer *)v7 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 server:v7 shouldAcceptConnection:v5])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier(v16);
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Rejecting connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier(v12);
      *buf = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Accepted connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMFHTTPClientConnection *)v5 setDelegate:v12];
    objc_initWeak(buf, v12);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__HMFHTTPServer__handleOpenedConnection___block_invoke;
    v20[3] = &unk_2786E8010;
    objc_copyWeak(&v23, buf);
    v21 = v5;
    v22 = v10;
    [(HMFHTTPClientConnection *)v21 openWithCompletionHandler:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __41__HMFHTTPServer__handleOpenedConnection___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained clientQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__HMFHTTPServer__handleOpenedConnection___block_invoke_2;
    v7[3] = &unk_2786E7FE8;
    v8 = v3;
    v9 = v5;
    v10 = a1[4];
    v11 = a1[5];
    dispatch_async(v6, v7);
  }
}

void __41__HMFHTTPServer__handleOpenedConnection___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier(v4);
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v14 = 138543874;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to open connection, %@, with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(v4);
      v11 = *(a1 + 48);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Opened connection: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v12 = *(a1 + 56);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 56) server:*(a1 + 40) didOpenConnection:*(a1 + 48)];
    }

    [*(a1 + 40) addConnection:*(a1 + 48)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleClosedConnection:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connection closed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMFHTTPServer *)v6 connections];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__HMFHTTPServer__handleClosedConnection___block_invoke;
  v18[3] = &unk_2786E8038;
  v10 = v4;
  v19 = v10;
  v11 = [v9 hmf_objectPassingTest:v18];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier(v13);
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Closing connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v11 close];
    [(HMFHTTPServer *)v13 removeConnection:v11];
    v16 = [(HMFHTTPServer *)v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v16 server:v13 didCloseConnection:v11];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HMFHTTPServer__handleClosedConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 internal];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)serverDidInvalidate:(id)a3
{
  v4 = [(HMFHTTPServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMFHTTPServer_serverDidInvalidate___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v4, block);
}

void __37__HMFHTTPServer_serverDidInvalidate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12 reason:@"Server invalidated."];
  [*(a1 + 32) _stopWithError:v2];
}

- (void)server:(id)a3 didOpenConnection:(id)a4
{
  v5 = a4;
  v6 = [(HMFHTTPServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HMFHTTPServer_server_didOpenConnection___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)server:(id)a3 didCloseConnection:(id)a4
{
  v5 = a4;
  v6 = [(HMFHTTPServer *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HMFHTTPServer_server_didCloseConnection___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

+ (id)logCategory
{
  if (_MergedGlobals_3_17 != -1)
  {
    dispatch_once(&_MergedGlobals_3_17, &__block_literal_global_48);
  }

  v3 = qword_280AFC470;

  return v3;
}

uint64_t __28__HMFHTTPServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.HTTP.Server", @"com.apple.HMFoundation");
  v1 = qword_280AFC470;
  qword_280AFC470 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)connection:(id)a3 didReceiveRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMFHTTPServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMFHTTPServer_connection_didReceiveRequest___block_invoke;
  block[3] = &unk_2786E73A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (id)dumpState
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMFObject *)self debugDescription];
  [v3 setObject:v4 forKeyedSubscript:@"Identity"];

  v5 = [(HMFHTTPServer *)self connections];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) shortDescription];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [v3 setObject:v6 forKeyedSubscript:@"clientConnections"];
  v13 = [(HMFHTTPServer *)self netService];
  v14 = [v13 debugDescription];
  [v3 setObject:v14 forKeyedSubscript:@"NetService"];

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMFHTTPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end