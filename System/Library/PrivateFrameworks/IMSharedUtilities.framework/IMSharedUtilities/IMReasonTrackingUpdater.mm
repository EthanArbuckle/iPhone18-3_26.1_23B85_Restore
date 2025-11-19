@interface IMReasonTrackingUpdater
- (IMReasonTrackingUpdater)initWithLogHandle:(id)a3 delegate:(id)a4;
- (IMReasonTrackingUpdaterDelegate)delegate;
- (id)description;
- (void)_handleReasonsForHoldingUpdatesChangeForReason:(id)a3 updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)a4;
- (void)_scheduleDeferredUpdateFollowingHoldForReason:(id)a3;
- (void)_triggerNeedsUpdateFollowingHoldForReason:(id)a3;
- (void)beginHoldingUpdatesForReason:(id)a3;
- (void)cancelAllPendingDeferredUpdates;
- (void)endAllHoldsOnUpdatesForReason:(id)a3 updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)a4;
- (void)endHoldingUpdatesForAllReasonsWithPotentialUpdateDeferred:(BOOL)a3;
- (void)endHoldingUpdatesForReason:(id)a3 updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)a4;
- (void)setNeedsDeferredUpdateWithReason:(id)a3;
- (void)updateImmediatelyWithReason:(id)a3;
@end

@implementation IMReasonTrackingUpdater

- (IMReasonTrackingUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IMReasonTrackingUpdater)initWithLogHandle:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = IMReasonTrackingUpdater;
  v9 = [(IMReasonTrackingUpdater *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logHandle, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    reasonsForNeedsUpdates = v10->_reasonsForNeedsUpdates;
    v10->_reasonsForNeedsUpdates = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    reasonsForHoldingUpdates = v10->_reasonsForHoldingUpdates;
    v10->_reasonsForHoldingUpdates = v13;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMReasonTrackingUpdater;
  v4 = [(IMReasonTrackingUpdater *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ reasonsForNeedsUpdates: %@ reasonsForHoldingUpdates: %@", v4, self->_reasonsForNeedsUpdates, self->_reasonsForHoldingUpdates];

  return v5;
}

- (void)setNeedsDeferredUpdateWithReason:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Deferred update needed for reason: %{public}@", &v6, 0xCu);
  }

  [(NSCountedSet *)self->_reasonsForNeedsUpdates addObject:v4];
  [(IMReasonTrackingUpdater *)self _scheduleDeferredUpdateFollowingHoldForReason:0];
}

- (void)updateImmediatelyWithReason:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Immediate update needed for reason: %{public}@", &v6, 0xCu);
  }

  [(NSCountedSet *)self->_reasonsForNeedsUpdates addObject:v4];
  [(IMReasonTrackingUpdater *)self _triggerNeedsUpdateFollowingHoldForReason:0];
}

- (void)_scheduleDeferredUpdateFollowingHoldForReason:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(IMReasonTrackingUpdater *)self isHoldingUpdates])
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
      v14 = 138543362;
      v15 = reasonsForHoldingUpdates;
      v7 = "Did not schedule a deferred update because we are stil holding updates for reasons: %{public}@";
      v8 = logHandle;
      v9 = 12;
LABEL_7:
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v7, &v14, v9);
    }
  }

  else
  {
    hasPendingDeferredUpdate = self->_hasPendingDeferredUpdate;
    v11 = self->_logHandle;
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (hasPendingDeferredUpdate)
    {
      if (v12)
      {
        LOWORD(v14) = 0;
        v7 = "Already have a pending deffered update, not necessary to schedule an additional deferred update";
        v8 = v11;
        v9 = 2;
        goto LABEL_7;
      }
    }

    else
    {
      if (v12)
      {
        reasonsForNeedsUpdates = self->_reasonsForNeedsUpdates;
        v14 = 138543618;
        v15 = reasonsForNeedsUpdates;
        v16 = 2114;
        v17 = v4;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Scheduling a deffered update for reasons: %{public}@ following hold for reason: %{public}@", &v14, 0x16u);
      }

      self->_hasPendingDeferredUpdate = 1;
      [(IMReasonTrackingUpdater *)self performSelector:sel__triggerNeedsUpdateFollowingHoldForReason_ withObject:v4 afterDelay:0.0];
    }
  }
}

- (void)_triggerNeedsUpdateFollowingHoldForReason:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_hasPendingDeferredUpdate = 0;
  if ([(IMReasonTrackingUpdater *)self isHoldingUpdates])
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
      v14 = 138543362;
      v15 = reasonsForHoldingUpdates;
      v7 = "Did not trigger an update because we are holding updates for reasons: %{public}@";
      v8 = logHandle;
      v9 = 12;
LABEL_10:
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v7, &v14, v9);
    }
  }

  else if ([(IMReasonTrackingUpdater *)self needsUpdate])
  {
    v10 = [(NSCountedSet *)self->_reasonsForNeedsUpdates copy];
    [(NSCountedSet *)self->_reasonsForNeedsUpdates removeAllObjects];
    v11 = self->_logHandle;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Triggering an update for reasons: %{public}@ following hold for reason: %{public}@", &v14, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reasonTrackingUpdater:self needsUpdateForReasons:v10 followingHoldForReason:v4];
  }

  else
  {
    v13 = self->_logHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v7 = "Did not trigger an update because there was no pending update reason";
      v8 = v13;
      v9 = 2;
      goto LABEL_10;
    }
  }
}

- (void)beginHoldingUpdatesForReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IMReasonTrackingUpdater *)self isHoldingUpdates];
  [(NSCountedSet *)self->_reasonsForHoldingUpdates addObject:v4];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = reasonsForHoldingUpdates;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Begin holding updates for reason %{public}@ allHoldReasons: %{public}@", &v9, 0x16u);
  }

  if (!v5)
  {
    v8 = [(IMReasonTrackingUpdater *)self delegate];
    [v8 reasonTrackingUpdater:self didBeginHoldingUpdatesWithInitialReason:v4];
  }
}

- (void)endHoldingUpdatesForReason:(id)a3 updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(NSCountedSet *)self->_reasonsForHoldingUpdates removeObject:v6];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = reasonsForHoldingUpdates;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "End holding updates for reason %{public}@ remaining hold reasons: %{public}@", &v9, 0x16u);
  }

  [(IMReasonTrackingUpdater *)self _handleReasonsForHoldingUpdatesChangeForReason:v6 updateTriggeredIfNotHeldShouldBeDeferred:v4];
}

- (void)endAllHoldsOnUpdatesForReason:(id)a3 updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSCountedSet *)self->_reasonsForHoldingUpdates countForObject:v6];
  if (v7)
  {
    v8 = v7;
    do
    {
      [(NSCountedSet *)self->_reasonsForHoldingUpdates removeObject:v6];
      --v8;
    }

    while (v8);
  }

  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = reasonsForHoldingUpdates;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "End all holds on updates for reason %{public}@ remaining hold reasons: %{public}@", &v11, 0x16u);
  }

  [(IMReasonTrackingUpdater *)self _handleReasonsForHoldingUpdatesChangeForReason:v6 updateTriggeredIfNotHeldShouldBeDeferred:v4];
}

- (void)endHoldingUpdatesForAllReasonsWithPotentialUpdateDeferred:(BOOL)a3
{
  v3 = a3;
  p_reasonsForHoldingUpdates = &self->_reasonsForHoldingUpdates;
  if ([(NSCountedSet *)self->_reasonsForHoldingUpdates count])
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2968(p_reasonsForHoldingUpdates, logHandle);
    }

    v7 = [(NSCountedSet *)self->_reasonsForHoldingUpdates anyObject];
    [(NSCountedSet *)self->_reasonsForHoldingUpdates removeAllObjects];
    [(IMReasonTrackingUpdater *)self _handleReasonsForHoldingUpdatesChangeForReason:v7 updateTriggeredIfNotHeldShouldBeDeferred:v3];
  }
}

- (void)cancelAllPendingDeferredUpdates
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_hasPendingDeferredUpdate)
  {
    self->_hasPendingDeferredUpdate = 0;
    v3 = [(NSCountedSet *)self->_reasonsForNeedsUpdates copy];
    [(NSCountedSet *)self->_reasonsForNeedsUpdates removeAllObjects];
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Cancelling pending deferred update for reasons %{public}@. Update was already triggered externally.", &v5, 0xCu);
    }
  }
}

- (void)_handleReasonsForHoldingUpdatesChangeForReason:(id)a3 updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(IMReasonTrackingUpdater *)self isHoldingUpdates])
  {
    v7 = [(IMReasonTrackingUpdater *)self delegate];
    [v7 reasonTrackingUpdater:self didEndHoldingUpdatesWithFinalReason:v6];

    if ([(IMReasonTrackingUpdater *)self needsUpdate])
    {
      if (v4)
      {
        [(IMReasonTrackingUpdater *)self _scheduleDeferredUpdateFollowingHoldForReason:v6];
      }

      else
      {
        [(IMReasonTrackingUpdater *)self _triggerNeedsUpdateFollowingHoldForReason:v6];
      }
    }

    else
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "There are no remaining holds on updates, but an update is not currently needed.", v9, 2u);
      }
    }
  }
}

@end