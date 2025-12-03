@interface IDSServerBagNetworkLoader
- (BOOL)isLoading;
- (BOOL)isServerAvailable;
- (IDSServerBagNetworkLoader)initWithConfig:(id)config queue:(id)queue connectionMonitorBlock:(id)block URLSessionCreationBlock:(id)creationBlock;
- (void)connectionMonitorDidUpdate:(id)update;
- (void)dealloc;
- (void)loadBagIfPossibleWithCompletion:(id)completion;
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

- (IDSServerBagNetworkLoader)initWithConfig:(id)config queue:(id)queue connectionMonitorBlock:(id)block URLSessionCreationBlock:(id)creationBlock
{
  configCopy = config;
  queueCopy = queue;
  blockCopy = block;
  creationBlockCopy = creationBlock;
  v22.receiver = self;
  v22.super_class = IDSServerBagNetworkLoader;
  v15 = [(IDSServerBagNetworkLoader *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_config, config);
    objc_storeStrong(&v16->_queue, queue);
    v16->_lock._os_unfair_lock_opaque = 0;
    v17 = _Block_copy(blockCopy);
    connectionMonitorBlock = v16->_connectionMonitorBlock;
    v16->_connectionMonitorBlock = v17;

    v19 = _Block_copy(creationBlockCopy);
    URLSessionCreationBlock = v16->_URLSessionCreationBlock;
    v16->_URLSessionCreationBlock = v19;
  }

  return v16;
}

- (void)loadBagIfPossibleWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    queue = [(IDSServerBagNetworkLoader *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A7B16458;
    v6[3] = &unk_1E77DCE00;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(queue, v6);
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

- (void)connectionMonitorDidUpdate:(id)update
{
  v20 = *MEMORY[0x1E69E9840];
  isImmediatelyReachable = [update isImmediatelyReachable];
  os_unfair_lock_lock(&self->_lock);
  loaderState = [(IDSServerBagNetworkLoader *)self loaderState];
  config = [(IDSServerBagNetworkLoader *)self config];
  logCategory = [config logCategory];

  if (os_log_type_enabled(logCategory, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    loaderState2 = [(IDSServerBagNetworkLoader *)self loaderState];
    v10 = @"NO";
    v12 = 138413058;
    v13 = v8;
    v14 = 2048;
    if (isImmediatelyReachable)
    {
      v10 = @"YES";
    }

    selfCopy = self;
    v16 = 1024;
    v17 = loaderState2;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A7AD9000, logCategory, OS_LOG_TYPE_INFO, "<%@:%p> Received connectionMonitorDidUpdate {_loaderState: %d; isImmediatelyReachable: %@}", &v12, 0x26u);
  }

  if (((loaderState == 2) & isImmediatelyReachable) == 1)
  {
    [(IDSServerBagNetworkLoader *)self setLoaderState:0];
    storedCompletion = [(IDSServerBagNetworkLoader *)self storedCompletion];
    os_unfair_lock_unlock(&self->_lock);
    [(IDSServerBagNetworkLoader *)self loadBagIfPossibleWithCompletion:storedCompletion];
  }

  else
  {
    if (!((loaderState != 1) | isImmediatelyReachable & 1))
    {
      [(IDSServerBagNetworkLoader *)self setURLRequestSession:0];
      [(IDSServerBagNetworkLoader *)self setLoaderState:2];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end