@interface SYSendingSession
- (BOOL)_handleEndSessionResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleRestartSessionResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleStartSessionResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleSyncBatchResponse:(id)a3 error:(id *)a4;
- (BOOL)_hasSentEnd;
- (BOOL)_localErrorOccurred;
- (BOOL)canRestart;
- (BOOL)canRollback;
- (BOOL)isResetSync;
- (BOOL)wasCancelled;
- (SYSendingSession)initWithService:(id)a3 isReset:(BOOL)a4;
- (double)remainingSessionTime;
- (id)_newMessageHeader;
- (unsigned)state;
- (void)_confirmedEnd;
- (void)_confirmedStart;
- (void)_continue;
- (void)_fetchNextBatch;
- (void)_installStateListener;
- (void)_installTimers;
- (void)_notifyErrorAndShutdown;
- (void)_peerProcessedMessageWithIdentifier:(id)a3 userInfo:(id)a4;
- (void)_processNextState;
- (void)_resolvedIdentifierForRequest:(id)a3;
- (void)_sendEndSessionAndError:(id)a3;
- (void)_sendSyncCancelled;
- (void)_sendSyncCompleteAndRunBlock:(id)a3;
- (void)_sendSyncRestart;
- (void)_sentEnd;
- (void)_sentMessageWithIdentifier:(id)a3 userInfo:(id)a4;
- (void)_sentStart;
- (void)_sessionFinished;
- (void)_setCancelled;
- (void)_setComplete;
- (void)_setLocalErrorOccurred;
- (void)_setMessageTimer;
- (void)_setStateQuietly:(unsigned int)a3;
- (void)_setupChangeConcurrency;
- (void)_startFailedForStateChangeWithError:(id)a3;
- (void)_tweakMessageHeader:(id)a3;
- (void)_waitForMessageWindow;
- (void)cancelWithError:(id)a3;
- (void)setCanRestart:(BOOL)a3;
- (void)setCanRollback:(BOOL)a3;
- (void)setState:(unsigned int)a3;
- (void)start:(id)a3;
@end

@implementation SYSendingSession

- (SYSendingSession)initWithService:(id)a3 isReset:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v27.receiver = self;
  v27.super_class = SYSendingSession;
  v7 = [(SYSession *)&v27 initWithService:v6];
  v8 = v7;
  if (v7)
  {
    v7->_flagsLock._os_unfair_lock_opaque = 0;
    v9 = [v6 serviceActivity];
    v10 = _os_activity_create(&dword_1DF835000, "SYSession (Outgoing)", v9, OS_ACTIVITY_FLAG_DEFAULT);

    sessionActivity = v8->_sessionActivity;
    v8->_sessionActivity = v10;

    if (v4)
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&v8->_flags = *&v8->_flags & 0xFF80 | v12;
    v13 = _SessionIdentifierDateFormatter();
    v14 = objc_opt_new();
    v15 = [v13 stringFromDate:v14];

    [(SYSession *)v8 setIdentifier:v15];
    v16 = objc_opt_new();
    ackedBatchIndices = v8->_ackedBatchIndices;
    v8->_ackedBatchIndices = v16;

    v18 = objc_opt_new();
    batchMessageIDs = v8->_batchMessageIDs;
    v8->_batchMessageIDs = v18;

    v20 = [v6 name];
    v21 = [v20 lastPathComponent];
    v22 = [v21 stringByAppendingString:@" Change Enqueuer"];

    v23 = dispatch_queue_create([v22 UTF8String], 0);
    changeFetcherQueue = v8->_changeFetcherQueue;
    v8->_changeFetcherQueue = v23;

    v25 = v8;
  }

  return v8;
}

- (unsigned)state
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  return flags & 0xF;
}

- (void)setState:(unsigned int)a3
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
    v12 = self;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state from %{companionsync:SYSessionState}d to %{companionsync:SYSessionState}d", buf, 0x18u);
  }

  *&self->_flags = *&self->_flags & 0xFFF0 | a3 & 0xF;
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
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "State change notification source is nil!", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_flagsLock);
  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setStateQuietly:(unsigned int)a3
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
    v10 = self;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting state (quietly) from %{companionsync:SYSessionState}d to %{companionsync:SYSessionState}d", buf, 0x18u);
  }

  *&self->_flags = *&self->_flags & 0xFFF0 | a3 & 0xF;
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

- (void)setCanRestart:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_flagsLock);
  if (v3)
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

- (void)setCanRollback:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_flagsLock);
  if (v3)
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

- (double)remainingSessionTime
{
  [(SYSession *)self fullSessionTimeout];
  if (v3 == 0.0)
  {
    return 1.79769313e308;
  }

  sessionStartTime = self->_sessionStartTime;
  if (sessionStartTime > 0.0)
  {
    return v3 + sessionStartTime - CFAbsoluteTimeGetCurrent();
  }

  return 60.0;
}

- (void)_sentStart
{
  [(SYSession *)self didStartSession];
  [(SYSendingSession *)self _setupChangeConcurrency];
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x400u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (void)_confirmedStart
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x800u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (void)_sentEnd
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x1000u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)_hasSentEnd
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 12) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (void)_confirmedEnd
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x2000u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (void)_setCancelled
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x100u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (void)_setComplete
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x200u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (void)_setLocalErrorOccurred
{
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags |= 0x4000u;

  os_unfair_lock_unlock(&self->_flagsLock);
}

- (BOOL)_localErrorOccurred
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = (*&self->_flags >> 14) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (id)_newMessageHeader
{
  v3 = [(SYSession *)self service];
  v4 = [v3 _newMessageHeader];

  [(SYSendingSession *)self _tweakMessageHeader:v4];
  return v4;
}

- (void)_tweakMessageHeader:(id)a3
{
  v9 = a3;
  [(SYSession *)self perMessageTimeout];
  if (v4 == 0.0)
  {
    v5 = [MEMORY[0x1E695DF00] distantFuture];
    [v5 timeIntervalSinceReferenceDate];
    [v9 setTimeout:?];

    v6 = v5;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(SYSession *)self perMessageTimeout];
    [v9 setTimeout:Current + v8];
    v6 = v9;
  }
}

- (void)_setupChangeConcurrency
{
  if ([(SYSession *)self maxConcurrentMessages])
  {
    if (([(SYSession *)self maxConcurrentMessages]& 0x8000000000000000) == 0)
    {
      v3 = [(SYSession *)self service];
      v4 = [v3 syncEngine];
      v5 = [v4 buffersSessions];

      if ((v5 & 1) == 0)
      {
        v6 = [[_SYCountedSemaphore alloc] initWithCount:[(SYSession *)self maxConcurrentMessages]];
        changeConcurrencySemaphore = self->_changeConcurrencySemaphore;
        self->_changeConcurrencySemaphore = v6;

        v8 = _os_activity_create(&dword_1DF835000, "Change Concurrency Wait", self->_sessionActivity, OS_ACTIVITY_FLAG_DEFAULT);
        changeWaitActivity = self->_changeWaitActivity;
        self->_changeWaitActivity = v8;

        MEMORY[0x1EEE66BB8](v8, changeWaitActivity);
      }
    }
  }
}

- (void)_waitForMessageWindow
{
  if (self->_changeConcurrencySemaphore)
  {
    changeFetcherQueue = self->_changeFetcherQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SYSendingSession__waitForMessageWindow__block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(changeFetcherQueue, block);
  }

  else
  {

    [(SYSendingSession *)self _fetchNextBatch];
  }
}

void __41__SYSendingSession__waitForMessageWindow__block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 248), &state);
  [*(a1 + 32) perMessageTimeout];
  if (v2 == 0.0)
  {
    v3 = [*(a1 + 32) service];
    [v3 defaultMessageTimeout];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v4 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __41__SYSendingSession__waitForMessageWindow__block_invoke_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = *(a1 + 32);
  v13 = v12[30];
  [v12 perMessageTimeout];
  if ([v13 waitWithTimeout:v14 + v14])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      __41__SYSendingSession__waitForMessageWindow__block_invoke_cold_5(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v26.opaque[0] = 0;
    v26.opaque[1] = 0;
    os_activity_scope_enter(*(*(a1 + 32) + 272), &v26);
    v23 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SYSendingSession__waitForMessageWindow__block_invoke_4;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 32);
    dispatch_async(v23, block);

    os_activity_scope_leave(&v26);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v24 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26.opaque[0]) = 0;
      _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "Wait for change slot ended, semaphore cancelled or wait timed out", &v26, 2u);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)_fetchNextBatch
{
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(SYSendingSession *)self _hasSentEnd])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:10];
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0;
    v6 = [(SYSession *)self service];
    v7 = [v6 sendingBufferCap];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __35__SYSendingSession__fetchNextBatch__block_invoke;
    v37[3] = &unk_1E86CAF70;
    v37[4] = self;
    v40 = v42;
    v41 = v7;
    v8 = v4;
    v38 = v8;
    v9 = v5;
    v39 = v9;
    v10 = MEMORY[0x1E12E11B0](v37);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__8;
    v35 = __Block_byref_object_dispose__8;
    v36 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v11 = [(SYSession *)self targetQueue];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __35__SYSendingSession__fetchNextBatch__block_invoke_9;
    v21 = &unk_1E86CAF98;
    v25 = &v27;
    v22 = self;
    v12 = v10;
    v24 = v12;
    v13 = v8;
    v23 = v13;
    v26 = &v31;
    dispatch_sync(v11, &v18);

    v14 = *(v28 + 6);
    if ((v14 - 1) >= 2)
    {
      if (v14 == 5)
      {
        [(SYSession *)self setError:v32[5], v18, v19, v20, v21, v22];
        [(SYSendingSession *)self _setLocalErrorOccurred];
        [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore signal];
        v14 = *(v28 + 6);
      }

      [(SYSendingSession *)self setState:v14, v18, v19, v20, v21, v22];
    }

    else
    {
      v15 = [v9 copy];
      batchObjectIDsByBatchIndex = self->_batchObjectIDsByBatchIndex;
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_batchIndex];
      [(NSMutableDictionary *)batchObjectIDsByBatchIndex setObject:v15 forKeyedSubscript:v17];

      [(SYSendingSession *)self _sendSyncBatch:v13 nextState:*(v28 + 6)];
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(v42, 8);
  }
}

uint64_t __35__SYSendingSession__fetchNextBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &v10);
  v4 = [SYChange changeWithChangeObject:v3 serializer:*(a1 + 32)];
  v5 = [v4 data];
  *(*(*(a1 + 56) + 8) + 24) += [v5 length];

  if (*(*(*(a1 + 56) + 8) + 24) >= *(a1 + 64) && [*(a1 + 40) count])
  {
    v6 = 0;
  }

  else
  {
    [*(a1 + 40) addObject:v4];
    v7 = *(a1 + 48);
    v8 = [v3 objectIdentifier];
    [v7 addObject:v8];

    v6 = 1;
  }

  os_activity_scope_leave(&v10);
  return v6;
}

void __35__SYSendingSession__fetchNextBatch__block_invoke_9(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -syncSession:enqueueChanges:error:", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v16 = 0;
  v7 = [v4 syncSession:v5 enqueueChanges:v6 error:&v16];
  v8 = v16;
  v9 = v16;
  *(*(*(a1 + 56) + 8) + 24) = v7;

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v10 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = CFAbsoluteTimeGetCurrent() - Current;
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = [*(a1 + 40) count];
    *buf = 134218496;
    v18 = v12;
    v19 = 1024;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_INFO, "Delegate callout complete after %.02f seconds: -syncSession:enqueueChanges:error:, state = %{companionsync:SYSessionState}d, %lu changes", buf, 0x1Cu);
  }

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __45__SYSendingSession__sendSyncBatch_nextState___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &state);
  v9 = *(a1 + 32);
  if (a2)
  {
    v16 = v8;
    v10 = v9[39];
    objc_sync_enter(v10);
    if ([*(a1 + 40) index])
    {
      while (1)
      {
        v11 = [*(*(a1 + 32) + 312) count];
        if (v11 > [*(a1 + 40) index])
        {
          break;
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v12 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Filling in the batch message IDs array for some reason...", buf, 2u);
        }

        v13 = *(*(a1 + 32) + 312);
        v14 = [[SYMessageStatusRecord alloc] initFiller];
        [v13 addObject:v14];
      }
    }

    v15 = [[SYMessageStatusRecord alloc] initWithMessageID:v7];
    [*(*(a1 + 32) + 312) setObject:v15 atIndexedSubscript:{objc_msgSend(*(a1 + 40), "index")}];

    objc_sync_exit(v10);
    v8 = v16;
    if ([*(a1 + 32) state] == 8)
    {
      [*(a1 + 32) setState:*(a1 + 48)];
    }
  }

  else
  {
    [v9 setError:v8];
    [*(a1 + 32) setState:5];
    [*(a1 + 32) _setLocalErrorOccurred];
    [*(*(a1 + 32) + 240) signal];
  }

  os_activity_scope_leave(&state);
}

- (void)_sendSyncCompleteAndRunBlock:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if (![(SYSendingSession *)self _hasSentEnd])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [(SYSendingSession *)v6 _sendSyncCompleteAndRunBlock:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = objc_opt_new();
    v15 = [(SYSendingSession *)self _newMessageHeader];
    [v14 setHeader:v15];

    v16 = [v14 header];
    if (v16)
    {
    }

    else
    {
      if (_RunningInXCTest_onceToken != -1)
      {
        [SYSendingSession _sendSyncCompleteAndRunBlock:];
      }

      if (_RunningInXCTest___value == 1)
      {
        v17 = [v14 header];

        if (!v17)
        {
          do
          {
            [MEMORY[0x1E696AF00] sleepForTimeInterval:0.01];
            v18 = [(SYSendingSession *)self _newMessageHeader];
            [v14 setHeader:v18];

            v19 = [v14 header];
          }

          while (!v19);
        }
      }
    }

    v20 = [(SYSession *)self identifier];
    [v14 setSessionID:v20];

    v21 = [(SYSession *)self error];
    if (v21)
    {
      v22 = v21;
      v23 = [(SYSendingSession *)self _localErrorOccurred];

      if (v23)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v24 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = [(SYSession *)self error];
          *buf = 138412290;
          v42 = v26;
          _os_log_impl(&dword_1DF835000, v25, OS_LOG_TYPE_DEFAULT, "Attaching error to end-session: %@", buf, 0xCu);
        }

        v27 = [SYErrorInfo alloc];
        v28 = [(SYSession *)self error];
        v29 = [(SYErrorInfo *)v27 initWithError:v28];
        [v14 setError:v29];

        if ([(SYSendingSession *)self canRollback])
        {
          [v14 setRollback:1];
        }
      }
    }

    v30 = [v4 copy];

    v31 = [(SYSendingSession *)self state];
    v32 = [(SYSession *)self service];
    v33 = [v32 syncEngine];
    v34 = [(SYSession *)self priority];
    v35 = [(SYSession *)self combinedEngineOptions:0];
    v36 = [(SYSession *)self wrappedUserContext];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __49__SYSendingSession__sendSyncCompleteAndRunBlock___block_invoke;
    v38[3] = &unk_1E86CAFE8;
    v38[4] = self;
    v40 = v31;
    v4 = v30;
    v39 = v4;
    [v33 enqueueSyncRequest:v14 withMessageID:105 priority:v34 options:v35 userContext:v36 callback:v38];

    [(SYSendingSession *)self _sentEnd];
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __49__SYSendingSession__sendSyncCompleteAndRunBlock___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &v15);
  if (a2 && (v9 = -[SYMessageStatusRecord initWithMessageID:]([SYMessageStatusRecord alloc], "initWithMessageID:", v7), v10 = *(a1 + 32), v11 = *(v10 + 304), *(v10 + 304) = v9, v11, [*(a1 + 32) state] == *(a1 + 48)))
  {
    v12 = 7;
  }

  else
  {
    if ([*(a1 + 32) state] != 2 || *(a1 + 48) != 2)
    {
      goto LABEL_11;
    }

    [*(a1 + 32) setError:v8];
    v12 = 5;
  }

  [*(a1 + 32) setState:v12];
LABEL_11:
  if (*(a1 + 40))
  {
    v14 = [*(a1 + 32) queue];
    dispatch_async(v14, *(a1 + 40));
  }

  os_activity_scope_leave(&v15);
}

- (void)_sendSyncCancelled
{
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(SYSendingSession *)self _hasSentEnd])
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
    [(SYSession *)self setError:v4];
    v5 = objc_opt_new();
    v6 = [(SYSendingSession *)self _newMessageHeader];
    [v5 setHeader:v6];

    v7 = [(SYSession *)self identifier];
    [v5 setSessionID:v7];

    v8 = [[SYErrorInfo alloc] initWithError:v4];
    [v5 setError:v8];

    if ([(SYSendingSession *)self canRollback])
    {
      [v5 setRollback:1];
    }

    v9 = [(SYSession *)self service];
    v10 = [v9 syncEngine];
    v11 = [(SYSession *)self priority];
    v12 = [(SYSession *)self combinedEngineOptions:0];
    v13 = [(SYSession *)self wrappedUserContext];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__SYSendingSession__sendSyncCancelled__block_invoke;
    v14[3] = &unk_1E86CA320;
    v14[4] = self;
    [v10 enqueueSyncRequest:v5 withMessageID:105 priority:v11 options:v12 userContext:v13 callback:v14];

    [(SYSendingSession *)self _sentEnd];
  }
}

void __38__SYSendingSession__sendSyncCancelled__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &state);
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SYSendingSession__sendSyncCancelled__block_invoke_2;
  block[3] = &unk_1E86C9FB0;
  block[4] = *(a1 + 32);
  dispatch_async(v8, block);

  os_activity_scope_leave(&state);
}

- (void)_sendSyncRestart
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(SYSendingSession *)self canRestart])
  {
    v4 = objc_opt_new();
    v5 = [(SYSendingSession *)self _newMessageHeader];
    [v4 setHeader:v5];

    v6 = [(SYSession *)self identifier];
    [v4 setSessionID:v6];

    v7 = [(SYSession *)self service];
    v8 = [v7 syncEngine];
    v9 = [(SYSession *)self priority];
    v10 = [(SYSession *)self combinedEngineOptions:0];
    v11 = [(SYSession *)self wrappedUserContext];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__SYSendingSession__sendSyncRestart__block_invoke;
    v16[3] = &unk_1E86CA320;
    v16[4] = self;
    [v8 enqueueSyncRequest:v4 withMessageID:104 priority:v9 options:v10 userContext:v11 callback:v16];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"This session does not support being restarted.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 initWithSYError:2008 userInfo:v13];
    [(SYSession *)self setError:v14];

    [(SYSendingSession *)self setState:5];
    [(SYSendingSession *)self _setLocalErrorOccurred];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __36__SYSendingSession__sendSyncRestart__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &v16);
  if (a2 && (v9 = -[SYMessageStatusRecord initWithMessageID:]([SYMessageStatusRecord alloc], "initWithMessageID:", v7), v10 = *(a1 + 32), v11 = *(v10 + 296), *(v10 + 296) = v9, v11, [*(a1 + 32) state] == 4))
  {
    *(*(a1 + 32) + 256) = 0;
    v12 = [*(a1 + 32) service];
    v13 = [v12 syncEngine];
    v14 = [v13 buffersSessions];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = 6;
    }
  }

  else
  {
    [*(a1 + 32) setError:v8];
    v15 = 5;
  }

  [*(a1 + 32) setState:v15];
  os_activity_scope_leave(&v16);
}

- (void)_sendEndSessionAndError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v5);

  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore invalidate];
  if (self->_sessionTimer)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = _SYObfuscate(self);
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling session timer for %{public}@", buf, 0xCu);
    }

    dispatch_source_cancel(self->_sessionTimer);
    sessionTimer = self->_sessionTimer;
    self->_sessionTimer = 0;
  }

  [(SYSendingSession *)self _setComplete];
  v10 = [(SYSession *)self targetQueue];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __44__SYSendingSession__sendEndSessionAndError___block_invoke;
  v17 = &unk_1E86C9E90;
  v18 = self;
  v19 = v4;
  v11 = v4;
  dispatch_sync(v10, &v14);

  v12 = [(SYSession *)self service:v14];
  [v12 sessionDidEnd:self withError:v11];

  [(SYSession *)self didCompleteSession];
  v13 = *MEMORY[0x1E69E9840];
}

void __44__SYSendingSession__sendEndSessionAndError___block_invoke(uint64_t a1)
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

- (void)_notifyErrorAndShutdown
{
  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore invalidate];
  stateUpdateSource = self->_stateUpdateSource;
  if (stateUpdateSource)
  {
    dispatch_source_cancel(stateUpdateSource);
  }

  if ([(SYSendingSession *)self _localErrorOccurred]&& ![(SYSendingSession *)self _hasSentEnd])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__SYSendingSession__notifyErrorAndShutdown__block_invoke;
    v5[3] = &unk_1E86C9FB0;
    v5[4] = self;
    [(SYSendingSession *)self _sendSyncCompleteAndRunBlock:v5];
  }

  else
  {
    v4 = [(SYSession *)self error];
    [(SYSendingSession *)self _sendEndSessionAndError:v4];
  }
}

void __43__SYSendingSession__notifyErrorAndShutdown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setStateQuietly:5];
  v2 = *(a1 + 32);
  v3 = [v2 error];
  [v2 _sendEndSessionAndError:v3];
}

- (void)_sessionFinished
{
  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore invalidate];
  stateUpdateSource = self->_stateUpdateSource;
  if (stateUpdateSource)
  {
    dispatch_source_cancel(stateUpdateSource);
  }

  if ([(SYSendingSession *)self wasCancelled])
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(SYSendingSession *)self _sendEndSessionAndError:v4];
}

- (void)_processNextState
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(SYSession *)self queue];
  dispatch_assert_queue_V2(v3);

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  v4 = [(SYSendingSession *)self state];
  v5 = v4;
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        [(SYSendingSession *)self _sendSyncRestart];
        break;
      case 5:
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = qword_1EDE73420;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(SYSession *)self error];
          *buf = 138543618;
          v23 = self;
          v24 = 2112;
          v25 = v7;
          _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ entered error state. Error = %@", buf, 0x16u);
        }

        [(SYSendingSession *)self _notifyErrorAndShutdown];
        break;
      case 9:
        [(SYSendingSession *)self _sessionFinished];
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        [(SYSendingSession *)self _waitForMessageWindow];
        break;
      case 2:
        [(SYSendingSession *)self _sendSyncCompleteAndRunBlock:0];
        break;
      case 3:
        [(SYSendingSession *)self _sendSyncCancelled];
        break;
    }
  }

  v8 = [(SYSession *)self stateResponders];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v10 = [v8 objectForKeyedSubscript:v9];

  if ([v10 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v16 + 1) + 8 * i) + 16))(*(*(&v16 + 1) + 8 * i));
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }

    [v11 removeAllObjects];
  }

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_installTimers
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(SYSession *)self identifier];
  v4 = [v3 copy];

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __34__SYSendingSession__installTimers__block_invoke;
  v27[3] = &unk_1E86CA7A0;
  objc_copyWeak(&v29, &location);
  v5 = v4;
  v28 = v5;
  v6 = MEMORY[0x1E12E11B0](v27);
  self->_sessionStartTime = CFAbsoluteTimeGetCurrent();
  [(SYSession *)self fullSessionTimeout];
  if (v7 != 0.0)
  {
    v8 = [(SYSession *)self queue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
    sessionTimer = self->_sessionTimer;
    self->_sessionTimer = v9;

    dispatch_source_set_event_handler(self->_sessionTimer, v6);
    v11 = self->_sessionTimer;
    [(SYSession *)self fullSessionTimeout];
    v13 = dispatch_walltime(0, (v12 * 1000000000.0));
    dispatch_source_set_timer(v11, v13, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
    dispatch_resume(self->_sessionTimer);
    v14 = MEMORY[0x1E695DF00];
    [(SYSession *)self fullSessionTimeout];
    v15 = [v14 dateWithTimeIntervalSinceNow:?];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = qword_1EDE73420;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [(SYSession *)self fullSessionTimeout];
      *buf = 134218242;
      v32 = v17;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Session timeout is %.02f seconds. Timer will fire at %{public}@", buf, 0x16u);
    }
  }

  [(SYSession *)self perMessageTimeout];
  if (v18 != 0.0)
  {
    v19 = [(SYSession *)self queue];
    v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v19);
    messageTimer = self->_messageTimer;
    self->_messageTimer = v20;

    dispatch_source_set_event_handler(self->_messageTimer, v6);
    v22 = self->_messageTimer;
    v23 = dispatch_walltime(0, 0x7FFFFFFFFFFFFFFFLL);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
    dispatch_resume(self->_messageTimer);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v24 = qword_1EDE73420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [(SYSession *)self perMessageTimeout];
      *buf = 134217984;
      v32 = v25;
      _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "Message timeout is set to %.02f", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  v26 = *MEMORY[0x1E69E9840];
}

void __34__SYSendingSession__installTimers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__SYSendingSession__installTimers__block_invoke_23;
    block[3] = &unk_1E86C9FB0;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

LABEL_6:
}

void __34__SYSendingSession__installTimers__block_invoke_23(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &state);
  v2 = MEMORY[0x1E695DF00];
  v3 = *(a1 + 32);
  v4 = v3[35];
  [v3 fullSessionTimeout];
  v6 = [v2 dateWithTimeIntervalSinceReferenceDate:v4 + v5];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73420;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [v6 timeIntervalSinceNow];
    *buf = 138543618;
    v35 = v6;
    v36 = 2048;
    v37 = v8;
    _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Session timeout timer fired. Expected to fire at %{public}@, delta is %.02f", buf, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:16];
  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(v11 + 296);
  if (v12)
  {
    [v9 setObject:v12 forKeyedSubscript:@"StartRequest"];
    v11 = *(a1 + 32);
  }

  v13 = *(v11 + 304);
  if (v13)
  {
    [v10 setObject:v13 forKeyedSubscript:@"EndRequest"];
    v11 = *(a1 + 32);
  }

  v14 = *(v11 + 312);
  objc_sync_enter(v14);
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = *(*(a1 + 32) + 312);
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v17)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if (([v20 isComplete] & 1) == 0)
        {
          [v15 addObject:v20];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v17);
  }

  v21 = [v15 copy];
  [v10 setObject:v21 forKeyedSubscript:@"Batches"];

  objc_sync_exit(v14);
  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v31 = @"SYSessionMessageStatus";
  v32 = v10;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v24 = [v22 initWithSYError:2007 userInfo:v23];
  [*(a1 + 32) setError:v24];

  [*(a1 + 32) setState:5];
  os_activity_scope_leave(&state);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setMessageTimer
{
  messageTimer = self->_messageTimer;
  if (messageTimer)
  {
    [(SYSession *)self perMessageTimeout];
    v4 = dispatch_walltime(0, (v3 * 1000000000.0));

    dispatch_source_set_timer(messageTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
  }
}

- (void)_installStateListener
{
  v3 = [(SYSession *)self queue];
  v4 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v3);
  stateUpdateSource = self->_stateUpdateSource;
  self->_stateUpdateSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_stateUpdateSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SYSendingSession__installStateListener__block_invoke;
  v7[3] = &unk_1E86CA190;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_stateUpdateSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__SYSendingSession__installStateListener__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processNextState];
    WeakRetained = v2;
  }
}

- (void)_startFailedForStateChangeWithError:(id)a3
{
  v4 = [(SYSendingSession *)self state];
  if (v4 > 9 || ((1 << v4) & 0x228) == 0)
  {
    v6 = [(SYSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SYSendingSession__startFailedForStateChangeWithError___block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (void)start:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  v5 = [(SYSession *)self delegate];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
      batchObjectIDsByBatchIndex = self->_batchObjectIDsByBatchIndex;
      self->_batchObjectIDsByBatchIndex = v6;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SYSession *)self identifier];
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with identifier %{public}@", buf, 0x16u);
    }

    [(SYSendingSession *)self _installStateListener];
    [(SYSendingSession *)self _installTimers];
    v10 = [(SYSession *)self queue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __26__SYSendingSession_start___block_invoke_42;
    v17[3] = &unk_1E86CA388;
    v17[4] = self;
    v18 = v4;
    dispatch_async(v10, v17);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"You cannot start an SYSession without a delegate.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v11 initWithSYError:2001 userInfo:v12];

    v14 = [(SYSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__SYSendingSession_start___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v15 = v13;
    v20 = v15;
    dispatch_async(v14, block);

    (*(v4 + 2))(v4, 0, v15);
  }

  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

void __26__SYSendingSession_start___block_invoke_42(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1DF835000, "SYSession (Outgoing)", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  v5 = [*(a1 + 32) state];
  if (v5)
  {
    if (v5 == 3)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Sending session canceled during initialization", buf, 2u);
      }

      v10 = *(a1 + 40);
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = -128;
    }

    else
    {
      if (v5 == 5)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Sending session entered error state during initialization.", buf, 2u);
        }

        v7 = *(a1 + 40);
        v8 = [*(a1 + 32) error];
        (*(v7 + 16))(v7, 0, v8);
        goto LABEL_23;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v31 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 32);
        v33 = v31;
        *buf = 67109120;
        v40 = [v32 state];
        _os_log_impl(&dword_1DF835000, v33, OS_LOG_TYPE_DEFAULT, "Unexpected state during initialization: %{companionsync:SYSessionState}d", buf, 8u);
      }

      v10 = *(a1 + 40);
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = 2011;
    }

    v8 = [v11 initWithSYError:v12 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
    goto LABEL_23;
  }

  v8 = objc_opt_new();
  v13 = [*(a1 + 32) _newMessageHeader];
  [v8 setHeader:v13];

  [v8 setIsResetSync:{objc_msgSend(*(a1 + 32), "isResetSync")}];
  v14 = [*(a1 + 32) identifier];
  [v8 setSessionID:v14];

  [v8 setExpectsRollbackSupport:{objc_msgSend(*(a1 + 32), "canRollback")}];
  [v8 setExpectsRestartSupport:{objc_msgSend(*(a1 + 32), "canRestart")}];
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) fullSessionTimeout];
  [v8 setSessionTimeout:Current + v16];
  v17 = [*(a1 + 32) reason];
  [v8 setReason:v17];

  v18 = [*(a1 + 32) sessionMetadata];
  v19 = [v18 count];

  if (v19)
  {
    v20 = MEMORY[0x1E696ACC8];
    v21 = [*(a1 + 32) sessionMetadata];
    v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
    [v8 setMetadata:v22];
  }

  v23 = [*(a1 + 32) service];
  v24 = [v23 syncEngine];
  v25 = [*(a1 + 32) priority];
  v26 = *(a1 + 32);
  v37 = 0x1F5ACD980;
  v38 = MEMORY[0x1E695E118];
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v28 = [v26 combinedEngineOptions:v27];
  v29 = [*(a1 + 32) wrappedUserContext];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __26__SYSendingSession_start___block_invoke_45;
  v35[3] = &unk_1E86CB010;
  v30 = *(a1 + 40);
  v35[4] = *(a1 + 32);
  v36 = v30;
  [v24 enqueueSyncRequest:v8 withMessageID:102 priority:v25 options:v28 userContext:v29 callback:v35];

LABEL_23:
  v34 = *MEMORY[0x1E69E9840];
}

void __26__SYSendingSession_start___block_invoke_45(uint64_t a1, int a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 272), &state);
  if (!a2)
  {
    [*(a1 + 32) setError:v8];
    [*(a1 + 32) _setLocalErrorOccurred];
    [*(a1 + 32) setState:5];
LABEL_20:
    (*(*(a1 + 40) + 16))();
    goto LABEL_21;
  }

  v9 = [[SYMessageStatusRecord alloc] initWithMessageID:v7];
  v10 = *(a1 + 32);
  v11 = *(v10 + 296);
  *(v10 + 296) = v9;

  if (![*(a1 + 32) state])
  {
    [*(a1 + 32) _sentStart];
    v16 = [*(a1 + 32) service];
    v17 = [v16 syncEngine];
    if ([v17 buffersSessions])
    {
      v18 = +[SYDevice targetableDevice];
      v19 = [v18 supportsFileTransferMessageSend];

      if (v19)
      {
        v20 = 6;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {

      v20 = 6;
    }

    [*(a1 + 32) setState:v20];
    goto LABEL_20;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __26__SYSendingSession_start___block_invoke_45_cold_2(buf, [*(a1 + 32) state], v12);
  }

  v13 = [*(a1 + 32) state];
  if (v13 == 3)
  {
    v21 = *(a1 + 40);
    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
    (*(v21 + 16))(v21, 0, v15);
  }

  else if (v13 == 5)
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) error];
    (*(v14 + 16))(v14, 0, v15);
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Start session message enqueued, but session is in unexpected state %d", objc_msgSend(*(a1 + 32), "state")];
    v28 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v22 initWithSYError:2011 userInfo:v24];

    [*(a1 + 32) _startFailedForStateChangeWithError:v15];
    (*(*(a1 + 40) + 16))();
  }

LABEL_21:
  os_activity_scope_leave(&state);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)cancelWithError:(id)a3
{
  v9 = a3;
  [(SYSendingSession *)self _setCancelled];
  v4 = [(SYSession *)self _cancelPendingMessagesReturningFailures];
  if ([v4 count])
  {
    v5 = [(SYSession *)self service];
    [v5 sessionFailedToCancelMessageUUIDs:v4];
  }

  v6 = [v9 domain];
  if (![v6 isEqualToString:@"SYErrorDomain"])
  {

    goto LABEL_8;
  }

  v7 = [v9 code];

  if (v7 != -128)
  {
LABEL_8:
    v8 = 5;
    goto LABEL_9;
  }

  if ([(SYSendingSession *)self state]== 7)
  {
    v8 = 9;
LABEL_9:
    [(SYSession *)self setError:v9];
    [(SYSendingSession *)self _setLocalErrorOccurred];
    goto LABEL_10;
  }

  v8 = 3;
LABEL_10:
  [(SYSendingSession *)self setState:v8];
}

- (BOOL)_handleStartSessionResponse:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26.opaque[0] = 0;
  v26.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v26);
  [(SYMessageStatusRecord *)self->_startMessageID setResponseReceived:1];
  v7 = [(SYSession *)self service];
  v8 = [v7 syncEngine];
  if ([v8 buffersSessions])
  {

    goto LABEL_4;
  }

  v9 = [(SYSendingSession *)self state]== 6;

  if (v9)
  {
LABEL_4:
    if ([v6 accepted])
    {
      os_unfair_lock_lock(&self->_flagsLock);
      flags = self->_flags;
      if ((flags & 0x10) != 0)
      {
        if ([v6 supportsRestart])
        {
          v11 = 16;
        }

        else
        {
          v11 = 0;
        }

        flags = self->_flags;
      }

      else
      {
        v11 = 0;
      }

      v17 = flags & 0xFFEF | v11;
      *&self->_flags = v17;
      if ((flags & 0x20) != 0)
      {
        if ([v6 supportsRollback])
        {
          v18 = 32;
        }

        else
        {
          v18 = 0;
        }

        v17 = self->_flags;
      }

      else
      {
        v18 = 0;
      }

      *&self->_flags = v17 & 0xFFDF | v18;
      os_unfair_lock_unlock(&self->_flagsLock);
      if ([v6 hasMetadata])
      {
        v19 = objc_opt_class();
        v20 = [v6 metadata];
        v21 = [v19 unarchiveMetadata:v20];

        if (v21)
        {
          [(SYSession *)self setSessionMetadata:v21];
        }
      }

      if ([(SYSendingSession *)self state]== 6)
      {
        [(SYSendingSession *)self setState:1];
LABEL_37:
        [(SYSendingSession *)self _confirmedStart];
        v16 = 1;
        goto LABEL_38;
      }

      if ([(SYSendingSession *)self state]== 7)
      {
        goto LABEL_37;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v14 = qword_1EDE73420;
      if (os_log_type_enabled(v14, 0x90u))
      {
        [(SYSendingSession *)buf _handleStartSessionResponse:v14 error:?];
      }
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = [v6 error];
      v14 = [v12 errorFromSYErrorInfo:v13];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v15 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Received an error SYStartSyncSessionResponse: %@", buf, 0xCu);
      }

      if ([(SYSendingSession *)self state]== 6)
      {
        [(SYSession *)self setError:v14];
        [(SYSendingSession *)self setState:5];
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v22 = qword_1EDE73420;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(SYSendingSession *)self state];
          *buf = 67109120;
          LODWORD(v28) = v23;
          _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "We are not waiting for this start-session response (current state is %{companionsync:SYSessionState}d, so I'm not setting error state here.", buf, 8u);
        }
      }
    }

    goto LABEL_37;
  }

  v16 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2011 userInfo:0];
  }

LABEL_38:
  os_activity_scope_leave(&v26);

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_handleSyncBatchResponse:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &state);
  v6 = self->_batchMessageIDs;
  objc_sync_enter(v6);
  v7 = [v5 index];
  if (v7 < [(NSMutableArray *)self->_batchMessageIDs count])
  {
    v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_batchMessageIDs, "objectAtIndexedSubscript:", [v5 index]);
    [v8 setResponseReceived:1];
LABEL_10:

    goto LABEL_11;
  }

  if (_RunningInXCTest_onceToken != -1)
  {
    [SYSendingSession _sendSyncCompleteAndRunBlock:];
  }

  if ((_RunningInXCTest___value & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      -[SYSendingSession _handleSyncBatchResponse:error:].cold.3(v28, [v5 index], -[NSMutableArray count](self->_batchMessageIDs, "count"), v8);
    }

    goto LABEL_10;
  }

LABEL_11:
  objc_sync_exit(v6);

  -[NSMutableIndexSet addIndex:](self->_ackedBatchIndices, "addIndex:", [v5 index]);
  [(_SYCountedSemaphore *)self->_changeConcurrencySemaphore signal];
  if ([v5 hasError])
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [v5 error];
    v11 = [v9 errorFromSYErrorInfo:v10];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v12 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Received an error SYSyncBatchResponse: %@", buf, 0xCu);
    }

    [(SYSession *)self setError:v11];
    [(SYSendingSession *)self setState:5];
  }

  v13 = [(SYSession *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    batchObjectIDsByBatchIndex = self->_batchObjectIDsByBatchIndex;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "index")}];
    v17 = [(NSMutableDictionary *)batchObjectIDsByBatchIndex objectForKeyedSubscript:v16];

    if (v17)
    {
      v18 = self->_batchObjectIDsByBatchIndex;
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "index")}];
      [(NSMutableDictionary *)v18 removeObjectForKey:v19];

      v20 = [(SYSession *)self targetQueue];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __51__SYSendingSession__handleSyncBatchResponse_error___block_invoke;
      v23[3] = &unk_1E86C9E90;
      v23[4] = self;
      v24 = v17;
      dispatch_async(v20, v23);
    }
  }

  os_activity_scope_leave(&state);

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

void __51__SYSendingSession__handleSyncBatchResponse_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncSession:*(a1 + 32) successfullySynced:*(a1 + 40)];
}

- (BOOL)_handleRestartSessionResponse:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v18);
  [(SYMessageStatusRecord *)self->_startMessageID setResponseReceived:1];
  v7 = [(SYSession *)self service];
  v8 = [v7 syncEngine];
  if ([v8 buffersSessions])
  {

LABEL_4:
    if ([v6 hasError])
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = [v6 error];
      v12 = [v10 errorFromSYErrorInfo:v11];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Received an error SYSyncSessionRestartResponse: %@", buf, 0xCu);
      }

      [(SYSession *)self setError:v12];
      [(SYSendingSession *)self setState:5];
    }

    else if ([v6 accepted])
    {
      [(NSMutableIndexSet *)self->_ackedBatchIndices removeAllIndexes];
      [(SYSendingSession *)self setState:1];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v15 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Restart was rejected by slave, cancelling session now.", buf, 2u);
      }

      [(SYSession *)self cancel];
    }

    [(SYSendingSession *)self _confirmedStart];
    v14 = 1;
    goto LABEL_20;
  }

  v9 = [(SYSendingSession *)self state]== 6;

  if (v9)
  {
    goto LABEL_4;
  }

  v14 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2011 userInfo:0];
  }

LABEL_20:
  os_activity_scope_leave(&v18);

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_handleEndSessionResponse:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(self->_sessionActivity, &v19);
  [(SYMessageStatusRecord *)self->_endMessageID setResponseReceived:1];
  v7 = [(SYSendingSession *)self state];
  if (v7 == 7)
  {
    if ([v6 hasError])
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = [v6 error];
      v10 = [v8 errorFromSYErrorInfo:v9];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Received an error SYEndSyncSessionResponse: %@", buf, 0xCu);
      }

      [(SYSession *)self setError:v10];
      [(SYSendingSession *)self setState:5];

      goto LABEL_25;
    }

    if ([v6 hasDidRollback] && (objc_msgSend(v6, "didRollback") & 1) == 0)
    {
      v15 = [MEMORY[0x1E696ABC0] errorWithSYError:2008 userInfo:0];
      [(SYSession *)self setError:v15];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v14 = qword_1EDE73420;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SYSession *)self error];
        *buf = 138412290;
        v21 = v16;
        _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "End session with rollback was rejected by slave: %@", buf, 0xCu);
      }
    }

    else
    {
      if ([(NSMutableIndexSet *)self->_ackedBatchIndices countOfIndexesInRange:0, self->_batchIndex]== self->_batchIndex)
      {
        v12 = 9;
LABEL_24:
        [(SYSendingSession *)self setState:v12];
LABEL_25:
        [(SYSendingSession *)self _confirmedEnd];
        goto LABEL_26;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [(SYOutgoingBatchSyncSession *)&self->_batchIndex _handleBatchSyncEndResponse:v13 error:?];
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithSYError:2012 userInfo:0];
      [(SYSession *)self setError:v14];
    }

    v12 = 5;
    goto LABEL_24;
  }

  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2011 userInfo:0];
  }

LABEL_26:
  os_activity_scope_leave(&v19);

  v17 = *MEMORY[0x1E69E9840];
  return v7 == 7;
}

- (void)_resolvedIdentifierForRequest:(id)a3
{
  v4 = [a3 idsIdentifier];
  [(SYSession *)self _recordOutgoingMessageUUID:v4];
}

- (void)_sentMessageWithIdentifier:(id)a3 userInfo:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 296;
  v9 = [(SYMessageStatusRecord *)self->_startMessageID messageID];
  v10 = [v9 isEqualToString:v6];

  if (v10 || (v8 = 304, -[SYMessageStatusRecord messageID](self->_endMessageID, "messageID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:v6], v11, v12))
  {
    [*(&self->super.super.isa + v8) setDeviceACKReceived:1];
  }

  else
  {
    v13 = self->_batchMessageIDs;
    objc_sync_enter(v13);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_batchMessageIDs;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [v18 messageID];
          v20 = [v19 isEqualToString:v6];

          if (v20)
          {
            [v18 setDeviceACKReceived:1];
            goto LABEL_14;
          }
        }

        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v13);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_peerProcessedMessageWithIdentifier:(id)a3 userInfo:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(SYSession *)self _clearOutgoingMessageUUID:v6];
  v8 = 296;
  v9 = [(SYMessageStatusRecord *)self->_startMessageID messageID];
  v10 = [v9 isEqualToString:v6];

  if (v10 || (v8 = 304, -[SYMessageStatusRecord messageID](self->_endMessageID, "messageID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:v6], v11, v12))
  {
    [*(&self->super.super.isa + v8) setApplicationACKReceived:1];
  }

  else
  {
    v13 = self->_batchMessageIDs;
    objc_sync_enter(v13);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_batchMessageIDs;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [v18 messageID];
          v20 = [v19 isEqualToString:v6];

          if (v20)
          {
            [v18 setApplicationACKReceived:1];
            goto LABEL_14;
          }
        }

        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    objc_sync_exit(v13);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_continue
{
  if ([(SYSendingSession *)self state])
  {
    v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2021 userInfo:0];
    [(SYSession *)self setError:v3];

    [(SYSendingSession *)self setState:5];
    os_unfair_lock_lock(&self->_flagsLock);
    *&self->_flags &= ~0x4000u;
    os_unfair_lock_unlock(&self->_flagsLock);
  }

  v4.receiver = self;
  v4.super_class = SYSendingSession;
  [(SYSession *)&v4 _continue];
}

void __34__SYSendingSession__installTimers__block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "Session timeout timer fired. Session ID is %{public}@, weak session reference is %p", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __26__SYSendingSession_start___block_invoke_45_cold_2(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Start session message enqueued, but session has changed to state %{companionsync:SYSessionState}d", buf, 8u);
}

- (void)_handleStartSessionResponse:(os_log_t)log error:.cold.4(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "Received an accepted start-session response while in unexpected state %{companionsync:SYSessionState}d", buf, 8u);
}

- (void)_handleSyncBatchResponse:(uint64_t)a3 error:(os_log_t)log .cold.3(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Batch %lu response doesn't have a corresponding entry in list of message IDs (which goes up to %lu)", buf, 0x16u);
}

@end