@interface _CAFCarDataClientProxy
- (BOOL)invalidated;
- (CAFCarDataService)remoteProxy;
- (CAFCarManager)carManager;
- (_CAFCarDataClientProxy)initWithCarManager:(id)a3;
- (void)activate;
- (void)didNotifyPluginID:(id)a3 instanceID:(id)a4 value:(id)a5;
- (void)didRequestPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 withResponse:(id)a6;
- (void)didUpdateConfig:(id)a3;
- (void)didUpdateCurrentCarConfig:(id)a3;
- (void)didUpdatePluginID:(id)a3 values:(id)a4;
- (void)invalidate;
@end

@implementation _CAFCarDataClientProxy

- (_CAFCarDataClientProxy)initWithCarManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _CAFCarDataClientProxy;
  v5 = [(_CAFCarDataClientProxy *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_new();
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v5->_invalidatedLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_carManager, v4);
    v8 = [@"com.apple.caraccessoryframework.cardata" UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
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
    v4 = [(_CAFCarDataClientProxy *)self connection];
    v5 = [v4 remoteObjectProxy];
    if ([v5 conformsToProtocol:&unk_2846AD690])
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)didUpdateCurrentCarConfig:(id)a3
{
  v4 = a3;
  v5 = [(_CAFCarDataClientProxy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___CAFCarDataClientProxy_didUpdateCurrentCarConfig___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didUpdateConfig:(id)a3
{
  v4 = a3;
  v5 = [(_CAFCarDataClientProxy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___CAFCarDataClientProxy_didUpdateConfig___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didUpdatePluginID:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CAFCarDataClientProxy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___CAFCarDataClientProxy_didUpdatePluginID_values___block_invoke;
  block[3] = &unk_27890D598;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)didNotifyPluginID:(id)a3 instanceID:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CAFCarDataClientProxy *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61___CAFCarDataClientProxy_didNotifyPluginID_instanceID_value___block_invoke;
  v15[3] = &unk_27890D8B8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)didRequestPluginID:(id)a3 instanceID:(id)a4 value:(id)a5 withResponse:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_CAFCarDataClientProxy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___CAFCarDataClientProxy_didRequestPluginID_instanceID_value_withResponse___block_invoke;
  block[3] = &unk_27890D9F0;
  v22 = v12;
  v23 = v13;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_invalidatedLock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v3 = [(_CAFCarDataClientProxy *)self connection];
    [v3 invalidate];
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