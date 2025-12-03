@interface IMReasonTrackingUpdater
- (IMReasonTrackingUpdater)initWithLogHandle:(id)handle delegate:(id)delegate;
- (IMReasonTrackingUpdaterDelegate)delegate;
- (id)description;
- (void)_handleReasonsForHoldingUpdatesChangeForReason:(id)reason updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)deferred;
- (void)_scheduleDeferredUpdateFollowingHoldForReason:(id)reason;
- (void)_triggerNeedsUpdateFollowingHoldForReason:(id)reason;
- (void)beginHoldingUpdatesForReason:(id)reason;
- (void)cancelAllPendingDeferredUpdates;
- (void)endAllHoldsOnUpdatesForReason:(id)reason updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)deferred;
- (void)endHoldingUpdatesForAllReasonsWithPotentialUpdateDeferred:(BOOL)deferred;
- (void)endHoldingUpdatesForReason:(id)reason updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)deferred;
- (void)setNeedsDeferredUpdateWithReason:(id)reason;
- (void)updateImmediatelyWithReason:(id)reason;
@end

@implementation IMReasonTrackingUpdater

- (IMReasonTrackingUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IMReasonTrackingUpdater)initWithLogHandle:(id)handle delegate:(id)delegate
{
  handleCopy = handle;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = IMReasonTrackingUpdater;
  v9 = [(IMReasonTrackingUpdater *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logHandle, handle);
    objc_storeWeak(&v10->_delegate, delegateCopy);
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

- (void)setNeedsDeferredUpdateWithReason:(id)reason
{
  v8 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = reasonCopy;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Deferred update needed for reason: %{public}@", &v6, 0xCu);
  }

  [(NSCountedSet *)self->_reasonsForNeedsUpdates addObject:reasonCopy];
  [(IMReasonTrackingUpdater *)self _scheduleDeferredUpdateFollowingHoldForReason:0];
}

- (void)updateImmediatelyWithReason:(id)reason
{
  v8 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = reasonCopy;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Immediate update needed for reason: %{public}@", &v6, 0xCu);
  }

  [(NSCountedSet *)self->_reasonsForNeedsUpdates addObject:reasonCopy];
  [(IMReasonTrackingUpdater *)self _triggerNeedsUpdateFollowingHoldForReason:0];
}

- (void)_scheduleDeferredUpdateFollowingHoldForReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
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
        v17 = reasonCopy;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Scheduling a deffered update for reasons: %{public}@ following hold for reason: %{public}@", &v14, 0x16u);
      }

      self->_hasPendingDeferredUpdate = 1;
      [(IMReasonTrackingUpdater *)self performSelector:sel__triggerNeedsUpdateFollowingHoldForReason_ withObject:reasonCopy afterDelay:0.0];
    }
  }
}

- (void)_triggerNeedsUpdateFollowingHoldForReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
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
      v17 = reasonCopy;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Triggering an update for reasons: %{public}@ following hold for reason: %{public}@", &v14, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reasonTrackingUpdater:self needsUpdateForReasons:v10 followingHoldForReason:reasonCopy];
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

- (void)beginHoldingUpdatesForReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  isHoldingUpdates = [(IMReasonTrackingUpdater *)self isHoldingUpdates];
  [(NSCountedSet *)self->_reasonsForHoldingUpdates addObject:reasonCopy];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
    v9 = 138543618;
    v10 = reasonCopy;
    v11 = 2114;
    v12 = reasonsForHoldingUpdates;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "Begin holding updates for reason %{public}@ allHoldReasons: %{public}@", &v9, 0x16u);
  }

  if (!isHoldingUpdates)
  {
    delegate = [(IMReasonTrackingUpdater *)self delegate];
    [delegate reasonTrackingUpdater:self didBeginHoldingUpdatesWithInitialReason:reasonCopy];
  }
}

- (void)endHoldingUpdatesForReason:(id)reason updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  [(NSCountedSet *)self->_reasonsForHoldingUpdates removeObject:reasonCopy];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
    v9 = 138543618;
    v10 = reasonCopy;
    v11 = 2114;
    v12 = reasonsForHoldingUpdates;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "End holding updates for reason %{public}@ remaining hold reasons: %{public}@", &v9, 0x16u);
  }

  [(IMReasonTrackingUpdater *)self _handleReasonsForHoldingUpdatesChangeForReason:reasonCopy updateTriggeredIfNotHeldShouldBeDeferred:deferredCopy];
}

- (void)endAllHoldsOnUpdatesForReason:(id)reason updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  v15 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v7 = [(NSCountedSet *)self->_reasonsForHoldingUpdates countForObject:reasonCopy];
  if (v7)
  {
    v8 = v7;
    do
    {
      [(NSCountedSet *)self->_reasonsForHoldingUpdates removeObject:reasonCopy];
      --v8;
    }

    while (v8);
  }

  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    reasonsForHoldingUpdates = self->_reasonsForHoldingUpdates;
    v11 = 138543618;
    v12 = reasonCopy;
    v13 = 2114;
    v14 = reasonsForHoldingUpdates;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "End all holds on updates for reason %{public}@ remaining hold reasons: %{public}@", &v11, 0x16u);
  }

  [(IMReasonTrackingUpdater *)self _handleReasonsForHoldingUpdatesChangeForReason:reasonCopy updateTriggeredIfNotHeldShouldBeDeferred:deferredCopy];
}

- (void)endHoldingUpdatesForAllReasonsWithPotentialUpdateDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  p_reasonsForHoldingUpdates = &self->_reasonsForHoldingUpdates;
  if ([(NSCountedSet *)self->_reasonsForHoldingUpdates count])
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2968(p_reasonsForHoldingUpdates, logHandle);
    }

    anyObject = [(NSCountedSet *)self->_reasonsForHoldingUpdates anyObject];
    [(NSCountedSet *)self->_reasonsForHoldingUpdates removeAllObjects];
    [(IMReasonTrackingUpdater *)self _handleReasonsForHoldingUpdatesChangeForReason:anyObject updateTriggeredIfNotHeldShouldBeDeferred:deferredCopy];
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

- (void)_handleReasonsForHoldingUpdatesChangeForReason:(id)reason updateTriggeredIfNotHeldShouldBeDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  reasonCopy = reason;
  if (![(IMReasonTrackingUpdater *)self isHoldingUpdates])
  {
    delegate = [(IMReasonTrackingUpdater *)self delegate];
    [delegate reasonTrackingUpdater:self didEndHoldingUpdatesWithFinalReason:reasonCopy];

    if ([(IMReasonTrackingUpdater *)self needsUpdate])
    {
      if (deferredCopy)
      {
        [(IMReasonTrackingUpdater *)self _scheduleDeferredUpdateFollowingHoldForReason:reasonCopy];
      }

      else
      {
        [(IMReasonTrackingUpdater *)self _triggerNeedsUpdateFollowingHoldForReason:reasonCopy];
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