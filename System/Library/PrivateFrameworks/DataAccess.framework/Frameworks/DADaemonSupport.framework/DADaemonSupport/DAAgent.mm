@interface DAAgent
- (BOOL)shouldBeMonitoringReachability;
- (DAAgent)initWithAccount:(id)account;
- (DATrustHandler)trustHandler;
- (NSString)publicDescription;
- (id)hostToObserveForDAReachability:(id)reachability;
- (id)stateString;
- (int)preferredEventDaysToSync;
- (int)preferredToDoDaysToSync;
- (void)_scheduleDelayedReachabilityCallback:(double)callback block:(id)block;
- (void)networkReachable;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)saveXpcActivity:(id)activity;
- (void)setDelayingReachabilityCallback:(BOOL)callback;
- (void)setNetworkReachableBlock:(id)block;
- (void)setSyncWhenReachable:(BOOL)reachable;
- (void)shutdown;
- (void)startOrStopMonitoringReachability:(BOOL)reachability;
@end

@implementation DAAgent

- (DAAgent)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = DAAgent;
  v5 = [(DAAgent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DAAgent *)v5 setAccount:accountCopy];
    v6->reachabilityLock._os_unfair_lock_opaque = 0;
    [accountCopy addToCoreDAVLoggingDelegates];
  }

  return v6;
}

- (DATrustHandler)trustHandler
{
  account = [(DAAgent *)self account];
  trustHandler = [account trustHandler];

  return trustHandler;
}

- (id)stateString
{
  account = [(DAAgent *)self account];
  stateString = [account stateString];

  return stateString;
}

- (id)hostToObserveForDAReachability:(id)reachability
{
  account = [(DAAgent *)self account];
  hostWithoutPath = [account hostWithoutPath];

  return hostWithoutPath;
}

- (BOOL)shouldBeMonitoringReachability
{
  if ([(DAAgent *)self syncWhenReachable])
  {
    networkReachableBlock = [(DAAgent *)self networkReachableBlock];
    if (networkReachableBlock)
    {
      v4 = !self->_delayingReachabilityCallback;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

- (void)startOrStopMonitoringReachability:(BOOL)reachability
{
  reachabilityCopy = reachability;
  v12 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  v7 = os_log_type_enabled(v5, v6);
  if (reachabilityCopy)
  {
    if (v7)
    {
      v10 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_248524000, v5, v6, "Agent %@ is now monitoring reachability", &v10, 0xCu);
    }

    v8 = +[DAReachability sharedReachability];
    [v8 addDelegate:self];
  }

  else
  {
    if (v7)
    {
      v10 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_248524000, v5, v6, "Agent %@ is no longer monitoring reachability", &v10, 0xCu);
    }

    v8 = +[DAReachability sharedReachability];
    [v8 removeDelegate:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)networkReachable
{
  v41 = *MEMORY[0x277D85DE8];
  if (![(DAAgent *)self syncWhenReachable]|| ([(DAAgent *)self networkReachableBlock], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (delayingReachabilityCallback = self->_delayingReachabilityCallback, v3, delayingReachabilityCallback))
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 138412290;
      selfCopy5 = self;
      _os_log_impl(&dword_248524000, v5, v6, "%@: Notified that network is reachable, but we weren't asked to sync when reachable so ignoring.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v8 = CalApproximateContinuousTime();
  if (self->_reachabilityUnrestrictedTimestamp <= v8)
  {
    consecutiveDelayedReachabilityCallbacks = 0;
    self->_consecutiveDelayedReachabilityCallbacks = 0;
  }

  else
  {
    consecutiveDelayedReachabilityCallbacks = self->_consecutiveDelayedReachabilityCallbacks;
    if (!self->_allowNextReachabilityCallback)
    {
      if (consecutiveDelayedReachabilityCallbacks < 2)
      {
        v16 = *&reachabilityCallbackDelays[consecutiveDelayedReachabilityCallbacks];
        self->_consecutiveDelayedReachabilityCallbacks = consecutiveDelayedReachabilityCallbacks + 1;
        CalContinuousIntervalToNSTimeInterval();
        v18 = v17;
        reachabilityUnrestrictedTimestamp = self->_reachabilityUnrestrictedTimestamp;
        CalContinuousIntervalToNSTimeInterval();
        v21 = v20;
        v22 = DALoggingwithCategory();
        v23 = MEMORY[0x277D03988];
        v24 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v22, v24))
        {
          *buf = 138412802;
          selfCopy5 = self;
          v37 = 2048;
          v38 = v16 + v18 - v21;
          v39 = 2048;
          v40 = v16 / 60.0;
          _os_log_impl(&dword_248524000, v22, v24, "%@: Network is reachable, but we triggered the reachability block just %f seconds ago, less than the %f minute limit. Disabling reachability for now; we'll enable it again later.", buf, 0x20u);
        }

        [(DAAgent *)self setDelayingReachabilityCallback:1];
        objc_initWeak(&location, self);
        v25 = self->_reachabilityCallbackSequence + 1;
        self->_reachabilityCallbackSequence = v25;
        v26 = self->_reachabilityUnrestrictedTimestamp;
        CalContinuousIntervalToNSTimeInterval();
        v28 = v27;
        v29 = DALoggingwithCategory();
        v30 = *(v23 + 5);
        if (os_log_type_enabled(v29, v30))
        {
          *buf = 138412546;
          selfCopy5 = self;
          v37 = 2048;
          v38 = v28;
          _os_log_impl(&dword_248524000, v29, v30, "%@: Re-enabling reachability in %f seconds", buf, 0x16u);
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __27__DAAgent_networkReachable__block_invoke;
        v31[3] = &unk_278F1CCF0;
        objc_copyWeak(&v32, &location);
        v33 = v25;
        [(DAAgent *)self _scheduleDelayedReachabilityCallback:v31 block:v28];
        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      else
      {
        v10 = DALoggingwithCategory();
        v11 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v10, v11))
        {
          *buf = 138412290;
          selfCopy5 = self;
          _os_log_impl(&dword_248524000, v10, v11, "%@: Network is reachable, but we've gotten too many reachability notifications without being able to actually sync this account. Disabling reachability and not trying again.", buf, 0xCu);
        }

        [(DAAgent *)self setSyncWhenReachable:0];
      }

      goto LABEL_7;
    }
  }

  self->_allowNextReachabilityCallback = 0;
  v12 = *&reachabilityCallbackDelays[consecutiveDelayedReachabilityCallbacks];
  self->_reachabilityUnrestrictedTimestamp = CalNSTimeIntervalToContinuousInterval() + v8;
  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412546;
    selfCopy5 = self;
    v37 = 1024;
    LODWORD(v38) = v12;
    _os_log_impl(&dword_248524000, v13, v14, "%@: Network is reachable, so triggering reachability block. Next reachability notification allowed in %i s", buf, 0x12u);
  }

  networkReachableBlock = [(DAAgent *)self networkReachableBlock];
  networkReachableBlock[2]();

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
}

void __27__DAAgent_networkReachable__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 33) == 1 && WeakRetained[7] == *(a1 + 40))
  {
    if ([WeakRetained syncWhenReachable] && (objc_msgSend(v3, "networkReachableBlock"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v5, v6))
      {
        v11 = 138412290;
        v12 = v3;
        v7 = "%@: No longer delaying reachability callbacks. If the network is still reachable, we should try syncing again soon.";
LABEL_10:
        _os_log_impl(&dword_248524000, v5, v6, v7, &v11, 0xCu);
      }
    }

    else
    {
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v5, v6))
      {
        v11 = 138412290;
        v12 = v3;
        v7 = "%@: No longer delaying reachability callbacks, but that doesn't matter because we no longer need reachability callbacks.";
        goto LABEL_10;
      }
    }

    v8 = reachabilityCallbackDelays[v3[6]];
    v9 = CalApproximateContinuousTime();
    *(v3 + 2) = CalNSTimeIntervalToContinuousInterval() + v9;
    *(v3 + 32) = 1;
    [v3 setDelayingReachabilityCallback:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleDelayedReachabilityCallback:(double)callback block:(id)block
{
  v4 = (callback * 1000000000.0);
  block = block;
  v5 = dispatch_time(0, v4);
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)setNetworkReachableBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->reachabilityLock);
  shouldBeMonitoringReachability = [(DAAgent *)self shouldBeMonitoringReachability];
  v6 = MEMORY[0x24C1D1770](blockCopy);

  networkReachableBlock = self->_networkReachableBlock;
  self->_networkReachableBlock = v6;

  shouldBeMonitoringReachability2 = [(DAAgent *)self shouldBeMonitoringReachability];
  if (shouldBeMonitoringReachability != shouldBeMonitoringReachability2)
  {
    [(DAAgent *)self startOrStopMonitoringReachability:shouldBeMonitoringReachability2];
  }

  os_unfair_lock_unlock(&self->reachabilityLock);
}

- (void)setSyncWhenReachable:(BOOL)reachable
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->reachabilityLock);
  shouldBeMonitoringReachability = [(DAAgent *)self shouldBeMonitoringReachability];
  if (!reachable && self->_syncWhenReachable)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v11 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_248524000, v6, v7, "%@: syncWhenReachable set to NO; disabling reachability and resetting delay.", &v11, 0xCu);
    }

    v8 = self->_reachabilityCallbackSequence + 1;
    self->_consecutiveDelayedReachabilityCallbacks = 0;
    self->_reachabilityCallbackSequence = v8;
    self->_reachabilityUnrestrictedTimestamp = 0;
    *&self->_allowNextReachabilityCallback = 0;
  }

  self->_syncWhenReachable = reachable;
  shouldBeMonitoringReachability2 = [(DAAgent *)self shouldBeMonitoringReachability];
  if (shouldBeMonitoringReachability != shouldBeMonitoringReachability2)
  {
    [(DAAgent *)self startOrStopMonitoringReachability:shouldBeMonitoringReachability2];
  }

  os_unfair_lock_unlock(&self->reachabilityLock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDelayingReachabilityCallback:(BOOL)callback
{
  os_unfair_lock_lock(&self->reachabilityLock);
  shouldBeMonitoringReachability = [(DAAgent *)self shouldBeMonitoringReachability];
  self->_delayingReachabilityCallback = callback;
  shouldBeMonitoringReachability2 = [(DAAgent *)self shouldBeMonitoringReachability];
  if (shouldBeMonitoringReachability != shouldBeMonitoringReachability2)
  {
    [(DAAgent *)self startOrStopMonitoringReachability:shouldBeMonitoringReachability2];
  }

  os_unfair_lock_unlock(&self->reachabilityLock);
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(DAAgent *)self setIsMonitoring:0];
  blockCopy[2](blockCopy, self);
}

- (void)shutdown
{
  account = [(DAAgent *)self account];
  [account shutdown];

  account2 = [(DAAgent *)self account];
  [account2 removeFromCoreDAVLoggingDelegates];

  [(DAAgent *)self setAccount:0];
}

- (NSString)publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  account = [(DAAgent *)self account];
  backingAccountInfo = [account backingAccountInfo];
  identifier = [backingAccountInfo identifier];
  v8 = [v3 stringWithFormat:@"%@ %@", v4, identifier];

  return v8;
}

- (void)saveXpcActivity:(id)activity
{
  activityCopy = activity;
  account = [(DAAgent *)self account];
  [account saveXpcActivity:activityCopy];
}

- (int)preferredEventDaysToSync
{
  mEMORY[0x277CF74E0] = [MEMORY[0x277CF74E0] shared];
  get_kCalPreferredDaysToSyncKey = [mEMORY[0x277CF74E0] get_kCalPreferredDaysToSyncKey];

  return get_kCalPreferredDaysToSyncKey;
}

- (int)preferredToDoDaysToSync
{
  mEMORY[0x277CF74E0] = [MEMORY[0x277CF74E0] shared];
  get_kCalRemindersPreferredDaysToSyncKey = [mEMORY[0x277CF74E0] get_kCalRemindersPreferredDaysToSyncKey];

  return get_kCalRemindersPreferredDaysToSyncKey;
}

@end