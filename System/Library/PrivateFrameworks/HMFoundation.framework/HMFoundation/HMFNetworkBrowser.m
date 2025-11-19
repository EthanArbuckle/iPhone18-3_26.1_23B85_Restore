@interface HMFNetworkBrowser
+ (id)logCategory;
- (HMFNetworkBrowser)initWithQueue:(id)a3 domain:(id)a4 serviceTypes:(id)a5;
- (HMFNetworkBrowserDelegate)delegate;
- (NSArray)foundNetworkServices;
- (id)_startBrowsing;
- (id)_stopBrowsing;
- (id)startBrowsing;
- (id)startBrowsingWithTimeout:(double)a3;
- (id)stopBrowsing;
- (id)workContext;
- (void)_addService:(id)a3;
- (void)_removeService:(id)a3;
- (void)_updateService:(id)a3;
@end

@implementation HMFNetworkBrowser

void __33___HMFNetworkBrowser_workContext__block_invoke(uint64_t a1)
{
  v2 = [HMFDispatchContext alloc];
  v5 = [*(a1 + 32) workQueue];
  v3 = [(HMFDispatchContext *)v2 initWithQueue:v5];
  v4 = qword_280AFC3B0;
  qword_280AFC3B0 = v3;
}

uint64_t __33___HMFNetworkBrowser_logCategory__block_invoke()
{
  qword_280AFC3C0 = HMFCreateOSLogHandle(@"HMFNetworkBrowser", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

- (HMFNetworkBrowser)initWithQueue:(id)a3 domain:(id)a4 serviceTypes:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v34 = a4;
  v9 = a5;
  v39.receiver = self;
  v39.super_class = HMFNetworkBrowser;
  v10 = [(HMFNetworkBrowser *)&v39 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_domain, a4);
    objc_storeStrong(&v11->_serviceTypes, a5);
    v12 = [MEMORY[0x277CBEB38] dictionary];
    networkServices = v11->_networkServices;
    v11->_networkServices = v12;

    v14 = MEMORY[0x277CBEB18];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    internalBrowsers = v11->_internalBrowsers;
    v11->_internalBrowsers = v15;

    v17 = v8;
    if (!v8)
    {
      v18 = HMFDispatchQueueName(v11, 0);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create(v18, v14);
    }

    objc_storeStrong(&v11->_workQueue, v17);
    v32 = v8;
    if (!v8)
    {
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [MEMORY[0x277CBEB98] setWithArray:{v9, v9}];
    v19 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          v24 = [_HMFNetworkBrowser alloc];
          v25 = [(HMFNetworkBrowser *)v11 workQueue];
          v26 = v11;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __networkServiceDidUpdate_block_invoke;
          aBlock[3] = &unk_2786E7888;
          v41 = v26;
          v27 = _Block_copy(aBlock);

          v28 = [(_HMFNetworkBrowser *)v24 initWithQueue:v25 domain:v34 serviceType:v23 updateBlock:v27];
          [(NSMutableArray *)v11->_internalBrowsers addObject:v28];
        }

        v20 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v20);
    }

    v9 = v31;
    v8 = v32;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)workContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMFNetworkBrowser_workContext__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  if (qword_280AFC3C8 != -1)
  {
    dispatch_once(&qword_280AFC3C8, block);
  }

  return qword_280AFC3D0;
}

void __32__HMFNetworkBrowser_workContext__block_invoke(uint64_t a1)
{
  v2 = [HMFDispatchContext alloc];
  v5 = [*(a1 + 32) workQueue];
  v3 = [(HMFDispatchContext *)v2 initWithQueue:v5];
  v4 = qword_280AFC3D0;
  qword_280AFC3D0 = v3;
}

- (void)_addService:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock_with_options();
  if (v11 && (v4 = self->_networkServices, [v11 host], v5 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v4, "objectForKey:", v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    networkServices = self->_networkServices;
    v8 = [v11 host];
    [(NSMutableDictionary *)networkServices setObject:v11 forKey:v8];

    os_unfair_lock_unlock(&self->_lock);
    v9 = [(HMFNetworkBrowser *)self browserDelegate];
    LOBYTE(networkServices) = objc_opt_respondsToSelector();

    if (networkServices)
    {
      v10 = [(HMFNetworkBrowser *)self browserDelegate];
      [v10 browser:self didFindNetworkService:v11];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_removeService:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock_with_options();
  if (v11 && (v4 = self->_networkServices, [v11 host], v5 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v4, "objectForKey:", v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    networkServices = self->_networkServices;
    v8 = [v11 host];
    [(NSMutableDictionary *)networkServices removeObjectForKey:v8];

    os_unfair_lock_unlock(&self->_lock);
    v9 = [(HMFNetworkBrowser *)self browserDelegate];
    LOBYTE(networkServices) = objc_opt_respondsToSelector();

    if (networkServices)
    {
      v10 = [(HMFNetworkBrowser *)self browserDelegate];
      [v10 browser:self didLoseNetworkService:v11];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_updateService:(id)a3
{
  v14 = a3;
  os_unfair_lock_lock_with_options();
  if (v14 && (v4 = self->_networkServices, [v14 host], v5 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v4, "objectForKey:", v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    networkServices = self->_networkServices;
    v8 = [v14 host];
    v9 = [(NSMutableDictionary *)networkServices objectForKey:v8];
    [v9 updateWithService:v14];

    v10 = self->_networkServices;
    v11 = [v14 host];
    [(NSMutableDictionary *)v10 setObject:v14 forKey:v11];

    os_unfair_lock_unlock(&self->_lock);
    v12 = [(HMFNetworkBrowser *)self browserDelegate];
    LOBYTE(v10) = objc_opt_respondsToSelector();

    if (v10)
    {
      v13 = [(HMFNetworkBrowser *)self browserDelegate];
      [v13 browser:self didUpdateNetworkService:v14];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)_startBrowsing
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HMFNetworkBrowser *)self internalBrowsers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(HMFNetworkBrowser *)self internalBrowsers];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 startBrowsing];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __35__HMFNetworkBrowser__startBrowsing__block_invoke;
        v18[3] = &unk_2786E77E8;
        v18[4] = self;
        v18[5] = v10;
        v12 = [v11 then:v18];

        [v5 addObject:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [HMFFuture allSettled:v5];
  v14 = [v13 ignoreResult];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __35__HMFNetworkBrowser__startBrowsing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browserDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) browserDelegate];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) serviceType];
    [v4 browser:v5 didStartBrowsingForServiceType:v6];
  }

  return 1;
}

- (id)_stopBrowsing
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HMFNetworkBrowser *)self internalBrowsers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(HMFNetworkBrowser *)self internalBrowsers];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 stopBrowsing];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __34__HMFNetworkBrowser__stopBrowsing__block_invoke;
        v18[3] = &unk_2786E77E8;
        v18[4] = self;
        v18[5] = v10;
        v12 = [v11 then:v18];

        [v5 addObject:v12];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [HMFFuture allSettled:v5];
  v14 = [v13 ignoreResult];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __34__HMFNetworkBrowser__stopBrowsing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browserDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) browserDelegate];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) serviceType];
    [v4 browser:v5 didStopBrowsingForServiceType:v6];
  }

  return 1;
}

- (id)stopBrowsing
{
  v3 = [(HMFNetworkBrowser *)self workContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HMFNetworkBrowser_stopBrowsing__block_invoke;
  v6[3] = &unk_2786E7630;
  v6[4] = self;
  v4 = [HMFFuture inContext:v3 perform:v6];

  return v4;
}

uint64_t __33__HMFNetworkBrowser_stopBrowsing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _stopBrowsing];
  if (!v1)
  {
    _HMFPreconditionFailure(@"future");
  }

  v2 = v1;

  return 3;
}

- (id)startBrowsing
{
  v3 = [(HMFNetworkBrowser *)self workContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HMFNetworkBrowser_startBrowsing__block_invoke;
  v6[3] = &unk_2786E7630;
  v6[4] = self;
  v4 = [HMFFuture inContext:v3 perform:v6];

  return v4;
}

uint64_t __34__HMFNetworkBrowser_startBrowsing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _startBrowsing];
  if (!v1)
  {
    _HMFPreconditionFailure(@"future");
  }

  v2 = v1;

  return 3;
}

- (id)startBrowsingWithTimeout:(double)a3
{
  v5 = [(HMFNetworkBrowser *)self workContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HMFNetworkBrowser_startBrowsingWithTimeout___block_invoke;
  v8[3] = &unk_2786E7838;
  v8[4] = self;
  *&v8[5] = a3;
  v6 = [HMFFuture inContext:v5 perform:v8];

  return v6;
}

uint64_t __46__HMFNetworkBrowser_startBrowsingWithTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _startBrowsing];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HMFNetworkBrowser_startBrowsingWithTimeout___block_invoke_2;
  v6[3] = &unk_2786E7810;
  v6[5] = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v3 = [v2 then:v6];
  if (!v3)
  {
    _HMFPreconditionFailure(@"future");
  }

  v4 = v3;

  return 3;
}

uint64_t __46__HMFNetworkBrowser_startBrowsingWithTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMFFuture futureWithDelay:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HMFNetworkBrowser_startBrowsingWithTimeout___block_invoke_3;
  v8[3] = &unk_2786E7630;
  v8[4] = *(a1 + 32);
  v5 = [v4 finally:v8];
  if (!v5)
  {
    _HMFPreconditionFailure(@"future");
  }

  v6 = v5;

  return 3;
}

uint64_t __46__HMFNetworkBrowser_startBrowsingWithTimeout___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _stopBrowsing];
  if (!v1)
  {
    _HMFPreconditionFailure(@"future");
  }

  v2 = v1;

  return 3;
}

- (NSArray)foundNetworkServices
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_networkServices allValues];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

+ (id)logCategory
{
  if (qword_280AFC3D8 != -1)
  {
    dispatch_once(&qword_280AFC3D8, &__block_literal_global_69);
  }

  v3 = qword_280AFC3E0;

  return v3;
}

uint64_t __32__HMFNetworkBrowser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"HMFNetworkBrowser", @"com.apple.HMFoundation");
  v1 = qword_280AFC3E0;
  qword_280AFC3E0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMFNetworkBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end