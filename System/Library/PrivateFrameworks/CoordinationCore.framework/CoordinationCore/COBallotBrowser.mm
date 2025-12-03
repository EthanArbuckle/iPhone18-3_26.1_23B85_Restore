@interface COBallotBrowser
- (COBallotBrowser)initWithDiscoveryDelay:(double)delay;
- (CORapportBrowser)rapportBrowser;
- (CORapportTransport)sourceTransport;
- (id)addObserverUsingBlock:(id)block;
- (id)registeredObservers;
- (void)_addToQueuedRecords:(id)records;
- (void)_configureTimer;
- (void)_disableTimer_unsafe;
- (void)_enableTimer_unsafe;
- (void)_informObserversOfDiscoveredRecord:(id)record;
- (void)_timerFired;
- (void)_withLock:(id)lock;
- (void)clearRecords;
- (void)dealloc;
- (void)discoveryUsingBallot:(id)ballot;
- (void)discoveryUsingOnDemandNodeCreationRequest:(id)request;
- (void)removeObserver:(id)observer;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation COBallotBrowser

- (COBallotBrowser)initWithDiscoveryDelay:(double)delay
{
  v18.receiver = self;
  v18.super_class = COBallotBrowser;
  v4 = [(COBallotBrowser *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_discoveryDelay = fabs(delay);
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    timer = v5->_timer;
    v5->_timer = v6;

    v8 = objc_alloc_init(COBrowserObserverSet);
    observerSet = v5->_observerSet;
    v5->_observerSet = v8;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    envelopes = v5->_envelopes;
    v5->_envelopes = dictionary;

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.coordination.ballotbrowser.%p", v5];
    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    workQueue = v5->_workQueue;
    v5->_workQueue = v15;

    [(COBallotBrowser *)v5 _configureTimer];
  }

  return v5;
}

- (void)dealloc
{
  timer = [(COBallotBrowser *)self timer];
  dispatch_source_cancel(timer);

  [(COBallotBrowser *)self setTimerEnabled:0];
  v4.receiver = self;
  v4.super_class = COBallotBrowser;
  [(COBallotBrowser *)&v4 dealloc];
}

- (void)clearRecords
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __31__COBallotBrowser_clearRecords__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COBallotBrowser *)self _withLock:v2];
}

uint64_t __31__COBallotBrowser_clearRecords__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%p clearing discovery records", &v8, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [v4 setEnvelopes:v5];

  result = [*(a1 + 32) _disableTimer_unsafe];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)addObserverUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [[COBrowserObserver alloc] initWithBlock:blockCopy];

  observerSet = [(COBallotBrowser *)self observerSet];
  [observerSet addObserver:v5];

  return v5;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerSet = [(COBallotBrowser *)self observerSet];
  [observerSet removeObserver:observerCopy];
}

- (id)registeredObservers
{
  observerSet = [(COBallotBrowser *)self observerSet];
  observers = [observerSet observers];

  return observers;
}

- (CORapportTransport)sourceTransport
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__COBallotBrowser_sourceTransport__block_invoke;
  v4[3] = &unk_278E15950;
  v4[4] = self;
  v4[5] = &v5;
  [(COBallotBrowser *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __34__COBallotBrowser_sourceTransport__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));

  if (!WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 64));
    v4 = v3;
    if (v3)
    {
      v5 = [v3 sourceTransport];
      objc_storeWeak((*(a1 + 32) + 56), v5);
    }
  }

  v6 = objc_loadWeakRetained((*(a1 + 32) + 56));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x2821F96F8]();
}

- (void)startWithCompletionHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p Ballot browser started", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __23__COBallotBrowser_stop__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COBallotBrowser *)self _withLock:v2];
}

uint64_t __23__COBallotBrowser_stop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [v2 setEnvelopes:v3];

  v4 = *(a1 + 32);

  return [v4 _disableTimer_unsafe];
}

- (void)discoveryUsingBallot:(id)ballot
{
  discovery = [ballot discovery];
  sourceTransport = [(COBallotBrowser *)self sourceTransport];
  if (sourceTransport)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__COBallotBrowser_discoveryUsingBallot___block_invoke;
    v7[3] = &unk_278E15728;
    v8 = discovery;
    v9 = sourceTransport;
    selfCopy = self;
    [(COBallotBrowser *)self _withLock:v7];

    v6 = v8;
  }

  else
  {
    v6 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(COBallotBrowser *)self discoveryUsingBallot:v6];
    }
  }
}

void __40__COBallotBrowser_discoveryUsingBallot___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) objectForKey:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 setSourceTransport:*(a1 + 40)];
        [*(a1 + 48) _addToQueuedRecords:v7];
        [*(a1 + 48) _enableTimer_unsafe];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)discoveryUsingOnDemandNodeCreationRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sourceTransport = [(COBallotBrowser *)self sourceTransport];
  if (sourceTransport)
  {
    request = [requestCopy request];
    if ([request conformsToProtocol:&unk_2857D4880])
    {
      listeningPort = [request listeningPort];
    }

    else
    {
      listeningPort = 0;
    }

    _sendingConstituent = [request _sendingConstituent];
    rapportOptions = [request rapportOptions];
    v10 = [rapportOptions objectForKey:*MEMORY[0x277D442C8]];
    v11 = [rapportOptions objectForKey:*MEMORY[0x277D442D0]];
    v12 = [rapportOptions objectForKey:*MEMORY[0x277D44298]];
    if (_sendingConstituent && [v10 length] && objc_msgSend(v11, "length") && objc_msgSend(v12, "length"))
    {
      v13 = [CODiscoveryRecord discoveryRecordWithConstituent:_sendingConstituent rapportIdentifier:v10 IDSIdentifier:v11 peerAddress:v12 port:listeningPort];
      [v13 setSourceTransport:sourceTransport];
      v17 = v13;
      [v13 setUnhandledRequest:requestCopy];
      v14 = COCoreLogForCategory(14);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy = self;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p created discovery record %@ using election request", buf, 0x16u);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__COBallotBrowser_discoveryUsingOnDemandNodeCreationRequest___block_invoke;
      v18[3] = &unk_278E156B0;
      v18[4] = self;
      v19 = v17;
      v15 = v17;
      [(COBallotBrowser *)self _withLock:v18];
    }
  }

  else
  {
    request = COCoreLogForCategory(14);
    if (os_log_type_enabled(request, OS_LOG_TYPE_ERROR))
    {
      [(COBallotBrowser *)self discoveryUsingOnDemandNodeCreationRequest:request];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_configureTimer
{
  timer = [(COBallotBrowser *)self timer];
  dispatch_source_set_timer(timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COBallotBrowser *)self setTimerEnabled:0];
  objc_initWeak(&location, self);
  timer2 = [(COBallotBrowser *)self timer];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __34__COBallotBrowser__configureTimer__block_invoke;
  v9 = &unk_278E15B10;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(timer2, &v6);

  v5 = [(COBallotBrowser *)self timer:v6];
  dispatch_activate(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__COBallotBrowser__configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timerFired];
    WeakRetained = v2;
  }
}

- (void)_enableTimer_unsafe
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(COBallotBrowser *)self isTimerEnabled])
  {
    [(COBallotBrowser *)self setTimerEnabled:1];
    v3 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      discoveryDelay = self->_discoveryDelay;
      v10 = 134218240;
      selfCopy = self;
      v12 = 2048;
      v13 = discoveryDelay;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p enabling timer with discovery delay %f", &v10, 0x16u);
    }

    [(COBallotBrowser *)self discoveryDelay];
    v6 = (v5 * 1000000000.0);
    timer = [(COBallotBrowser *)self timer];
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(timer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_disableTimer_unsafe
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(COBallotBrowser *)self isTimerEnabled])
  {
    [(COBallotBrowser *)self setTimerEnabled:0];
    timer = [(COBallotBrowser *)self timer];
    dispatch_source_set_timer(timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)_timerFired
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__COBallotBrowser__timerFired__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COBallotBrowser *)self _withLock:v2];
}

void __30__COBallotBrowser__timerFired__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  if ([*(a1 + 32) isTimerEnabled])
  {
    [*v1 setTimerEnabled:0];
    v2 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __30__COBallotBrowser__timerFired__block_invoke_cold_1(v1, v2);
    }

    [*v1 discoveryDelay];
    v4 = v3;
    v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [*v1 envelopes];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = v5 - (v4 * 1000000000.0);
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          v14 = [*v1 envelopes];
          v15 = [v14 objectForKey:v13];

          if ([v15 received] <= v10)
          {
            v16 = *v1;
            v17 = [v15 record];
            [v16 _informObserversOfDiscoveredRecord:v17];
          }

          else
          {
            [v6 setObject:v15 forKey:v13];
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
    [*v1 setEnvelopes:v18];
    v19 = [*v1 envelopes];
    v20 = [v19 count];

    if (v20)
    {
      [*v1 _enableTimer_unsafe];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addToQueuedRecords:(id)records
{
  recordsCopy = records;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [CODiscoveryEnvelope envelopeWithRecord:recordsCopy];
  iDSIdentifier = [recordsCopy IDSIdentifier];
  envelopes = [(COBallotBrowser *)self envelopes];
  v8 = [envelopes objectForKey:iDSIdentifier];

  envelopes2 = [(COBallotBrowser *)self envelopes];
  v10 = [envelopes2 mutableCopy];

  if (!v8)
  {
LABEL_7:
    [v10 setObject:v5 forKey:iDSIdentifier];
    [(COBallotBrowser *)self setEnvelopes:v10];
    goto LABEL_8;
  }

  record = [v8 record];
  constituent = [record constituent];

  constituent2 = [recordsCopy constituent];
  if (([constituent isEqual:constituent2] & 1) == 0)
  {
    v14 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(COBallotBrowser *)self _addToQueuedRecords:recordsCopy, v14];
    }

    [v10 removeObjectForKey:iDSIdentifier];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_informObserversOfDiscoveredRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v29 = 2112;
    v30 = recordCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p Ballot Browser informing observers about record %@", buf, 0x16u);
  }

  rapportBrowser = [(COBallotBrowser *)self rapportBrowser];
  companionLinkClientFactory = [rapportBrowser companionLinkClientFactory];

  rapportBrowser2 = [(COBallotBrowser *)self rapportBrowser];
  sourceTransport = [rapportBrowser2 sourceTransport];

  companionLinkDevice = [recordCopy companionLinkDevice];
  iDSIdentifier = [recordCopy IDSIdentifier];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__COBallotBrowser__informObserversOfDiscoveredRecord___block_invoke;
  v22[3] = &unk_278E162E8;
  v23 = companionLinkClientFactory;
  v24 = companionLinkDevice;
  v25 = iDSIdentifier;
  v26 = sourceTransport;
  v12 = sourceTransport;
  v13 = iDSIdentifier;
  v14 = companionLinkDevice;
  v15 = companionLinkClientFactory;
  [recordCopy setCompanionLinkProvider:v22];
  observerSet = [(COBallotBrowser *)self observerSet];
  observers = [observerSet observers];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__COBallotBrowser__informObserversOfDiscoveredRecord___block_invoke_2;
  v20[3] = &unk_278E16310;
  v21 = recordCopy;
  v18 = recordCopy;
  [observers enumerateObjectsUsingBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

id __54__COBallotBrowser__informObserversOfDiscoveredRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) companionLinkClientForDevice:*(a1 + 40) withIDSIdentifier:*(a1 + 48)];
  v3 = [*(a1 + 56) client];
  v4 = [v3 dispatchQueue];
  [v2 setDispatchQueue:v4];

  return v2;
}

void __54__COBallotBrowser__informObserversOfDiscoveredRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 block];
  v3[2](v3, 1, *(a1 + 32));
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (CORapportBrowser)rapportBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->_rapportBrowser);

  return WeakRetained;
}

- (void)discoveryUsingBallot:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%p no source transport. Ignoring discovery using ballot", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)discoveryUsingOnDemandNodeCreationRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%p no source transport. Ignoring discovery using election request", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __30__COBallotBrowser__timerFired__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = [*a1 envelopes];
  v6 = 134218240;
  v7 = v3;
  v8 = 2048;
  v9 = [v4 count];
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p timer fired. Envelope count = %lu", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addToQueuedRecords:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p updating discovery record to queue %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end