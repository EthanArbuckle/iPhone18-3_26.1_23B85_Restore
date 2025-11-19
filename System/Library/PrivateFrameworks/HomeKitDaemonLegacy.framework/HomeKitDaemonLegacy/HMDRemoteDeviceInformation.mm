@interface HMDRemoteDeviceInformation
- (HMDRemoteDeviceInformation)init;
- (id)attributeDescriptions;
- (void)addState:(uint64_t)a1;
- (void)clearState:(uint64_t)a1;
- (void)completeConfirmationsWithError:(uint64_t)a1;
- (void)queueConfirmationHandler:(double)a3 timeout:;
- (void)setRetryTimer:(uint64_t)a1;
@end

@implementation HMDRemoteDeviceInformation

- (id)attributeDescriptions
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [v4 initWithName:@"Device" value:Property options:1 formatter:0];
  v24[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  if (self)
  {
    clients = self->_clients;
  }

  else
  {
    clients = 0;
  }

  v10 = clients;
  v11 = [v8 numberWithUnsignedInteger:{-[NSHashTable count](v10, "count")}];
  v12 = [v7 initWithName:@"NumRegisteredClients" value:v11];
  v24[1] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    reachable = self->_reachable;
  }

  v15 = HMFBooleanToString();
  v16 = [v13 initWithName:@"Reachable" value:v15];
  v24[2] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v20 = [v17 initWithName:@"State" value:v19];
  v24[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (HMDRemoteDeviceInformation)init
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

- (void)addState:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    *(a1 + 40) |= a2;
  }
}

- (void)queueConfirmationHandler:(double)a3 timeout:
{
  if (a1)
  {
    v5 = *(a1 + 24);
    v6 = a2;
    dispatch_assert_queue_V2(v5);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained newConfirmationHandlerWithTimeout:*(a1 + 24) workQueue:v6 handler:a3];

    [*(a1 + 48) addObject:v13];
    if (v13)
    {
      v8 = [v13 workQueue];
      dispatch_assert_queue_V2(v8);

      v9 = [v13 timeoutTimer];
      [v9 setDelegate:v13];

      v10 = [v13 workQueue];
      v11 = [v13 timeoutTimer];
      [v11 setDelegateQueue:v10];

      v12 = [v13 timeoutTimer];
      [v12 resume];
    }
  }
}

- (void)completeConfirmationsWithError:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    v4 = [*(a1 + 48) copy];
    [*(a1 + 48) removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(HMDRemoteDeviceConfirmationHandler *)*(*(&v11 + 1) + 8 * v9++) finishWithError:v3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearState:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    *(a1 + 40) &= ~2uLL;
  }
}

- (void)setRetryTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

@end