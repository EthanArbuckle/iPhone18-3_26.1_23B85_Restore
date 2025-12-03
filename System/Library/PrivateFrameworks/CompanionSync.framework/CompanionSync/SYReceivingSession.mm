@interface SYReceivingSession
- (BOOL)_hasCompleted;
- (BOOL)_hasStarted;
- (BOOL)_postAsyncResetRequestReturningError:(id *)error;
- (BOOL)canRestart;
- (BOOL)canRollback;
- (BOOL)isResetSync;
- (BOOL)metadataModified;
- (BOOL)wasCancelled;
- (SYReceivingSession)initWithService:(id)service isReset:(BOOL)reset metadata:(id)metadata;
- (id)_newMessageHeader;
- (unsigned)state;
- (void)_continue;
- (void)_handleEndSession:(id)session response:(id)response completion:(id)completion;
- (void)_handleRestartSession:(id)session response:(id)response completion:(id)completion;
- (void)_handleSyncBatch:(id)batch response:(id)response completion:(id)completion;
- (void)_installStateListener;
- (void)_installTimers;
- (void)_midStreamErrorHandled;
- (void)_notifyErrorAndShutdown;
- (void)_processNextState;
- (void)_sendEndSessionAndError:(id)error;
- (void)_sessionCancelled;
- (void)_setCancelled;
- (void)_setCompleted;
- (void)_setStarted;
- (void)_setStateQuietly:(unsigned int)quietly;
- (void)_tweakMessageHeader:(id)header;
- (void)cancelWithError:(id)error;
- (void)setCanRestart:(BOOL)restart;
- (void)setCanRollback:(BOOL)rollback;
- (void)setDelegate:(id)delegate;
- (void)setSessionMetadata:(id)metadata;
- (void)setState:(unsigned int)state;
- (void)start:(id)start;
@end

@implementation SYReceivingSession

- (SYReceivingSession)initWithService:(id)service isReset:(BOOL)reset metadata:(id)metadata
{
  resetCopy = reset;
  serviceCopy = service;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = SYReceivingSession;
  v10 = [(SYSession *)&v20 initWithService:serviceCopy];
  v11 = v10;
  if (v10)
  {
    v10->_flagsLock._os_unfair_lock_opaque = 0;
    serviceActivity = [serviceCopy serviceActivity];
    v13 = _os_activity_create(&dword_1DF835000, "SYSession (Incoming)", serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v11->_sessionActivity;
    v11->_sessionActivity = v13;

    if (resetCopy)
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

    *&v11->_flags = *&v11->_flags & 0xFF80 | v15;
    v16 = objc_opt_new();
    receivedBatchIndices = v11->_receivedBatchIndices;
    v11->_receivedBatchIndices = v16;

    if (metadataCopy)
    {
      [(SYReceivingSession *)v11 setSessionMetadata:metadataCopy];
      *&v11->_flags &= ~0x400u;
    }

    v18 = v11;
  }

  return v11;
}

- (void)setDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = SYReceivingSession;
  delegateCopy = delegate;
  [(SYSession *)&v8 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = dispatch_group_create();
    asyncResetGroupToWaitOn = self->_asyncResetGroupToWaitOn;
    self->_asyncResetGroupToWaitOn = v6;
  }
}

- (void)setSessionMetadata:(id)metadata
{
  metadataCopy = metadata;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  v5.receiver = self;
  v5.super_class = SYReceivingSession;
  [(SYSession *)&v5 setSessionMetadata:metadataCopy];
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x400u;
  os_unfair_lock_unlock(&self->_flagsLock);
  os_activity_scope_leave(&state);
}

- (BOOL)metadataModified
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 10) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (unsigned)state
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  return flags & 0xF;
}

- (void)setState:(unsigned int)state
{
  v17 = *MEMORY[0x1E69E9840];
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v10);
  os_unfair_lock_lock(&self->_flagsLock);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->_flags & 0xF;
    *buf = 138543874;
    selfCopy = self;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    stateCopy = state;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Set state from %{companionsync:SYSessionState}d to %{companionsync:SYSessionState}d", buf, 0x18u);
  }

  *&self->_flags = *&self->_flags & 0xFFF0 | state & 0xF;
  stateUpdateSource = self->_stateUpdateSource;
  if (stateUpdateSource)
  {
    if (!dispatch_source_testcancel(self->_stateUpdateSource))
    {
      dispatch_source_merge_data(stateUpdateSource, 1uLL);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "No dispatch source set up for state-change notifications!", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_flagsLock);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setStateQuietly:(unsigned int)quietly
{
  v15 = *MEMORY[0x1E69E9840];
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v8);
  os_unfair_lock_lock(&self->_flagsLock);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->_flags & 0xF;
    *buf = 138543874;
    selfCopy = self;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    quietlyCopy = quietly;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state (quietly) from %{companionsync:SYSessionState}d to %{companionsync:SYSessionState}d", buf, 0x18u);
  }

  *&self->_flags = *&self->_flags & 0xFFF0 | quietly & 0xF;
  os_unfair_lock_unlock(&self->_flagsLock);
  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)canRestart
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 4) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (void)setCanRestart:(BOOL)restart
{
  restartCopy = restart;
  os_unfair_lock_lock(&self->_flagsLock);
  if (restartCopy)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFEF | v5;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)canRollback
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 5) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (void)setCanRollback:(BOOL)rollback
{
  rollbackCopy = rollback;
  os_unfair_lock_lock(&self->_flagsLock);
  if (rollbackCopy)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFDF | v5;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)isResetSync
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 6) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (BOOL)wasCancelled
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = HIBYTE(*&self->_flags) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (void)_setCompleted
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x200u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)_hasCompleted
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 9) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (void)_setCancelled
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x100u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (void)_setStarted
{
  [(SYSession *)self didStartSession];
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x80u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)_hasStarted
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 7) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (id)_newMessageHeader
{
  service = [(SYSession *)self service];
  _newMessageHeader = [service _newMessageHeader];

  [(SYReceivingSession *)self _tweakMessageHeader:_newMessageHeader];
  return _newMessageHeader;
}

- (void)_tweakMessageHeader:(id)header
{
  headerCopy = header;
  [(SYSession *)self perMessageTimeout];
  if (v4 == 0.0)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    [headerCopy setTimeout:?];

    v6 = distantFuture;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(SYSession *)self perMessageTimeout];
    [headerCopy setTimeout:Current + v8];
    v6 = headerCopy;
  }
}

- (void)_sendEndSessionAndError:(id)error
{
  errorCopy = error;
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  stateUpdateSource = self->_stateUpdateSource;
  if (stateUpdateSource)
  {
    dispatch_source_cancel(stateUpdateSource);
  }

  sessionTimer = self->_sessionTimer;
  if (sessionTimer)
  {
    dispatch_source_cancel(sessionTimer);
    v8 = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  [(SYReceivingSession *)self _setCompleted];
  targetQueue = [(SYSession *)self targetQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __46__SYReceivingSession__sendEndSessionAndError___block_invoke;
  v15 = &unk_1E86C9E90;
  selfCopy = self;
  v17 = errorCopy;
  v10 = errorCopy;
  dispatch_sync(targetQueue, &v12);

  v11 = [(SYSession *)self service:v12];
  [v11 sessionDidEnd:self withError:v10];

  [(SYSession *)self didCompleteSession];
}

void __46__SYReceivingSession__sendEndSessionAndError___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:didEndWithError:", v4, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 syncSession:*(a1 + 32) didEndWithError:*(a1 + 40)];
}

- (void)_midStreamErrorHandled
{
  v14 = *MEMORY[0x1E69E9840];
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v11);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v4 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: _midStreamErrorHandled", buf, 0xCu);
  }

  error = [(SYSession *)self error];
  domain = [error domain];
  if (([domain isEqualToString:@"SYErrorDomain"] & 1) == 0)
  {

    goto LABEL_9;
  }

  error2 = [(SYSession *)self error];
  v8 = [error2 code] == -128;

  if (!v8)
  {
LABEL_9:
    [(SYReceivingSession *)self _setStateQuietly:5];
    goto LABEL_10;
  }

  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags = *&self->_flags & 0xFEF0 | 0x103;
  os_unfair_lock_unlock(&self->_flagsLock);
LABEL_10:
  error3 = [(SYSession *)self error];
  [(SYReceivingSession *)self _sendEndSessionAndError:error3];

  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_notifyErrorAndShutdown
{
  error = [(SYSession *)self error];
  [(SYReceivingSession *)self _sendEndSessionAndError:error];
}

- (void)_sessionCancelled
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  [(SYReceivingSession *)self _sendEndSessionAndError:v3];
}

- (void)_processNextState
{
  v30 = *MEMORY[0x1E69E9840];
  queue = [(SYSession *)self queue];
  dispatch_assert_queue_V2(queue);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  state = [(SYReceivingSession *)self state];
  state2 = [(SYReceivingSession *)self state];
  if (state2 <= 4)
  {
    if (state2 == 3)
    {
      [(SYReceivingSession *)self _sessionCancelled];
    }

    else if (state2 == 4)
    {
      [(SYReceivingSession *)self _sessionRestarted];
    }
  }

  else
  {
    switch(state2)
    {
      case 5:
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v9 = qword_1EDE73420;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          error = [(SYSession *)self error];
          v11 = _SYObfuscate(error);
          *buf = 138543618;
          selfCopy = self;
          v28 = 2114;
          v29 = v11;
          _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ entered error state. Error = %{public}@", buf, 0x16u);
        }

        [(SYReceivingSession *)self _notifyErrorAndShutdown];
        break;
      case 9:
        [(SYReceivingSession *)self _sessionFinished];
        break;
      case 12:
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = qword_1EDE73420;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          error2 = [(SYSession *)self error];
          v8 = _SYObfuscate(error2);
          *buf = 138543362;
          selfCopy = v8;
          _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Error occurred while waiting for async client operation to complete. Will send error as part of response to that operation. Error = %{public}@", buf, 0xCu);
        }

        break;
    }
  }

  stateResponders = [(SYSession *)self stateResponders];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:state];
  v14 = [stateResponders objectForKeyedSubscript:v13];

  if ([v14 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v20 + 1) + 8 * i) + 16))(*(*(&v20 + 1) + 8 * i));
        }

        v16 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }

    [v15 removeAllObjects];
  }

  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_installTimers
{
  v34 = *MEMORY[0x1E69E9840];
  identifier = [(SYSession *)self identifier];
  v4 = [identifier copy];

  v5 = MEMORY[0x1E695DF00];
  [(SYSession *)self fullSessionTimeout];
  v6 = [v5 dateWithTimeIntervalSinceNow:?];
  objc_initWeak(&location, self);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __36__SYReceivingSession__installTimers__block_invoke;
  v25 = &unk_1E86CA868;
  objc_copyWeak(&v28, &location);
  v7 = v4;
  v26 = v7;
  v8 = v6;
  v27 = v8;
  v9 = MEMORY[0x1E12E11B0](&v22);
  [(SYSession *)self fullSessionTimeout:v22];
  if (v10 != 0.0)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
    sessionTimer = self->_sessionTimer;
    self->_sessionTimer = v12;

    dispatch_source_set_event_handler(self->_sessionTimer, v9);
    v14 = self->_sessionTimer;
    [(SYSession *)self fullSessionTimeout];
    v16 = dispatch_walltime(0, (v15 * 1000000000.0));
    dispatch_source_set_timer(v14, v16, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
    dispatch_resume(self->_sessionTimer);
    v17 = MEMORY[0x1E695DF00];
    [(SYSession *)self fullSessionTimeout];
    v18 = [v17 dateWithTimeIntervalSinceNow:?];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73420;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [(SYSession *)self fullSessionTimeout];
      *buf = 134218242;
      v31 = v20;
      v32 = 2114;
      v33 = v18;
      _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "Session timeout is %.02f seconds. Timer will fire at %{public}@", buf, 0x16u);
    }
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x1E69E9840];
}

void __36__SYReceivingSession__installTimers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, 0x90u))
  {
    __34__SYSendingSession__installTimers__block_invoke_cold_2(a1, WeakRetained, v3);
    if (!WeakRetained)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (WeakRetained)
  {
LABEL_5:
    v4 = [WeakRetained queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__SYReceivingSession__installTimers__block_invoke_10;
    v5[3] = &unk_1E86C9E90;
    v5[4] = WeakRetained;
    v6 = *(a1 + 40);
    dispatch_async(v4, v5);
  }

LABEL_6:
}

void __36__SYReceivingSession__installTimers__block_invoke_10(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 232), &v11);
  v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
  [*(a1 + 32) setError:v2];

  if ([*(a1 + 32) state] == 11)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      __36__SYReceivingSession__installTimers__block_invoke_10_cold_2(v3);
    }

    v4 = 12;
  }

  else
  {
    v4 = 5;
  }

  [*(a1 + 32) setState:v4];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    [v6 timeIntervalSinceNow];
    *buf = 138543618;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Session timeout timer fired. Expected to fire at %{public}@, delta is %.02f", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_block_cancel(WeakRetained);
  }

  os_activity_scope_leave(&v11);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_installStateListener
{
  queue = [(SYSession *)self queue];
  v4 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, queue);
  stateUpdateSource = self->_stateUpdateSource;
  self->_stateUpdateSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_stateUpdateSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SYReceivingSession__installStateListener__block_invoke;
  v7[3] = &unk_1E86CA190;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_stateUpdateSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __43__SYReceivingSession__installStateListener__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processNextState];
    WeakRetained = v2;
  }
}

- (BOOL)_postAsyncResetRequestReturningError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  [(SYReceivingSession *)self setState:10];
  dispatch_group_enter(self->_asyncResetGroupToWaitOn);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__11;
  v26 = __Block_byref_object_dispose__11;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  objc_initWeak(&location, self);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_INFO, "Delegate: -resetDataStoreForSyncSession:completion:", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  delegate = [(SYSession *)self delegate];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__SYReceivingSession__postAsyncResetRequestReturningError___block_invoke;
  v15[3] = &unk_1E86CB158;
  objc_copyWeak(v16, &location);
  v16[1] = *&Current;
  v15[4] = &v18;
  v15[5] = &v22;
  [delegate resetDataStoreForSyncSession:self completion:v15];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(v19 + 24);
    v10 = _SYObfuscate(v23[5]);
    [(SYReceivingSession *)v9 _postAsyncResetRequestReturningError:v10, buf, v8];
  }

  v11 = v23[5];
  if (v11)
  {
    *error = v11;
  }

  v12 = *(v19 + 24);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v13 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

void __59__SYReceivingSession__postAsyncResetRequestReturningError___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v11 = _SYObfuscate(WeakRetained);
    if (a2)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v13 = _SYObfuscate(v6);
    v20 = 134218754;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 2080;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Async reset-data completion called after %.02f seconds with strongSelf = %{public}@, success = %s, error = %{public}@", &v20, 0x2Au);
  }

  if (!a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = _SYObfuscate(WeakRetained);
      v18 = _SYObfuscate(v6);
      v20 = 138543618;
      v21 = *&v17;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Error reported from async reset-data in session %{public}@: %{public}@", &v20, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    [(dispatch_group_t *)WeakRetained setError:v6];
    v14 = 5;
    goto LABEL_16;
  }

  if ([(dispatch_group_t *)WeakRetained state]== 10)
  {
    v14 = 1;
LABEL_16:
    [(dispatch_group_t *)WeakRetained setState:v14];
  }

  dispatch_group_leave(WeakRetained[30]);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)start:(id)start
{
  v26[1] = *MEMORY[0x1E69E9840];
  startCopy = start;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  delegate = [(SYSession *)self delegate];
  v6 = delegate == 0;

  if (v6)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"You cannot start an SYSession without a delegate.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v12 = [v10 initWithSYError:2001 userInfo:v11];

    queue = [(SYSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__SYReceivingSession_start___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v14 = v12;
    v19 = v14;
    dispatch_async(queue, block);

    startCopy[2](startCopy, 0, v14);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(SYSession *)self identifier];
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = identifier;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    queue2 = [(SYSession *)self queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __28__SYReceivingSession_start___block_invoke_19;
    v16[3] = &unk_1E86CA388;
    v16[4] = self;
    v17 = startCopy;
    dispatch_async(queue2, v16);
  }

  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
}

void __28__SYReceivingSession_start___block_invoke_19(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __28__SYReceivingSession_start___block_invoke_2;
  v38[3] = &unk_1E86CB180;
  v2 = *(a1 + 40);
  v3 = (a1 + 32);
  v38[4] = *(a1 + 32);
  v39 = v2;
  v4 = MEMORY[0x1E12E11B0](v38);
  v5 = [*v3 state];
  if (v5)
  {
    if (v5 == 5)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v8 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Receiving session entered error state during initialization", buf, 2u);
      }

      v9 = [*(a1 + 32) error];
      (v4)[2](v4, v9);
    }

    else if (v5 == 3)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v6 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Receiving session canceled during initialization", buf, 2u);
      }

      v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
      (v4)[2](v4, v7);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = v13;
        v16 = [v14 state];
        *buf = 67109120;
        *&buf[4] = v16;
        _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Unexpected state during initialization: %{companionsync:SYSessionState}d", buf, 8u);
      }

      v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2011 userInfo:0];
      (v4)[2](v4, v17);
    }

    goto LABEL_36;
  }

  [*(a1 + 32) fullSessionTimeout];
  if (v10 < 0.0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Pre-expired session arrived. Dropping.", buf, 2u);
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
    (v4)[2](v4, v12);

    goto LABEL_36;
  }

  if (![*(a1 + 32) isResetSync])
  {
    goto LABEL_33;
  }

  *buf = 0;
  v43 = buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__11;
  v46 = __Block_byref_object_dispose__11;
  v47 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v18 = [*(a1 + 32) delegate];
  v19 = [*(a1 + 32) targetQueue];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __28__SYReceivingSession_start___block_invoke_21;
  v29 = &unk_1E86CB1A8;
  v20 = v18;
  v21 = *(a1 + 32);
  v30 = v20;
  v31 = v21;
  v32 = &v34;
  v33 = buf;
  dispatch_sync(v19, &v26);

  v22 = *(v35 + 24);
  if (*(v35 + 24))
  {

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(buf, 8);

LABEL_33:
    [*(a1 + 32) _installStateListener];
    [*(a1 + 32) _installTimers];
    [*(a1 + 32) _setStarted];
    if (![*(a1 + 32) state])
    {
      [*(a1 + 32) setState:1];
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_36;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v23 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v43 + 5);
    *v40 = 138412290;
    v41 = v24;
    _os_log_impl(&dword_1DF835000, v23, OS_LOG_TYPE_DEFAULT, "Delegate failed reset-store operation: %@", v40, 0xCu);
  }

  v4[2](v4, *(v43 + 5));

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);

  if (v22)
  {
    goto LABEL_33;
  }

LABEL_36:

  v25 = *MEMORY[0x1E69E9840];
}

void __28__SYReceivingSession_start___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__SYReceivingSession_start___block_invoke_3;
  v8[3] = &unk_1E86C9E90;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, v8);

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v5, v6, v7);
}

void __28__SYReceivingSession_start___block_invoke_21(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Delegate: -syncSession:resetDataStoreWithError:", buf, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v11 = a1[4];
    v12 = a1[5];
    v19 = 0;
    v13 = [v11 syncSession:v12 resetDataStoreWithError:&v19];
    v14 = v19;
    v8 = v19;
    *(*(a1[6] + 8) + 24) = v13;
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = CFAbsoluteTimeGetCurrent();
      *buf = 134217984;
      v22 = Current - v17;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_INFO, "Delegate callout complete after %.02f seconds: -syncSession:resetDataStoreWithError:", buf, 0xCu);
    }

    if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      objc_storeStrong((*(a1[7] + 8) + 40), v14);
    }

    v6 = 0;
    goto LABEL_15;
  }

  v3 = a1[5];
  v20 = 0;
  v4 = [v3 _postAsyncResetRequestReturningError:&v20];
  v5 = v20;
  v6 = v5;
  *(*(a1[6] + 8) + 24) = v4;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v7 = *(a1[7] + 8);
    v6 = v5;
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
LABEL_15:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v10);
  [(SYReceivingSession *)self _setCancelled];
  _cancelPendingMessagesReturningFailures = [(SYSession *)self _cancelPendingMessagesReturningFailures];
  if ([_cancelPendingMessagesReturningFailures count])
  {
    service = [(SYSession *)self service];
    [service sessionFailedToCancelMessageUUIDs:_cancelPendingMessagesReturningFailures];
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"SYErrorDomain"])
  {
    code = [errorCopy code];

    if (code == -128)
    {
      v9 = 3;
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(SYSession *)self setError:errorCopy];
  v9 = 5;
LABEL_8:
  if ([(SYReceivingSession *)self state]== 11)
  {
    [(SYSession *)self setError:errorCopy];
    v9 = 12;
  }

  if ([(SYReceivingSession *)self _hasStarted])
  {
    [(SYReceivingSession *)self setState:v9];
  }

  else
  {
    [(SYReceivingSession *)self _setStateQuietly:v9];
  }

  os_activity_scope_leave(&v10);
}

- (void)_handleSyncBatch:(id)batch response:(id)response completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  responseCopy = response;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  sessionID = [batchCopy sessionID];
  [responseCopy setSessionID:sessionID];

  [responseCopy setIndex:{objc_msgSend(batchCopy, "index")}];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    -[SYReceivingSession _handleSyncBatch:response:completion:].cold.2(v39, [batchCopy index], v12);
  }

  -[NSMutableIndexSet addIndex:](self->_receivedBatchIndices, "addIndex:", [batchCopy index]);
  v13 = [_SYLazyChangeArray alloc];
  changes = [batchCopy changes];
  serializer = [(SYSession *)self serializer];
  v16 = [(_SYLazyChangeArray *)v13 initWithSourceArray:changes decoder:serializer];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke;
  block[3] = &unk_1E86CB248;
  v17 = batchCopy;
  v30 = v17;
  selfCopy = self;
  v18 = responseCopy;
  v32 = v18;
  v19 = completionCopy;
  v34 = v19;
  v20 = v16;
  v33 = v20;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v22 = qword_1EDE73420;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [SYReceivingSession _handleSyncBatch:v38 response:[(SYReceivingSession *)self state] completion:v22];
  }

  if ([(SYReceivingSession *)self state]== 10)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v23 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = MEMORY[0x1E12E11B0](v21);
      *buf = 138412290;
      v37 = v25;
      _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "First batch arrived, we're still waiting on reset completion-- using dispatch_group_notify with block %@", buf, 0xCu);
    }

    objc_storeWeak(&self->_weakBlockWaitingForReset, v21);
    asyncResetGroupToWaitOn = self->_asyncResetGroupToWaitOn;
    targetQueue = [(SYSession *)self targetQueue];
    dispatch_group_notify(asyncResetGroupToWaitOn, targetQueue, v21);
  }

  else
  {
    targetQueue = [(SYSession *)self targetQueue];
    dispatch_async(targetQueue, v21);
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x1E69E9840];
}

void __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_cold_2(a1, v2);
  }

  v3 = [*(a1 + 40) state];
  v4 = *(a1 + 40);
  if (v3 == 5)
  {
    v5 = [v4 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_23;
    block[3] = &unk_1E86CB1D0;
    v6 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v7 = &v18;
    v18 = v6;
    v8 = &v19;
    v19 = *(a1 + 64);
    dispatch_async(v5, block);
  }

  else
  {
    [v4 _setStateQuietly:11];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Delegate: -syncSession:applyChanges:completion:", buf, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v5 = [*(a1 + 40) delegate];
    v11 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_25;
    v13[3] = &unk_1E86CB220;
    v13[4] = v11;
    *&v15[1] = Current;
    v7 = &v14;
    v12 = *(a1 + 56);
    v14 = *(a1 + 48);
    v8 = v15;
    v15[0] = *(a1 + 64);
    [v5 syncSession:v11 applyChanges:v12 completion:v13];
  }
}

void __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_23(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 232), &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Returning error state in response to a sync batch", v9, 2u);
  }

  v3 = [SYErrorInfo alloc];
  v4 = [*(a1 + 32) error];
  v5 = [(SYErrorInfo *)v3 initWithError:v4];
  [*(a1 + 40) setError:v5];

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = [*(a1 + 32) wrappedUserContext];
  (*(v6 + 16))(v6, v7, v8);

  os_activity_scope_leave(&state);
}

void __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_25(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 232), &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v6 = qword_1EDE73420;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v12 = *(a1 + 56);
    v13 = [*(a1 + 40) index];
    v14 = "NO";
    *buf = 134218498;
    v22 = Current - v12;
    if (a2)
    {
      v14 = "YES";
    }

    v23 = 2048;
    v24 = v13;
    v25 = 2080;
    v26 = v14;
    _os_log_debug_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEBUG, "Delegate callout complete after %.02f seconds: -syncSession:applyChanges:completion:, chunkIndex = %llu, success = %s", buf, 0x20u);
  }

  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_26;
  block[3] = &unk_1E86CB1F8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v19 = a2;
  v16 = v8;
  v17 = v5;
  v18 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v7, block);

  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

void __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_26(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 232), &v19);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) index];
    v5 = *(a1 + 64);
    *buf = 138543874;
    if (v5)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    v21 = v3;
    v22 = 2048;
    v23 = v4;
    v24 = 2080;
    v25 = v6;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "%{public}@: Building response for processed changes, chunkIndex = %llu, success = %s", buf, 0x20u);
  }

  if (*(a1 + 64))
  {
    if ([*(a1 + 32) state] != 12)
    {
      [*(a1 + 32) setState:1];
      goto LABEL_22;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) error];
      v9 = _SYObfuscate(v8);
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Detected error that occurred while waiting, attaching to batch response. Error = %{public}@", buf, 0xCu);
    }

    v10 = [SYErrorInfo alloc];
    v11 = [*(a1 + 32) error];
    v12 = [(SYErrorInfo *)v10 initWithError:v11];
    [*(a1 + 40) setError:v12];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v13 = qword_1EDE73420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _SYObfuscate(*(a1 + 48));
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Failed to process sync batch, returning error: %{public}@", buf, 0xCu);
    }

    v11 = [[SYErrorInfo alloc] initWithError:*(a1 + 48)];
    [*(a1 + 40) setError:v11];
  }

  [*(a1 + 32) _midStreamErrorHandled];
LABEL_22:
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = [*(a1 + 32) wrappedUserContext];
  (*(v15 + 16))(v15, v16, v17);

  os_activity_scope_leave(&v19);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleRestartSession:(id)session response:(id)response completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  responseCopy = response;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  sessionID = [sessionCopy sessionID];
  [responseCopy setSessionID:sessionID];

  if ([(SYReceivingSession *)self isResetSync]&& [(SYReceivingSession *)self canRestart])
  {
    targetQueue = [(SYSession *)self targetQueue];
    v13 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke;
    block[3] = &unk_1E86CB1D0;
    block[4] = responseCopy;
    block[5] = self;
    v23 = completionCopy;
    dispatch_async(targetQueue, block);

LABEL_7:
    v15 = v13[4];
    goto LABEL_13;
  }

  if (![(SYReceivingSession *)self isResetSync]&& [(SYReceivingSession *)self canRollback])
  {
    targetQueue2 = [(SYSession *)self targetQueue];
    v13 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke_28;
    v20[3] = &unk_1E86CB1D0;
    v20[4] = responseCopy;
    v20[5] = self;
    v21 = completionCopy;
    dispatch_async(targetQueue2, v20);

    goto LABEL_7;
  }

  v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v16 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v15;
    _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Rejecting restart request: %@", buf, 0xCu);
  }

  [responseCopy setAccepted:0];
  v17 = [[SYErrorInfo alloc] initWithError:v15];
  [responseCopy setError:v17];

  wrappedUserContext = [(SYSession *)self wrappedUserContext];
  (*(completionCopy + 2))(completionCopy, responseCopy, wrappedUserContext);

LABEL_13:
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

void __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:resetDataStoreWithError: (restart session)", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = [*(a1 + 40) delegate];
  v5 = *(a1 + 40);
  v23 = 0;
  v6 = [v4 syncSession:v5 resetDataStoreWithError:&v23];
  v7 = v23;
  [*(a1 + 32) setAccepted:v6];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v25 = v10 - Current;
    _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Delegate callout complete after %.02f seconds: -syncSession:resetDataStoreWithError: (restart session)", buf, 0xCu);
  }

  if (v7)
  {
    v11 = [[SYErrorInfo alloc] initWithError:v7];
    [*(a1 + 32) setError:v11];
  }

  v12 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke_27;
  block[3] = &unk_1E86CA1B8;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v19 = v13;
  v20 = v14;
  v21 = v7;
  v22 = v15;
  v16 = v7;
  dispatch_async(v12, block);

  v17 = *MEMORY[0x1E69E9840];
}

void __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke_27(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) accepted])
  {
    [*(a1 + 40) setState:4];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v2 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Client rejected reset session restart: %@", &v8, 0xCu);
    }
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) wrappedUserContext];
  (*(v4 + 16))(v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke_28(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:rollbackChangesWithError: (restart session)", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = [*(a1 + 40) delegate];
  v5 = *(a1 + 40);
  v23 = 0;
  v6 = [v4 syncSession:v5 rollbackChangesWithError:&v23];
  v7 = v23;
  [*(a1 + 32) setAccepted:v6];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v25 = v10 - Current;
    _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Delegate callout complete after %.02f seconds: -syncSession:rollbackChangesWithError: (restart session)", buf, 0xCu);
  }

  if (v7)
  {
    v11 = [[SYErrorInfo alloc] initWithError:v7];
    [*(a1 + 32) setError:v11];
  }

  v12 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke_29;
  block[3] = &unk_1E86CA1B8;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v19 = v13;
  v20 = v14;
  v21 = v7;
  v22 = v15;
  v16 = v7;
  dispatch_async(v12, block);

  v17 = *MEMORY[0x1E69E9840];
}

void __64__SYReceivingSession__handleRestartSession_response_completion___block_invoke_29(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) accepted])
  {
    [*(a1 + 40) setState:4];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v2 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Client rejected delta session rollback: %@", &v8, 0xCu);
    }
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) wrappedUserContext];
  (*(v4 + 16))(v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleEndSession:(id)session response:(id)response completion:(id)completion
{
  sessionCopy = session;
  responseCopy = response;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  sessionID = [sessionCopy sessionID];
  [responseCopy setSessionID:sessionID];

  queue = [(SYSession *)self queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__SYReceivingSession__handleEndSession_response_completion___block_invoke;
  v16[3] = &unk_1E86CA1B8;
  v17 = sessionCopy;
  selfCopy = self;
  v19 = responseCopy;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = responseCopy;
  v15 = sessionCopy;
  dispatch_async(queue, v16);

  os_activity_scope_leave(&state);
}

void __60__SYReceivingSession__handleEndSession_response_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36[0] = &v35;
  v36[1] = 0x3032000000;
  v36[2] = __Block_byref_object_copy__11;
  v36[3] = __Block_byref_object_dispose__11;
  v37 = 0;
  if ([*(a1 + 32) hasRollback] && objc_msgSend(*(a1 + 32), "rollback"))
  {
    if ([*(a1 + 40) canRollback])
    {
      v2 = [*(a1 + 40) targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SYReceivingSession__handleEndSession_response_completion___block_invoke_2;
      block[3] = &unk_1E86CB0E0;
      v3 = *(a1 + 48);
      v4 = *(a1 + 40);
      v32 = v3;
      v33 = v4;
      v34 = &v35;
      dispatch_sync(v2, block);

      v5 = v32;
    }

    else
    {
      [*(a1 + 48) setDidRollback:0];
      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
      v5 = *(v36[0] + 40);
      *(v36[0] + 40) = v13;
    }

    v14 = [*(a1 + 48) error];
    v15 = v14 == 0;

    if (!v15)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v36[0] + 40);
        *buf = 138412290;
        v39 = v16;
        v12 = "Error rolling back at end session: %@";
        goto LABEL_16;
      }
    }
  }

  else if ([*(a1 + 32) hasError])
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [*(a1 + 32) error];
    v8 = [v6 errorFromSYErrorInfo:v7];
    v9 = *(v36[0] + 40);
    *(v36[0] + 40) = v8;

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v36[0] + 40);
      *buf = 138412290;
      v39 = v11;
      v12 = "Ending session with error from Master: %@";
LABEL_16:
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }
  }

  if (!*(v36[0] + 40) && [*(a1 + 40) _isMissingSyncBatches])
  {
    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2012 userInfo:0];
    v18 = *(v36[0] + 40);
    *(v36[0] + 40) = v17;

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, 0x90u))
    {
      __60__SYReceivingSession__handleEndSession_response_completion___block_invoke_cold_4(v36, v19);
    }
  }

  v20 = *(v36[0] + 40);
  if (v20)
  {
    v21 = [v20 domain];
    if ([v21 isEqualToString:@"SYErrorDomain"])
    {
      v22 = [*(v36[0] + 40) code] == -128;

      if (v22)
      {
        v23 = (a1 + 40);
        [*(a1 + 40) _setCancelled];
        v24 = 3;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v23 = (a1 + 40);
    [*(a1 + 40) setError:*(v36[0] + 40)];
    v24 = 5;
  }

  else
  {
    v23 = (a1 + 40);
    v24 = 9;
  }

LABEL_30:
  [*v23 setState:v24];
  if (*(v36[0] + 40))
  {
    v25 = [SYErrorInfo alloc];
    v26 = [(SYErrorInfo *)v25 initWithError:*(v36[0] + 40)];
    [*(a1 + 48) setError:v26];
  }

  v28 = *(a1 + 48);
  v27 = *(a1 + 56);
  v29 = [*(a1 + 40) wrappedUserContext];
  (*(v27 + 16))(v27, v28, v29);

  _Block_object_dispose(&v35, 8);
  v30 = *MEMORY[0x1E69E9840];
}

void __60__SYReceivingSession__handleEndSession_response_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:rollbackChangesWithError: (session end)", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = [*(a1 + 40) delegate];
  v5 = *(a1 + 40);
  v13 = 0;
  v6 = [v4 syncSession:v5 rollbackChangesWithError:&v13];
  v7 = v13;
  v8 = v13;
  [*(a1 + 32) setDidRollback:v6];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v9 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v15 = v11 - Current;
    _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_INFO, "Delegate callout complete after %.02f seconds: -syncSession:rollbackChangesWithError: (session end)", buf, 0xCu);
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_continue
{
  state = [(SYReceivingSession *)self state];
  if (state > 0xC || ((1 << state) & 0x1C20) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2021 userInfo:0];
    [(SYSession *)self setError:v5];

    [(SYReceivingSession *)self setState:5];
  }

  v6.receiver = self;
  v6.super_class = SYReceivingSession;
  [(SYSession *)&v6 _continue];
}

- (void)_postAsyncResetRequestReturningError:(uint8_t *)buf .cold.3(char a1, __CFString *a2, uint8_t *buf, os_log_t log)
{
  v5 = "NO";
  if (a1)
  {
    v5 = "YES";
  }

  v6 = @"(nil)";
  if (a2)
  {
    v6 = a2;
  }

  *buf = 136315394;
  *(buf + 4) = v5;
  *(buf + 6) = 2114;
  *(buf + 14) = v6;
  _os_log_debug_impl(&dword_1DF835000, log, OS_LOG_TYPE_DEBUG, "Sent async reset-data message to delegate. Will continue = %s, error = %{public}@", buf, 0x16u);
}

- (void)_handleSyncBatch:(uint8_t *)buf response:(uint64_t)a2 completion:(os_log_t)log .cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1DF835000, log, OS_LOG_TYPE_DEBUG, "Received incoming batch %llu", buf, 0xCu);
}

- (void)_handleSyncBatch:(uint8_t *)buf response:(int)a2 completion:(os_log_t)log .cold.4(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&dword_1DF835000, log, OS_LOG_TYPE_DEBUG, "Batch incoming, state == %{companionsync:SYSessionState}d", buf, 8u);
}

void __59__SYReceivingSession__handleSyncBatch_response_completion___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = 134217984;
  v6 = [v2 index];
  _os_log_debug_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEBUG, "Processing incoming batch %llu", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __60__SYReceivingSession__handleEndSession_response_completion___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1DF835000, a2, 0x90u, "End session arrived and I have missing sync batches: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end