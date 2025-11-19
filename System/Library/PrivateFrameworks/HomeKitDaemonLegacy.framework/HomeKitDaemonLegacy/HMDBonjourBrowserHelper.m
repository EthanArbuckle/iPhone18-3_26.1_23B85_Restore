@interface HMDBonjourBrowserHelper
- (BOOL)_startBrowsers;
- (BOOL)isStarted;
- (HMDBonjourBrowserHelper)initWithServicesOfTypes:(id)a3 browsingTimeInterval:(double)a4 browsingPeriodicity:(double)a5 workQueue:(id)a6;
- (unint64_t)discoveredServicesCountForServiceType:(id)a3;
- (unint64_t)state;
- (void)_addBrowser:(id)a3;
- (void)_removeBrowser:(id)a3;
- (void)_stopBrowsers;
- (void)_updateTimerWithTimeout:(double)a3;
- (void)netServiceBrowser:(id)a3 didAddService:(id)a4;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4;
- (void)netServiceBrowser:(id)a3 didStopBrowsingWithError:(id)a4;
- (void)setState:(unint64_t)a3;
- (void)startWithBrowsingCompletion:(id)a3;
- (void)stop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDBonjourBrowserHelper

- (void)netServiceBrowser:(id)a3 didStopBrowsingWithError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 serviceType];
      v13 = MEMORY[0x277CCABB0];
      v14 = [v6 serviceType];
      v15 = [v13 numberWithUnsignedInteger:{-[HMDBonjourBrowserHelper discoveredServicesCountForServiceType:](v9, "discoveredServicesCountForServiceType:", v14)}];
      v17 = 138544130;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopped browsing for services of type: %@ with error: %@. Found %@ servcies.", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4
{
  v18 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [v6 type];
  if (v7)
  {
    v8 = [v6 name];

    if (v8)
    {
      internalDiscoveredServices = self->_internalDiscoveredServices;
      v10 = [v6 type];
      v11 = [(NSMutableDictionary *)internalDiscoveredServices objectForKey:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB58] set];
      }

      v14 = v13;

      v15 = [v6 name];
      [v14 removeObject:v15];

      v16 = self->_internalDiscoveredServices;
      v17 = [v6 type];
      [(NSMutableDictionary *)v16 setObject:v14 forKey:v17];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)netServiceBrowser:(id)a3 didAddService:(id)a4
{
  v18 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [v6 type];
  if (v7)
  {
    v8 = [v6 name];

    if (v8)
    {
      internalDiscoveredServices = self->_internalDiscoveredServices;
      v10 = [v6 type];
      v11 = [(NSMutableDictionary *)internalDiscoveredServices objectForKey:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB58] set];
      }

      v14 = v13;

      v15 = [v6 name];
      [v14 addObject:v15];

      v16 = self->_internalDiscoveredServices;
      v17 = [v6 type];
      [(NSMutableDictionary *)v16 setObject:v14 forKey:v17];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBonjourBrowserHelper *)self timer];

  if (v6 == v4)
  {
    v7 = [(HMDBonjourBrowserHelper *)self state];
    if (v7 == 2)
    {

      [(HMDBonjourBrowserHelper *)self _startBrowsers];
    }

    else if (v7 == 1)
    {

      [(HMDBonjourBrowserHelper *)self _stopBrowsers];
    }
  }
}

- (void)_updateTimerWithTimeout:(double)a3
{
  v5 = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBonjourBrowserHelper *)self timer];
  [v6 cancel];

  [(HMDBonjourBrowserHelper *)self setTimer:0];
  if (a3 > 0.0)
  {
    v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];
    [v8 setDelegate:self];
    v7 = [(HMDBonjourBrowserHelper *)self workQueue];
    [v8 setDelegateQueue:v7];

    [v8 resume];
    [(HMDBonjourBrowserHelper *)self setTimer:v8];
  }
}

- (void)_removeBrowser:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_browsers removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addBrowser:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_browsers addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (BOOL)isStarted
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)discoveredServicesCountForServiceType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = self->_latestDiscoveredServices;
  if (!v5)
  {
    if (![(NSMutableDictionary *)self->_internalDiscoveredServices count])
    {
      v6 = 0;
      goto LABEL_5;
    }

    v5 = [(NSMutableDictionary *)self->_internalDiscoveredServices copy];
  }

  v6 = v5;
LABEL_5:
  v7 = [(NSDictionary *)v6 objectForKey:v4];
  v8 = [v7 count];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (void)_stopBrowsers
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(v3);

  os_unfair_lock_lock_with_options();
  if (self->_state == 1 && self->_browsingPeriodicity > 0.0)
  {
    v4 = 1;
    v5 = 2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  self->_state = v5;
  internalDiscoveredServices = self->_internalDiscoveredServices;
  if (internalDiscoveredServices)
  {
    v7 = [(NSMutableDictionary *)internalDiscoveredServices copy];
    latestDiscoveredServices = self->_latestDiscoveredServices;
    self->_latestDiscoveredServices = v7;
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = self->_internalDiscoveredServices;
  self->_internalDiscoveredServices = v9;

  v11 = [(NSMutableArray *)self->_browsers copy];
  [(NSMutableArray *)self->_browsers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [(HMDBonjourBrowserHelper *)self browsingPeriodicity];
    [(HMDBonjourBrowserHelper *)self _updateTimerWithTimeout:?];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = MEMORY[0x277CCABB0];
      [(HMDBonjourBrowserHelper *)v13 browsingPeriodicity];
      v17 = [v16 numberWithDouble:?];
      *buf = 138543618;
      v39 = v15;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Waiting to restart browsing after: %@ seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v19)
  {
    v20 = *v33;
    do
    {
      v21 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v32 + 1) + 8 * v21++) stopBrowsing];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v19);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = [(HMDBonjourBrowserHelper *)self browsingCompletions];
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v23)
  {
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v22);
        }

        (*(*(*(&v28 + 1) + 8 * v25++) + 16))();
      }

      while (v23 != v25);
      v23 = [v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v23);
  }

  v26 = [(HMDBonjourBrowserHelper *)self browsingCompletions];
  [v26 removeAllObjects];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = [(HMDBonjourBrowserHelper *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDBonjourBrowserHelper_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __31__HMDBonjourBrowserHelper_stop__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isStarted];
  if (result)
  {
    [*(a1 + 32) _stopBrowsers];
    [*(a1 + 32) setState:0];
    v3 = *(a1 + 32);

    return [v3 _updateTimerWithTimeout:0.0];
  }

  return result;
}

- (BOOL)_startBrowsers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBonjourBrowserHelper *)self workQueue];
  dispatch_assert_queue_V2(v3);

  os_unfair_lock_lock_with_options();
  if (self->_state == 1)
  {
    os_unfair_lock_unlock(&self->_lock);
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  internalDiscoveredServices = self->_internalDiscoveredServices;
  self->_internalDiscoveredServices = v4;

  self->_state = 1;
  v6 = self->_serviceTypes;
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    goto LABEL_12;
  }

  [(HMDBonjourBrowserHelper *)self browsingInterval];
  [(HMDBonjourBrowserHelper *)self _updateTimerWithTimeout:?];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    v9 = MEMORY[0x277D85DD0];
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x277D0F878]) initWithDomain:@"local." serviceType:v11];
        [v12 setDelegate:self];
        [(HMDBonjourBrowserHelper *)self _addBrowser:v12];
        objc_initWeak(&location, self);
        v17[0] = v9;
        v17[1] = 3221225472;
        v17[2] = __41__HMDBonjourBrowserHelper__startBrowsers__block_invoke;
        v17[3] = &unk_279731988;
        objc_copyWeak(&v19, &location);
        v17[4] = v11;
        v13 = v12;
        v18 = v13;
        [v13 startBrowsingWithCompletionHandler:v17];

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);

        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  result = 1;
LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __41__HMDBonjourBrowserHelper__startBrowsers__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CCABB0];
    [v6 browsingInterval];
    v11 = [v10 numberWithDouble:?];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting browsing for services of type: %@ with error: %@ for %@ seconds", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (v3)
  {
    [v6 _removeBrowser:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startWithBrowsingCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDBonjourBrowserHelper *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDBonjourBrowserHelper_startWithBrowsingCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__HMDBonjourBrowserHelper_startWithBrowsingCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isStarted])
  {
    if (!*(a1 + 40))
    {
      return;
    }
  }

  else
  {
    v2 = [*(a1 + 32) _startBrowsers];
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }

    if (!v2)
    {
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v3 + 16))(v3);
      goto LABEL_9;
    }
  }

  v5 = [*(a1 + 32) browsingCompletions];
  v4 = _Block_copy(*(a1 + 40));
  [v5 addObject:v4];

LABEL_9:
}

- (HMDBonjourBrowserHelper)initWithServicesOfTypes:(id)a3 browsingTimeInterval:(double)a4 browsingPeriodicity:(double)a5 workQueue:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  if (a4 > 0.0 && [v11 count])
  {
    v26.receiver = self;
    v26.super_class = HMDBonjourBrowserHelper;
    v13 = [(HMDBonjourBrowserHelper *)&v26 init];
    if (v13)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      internalDiscoveredServices = v13->_internalDiscoveredServices;
      v13->_internalDiscoveredServices = v14;

      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      browsers = v13->_browsers;
      v13->_browsers = v16;

      v18 = [MEMORY[0x277CBEB18] array];
      browsingCompletions = v13->_browsingCompletions;
      v13->_browsingCompletions = v18;

      objc_storeStrong(&v13->_serviceTypes, a3);
      v13->_browsingInterval = a4;
      v13->_browsingPeriodicity = a5;
      objc_storeStrong(&v13->_workQueue, a6);
      v13->_state = 0;
    }

    self = v13;
    v20 = self;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Browsing interval or types count must be greater than 0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

@end