@interface IDSServerBagNetworkLoader
- (BOOL)isLoading;
- (BOOL)isServerAvailable;
- (IDSServerBagNetworkLoader)initWithConfig:(id)a3 queue:(id)a4 connectionMonitorBlock:(id)a5 URLSessionCreationBlock:(id)a6;
- (void)connectionMonitorDidUpdate:(id)a3;
- (void)dealloc;
- (void)loadBagIfPossibleWithCompletion:(id)a3;
@end

@implementation IDSServerBagNetworkLoader

- (BOOL)isServerAvailable
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_1A7B0D220(self);
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isLoading
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IDSServerBagNetworkLoader *)self loaderState]== 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (IDSServerBagNetworkLoader)initWithConfig:(id)a3 queue:(id)a4 connectionMonitorBlock:(id)a5 URLSessionCreationBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = IDSServerBagNetworkLoader;
  v15 = [(IDSServerBagNetworkLoader *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_config, a3);
    objc_storeStrong(&v16->_queue, a4);
    v16->_lock._os_unfair_lock_opaque = 0;
    v17 = _Block_copy(v13);
    connectionMonitorBlock = v16->_connectionMonitorBlock;
    v16->_connectionMonitorBlock = v17;

    v19 = _Block_copy(v14);
    URLSessionCreationBlock = v16->_URLSessionCreationBlock;
    v16->_URLSessionCreationBlock = v19;
  }

  return v16;
}

- (void)loadBagIfPossibleWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IDSServerBagNetworkLoader *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7B16458;
    v6[3] = &unk_1E77DCE00;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)dealloc
{
  [(IMConnectionMonitor *)self->_connectionMonitor clear];
  [(IMConnectionMonitor *)self->_connectionMonitor setDelegate:0];
  v3.receiver = self;
  v3.super_class = IDSServerBagNetworkLoader;
  [(IDSServerBagNetworkLoader *)&v3 dealloc];
}

- (void)connectionMonitorDidUpdate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 isImmediatelyReachable];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSServerBagNetworkLoader *)self loaderState];
  v6 = [(IDSServerBagNetworkLoader *)self config];
  v7 = [v6 logCategory];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = [(IDSServerBagNetworkLoader *)self loaderState];
    v10 = @"NO";
    v12 = 138413058;
    v13 = v8;
    v14 = 2048;
    if (v4)
    {
      v10 = @"YES";
    }

    v15 = self;
    v16 = 1024;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_INFO, "<%@:%p> Received connectionMonitorDidUpdate {_loaderState: %d; isImmediatelyReachable: %@}", &v12, 0x26u);
  }

  if (((v5 == 2) & v4) == 1)
  {
    [(IDSServerBagNetworkLoader *)self setLoaderState:0];
    v11 = [(IDSServerBagNetworkLoader *)self storedCompletion];
    os_unfair_lock_unlock(&self->_lock);
    [(IDSServerBagNetworkLoader *)self loadBagIfPossibleWithCompletion:v11];
  }

  else
  {
    if (!((v5 != 1) | v4 & 1))
    {
      [(IDSServerBagNetworkLoader *)self setURLRequestSession:0];
      [(IDSServerBagNetworkLoader *)self setLoaderState:2];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end