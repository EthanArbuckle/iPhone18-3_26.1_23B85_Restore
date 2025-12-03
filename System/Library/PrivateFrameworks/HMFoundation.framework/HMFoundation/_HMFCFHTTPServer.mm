@interface _HMFCFHTTPServer
+ (id)logCategory;
- (_HMFCFHTTPServer)init;
- (_HMFCFHTTPServer)initWithPort:(unint64_t)port options:(unint64_t)options;
- (_HMFCFHTTPServerDelegate)delegate;
- (double)connectionIdleTimeout;
- (double)watchdogTimeout;
- (void)dealloc;
- (void)invalidate;
- (void)setConnectionIdleTimeout:(double)timeout;
- (void)setWatchdogTimeout:(double)timeout;
@end

@implementation _HMFCFHTTPServer

- (_HMFCFHTTPServer)init
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

- (_HMFCFHTTPServer)initWithPort:(unint64_t)port options:(unint64_t)options
{
  v41 = *MEMORY[0x277D85DE8];
  if (port >= 0x10000)
  {
    _HMFPreconditionFailure(@"port <= UINT16_MAX");
  }

  optionsCopy = options;
  v36.receiver = self;
  v36.super_class = _HMFCFHTTPServer;
  v6 = [(_HMFCFHTTPServer *)&v36 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = HMFDispatchQueueName(v6, 0);
  v9 = dispatch_queue_create(v8, 0);
  clientQueue = v7->_clientQueue;
  v7->_clientQueue = v9;

  array = [MEMORY[0x277CBEB18] array];
  connections = v7->_connections;
  v7->_connections = array;

  v13 = [[HMFWeakObject alloc] initWithWeakObject:v7];
  v14 = *MEMORY[0x277CBECE8];
  v7->_internal = _CFHTTPServerCreateService();
  if (![(_HMFCFHTTPServer *)v7 isValid])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v7;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier(v25);
      *buf = 138543362;
      v40 = v27;
      _os_log_impl(&dword_22ADEC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create server, server is invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_21;
  }

  if ((optionsCopy & 2) != 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier(v16);
      *buf = 138543362;
      v40 = v18;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Requiring TLS in anonymous mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = *MEMORY[0x277CBAC48];
    v37[0] = *MEMORY[0x277CBABE0];
    v37[1] = v19;
    v38[0] = MEMORY[0x277CBEC38];
    v38[1] = MEMORY[0x277CBEC28];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [(_HMFCFHTTPServer *)v16 internal];
    v21 = *MEMORY[0x277CBAC68];
    _CFHTTPServerSetProperty();
  }

  [(_HMFCFHTTPServer *)v7 internal];
  clientQueue = [(_HMFCFHTTPServer *)v7 clientQueue];
  _CFHTTPServerSetDispatchQueue();

  if (!port)
  {
    [(_HMFCFHTTPServer *)v7 internal];
    v28 = *MEMORY[0x277CBAC70];
    v29 = _CFHTTPServerCopyProperty();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 integerValue])
    {
      v7->_port = [v29 unsignedIntegerValue];

      goto LABEL_10;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = v7;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier(v31);
      *buf = 138543362;
      v40 = v33;
      _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to bind server", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    [(_HMFCFHTTPServer *)v31 invalidate];

LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  v7->_port = port;
LABEL_10:

LABEL_11:
  v23 = v7;
LABEL_22:

  v34 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if (self->_internal)
  {
    if (_CFHTTPServerIsValid())
    {
      internal = self->_internal;
      _CFHTTPServerInvalidate();
    }

    CFRelease(self->_internal);
    self->_internal = 0;
  }

  v10.receiver = self;
  v10.super_class = _HMFCFHTTPServer;
  [(_HMFCFHTTPServer *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (double)connectionIdleTimeout
{
  [(_HMFCFHTTPServer *)self internal];
  v2 = *MEMORY[0x277CBAC00];
  v3 = _CFHTTPServerCopyProperty();
  TypeID = CFNumberGetTypeID();
  objc_opt_class();
  if (v3 && CFGetTypeID(v3) != TypeID)
  {
    CFRelease(v3);
    v3 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 15.0;
  }

  return v8;
}

- (void)setConnectionIdleTimeout:(double)timeout
{
  [(_HMFCFHTTPServer *)self internal];
  v4 = *MEMORY[0x277CBAC00];
  [MEMORY[0x277CCABB0] numberWithDouble:timeout];

  _CFHTTPServerSetProperty();
}

- (double)watchdogTimeout
{
  [(_HMFCFHTTPServer *)self internal];
  v2 = *MEMORY[0x277CBAC80];
  v3 = _CFHTTPServerCopyProperty();
  TypeID = CFNumberGetTypeID();
  objc_opt_class();
  if (v3 && CFGetTypeID(v3) != TypeID)
  {
    CFRelease(v3);
    v3 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 15.0;
  }

  return v8;
}

- (void)setWatchdogTimeout:(double)timeout
{
  [(_HMFCFHTTPServer *)self internal];
  v4 = *MEMORY[0x277CBAC80];
  [MEMORY[0x277CCABB0] numberWithDouble:timeout];

  _CFHTTPServerSetProperty();
}

- (void)invalidate
{
  if ([(_HMFCFHTTPServer *)self isValid])
  {
    [(_HMFCFHTTPServer *)self internal];

    _CFHTTPServerInvalidate();
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_5_0 != -1)
  {
    dispatch_once(&_MergedGlobals_5_0, &__block_literal_global_18);
  }

  v3 = qword_280AFC238;

  return v3;
}

- (_HMFCFHTTPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end