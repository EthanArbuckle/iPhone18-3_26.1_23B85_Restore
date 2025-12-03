@interface _CAFCarDataClientProxy
- (BOOL)invalidated;
- (CAFCarDataService)remoteProxy;
- (CAFCarManager)carManager;
- (_CAFCarDataClientProxy)initWithCarManager:(id)manager;
- (void)activate;
- (void)didNotifyPluginID:(id)d instanceID:(id)iD value:(id)value;
- (void)didRequestPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response;
- (void)didUpdateConfig:(id)config;
- (void)didUpdateCurrentCarConfig:(id)config;
- (void)didUpdatePluginID:(id)d values:(id)values;
- (void)invalidate;
@end

@implementation _CAFCarDataClientProxy

- (_CAFCarDataClientProxy)initWithCarManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = _CAFCarDataClientProxy;
  v5 = [(_CAFCarDataClientProxy *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_new();
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v5->_invalidatedLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_carManager, managerCopy);
    uTF8String = [@"com.apple.caraccessoryframework.cardata" UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    workQueue = v5->_workQueue;
    v5->_workQueue = v10;
  }

  return v5;
}

- (void)activate
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (CAFCarDataService)remoteProxy
{
  if ([(_CAFCarDataClientProxy *)self invalidated])
  {
    v3 = 0;
  }

  else
  {
    connection = [(_CAFCarDataClientProxy *)self connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    if ([remoteObjectProxy conformsToProtocol:&unk_2846AD690])
    {
      v3 = remoteObjectProxy;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)didUpdateCurrentCarConfig:(id)config
{
  configCopy = config;
  workQueue = [(_CAFCarDataClientProxy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___CAFCarDataClientProxy_didUpdateCurrentCarConfig___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  dispatch_async(workQueue, v7);
}

- (void)didUpdateConfig:(id)config
{
  configCopy = config;
  workQueue = [(_CAFCarDataClientProxy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___CAFCarDataClientProxy_didUpdateConfig___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  dispatch_async(workQueue, v7);
}

- (void)didUpdatePluginID:(id)d values:(id)values
{
  dCopy = d;
  valuesCopy = values;
  workQueue = [(_CAFCarDataClientProxy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___CAFCarDataClientProxy_didUpdatePluginID_values___block_invoke;
  block[3] = &unk_27890D598;
  block[4] = self;
  v12 = dCopy;
  v13 = valuesCopy;
  v9 = valuesCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)didNotifyPluginID:(id)d instanceID:(id)iD value:(id)value
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  workQueue = [(_CAFCarDataClientProxy *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61___CAFCarDataClientProxy_didNotifyPluginID_instanceID_value___block_invoke;
  v15[3] = &unk_27890D8B8;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = valueCopy;
  v12 = valueCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

- (void)didRequestPluginID:(id)d instanceID:(id)iD value:(id)value withResponse:(id)response
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  responseCopy = response;
  workQueue = [(_CAFCarDataClientProxy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___CAFCarDataClientProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke;
  block[3] = &unk_27890D9F0;
  v22 = valueCopy;
  v23 = responseCopy;
  block[4] = self;
  v20 = dCopy;
  v21 = iDCopy;
  v15 = valueCopy;
  v16 = iDCopy;
  v17 = dCopy;
  v18 = responseCopy;
  dispatch_async(workQueue, block);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_invalidatedLock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    connection = [(_CAFCarDataClientProxy *)self connection];
    [connection invalidate];
  }

  os_unfair_lock_unlock(&self->_invalidatedLock);
}

- (BOOL)invalidated
{
  os_unfair_lock_lock(&self->_invalidatedLock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_invalidatedLock);
  return invalidated;
}

- (CAFCarManager)carManager
{
  WeakRetained = objc_loadWeakRetained(&self->_carManager);

  return WeakRetained;
}

@end