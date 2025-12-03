@interface DAReachability
+ (BOOL)hostLikelyUnreachable:(id)unreachable;
+ (id)sharedReachability;
+ (void)recordError:(id)error forHost:(id)host;
- (DAReachability)init;
- (void)_hostReachabilityChanged:(id)changed;
- (void)_networkReachabilityChanged:(id)changed;
- (void)_notifyDelegatesHostReachable:(id)reachable;
- (void)_notifyDelegatesNetworkReachable;
- (void)_startMonitoringNetworkReachability;
- (void)_startMonitoringReachabilityForHost:(id)host;
- (void)_startOrStopObservingHostReachabilityAfterUpdatingDelegates;
- (void)_startOrStopObservingNetworkReachabilityAfterUpdatingDelegates;
- (void)_stopMonitoringNetworkReachability;
- (void)_stopMonitoringReachabilityForHost:(id)host;
- (void)addDelegate:(id)delegate;
- (void)muckWithDelegates:(id)delegates;
- (void)removeDelegate:(id)delegate;
@end

@implementation DAReachability

+ (id)sharedReachability
{
  if (sharedReachability_onceToken != -1)
  {
    +[DAReachability sharedReachability];
  }

  v3 = sharedReachability_instance;

  return v3;
}

uint64_t __36__DAReachability_sharedReachability__block_invoke()
{
  sharedReachability_instance = objc_alloc_init(DAReachability);

  return MEMORY[0x2821F96F8]();
}

- (DAReachability)init
{
  v13.receiver = self;
  v13.super_class = DAReachability;
  v2 = [(DAReachability *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:11];
    networkReachableDelegates = v2->_networkReachableDelegates;
    v2->_networkReachableDelegates = v3;

    v5 = objc_opt_new();
    hostReachableDelegates = v2->_hostReachableDelegates;
    v2->_hostReachableDelegates = v5;

    v7 = objc_opt_new();
    hostsMonitoredForReachability = v2->_hostsMonitoredForReachability;
    v2->_hostsMonitoredForReachability = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.dataaccess.DAReachability", v9);
    queue = v2->_queue;
    v2->_queue = v10;
  }

  return v2;
}

- (void)muckWithDelegates:(id)delegates
{
  delegatesCopy = delegates;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__DAReachability_muckWithDelegates___block_invoke;
  v7[3] = &unk_278F1D438;
  v7[4] = self;
  v8 = delegatesCopy;
  v6 = delegatesCopy;
  dispatch_sync(queue, v7);
}

uint64_t __36__DAReachability_muckWithDelegates___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _startOrStopObservingNetworkReachabilityAfterUpdatingDelegates];
  v2 = *(a1 + 32);

  return [v2 _startOrStopObservingHostReachabilityAfterUpdatingDelegates];
}

- (void)_startOrStopObservingNetworkReachabilityAfterUpdatingDelegates
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSHashTable *)self->_networkReachableDelegates count];
  _monitoringNetworkReachability = [(DAReachability *)self _monitoringNetworkReachability];
  if (!v3 || _monitoringNetworkReachability)
  {
    if (v3 == 0 && _monitoringNetworkReachability)
    {

      [(DAReachability *)self _stopMonitoringNetworkReachability];
    }
  }

  else
  {

    [(DAReachability *)self _startMonitoringNetworkReachability];
  }
}

- (void)_startOrStopObservingHostReachabilityAfterUpdatingDelegates
{
  dispatch_assert_queue_V2(self->_queue);
  hostReachableDelegates = self->_hostReachableDelegates;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__DAReachability__startOrStopObservingHostReachabilityAfterUpdatingDelegates__block_invoke;
  v4[3] = &unk_278F1D460;
  v4[4] = self;
  [(NSMutableDictionary *)hostReachableDelegates enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __77__DAReachability__startOrStopObservingHostReachabilityAfterUpdatingDelegates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 count];
  v6 = [*(a1 + 32) _monitoringReachabilityForHost:v9];
  if (!v5 || (v6 & 1) != 0)
  {
    v7 = v9;
    if (((v5 == 0) & v6) != 1)
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) _stopMonitoringReachabilityForHost:v9];
  }

  else
  {
    v6 = [*(a1 + 32) _startMonitoringReachabilityForHost:v9];
  }

  v7 = v9;
LABEL_7:

  return MEMORY[0x2821F96F8](v6, v7);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__DAReachability_addDelegate___block_invoke;
  v6[3] = &unk_278F1CD98;
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  [(DAReachability *)self muckWithDelegates:v6];
}

void __30__DAReachability_addDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) hostToObserveForDAReachability:*(a1 + 40)], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v3;
    v4 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
      [*(*(a1 + 40) + 16) setObject:v4 forKeyedSubscript:v7];
    }

    [v4 addObject:*(a1 + 32)];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 8);

    [v6 addObject:v5];
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__DAReachability_removeDelegate___block_invoke;
  v6[3] = &unk_278F1CD98;
  v6[4] = self;
  v7 = delegateCopy;
  v5 = delegateCopy;
  [(DAReachability *)self muckWithDelegates:v6];
}

void __33__DAReachability_removeDelegate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__DAReachability_removeDelegate___block_invoke_2;
  v3[3] = &unk_278F1D460;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_notifyDelegatesNetworkReachable
{
  queue = [(DAReachability *)self queue];
  dispatch_assert_queue_V2(queue);

  allObjects = [(NSHashTable *)self->_networkReachableDelegates allObjects];
  v5 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DAReachability__notifyDelegatesNetworkReachable__block_invoke;
  block[3] = &unk_278F1CDC0;
  v8 = allObjects;
  v6 = allObjects;
  dispatch_async(v5, block);
}

void __50__DAReachability__notifyDelegatesNetworkReachable__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) networkReachable];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegatesHostReachable:(id)reachable
{
  reachableCopy = reachable;
  queue = [(DAReachability *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(NSMutableDictionary *)self->_hostReachableDelegates objectForKeyedSubscript:reachableCopy];

  allObjects = [v6 allObjects];

  if ([allObjects count])
  {
    v8 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__DAReachability__notifyDelegatesHostReachable___block_invoke;
    block[3] = &unk_278F1CDC0;
    v10 = allObjects;
    dispatch_async(v8, block);
  }
}

void __48__DAReachability__notifyDelegatesHostReachable___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) networkReachable];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringNetworkReachability
{
  self->_monitoringNetworkReachability = 1;
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Started monitoring network reachability", v6, 2u);
  }

  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] addNetworkReachableObserver:self selector:sel__networkReachabilityChanged_];
}

- (void)_stopMonitoringNetworkReachability
{
  self->_monitoringNetworkReachability = 0;
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Stopped monitoring network reachability", v6, 2u);
  }

  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeNetworkReachableObserver:self];
}

- (void)_startMonitoringReachabilityForHost:(id)host
{
  v11 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = hostCopy;
    _os_log_impl(&dword_248524000, v5, v6, "Started monitoring network reachability for host %@", &v9, 0xCu);
  }

  [(NSMutableSet *)self->_hostsMonitoredForReachability addObject:hostCopy];
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] addObserver:self selector:sel__hostReachabilityChanged_ forHostname:hostCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringReachabilityForHost:(id)host
{
  v11 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = hostCopy;
    _os_log_impl(&dword_248524000, v5, v6, "Stopped monitoring network reachability for host %@", &v9, 0xCu);
  }

  [(NSMutableSet *)self->_hostsMonitoredForReachability removeObject:hostCopy];
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  [mEMORY[0x277CEC5B8] removeObserver:self forHostname:hostCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_networkReachabilityChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138543362;
    v16 = changedCopy;
    _os_log_impl(&dword_248524000, v5, v6, "Network reachability changed notification %{public}@", buf, 0xCu);
  }

  name = [changedCopy name];
  v8 = [name isEqualToString:*MEMORY[0x277CEC508]];

  if (v8)
  {
    userInfo = [changedCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CEC510]];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      [DAReachability recordError:0 forHost:0];
      queue = [(DAReachability *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__DAReachability__networkReachabilityChanged___block_invoke;
      block[3] = &unk_278F1CDC0;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_hostReachabilityChanged:(id)changed
{
  v21 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138543362;
    v20 = changedCopy;
    _os_log_impl(&dword_248524000, v5, v6, "Host reachability changed notification %{public}@", buf, 0xCu);
  }

  name = [changedCopy name];
  v8 = [name isEqualToString:*MEMORY[0x277CEC500]];

  if (v8)
  {
    userInfo = [changedCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CEC510]];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      userInfo2 = [changedCopy userInfo];
      v13 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CEC4F8]];

      [DAReachability recordError:0 forHost:v13];
      queue = [(DAReachability *)self queue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43__DAReachability__hostReachabilityChanged___block_invoke;
      v17[3] = &unk_278F1CD98;
      v17[4] = self;
      v18 = v13;
      v15 = v13;
      dispatch_sync(queue, v17);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hostLikelyUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  os_unfair_lock_lock(&_errorTimestampLock);
  v4 = _hostToLastErrorTimestamp;
  null = [MEMORY[0x277CBEB68] null];
  v6 = [v4 objectForKeyedSubscript:null];

  if (unreachableCopy)
  {
    v7 = [_hostToLastErrorTimestamp objectForKeyedSubscript:unreachableCopy];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&_errorTimestampLock);
  info = 0;
  mach_timebase_info(&info);
  v8 = 180000000000 * info.denom / info.numer;
  v9 = mach_continuous_approximate_time();
  v10 = v6 && v9 - [v6 unsignedLongLongValue] < v8 || v7 && v9 - objc_msgSend(v7, "unsignedLongLongValue") < v8;

  return v10;
}

+ (void)recordError:(id)error forHost:(id)host
{
  errorCopy = error;
  hostCopy = host;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:*MEMORY[0x277CCA738]];

    if (!v7)
    {
      goto LABEL_14;
    }

    if ([errorCopy code] == -1003)
    {
      null = hostCopy;
    }

    else
    {
      if ([errorCopy code] != -1009)
      {
        goto LABEL_14;
      }

      null = [MEMORY[0x277CBEB68] null];
    }

    v11 = null;
    if (null)
    {
      os_unfair_lock_lock(&_errorTimestampLock);
      if (!_hostToLastErrorTimestamp)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = _hostToLastErrorTimestamp;
        _hostToLastErrorTimestamp = v12;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_approximate_time()];
      [_hostToLastErrorTimestamp setObject:v14 forKeyedSubscript:v11];

      os_unfair_lock_unlock(&_errorTimestampLock);
    }
  }

  else
  {
    os_unfair_lock_lock(&_errorTimestampLock);
    v9 = _hostToLastErrorTimestamp;
    null2 = [MEMORY[0x277CBEB68] null];
    [v9 removeObjectForKey:null2];

    if (hostCopy)
    {
      [_hostToLastErrorTimestamp removeObjectForKey:hostCopy];
    }

    os_unfair_lock_unlock(&_errorTimestampLock);
  }

LABEL_14:
}

@end