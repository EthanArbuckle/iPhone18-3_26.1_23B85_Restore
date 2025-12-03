@interface HDAlertSuppressor
- (HDAlertSuppressor)initWithDaemon:(id)daemon;
- (id)createAndTakeAssertionForOwnerIdentifier:(id)identifier processBundleIdentifier:(id)bundleIdentifier;
- (uint64_t)_queue_clearSuppressionTimerForAssertion:(uint64_t)assertion;
- (void)_invalidateSuppressActivityAlertsForSuspendedProcess:(uint64_t)process;
- (void)_queue_suppressActivityAlertsForProcessIdentifier:(uint64_t)identifier;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)assertionManager:(id)manager assertionTaken:(id)taken;
- (void)dealloc;
- (void)processDidEnterBackground:(id)background;
- (void)processDidEnterForeground:(id)foreground;
- (void)processResumed:(id)resumed;
- (void)processSuspended:(id)suspended;
- (void)processTerminated:(id)terminated;
@end

@implementation HDAlertSuppressor

- (HDAlertSuppressor)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v14.receiver = self;
  v14.super_class = HDAlertSuppressor;
  v5 = [(HDAlertSuppressor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v6->_assertionManager;
    v6->_assertionManager = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    waitingForSuspension = v6->_waitingForSuspension;
    v6->_waitingForSuspension = v11;

    [(HDAssertionManager *)v6->_assertionManager addObserver:v6 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierAlertSuppression" queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  [(HDAssertionManager *)self->_assertionManager removeObserver:self forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierAlertSuppression"];
  v3.receiver = self;
  v3.super_class = HDAlertSuppressor;
  [(HDAlertSuppressor *)&v3 dealloc];
}

- (id)createAndTakeAssertionForOwnerIdentifier:(id)identifier processBundleIdentifier:(id)bundleIdentifier
{
  if (bundleIdentifier)
  {
    bundleIdentifierCopy = bundleIdentifier;
    identifierCopy = identifier;
    v8 = [_HDAlertSuppressorAssertion alloc];
    v9 = bundleIdentifierCopy;
    if (v8)
    {
      v15.receiver = v8;
      v15.super_class = _HDAlertSuppressorAssertion;
      v8 = [(HDAlertSuppressor *)&v15 initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierAlertSuppression" ownerIdentifier:identifierCopy];
      if (v8)
      {
        v10 = [v9 copy];
        processBundleIdentifier = v8->_processBundleIdentifier;
        v8->_processBundleIdentifier = v10;
      }
    }

    if ([(HDAssertionManager *)self->_assertionManager takeAssertion:v8])
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)assertionManager:(id)manager assertionTaken:(id)taken
{
  v26[2] = *MEMORY[0x277D85DE8];
  takenCopy = taken;
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAlertSuppressor.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"[assertion isKindOfClass:[_HDAlertSuppressorAssertion class]]"}];
  }

  v7 = takenCopy;
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 11);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC330];
  v12 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(handler) = 138412290;
    *(&handler + 4) = v10;
    _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "Alert suppressor starting for workout client: %@", &handler, 0xCu);
  }

  [(HDAlertSuppressor *)self _queue_clearSuppressionTimerForAssertion:v8];
  if ([(NSMutableSet *)self->_waitingForSuspension containsObject:v10])
  {
    _HKInitializeLogging();
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(handler) = 138412290;
      *(&handler + 4) = v10;
      _os_log_debug_impl(&dword_228986000, v13, OS_LOG_TYPE_DEBUG, "Starting an alert suppression again for app for which we were waiting to go to background: %@", &handler, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    processStateManager = [WeakRetained processStateManager];
    [processStateManager unregisterObserver:self forBundleIdentifier:v10];

    [(NSMutableSet *)self->_waitingForSuspension removeObject:v10];
  }

  [(HDAlertSuppressor *)self _queue_suppressActivityAlertsForProcessIdentifier:v10];
  v16 = v10;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  dispatch_source_set_timer(v17, 0, 0x8BB2C97000uLL, 0xDF8475800uLL);
  *&handler = MEMORY[0x277D85DD0];
  *(&handler + 1) = 3221225472;
  v23 = __75__HDAlertSuppressor__queue_startAlertSuppressionTimerForProcessIdentifier___block_invoke;
  v24 = &unk_2786177F8;
  v18 = v16;
  v25 = v18;
  objc_copyWeak(v26, &location);
  dispatch_source_set_event_handler(v17, &handler);
  dispatch_resume(v17);
  objc_destroyWeak(v26);

  objc_destroyWeak(&location);
  [(_HDAlertSuppressorAssertion *)v8 setKeepaliveTimer:v17];

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_clearSuppressionTimerForAssertion:(uint64_t)assertion
{
  v3 = a2;
  v4 = v3;
  if (assertion)
  {
    v6 = v3;
    dispatch_assert_queue_V2(*(assertion + 16));
    v4 = v6;
    if (v6)
    {
      v3 = *(v6 + 96);
      if (v3)
      {
        dispatch_source_cancel(v3);
        [(_HDAlertSuppressorAssertion *)v6 setKeepaliveTimer:?];
        v4 = v6;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_queue_suppressActivityAlertsForProcessIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = *(identifier + 16);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    WeakRetained = objc_loadWeakRetained((identifier + 8));
    alertSuppressionService = [WeakRetained alertSuppressionService];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
    [alertSuppressionService suppressActivityAlertsForIdentifier:v4 suppressionReason:0 timeoutUntilDate:v6];
  }
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v21 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_queue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAlertSuppressor.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"[assertion isKindOfClass:[_HDAlertSuppressorAssertion class]]"}];
  }

  v7 = invalidatedCopy;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    if (v7)
    {
      v16 = v7[11];
    }

    else
    {
      v16 = 0;
    }

    *buf = 138412290;
    v20 = v16;
    v17 = v8;
    _os_log_debug_impl(&dword_228986000, v17, OS_LOG_TYPE_DEBUG, "Alert suppressor stopping for workout client: %@", buf, 0xCu);
  }

  [(HDAlertSuppressor *)self _queue_clearSuppressionTimerForAssertion:v7];
  if (v7)
  {
    v9 = v7[11];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  dispatch_assert_queue_V2(self->_queue);
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    processStateManager = [WeakRetained processStateManager];

    if ([processStateManager isApplicationStateForegroundForBundleIdentifier:v10])
    {
      [processStateManager registerObserver:self forBundleIdentifier:v10];
      [(NSMutableSet *)self->_waitingForSuspension addObject:v10];
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_daemon);
      alertSuppressionService = [v13 alertSuppressionService];
      [alertSuppressionService invalidateActivityAlertSuppressionForIdentifier:v10];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HDAlertSuppressor__queue_startAlertSuppressionTimerForProcessIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_INFO, "Periodic alert suppression for workout client: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(HDAlertSuppressor *)WeakRetained _queue_suppressActivityAlertsForProcessIdentifier:?];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)processSuspended:(id)suspended
{
  v9 = *MEMORY[0x277D85DE8];
  suspendedCopy = suspended;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = suspendedCopy;
    _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "Activity alert suppression. Suspended: %@", &v7, 0xCu);
  }

  [(HDAlertSuppressor *)self _invalidateSuppressActivityAlertsForSuspendedProcess:suspendedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateSuppressActivityAlertsForSuspendedProcess:(uint64_t)process
{
  v3 = a2;
  v4 = v3;
  if (process)
  {
    v5 = *(process + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__HDAlertSuppressor__invalidateSuppressActivityAlertsForSuspendedProcess___block_invoke;
    v6[3] = &unk_278613920;
    v7 = v3;
    processCopy = process;
    dispatch_async(v5, v6);
  }
}

- (void)processTerminated:(id)terminated
{
  v9 = *MEMORY[0x277D85DE8];
  terminatedCopy = terminated;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = terminatedCopy;
    _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "Activity alert suppression. Terminated: %@", &v7, 0xCu);
  }

  [(HDAlertSuppressor *)self _invalidateSuppressActivityAlertsForSuspendedProcess:terminatedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processDidEnterBackground:(id)background
{
  v9 = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = backgroundCopy;
    _os_log_debug_impl(&dword_228986000, v5, OS_LOG_TYPE_DEBUG, "Activity alert suppression. Background: %@", &v7, 0xCu);
  }

  [(HDAlertSuppressor *)self _invalidateSuppressActivityAlertsForSuspendedProcess:backgroundCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processResumed:(id)resumed
{
  v8 = *MEMORY[0x277D85DE8];
  resumedCopy = resumed;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = resumedCopy;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "Activity alert suppression. Resumed: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)processDidEnterForeground:(id)foreground
{
  v8 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = foregroundCopy;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "Activity alert suppression. Foreground: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HDAlertSuppressor__invalidateSuppressActivityAlertsForSuspendedProcess___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC330];
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_INFO, "Invalidating activity alert suppression after process %@ was suspended", &v13, 0xCu);
  }

  if (([*(*(a1 + 40) + 32) containsObject:*(a1 + 32)] & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 138543362;
      v14 = v12;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Invalidating activity alert supression for wrong bundle identifier. received: %{public}@", &v13, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v7 = [WeakRetained alertSuppressionService];
  [v7 invalidateActivityAlertSuppressionForIdentifier:*(a1 + 32)];

  v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v9 = [v8 processStateManager];
  [v9 unregisterObserver:*(a1 + 40) forBundleIdentifier:*(a1 + 32)];

  result = [*(*(a1 + 40) + 32) removeObject:*(a1 + 32)];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end